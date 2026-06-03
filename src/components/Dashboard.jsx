import React from 'react';
import { 
  FileText, 
  Settings, 
  Sliders, 
  DollarSign, 
  Plus, 
  ArrowRight,
  TrendingUp,
  BookOpen,
  ClipboardList,
  Shield,
  HelpCircle,
  FolderOpen
} from 'lucide-react';

export default function Dashboard({ 
  stats, 
  recentLogs = [], 
  onStartNewProject, 
  onNavigate,
  projects = [],
  userProfile = null,
  onOpenProject
}) {
  
  const formatBRL = (val) => {
    return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(val);
  };

  const formatDate = (isoString) => {
    if (!isoString) return "";
    try {
      const d = new Date(isoString);
      return d.toLocaleDateString('pt-BR') + ' ' + d.toLocaleTimeString('pt-BR', { hour: '2-digit', minute: '2-digit' });
    } catch(e) {
      return isoString;
    }
  };

  const hasProjects = projects && projects.length > 0;
  const isAdmin = userProfile?.role === 'Admin';

  // State A: Empty State (0 Projects) - Onboarding Flow
  if (!hasProjects) {
    return (
      <div className="tab-section active">
        {/* Page Header */}
        <div className="page-header">
          <div>
            <h1 className="page-title">Bem-vindo ao PRODIME</h1>
            <p className="page-subtitle">Ferramenta de apoio ao planejamento de equipamentos para unidades de saúde.</p>
          </div>
          <button className="btn btn-primary" onClick={onStartNewProject}>
            <Plus size={16} /> Novo Projeto
          </button>
        </div>

        {/* Central Welcome Card */}
        <div className="card-premium" style={{ textAlign: 'center', padding: '40px 20px', maxWidth: '800px', margin: '0 auto 40px auto', display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '20px' }}>
          <div style={{ width: '64px', height: '64px', borderRadius: '50%', backgroundColor: 'var(--primary-bg)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifycontent: 'center', justifyContent: 'center' }}>
            <TrendingUp size={32} />
          </div>
          <h2 style={{ fontFamily: 'Outfit', fontSize: '1.8rem', color: 'var(--secondary)' }}>Crie sua primeira estimativa de equipamentos</h2>
          <p style={{ color: 'var(--secondary-light)', fontSize: '0.98rem', lineHeight: '1.6', maxWidth: '600px' }}>
            O PRODIME ajuda a estimar quantitativos de equipamentos médico-hospitalares e valores referenciais de investimento com base nos ambientes, setores e parâmetros que você informar.
          </p>
          <button className="btn btn-primary" style={{ padding: '12px 30px', fontSize: '1rem', marginTop: '10px' }} onClick={onStartNewProject}>
            Criar Primeira Estimativa <ArrowRight size={18} style={{ marginLeft: '6px' }} />
          </button>
        </div>

        {/* 3-Step Simple Guide */}
        <div style={{ maxWidth: '1000px', margin: '0 auto' }}>
          <h3 style={{ fontFamily: 'Outfit', fontSize: '1.2rem', color: 'var(--secondary)', marginBottom: '24px', textAlign: 'center', fontWeight: 600 }}>
            Como funciona em 3 etapas simples:
          </h3>
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: '24px' }}>
            <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '12px', padding: '24px' }}>
              <div style={{ width: '36px', height: '36px', borderRadius: '50%', backgroundColor: '#f1f5f9', color: 'var(--secondary)', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: 700 }}>
                1
              </div>
              <h4 style={{ fontWeight: 'bold', color: 'var(--secondary)', fontFamily: 'Outfit', fontSize: '1.05rem' }}>Identificação e Cadastro</h4>
              <p style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', lineHeight: '1.5' }}>
                Informe os dados gerais da estimativa, como nome do projeto, tipo de estabelecimento, responsável técnico e localidade.
              </p>
            </div>

            <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '12px', padding: '24px' }}>
              <div style={{ width: '36px', height: '36px', borderRadius: '50%', backgroundColor: '#f1f5f9', color: 'var(--secondary)', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: 700 }}>
                2
              </div>
              <h4 style={{ fontWeight: 'bold', color: 'var(--secondary)', fontFamily: 'Outfit', fontSize: '1.05rem' }}>Ambientes e Parâmetros</h4>
              <p style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', lineHeight: '1.5' }}>
                Selecione as áreas assistenciais (UTI, CME, Diagnóstico, etc.) e informe as capacidades operacionais (leitos, salas ou boxes).
              </p>
            </div>

            <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '12px', padding: '24px' }}>
              <div style={{ width: '36px', height: '36px', borderRadius: '50%', backgroundColor: '#f1f5f9', color: 'var(--secondary)', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: 700 }}>
                3
              </div>
              <h4 style={{ fontWeight: 'bold', color: 'var(--secondary)', fontFamily: 'Outfit', fontSize: '1.05rem' }}>Análise e Relatório</h4>
              <p style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', lineHeight: '1.5' }}>
                Revise os equipamentos calculados, realize ajustes justificados nas quantidades finais e exporte o relatório técnico-financeiro.
              </p>
            </div>
          </div>

          <div style={{ textAlign: 'center', marginTop: '30px' }}>
            <button className="btn btn-secondary" style={{ display: 'inline-flex', alignItems: 'center', gap: '8px' }} onClick={() => onNavigate('manual')}>
              <BookOpen size={16} /> Ver Manual de Regras de Dimensionamento
            </button>
          </div>
        </div>
      </div>
    );
  }

  // State B: Active State (1+ Projects) - Main Operational Dashboard
  return (
    <div className="tab-section active">
      {/* Page Header */}
      <div className="page-header">
        <div>
          <h1 className="page-title">Dashboard Operacional</h1>
          <p className="page-subtitle">Acompanhe suas estimativas e planejamento de equipamentos.</p>
        </div>
        <button className="btn btn-primary" onClick={onStartNewProject}>
          <Plus size={16} /> Novo Projeto
        </button>
      </div>
      
      {/* Statistics Grid */}
      <div className="dashboard-grid" style={{ gridTemplateColumns: isAdmin ? 'repeat(4, 1fr)' : 'repeat(2, 1fr)' }}>
        <div className="card-premium stats-card stat-projects">
          <div className="stats-icon-wrapper">
            <FileText size={22} />
          </div>
          <div className="stats-info">
            <span className="stats-value">{projects.length}</span>
            <span className="stats-label">Estimativas Ativas</span>
          </div>
        </div>
        
        <div className="card-premium stats-card stat-investment">
          <div className="stats-icon-wrapper">
            <DollarSign size={22} />
          </div>
          <div className="stats-info">
            <span className="stats-value">{formatBRL(stats.totalInvestment || 0)}</span>
            <span className="stats-label">Investimento Total Estimado</span>
          </div>
        </div>

        {/* System Stats - Admin Only */}
        {isAdmin && (
          <>
            <div className="card-premium stats-card stat-eq">
              <div className="stats-icon-wrapper">
                <Settings size={22} />
              </div>
              <div className="stats-info">
                <span className="stats-value">{stats.totalEquipment || 0}</span>
                <span className="stats-label">Equipamentos no Catálogo</span>
              </div>
            </div>
            
            <div className="card-premium stats-card stat-rules">
              <div className="stats-icon-wrapper">
                <Sliders size={22} />
              </div>
              <div className="stats-info">
                <span className="stats-value">{stats.totalRules || 0}</span>
                <span className="stats-label">Regras de Cálculo</span>
              </div>
            </div>
          </>
        )}
      </div>
      
      {/* Split Section */}
      <div className="dashboard-split" style={{ display: 'grid', gridTemplateColumns: '1.2fr 0.8fr', gap: '20px', marginTop: '20px' }}>
        
        {/* Recent Estimations List */}
        <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
            <h2 className="card-title" style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
              <FolderOpen size={20} className="nav-icon" /> Estimativas Recentes
            </h2>
            <button className="btn btn-secondary btn-sm" onClick={() => onNavigate('projects')}>
              Ver Todos
            </button>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
            {projects.slice(0, 3).map((proj) => {
              // Sum investment for this single project
              let projCost = 0;
              if (proj.results) {
                proj.results.forEach(r => {
                  const qty = (r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) ? r.quantity_adjusted : r.quantity_recommended;
                  projCost += qty * r.avg_price;
                });
              }
              return (
                <div key={proj.id} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: '16px', backgroundColor: '#f8fafc', borderRadius: '8px', border: '1px solid #e2e8f0', transition: 'transform 0.2s hover' }} className="project-quick-item">
                  <div style={{ display: 'flex', flexDirection: 'column', gap: '4px' }}>
                    <span style={{ fontWeight: 600, color: 'var(--primary)', fontSize: '0.95rem' }}>{proj.name}</span>
                    <span style={{ fontSize: '0.8rem', color: 'var(--secondary-light)' }}>
                      {proj.hospital_name} • {proj.city} - {proj.state}
                    </span>
                    <span style={{ fontSize: '0.75rem', color: '#94a3b8' }}>
                      Atualizado em: {new Date(proj.updated_at || proj.created_at).toLocaleDateString('pt-BR')}
                    </span>
                  </div>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '14px' }}>
                    <div style={{ textAlign: 'right', display: 'flex', flexDirection: 'column' }}>
                      <span style={{ fontSize: '0.9rem', fontWeight: 700, color: 'var(--secondary)' }}>{formatBRL(projCost)}</span>
                      <span style={{ fontSize: '0.7rem', color: '#94a3b8' }}>custo estimado</span>
                    </div>
                    <button className="btn btn-primary btn-sm" onClick={() => onOpenProject(proj)}>
                      Abrir
                    </button>
                  </div>
                </div>
              );
            })}
          </div>
        </div>

        {/* Right column: Admin Audit logs OR User Planning Tips */}
        {isAdmin ? (
          <div className="card-premium">
            <h2 className="card-title" style={{ marginBottom: '14px' }}>Atividades Recentes</h2>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '12px', fontSize: '0.8rem', maxHeight: '320px', overflowY: 'auto' }}>
              {recentLogs && recentLogs.length > 0 ? (
                recentLogs.map((log) => (
                  <div key={log.id} className="log-item" style={{ borderBottom: '1px solid #f1f5f9', paddingBottom: '8px' }}>
                    <div className="log-item-header" style={{ display: 'flex', justifyContent: 'space-between', fontWeight: 600 }}>
                      <span style={{ color: 'var(--primary)' }}>{log.action}</span>
                      <span style={{ color: '#64748b', fontSize: '0.7rem' }}>
                        {formatDate(log.timestamp).split(' ')[0]}
                      </span>
                    </div>
                    <div style={{ color: 'var(--secondary)', margin: '2px 0' }}>{log.details}</div>
                    <div style={{ color: '#64748b', fontSize: '0.75rem' }}>
                      Por: {log.user_email || 'Visitante'}
                    </div>
                  </div>
                ))
              ) : (
                <div style={{ color: 'var(--secondary-light)', textAlign: 'center', padding: '20px 0' }}>
                  Nenhuma atividade recente.
                </div>
              )}
            </div>
          </div>
        ) : (
          <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '14px' }}>
            <h2 className="card-title" style={{ display: 'flex', alignItems: 'center', gap: '8px' }}>
              <HelpCircle size={20} className="nav-icon" /> Dicas de Planejamento
            </h2>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '14px', fontSize: '0.85rem', lineHeight: '1.5' }}>
              <div style={{ borderLeft: '3px solid var(--primary)', paddingLeft: '10px' }}>
                <strong style={{ color: 'var(--secondary)', display: 'block', marginBottom: '2px' }}>Ajustes de Estimativa</strong>
                <span style={{ color: 'var(--secondary-light)' }}>
                  No Passo 4, você pode alterar a quantidade sugerida de qualquer equipamento. Lembre-se de registrar uma justificativa técnica para documentar sua decisão.
                </span>
              </div>
              
              <div style={{ borderLeft: '3px solid var(--primary)', paddingLeft: '10px' }}>
                <strong style={{ color: 'var(--secondary)', display: 'block', marginBottom: '2px' }}>Filtros de Relevância</strong>
                <span style={{ color: 'var(--secondary-light)' }}>
                  Filtre a estimativa por classificação (Obrigatório, Recomendado, Opcional) para focar nas necessidades prioritárias da sua unidade de saúde.
                </span>
              </div>

              <div style={{ borderLeft: '3px solid var(--primary)', paddingLeft: '10px' }}>
                <strong style={{ color: 'var(--secondary)', display: 'block', marginBottom: '2px' }}>Privacidade dos Projetos</strong>
                <span style={{ color: 'var(--secondary-light)' }}>
                  Não insira dados pessoais de pacientes ou prontuários. A plataforma armazena apenas dados estruturais e quantitativos do planejamento técnico.
                </span>
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
