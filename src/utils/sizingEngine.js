/**
 * Engine de Dimensionamento PRODIME
 * Avalia as regras assistenciais e calcula a quantidade recomendada de equipamentos.
 */

/**
 * Avalia se a condição de ativação da regra é atendida
 * @param {number} paramValue - O valor informado pelo usuário para o parâmetro
 * @param {string} operator - O operador da condição (>, <, >=, <=, ==, ANY)
 * @param {number} ruleValue - O valor limite da regra
 * @returns {boolean}
 */
export function evalCondition(paramValue, operator, ruleValue) {
  const pVal = Number(paramValue) || 0;
  const rVal = Number(ruleValue) || 0;
  const op = String(operator).trim().toUpperCase();

  if (op === '>') return pVal > rVal;
  if (op === '<') return pVal < rVal;
  if (op === '>=') return pVal >= rVal;
  if (op === '<=') return pVal <= rVal;
  if (op === '==' || op === '=') return pVal === rVal;
  if (op === 'ANY' || op === 'QUALQUER' || op === 'SEMPRE' || op === 'SEMPRE APLICA') return true;
  return false;
}

/**
 * Calcula o dimensionamento dos equipamentos com base na estrutura de setores e parâmetros
 * @param {Array<string>} activeSectorsList - Lista com nomes dos setores selecionados (ex: ['UTI Adulto'])
 * @param {Object} parametersMap - Mapa de parâmetros por setor (ex: { 'UTI Adulto': { 'leitos': 10 } })
 * @param {Array<Object>} rules - Regras de dimensionamento globais carregadas do banco
 * @param {Array<Object>} equipment - Cadastro geral de equipamentos carregado do banco
 * @param {Array<Object>} previousResults - Resultados anteriores (para restaurar ajustes manuais)
 * @returns {Array<Object>} Lista de resultados enriquecidos de equipamentos recomendados
 */
export function calculateProjectSizing(
  activeSectorsList,
  parametersMap,
  rules = [],
  equipment = [],
  previousResults = []
) {
  const sizingResults = [];

  // Mapeamento rápido de equipamentos por código para enriquecimento de dados
  const eqMap = {};
  equipment.forEach((e) => {
    eqMap[e.code] = e;
  });

  // Mapeamento rápido de regras para busca de classificação
  const ruleMap = {};
  rules.forEach((rule) => {
    const key = `${String(rule.sector).trim().toUpperCase()}_${String(
      rule.equipment_code
    ).trim().toUpperCase()}`;
    ruleMap[key] = rule.classification;
  });

  // Mapeamento de ajustes manuais anteriores para não perder dados ao recalcular
  const manualAdjustmentsMap = {};
  previousResults.forEach((r) => {
    const hasAdj =
      r.quantity_adjusted !== null &&
      r.quantity_adjusted !== undefined &&
      String(r.quantity_adjusted).trim() !== '';
    if (hasAdj) {
      const key = `${r.sector_name}_${r.equipment_code}`;
      manualAdjustmentsMap[key] = {
        quantity_adjusted: Number(r.quantity_adjusted),
        adjustment_reason: r.adjustment_reason || '',
        adjusted_by: r.adjusted_by || '',
        adjusted_at: r.adjusted_at || '',
      };
    }
  });

  // Filtrar apenas regras ativas
  const activeRules = rules.filter((r) => r.active === true || String(r.active).toLowerCase() === 'true');

  activeSectorsList.forEach((sectorName) => {
    const sectorRules = activeRules.filter((r) => r.sector === sectorName);

    sectorRules.forEach((rule) => {
      const paramName = rule.parameter;
      const paramValue =
        parametersMap[sectorName] && parametersMap[sectorName][paramName] !== undefined
          ? Number(parametersMap[sectorName][paramName])
          : 0;

      // Verificar se atende à condição lógica
      const isMet = evalCondition(paramValue, rule.operator, rule.value);

      if (isMet) {
        let qtyCalc = 0;
        const factor = Number(rule.formula_factor) || 0;
        const type = String(rule.calculation_type).toLowerCase();

        // Aplicar fórmula matemática
        if (type === 'fixed' || type === 'fixo') {
          qtyCalc = factor;
        } else if (type === 'per_parameter' || type === 'por_parametro') {
          qtyCalc = paramValue * factor;
        } else if (type === 'rounded_ratio' || type === 'por_grupo') {
          qtyCalc = factor > 0 ? Math.ceil(paramValue / factor) : 0;
        }

        // Aplicar margem de reserva técnica (fração decimal, ex: 0.10 para 10%)
        const reserveFactor = Number(rule.reserve_factor) || 0;
        const qtyRecommended = Math.ceil(qtyCalc * (1 + reserveFactor));

        // Tentar reaver o ajuste manual pré-existente
        const adjKey = `${sectorName}_${rule.equipment_code}`;
        const prevAdj = manualAdjustmentsMap[adjKey];

        // Encontrar cadastro de equipamento correspondente
        const eqInfo = eqMap[rule.equipment_code] || {};

        const infraString = `Eletr.: ${eqInfo.infra_electricity || 'Não'}, Hidr.: ${
          eqInfo.infra_water || 'Não'
        }, Gases: ${eqInfo.infra_gases || 'Não'}, Clima: ${eqInfo.infra_climatization || 'Não'}`;

        sizingResults.push({
          sector_name: sectorName,
          equipment_code: rule.equipment_code,
          equipment_name: eqInfo.name || rule.equipment_code,
          category: eqInfo.category || 'Outros',
          unit: eqInfo.unit || 'Unidade',
          min_price: Number(eqInfo.min_price) || 0,
          avg_price: Number(eqInfo.avg_price) || 0,
          max_price: Number(eqInfo.max_price) || 0,
          criticality: eqInfo.criticality || 'Média',
          classification: rule.classification || 'Recomendado',
          normative_reference: rule.normative_reference || eqInfo.normative_reference || '',
          infra_requirements: infraString,
          quantity_calculated: qtyCalc,
          quantity_recommended: qtyRecommended,
          quantity_adjusted: prevAdj ? prevAdj.quantity_adjusted : null,
          adjustment_reason: prevAdj ? prevAdj.adjustment_reason : '',
          adjusted_by: prevAdj ? prevAdj.adjusted_by : '',
          adjusted_at: prevAdj ? prevAdj.adjusted_at : '',
        });
      }
    });
  });

  return sizingResults;
}
