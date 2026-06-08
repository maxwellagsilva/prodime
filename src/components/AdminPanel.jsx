import React, { useState } from 'react';
import { 
  Search, 
  Sliders, 
  Settings, 
  Users
} from 'lucide-react';
import { SECTORS_METADATA } from '../utils/constants';

export default function AdminPanel({
  equipment = [],
  rules = [],
  users = [],
  onSaveEquipment,
  onSaveRule,
  onSaveUser
}) {
  const [adminTab, setAdminTab] = useState('equipment');

  // Search & Filter state
  const [eqSearch, setEqSearch] = useState('');
  const [eqCategory, setEqCategory] = useState('ALL');
  const [ruleSector, setRuleSector] = useState('ALL');

  // Modal Open states
  const [eqModalOpen, setEqModalOpen] = useState(false);
  const [ruleModalOpen, setRuleModalOpen] = useState(false);
  const [userModalOpen, setUserModalOpen] = useState(false);

  // Form states: Equipment
  const [eqCode, setEqCode] = useState('');
  const [eqName, setEqName] = useState('');
  const [eqCat, setEqCat] = useState('Monitorização');
  const [eqSubcat, setEqSubcat] = useState('');
  const [eqMinPrice, setEqMinPrice] = useState(0);
  const [eqAvgPrice, setEqAvgPrice] = useState(0);
  const [eqMaxPrice, setEqMaxPrice] = useState(0);
  const [eqManufacturers, setEqManufacturers] = useState('');
  const [eqLifeSpan, setEqLifeSpan] = useState(7);
  const [eqMaintInterval, setEqMaintInterval] = useState(6);
  const [eqCalibReq, setEqCalibReq] = useState(false);
  const [eqCriticality, setEqCriticality] = useState('Média');
  const [eqComplexity, setEqComplexity] = useState('Média');
  const [eqElec, setEqElec] = useState('Não');
  const [eqWater, setEqWater] = useState('Não');
  const [eqGases, setEqGases] = useState('Não');
  const [eqClima, setEqClima] = useState('Não');
  const [eqDimensions, setEqDimensions] = useState('');
  const [eqNotes, setEqNotes] = useState('');
  const [eqNorm, setEqNorm] = useState('');
  const [eqStatus, setEqStatus] = useState('Ativo');
  const [isEditingEq, setIsEditingEq] = useState(false);

  // Form states: Rule
  const [ruleId, setRuleId] = useState('');
  const [ruleName, setRuleName] = useState('');
  const [ruleSect, setRuleSect] = useState('UTI Adulto');
  const [ruleParam, setRuleParam] = useState('leitos');
  const [ruleOperator, setRuleOperator] = useState('>');
  const [ruleValue, setRuleValue] = useState(0);
  const [ruleEqCode, setRuleEqCode] = useState('');
  const [ruleCalcType, setRuleCalcType] = useState('per_parameter');
  const [ruleFactor, setRuleFactor] = useState(1);
  const [ruleReserve, setRuleReserve] = useState(0);
  const [ruleClass, setRuleClass] = useState('Obrigatório');
  const [ruleJust, setRuleJust] = useState('');
  const [ruleNormRef, setRuleNormRef] = useState('');
  const [ruleActive, setRuleActive] = useState(true);
  const [isEditingRule, setIsEditingRule] = useState(false);

  // Form states: User
  const [userId, setUserId] = useState('');
  const [userEmail, setUserEmail] = useState('');
  const [userName, setUserName] = useState('');
  const [userRole, setUserRole] = useState('User');
  const [userActive, setUserActive] = useState(true);

  // Equipment Form opens
  const openNewEqModal = () => {
    setEqCode('');
    setEqName('');
    setEqCat('Monitorização');
    setEqSubcat('');
    setEqMinPrice(0);
    setEqAvgPrice(0);
    setEqMaxPrice(0);
    setEqManufacturers('');
    setEqLifeSpan(7);
    setEqMaintInterval(6);
    setEqCalibReq(false);
    setEqCriticality('Média');
    setEqComplexity('Média');
    setEqElec('Não');
    setEqWater('Não');
    setEqGases('Não');
    setEqClima('Não');
    setEqDimensions('');
    setEqNotes('');
    setEqNorm('');
    setEqStatus('Ativo');
    setIsEditingEq(false);
    setEqModalOpen(true);
  };

  const openEditEqModal = (item) => {
    setEqCode(item.code);
    setEqName(item.name);
    setEqCat(item.category);
    setEqSubcat(item.subcategory || '');
    setEqMinPrice(Number(item.min_price) || 0);
    setEqAvgPrice(Number(item.avg_price) || 0);
    setEqMaxPrice(Number(item.max_price) || 0);
    setEqManufacturers(item.manufacturers || '');
    setEqLifeSpan(Number(item.life_span_years) || 7);
    setEqMaintInterval(Number(item.maintenance_interval_months) || 6);
    setEqCalibReq(item.calibration_required === true || String(item.calibration_required) === 'true');
    setEqCriticality(item.criticality || 'Média');
    setEqComplexity(item.complexity || 'Média');
    setEqElec(item.infra_electricity || 'Não');
    setEqWater(item.infra_water || 'Não');
    setEqGases(item.infra_gases || 'Não');
    setEqClima(item.infra_climatization || 'Não');
    setEqDimensions(item.dimensions || '');
    setEqNotes(item.notes || '');
    setEqNorm(item.normative_reference || '');
    setEqStatus(item.status || 'Ativo');
    setIsEditingEq(true);
    setEqModalOpen(true);
  };

  const handleSaveEquipmentForm = (e) => {
    e.preventDefault();
    onSaveEquipment({
      code: eqCode,
      name: eqName,
      category: eqCat,
      subcategory: eqSubcat,
      min_price: eqMinPrice,
      avg_price: eqAvgPrice,
      max_price: eqMaxPrice,
      manufacturers: eqManufacturers,
      life_span_years: eqLifeSpan,
      maintenance_interval_months: eqMaintInterval,
      calibration_required: eqCalibReq,
      criticality: eqCriticality,
      complexity: eqComplexity,
      infra_electricity: eqElec,
      infra_water: eqWater,
      infra_gases: eqGases,
      infra_climatization: eqClima,
      dimensions: eqDimensions,
      notes: eqNotes,
      normative_reference: eqNorm,
      status: eqStatus
    });
    setEqModalOpen(false);
  };

  // Rules Form opens
  const openNewRuleModal = () => {
    setRuleId('RULE-' + Math.random().toString(36).substr(2, 9).toUpperCase());
    setRuleName('');
    setRuleSect('UTI Adulto');
    setRuleParam('leitos');
    setRuleOperator('>');
    setRuleValue(0);
    setRuleEqCode(equipment[0]?.code || '');
    setRuleCalcType('per_parameter');
    setRuleFactor(1);
    setRuleReserve(0);
    setRuleClass('Obrigatório');
    setRuleJust('');
    setRuleNormRef('');
    setRuleActive(true);
    setIsEditingRule(false);
    setRuleModalOpen(true);
  };

  const openEditRuleModal = (item) => {
    setRuleId(item.id);
    setRuleName(item.name);
    setRuleSect(item.sector);
    setRuleParam(item.parameter);
    setRuleOperator(item.operator);
    setRuleValue(Number(item.value) || 0);
    setRuleEqCode(item.equipment_code);
    setRuleCalcType(item.calculation_type);
    setRuleFactor(Number(item.formula_factor) || 1);
    setRuleReserve(Number(item.reserve_factor) || 0);
    setRuleClass(item.classification);
    setRuleJust(item.justification || '');
    setRuleNormRef(item.normative_reference || '');
    setRuleActive(item.active === true || String(item.active) === 'true');
    setIsEditingRule(true);
    setRuleModalOpen(true);
  };

  const handleSaveRuleForm = (e) => {
    e.preventDefault();
    onSaveRule({
      id: ruleId,
      name: ruleName,
      sector: ruleSect,
      parameter: ruleParam,
      operator: ruleOperator,
      value: ruleValue,
      equipment_code: ruleEqCode,
      calculation_type: ruleCalcType,
      formula_factor: ruleFactor,
      reserve_factor: ruleReserve,
      classification: ruleClass,
      justification: ruleJust,
      normative_reference: ruleNormRef,
      active: ruleActive
    });
    setRuleModalOpen(false);
  };

  const openEditUserModal = (item) => {
    setUserId(item.id);
    setUserEmail(item.email);
    setUserName(item.name || '');
    setUserRole(item.role || 'User');
    setUserActive(item.active !== false);
    setUserModalOpen(true);
  };

  const handleSaveUserForm = (e) => {
    e.preventDefault();
    onSaveUser({
      id: userId || null,
      email: userEmail,
      name: userName,
      role: userRole,
      active: userActive
    });
    setUserModalOpen(false);
  };

  const formatBRL = (val) => {
    return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(val);
  };

  const getFilteredEquipment = () => {
    return equipment.filter(item => {
      const matchSearch = eqSearch === '' || 
        item.name.toLowerCase().includes(eqSearch.toLowerCase()) || 
        item.code.toLowerCase().includes(eqSearch.toLowerCase());
      const matchCat = eqCategory === 'ALL' || item.category === eqCategory;
      return matchSearch && matchCat;
    });
  };

  const getFilteredRules = () => {
    return rules.filter(item => {
      return ruleSector === 'ALL' || item.sector === ruleSector;
    });
  };

  return (
    <div className="tab-section active">
      {/* Admin sub-navigation tabs */}
      <div style={{ display: 'flex', borderBottom: '1px solid var(--border-color)', gap: '20px', marginBottom: '8px' }}>
        <button 
          style={{ padding: '12px 18px', border: 'none', borderBottom: adminTab === 'equipment' ? '3px solid var(--primary)' : '3px solid transparent', background: 'none', cursor: 'pointer', fontWeight: 600, color: adminTab === 'equipment' ? 'var(--primary)' : 'var(--secondary-light)', display: 'flex', alignItems: 'center', gap: '8px' }} 
          onClick={() => setAdminTab('equipment')}
        >
          <Settings size={16} /> Equipamentos (Base)
        </button>
        <button 
          style={{ padding: '12px 18px', border: 'none', borderBottom: adminTab === 'rules' ? '3px solid var(--primary)' : '3px solid transparent', background: 'none', cursor: 'pointer', fontWeight: 600, color: adminTab === 'rules' ? 'var(--primary)' : 'var(--secondary-light)', display: 'flex', alignItems: 'center', gap: '8px' }} 
          onClick={() => setAdminTab('rules')}
        >
          <Sliders size={16} /> Regras de Cálculo
        </button>
        <button 
          style={{ padding: '12px 18px', border: 'none', borderBottom: adminTab === 'users' ? '3px solid var(--primary)' : '3px solid transparent', background: 'none', cursor: 'pointer', fontWeight: 600, color: adminTab === 'users' ? 'var(--primary)' : 'var(--secondary-light)', display: 'flex', alignItems: 'center', gap: '8px' }} 
          onClick={() => setAdminTab('users')}
        >
          <Users size={16} /> Usuários
        </button>
      </div>

      {/* VIEW: EQUIPMENT */}
      {adminTab === 'equipment' && (
        <div className="card-premium">
          <div className="admin-header">
            <div style={{ display: 'flex', gap: '10px', flexGrow: 1, maxWidth: '600px' }}>
              <div style={{ position: 'relative', width: '100%' }}>
                <input 
                  type="text" 
                  className="form-control" 
                  value={eqSearch} 
                  onChange={e => setEqSearch(e.target.value)} 
                  placeholder="Buscar por código ou nome..." 
                  style={{ paddingLeft: '36px' }}
                />
                <Search size={16} style={{ position: 'absolute', left: '12px', top: '13px', color: '#94a3b8' }} />
              </div>
              <select 
                className="form-control" 
                value={eqCategory} 
                onChange={e => setEqCategory(e.target.value)} 
                style={{ width: '200px' }}
              >
                <option value="ALL">Todas Categorias</option>
                <option value="Monitorização">Monitorização</option>
                <option value="Suporte de Vida">Suporte de Vida</option>
                <option value="Cirúrgico">Cirúrgico</option>
                <option value="Diagnóstico">Diagnóstico</option>
                <option value="Esterilização">Esterilização</option>
                <option value="Apoio">Apoio</option>
              </select>
            </div>
            <button className="btn btn-primary" onClick={openNewEqModal}>
              Cadastrar Equipamento
            </button>
          </div>

          <div className="table-wrapper">
            <table className="table-premium">
              <thead>
                <tr>
                  <th>Código</th>
                  <th>Nome</th>
                  <th>Categoria</th>
                  <th>Preço Médio</th>
                  <th>Criticidade</th>
                  <th>Status</th>
                  <th style={{ width: '100px', textAlign: 'center' }}>Ações</th>
                </tr>
              </thead>
              <tbody>
                {getFilteredEquipment().map((item) => (
                  <tr key={item.code}>
                    <td><code>{item.code}</code></td>
                    <td style={{ fontWeight: 600 }}>{item.name}</td>
                    <td>{item.category}</td>
                    <td>{formatBRL(item.avg_price)}</td>
                    <td><span className={`badge ${item.criticality === 'Alta' ? 'badge-danger' : 'badge-info'}`}>{item.criticality || 'Média'}</span></td>
                    <td><span className={`badge ${item.status === 'Ativo' ? 'badge-success' : 'badge-warning'}`}>{item.status || 'Ativo'}</span></td>
                    <td style={{ textAlign: 'center' }}>
                      <button className="btn btn-secondary btn-sm" onClick={() => openEditEqModal(item)}>
                        Editar
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {/* VIEW: RULES */}
      {adminTab === 'rules' && (
        <div className="card-premium">
          <div className="admin-header">
            <div style={{ display: 'flex', gap: '10px', flexGrow: 1, maxWidth: '300px' }}>
              <select 
                className="form-control" 
                value={ruleSector} 
                onChange={e => setRuleSector(e.target.value)}
              >
                <option value="ALL">Todos os Setores</option>
                {SECTORS_METADATA.map(s => <option key={s.id} value={s.id}>{s.name}</option>)}
              </select>
            </div>
            <button className="btn btn-primary" onClick={openNewRuleModal}>
              Criar Nova Regra
            </button>
          </div>

          <div className="table-wrapper">
            <table className="table-premium">
              <thead>
                <tr>
                  <th>Nome da Regra</th>
                  <th>Setor</th>
                  <th>Condição Trigger</th>
                  <th>Equipamento</th>
                  <th>Cálculo</th>
                  <th>Fator</th>
                  <th>Reserva</th>
                  <th>Classificação</th>
                  <th>Status</th>
                  <th style={{ width: '100px', textAlign: 'center' }}>Ações</th>
                </tr>
              </thead>
              <tbody>
                {getFilteredRules().map((item) => (
                  <tr key={item.id}>
                    <td style={{ fontWeight: 600 }}>{item.name}</td>
                    <td>{item.sector}</td>
                    <td><code>{item.parameter} {item.operator} {item.value}</code></td>
                    <td><code>{item.equipment_code}</code></td>
                    <td>{item.calculation_type}</td>
                    <td>{item.formula_factor}</td>
                    <td>{item.reserve_factor * 100}%</td>
                    <td><span className={`badge ${item.classification === 'Obrigatório' ? 'badge-danger' : 'badge-success'}`}>{item.classification}</span></td>
                    <td><span className={`badge ${item.active ? 'badge-success' : 'badge-warning'}`}>{item.active ? 'Ativa' : 'Inativa'}</span></td>
                    <td style={{ textAlign: 'center' }}>
                      <button className="btn btn-secondary btn-sm" onClick={() => openEditRuleModal(item)}>
                        Editar
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {/* VIEW: USERS */}
      {adminTab === 'users' && (
        <div className="card-premium">
          <div className="admin-header">
            <div>
              <h2 className="card-title">Usuários Cadastrados</h2>
              <p style={{ color: 'var(--secondary-light)', fontSize: '0.9rem', marginTop: '6px' }}>
                Usuários aparecem aqui após o primeiro acesso com Google.
              </p>
            </div>
          </div>

          <div className="table-wrapper">
            <table className="table-premium">
              <thead>
                <tr>
                  <th>Nome</th>
                  <th>Email</th>
                  <th>Perfil (Role)</th>
                  <th>Status</th>
                  <th style={{ width: '150px', textAlign: 'center' }}>Ações</th>
                </tr>
              </thead>
              <tbody>
                {users.map((item) => (
                  <tr key={item.id}>
                    <td style={{ fontWeight: 600 }}>{item.name || 'Sem nome'}</td>
                    <td>{item.email}</td>
                    <td><span className="badge badge-info">{item.role || 'User'}</span></td>
                    <td><span className={`badge ${item.active ? 'badge-success' : 'badge-warning'}`}>{item.active ? 'Ativo' : 'Inativo'}</span></td>
                    <td style={{ textAlign: 'center' }}>
                      <button className="btn btn-secondary btn-sm" onClick={() => openEditUserModal(item)}>
                        Editar
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}



      {/* MODAL: EQUIPMENT FORM */}
      {eqModalOpen && (
        <div className="modal-overlay">
          <div className="modal-card modal-lg">
            <div className="modal-header">
              <h3 className="modal-title">{isEditingEq ? 'Editar Equipamento' : 'Cadastrar Novo Equipamento'}</h3>
              <button className="modal-close" onClick={() => setEqModalOpen(false)}>&times;</button>
            </div>
            <form onSubmit={handleSaveEquipmentForm}>
              <div className="form-grid-3">
                <div className="form-group">
                  <label className="form-label">Código do Equipamento (Único) *</label>
                  <input 
                    type="text" 
                    className="form-control" 
                    value={eqCode} 
                    onChange={e => setEqCode(e.target.value)} 
                    disabled={isEditingEq}
                    placeholder="Ex: MON002" 
                    required 
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Nome do Equipamento *</label>
                  <input 
                    type="text" 
                    className="form-control" 
                    value={eqName} 
                    onChange={e => setEqName(e.target.value)} 
                    placeholder="Ex: Monitor Multiparamétrico" 
                    required 
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Categoria *</label>
                  <select className="form-control" value={eqCat} onChange={e => setEqCat(e.target.value)} required>
                    <option value="Monitorização">Monitorização</option>
                    <option value="Suporte de Vida">Suporte de Vida</option>
                    <option value="Cirúrgico">Cirúrgico</option>
                    <option value="Diagnóstico">Diagnóstico</option>
                    <option value="Esterilização">Esterilização</option>
                    <option value="Apoio">Apoio</option>
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label">Preço Mínimo (R$)</label>
                  <input type="number" className="form-control" value={eqMinPrice} onChange={e => setEqMinPrice(Number(e.target.value))} />
                </div>
                <div className="form-group">
                  <label className="form-label">Preço Médio (R$) *</label>
                  <input type="number" className="form-control" value={eqAvgPrice} onChange={e => setEqAvgPrice(Number(e.target.value))} required />
                </div>
                <div className="form-group">
                  <label className="form-label">Preço Máximo (R$)</label>
                  <input type="number" className="form-control" value={eqMaxPrice} onChange={e => setEqMaxPrice(Number(e.target.value))} />
                </div>
                <div className="form-group">
                  <label className="form-label">Criticidade</label>
                  <select className="form-control" value={eqCriticality} onChange={e => setEqCriticality(e.target.value)}>
                    <option value="Alta">Alta</option>
                    <option value="Média">Média</option>
                    <option value="Baixa">Baixa</option>
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label">Complexidade</label>
                  <select className="form-control" value={eqComplexity} onChange={e => setEqComplexity(e.target.value)}>
                    <option value="Alta">Alta</option>
                    <option value="Média">Média</option>
                    <option value="Baixa">Baixa</option>
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label">Status</label>
                  <select className="form-control" value={eqStatus} onChange={e => setEqStatus(e.target.value)}>
                    <option value="Ativo">Ativo</option>
                    <option value="Inativo">Inativo</option>
                  </select>
                </div>
                <div className="form-group col-span-3">
                  <label className="form-label">Norma de Referência</label>
                  <input type="text" className="form-control" value={eqNorm} onChange={e => setEqNorm(e.target.value)} placeholder="Ex: Anvisa RDC 50" />
                </div>
              </div>
              <div style={{ marginTop: '24px', display: 'flex', justifyContent: 'flex-end', gap: '10px' }}>
                <button type="button" className="btn btn-secondary" onClick={() => setEqModalOpen(false)}>Cancelar</button>
                <button type="submit" className="btn btn-primary">Salvar Equipamento</button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* MODAL: RULE FORM */}
      {ruleModalOpen && (
        <div className="modal-overlay">
          <div className="modal-card modal-lg">
            <div className="modal-header">
              <h3 className="modal-title">{isEditingRule ? 'Editar Regra de Cálculo' : 'Criar Nova Regra de Cálculo'}</h3>
              <button className="modal-close" onClick={() => setRuleModalOpen(false)}>&times;</button>
            </div>
            <form onSubmit={handleSaveRuleForm}>
              <div className="form-grid-3">
                <div className="form-group col-span-2">
                  <label className="form-label">Nome da Regra *</label>
                  <input 
                    type="text" 
                    className="form-control" 
                    value={ruleName} 
                    onChange={e => setRuleName(e.target.value)} 
                    placeholder="Ex: UTI Adulto - Monitor Multiparamétrico" 
                    required 
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Setor Aplicável *</label>
                  <select className="form-control" value={ruleSect} onChange={e => setRuleSect(e.target.value)} required>
                    {SECTORS_METADATA.map(s => <option key={s.id} value={s.id}>{s.name}</option>)}
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label">Parâmetro (Trigger) *</label>
                  <input 
                    type="text" 
                    className="form-control" 
                    value={ruleParam} 
                    onChange={e => setRuleParam(e.target.value)} 
                    placeholder="Ex: leitos" 
                    required 
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Operador Lógico *</label>
                  <select className="form-control" value={ruleOperator} onChange={e => setRuleOperator(e.target.value)} required>
                    <option value=">">Maior que (&gt;)</option>
                    <option value=">=">Maior ou igual (&gt;=)</option>
                    <option value="ANY">Sempre Aplica (ANY)</option>
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label">Valor Condição Trigger *</label>
                  <input type="number" className="form-control" value={ruleValue} onChange={e => setRuleValue(Number(e.target.value))} required />
                </div>
                <div className="form-group">
                  <label className="form-label">Equipamento Vinculado *</label>
                  <select className="form-control" value={ruleEqCode} onChange={e => setRuleEqCode(e.target.value)} required>
                    {equipment.map(e => <option key={e.code} value={e.code}>{e.name} ({e.code})</option>)}
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label">Tipo de Cálculo *</label>
                  <select className="form-control" value={ruleCalcType} onChange={e => setRuleCalcType(e.target.value)} required>
                    <option value="per_parameter">Multiplica pelo Parâmetro (per_parameter)</option>
                    <option value="fixed">Quantidade Fixa (fixed)</option>
                    <option value="rounded_ratio">Razão por Grupo Arredondada (rounded_ratio)</option>
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label">Fator da Fórmula *</label>
                  <input type="number" step="0.01" className="form-control" value={ruleFactor} onChange={e => setRuleFactor(Number(e.target.value))} required />
                </div>
                <div className="form-group">
                  <label className="form-label">Reserva Técnica (Fração Decimal)</label>
                  <input type="number" step="0.01" className="form-control" value={ruleReserve} onChange={e => setRuleReserve(Number(e.target.value))} />
                </div>
                <div className="form-group">
                  <label className="form-label">Classificação Regulatória *</label>
                  <select className="form-control" value={ruleClass} onChange={e => setRuleClass(e.target.value)} required>
                    <option value="Obrigatório">Obrigatório (Lei/Anvisa)</option>
                    <option value="Recomendado">Recomendado</option>
                    <option value="Opcional">Opcional</option>
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label">Ativa?</label>
                  <select className="form-control" value={ruleActive ? 'true' : 'false'} onChange={e => setRuleActive(e.target.value === 'true')}>
                    <option value="true">Sim</option>
                    <option value="false">Não</option>
                  </select>
                </div>
                <div className="form-group col-span-3">
                  <label className="form-label">Justificativa Técnica / Norma</label>
                  <textarea className="form-control" value={ruleJust} onChange={e => setRuleJust(e.target.value)} placeholder="Ex: Monitorização vital contínua nos termos da RDC..." rows={2} />
                </div>
              </div>
              <div style={{ marginTop: '24px', display: 'flex', justifyContent: 'flex-end', gap: '10px' }}>
                <button type="button" className="btn btn-secondary" onClick={() => setRuleModalOpen(false)}>Cancelar</button>
                <button type="submit" className="btn btn-primary">Salvar Regra</button>
              </div>
            </form>
          </div>
        </div>
      )}

      {/* MODAL: USER FORM */}
      {userModalOpen && (
        <div className="modal-overlay">
          <div className="modal-card">
            <div className="modal-header">
              <h3 className="modal-title">Editar Usuário</h3>
              <button className="modal-close" onClick={() => setUserModalOpen(false)}>&times;</button>
            </div>
            <form onSubmit={handleSaveUserForm}>
              <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
                <div className="form-group">
                  <label className="form-label">Email do Usuário *</label>
                  <input 
                    type="email" 
                    className="form-control" 
                    value={userEmail} 
                    onChange={e => setUserEmail(e.target.value)} 
                    disabled
                    required 
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Nome Completo *</label>
                  <input 
                    type="text" 
                    className="form-control" 
                    value={userName} 
                    onChange={e => setUserName(e.target.value)} 
                    required 
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Perfil de Acesso (Role)</label>
                  <select className="form-control" value={userRole} onChange={e => setUserRole(e.target.value)}>
                    <option value="User">User (Apenas cria projetos)</option>
                    <option value="Admin">Admin (Acesso total)</option>
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label">Ativo?</label>
                  <select className="form-control" value={userActive ? 'true' : 'false'} onChange={e => setUserActive(e.target.value === 'true')}>
                    <option value="true">Ativo</option>
                    <option value="false">Inativo</option>
                  </select>
                </div>
              </div>
              <div style={{ marginTop: '24px', display: 'flex', justifyContent: 'flex-end', gap: '10px' }}>
                <button type="button" className="btn btn-secondary" onClick={() => setUserModalOpen(false)}>Cancelar</button>
                <button type="submit" className="btn btn-primary">Salvar Usuário</button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
