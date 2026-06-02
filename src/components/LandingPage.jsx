import React from 'react';
import { 
  Activity, 
  FileText, 
  TrendingUp, 
  ClipboardCheck, 
  ShieldAlert, 
  ArrowRight,
  BookOpen
} from 'lucide-react';

export default function LandingPage({ onStartApp, onLoginClick, user }) {
  return (
    <div className="lp-container">
      {/* Landing Page Header */}
      <header className="lp-header">
        <div className="lp-brand">
          <div className="lp-logo">P</div>
          <span className="lp-title">PRODIME</span>
        </div>
        <nav className="lp-nav">
          <a href="#vantagens" className="lp-nav-link">Vantagens</a>
          <a href="#como-funciona" className="lp-nav-link">Como Funciona</a>
          {user ? (
            <button className="btn btn-primary" onClick={onStartApp}>
              Acessar Painel <ArrowRight size={16} />
            </button>
          ) : (
            <>
              <a onClick={onLoginClick} className="lp-nav-link" style={{ fontWeight: 600 }}>Entrar</a>
              <button className="btn btn-primary" onClick={onStartApp}>
                Começar Grátis
              </button>
            </>
          )}
        </nav>
      </header>

      {/* Hero Section */}
      <section className="lp-hero">
        <div className="lp-hero-content">
          <span className="lp-badge">Motor de Dimensionamento Clínico</span>
          <h1 className="lp-hero-title">
            Planeje o parque de equipamentos do seu hospital com <span>precisão científica</span>
          </h1>
          <p className="lp-hero-description">
            O PRODIME ajuda engenheiros clínicos, arquitetos hospitalares e gestores de saúde a dimensionarem e orçarem a infraestrutura de tecnologia médica de EAS em total conformidade com as normas regulatórias da <strong>Anvisa RDC nº 50</strong>.
          </p>
          <div className="lp-cta-group">
            <button className="btn btn-primary" style={{ padding: '14px 28px', fontSize: '1rem' }} onClick={onStartApp}>
              Testar Agora Sem Login <ArrowRight size={18} />
            </button>
            {!user && (
              <button className="btn btn-secondary" style={{ padding: '14px 28px', fontSize: '1rem' }} onClick={onLoginClick}>
                Criar Conta Grátis
              </button>
            )}
          </div>
        </div>
        <div className="lp-hero-image-container">
          <div className="lp-hero-image-wrapper">
            <div style={{
              backgroundColor: '#0f172a',
              borderRadius: '8px',
              padding: '24px',
              width: '450px',
              color: 'white',
              boxShadow: '0 20px 40px rgba(0,0,0,0.3)',
              fontFamily: 'Outfit, sans-serif'
            }}>
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', borderBottom: '1px solid #1e293b', paddingBottom: '12px', marginBottom: '16px' }}>
                <span style={{ fontSize: '0.8rem', color: '#38bdf8', fontWeight: 600 }}>PRODIME - RDC 50 Engine</span>
                <div style={{ display: 'flex', gap: '6px' }}>
                  <div style={{ width: '8px', height: '8px', borderRadius: '50%', backgroundColor: '#ef4444' }}></div>
                  <div style={{ width: '8px', height: '8px', borderRadius: '50%', backgroundColor: '#eab308' }}></div>
                  <div style={{ width: '8px', height: '8px', borderRadius: '50%', backgroundColor: '#22c55e' }}></div>
                </div>
              </div>
              <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
                <div style={{ display: 'flex', justifyContent: 'space-between', fontSize: '0.9rem' }}>
                  <span style={{ color: '#94a3b8' }}>Setor Dimensionado:</span>
                  <span style={{ fontWeight: 600 }}>UTI Adulto</span>
                </div>
                <div style={{ display: 'flex', justifyContent: 'space-between', fontSize: '0.9rem' }}>
                  <span style={{ color: '#94a3b8' }}>Capacidade Informada:</span>
                  <span style={{ fontWeight: 600, color: '#38bdf8' }}>20 Leitos</span>
                </div>
                <hr style={{ borderColor: '#1e293b' }} />
                <div style={{ display: 'flex', flexDirection: 'column', gap: '8px', fontSize: '0.85rem' }}>
                  <div style={{ display: 'flex', justifyContent: 'space-between', backgroundColor: '#1e293b', padding: '8px', borderRadius: '4px' }}>
                    <span>⚡ Monitor Multiparamétrico</span>
                    <span style={{ color: '#4ade80', fontWeight: 'bold' }}>20 Unid.</span>
                  </div>
                  <div style={{ display: 'flex', justifyContent: 'space-between', backgroundColor: '#1e293b', padding: '8px', borderRadius: '4px' }}>
                    <span>🌬️ Ventilador Pulmonar (UTI)</span>
                    <span style={{ color: '#4ade80', fontWeight: 'bold' }}>24 Unid. (+20% RT)</span>
                  </div>
                  <div style={{ display: 'flex', justifyContent: 'space-between', backgroundColor: '#1e293b', padding: '8px', borderRadius: '4px' }}>
                    <span>💉 Bomba de Infusão Linear</span>
                    <span style={{ color: '#4ade80', fontWeight: 'bold' }}>66 Unid. (+10% RT)</span>
                  </div>
                </div>
                <div style={{ display: 'flex', justifyContent: 'space-between', marginTop: '8px', borderTop: '1px solid #1e293b', paddingTop: '12px' }}>
                  <span style={{ fontSize: '0.8rem', color: '#94a3b8' }}>Investimento Estimado:</span>
                  <span style={{ color: '#22c55e', fontWeight: 700, fontSize: '1rem' }}>R$ 3.003.000,00</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Advantages Section */}
      <section id="vantagens" className="lp-features-section">
        <div className="lp-section-header">
          <span className="lp-badge" style={{ margin: '0 auto' }}>Por que usar o PRODIME?</span>
          <h2 className="lp-section-title">Otimize o planejamento da tecnologia de saúde</h2>
          <p className="lp-section-subtitle">
            Evite compras desnecessárias, gargalos regulatórios ou falta de equipamentos de retaguarda durante a implantação ou ampliação de alas hospitalares.
          </p>
        </div>

        <div className="lp-features-grid">
          <div className="lp-feature-card">
            <div className="lp-feature-icon">
              <Activity size={24} />
            </div>
            <h3 className="lp-feature-card-title">Motor de Regras Inteligente</h3>
            <p className="lp-feature-card-desc">
              Cálculo instantâneo baseado nas relações de dimensionamento de equipamentos por leitos, salas cirúrgicas ou boxes de pronto-socorro.
            </p>
          </div>

          <div className="lp-feature-card">
            <div className="lp-feature-icon">
              <ShieldAlert size={24} />
            </div>
            <h3 className="lp-feature-card-title">Conformidade RDC 50</h3>
            <p className="lp-feature-card-desc">
              Todas as regras vêm pré-configuradas de acordo com as exigências da Vigilância Sanitária e resoluções complementares da Anvisa (como RDC 7).
            </p>
          </div>

          <div className="lp-feature-card">
            <div className="lp-feature-icon">
              <TrendingUp size={24} />
            </div>
            <h3 className="lp-feature-card-title">Orçamento Referencial</h3>
            <p className="lp-feature-card-desc">
              A base contém preços médios de mercado para os equipamentos, gerando um custo de investimento estimado global e por setor do hospital.
            </p>
          </div>

          <div className="lp-feature-card">
            <div className="lp-feature-icon">
              <FileText size={24} />
            </div>
            <h3 className="lp-feature-card-title">Relatórios Técnicos</h3>
            <p className="lp-feature-card-desc">
              Gere relatórios elegantes prontos para impressão em PDF ou exportação para planilhas CSV, contendo as premissas e justificativas regulatórias.
            </p>
          </div>

          <div className="lp-feature-card">
            <div className="lp-feature-icon">
              <ClipboardCheck size={24} />
            </div>
            <h3 className="lp-feature-card-title">Ajustes Clínicos Personalizados</h3>
            <p className="lp-feature-card-desc">
              Engenheiros Clínicos podem registrar justificativas técnicas para ajustar as quantidades recomendadas comerciais ou institucionais.
            </p>
          </div>

          <div className="lp-feature-card">
            <div className="lp-feature-icon">
              <BookOpen size={24} />
            </div>
            <h3 className="lp-feature-card-title">Manual de Uso Integrado</h3>
            <p className="lp-feature-card-desc">
              Documentação interna simples de como preencher cada parâmetro de entrada e os detalhes regulatórios por trás de cada fórmula de cálculo.
            </p>
          </div>
        </div>
      </section>

      {/* How it Works Section */}
      <section id="como-funciona" style={{ padding: '80px 20px', maxWidth: '1200px', margin: '0 auto' }}>
        <div className="lp-section-header">
          <h2 className="lp-section-title">Fluxo Simples em 5 Passos</h2>
          <p className="lp-section-subtitle">Como dimensionar sua unidade de saúde</p>
        </div>

        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(5, 1fr)', gap: '20px', textAlign: 'center' }}>
          {[
            { step: '1', title: 'Identificação', desc: 'Preencha os dados do projeto, localidade e o responsável técnico.' },
            { step: '2', title: 'Estrutura', desc: 'Selecione quais setores serão dimensionados (UTI, CME, Bloco Cirúrgico, etc.).' },
            { step: '3', title: 'Parâmetros', desc: 'Informe os dados assistenciais (número de leitos ou salas de exames).' },
            { step: '4', title: 'Dimensionamento', desc: 'Visualize a lista automática gerada. Se necessário, ajuste as quantidades.' },
            { step: '5', title: 'Relatório', desc: 'Exporte o orçamento e especificações em PDF impresso ou arquivo CSV.' }
          ].map((item, index) => (
            <div key={index} style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '12px' }}>
              <div style={{
                width: '40px',
                height: '40px',
                borderRadius: '50%',
                backgroundColor: 'var(--primary)',
                color: 'white',
                display: 'flex',
                alignItems: 'center',
                justifycontent: 'center',
                justifyContent: 'center',
                fontWeight: 'bold',
                fontSize: '1.1rem'
              }}>{item.step}</div>
              <h4 style={{ fontWeight: 'bold', color: 'var(--secondary)', fontSize: '1rem' }}>{item.title}</h4>
              <p style={{ fontSize: '0.8rem', color: 'var(--secondary-light)', lineHeight: '1.4' }}>{item.desc}</p>
            </div>
          ))}
        </div>
      </section>

      {/* Call to Action Banner */}
      <section className="lp-cta-banner">
        <div className="lp-cta-wrapper">
          <h2 className="lp-cta-title">Pronto para otimizar seus dimensionamentos?</h2>
          <p className="lp-cta-desc">
            Use de forma totalmente gratuita agora mesmo. Salve seus projetos no computador local ou registre-se para salvar em nuvem e ter backups automáticos.
          </p>
          <button className="btn btn-primary" style={{ padding: '14px 28px', backgroundColor: 'white', color: 'var(--secondary)', fontWeight: 700 }} onClick={onStartApp}>
            Acessar Sistema Grátis <ArrowRight size={18} />
          </button>
        </div>
      </section>

      {/* Footer */}
      <footer className="lp-footer">
        <p>&copy; {new Date().getFullYear()} PRODIME - Sistema Inteligente de Dimensionamento de Equipamentos Médicos. Todos os direitos reservados.</p>
        <p style={{ marginTop: '8px', fontSize: '0.8rem', color: '#475569' }}>Desenvolvido em conformidade com as diretrizes regulatórias da Anvisa RDC nº 50/2002.</p>
      </footer>
    </div>
  );
}
