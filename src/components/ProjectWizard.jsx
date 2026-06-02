import React, { useState, useEffect } from 'react';
import { 
  ArrowLeft, 
  ArrowRight, 
  Printer, 
  Download, 
  Plus, 
  Check, 
  Edit,
  AlertTriangle,
  Sliders,
  DollarSign
} from 'lucide-react';
import { SECTORS_METADATA } from '../utils/constants';
import { calculateProjectSizing } from '../utils/sizingEngine';

export default function ProjectWizard({ 
  project, 
  equipment = [], 
  rules = [], 
  user = null,
  onSave, 
  onCancel 
}) {
  const [step, setStep] = useState(1);
  
  // Step 1 States (Identification)
  const [name, setName] = useState('');
  const [hospitalName, setHospitalName] = useState('');
  const [city, setCity] = useState('');
  const [state, setState] = useState('');
  const [establishmentType, setEstablishmentType] = useState('Hospital Geral');
  const [profile, setProfile] = useState('Público');
  const [projectType, setProjectType] = useState('Novo Projeto');
  const [technicalManager, setTechnicalManager] = useState('');
  const [currency, setCurrency] = useState('BRL');
  const [notes, setNotes] = useState('');
  const [priceDate, setPriceDate] = useState(new Date().toLocaleDateString('pt-BR'));

  // Step 2 States (Selected Sectors)
  const [selectedSectors, setSelectedSectors] = useState([]);

  // Step 3 States (Parameters)
  // Format: { [sectorId]: { [paramName]: value } }
  const [parameters, setParameters] = useState({});

  // Step 4 States (Results & Adjustments)
  const [results, setResults] = useState([]);
  const [filterSector, setFilterSector] = useState('ALL');
  const [filterClass, setFilterClass] = useState('ALL');
  
  // Adjust Modal state
  const [adjustModalOpen, setAdjustModalOpen] = useState(false);
  const [adjustTarget, setAdjustTarget] = useState(null); // { sector_name, equipment_code, equipment_name, recommended_qty }
  const [adjustedQty, setAdjustedQty] = useState('');
  const [adjustmentReason, setAdjustmentReason] = useState('');

  // Load project details if editing
  useEffect(() => {
    if (project) {
      setName(project.name || '');
      setHospitalName(project.hospital_name || '');
      setCity(project.city || '');
      setState(project.state || '');
      setEstablishmentType(project.establishment_type || 'Hospital Geral');
      setProfile(project.profile || 'Público');
      setProjectType(project.project_type || 'Novo Projeto');
      setTechnicalManager(project.technical_manager || '');
      setCurrency(project.currency || 'BRL');
      setNotes(project.notes || '');
      setPriceDate(project.price_date || new Date().toLocaleDateString('pt-BR'));

      // Sectors
      if (project.sectors) {
        setSelectedSectors(project.sectors.map(s => s.sector_name));
      }

      // Parameters
      if (project.parameters) {
        setParameters(project.parameters);
      }

      // Results
      if (project.results) {
        setResults(project.results);
      }
    } else {
      // Clear for new project
      setName('');
      setHospitalName('');
      setCity('');
      setState('');
      setEstablishmentType('Hospital Geral');
      setProfile('Público');
      setProjectType('Novo Projeto');
      setTechnicalManager('');
      setCurrency('BRL');
      setNotes('');
      setSelectedSectors([]);
      setParameters({});
      setResults([]);
      setStep(1);
    }
  }, [project]);

  // Handle sector selection toggle
  const handleToggleSector = (sectorId) => {
    if (selectedSectors.includes(sectorId)) {
      setSelectedSectors(selectedSectors.filter(s => s !== sectorId));
      // Remove its parameters
      const newParams = { ...parameters };
      delete newParams[sectorId];
      setParameters(newParams);
    } else {
      setSelectedSectors([...selectedSectors, sectorId]);
      // Initialize its parameters to 0
      const sectMeta = SECTORS_METADATA.find(s => s.id === sectorId);
      const initialParams = {};
      sectMeta.params.forEach(p => {
        initialParams[p.name] = 0;
      });
      setParameters({
        ...parameters,
        [sectorId]: initialParams
      });
    }
  };

  const handleParamChange = (sectorId, paramName, val) => {
    const intVal = parseInt(val, 10);
    const cleanedVal = isNaN(intVal) || intVal < 0 ? 0 : intVal;
    
    setParameters({
      ...parameters,
      [sectorId]: {
        ...parameters[sectorId],
        [paramName]: cleanedVal
      }
    });
  };

  // Run calculation logic and switch to step 4
  const runCalculation = () => {
    // Run client side engine
    const calculatedResults = calculateProjectSizing(
      selectedSectors,
      parameters,
      rules,
      equipment,
      results // Preserve previous adjustments
    );
    setResults(calculatedResults);
    setStep(4);
  };

  // Handle Sizing Adjust Override
  const handleOpenAdjustModal = (resItem) => {
    setAdjustTarget(resItem);
    setAdjustedQty(resItem.quantity_adjusted !== null && resItem.quantity_adjusted !== undefined ? String(resItem.quantity_adjusted) : '');
    setAdjustmentReason(resItem.adjustment_reason || '');
    setAdjustModalOpen(true);
  };

  const handleSaveAdjustment = (e) => {
    e.preventDefault();
    if (!adjustTarget) return;

    const newQty = adjustedQty === '' ? null : parseInt(adjustedQty, 10);
    if (newQty !== null && (isNaN(newQty) || newQty < 0)) {
      alert('Quantidade inválida');
      return;
    }

    const updated = results.map(r => {
      if (r.sector_name === adjustTarget.sector_name && r.equipment_code === adjustTarget.equipment_code) {
        return {
          ...r,
          quantity_adjusted: newQty,
          adjustment_reason: newQty === null ? '' : adjustmentReason,
          adjusted_by: newQty === null ? '' : (user?.email || 'Visitante'),
          adjusted_at: newQty === null ? '' : new Date().toISOString()
        };
      }
      return r;
    });

    setResults(updated);
    setAdjustModalOpen(false);
    setAdjustTarget(null);
  };

  // Helper formatting BRL
  const formatBRL = (value) => {
    return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(value);
  };

  // Filtered results for step 4 and 5
  const getFilteredResults = () => {
    return results.filter(r => {
      const matchSect = filterSector === 'ALL' || r.sector_name === filterSector;
      const matchClass = filterClass === 'ALL' || r.classification === filterClass;
      return matchSect && matchClass;
    });
  };

  // Total cost calculations
  const calculateTotalInvestment = () => {
    return results.reduce((sum, r) => {
      const qty = (r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) ? r.quantity_adjusted : r.quantity_recommended;
      return sum + (qty * r.avg_price);
    }, 0);
  };

  // Calculate sector cost mapping for step 5
  const getSectorCostBreakdown = () => {
    const breakdown = {};
    results.forEach(r => {
      const qty = (r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) ? r.quantity_adjusted : r.quantity_recommended;
      const cost = qty * r.avg_price;
      breakdown[r.sector_name] = (breakdown[r.sector_name] || 0) + cost;
    });
    return Object.entries(breakdown).map(([sector, cost]) => ({ sector, cost }));
  };

  // Calculate classification cost mapping for step 5
  const getClassCostBreakdown = () => {
    const breakdown = {};
    results.forEach(r => {
      const qty = (r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) ? r.quantity_adjusted : r.quantity_recommended;
      const cost = qty * r.avg_price;
      breakdown[r.classification] = (breakdown[r.classification] || 0) + cost;
    });
    return Object.entries(breakdown).map(([classification, cost]) => ({ classification, cost }));
  };

  // Sum capacities (leitos, salas) for step 5
  const calculateTotalCapacity = () => {
    let sum = 0;
    Object.values(parameters).forEach(sectorParams => {
      Object.values(sectorParams).forEach(val => {
        sum += val;
      });
    });
    return sum;
  };

  // Sum total equipment recommended
  const calculateTotalEquipmentQty = () => {
    return results.reduce((sum, r) => {
      const qty = (r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) ? r.quantity_adjusted : r.quantity_recommended;
      return sum + qty;
    }, 0);
  };

  // Save the project completely
  const handleFinalSave = () => {
    const projectData = {
      id: project?.id,
      name,
      hospital_name: hospitalName,
      city,
      state,
      establishment_type: establishmentType,
      profile,
      project_type: projectType,
      technical_manager: technicalManager,
      currency,
      notes,
      price_date: priceDate,
      // Sector items
      sectors: selectedSectors.map(sName => ({ sector_name: sName })),
      parameters,
      results
    };

    onSave(projectData);
  };

  // Export to CSV
  const handleExportCSV = () => {
    let csvContent = '\uFEFF'; // UTF-8 BOM
    csvContent += 'Setor;Código;Equipamento;Categoria;Preço Médio Unitário;Qtd Recomendada;Qtd Final Ajustada;Custo Total;Classificação;Norma de Referência\n';
    
    results.forEach(r => {
      const finalQty = (r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) ? r.quantity_adjusted : r.quantity_recommended;
      const totalCost = finalQty * r.avg_price;
      csvContent += `${r.sector_name};${r.equipment_code};${r.equipment_name};${r.category};${r.avg_price};${r.quantity_recommended};${r.quantity_adjusted || ''};${totalCost};${r.classification};${r.normative_reference || ''}\n`;
    });

    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
    const link = document.createElement('a');
    const url = URL.createObjectURL(blob);
    link.setAttribute('href', url);
    link.setAttribute('download', `PRODIME_Relatorio_${name.replace(/\s+/g, '_')}.csv`);
    link.style.visibility = 'hidden';
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };

  return (
    <div className="tab-section active">
      {/* Page Header */}
      <div className="page-header no-print">
        <div>
          <h1 className="page-title">{project ? 'Editar Projeto' : 'Novo Projeto de Dimensionamento'}</h1>
          <p className="page-subtitle">Configure o EAS passo a passo para calcular o parque recomendado.</p>
        </div>
        <button className="btn btn-secondary" onClick={onCancel}>Voltar para Lista</button>
      </div>

      {/* Wizard Step Navigation Tracker */}
      <div className="wizard-steps no-print">
        {[
          { stepNum: 1, title: 'Identificação' },
          { stepNum: 2, title: 'Setores' },
          { stepNum: 3, title: 'Parâmetros' },
          { stepNum: 4, title: 'Ajustes' },
          { stepNum: 5, title: 'Relatório' }
        ].map((s) => (
          <div 
            key={s.stepNum} 
            className={`step-indicator ${step === s.stepNum ? 'active' : ''} ${step > s.stepNum ? 'completed' : ''}`}
          >
            <div className="step-number">
              {step > s.stepNum ? <Check size={16} /> : s.stepNum}
            </div>
            <span>{s.title}</span>
          </div>
        ))}
      </div>

      {/* STEP 1: IDENTIFICATION */}
      {step === 1 && (
        <div className="card-premium">
          <div className="card-header-flex">
            <h2 className="card-title">Passo 1: Dados Gerais do Projeto</h2>
            <span className="badge badge-info">Identificação</span>
          </div>
          <form onSubmit={(e) => { e.preventDefault(); setStep(2); }}>
            <div className="form-grid">
              <div className="form-group col-span-2">
                <label className="form-label">Nome do Projeto *</label>
                <input 
                  type="text" 
                  className="form-control" 
                  value={name} 
                  onChange={e => setName(e.target.value)} 
                  placeholder="Ex: Ampliação UTI Hospital Regional" 
                  required 
                />
              </div>
              <div className="form-group">
                <label className="form-label">Nome do Hospital / EAS *</label>
                <input 
                  type="text" 
                  className="form-control" 
                  value={hospitalName} 
                  onChange={e => setHospitalName(e.target.value)} 
                  placeholder="Ex: Hospital Municipal Central" 
                  required 
                />
              </div>
              <div className="form-group">
                <label className="form-label">Tipo de Estabelecimento *</label>
                <select 
                  className="form-control" 
                  value={establishmentType} 
                  onChange={e => setEstablishmentType(e.target.value)} 
                  required
                >
                  <option value="Hospital Geral">Hospital Geral</option>
                  <option value="Hospital Especializado">Hospital Especializado</option>
                  <option value="Hospital-Dia">Hospital-Dia</option>
                  <option value="Clínica Ambulatorial">Clínica Ambulatorial</option>
                  <option value="Centro de Diagnóstico">Centro de Diagnóstico por Imagem</option>
                  <option value="Unidade Básica de Saúde">Unidade Básica de Saúde</option>
                  <option value="Pronto Atendimento">Pronto Atendimento</option>
                </select>
              </div>
              <div className="form-group">
                <label className="form-label">Cidade *</label>
                <input 
                  type="text" 
                  className="form-control" 
                  value={city} 
                  onChange={e => setCity(e.target.value)} 
                  placeholder="Ex: São Paulo" 
                  required 
                />
              </div>
              <div className="form-group">
                <label className="form-label">Estado (UF) *</label>
                <input 
                  type="text" 
                  className="form-control" 
                  value={state} 
                  onChange={e => setState(e.target.value.toUpperCase())} 
                  placeholder="Ex: SP" 
                  maxLength={2} 
                  required 
                />
              </div>
              <div className="form-group">
                <label className="form-label">Perfil Administrativo</label>
                <select className="form-control" value={profile} onChange={e => setProfile(e.target.value)}>
                  <option value="Público">Público (SUS)</option>
                  <option value="Privado">Privado</option>
                  <option value="Filantrópico">Filantrópico</option>
                </select>
              </div>
              <div className="form-group">
                <label className="form-label">Tipo de Projeto</label>
                <select className="form-control" value={projectType} onChange={e => setProjectType(e.target.value)}>
                  <option value="Novo Projeto">Novo Projeto (Implantação do Zero)</option>
                  <option value="Ampliação">Ampliação de Setores</option>
                  <option value="Adequação">Adequação / Retrofit</option>
                </select>
              </div>
              <div className="form-group">
                <label className="form-label">Responsável Técnico *</label>
                <input 
                  type="text" 
                  className="form-control" 
                  value={technicalManager} 
                  onChange={e => setTechnicalManager(e.target.value)} 
                  placeholder="Ex: Eng. Roberto Santos - CREA XXX" 
                  required 
                />
              </div>
              <div className="form-group">
                <label className="form-label">Moeda de Referência</label>
                <select className="form-control" value={currency} onChange={e => setCurrency(e.target.value)}>
                  <option value="BRL">Real (R$ - BRL)</option>
                  <option value="USD">Dólar (US$ - USD)</option>
                </select>
              </div>
              <div className="form-group col-span-2">
                <label className="form-label">Observações Gerais</label>
                <textarea 
                  className="form-control" 
                  value={notes} 
                  onChange={e => setNotes(e.target.value)} 
                  rows={3} 
                  placeholder="Informações adicionais..."
                />
              </div>
            </div>
            <div style={{ marginTop: '24px', display: 'flex', justifyContent: 'flex-end' }}>
              <button type="submit" className="btn btn-primary">
                Avançar: Setores <ArrowRight size={16} />
              </button>
            </div>
          </form>
        </div>
      )}

      {/* STEP 2: SECTORS SELECTION */}
      {step === 2 && (
        <div className="card-premium">
          <div className="card-header-flex">
            <h2 className="card-title">Passo 2: Seleção de Setores Hospitalares</h2>
            <span className="badge badge-info">Estrutura Física</span>
          </div>
          <p style={{ fontSize: '0.9rem', color: 'var(--secondary-light)', marginBottom: '20px' }}>
            Marque quais setores farão parte deste projeto de dimensionamento. O motor carregará os parâmetros exigidos para cada setor.
          </p>

          <div className="sectors-grid">
            {SECTORS_METADATA.map((sect) => {
              const isChecked = selectedSectors.includes(sect.id);
              return (
                <div 
                  key={sect.id} 
                  className={`sector-checkbox-card ${isChecked ? 'selected' : ''}`}
                  onClick={() => handleToggleSector(sect.id)}
                >
                  <input 
                    type="checkbox" 
                    checked={isChecked}
                    onChange={() => {}} // Handled by card click
                  />
                  <div className="sector-card-info">
                    <span className="sector-card-title">{sect.name}</span>
                    <span className="sector-card-desc">{sect.desc}</span>
                  </div>
                </div>
              );
            })}
          </div>

          <div style={{ marginTop: '24px', display: 'flex', justifyContent: 'space-between' }}>
            <button className="btn btn-secondary" onClick={() => setStep(1)}>
              <ArrowLeft size={16} /> Voltar
            </button>
            <button 
              className="btn btn-primary" 
              onClick={() => {
                if (selectedSectors.length === 0) {
                  alert('Selecione pelo menos um setor');
                  return;
                }
                setStep(3);
              }}
            >
              Avançar: Parâmetros <ArrowRight size={16} />
            </button>
          </div>
        </div>
      )}

      {/* STEP 3: SECTOR PARAMETERS */}
      {step === 3 && (
        <div className="card-premium">
          <div className="card-header-flex">
            <h2 className="card-title">Passo 3: Parâmetros Quantitativos dos Setores</h2>
            <span className="badge badge-info">Dados Assistenciais</span>
          </div>
          <p style={{ fontSize: '0.9rem', color: 'var(--secondary-light)', marginBottom: '20px' }}>
            Informe as quantidades físicas e operacionais de cada setor ativo. Esses valores serão utilizados pelas fórmulas de dimensionamento da RDC 50 e melhores práticas.
          </p>

          <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
            {selectedSectors.map(sectId => {
              const sectMeta = SECTORS_METADATA.find(s => s.id === sectId);
              return (
                <div key={sectId} className="parameter-section-card">
                  <div className="parameter-section-title">{sectMeta.name}</div>
                  <div className="parameter-inputs-grid">
                    {sectMeta.params.map(p => {
                      const paramValue = parameters[sectId]?.[p.name] !== undefined ? parameters[sectId][p.name] : 0;
                      return (
                        <div key={p.name} className="form-group">
                          <label className="form-label">{p.label} *</label>
                          <input 
                            type="number" 
                            className="form-control" 
                            value={paramValue} 
                            min="0"
                            onChange={e => handleParamChange(sectId, p.name, e.target.value)}
                            required 
                          />
                        </div>
                      );
                    })}
                  </div>
                </div>
              );
            })}
          </div>

          <div style={{ marginTop: '24px', display: 'flex', justifyContent: 'space-between' }}>
            <button className="btn btn-secondary" onClick={() => setStep(2)}>
              <ArrowLeft size={16} /> Voltar
            </button>
            <button className="btn btn-primary" onClick={runCalculation}>
              Calcular Dimensionamento <ArrowRight size={16} />
            </button>
          </div>
        </div>
      )}

      {/* STEP 4: SIZING RESULTS & ADJUSTMENTS */}
      {step === 4 && (
        <div className="card-premium">
          <div className="card-header-flex">
            <h2 className="card-title">Passo 4: Dimensionamento Recomendado & Ajustes Manuais</h2>
            <span className="badge badge-success">Resultados Gerados</span>
          </div>
          <p style={{ fontSize: '0.9rem', color: 'var(--secondary-light)', marginBottom: '20px' }}>
            Veja a lista recomendada de equipamentos calculada pelo motor do PRODIME. Como engenheiro clínico, você pode realizar <strong>ajustes de quantidade</strong> para adequação comercial ou clínica.
          </p>

          {/* Table Filters */}
          <div style={{ marginBottom: '16px', display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '10px' }}>
            <div style={{ display: 'flex', gap: '10px' }}>
              <select 
                className="form-control" 
                value={filterSector} 
                onChange={e => setFilterSector(e.target.value)} 
                style={{ width: '180px', padding: '6px 12px' }}
              >
                <option value="ALL">Todos os Setores</option>
                {selectedSectors.map(s => <option key={s} value={s}>{s}</option>)}
              </select>
              <select 
                className="form-control" 
                value={filterClass} 
                onChange={e => setFilterClass(e.target.value)} 
                style={{ width: '180px', padding: '6px 12px' }}
              >
                <option value="ALL">Todas as Classificações</option>
                <option value="Obrigatório">Somente Obrigatórios</option>
                <option value="Recomendado">Somente Recomendados</option>
                <option value="Opcional">Somente Opcionais</option>
              </select>
            </div>
            <div style={{ fontSize: '0.85rem', fontWeight: 600 }}>
              Itens: <span style={{ color: 'var(--primary)' }}>{getFilteredResults().length}</span> | 
              Investimento Total: <span style={{ color: 'var(--success)' }}>{formatBRL(calculateTotalInvestment())}</span>
            </div>
          </div>

          {/* Results Table */}
          <div className="table-wrapper">
            <table className="table-premium">
              <thead>
                <tr>
                  <th>Setor</th>
                  <th>Código</th>
                  <th>Equipamento</th>
                  <th>Categoria</th>
                  <th style={{ textAlign: 'center' }}>Qtd. Calc</th>
                  <th style={{ textAlign: 'center' }}>Qtd. Recom.</th>
                  <th style={{ textAlign: 'center' }}>Qtd. Ajust.</th>
                  <th>Preço Médio</th>
                  <th>Custo Total</th>
                  <th>Classificação</th>
                  <th>Justificativa (Norma)</th>
                  <th style={{ textAlign: 'center', width: '80px' }}>Ações</th>
                </tr>
              </thead>
              <tbody>
                {getFilteredResults().length > 0 ? (
                  getFilteredResults().map((r, idx) => {
                    const finalQty = (r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) ? r.quantity_adjusted : r.quantity_recommended;
                    const rowCost = finalQty * r.avg_price;
                    const isAdjusted = r.quantity_adjusted !== null && r.quantity_adjusted !== undefined;

                    let classBadge = 'badge-info';
                    if (r.classification === 'Obrigatório') classBadge = 'badge-danger';
                    else if (r.classification === 'Recomendado') classBadge = 'badge-success';

                    return (
                      <tr key={idx}>
                        <td style={{ fontWeight: 600 }}>{r.sector_name}</td>
                        <td><code style={{ background: '#f1f5f9', padding: '2px 6px', borderRadius: '4px', fontSize: '0.75rem' }}>{r.equipment_code}</code></td>
                        <td style={{ fontWeight: 500 }}>{r.equipment_name}</td>
                        <td>{r.category}</td>
                        <td style={{ textAlign: 'center' }}>{r.quantity_calculated}</td>
                        <td style={{ textAlign: 'center', fontWeight: 600 }}>{r.quantity_recommended}</td>
                        <td style={{ textAlign: 'center' }}>
                          {isAdjusted ? (
                            <>
                              <span style={{ fontSize: '1.05rem', fontWeight: 700, color: 'var(--primary)' }}>{r.quantity_adjusted}</span>
                              <span className="adjust-log-info" title={r.adjustment_reason}>* Ajustado</span>
                            </>
                          ) : (
                            <span style={{ color: '#94a3b8', fontStyle: 'italic' }}>Não</span>
                          )}
                        </td>
                        <td>{formatBRL(r.avg_price)}</td>
                        <td style={{ fontWeight: 700, color: 'var(--secondary)' }}>{formatBRL(rowCost)}</td>
                        <td><span className={`badge ${classBadge}`}>{r.classification}</span></td>
                        <td style={{ fontSize: '0.8rem', maxWidth: '250px' }}>
                          {r.adjustment_reason ? (
                            <span style={{ color: 'var(--primary)', fontWeight: 500 }}>* Ajustado: {r.adjustment_reason}</span>
                          ) : (
                            <>
                              {r.normative_reference && <strong>[{r.normative_reference}] </strong>}
                              {r.infra_requirements}
                            </>
                          )}
                        </td>
                        <td style={{ textAlign: 'center' }}>
                          <button className="btn btn-secondary btn-sm" onClick={() => handleOpenAdjustModal(r)}>
                            Ajustar
                          </button>
                        </td>
                      </tr>
                    );
                  })
                ) : (
                  <tr>
                    <td colSpan={12} style={{ textAlign: 'center', padding: '20px 0', color: 'var(--secondary-light)' }}>
                      Nenhum resultado encontrado para os filtros selecionados.
                    </td>
                  </tr>
                )}
              </tbody>
            </table>
          </div>

          <div style={{ marginTop: '24px', display: 'flex', justifycontent: 'space-between', justifyContent: 'space-between' }}>
            <button className="btn btn-secondary" onClick={() => setStep(3)}>
              <ArrowLeft size={16} /> Voltar
            </button>
            <button className="btn btn-primary" onClick={() => setStep(5)}>
              Avançar: Relatório <ArrowRight size={16} />
            </button>
          </div>
        </div>
      )}

      {/* STEP 5: FINAL REPORT & SUMMARY */}
      {step === 5 && (
        <div className="card-premium">
          <div className="card-header-flex">
            <h2 className="card-title">Passo 5: Relatório Final & Resumo Técnico/Financeiro</h2>
            <div className="no-print" style={{ display: 'flex', gap: '8px' }}>
              <button className="btn btn-secondary btn-sm" onClick={() => window.print()}>
                <Printer size={14} /> Imprimir PDF
              </button>
              <button className="btn btn-secondary btn-sm" onClick={handleExportCSV}>
                <Download size={14} /> Exportar CSV
              </button>
            </div>
          </div>

          {/* Printable Report Layout */}
          <div className="report-print-area">
            {/* Header */}
            <div style={{ borderBottom: '2px solid var(--primary)', paddingBottom: '20px', marginBottom: '24px' }}>
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>
                <div>
                  <h1 style={{ fontFamily: 'var(--font-display)', fontSize: '2.2rem', fontWeight: 700, color: 'var(--primary)' }}>PRODIME</h1>
                  <h2 style={{ fontFamily: 'var(--font-primary)', fontSize: '1.1rem', color: 'var(--secondary-light)', marginTop: '4px' }}>
                    Relatório de Dimensionamento de Equipamentos Hospitalares
                  </h2>
                </div>
                <div style={{ textAlign: 'right', fontSize: '0.85rem', color: 'var(--secondary-light)' }}>
                  <div>Data de Emissão: <strong>{new Date().toLocaleDateString('pt-BR')}</strong></div>
                  <div>Versão Regulatória: <strong>Anvisa RDC 50</strong></div>
                </div>
              </div>
            </div>

            {/* Project Details Grid */}
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: '16px', marginBottom: '30px', backgroundColor: '#f8fafc', padding: '20px', borderRadius: 'var(--radius-md)', border: '1px solid var(--border-color)' }}>
              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--secondary-light)', fontWeight: 600 }}>Projeto</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 600 }}>{name}</div>
              </div>
              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--secondary-light)', fontWeight: 600 }}>Hospital / EAS</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 600 }}>{hospitalName}</div>
              </div>
              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--secondary-light)', fontWeight: 600 }}>Localidade</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 600 }}>{city} - {state}</div>
              </div>
              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--secondary-light)', fontWeight: 600 }}>Tipo de EAS / Perfil</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 600 }}>{establishmentType} ({profile})</div>
              </div>
              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--secondary-light)', fontWeight: 600 }}>Responsável Técnico</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 600 }}>{technicalManager}</div>
              </div>
              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--secondary-light)', fontWeight: 600 }}>Moeda / Preços</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 600 }}>{currency} ({priceDate})</div>
              </div>
            </div>

            {/* Overview Stats */}
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(4, 1fr)', gap: '16px', marginBottom: '30px' }}>
              <div style={{ textAlign: 'center', border: '1px solid var(--border-color)', padding: '16px', borderRadius: 'var(--radius-md)' }}>
                <div style={{ fontSize: '1.8rem', fontWeight: 700, color: 'var(--primary)' }}>{selectedSectors.length}</div>
                <div style={{ fontSize: '0.8rem', color: 'var(--secondary-light)' }}>Setores Dimensionados</div>
              </div>
              <div style={{ textAlign: 'center', border: '1px solid var(--border-color)', padding: '16px', borderRadius: 'var(--radius-md)' }}>
                <div style={{ fontSize: '1.8rem', fontWeight: 700, color: 'var(--primary)' }}>{calculateTotalCapacity()}</div>
                <div style={{ fontSize: '0.8rem', color: 'var(--secondary-light)' }}>Capacidade (Leitos/Salas)</div>
              </div>
              <div style={{ textAlign: 'center', border: '1px solid var(--border-color)', padding: '16px', borderRadius: 'var(--radius-md)' }}>
                <div style={{ fontSize: '1.8rem', fontWeight: 700, color: 'var(--primary)' }}>{calculateTotalEquipmentQty()}</div>
                <div style={{ fontSize: '0.8rem', color: 'var(--secondary-light)' }}>Equipamentos Totais</div>
              </div>
              <div style={{ textAlign: 'center', border: '1px solid var(--border-color)', padding: '16px', borderRadius: 'var(--radius-md)', backgroundColor: 'var(--success-bg)', borderColor: '#bbf7d0' }}>
                <div style={{ fontSize: '1.8rem', fontWeight: 700, color: 'var(--success)' }}>{formatBRL(calculateTotalInvestment())}</div>
                <div style={{ fontSize: '0.8rem', color: 'var(--secondary-light)' }}>Investimento Estimado</div>
              </div>
            </div>

            {/* Split breakdowns */}
            <div className="finance-summary-grid" style={{ marginBottom: '30px' }}>
              <div>
                <h3 style={{ fontFamily: 'var(--font-display)', fontSize: '1.1rem', marginBottom: '12px' }}>Investimento por Setor</h3>
                <div className="finance-breakdown-list">
                  {getSectorCostBreakdown().map(b => (
                    <div key={b.sector} className="finance-breakdown-item">
                      <span>{b.sector}</span>
                      <strong>{formatBRL(b.cost)}</strong>
                    </div>
                  ))}
                </div>
              </div>
              <div>
                <h3 style={{ fontFamily: 'var(--font-display)', fontSize: '1.1rem', marginBottom: '12px' }}>Composição por Relevância</h3>
                <div className="finance-breakdown-list">
                  {getClassCostBreakdown().map(b => (
                    <div key={b.classification} className="finance-breakdown-item">
                      <span>{b.classification}</span>
                      <strong>{formatBRL(b.cost)}</strong>
                    </div>
                  ))}
                </div>
              </div>
            </div>

            {/* Detailed Results List */}
            <h3 style={{ fontFamily: 'var(--font-display)', fontSize: '1.1rem', marginBottom: '12px' }}>Detalhamento do Parque Recomendado</h3>
            <div className="table-wrapper" style={{ marginBottom: '30px' }}>
              <table className="table-premium">
                <thead>
                  <tr>
                    <th>Setor</th>
                    <th>Código</th>
                    <th>Equipamento</th>
                    <th style={{ textAlign: 'center' }}>Qtd Recom.</th>
                    <th style={{ textAlign: 'center' }}>Qtd Final</th>
                    <th>Custo Médio Unitário</th>
                    <th>Custo Total</th>
                    <th>Relevância</th>
                    <th>Normativa / Justificativa</th>
                  </tr>
                </thead>
                <tbody>
                  {results.map((r, idx) => {
                    const finalQty = (r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) ? r.quantity_adjusted : r.quantity_recommended;
                    return (
                      <tr key={idx}>
                        <td style={{ fontWeight: 600 }}>{r.sector_name}</td>
                        <td><code>{r.equipment_code}</code></td>
                        <td>{r.equipment_name}</td>
                        <td style={{ textAlign: 'center' }}>{r.quantity_recommended}</td>
                        <td style={{ textAlign: 'center', fontWeight: 'bold' }}>{finalQty}</td>
                        <td>{formatBRL(r.avg_price)}</td>
                        <td style={{ fontWeight: 'bold' }}>{formatBRL(finalQty * r.avg_price)}</td>
                        <td>{r.classification}</td>
                        <td style={{ fontSize: '0.8rem' }}>
                          {r.adjustment_reason ? `Ajustado: ${r.adjustment_reason}` : r.normative_reference || 'Conforme RDC 50'}
                        </td>
                      </tr>
                    );
                  })}
                </tbody>
              </table>
            </div>

            {/* Regulatory disclaimer */}
            <div className="regulatory-banner">
              <strong>Observação Regulatória Obrigatória:</strong> Este relatório apresenta uma estimativa técnica de dimensionamento de equipamentos médico-hospitalares com base nos parâmetros informados pelo usuário, nas regras cadastradas no sistema, na base de dados de equipamentos e em referências regulatórias aplicáveis, incluindo a RDC nº 50/2002 da Anvisa quando pertinente. O resultado não substitui a análise de responsável técnico habilitado, nem a aprovação pelos órgãos reguladores competentes.
            </div>
          </div>

          <div style={{ marginTop: '24px', display: 'flex', justifyContent: 'space-between' }} className="no-print">
            <button className="btn btn-secondary" onClick={() => setStep(4)}>
              <ArrowLeft size={16} /> Voltar aos Ajustes
            </button>
            <button className="btn btn-primary" onClick={handleFinalSave}>
              Finalizar e Salvar Projeto
            </button>
          </div>
        </div>
      )}

      {/* ADJUST QUANTITY OVERLAY MODAL */}
      {adjustModalOpen && adjustTarget && (
        <div className="modal-overlay">
          <div className="modal-card">
            <div className="modal-header">
              <h3 className="modal-title">Ajustar Quantidade Clínico</h3>
              <button className="modal-close" onClick={() => setAdjustModalOpen(false)}>&times;</button>
            </div>
            <form onSubmit={handleSaveAdjustment}>
              <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
                <div>
                  <strong style={{ fontSize: '0.9rem', color: 'var(--secondary)' }}>Setor:</strong> {adjustTarget.sector_name}
                </div>
                <div>
                  <strong style={{ fontSize: '0.9rem', color: 'var(--secondary)' }}>Equipamento:</strong> {adjustTarget.equipment_name} (<code>{adjustTarget.equipment_code}</code>)
                </div>
                <div>
                  <strong style={{ fontSize: '0.9rem', color: 'var(--secondary)' }}>Quantidade Recomendada (RDC 50):</strong> {adjustTarget.quantity_recommended}
                </div>

                <div className="form-group">
                  <label className="form-label">Nova Quantidade Final *</label>
                  <input 
                    type="number" 
                    className="form-control" 
                    value={adjustedQty} 
                    onChange={e => setAdjustedQty(e.target.value)}
                    placeholder="Deixe em branco para remover o ajuste manual"
                  />
                </div>

                <div className="form-group">
                  <label className="form-label">Justificativa do Ajuste *</label>
                  <textarea 
                    className="form-control" 
                    value={adjustmentReason} 
                    onChange={e => setAdjustmentReason(e.target.value)}
                    placeholder="Ex: Aquisição de monitores multiparamétricos modulares de alta performance para leito semi-intensivo."
                    rows={3}
                    required={adjustedQty !== ''}
                  />
                </div>
              </div>

              <div style={{ marginTop: '24px', display: 'flex', justifyContent: 'flex-end', gap: '10px' }}>
                <button type="button" className="btn btn-secondary" onClick={() => setAdjustModalOpen(false)}>Cancelar</button>
                <button type="submit" className="btn btn-primary">Salvar Ajuste</button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
