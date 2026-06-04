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
  DollarSign,
  BookOpen,
  Shield,
  Layers,
  HelpCircle,
  Info,
  TrendingUp
} from 'lucide-react';
import { SECTORS_METADATA } from '../utils/constants';
import { calculateProjectSizing } from '../utils/sizingEngine';

export default function ProjectWizard({ 
  project,
  initialStep,
  hasProjects = false,
  onStepChange,
  equipment = [], 
  rules = [], 
  user = null,
  sectorCompatibility = [],
  onSave, 
  onCancel 
}) {
  // If editing an existing project, start at step 1 (or initialStep if provided). If creating a new one, start at step 0 (welcome screen) unless they already have projects.
  const isExisting = !!project;
  const initial = initialStep !== undefined && initialStep !== null ? initialStep : (isExisting ? 1 : (hasProjects ? 1 : 0));
  const [step, setStep] = useState(initial);
  
  // Track the furthest step reached to allow clicking back/forward in the stepper
  const [highestStep, setHighestStep] = useState(isExisting || initial > 1 ? 5 : 1);

  useEffect(() => {
    if (onStepChange) onStepChange(step);
  }, [step, onStepChange]);

  
  // Step 1 States (Identification / Cadastro)
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

  // Step 2 States (Selected Sectors / Ambientes)
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
      if (initialStep !== undefined && initialStep !== null) {
        setStep(initialStep);
        setHighestStep(5);
      } else {
        setStep(1);
        setHighestStep(5);
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
      setStep(hasProjects ? 1 : 0);
      setHighestStep(1);
    }
  }, [project, initialStep, hasProjects]);

  const isSectorCompatible = (sectorId) => {
    if (!sectorCompatibility || sectorCompatibility.length === 0) return true;
    const comp = sectorCompatibility.find(
      c => c.establishment_type === establishmentType && c.sector_id === sectorId
    );
    return comp ? comp.is_compatible : true;
  };

  const handleEstablishmentTypeChange = (newType) => {
    setEstablishmentType(newType);
    
    // Clean incompatible sectors that are currently selected
    if (selectedSectors.length > 0) {
      const compatibleSectors = selectedSectors.filter(sectId => {
        const comp = sectorCompatibility.find(
          c => c.establishment_type === newType && c.sector_id === sectId
        );
        return comp ? comp.is_compatible : true;
      });
      
      if (compatibleSectors.length !== selectedSectors.length) {
        setSelectedSectors(compatibleSectors);
        
        // Clean parameters for removed sectors
        const newParams = { ...parameters };
        selectedSectors.forEach(sId => {
          if (!compatibleSectors.includes(sId)) {
            delete newParams[sId];
          }
        });
        setParameters(newParams);
      }
    }
  };

  // Run simulation flow
  const runSimulation = () => {
    setName("Simulação de Exemplo - UTI Adulto e CME");
    setHospitalName("Clínica de Saúde Modelo");
    setCity("São Paulo");
    setState("SP");
    setEstablishmentType("Hospital Geral");
    setProfile("Privado");
    setProjectType("Novo Projeto");
    setTechnicalManager("Simulador de Planejamento");
    setCurrency("BRL");
    setNotes("Esta é uma simulação de exemplo para conhecer o funcionamento da ferramenta.");
    setSelectedSectors(["UTI Adulto", "CME"]);
    
    const simParams = {
      "UTI Adulto": { leitos: 10 },
      "CME": { salas: 1 }
    };
    setParameters(simParams);

    const calculatedResults = calculateProjectSizing(
      ["UTI Adulto", "CME"],
      simParams,
      rules,
      equipment,
      [] // No previous adjustments
    );
    setResults(calculatedResults);
    setStep(4);
  };

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

  // Dynamic Sector groups for Step 2
  const categories = [
    { 
      title: "Áreas Assistenciais", 
      sectors: SECTORS_METADATA.filter(s => ["UTI Adulto", "UTI Neonatal", "UTI Pediátrica"].includes(s.id) && isSectorCompatible(s.id)) 
    },
    { 
      title: "Áreas de Atendimento e Observação", 
      sectors: SECTORS_METADATA.filter(s => ["Centro Cirúrgico", "Centro Obstétrico", "Pronto-Socorro", "Internação"].includes(s.id) && isSectorCompatible(s.id)) 
    },
    { 
      title: "Áreas de Apoio Diagnóstico", 
      sectors: SECTORS_METADATA.filter(s => ["Diagnóstico por Imagem"].includes(s.id) && isSectorCompatible(s.id)) 
    },
    { 
      title: "Áreas de Apoio Técnico", 
      sectors: SECTORS_METADATA.filter(s => ["CME"].includes(s.id) && isSectorCompatible(s.id)) 
    }
  ];

  // Render Sidebar Component for Steps 1, 2, 3
  const renderSidebarSummary = () => {
    return (
      <div className="card-premium no-print" style={{ position: 'sticky', top: '24px', display: 'flex', flexDirection: 'column', gap: '20px', fontSize: '0.85rem', minWidth: '280px', boxShadow: 'var(--shadow-md)' }}>
        <h3 style={{ fontFamily: 'var(--font-display)', fontWeight: 700, color: 'var(--secondary)', borderBottom: '1px solid var(--border-color)', paddingBottom: '12px', margin: 0, display: 'flex', alignItems: 'center', gap: '8px', fontSize: '1.05rem', letterSpacing: '-0.25px' }}>
          <Sliders size={18} style={{ color: 'var(--primary)' }} /> Resumo do Planejamento
        </h3>
        <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
          <div>
            <span style={{ color: 'var(--text-muted)', display: 'block', fontSize: '0.72rem', textTransform: 'uppercase', fontWeight: 700, letterSpacing: '0.5px' }}>Identificação do Projeto</span>
            <strong style={{ display: 'block', color: 'var(--secondary)', marginTop: '4px', fontSize: '0.92rem' }}>{name || <span style={{ color: 'var(--text-muted)', fontStyle: 'italic', fontWeight: 'normal' }}>Não nomeado</span>}</strong>
            {hospitalName && <span style={{ display: 'block', color: 'var(--secondary-light)', fontSize: '0.8rem', marginTop: '2px', fontWeight: 500 }}>{hospitalName}</span>}
          </div>
          
          <div>
            <span style={{ color: 'var(--text-muted)', display: 'block', fontSize: '0.72rem', textTransform: 'uppercase', fontWeight: 700, letterSpacing: '0.5px' }}>Áreas Selecionadas ({selectedSectors.length})</span>
            {selectedSectors.length > 0 ? (
              <div style={{ display: 'flex', flexWrap: 'wrap', gap: '6px', marginTop: '6px' }}>
                {selectedSectors.map(s => (
                  <span key={s} className="badge badge-info" style={{ fontSize: '0.72rem', padding: '4px 8px' }}>{s}</span>
                ))}
              </div>
            ) : (
              <span style={{ color: 'var(--text-muted)', fontStyle: 'italic', display: 'block', marginTop: '6px', fontSize: '0.8rem' }}>Nenhuma área selecionada</span>
            )}
          </div>

          <div>
            <span style={{ color: 'var(--text-muted)', display: 'block', fontSize: '0.72rem', textTransform: 'uppercase', fontWeight: 700, letterSpacing: '0.5px' }}>Parâmetros Informados</span>
            {Object.keys(parameters).length > 0 && selectedSectors.length > 0 ? (
              <div style={{ display: 'flex', flexDirection: 'column', gap: '6px', marginTop: '6px' }}>
                {selectedSectors.map(sectId => {
                  const sectMeta = SECTORS_METADATA.find(s => s.id === sectId);
                  if (!sectMeta) return null;
                  return sectMeta.params.map(p => {
                    const val = parameters[sectId]?.[p.name] || 0;
                    return (
                      <div key={p.name} style={{ display: 'flex', justifyContent: 'space-between', borderBottom: '1px dotted var(--border-color)', paddingBottom: '4px', fontSize: '0.8rem', color: 'var(--secondary-light)' }}>
                        <span>{sectId} ({p.label.replace("Número de ", "").replace("Leitos de ", "").replace("Salas de ", "")}):</span>
                        <strong style={{ color: 'var(--secondary)' }}>{val}</strong>
                      </div>
                    );
                  });
                })}
              </div>
            ) : (
              <span style={{ color: 'var(--text-muted)', fontStyle: 'italic', display: 'block', marginTop: '6px', fontSize: '0.8rem' }}>Aguardando preenchimento</span>
            )}
          </div>

          <div style={{ borderTop: '1px solid var(--border-color)', paddingTop: '16px', marginTop: '8px', textAlign: 'center' }}>
            {name && selectedSectors.length > 0 ? (
              <span style={{ color: 'var(--success)', fontWeight: 700, display: 'inline-flex', alignItems: 'center', gap: '6px', fontSize: '0.8rem' }} className="badge badge-success">
                ✔️ Pronto para gerar estimativa
              </span>
            ) : (
              <span style={{ color: 'var(--warning)', fontWeight: 700, display: 'inline-flex', alignItems: 'center', gap: '6px', fontSize: '0.8rem' }} className="badge badge-warning">
                ⚠️ Aguardando preenchimento
              </span>
            )}
          </div>
        </div>
      </div>
    );
  };

  return (
    <div className="tab-section active">
      {/* STEP 0: WELCOME & ONBOARDING (For New Estimations) */}
      {step === 0 && (
        <div style={{ maxWidth: '800px', margin: '10px auto', padding: '0 20px', display: 'flex', flexDirection: 'column', gap: '18px' }}>
          <div style={{ textAlign: 'center', display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '10px' }}>
            <div style={{ width: '48px', height: '48px', borderRadius: '50%', backgroundColor: 'var(--primary-light)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', boxShadow: '0 2px 6px rgba(30, 109, 70, 0.05)' }}>
              <TrendingUp size={24} />
            </div>
            <h2 style={{ fontFamily: 'var(--font-display)', fontSize: '1.6rem', fontWeight: 800, color: 'var(--secondary)', letterSpacing: '-0.5px', margin: 0 }}>
              Vamos criar sua primeira estimativa de equipamentos
            </h2>
            <p style={{ color: 'var(--secondary-light)', fontSize: '0.92rem', lineHeight: '1.5', maxWidth: '640px', margin: '4px 0 0 0' }}>
              Em poucos passos, o PRODIME ajuda você a estruturar uma estimativa de equipamentos médico-hospitalares e investimento referencial com base nas características da unidade de saúde informada.
            </p>
          </div>

          <div style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
            <h3 style={{ fontFamily: 'var(--font-display)', fontSize: '1.05rem', color: 'var(--secondary)', fontWeight: 700, margin: 0 }}>
              O que você terá ao final:
            </h3>
            <ul className="wizard-checklist-summary-list" style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', paddingLeft: '16px', margin: 0 }}>
              <li>📋 Lista estimada de equipamentos por área selecionada</li>
              <li>📊 Quantidades sugeridas com base nas regras técnicas do sistema</li>
              <li>🏷️ Valores referenciais por item e por área</li>
              <li>💰 Investimento total estimado</li>
              <li>📄 Relatório técnico-financeiro para análise e apresentação</li>
            </ul>
          </div>

          <div style={{ backgroundColor: '#fffbeb', border: '1px solid #fef3c7', borderRadius: '8px', padding: '12px 16px', display: 'flex', gap: '10px', alignItems: 'flex-start' }}>
            <Info size={16} style={{ color: '#d97706', minWidth: '16px', marginTop: '2px' }} />
            <p style={{ fontSize: '0.8rem', color: '#b45309', lineHeight: '1.4', margin: 0 }}>
              <strong>Aviso curto:</strong> O resultado é uma estimativa de apoio ao planejamento e deve ser validado pelo gestor responsável e por profissionais habilitados antes de qualquer decisão de compra ou implantação.
            </p>
          </div>

          <div style={{ display: 'flex', gap: '14px', justifyContent: 'center', marginTop: '4px' }}>
            <button className="btn btn-primary" style={{ padding: '10px 24px', fontSize: '0.9rem' }} onClick={() => setStep(1)}>
              Começar estimativa real
            </button>
            <button className="btn btn-secondary" style={{ padding: '10px 24px', fontSize: '0.9rem' }} onClick={runSimulation}>
              Explorar com exemplo
            </button>
          </div>
        </div>
      )}

      {/* HUMAN PROGRESS & STEPPER HEADER (Shown for steps > 0) */}
      {step > 0 && (
        <div className="no-print" style={{ display: 'flex', width: '100%', marginBottom: '24px' }}>
          <div className="wizard-steps" style={{ margin: 0, width: '100%' }}>
            {[
              { stepNum: 1, title: 'Cadastro' },
              { stepNum: 2, title: 'Ambientes' },
              { stepNum: 3, title: 'Parâmetros' },
              { stepNum: 4, title: 'Ajustes' },
              { stepNum: 5, title: 'Relatório' }
            ].map((s) => {
              const isEnabled = s.stepNum <= highestStep;
              return (
                <div 
                  key={s.stepNum} 
                  onClick={() => {
                    if (isEnabled) setStep(s.stepNum);
                  }}
                  style={{ cursor: isEnabled ? 'pointer' : 'not-allowed', opacity: isEnabled ? 1 : 0.6 }}
                  className={`step-indicator ${step === s.stepNum ? 'active' : ''} ${step > s.stepNum ? 'completed' : ''}`}
                >
                  <div className="step-number" style={{ transition: 'all 0.2s ease' }}>
                    {step > s.stepNum ? <Check size={16} /> : s.stepNum}
                  </div>
                  <span style={{ whiteSpace: 'nowrap' }}>{s.title}</span>
                </div>
              );
            })}
          </div>
        </div>
      )}

      {/* STEP 1: IDENTIFICATION / CADASTRO */}
      {step === 1 && (
        <div className="wizard-layout-grid">
          <div className="card-premium">
            <div className="card-header-flex">
              <h2 className="card-title">Passo 1: Identificação do Projeto</h2>
              <span className="badge badge-info">Cadastro</span>
            </div>
            <p style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginBottom: '16px', borderBottom: '1px solid var(--border-color)', paddingBottom: '12px' }}>
              <strong>Identifique a estimativa:</strong> Informe os dados básicos do projeto para organizar o relatório final. Essas informações ajudam a contextualizar a análise, mas não alteram as regras-base de dimensionamento do PRODIME.
            </p>
            <form onSubmit={(e) => { e.preventDefault(); setHighestStep(Math.max(highestStep, 2)); setStep(2); }}>
              <div className="form-grid">
                <div className="form-group">
                  <label className="form-label">Nome do Projeto *</label>
                  <input 
                    type="text" 
                    className="form-control" 
                    value={name} 
                    onChange={e => setName(e.target.value)} 
                    placeholder="Ex: Implantação de nova unidade, ampliação de serviço existente, adequação de estrutura..." 
                    required 
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Nome da Unidade de Saúde / Estabelecimento *</label>
                  <input 
                    type="text" 
                    className="form-control" 
                    value={hospitalName} 
                    onChange={e => setHospitalName(e.target.value)} 
                    placeholder="Informe o nome da unidade, instituição ou identificação interna do projeto." 
                    required 
                  />
                </div>
                <div className="form-group">
                  <label className="form-label">Tipo de Estabelecimento *</label>
                  <select 
                    className="form-control" 
                    value={establishmentType} 
                    onChange={e => handleEstablishmentTypeChange(e.target.value)} 
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
                    <option value="Ampliação">Ampliação</option>
                    <option value="Adequação">Adequação / Retrofit</option>
                    <option value="Reestruturação">Reestruturação / Estudo Preliminar</option>
                  </select>
                </div>
                <div className="form-group">
                  <label className="form-label">Responsável pelo Preenchimento *</label>
                  <input 
                    type="text" 
                    className="form-control" 
                    value={technicalManager} 
                    onChange={e => setTechnicalManager(e.target.value)} 
                    placeholder="Ex: Dr. Roberto Santos ou Engª. Ana Silva" 
                    required 
                  />
                </div>
                <div className="form-group col-span-2">
                  <label className="form-label">Observações Gerais</label>
                  <textarea 
                    className="form-control" 
                    value={notes} 
                    onChange={e => setNotes(e.target.value)} 
                    rows={3} 
                    placeholder="Use este campo para registrar premissas, restrições, informações relevantes ou contexto do projeto."
                  />
                </div>
              </div>


              <div className="wizard-nav-row-end">
                <button type="submit" className="btn btn-primary">
                  Avançar para seleção de áreas <ArrowRight size={16} />
                </button>
              </div>
            </form>
          </div>
          {renderSidebarSummary()}
        </div>
      )}

      {/* STEP 2: SECTORS / AMBIENTES SELECTION (Categorized) */}
      {step === 2 && (
        <div className="wizard-layout-grid">
          <div className="card-premium">
            <div className="card-header-flex">
              <h2 className="card-title">Passo 2: Selecione as áreas que fazem parte da estimativa</h2>
              <span className="badge badge-info">Ambientes</span>
            </div>
            <p style={{ fontSize: '0.88rem', color: 'var(--secondary-light)', marginBottom: '8px' }}>
              Escolha os setores, ambientes ou estruturas disponíveis no sistema que serão considerados no cálculo. As opções podem variar conforme a evolução da plataforma e as regras técnicas cadastradas.
            </p>
            <p style={{ fontSize: '0.78rem', color: '#64748b', fontStyle: 'italic', marginBottom: '20px', borderBottom: '1px solid var(--border-color)', paddingBottom: '12px' }}>
              💡 Você não precisa selecionar tudo. Marque apenas o que faz parte do projeto que deseja estimar neste momento.
            </p>

            <div style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
              {categories.map((cat, catIdx) => {
                if (cat.sectors.length === 0) return null;
                return (
                  <div key={catIdx}>
                    <h3 style={{ fontFamily: 'Outfit', fontSize: '1.05rem', color: 'var(--primary)', marginBottom: '12px', fontWeight: 600, display: 'flex', alignItems: 'center', gap: '8px' }}>
                      <Layers size={16} /> {cat.title}
                    </h3>
                    <div className="wizard-sectors-grid">
                      {cat.sectors.map((sect) => {
                        const isChecked = selectedSectors.includes(sect.id);
                        return (
                          <div 
                            key={sect.id} 
                            className={`sector-checkbox-card ${isChecked ? 'selected' : ''}`}
                            onClick={() => handleToggleSector(sect.id)}
                            style={{ display: 'flex', gap: '10px', padding: '12px', border: isChecked ? '2px solid var(--primary)' : '1px solid var(--border-color)', borderRadius: '8px', cursor: 'pointer', backgroundColor: isChecked ? 'var(--primary-bg)' : 'white', transition: 'all 0.2s' }}
                          >
                            <input 
                              type="checkbox" 
                              checked={isChecked}
                              onChange={() => {}} // Handled by card click
                              style={{ marginTop: '3px' }}
                            />
                            <div className="sector-card-info" style={{ display: 'flex', flexDirection: 'column', gap: '2px' }}>
                              <span className="sector-card-title" style={{ fontWeight: 600, fontSize: '0.88rem', color: 'var(--secondary)' }}>{sect.name}</span>
                              <span className="sector-card-desc" style={{ fontSize: '0.75rem', color: 'var(--secondary-light)' }}>{sect.desc}</span>
                            </div>
                          </div>
                        );
                      })}
                    </div>
                  </div>
                );
              })}
            </div>

            <div className="wizard-nav-row">
              <button className="btn btn-secondary" onClick={() => setStep(1)}>
                <ArrowLeft size={16} /> Voltar
              </button>
              <button 
                className="btn btn-primary" 
                onClick={() => {
                  if (selectedSectors.length === 0) {
                    alert('Selecione pelo menos um ambiente ou setor');
                    return;
                  }
                  setHighestStep(Math.max(highestStep, 3));
                  setStep(3);
                }}
              >
                Avançar para preenchimento de parâmetros <ArrowRight size={16} />
              </button>
            </div>
          </div>
          {renderSidebarSummary()}
        </div>
      )}

      {/* STEP 3: SECTOR PARAMETERS */}
      {step === 3 && (
        <div className="wizard-layout-grid">
          <div className="card-premium">
            <div className="card-header-flex">
              <h2 className="card-title">Passo 3: Preenchimento dos Parâmetros</h2>
              <span className="badge badge-info">Parâmetros</span>
            </div>
            <p style={{ fontSize: '0.88rem', color: 'var(--secondary-light)', marginBottom: '20px', borderBottom: '1px solid var(--border-color)', paddingBottom: '12px' }}>
              Informe os dados quantitativos solicitados para cada área selecionada. Esses parâmetros representam a capacidade física, assistencial ou operacional da unidade e serão aplicados nas regras técnicas para gerar a estimativa.
            </p>

            <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
              {selectedSectors.map(sectId => {
                const sectMeta = SECTORS_METADATA.find(s => s.id === sectId);
                return (
                  <div key={sectId} className="parameter-section-card" style={{ border: '1px solid var(--border-color)', borderRadius: 'var(--radius-md)', padding: '14px 18px', backgroundColor: 'var(--bg-panel)' }}>
                    <div className="parameter-section-title" style={{ fontWeight: 800, color: 'var(--primary)', marginBottom: '10px', fontFamily: 'var(--font-display)', fontSize: '1rem', letterSpacing: '-0.25px' }}>{sectMeta.name}</div>
                    <div style={{ display: 'flex', flexWrap: 'wrap', gap: '16px' }}>
                      {sectMeta.params.map(p => {
                        const paramValue = parameters[sectId]?.[p.name] !== undefined ? parameters[sectId][p.name] : 0;
                        return (
                          <div key={p.name} className="form-group" style={{ margin: 0, minWidth: '180px', flex: '1 1 200px', maxWidth: '300px' }}>
                            <label className="form-label" style={{ fontSize: '0.8rem', fontWeight: 600, marginBottom: '6px' }}>{p.label} *</label>
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

            <div className="wizard-nav-row">
              <button className="btn btn-secondary" onClick={() => setStep(2)}>
                <ArrowLeft size={16} /> Voltar
              </button>
              <button className="btn btn-primary" onClick={() => {
                setHighestStep(Math.max(highestStep, 4));
                runCalculation();
              }}>
                Gerar estimativa <ArrowRight size={16} />
              </button>
            </div>
          </div>
          {renderSidebarSummary()}
        </div>
      )}

      {/* STEP 4: EXECUTIVE SUMMARY & ADJUSTMENTS */}
      {step === 4 && (
        <div className="card-premium">
          <div className="card-header-flex">
            <h2 className="card-title">Passo 4: Estimativa Gerada com Sucesso</h2>
            <span className="badge badge-success">Estimativa Concluída</span>
          </div>
          <p style={{ fontSize: '0.88rem', color: 'var(--secondary-light)', marginBottom: '20px' }}>
            Com base nas informações preenchidas, o PRODIME aplicou as regras técnicas cadastradas e gerou uma estimativa de equipamentos, quantidades e valores referenciais para o seu projeto.
          </p>

          {/* Executive Summary Cards */}
          <div className="wizard-stats-grid" style={{ marginBottom: '24px' }}>
            <div style={{ border: '1px solid var(--border-color)', padding: '20px', borderRadius: 'var(--radius-md)', textAlign: 'center', backgroundColor: 'var(--bg-panel)' }}>
              <div style={{ fontSize: '1.8rem', fontWeight: 800, color: 'var(--primary)', fontFamily: 'var(--font-display)' }}>{selectedSectors.length}</div>
              <div style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '4px', fontWeight: 500 }}>Áreas Analisadas</div>
            </div>
            <div style={{ border: '1px solid var(--border-color)', padding: '20px', borderRadius: 'var(--radius-md)', textAlign: 'center', backgroundColor: 'var(--bg-panel)' }}>
              <div style={{ fontSize: '1.8rem', fontWeight: 800, color: 'var(--primary)', fontFamily: 'var(--font-display)' }}>{calculateTotalEquipmentQty()}</div>
              <div style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '4px', fontWeight: 500 }}>Equipamentos Estimados</div>
            </div>
            <div style={{ border: '1px solid var(--primary-light)', padding: '20px', borderRadius: 'var(--radius-md)', textAlign: 'center', backgroundColor: 'var(--primary-subtle)' }}>
              <div style={{ fontSize: '1.8rem', fontWeight: 800, color: 'var(--primary)', fontFamily: 'var(--font-display)' }}>{formatBRL(calculateTotalInvestment())}</div>
              <div style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '4px', fontWeight: 500 }}>Investimento Referencial</div>
            </div>
            <div style={{ border: '1px solid var(--border-color)', padding: '20px', borderRadius: 'var(--radius-md)', textAlign: 'center', backgroundColor: 'var(--bg-panel)' }}>
              <div style={{ fontSize: '1.8rem', fontWeight: 800, color: 'var(--primary)', fontFamily: 'var(--font-display)' }}>
                {new Set(results.map(r => r.equipment_code)).size}
              </div>
              <div style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '4px', fontWeight: 500 }}>Tipologias Cadastradas</div>
            </div>
          </div>

          {/* Action Row */}
          <div className="wizard-action-row">
            <div className="wizard-action-buttons">
              <button className="btn btn-primary" onClick={() => setStep(5)}>
                Gerar Relatório
              </button>
              <button className="btn btn-secondary" onClick={handleExportCSV}>
                <Download size={14} style={{ marginRight: '6px' }} /> Exportar Planilha
              </button>
              <button className="btn btn-secondary" onClick={() => setStep(3)}>
                Revisar Parâmetros
              </button>
              <button className="btn btn-secondary" style={{ border: '1px solid #16a34a', color: '#16a34a' }} onClick={handleFinalSave}>
                Salvar Projeto
              </button>
            </div>
            <div className="wizard-action-filters">
              <select 
                className="form-control" 
                value={filterSector} 
                onChange={e => setFilterSector(e.target.value)} 
                style={{ width: '180px', margin: 0 }}
              >
                <option value="ALL">Todas as Áreas</option>
                {selectedSectors.map(s => <option key={s} value={s}>{s}</option>)}
              </select>
              <select 
                className="form-control" 
                value={filterClass} 
                onChange={e => setFilterClass(e.target.value)} 
                style={{ width: '180px', margin: 0 }}
              >
                <option value="ALL">Classificações</option>
                <option value="Obrigatório">Obrigatórios</option>
                <option value="Recomendado">Recomendados</option>
                <option value="Opcional">Opcionais</option>
              </select>
            </div>
          </div>

          <p style={{ fontSize: '0.88rem', color: 'var(--secondary-light)', lineHeight: '1.6', backgroundColor: 'var(--primary-subtle)', padding: '16px 20px', borderRadius: 'var(--radius-sm)', marginBottom: '24px', border: '1px solid var(--primary-light)' }}>
            <strong>Revisão de Equipamentos:</strong> Revise os equipamentos estimados abaixo. As quantidades sugeridas foram calculadas a partir das regras-base do PRODIME. Caso a realidade do projeto exija alteração, você pode ajustar a quantidade final e registrar uma justificativa técnica. Esse ajuste não altera a regra original do sistema; ele apenas documenta uma decisão específica deste projeto.
          </p>

          {/* Results Table */}
          <div className="table-wrapper">
            <table className="table-premium">
              <thead>
                <tr>
                  <th>Ambiente / Área</th>
                  <th>Código</th>
                  <th>Equipamento</th>
                  <th>Categoria</th>
                  <th style={{ textAlign: 'center' }}>Qtd. Calc</th>
                  <th style={{ textAlign: 'center' }}>Qtd. Sugerida</th>
                  <th style={{ textAlign: 'center' }}>Qtd. Ajustada</th>
                  <th>Preço Médio</th>
                  <th>Custo Total</th>
                  <th>Classificação</th>
                  <th>Premissa / Justificativa</th>
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

          <div className="wizard-nav-row">
            <button className="btn btn-secondary" onClick={() => setStep(3)}>
              <ArrowLeft size={16} /> Voltar
            </button>
            <button className="btn btn-primary" onClick={() => { setHighestStep(Math.max(highestStep, 5)); setStep(5); }}>
              Avançar: Relatório <ArrowRight size={16} />
            </button>
          </div>

          <div style={{ borderTop: '1px solid var(--border-color)', paddingTop: '16px', marginTop: '24px', fontSize: '0.8rem', color: '#64748b', fontStyle: 'italic' }} className="no-print">
            <strong>Aviso de Responsabilidade:</strong> Esta estimativa não substitui validação técnica, projeto executivo, especificação formal de compra, cotação de mercado ou aprovação por órgãos competentes.
          </div>
        </div>
      )}

      {/* STEP 5: FINAL REPORT & SUMMARY */}
      {step === 5 && (
        <div className="card-premium">
          <div className="card-header-flex no-print">
            <h2 className="card-title">Passo 5: Emissão do Relatório Técnico-Financeiro</h2>
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
                    Relatório de Estimativa e Planejamento de Equipamentos
                  </h2>
                </div>
                <div style={{ textAlign: 'right', fontSize: '0.85rem', color: 'var(--secondary-light)' }}>
                  <div>Data de Emissão: <strong>{new Date().toLocaleDateString('pt-BR')}</strong></div>
                  <div>Versão Regulatória: <strong>Anvisa RDC 50</strong></div>
                </div>
              </div>
            </div>

            {/* Project Details Grid */}
            <div className="wizard-summary-details-grid" style={{ backgroundColor: 'var(--bg-panel)', padding: '24px', borderRadius: 'var(--radius-md)', border: '1px solid var(--border-color)', marginBottom: '30px' }}>
              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--text-muted)', fontWeight: 700, letterSpacing: '0.5px' }}>Projeto</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 700, color: 'var(--secondary)', marginTop: '4px' }}>{name}</div>
              </div>
              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--text-muted)', fontWeight: 700, letterSpacing: '0.5px' }}>Unidade de Saúde</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 700, color: 'var(--secondary)', marginTop: '4px' }}>{hospitalName}</div>
              </div>

              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--text-muted)', fontWeight: 700, letterSpacing: '0.5px' }}>Tipo de Unidade / Perfil</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 700, color: 'var(--secondary)', marginTop: '4px' }}>{establishmentType} ({profile})</div>
              </div>
              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--text-muted)', fontWeight: 700, letterSpacing: '0.5px' }}>Responsável pelo Preenchimento</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 700, color: 'var(--secondary)', marginTop: '4px' }}>{technicalManager}</div>
              </div>
              <div>
                <div style={{ fontSize: '0.75rem', textTransform: 'uppercase', color: 'var(--text-muted)', fontWeight: 700, letterSpacing: '0.5px' }}>Moeda / Preços</div>
                <div style={{ fontSize: '0.95rem', fontWeight: 700, color: 'var(--secondary)', marginTop: '4px' }}>{currency} ({priceDate})</div>
              </div>
            </div>

            {/* Overview Stats */}
            <div className="wizard-stats-grid" style={{ marginBottom: '30px' }}>
              <div style={{ textAlign: 'center', border: '1px solid var(--border-color)', padding: '20px', borderRadius: 'var(--radius-md)', backgroundColor: 'var(--bg-panel)' }}>
                <div style={{ fontSize: '1.8rem', fontWeight: 800, color: 'var(--primary)', fontFamily: 'var(--font-display)' }}>{selectedSectors.length}</div>
                <div style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '4px', fontWeight: 500 }}>Ambientes Selecionados</div>
              </div>
              <div style={{ textAlign: 'center', border: '1px solid var(--border-color)', padding: '20px', borderRadius: 'var(--radius-md)', backgroundColor: 'var(--bg-panel)' }}>
                <div style={{ fontSize: '1.8rem', fontWeight: 800, color: 'var(--primary)', fontFamily: 'var(--font-display)' }}>{calculateTotalCapacity()}</div>
                <div style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '4px', fontWeight: 500 }}>Capacidade Total</div>
              </div>
              <div style={{ textAlign: 'center', border: '1px solid var(--border-color)', padding: '20px', borderRadius: 'var(--radius-md)', backgroundColor: 'var(--bg-panel)' }}>
                <div style={{ fontSize: '1.8rem', fontWeight: 800, color: 'var(--primary)', fontFamily: 'var(--font-display)' }}>{calculateTotalEquipmentQty()}</div>
                <div style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '4px', fontWeight: 500 }}>Equipamentos Estimados</div>
              </div>
              <div style={{ textAlign: 'center', border: '1px solid var(--primary-light)', padding: '20px', borderRadius: 'var(--radius-md)', backgroundColor: 'var(--primary-subtle)' }}>
                <div style={{ fontSize: '1.8rem', fontWeight: 800, color: 'var(--primary)', fontFamily: 'var(--font-display)' }}>{formatBRL(calculateTotalInvestment())}</div>
                <div style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '4px', fontWeight: 500 }}>Investimento Estimado</div>
              </div>
            </div>

            {/* Split breakdowns */}
            <div className="finance-summary-grid" style={{ marginBottom: '30px' }}>
              <div>
                <h3 style={{ fontFamily: 'var(--font-display)', fontSize: '1.1rem', marginBottom: '12px' }}>Investimento por Área/Ambiente</h3>
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
                <h3 style={{ fontFamily: 'var(--font-display)', fontSize: '1.1rem', marginBottom: '12px' }}>Composição por Classificação</h3>
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
            <h3 style={{ fontFamily: 'var(--font-display)', fontSize: '1.1rem', marginBottom: '12px' }}>Detalhamento da Estimativa de Equipamentos</h3>
            <div className="table-wrapper" style={{ marginBottom: '30px' }}>
              <table className="table-premium">
                <thead>
                  <tr>
                    <th>Ambiente / Área</th>
                    <th>Código</th>
                    <th>Equipamento</th>
                    <th style={{ textAlign: 'center' }}>Qtd Sugerida</th>
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
              <strong>Aviso de Responsabilidade:</strong> Os resultados gerados pelo sistema são estimativos e referenciais para apoio ao planejamento. Eles não substituem análise técnica de engenharia clínica, validação institucional, parecer técnico, projeto executivo, especificação formal de compra ou a aprovação de órgãos reguladores competentes. A responsabilidade final pelas decisões de investimento cabe à instituição e aos profissionais habilitados.
            </div>
          </div>

          <div className="wizard-nav-row no-print">
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
              <h3 className="modal-title">Ajustar Quantidade da Estimativa</h3>
              <button className="modal-close" onClick={() => setAdjustModalOpen(false)}>&times;</button>
            </div>
            <form onSubmit={handleSaveAdjustment}>
              <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
                <div>
                  <strong style={{ fontSize: '0.9rem', color: 'var(--secondary)' }}>Ambiente / Área:</strong> {adjustTarget.sector_name}
                </div>
                <div>
                  <strong style={{ fontSize: '0.9rem', color: 'var(--secondary)' }}>Equipamento:</strong> {adjustTarget.equipment_name} (<code>{adjustTarget.equipment_code}</code>)
                </div>
                <div>
                  <strong style={{ fontSize: '0.9rem', color: 'var(--secondary)' }}>Quantidade Sugerida pelo Sistema:</strong> {adjustTarget.quantity_recommended}
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

              <div className="wizard-modal-actions">
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
