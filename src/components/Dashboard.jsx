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
        {/* Onboarding Hero Section (Directly on grey background) */}
        <div style={{ textAlign: 'center', padding: '16px 20px', maxWidth: '800px', margin: '0 auto 20px auto', display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '16px' }}>
          <div style={{ width: '48px', height: '48px', borderRadius: '50%', backgroundColor: 'var(--primary-light)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', boxShadow: '0 2px 6px rgba(30, 109, 70, 0.05)' }}>
            <TrendingUp size={24} />
          </div>
          <h2 style={{ fontFamily: 'var(--font-display)', fontSize: '1.6rem', fontWeight: 800, color: 'var(--secondary)', letterSpacing: '-0.5px', margin: 0 }}>Crie sua primeira estimativa de equipamentos</h2>
          <p style={{ color: 'var(--secondary-light)', fontSize: '0.95rem', lineHeight: '1.5', maxWidth: '640px', margin: 0 }}>
            O PRODIME ajuda a estimar quantitativos de equipamentos médico-hospitalares e valores referenciais de investimento com base nos ambientes, setores e parâmetros que você informar.
          </p>
          <button className="btn btn-primary" style={{ padding: '10px 24px', fontSize: '0.9rem', marginTop: '4px' }} onClick={onStartNewProject}>
            Criar Primeira Estimativa <ArrowRight size={16} style={{ marginLeft: '6px' }} />
          </button>
        </div>

        {/* 3-Step Simple Guide */}
        <div style={{ maxWidth: '1000px', margin: '0 auto' }}>
          <h3 style={{ fontFamily: 'var(--font-display)', fontSize: '1.1rem', color: 'var(--secondary)', marginBottom: '16px', textAlign: 'center', fontWeight: 800, letterSpacing: '-0.25px' }}>
            Como funciona em 3 etapas simples:
          </h3>
          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: '20px' }}>
            <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '12px', padding: '20px', alignItems: 'flex-start' }}>
              <div style={{ width: '36px', height: '36px', borderRadius: '50%', backgroundColor: 'var(--primary-light)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: 800, fontSize: '0.95rem' }}>
                1
              </div>
              <h4 style={{ fontWeight: 800, color: 'var(--secondary)', fontFamily: 'var(--font-display)', fontSize: '1.05rem', letterSpacing: '-0.25px', margin: 0 }}>Identificação e Cadastro</h4>
              <p style={{ fontSize: '0.82rem', color: 'var(--secondary-light)', lineHeight: '1.5', margin: 0 }}>
                Informe os dados gerais da estimativa, como nome do projeto, tipo de estabelecimento, responsável técnico e localidade.
              </p>
            </div>

            <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '12px', padding: '20px', alignItems: 'flex-start' }}>
              <div style={{ width: '36px', height: '36px', borderRadius: '50%', backgroundColor: 'var(--primary-light)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: 800, fontSize: '0.95rem' }}>
                2
              </div>
              <h4 style={{ fontWeight: 800, color: 'var(--secondary)', fontFamily: 'var(--font-display)', fontSize: '1.05rem', letterSpacing: '-0.25px', margin: 0 }}>Ambientes e Parâmetros</h4>
              <p style={{ fontSize: '0.82rem', color: 'var(--secondary-light)', lineHeight: '1.5', margin: 0 }}>
                Selecione as áreas assistenciais (UTI, CME, Diagnóstico, etc.) e informe as capacidades operacionais (leitos, salas ou boxes).
              </p>
            </div>

            <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '12px', padding: '20px', alignItems: 'flex-start' }}>
              <div style={{ width: '36px', height: '36px', borderRadius: '50%', backgroundColor: 'var(--primary-light)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: 800, fontSize: '0.95rem' }}>
                3
              </div>
              <h4 style={{ fontWeight: 800, color: 'var(--secondary)', fontFamily: 'var(--font-display)', fontSize: '1.05rem', letterSpacing: '-0.25px', margin: 0 }}>Análise e Relatório</h4>
              <p style={{ fontSize: '0.82rem', color: 'var(--secondary-light)', lineHeight: '1.5', margin: 0 }}>
                Revise os equipamentos calculados, realize ajustes justificados nas quantidades finais e exporte o relatório técnico-financeiro.
              </p>
            </div>
          </div>
        </div>
      </div>
    );
  }

  // State B: Active State (1+ Projects) - Main Operational Dashboard
  return (
    <div className="tab-section active">
      <div className="page-actions">
        <button className="btn btn-primary" onClick={onStartNewProject}>
          <Plus size={16} /> Novo Projeto
        </button>
      </div>
      
      {/* Statistics Grid */}
      <div className="dashboard-grid" style={{ display: 'grid', gap: '24px', gridTemplateColumns: isAdmin ? 'repeat(4, 1fr)' : 'repeat(2, 1fr)' }}>
        <div className="card-premium stats-card stat-projects" style={{ display: 'flex', alignItems: 'center', gap: '20px', padding: '24px' }}>
          <div className="stats-icon-wrapper" style={{ width: '56px', height: '56px', borderRadius: '16px', display: 'flex', alignItems: 'center', justifyContent: 'center', backgroundColor: '#eef2ff', color: '#4f46e5' }}>
            <FileText size={24} />
          </div>
          <div className="stats-info" style={{ display: 'flex', flexDirection: 'column' }}>
            <span className="stats-value" style={{ fontSize: '1.8rem', fontWeight: 800, fontFamily: 'var(--font-display)', color: 'var(--secondary)' }}>{projects.length}</span>
            <span className="stats-label" style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', fontWeight: 500 }}>Estimativas Ativas</span>
          </div>
        </div>
        
        <div className="card-premium stats-card stat-investment" style={{ display: 'flex', alignItems: 'center', gap: '20px', padding: '24px' }}>
          <div className="stats-icon-wrapper" style={{ width: '56px', height: '56px', borderRadius: '16px', display: 'flex', alignItems: 'center', justifyContent: 'center', backgroundColor: 'var(--primary-light)', color: 'var(--primary)' }}>
            <DollarSign size={24} />
          </div>
          <div className="stats-info" style={{ display: 'flex', flexDirection: 'column' }}>
            <span className="stats-value" style={{ fontSize: '1.8rem', fontWeight: 800, fontFamily: 'var(--font-display)', color: 'var(--secondary)' }}>{formatBRL(stats.totalInvestment || 0)}</span>
            <span className="stats-label" style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', fontWeight: 500 }}>Investimento Total</span>
          </div>
        </div>

        {/* System Stats - Admin Only */}
        {isAdmin && (
          <>
            <div className="card-premium stats-card stat-eq" style={{ display: 'flex', alignItems: 'center', gap: '20px', padding: '24px' }}>
              <div className="stats-icon-wrapper" style={{ width: '56px', height: '56px', borderRadius: '16px', display: 'flex', alignItems: 'center', justifyContent: 'center', backgroundColor: '#fff7ed', color: '#ea580c' }}>
                <Settings size={24} />
              </div>
              <div className="stats-info" style={{ display: 'flex', flexDirection: 'column' }}>
                <span className="stats-value" style={{ fontSize: '1.8rem', fontWeight: 800, fontFamily: 'var(--font-display)', color: 'var(--secondary)' }}>{stats.totalEquipment || 0}</span>
                <span className="stats-label" style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', fontWeight: 500 }}>Equipamentos no Catálogo</span>
              </div>
            </div>
            
            <div className="card-premium stats-card stat-rules" style={{ display: 'flex', alignItems: 'center', gap: '20px', padding: '24px' }}>
              <div className="stats-icon-wrapper" style={{ width: '56px', height: '56px', borderRadius: '16px', display: 'flex', alignItems: 'center', justifyContent: 'center', backgroundColor: '#fdf2f8', color: '#db2777' }}>
                <Sliders size={24} />
              </div>
              <div className="stats-info" style={{ display: 'flex', flexDirection: 'column' }}>
                <span className="stats-value" style={{ fontSize: '1.8rem', fontWeight: 800, fontFamily: 'var(--font-display)', color: 'var(--secondary)' }}>{stats.totalRules || 0}</span>
                <span className="stats-label" style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', fontWeight: 500 }}>Regras de Cálculo</span>
              </div>
            </div>
          </>
        )}
      </div>
      
      {/* Split Section */}
      <div className="dashboard-split" style={{ display: 'grid', gridTemplateColumns: '1.2fr 0.8fr', gap: '24px', marginTop: '8px' }}>
        
        {/* Recent Estimations List */}
        <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
            <h2 className="card-title" style={{ display: 'flex', alignItems: 'center', gap: '10px', fontSize: '1.25rem', fontFamily: 'var(--font-display)', fontWeight: 700 }}>
              <FolderOpen size={22} style={{ color: 'var(--primary)' }} /> Estimativas Recentes
            </h2>
            <button className="btn btn-secondary btn-sm" onClick={() => onNavigate('projects')}>
              Ver Todos
            </button>
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
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
                <div key={proj.id} style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', padding: '20px', backgroundColor: 'var(--bg-panel)', borderRadius: '16px', border: '1px solid var(--border-color)', transition: 'all 0.25s ease' }} className="project-quick-item">
                  <div style={{ display: 'flex', flexDirection: 'column', gap: '4px' }}>
                    <span style={{ fontWeight: 700, color: 'var(--secondary)', fontSize: '1.05rem', fontFamily: 'var(--font-display)' }}>{proj.name}</span>
                    <span style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', fontWeight: 500 }}>
                      {proj.hospital_name}{proj.city && proj.state ? ` • ${proj.city} - ${proj.state}` : (proj.city || proj.state ? ` • ${proj.city || proj.state}` : '')}
                    </span>
                    <span style={{ fontSize: '0.8rem', color: 'var(--text-muted)' }}>
                      Atualizado em: {new Date(proj.updated_at || proj.created_at).toLocaleDateString('pt-BR')}
                    </span>
                  </div>
                  <div style={{ display: 'flex', alignItems: 'center', gap: '20px' }}>
                    <div style={{ textAlign: 'right', display: 'flex', flexDirection: 'column' }}>
                      <span style={{ fontSize: '1.05rem', fontWeight: 800, color: 'var(--primary)', fontFamily: 'var(--font-display)' }}>{formatBRL(projCost)}</span>
                      <span style={{ fontSize: '0.75rem', color: 'var(--text-muted)' }}>custo estimado</span>
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
          <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
            <h2 className="card-title" style={{ fontSize: '1.25rem', fontFamily: 'var(--font-display)', fontWeight: 700 }}>Atividades Recentes</h2>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '16px', fontSize: '0.85rem', maxHeight: '350px', overflowY: 'auto', paddingRight: '4px' }}>
              {recentLogs && recentLogs.length > 0 ? (
                recentLogs.map((log) => (
                  <div key={log.id} className="log-item" style={{ borderBottom: '1px solid var(--border-color)', paddingBottom: '12px' }}>
                    <div className="log-item-header" style={{ display: 'flex', justifyContent: 'space-between', fontWeight: 700, marginBottom: '4px' }}>
                      <span style={{ color: 'var(--primary)' }}>{log.action}</span>
                      <span style={{ color: 'var(--text-muted)', fontSize: '0.75rem', fontWeight: 500 }}>
                        {formatDate(log.timestamp).split(' ')[0]}
                      </span>
                    </div>
                    <div style={{ color: 'var(--secondary)', marginBottom: '4px', lineHeight: '1.4' }}>{log.details}</div>
                    <div style={{ color: 'var(--secondary-light)', fontSize: '0.78rem' }}>
                      Por: {log.user_email || 'Visitante'}
                    </div>
                  </div>
                ))
              ) : (
                <div style={{ color: 'var(--secondary-light)', textAlign: 'center', padding: '30px 0' }}>
                  Nenhuma atividade recente.
                </div>
              )}
            </div>
          </div>
        ) : (
          <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
            <h2 className="card-title" style={{ display: 'flex', alignItems: 'center', gap: '10px', fontSize: '1.25rem', fontFamily: 'var(--font-display)', fontWeight: 700 }}>
              <HelpCircle size={22} style={{ color: 'var(--primary)' }} /> Dicas de Planejamento
            </h2>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '18px', fontSize: '0.88rem', lineHeight: '1.6' }}>
              <div style={{ borderLeft: '3px solid var(--primary)', paddingLeft: '12px' }}>
                <strong style={{ color: 'var(--secondary)', display: 'block', marginBottom: '4px', fontFamily: 'var(--font-display)', fontWeight: 700 }}>Ajustes de Estimativa</strong>
                <span style={{ color: 'var(--secondary-light)' }}>
                  No Passo 4, você pode alterar a quantidade sugerida de qualquer equipamento. Lembre-se de registrar uma justificativa técnica para documentar sua decisão.
                </span>
              </div>
              
              <div style={{ borderLeft: '3px solid var(--primary)', paddingLeft: '12px' }}>
                <strong style={{ color: 'var(--secondary)', display: 'block', marginBottom: '4px', fontFamily: 'var(--font-display)', fontWeight: 700 }}>Filtros de Relevância</strong>
                <span style={{ color: 'var(--secondary-light)' }}>
                  Filtre a estimativa por classificação (Obrigatório, Recomendado, Opcional) para focar nas necessidades prioritárias da sua unidade de saúde.
                </span>
              </div>

              <div style={{ borderLeft: '3px solid var(--primary)', paddingLeft: '12px' }}>
                <strong style={{ color: 'var(--secondary)', display: 'block', marginBottom: '4px', fontFamily: 'var(--font-display)', fontWeight: 700 }}>Privacidade dos Projetos</strong>
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
