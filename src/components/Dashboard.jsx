import React from 'react';
import { 
  FileText, 
  Settings, 
  Sliders, 
  DollarSign, 
  Plus, 
  ArrowRight,
  TrendingUp
} from 'lucide-react';

export default function Dashboard({ 
  stats, 
  recentLogs = [], 
  onStartNewProject, 
  onNavigate 
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

  return (
    <div className="tab-section active">
      {/* Page Header */}
      <div className="page-header">
        <div>
          <h1 className="page-title">Dashboard Operacional</h1>
          <p className="page-subtitle">Visão geral das estatísticas do PRODIME.</p>
        </div>
        <button className="btn btn-primary" onClick={onStartNewProject}>
          <Plus size={16} />
          Novo Projeto
        </button>
      </div>
      
      {/* Statistics Grid */}
      <div className="dashboard-grid">
        <div className="card-premium stats-card stat-projects">
          <div className="stats-icon-wrapper">
            <FileText size={22} />
          </div>
          <div className="stats-info">
            <span className="stats-value">{stats.totalProjects || 0}</span>
            <span className="stats-label">Projetos Ativos</span>
          </div>
        </div>
        
        <div className="card-premium stats-card stat-eq">
          <div className="stats-icon-wrapper">
            <Settings size={22} />
          </div>
          <div className="stats-info">
            <span className="stats-value">{stats.totalEquipment || 0}</span>
            <span className="stats-label">Equipamentos Cadastrados</span>
          </div>
        </div>
        
        <div className="card-premium stats-card stat-rules">
          <div className="stats-icon-wrapper">
            <Sliders size={22} />
          </div>
          <div className="stats-info">
            <span className="stats-value">{stats.totalRules || 0}</span>
            <span className="stats-label">Regras Ativas</span>
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
      </div>
      
      {/* Split Section */}
      <div className="dashboard-split">
        {/* Welcome Banner */}
        <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '16px', justifyContent: 'center' }}>
          <h2 className="card-title" style={{ color: 'var(--primary)', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <TrendingUp size={20} /> Bem-vindo ao PRODIME
          </h2>
          <p style={{ fontSize: '0.95rem', lineHeight: '1.6', color: 'var(--secondary-light)' }}>
            O PRODIME é um sistema inteligente estruturado para calcular a estimativa e dimensionamento do parque de equipamentos médico-hospitalares de estabelecimentos assistenciais de saúde (EAS).
          </p>
          <p style={{ fontSize: '0.95rem', lineHeight: '1.6', color: 'var(--secondary-light)' }}>
            Nosso motor cruza regras parametrizadas baseadas nas referências normativas da <strong>RDC nº 50/2002 da Anvisa</strong> com a infraestrutura assistencial que você definir no cadastro do projeto (número de leitos, salas de exame, salas cirúrgicas, etc.).
          </p>
          <div style={{ marginTop: '10px', display: 'flex', gap: '12px' }}>
            <button className="btn btn-primary" onClick={() => onNavigate('projects')}>
              Ir para Projetos
            </button>
            <button className="btn btn-secondary" onClick={() => onNavigate('manual')}>
              <BookOpenIcon /> Ver Manual de Regras
            </button>
          </div>
        </div>
        
        {/* Recent Activities Audit */}
        <div className="card-premium">
          <h2 className="card-title" style={{ marginBottom: '14px' }}>Atividades Recentes</h2>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '12px', fontSize: '0.8rem', maxHeight: '320px', overflowY: 'auto' }}>
            {recentLogs && recentLogs.length > 0 ? (
              recentLogs.map((log) => (
                <div key={log.id} className="log-item">
                  <div className="log-item-header">
                    <span style={{ fontWeight: 600, color: 'var(--primary)' }}>{log.action}</span>
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
      </div>
    </div>
  );
}

// Inline helper component for custom SVG icon
function BookOpenIcon() {
  return (
    <svg style={{ width: '16px', height: '16px', stroke: 'currentColor', fill: 'none', strokeWidth: 2 }} viewBox="0 0 24 24">
      <path d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253" />
    </svg>
  );
}
