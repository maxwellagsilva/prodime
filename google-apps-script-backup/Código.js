const SPREADSHEET_ID = "1IZTiPTvqfAsioI2spbXcC0ZU7LJB29JrLjQK41P3pwg";

/**
 * Ponto de entrada manual para inicializar todas as tabelas e dados iniciais no Sheets.
 */
function initDatabase() {
  const ss = getSpreadsheet();
  checkAndInitDb(ss);
  return "Banco de dados inicializado com sucesso!";
}

/**
 * Reseta o banco de dados excluindo todas as abas e recriando-as com os dados mais recentes.
 */
function resetDatabase() {
  const ss = getSpreadsheet();
  const sheets = ss.getSheets();
  const tempSheet = ss.insertSheet("temp_reset_sheet");
  
  sheets.forEach(sheet => {
    try {
      ss.deleteSheet(sheet);
    } catch(e) {}
  });
  
  checkAndInitDb(ss);
  
  try {
    ss.deleteSheet(tempSheet);
  } catch(e) {}
  
  return "Banco de dados resetado e inicializado com sucesso!";
}

/**
 * Serves the single-page HTML application.
 */
function doGet(e) {
  if (e && e.parameter && (e.parameter.diag || e.parameter.diagnostics)) {
    const diagData = {
      spreadsheetId: SPREADSHEET_ID,
      currentUser: getCurrentUser(),
      diagnostics: getDiagnostics(),
      projects: getTableData("projects")
    };
    return ContentService.createTextOutput(JSON.stringify(diagData, null, 2))
                         .setMimeType(ContentService.MimeType.JSON);
  }
  
  return HtmlService.createTemplateFromFile('Index')
      .evaluate()
      .setTitle('PRODIME - Dimensionamento Hospitalar')
      .setXFrameOptionsMode(HtmlService.XFrameOptionsMode.ALLOWALL)
      .addMetaTag('viewport', 'width=device-width, initial-scale=1');
}

/**
 * Includes the contents of HTML partials (CSS, JS) into Index.
 */
function include(filename) {
  return HtmlService.createHtmlOutputFromFile(filename).getContent();
}

/**
 * Returns the spreadsheet object.
 */
function getSpreadsheet() {
  return SpreadsheetApp.openById(SPREADSHEET_ID);
}

/**
 * Helper to get all data from a table as an array of objects.
 */
function getTableData(tableName) {
  const ss = getSpreadsheet();
  let sheet = ss.getSheetByName(tableName);
  if (!sheet) {
    checkAndInitDb(ss);
    sheet = ss.getSheetByName(tableName);
  }
  const lastRow = sheet.getLastRow();
  if (lastRow <= 1) return [];
  const lastCol = sheet.getLastColumn();
  
  const headers = sheet.getRange(1, 1, 1, lastCol).getValues()[0];
  const values = sheet.getRange(2, 1, lastRow - 1, lastCol).getValues();
  
  return values.map(row => {
    const obj = {};
    headers.forEach((header, index) => {
      let val = row[index];
      // Convert boolean string representation to true booleans
      if (val === "TRUE" || val === true) val = true;
      if (val === "FALSE" || val === false) val = false;
      
      // Convert native JS Date objects to ISO string to avoid google.script.run serialization failure
      if (val instanceof Date) {
        if (!isNaN(val.getTime())) {
          val = val.toISOString();
        } else {
          val = "";
        }
      }
      
      const cleanHeader = String(header).trim();
      const lowerHeader = cleanHeader.toLowerCase();
      
      // Store under lowercase, clean exact case, and original case for maximum safety
      obj[lowerHeader] = val;
      obj[cleanHeader] = val;
      obj[header] = val;
    });
    return obj;
  });
}

/**
 * Helper to append a row object to a table.
 */
function appendRow(tableName, obj) {
  const ss = getSpreadsheet();
  let sheet = ss.getSheetByName(tableName);
  if (!sheet) {
    checkAndInitDb(ss);
    sheet = ss.getSheetByName(tableName);
  }
  let lastCol = sheet.getLastColumn();
  if (lastCol === 0) {
    checkAndInitDb(ss);
    lastCol = sheet.getLastColumn();
  }
  const headers = sheet.getRange(1, 1, 1, lastCol).getValues()[0];
  const rowValues = headers.map(header => {
    // Look up key in obj case-insensitively and trimmed
    const matchKey = Object.keys(obj).find(k => String(k).trim().toLowerCase() === String(header).trim().toLowerCase());
    const val = matchKey ? obj[matchKey] : undefined;
    return val !== undefined ? val : "";
  });
  sheet.appendRow(rowValues);
  SpreadsheetApp.flush(); // Garantir gravação física imediata
  return obj;
}

/**
 * Helper to update a row in a table.
 */
function updateRow(tableName, keyField, keyValue, newObj) {
  const ss = getSpreadsheet();
  const sheet = ss.getSheetByName(tableName);
  if (!sheet) return false;
  const lastRow = sheet.getLastRow();
  if (lastRow <= 1) return false;
  const lastCol = sheet.getLastColumn();
  
  const headers = sheet.getRange(1, 1, 1, lastCol).getValues()[0];
  const keyColIndex = headers.map(h => String(h).trim().toLowerCase()).indexOf(keyField.toLowerCase()) + 1;
  if (keyColIndex === 0) return false;
  
  const values = sheet.getRange(2, keyColIndex, lastRow - 1, 1).getValues();
  for (let i = 0; i < values.length; i++) {
    if (String(values[i][0]).trim().toUpperCase() === String(keyValue).trim().toUpperCase()) {
      const rowIndex = i + 2;
      const rowRange = sheet.getRange(rowIndex, 1, 1, lastCol);
      const currentRowValues = rowRange.getValues()[0];
      const newRowValues = headers.map((header, colIdx) => {
        const matchKey = Object.keys(newObj).find(k => String(k).trim().toLowerCase() === String(header).trim().toLowerCase());
        return (matchKey && newObj[matchKey] !== undefined) ? newObj[matchKey] : currentRowValues[colIdx];
      });
      rowRange.setValues([newRowValues]);
      SpreadsheetApp.flush(); // Sincronizar cache
      return true;
    }
  }
  return false;
}

/**
 * Helper to delete rows matching a criteria.
 */
function deleteRows(tableName, keyField, keyValue) {
  const ss = getSpreadsheet();
  const sheet = ss.getSheetByName(tableName);
  if (!sheet) return false;
  const lastRow = sheet.getLastRow();
  if (lastRow <= 1) return false;
  const lastCol = sheet.getLastColumn();
  
  const headers = sheet.getRange(1, 1, 1, lastCol).getValues()[0];
  const keyColIndex = headers.map(h => String(h).trim().toLowerCase()).indexOf(keyField.toLowerCase()) + 1;
  if (keyColIndex === 0) return false;
  
  // We scan backwards so row index changes don't shift indices of unvisited rows
  let deleted = false;
  for (let i = lastRow; i >= 2; i--) {
    const val = sheet.getRange(i, keyColIndex).getValue();
    if (String(val).trim().toUpperCase() === String(keyValue).trim().toUpperCase()) {
      sheet.deleteRow(i);
      deleted = true;
    }
  }
  if (deleted) {
    SpreadsheetApp.flush(); // Efetivar deleções no disco
  }
  return deleted;
}

/**
 * Returns state summary for the dashboard.
 */
function getDatabaseState() {
  const projects = getTableData("projects");
  const equipment = getTableData("equipment");
  const rules = getTableData("dimensioning_rules");
  const audit = getTableData("audit_logs");
  
  const totalProjects = projects.length;
  const totalEquipment = equipment.filter(e => e.status === "Ativo").length;
  const totalRules = rules.filter(r => r.active === true).length;
  
  // Calculate total budget estimated across all projects
  const results = getTableData("project_equipment_results");
  let totalInvestment = 0;
  
  // Map equipment base prices
  const eqPriceMap = {};
  equipment.forEach(e => {
    eqPriceMap[e.code] = Number(e.avg_price) || 0;
  });
  
  results.forEach(r => {
    const qty = Number(r.quantity_adjusted !== "" ? r.quantity_adjusted : r.quantity_recommended) || 0;
    const price = eqPriceMap[r.equipment_code] || 0;
    totalInvestment += qty * price;
  });

  return {
    totalProjects: totalProjects,
    totalEquipment: totalEquipment,
    totalRules: totalRules,
    totalInvestment: totalInvestment,
    recentLogs: audit.slice(-5).reverse()
  };
}

/**
 * Returns user details mock or real.
 */
function getCurrentUser() {
  let email = "admin@prodime.com.br";
  try {
    const userEmail = Session.getActiveUser().getEmail();
    if (userEmail) email = userEmail;
  } catch(e) {}
  
  const users = getTableData("users");
  let user = users.find(u => u.email.toLowerCase() === email.toLowerCase());
  
  // Auto-register the deployer/owner or main clinical engineering email as Admin if not present
  if (!user && (email.toLowerCase() === "engenharia.clinica@hsl.org.br" || email.toLowerCase() === "admin@prodime.com.br" || email.toLowerCase() === "maxwell@hsl.org.br")) {
    const newAdmin = {
      id: "USR-" + Math.random().toString(36).substr(2, 9).toUpperCase(),
      email: email,
      name: email.toLowerCase() === "engenharia.clinica@hsl.org.br" ? "Engenheiro Clínico" : "Administrador Geral",
      role: "Admin",
      active: true
    };
    appendRow("users", newAdmin);
    return { email: email, name: newAdmin.name, role: "Admin", authorized: true };
  }
  
  if (user) {
    const isActive = (user.active === true || String(user.active).toLowerCase() === 'true' || user.active === 'Sim');
    if (isActive) {
      return { email: user.email, name: user.name, role: user.role, authorized: true };
    } else {
      return { email: user.email, name: user.name, role: "Unauthorised", authorized: false };
    }
  }
  
  // If not found in the users list, they are UNAUTHORIZED!
  return { email: email, name: "Acesso Não Autorizado", role: "Unauthorised", authorized: false };
}

/**
 * Mocks user switching for demo purposes.
 */
function switchUserRole(role) {
  const user = getCurrentUser();
  const users = getTableData("users");
  const match = users.find(u => u.role === role);
  if (match) {
    // Return that user mock
    return { email: match.email, name: match.name, role: match.role };
  }
  return { email: user.email, name: user.name + " (" + role + ")", role: role };
}

/**
 * List all projects.
 */
function listProjects() {
  return getTableData("projects").reverse();
}

/**
 * Loads a project with its sectors, parameters, results and adjustments.
 */
function getProject(projectId) {
  const projects = getTableData("projects");
  const project = projects.find(p => p.id && String(p.id).trim().toUpperCase() === String(projectId).trim().toUpperCase());
  if (!project) {
    logAudit(projectId, "sistema@prodime.com.br", "Erro getProject", "Projeto não encontrado na tabela 'projects'. Total de projetos: " + projects.length + ". IDs disponíveis: " + projects.map(p => p.id).join(", "));
    return null;
  }
  
  const allSectors = getTableData("project_sectors");
  const projectSectors = allSectors.filter(s => s.project_id && String(s.project_id).trim().toUpperCase() === String(projectId).trim().toUpperCase());
  
  const allParams = getTableData("sector_parameters");
  const projectParams = allParams.filter(p => p.project_id && String(p.project_id).trim().toUpperCase() === String(projectId).trim().toUpperCase());
  
  const results = getTableData("project_equipment_results").filter(r => r.project_id && String(r.project_id).trim().toUpperCase() === String(projectId).trim().toUpperCase());
  const equipment = getTableData("equipment");
  
  // Format parameters as { [sectorName]: { [paramName]: value } }
  const paramsMap = {};
  projectParams.forEach(p => {
    if (!paramsMap[p.sector_name]) paramsMap[p.sector_name] = {};
    paramsMap[p.sector_name][p.parameter_name] = Number(p.parameter_value) || 0;
  });
  
  // Map rules for classification lookup
  const rules = getTableData("dimensioning_rules");
  const ruleMap = {};
  rules.forEach(rule => {
    const key = `${String(rule.sector).trim().toUpperCase()}_${String(rule.equipment_code).trim().toUpperCase()}`;
    ruleMap[key] = rule.classification;
  });

  // Enrich results with equipment details (name, category, avg_price, details)
  const eqMap = {};
  equipment.forEach(e => {
    eqMap[e.code] = e;
  });
  
  const enrichedResults = results.map(r => {
    let eq = eqMap[r.equipment_code];
    if (eq === null || eq === undefined || typeof eq !== 'object') {
      eq = {};
    }
    const ruleKey = `${String(r.sector_name).trim().toUpperCase()}_${String(r.equipment_code).trim().toUpperCase()}`;
    const classification = ruleMap[ruleKey] || "Recomendado";
    
    const qtyAdjusted = (r.quantity_adjusted !== undefined && r.quantity_adjusted !== null && String(r.quantity_adjusted).trim() !== "") 
                        ? Number(r.quantity_adjusted) 
                        : null;
                        
    return {
      id: r.id,
      sector_name: r.sector_name,
      equipment_code: r.equipment_code,
      equipment_name: eq.name || r.equipment_code,
      category: eq.category || "Outros",
      unit: eq.unit || "Unidade",
      min_price: Number(eq.min_price) || 0,
      avg_price: Number(eq.avg_price) || 0,
      max_price: Number(eq.max_price) || 0,
      criticality: eq.criticality || "Média",
      classification: classification,
      normative_reference: eq.normative_reference || "",
      infra_requirements: `Eletr.: ${eq.infra_electricity || "Não"}, Hidr.: ${eq.infra_water || "Não"}, Gases: ${eq.infra_gases || "Não"}, Clima: ${eq.infra_climatization || "Não"}`,
      quantity_calculated: Number(r.quantity_calculated) || 0,
      quantity_recommended: Number(r.quantity_recommended) || 0,
      quantity_adjusted: qtyAdjusted,
      adjustment_reason: r.adjustment_reason || "",
      adjusted_by: r.adjusted_by || "",
      adjusted_at: r.adjusted_at || ""
    };
  });
  
  return {
    project: project,
    sectors: projectSectors,
    parameters: paramsMap,
    results: enrichedResults
  };
}

/**
 * Saves project data and runs the sizing engine.
 */
function saveProject(projectMetadata, sectorsList, parametersMap, userEmail) {
  const isNew = !projectMetadata.id;
  const projectId = isNew ? "PROJ-" + Math.random().toString(36).substr(2, 9).toUpperCase() : projectMetadata.id;
  
  projectMetadata.id = projectId;
  projectMetadata.updated_at = new Date().toISOString();
  
  if (isNew) {
    projectMetadata.created_at = new Date().toISOString();
    projectMetadata.created_by = userEmail || "sistema@prodime.com.br";
    appendRow("projects", projectMetadata);
    logAudit(projectId, userEmail, "Criar Projeto", `Projeto "${projectMetadata.name}" criado.`);
  } else {
    updateRow("projects", "id", projectId, projectMetadata);
    logAudit(projectId, userEmail, "Atualizar Projeto", `Dados gerais do projeto "${projectMetadata.name}" atualizados.`);
  }
  
  // Update sectors
  deleteRows("project_sectors", "project_id", projectId);
  sectorsList.forEach(sector => {
    sector.id = "SECT-" + Math.random().toString(36).substr(2, 9).toUpperCase();
    sector.project_id = projectId;
    appendRow("project_sectors", sector);
  });
  
  // Update parameters
  deleteRows("sector_parameters", "project_id", projectId);
  for (const sectorName in parametersMap) {
    const params = parametersMap[sectorName];
    for (const paramName in params) {
      appendRow("sector_parameters", {
        id: "PARM-" + Math.random().toString(36).substr(2, 9).toUpperCase(),
        project_id: projectId,
        sector_name: sectorName,
        parameter_name: paramName,
        parameter_value: Number(params[paramName]) || 0
      });
    }
  }
  
  // Run rules engine
  calculateProjectSizing(projectId);
  
  return getProject(projectId);
}

/**
 * Deletes a project completely.
 */
function deleteProject(projectId, userEmail) {
  deleteRows("projects", "id", projectId);
  deleteRows("project_sectors", "project_id", projectId);
  deleteRows("sector_parameters", "project_id", projectId);
  deleteRows("project_equipment_results", "project_id", projectId);
  logAudit(projectId, userEmail || "sistema@prodime.com.br", "Excluir Projeto", `Projeto ${projectId} e todos os seus vínculos foram excluídos.`);
  return true;
}

/**
 * Calculation Engine for PRODIME.
 * Evaluates rules for the project and populates project_equipment_results.
 */
function calculateProjectSizing(projectId) {
  // 1. Get project parameters and active sectors
  const allSectors = getTableData("project_sectors");
  const sectors = allSectors.filter(s => s.project_id && String(s.project_id).trim().toUpperCase() === String(projectId).trim().toUpperCase());
  
  const allParams = getTableData("sector_parameters");
  const params = allParams.filter(p => p.project_id && String(p.project_id).trim().toUpperCase() === String(projectId).trim().toUpperCase());
  
  // Create quick mapping of parameters: { "UTI Adulto": { "leitos": 20 } }
  const paramsMap = {};
  params.forEach(p => {
    if (!paramsMap[p.sector_name]) paramsMap[p.sector_name] = {};
    paramsMap[p.sector_name][p.parameter_name] = Number(p.parameter_value) || 0;
  });
  
  // 2. Get active rules and equipment database
  const rules = getTableData("dimensioning_rules").filter(r => r.active === true || r.active === "TRUE");
  const equipment = getTableData("equipment").filter(e => e.status === "Ativo" || e.status === "Ativo");
  
  // Map equipment reference pricing & codes
  const eqMap = {};
  equipment.forEach(e => {
    eqMap[e.code] = e;
  });
  
  // 3. Keep track of existing manual adjustments before clearing results
  const oldResults = getTableData("project_equipment_results").filter(r => r.project_id && String(r.project_id).trim().toUpperCase() === String(projectId).trim().toUpperCase());
  const manualAdjustmentsMap = {};
  oldResults.forEach(r => {
    if (r.quantity_adjusted !== "" && r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) {
      const key = `${r.sector_name}_${r.equipment_code}`;
      manualAdjustmentsMap[key] = {
        quantity_adjusted: r.quantity_adjusted,
        adjustment_reason: r.adjustment_reason,
        adjusted_by: r.adjusted_by,
        adjusted_at: r.adjusted_at
      };
    }
  });
  
  // Clear existing calculated results
  deleteRows("project_equipment_results", "project_id", projectId);
  
  // 4. Evaluate rules sector by sector
  const sizingResults = [];
  
  sectors.forEach(sect => {
    const sectorName = sect.sector_name;
    const sectorRules = rules.filter(r => r.sector === sectorName);
    
    sectorRules.forEach(rule => {
      const paramName = rule.parameter;
      const paramValue = (paramsMap[sectorName] && paramsMap[sectorName][paramName]) !== undefined 
          ? paramsMap[sectorName][paramName] 
          : 0;
          
      // Check condition
      const isMet = evalCondition(paramValue, rule.operator, rule.value);
      if (isMet) {
        // Run formula
        let qtyCalc = 0;
        const factor = Number(rule.formula_factor) || 0;
        const type = rule.calculation_type;
        
        if (type === "fixed") {
          qtyCalc = factor;
        } else if (type === "per_parameter") {
          qtyCalc = paramValue * factor;
        } else if (type === "rounded_ratio") {
          qtyCalc = Math.ceil(paramValue / factor);
        }
        
        // Apply reserve factor (fraction, ex: 0.10 for 10% reserve)
        const reserveFactor = Number(rule.reserve_factor) || 0;
        const qtyRecommended = Math.ceil(qtyCalc * (1 + reserveFactor));
        
        // Restore manual adjustments if previously defined for this exact equipment in this sector
        const adjKey = `${sectorName}_${rule.equipment_code}`;
        const prevAdj = manualAdjustmentsMap[adjKey];
        
        const resultRow = {
          id: "RES-" + Math.random().toString(36).substr(2, 9).toUpperCase(),
          project_id: projectId,
          sector_name: sectorName,
          equipment_code: rule.equipment_code,
          quantity_calculated: qtyCalc,
          quantity_recommended: qtyRecommended,
          quantity_adjusted: prevAdj ? prevAdj.quantity_adjusted : "",
          adjustment_reason: prevAdj ? prevAdj.adjustment_reason : "",
          adjusted_by: prevAdj ? prevAdj.adjusted_by : "",
          adjusted_at: prevAdj ? prevAdj.adjusted_at : ""
        };
        
        sizingResults.push(resultRow);
      }
    });
  });
  
  // 5. Save results back to Sheet
  sizingResults.forEach(r => {
    appendRow("project_equipment_results", r);
  });
  
  return true;
}

/**
 * Helper to evaluate simple operator conditions.
 */
function evalCondition(paramValue, operator, ruleValue) {
  paramValue = Number(paramValue) || 0;
  ruleValue = Number(ruleValue) || 0;
  
  if (operator === ">") return paramValue > ruleValue;
  if (operator === "<") return paramValue < ruleValue;
  if (operator === ">=") return paramValue >= ruleValue;
  if (operator === "<=") return paramValue <= ruleValue;
  if (operator === "==") return paramValue === ruleValue;
  if (operator === "ANY" || operator === "qualquer") return true;
  return false;
}

/**
 * Saves a manual adjustment override for an equipment quantity.
 */
function adjustEquipmentQuantity(projectId, sectorName, equipmentCode, adjustedQty, reason, userEmail) {
  const ss = getSpreadsheet();
  const sheet = ss.getSheetByName("project_equipment_results");
  if (!sheet) return false;
  
  const lastRow = sheet.getLastRow();
  if (lastRow <= 1) return false;
  const lastCol = sheet.getLastColumn();
  const headers = sheet.getRange(1, 1, 1, lastCol).getValues()[0];
  
  // Match row by project_id, sector_name, and equipment_code
  const projIdx = headers.indexOf("project_id");
  const sectIdx = headers.indexOf("sector_name");
  const codeIdx = headers.indexOf("equipment_code");
  
  const values = sheet.getRange(2, 1, lastRow - 1, lastCol).getValues();
  for (let i = 0; i < values.length; i++) {
    const row = values[i];
    if (row[projIdx] == projectId && row[sectIdx] == sectorName && row[codeIdx] == equipmentCode) {
      const rowIndex = i + 2;
      const qtyAdjustedCol = headers.indexOf("quantity_adjusted") + 1;
      const reasonCol = headers.indexOf("adjustment_reason") + 1;
      const byCol = headers.indexOf("adjusted_by") + 1;
      const atCol = headers.indexOf("adjusted_at") + 1;
      
      // Update spreadsheet row directly
      sheet.getRange(rowIndex, qtyAdjustedCol).setValue(adjustedQty === null || adjustedQty === "" ? "" : Number(adjustedQty));
      sheet.getRange(rowIndex, reasonCol).setValue(reason || "");
      sheet.getRange(rowIndex, byCol).setValue(userEmail || "usuario@prodime.com.br");
      sheet.getRange(rowIndex, atCol).setValue(new Date().toISOString());
      SpreadsheetApp.flush(); // Commit adjustments
      
      logAudit(projectId, userEmail, "Ajustar Quantidade", 
        `Quantidade de ${equipmentCode} no setor ${sectorName} ajustada para ${adjustedQty}. Motivo: ${reason}`);
      return true;
    }
  }
  return false;
}

/**
 * Logs changes to audit_logs sheet.
 */
function logAudit(projectId, userEmail, action, details) {
  appendRow("audit_logs", {
    id: "LOG-" + Math.random().toString(36).substr(2, 9).toUpperCase(),
    project_id: projectId || "N/A",
    user_email: userEmail || "sistema@prodime.com.br",
    action: action,
    timestamp: new Date().toISOString(),
    details: details
  });
}

/**
 * List all equipment.
 */
function listEquipment() {
  return getTableData("equipment");
}

/**
 * Create or edit equipment in database catalog.
 */
function saveEquipment(equipmentData, userEmail) {
  const isNew = !getTableData("equipment").some(e => e.code === equipmentData.code);
  equipmentData.updated_at = new Date().toISOString();
  
  if (isNew) {
    equipmentData.created_at = new Date().toISOString();
    appendRow("equipment", equipmentData);
    logAudit("", userEmail, "Cadastrar Equipamento", `Equipamento ${equipmentData.code} (${equipmentData.name}) cadastrado.`);
  } else {
    updateRow("equipment", "code", equipmentData.code, equipmentData);
    logAudit("", userEmail, "Editar Equipamento", `Equipamento ${equipmentData.code} (${equipmentData.name}) editado.`);
  }
  return listEquipment();
}

/**
 * List all rules.
 */
function listRules() {
  return getTableData("dimensioning_rules");
}

/**
 * Create or edit dimensioning rules.
 */
function saveRule(ruleData, userEmail) {
  const isNew = !ruleData.id;
  const ruleId = isNew ? "RULE-" + Math.random().toString(36).substr(2, 9).toUpperCase() : ruleData.id;
  
  ruleData.id = ruleId;
  ruleData.updated_at = new Date().toISOString();
  
  if (isNew) {
    ruleData.created_at = new Date().toISOString();
    appendRow("dimensioning_rules", ruleData);
    logAudit("", userEmail, "Cadastrar Regra", `Regra ${ruleId} (${ruleData.name}) cadastrada.`);
  } else {
    updateRow("dimensioning_rules", "id", ruleId, ruleData);
    logAudit("", userEmail, "Editar Regra", `Regra ${ruleId} (${ruleData.name}) editada.`);
  }
  return listRules();
}

/**
 * Returns audit log entries.
 */
function getAuditLogs() {
  return getTableData("audit_logs").reverse().slice(0, 100);
}

/**
 * List all users.
 */
function listUsers() {
  return getTableData("users");
}

/**
 * Create or edit user.
 */
function saveUser(userData, userEmail) {
  const isNew = !userData.id;
  const userId = isNew ? "USR-" + Math.random().toString(36).substr(2, 9).toUpperCase() : userData.id;
  userData.id = userId;
  
  if (typeof userData.active === 'string') {
    userData.active = (userData.active === 'true');
  }
  
  if (isNew) {
    appendRow("users", userData);
    logAudit("", userEmail, "Cadastrar Usuário", `Usuário ${userData.email} (${userData.name}) cadastrado como ${userData.role}.`);
  } else {
    updateRow("users", "id", userId, userData);
    logAudit("", userEmail, "Editar Usuário", `Usuário ${userData.email} (${userData.name}) editado. Perfil: ${userData.role}, Ativo: ${userData.active}.`);
  }
  return listUsers();
}

/**
 * Delete a user from database.
 */
function deleteUser(userId, userEmail) {
  const users = getTableData("users");
  const user = users.find(u => u.id === userId);
  if (user) {
    deleteRows("users", "id", userId);
    logAudit("", userEmail, "Excluir Usuário", `Usuário ${user.email} (${user.name}) excluído.`);
  }
  return listUsers();
}

/**
 * Garante que a aba existe e possui todos os cabeçalhos esperados (auto-healing).
 */
function healTableSchema(ss, sheetName, expectedHeaders) {
  let sheet = ss.getSheetByName(sheetName);
  if (!sheet) {
    sheet = ss.insertSheet(sheetName);
    sheet.appendRow(expectedHeaders);
    sheet.getRange(1, 1, 1, expectedHeaders.length)
         .setFontWeight("bold")
         .setBackground("#0F766E")
         .setFontColor("#FFFFFF");
    return;
  }
  
  const lastCol = sheet.getLastColumn();
  const lastRow = sheet.getLastRow();
  
  if (lastCol === 0 || lastRow === 0) {
    sheet.appendRow(expectedHeaders);
    sheet.getRange(1, 1, 1, expectedHeaders.length)
         .setFontWeight("bold")
         .setBackground("#0F766E")
         .setFontColor("#FFFFFF");
    return;
  }
  
  // Obter cabeçalhos existentes
  const existingHeaders = sheet.getRange(1, 1, 1, lastCol).getValues()[0].map(h => String(h).trim().toLowerCase());
  
  // Identificar cabeçalhos faltantes
  const missingHeaders = [];
  expectedHeaders.forEach(h => {
    if (existingHeaders.indexOf(h.toLowerCase()) === -1) {
      missingHeaders.push(h);
    }
  });
  
  if (missingHeaders.length > 0) {
    // Adicionar colunas faltantes ao final da planilha
    missingHeaders.forEach(h => {
      const nextCol = sheet.getLastColumn() + 1;
      sheet.getRange(1, nextCol).setValue(h)
           .setFontWeight("bold")
           .setBackground("#0F766E")
           .setFontColor("#FFFFFF");
    });
    SpreadsheetApp.flush();
  }
}

/**
 * Checks database tables integrity and populates default data if sheets are empty.
 */
function checkAndInitDb(ss) {
  const sheetsConfig = {
    "users": ["id", "email", "name", "role", "active"],
    "projects": ["id", "name", "hospital_name", "city", "state", "establishment_type", "profile", "is_public", "project_type", "currency", "price_date", "technical_manager", "notes", "created_by", "created_at", "updated_at"],
    "project_sectors": ["id", "project_id", "sector_name", "complexity", "turns", "volume_estimated", "criticality"],
    "sector_parameters": ["id", "project_id", "sector_name", "parameter_name", "parameter_value"],
    "equipment": ["code", "name", "category", "subcategory", "description", "applicable_sectors", "applicable_environments", "unit", "min_price", "avg_price", "max_price", "manufacturers", "life_span_years", "maintenance_interval_months", "calibration_required", "criticality", "complexity", "infra_electricity", "infra_water", "infra_gases", "infra_climatization", "dimensions", "notes", "normative_reference", "status"],
    "dimensioning_rules": ["id", "name", "sector", "parameter", "operator", "value", "equipment_code", "calculation_type", "formula_factor", "reserve_factor", "classification", "justification", "normative_reference", "active"],
    "project_equipment_results": ["id", "project_id", "sector_name", "equipment_code", "quantity_calculated", "quantity_recommended", "quantity_adjusted", "adjustment_reason", "adjusted_by", "adjusted_at"],
    "audit_logs": ["id", "project_id", "user_email", "action", "timestamp", "details"]
  };
  
  for (const sheetName in sheetsConfig) {
    healTableSchema(ss, sheetName, sheetsConfig[sheetName]);
  }
  
  // Populate users if empty
  const userSheet = ss.getSheetByName("users");
  if (userSheet.getLastRow() === 1) {
    const mockUsers = [
      ["USR001", "admin@prodime.com.br", "Administrador Geral", "Admin", true],
      ["USR002", "consultor@prodime.com.br", "Engenheiro Clínico João", "Consultor", true],
      ["USR003", "cliente@prodime.com.br", "Gestor Hospitalar Maria", "Cliente", true],
      ["USR004", "visualizador@prodime.com.br", "Visitante Dr. Silva", "Visualizador", true]
    ];
    mockUsers.forEach(row => userSheet.appendRow(row));
  }
  
  // Populate equipment catalog if empty
  const eqSheet = ss.getSheetByName("equipment");
  if (eqSheet.getLastRow() === 1) {
    const mockEquipment = [
      ["MON001", "Monitor Multiparamétrico", "Monitorização", "Sinais Vitais", "Monitor de sinais vitais de beira de leito com ECG, SpO2, PNI, Resp e Temp.", "UTI Adulto,UTI Neonatal,UTI Pediátrica,Centro Cirúrgico,Pronto-Socorro", "Leito,Box de Emergência,Recuperação Anestésica", "Unidade", 12000, 18000, 25000, "Mindray, Philips, Nihon Kohden", 7, 6, true, "Alta", "Média", "110V/220V", "Não", "Não", "Não", "30x30x25 cm", "Requer calibração anual.", "Anvisa RDC 50, RDC 343", "Ativo"],
      ["VEN001", "Ventilador Pulmonar de UTI", "Suporte de Vida", "Ventilação Mecânica", "Ventilador mecânico microprocessado invasivo/não-invasivo adulto/pediátrico.", "UTI Adulto,UTI Pediátrica,Pronto-Socorro", "Leito,Box de Emergência", "Unidade", 75000, 95000, 130000, "Magnamed, Dräger, Hamilton", 8, 6, true, "Alta", "Alta", "110V/220V e Bateria", "Não", "Ar Comprimido, Oxigênio", "Ar condicionado necessário", "45x50x135 cm", "Exige rede de gases medicinais estável.", "Anvisa RDC 50", "Ativo"],
      ["ANE001", "Aparelho de Anestesia (Estação de Trabalho)", "Suporte de Vida", "Anestesia", "Estação de anestesia com ventilador mecânico microprocessado e vaporizadores.", "Centro Cirúrgico,Centro Obstetrico", "Sala Cirúrgica,Sala de Parto", "Unidade", 95000, 140000, 190000, "Dräger, GE Healthcare, Mindray", 10, 6, true, "Alta", "Alta", "110V/220V e Bateria", "Não", "Ar Comprimido, Oxigênio, Óxido Nitroso", "Ar condicionado necessário", "70x65x140 cm", "Requer exaustão ativa de gases anestésicos.", "Anvisa RDC 50", "Ativo"],
      ["DES001", "Desfibrilador Cardioversor", "Suporte de Vida", "Reanimação", "Desfibrilador cardioversor bifásico com ECG, marcapasso externo e modo DEA.", "UTI Adulto,UTI Neonatal,UTI Pediátrica,Centro Cirúrgico,Centro Obstetrico,Pronto-Socorro,Internação", "Sala de Emergência,Posto de Enfermagem", "Unidade", 15000, 22000, 32000, "Instramed, ZOLL, Physio-Control", 7, 12, true, "Alta", "Média", "110V/220V e Bateria", "Não", "Não", "Não", "32x30x22 cm", "Deve passar por teste diário de bateria.", "Anvisa RDC 50", "Ativo"],
      ["BOM001", "Bomba de Infusão Volumétrica", "Suporte de Vida", "Infusão", "Bomba de infusão peristáltica linear para infusão precisa de fluidos e drogas.", "UTI Adulto,UTI Neonatal,UTI Pediátrica,Centro Cirúrgico,Pronto-Socorro,Internação", "Leito,Sala Cirúrgica,Box de Emergência", "Unidade", 3500, 5500, 8000, "Samtronic, B. Braun, Hospira", 6, 12, true, "Média", "Baixa", "110V/220V e Bateria", "Não", "Não", "Não", "15x15x25 cm", "Requer equipo específico de infusão.", "Anvisa RDC 50", "Ativo"],
      ["MES001", "Mesa Cirúrgica Elétrica", "Cirúrgico", "Infraestrutura", "Mesa operatória eletro-hidráulica radiotransparente para cirurgia geral.", "Centro Cirúrgico,Centro Obstetrico", "Sala Cirúrgica,Sala de Parto", "Unidade", 45000, 65000, 95000, "Barrisolar, Steris, Stryker", 12, 12, false, "Alta", "Média", "220V", "Não", "Não", "Não", "200x55 cm", "Carga limite suportada: 180 kg.", "Anvisa RDC 50", "Ativo"],
      ["FOC001", "Foco Cirúrgico de LED", "Cirúrgico", "Infraestrutura", "Foco de teto LED duplo com controle digital de intensidade luminosa.", "Centro Cirúrgico,Centro Obstetrico", "Sala Cirúrgica,Sala de Parto", "Unidade", 20000, 38000, 55000, "Steris, Trumpf, Barrisolar", 10, 12, false, "Alta", "Média", "110V/220V", "Não", "Não", "Não", "Cúpula Ø 60 cm", "Requer fixação rígida no teto/laje.", "Anvisa RDC 50", "Ativo"],
      ["BIS001", "Bisturi Eletrônico Monopolar/Bipolar", "Cirúrgico", "Corte e Coagulação", "Bisturi elétrico de alta frequência com corte, coagulação e bipolar.", "Centro Cirúrgico,Centro Obstetrico", "Sala Cirúrgica,Sala de Parto", "Unidade", 12000, 18000, 28000, "Wem, Medtronic, Valleylab", 8, 12, true, "Alta", "Média", "110V/220V", "Não", "Não", "Não", "35x35x15 cm", "Fundamental uso de placa neutra no paciente.", "Anvisa RDC 50", "Ativo"],
      ["CAR001", "Carro de Emergência Equipado", "Apoio", "Urgência", "Carro de parada completo em aço com divisórias, suporte cilindro e soro.", "UTI Adulto,UTI Neonatal,UTI Pediátrica,Centro Cirúrgico,Pronto-Socorro,Internação", "Posto de Enfermagem,Sala de Emergência", "Unidade", 3000, 4500, 6000, "Sitmed, Vallitech, Fami", 10, 24, false, "Alta", "Baixa", "Não", "Não", "Não", "Não", "90x50x100 cm", "Mantido lacrado com kit de medicamentos de parada.", "Anvisa RDC 50", "Ativo"],
      ["AUT001", "Autoclave Horizontal a Vapor (Barreira)", "Esterilização", "Processamento", "Autoclave horizontal de porta dupla para barreiras de esterilização CME.", "CME", "Área Limpa / Área Suja", "Unidade", 85000, 130000, 210000, "Baumer, Cisa, Steris", 12, 6, true, "Alta", "Alta", "220V/380V Trifásico", "Sim (Água tratada e esgoto)", "Vapor de gerador", "Requer coifa exaustora", "120x150x190 cm", "Exige qualidade de água abrandada/deionizada.", "Anvisa RDC 50, RDC 15", "Ativo"],
      ["ECG001", "Eletrocardiógrafo Portátil", "Diagnóstico", "Cardiologia", "Eletrocardiógrafo digital de 12 canais com impressão e laudo preliminar.", "UTI Adulto,Pronto-Socorro,Internação", "Posto de Enfermagem,Consultórios", "Unidade", 6000, 8500, 12000, "Teb, Bionet, Mindray", 7, 12, true, "Média", "Média", "110V/220V e Bateria", "Não", "Não", "Não", "28x32x10 cm", "Uso em postos para ECG rotineiro.", "Anvisa RDC 50", "Ativo"],
      ["RAI001", "Aparelho de Raio-X Fixo Digital", "Diagnóstico", "Radiologia", "Sistema radiográfico digital (DR) de alta frequência com mesa e bucky.", "Diagnóstico por Imagem,Pronto-Socorro", "Sala de Raio-X", "Unidade", 180000, 260000, 380000, "Siemens, GE Healthcare, Philips", 10, 6, true, "Média", "Alta", "220V/380V Trifásico", "Não", "Não", "Ar condicionado necessário", "Mesa: 220x80 cm", "Sala requer blindagem de barita ou chumbo.", "Anvisa RDC 50, RDC 330", "Ativo"],
      ["TOM001", "Tomógrafo Computadorizado (64 Canais)", "Diagnóstico", "Tomografia", "Scanner de CT multislice 64 canais com estação de processamento.", "Diagnóstico por Imagem", "Sala de Tomografia", "Unidade", 1200000, 1800000, 2500000, "Canon, GE Healthcare, Siemens", 10, 4, true, "Alta", "Alta", "380V Trifásico", "Não", "Não", "Climatização com chiller dedicada", "Gantry: 200x200x95 cm", "Requer blindagem estrutural e ar-condicionado de precisão.", "Anvisa RDC 50, RDC 330", "Ativo"],
      ["RES001", "Ressonância Magnética (1.5 Tesla)", "Diagnóstico", "Ressonância", "Sistema supercondutor RM de 1.5 Tesla para exames de alto campo.", "Diagnóstico por Imagem", "Sala de Ressonância", "Unidade", 3500000, 4800000, 6200000, "GE Healthcare, Siemens, Philips", 12, 3, true, "Alta", "Alta", "380V Trifásico", "Água gelada compressor", "Hélio selado", "Clima 24h e quench", "Gantry: 220x220x240 cm", "Requer blindagem de RF (Gaiola Faraday) e duto Quench.", "Anvisa RDC 50, RDC 330", "Ativo"],
      ["USG001", "Ecógrafo / Ultrassom Diagnóstico", "Diagnóstico", "Ultrassonografia", "Aparelho de ultrassom com Doppler colorido e 3 transdutores de fábrica.", "Diagnóstico por Imagem,Consultórios,UTI Adulto", "Sala de Exame,Beira leito", "Unidade", 75000, 120000, 180000, "Samsung, GE Healthcare, Mindray", 7, 12, true, "Média", "Média", "110V/220V", "Não", "Não", "Ar condicionado necessário", "60x75x145 cm", "Excelente portabilidade para UTI e exames clínicos.", "Anvisa RDC 50", "Ativo"],
      ["INC001", "Incubadora Neonatal Intensiva", "Suporte de Vida", "Pediatria", "Incubadora com controle térmico do ar/pele e servocontrolador de umidade.", "UTI Neonatal", "Leito Neonatal", "Unidade", 35000, 50000, 70000, "Fanem, Olidef", 8, 6, true, "Alta", "Alta", "110V/220V e Bateria", "Não", "Oxigênio", "Não", "65x100x140 cm", "Uso essencial para regulação térmica do recém-nascido.", "Anvisa RDC 50, RDC 7", "Ativo"],
      ["FOT001", "Aparelho de Fototerapia de LED", "Suporte de Vida", "Pediatria", "Fototerapia de pedestal com alta irradiância em super LEDs azuis.", "UTI Neonatal", "Leito Neonatal", "Unidade", 8000, 12000, 18000, "Fanem, Olidef", 8, 12, true, "Média", "Baixa", "110V/220V", "Não", "Não", "Não", "40x40x160 cm", "Tratamento de icterícia em leito neonatal.", "Anvisa RDC 50", "Ativo"],
      ["GAS001", "Videoendoscópio Digestivo", "Diagnóstico", "Endoscopia", "Torre de endoscopia com gastroscópio, colonoscópio e monitor.", "Endoscopia", "Sala de Endoscopia", "Unidade", 12000, 180000, 260000, "Olympus, Pentax, Fujifilm", 8, 6, false, "Média", "Alta", "110V/220V", "Não", "Não", "Não", "45x50x120 cm", "Requer sala apropriada para lavagem e desinfecção de tubos.", "Anvisa RDC 50, RDC 6", "Ativo"],
      ["TER001", "Termodesinfectadora Horizontal", "Esterilização", "Processamento", "Lavadora termodesinfectadora automática de instrumentos cirúrgicos.", "CME", "Área de Lavagem (Suja)", "Unidade", 65000, 95000, 140000, "Baumer, Cisa, Steelco", 10, 6, true, "Média", "Alta", "220V/380V Trifásico", "Sim (Água fria/quente/osmose e esgoto)", "Não", "Exaustão requerida", "80x90x160 cm", "Garante limpeza uniforme e proteção ao trabalhador da CME.", "Anvisa RDC 50, RDC 15", "Ativo"],
      ["MAM001", "Mamógrafo Digital Direto", "Diagnóstico", "Mamografia", "Mamógrafo de alta fidelidade com braço isocêntrico motorizado.", "Diagnóstico por Imagem", "Sala de Mamografia", "Unidade", 250000, 380000, 520000, "Hologic, GE Healthcare", 10, 6, true, "Média", "Alta", "220V", "Não", "Não", "Ar condicionado necessário", "100x120x190 cm", "Requer proteção e blindagem contra radiação.", "Anvisa RDC 50, RDC 330", "Ativo"]
    ];
    mockEquipment.forEach(row => eqSheet.appendRow(row));
  }
  
  // Populate dimensioning rules if empty
  const rulesSheet = ss.getSheetByName("dimensioning_rules");
  if (rulesSheet.getLastRow() === 1) {
    const mockRules = [
      ["RULE001", "UTI Adulto - Monitor", "UTI Adulto", "leitos", ">", 0, "MON001", "per_parameter", 1, 0, "Obrigatório", "Monitor individual por leito crítico (monitoramento vital contínuo).", "RDC 50 Anvisa", true],
      ["RULE002", "UTI Adulto - Ventilador", "UTI Adulto", "leitos", ">", 0, "VEN001", "per_parameter", 1, 0.2, "Obrigatório", "Ventilador pulmonar mecânico individual (reserva técnica recomendada de 20%).", "RDC 7 Anvisa / RDC 50", true],
      ["RULE003", "UTI Adulto - Bomba Infusão", "UTI Adulto", "leitos", ">", 0, "BOM001", "per_parameter", 3, 0.1, "Obrigatório", "Mínimo 3 bombas de infusão por leito para medicação de alta precisão.", "RDC 7 Anvisa / RDC 50", true],
      ["RULE004", "UTI Adulto - Desfibrilador", "UTI Adulto", "leitos", ">", 0, "DES001", "rounded_ratio", 10, 0, "Obrigatório", "Desfibrilador cardioversor de emergência (1 por 10 leitos ou fração).", "RDC 7 Anvisa / RDC 50", true],
      ["RULE005", "UTI Adulto - ECG", "UTI Adulto", "leitos", ">", 0, "ECG001", "fixed", 1, 0, "Recomendado", "Eletrocardiógrafo dedicado ao setor para traçado diagnóstico rápido.", "RDC 50 Anvisa", true],
      ["RULE006", "UTI Adulto - Carro Parada", "UTI Adulto", "leitos", ">", 0, "CAR001", "rounded_ratio", 10, 0, "Obrigatório", "Carro de parada cardiorrespiratória estruturado. Mínimo 1 por 10 leitos.", "RDC 50 Anvisa", true],
      ["RULE007", "Centro Cirúrgico - Mesa Cirúrgica", "Centro Cirúrgico", "salas_cirurgicas", ">", 0, "MES001", "per_parameter", 1, 0, "Obrigatório", "Mesa cirúrgica principal por sala operatória.", "RDC 50 Anvisa", true],
      ["RULE008", "Centro Cirúrgico - Foco Cirúrgico", "Centro Cirúrgico", "salas_cirurgicas", ">", 0, "FOC001", "per_parameter", 1, 0, "Obrigatório", "Foco de teto LED de alta intensidade para área operatória.", "RDC 50 Anvisa", true],
      ["RULE009", "Centro Cirúrgico - Anestesia", "Centro Cirúrgico", "salas_cirurgicas", ">", 0, "ANE001", "per_parameter", 1, 0, "Obrigatório", "Estação de trabalho de anestesia dedicada por sala.", "RDC 50 Anvisa", true],
      ["RULE010", "Centro Cirúrgico - Bisturi", "Centro Cirúrgico", "salas_cirurgicas", ">", 0, "BIS001", "per_parameter", 1, 0.1, "Obrigatório", "Bisturi elétrico por sala de cirurgia (fator de 10% de reserva técnica).", "RDC 50 Anvisa", true],
      ["RULE011", "Centro Cirúrgico - Monitor", "Centro Cirúrgico", "salas_cirurgicas", ">", 0, "MON001", "per_parameter", 1, 0, "Obrigatório", "Monitor multiparamétrico com canais de anestesia por sala.", "RDC 50 Anvisa", true],
      ["RULE012", "Centro Cirúrgico - Recuperação Monitor", "Centro Cirúrgico", "salas_recuperacao", ">", 0, "MON001", "per_parameter", 1, 0, "Obrigatório", "Monitor por leito de recuperação pós-anestésica (RPA).", "RDC 50 Anvisa", true],
      ["RULE013", "Internação - Carro Emergência", "Internação", "leitos", ">", 0, "CAR001", "rounded_ratio", 30, 0, "Recomendado", "Carro de parada rápida para ala de enfermaria (1 por posto - 30 leitos).", "RDC 50 Anvisa", true],
      ["RULE014", "Internação - Desfibrilador", "Internação", "leitos", ">", 0, "DES001", "rounded_ratio", 30, 0, "Recomendado", "Desfibrilador bifásico acessível (1 por 30 leitos ou posto de enfermagem).", "RDC 50 Anvisa", true],
      ["RULE015", "Pronto-Socorro - Monitor Emergência", "Pronto-Socorro", "boxes_emergencia", ">", 0, "MON001", "per_parameter", 1, 0, "Obrigatório", "Monitor multiparamétrico por box de emergência.", "RDC 50 Anvisa", true],
      ["RULE016", "Pronto-Socorro - Ventilador Emergência", "Pronto-Socorro", "boxes_emergencia", ">", 0, "VEN001", "per_parameter", 1, 0, "Obrigatório", "Ventilador de transporte/emergência por leito crítico do PS.", "RDC 50 Anvisa", true],
      ["RULE017", "Pronto-Socorro - Desfibrilador", "Pronto-Socorro", "boxes_emergencia", ">", 0, "DES001", "fixed", 1, 0, "Obrigatório", "Desfibrilador cardioversor fixo na sala vermelha/emergência.", "RDC 50 Anvisa", true],
      ["RULE018", "Pronto-Socorro - Bomba Infusão", "Pronto-Socorro", "boxes_emergencia", ">", 0, "BOM001", "per_parameter", 2, 0.1, "Obrigatório", "Bombas de infusão (2 por box de emergência) para suporte rápido.", "RDC 50 Anvisa", true],
      ["RULE019", "CME - Autoclave", "CME", "salas", ">", 0, "AUT001", "fixed", 2, 0, "Obrigatório", "Mínimo de 2 autoclaves de barreira na CME para fluxo contínuo e segurança.", "RDC 15 Anvisa / RDC 50", true],
      ["RULE020", "CME - Termodesinfectadora", "CME", "salas", ">", 0, "TER001", "fixed", 1, 0, "Recomendado", "Lavadora termodesinfectadora automatizada para higienização confiável.", "RDC 15 Anvisa / RDC 50", true],
      ["RULE021", "Diagnóstico por Imagem - Raio-X", "Diagnóstico por Imagem", "salas_rx", ">", 0, "RAI001", "per_parameter", 1, 0, "Obrigatório", "Aparelho de raio-x digital por sala de Raio-X cadastrada.", "RDC 50 Anvisa", true],
      ["RULE022", "Diagnóstico por Imagem - Ultrassom", "Diagnóstico por Imagem", "salas_usg", ">", 0, "USG001", "per_parameter", 1, 0, "Obrigatório", "Aparelho de ultrassom por sala de ultrassonografia cadastrada.", "RDC 50 Anvisa", true],
      ["RULE026", "Diagnóstico por Imagem - Tomografia", "Diagnóstico por Imagem", "salas_tc", ">", 0, "TOM001", "per_parameter", 1, 0, "Obrigatório", "Tomógrafo computadorizado por sala de tomografia cadastrada.", "RDC 50 Anvisa", true],
      ["RULE027", "Diagnóstico por Imagem - Ressonância", "Diagnóstico por Imagem", "salas_rm", ">", 0, "RES001", "per_parameter", 1, 0, "Obrigatório", "Ressonância magnética por sala de exame cadastrada.", "RDC 50 Anvisa", true],
      ["RULE028", "Diagnóstico por Imagem - Mamografia", "Diagnóstico por Imagem", "salas_mamografia", ">", 0, "MAM001", "per_parameter", 1, 0, "Obrigatório", "Mamógrafo digital por sala de mamografia cadastrada.", "RDC 50 Anvisa", true],
      ["RULE023", "UTI Neonatal - Incubadora", "UTI Neonatal", "leitos", ">", 0, "INC001", "per_parameter", 1, 0, "Obrigatório", "Incubadora microprocessada termo-controlada individual por leito neonatal.", "RDC 7 Anvisa / RDC 50", true],
      ["RULE024", "UTI Neonatal - Monitor", "UTI Neonatal", "leitos", ">", 0, "MON001", "per_parameter", 1, 0, "Obrigatório", "Monitor individual multiparamétrico neonatal.", "RDC 7 Anvisa / RDC 50", true],
      ["RULE025", "UTI Neonatal - Fototerapia", "UTI Neonatal", "leitos", ">", 0, "FOT001", "rounded_ratio", 4, 0, "Recomendado", "Aparelho de fototerapia (1 para cada 4 leitos críticos ou fração).", "RDC 50 Anvisa", true]
    ];
    mockRules.forEach(row => rulesSheet.appendRow(row));
  }
}

/**
 * Retorna o status das abas e cabeçalhos para diagnóstico de integridade.
 */
function getDiagnostics() {
  const ss = getSpreadsheet();
  const report = {};
  ss.getSheets().forEach(sheet => {
    const name = sheet.getName();
    const lastRow = sheet.getLastRow();
    const lastCol = sheet.getLastColumn();
    let headers = [];
    if (lastRow > 0 && lastCol > 0) {
      headers = sheet.getRange(1, 1, 1, lastCol).getValues()[0];
    }
    report[name] = {
      lastRow: lastRow,
      lastCol: lastCol,
      headers: headers
    };
  });
  return report;
}

/**
 * Creates a Google Doc with the sizing rules manual and places it in the designated folder.
 */
function createManualGoogleDoc() {
  const folderId = "1_qzSEQqUL1OnJ8kQbHr8nQOgADp1B0rs";
  const docName = "PRODIME - Manual de Regras de Dimensionamento";
  
  // 1. Create the Google Doc
  const doc = DocumentApp.create(docName);
  const body = doc.getBody();
  
  // Style configurations
  const titleStyle = {};
  titleStyle[DocumentApp.Attribute.FONT_FAMILY] = 'Arial';
  titleStyle[DocumentApp.Attribute.FONT_SIZE] = 20;
  titleStyle[DocumentApp.Attribute.BOLD] = true;
  titleStyle[DocumentApp.Attribute.FOREGROUND_COLOR] = '#0f766e'; // Teal 700
  titleStyle[DocumentApp.Attribute.HORIZONTAL_ALIGNMENT] = DocumentApp.HorizontalAlignment.CENTER;
  
  const h1Style = {};
  h1Style[DocumentApp.Attribute.FONT_FAMILY] = 'Arial';
  h1Style[DocumentApp.Attribute.FONT_SIZE] = 14;
  h1Style[DocumentApp.Attribute.BOLD] = true;
  h1Style[DocumentApp.Attribute.FOREGROUND_COLOR] = '#0f172a'; // Slate 900
  h1Style[DocumentApp.Attribute.SPACE_BEFORE] = 18;
  h1Style[DocumentApp.Attribute.SPACE_AFTER] = 6;
  
  const bodyStyle = {};
  bodyStyle[DocumentApp.Attribute.FONT_FAMILY] = 'Arial';
  bodyStyle[DocumentApp.Attribute.FONT_SIZE] = 11;
  bodyStyle[DocumentApp.Attribute.BOLD] = false;
  bodyStyle[DocumentApp.Attribute.FOREGROUND_COLOR] = '#334155'; // Slate 700
  bodyStyle[DocumentApp.Attribute.LINE_SPACING] = 1.15;
  bodyStyle[DocumentApp.Attribute.SPACE_AFTER] = 8;

  // Title
  const pTitle = body.appendParagraph("Manual de Preenchimento: Regras de Dimensionamento (PRODIME)");
  pTitle.setAttributes(titleStyle);
  
  const pSub = body.appendParagraph("Este manual orienta o preenchimento correto dos campos do modal de regras de dimensionamento, garantindo que o motor de cálculo calcule as recomendações de equipamentos do hospital de forma precisa e em conformidade regulatória (Anvisa RDC 50).");
  pSub.setAttributes(bodyStyle);
  
  // Section 1
  body.appendParagraph("1. Estrutura do Modal e Significado dos Campos").setAttributes(h1Style);
  
  const fields = [
    ["Nome Descritivo da Regra", "Identificação rápida. Use o padrão: [Setor] - [Equipamento] - [Especificidade]. Ex: UTI Adulto - Monitor Multiparamétrico."],
    ["Setor Aplicável", "O setor assistencial onde a regra é ativada. Ex: UTI Adulto, Centro Cirúrgico."],
    ["Parâmetro de Entrada (Trigger)", "A variável quantitativa de dimensionamento. Ex: Leitos (leitos), Salas Cirúrgicas (salas_cirurgicas), Boxes de Emergência (boxes_emergencia)."],
    ["Operador Condicional", "Condição lógica para ativar a regra. Ex: Qualquer valor (Sempre aplica), Maior que (>)."],
    ["Valor Condição", "O limite numérico do parâmetro para a condição ser ativada. Valor padrão: 0."],
    ["Equipamento Selecionado", "O equipamento associado que será recomendado."],
    ["Tipo de Cálculo", "Define a regra matemática para calcular as quantidades. Valores:\n- Quantidade por Unidade de Parâmetro (per_parameter): Multiplica o valor do parâmetro pelo fator.\n- Quantidade Fixa (fixed): Quantidade fixa, independente do parâmetro.\n- Quantidade por Grupo (rounded_ratio): Divisão arredondada para cima (ex: 1 ventilador para cada 2 leitos)."],
    ["Fator da Fórmula", "Divisor ou multiplicador do cálculo. Ex: Fator = 1 para '1 por leito'; Fator = 2 para '1 a cada 2 leitos'."],
    ["Reserva Técnica", "Margem sobressalente em formato decimal. Ex: 0.10 para 10%, 0.20 para 20%."],
    ["Classificação Regulatória", "Nível de obrigatoriedade da regra: Obrigatório (Anvisa), Recomendado (AMIB/Conselhos), Opcional."],
    ["Justificativa Técnica", "Explicação clínica/técnica do dimensionamento. Ex: Monitorização contínua de beira de leito crítico."],
    ["Referência Regulatória", "Norma regulatória ou lei embasadora. Ex: Anvisa RDC 50, RDC 7/2010."]
  ];
  
  fields.forEach(field => {
    const p = body.appendParagraph("");
    p.setAttributes(bodyStyle);
    p.setGlyphType(DocumentApp.GlyphType.BULLET);
    
    const nameItem = p.appendText(field[0] + ": ");
    nameItem.setBold(true);
    nameItem.setForegroundColor('#0f766e');
    
    const descItem = p.appendText(field[1]);
    descItem.setBold(false);
    descItem.setForegroundColor('#334155');
  });
  
  // Section 2
  body.appendParagraph("2. Exemplos Práticos de Regras").setAttributes(h1Style);
  
  const examples = [
    "Exemplo A: Monitor de UTI (1 por leito + 10% de reserva)\n• Setor: UTI Adulto\n• Parâmetro: Leitos\n• Operador: Sempre aplica\n• Tipo de Cálculo: Quantidade por Unidade\n• Fator: 1\n• Reserva: 0.10\n• Classificação: Obrigatório\n• Referência: Anvisa RDC 7/2010",
    "Exemplo B: Eletrocardiógrafo na UTI (1 fixo por setor)\n• Setor: UTI Adulto\n• Parâmetro: Leitos\n• Operador: Sempre aplica\n• Tipo de Cálculo: Quantidade Fixa\n• Fator: 1\n• Reserva: 0\n• Classificação: Recomendado",
    "Exemplo C: Ventilador de UTI (1 para cada 2 leitos + 20% de reserva)\n• Setor: UTI Adulto\n• Parâmetro: Leitos\n• Operador: Sempre aplica\n• Tipo de Cálculo: Quantidade por Grupo\n• Fator: 2\n• Reserva: 0.20\n• Classificação: Obrigatório\n• Referência: Anvisa RDC 7/2010"
  ];
  
  examples.forEach(ex => {
    const p = body.appendParagraph(ex);
    p.setAttributes(bodyStyle);
    p.setIndentStart(18);
  });
  
  doc.saveAndClose();
  
  // Move file to target folder
  const file = DriveApp.getFileById(doc.getId());
  const folder = DriveApp.getFolderById(folderId);
  folder.addFile(file);
  DriveApp.getRootFolder().removeFile(file);
  
  return file.getUrl();
}
