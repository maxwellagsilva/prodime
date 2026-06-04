import React, { useState } from 'react';
import { 
  Shield, 
  ArrowRight,
  Info,
  HelpCircle,
  Lock,
  Layers,
  Settings,
  ClipboardList,
  FileCheck,
  TrendingUp,
  FileText,
  Menu,
  X
} from 'lucide-react';

export default function LandingPage({ 
  onStartApp, 
  onLoginClick, 
  user,
  onViewPrivacy,
  onViewTerms
}) {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);
  const [activeStep, setActiveStep] = useState(0);

  const steps = [
    {
      title: "1. Estruturação do Projeto",
      desc: "Registre os dados identificadores do seu projeto, perfil administrativo e tipo de estabelecimento para iniciar a estimativa de forma qualificada.",
      visual: (
        <div className="ui-mock-window">
          <div className="ui-mock-header">
            <div className="ui-mock-dot red"></div>
            <div className="ui-mock-dot yellow"></div>
            <div className="ui-mock-dot green"></div>
            <div className="ui-mock-title">Novo Projeto — Identificação</div>
          </div>
          <div className="ui-mock-content">
            <div className="ui-mock-field">
              <label className="ui-mock-label">Nome do Projeto</label>
              <div className="ui-mock-input">Expansão Ala Norte - Hospital Regional</div>
            </div>
            <div className="ui-mock-field">
              <label className="ui-mock-label">Perfil Administrativo</label>
              <div className="ui-mock-badge-grid">
                <div className="ui-mock-badge selected">Público (SUS)</div>
                <div className="ui-mock-badge">Privado</div>
              </div>
            </div>
          </div>
        </div>
      )
    },
    {
      title: "2. Seleção e Parâmetros",
      desc: "Escolha as áreas assistenciais e setores que farão parte da estimativa e preencha as capacidades físicas e operacionais solicitadas pelo sistema.",
      visual: (
        <div className="ui-mock-window">
          <div className="ui-mock-header">
            <div className="ui-mock-dot red"></div>
            <div className="ui-mock-dot yellow"></div>
            <div className="ui-mock-dot green"></div>
            <div className="ui-mock-title">Definição de Parâmetros</div>
          </div>
          <div className="ui-mock-content">
            <div className="ui-mock-field">
              <label className="ui-mock-label">UTI Adulto (Leitos)</label>
              <div className="ui-mock-input" style={{ textAlign: 'right', fontWeight: 'bold' }}>10</div>
            </div>
            <div className="ui-mock-field">
              <label className="ui-mock-label">Centro Cirúrgico (Salas)</label>
              <div className="ui-mock-input" style={{ textAlign: 'right', fontWeight: 'bold' }}>4</div>
            </div>
          </div>
        </div>
      )
    },
    {
      title: "3. Dimensionamento Técnico",
      desc: "O sistema processa instantaneamente as informações inseridas e aplica regras de dimensionamento previamente estruturadas, baseadas em normas vigentes.",
      visual: (
        <div className="ui-mock-window">
          <div className="ui-mock-header">
            <div className="ui-mock-dot red"></div>
            <div className="ui-mock-dot yellow"></div>
            <div className="ui-mock-dot green"></div>
            <div className="ui-mock-title">Processamento de Regras</div>
          </div>
          <div className="ui-mock-content" style={{ display: 'flex', flexDirection: 'column', gap: '8px' }}>
            <div style={{ fontSize: '0.75rem', color: '#15803d', backgroundColor: '#f0fdf4', padding: '10px', borderRadius: '6px', border: '1px solid #bbf7d0', display: 'flex', alignItems: 'center', gap: '8px' }}>
              <span>⚙️</span> Regras aplicadas com base na RDC 50 e normativas técnicas.
            </div>
            <div className="ui-mock-result-row">
              <span>Monitor Multiparamétrico</span>
              <strong>12 Unidades</strong>
            </div>
            <div className="ui-mock-result-row">
              <span>Cama Hospitalar Articulada</span>
              <strong>10 Unidades</strong>
            </div>
          </div>
        </div>
      )
    },
    {
      title: "4. Análise e Relatório",
      desc: "Analise a estimativa financeira e quantitativa gerada. Se necessário, ajuste as quantidades com justificativa técnica e exporte o relatório final completo.",
      visual: (
        <div className="ui-mock-window">
          <div className="ui-mock-header">
            <div className="ui-mock-dot red"></div>
            <div className="ui-mock-dot yellow"></div>
            <div className="ui-mock-dot green"></div>
            <div className="ui-mock-title">Relatório de Estimativa</div>
          </div>
          <div className="ui-mock-content">
            <div className="ui-mock-result-row bold">
              <span>Investimento Estimado</span>
              <span>R$ 1.420.000,00</span>
            </div>
            <div style={{ marginTop: '12px', fontSize: '0.7rem', color: 'var(--secondary-light)', border: '1px solid var(--border-color)', padding: '8px', borderRadius: '6px', backgroundColor: '#f8fafc' }}>
              📝 <em>Justificativa registrada para alteração de equipamentos por particularidades locais.</em>
            </div>
          </div>
        </div>
      )
    }
  ];

  return (
    <div className="lp-container">
      {/* Landing Page Header */}
      <header className="lp-header">
        <div className="lp-brand" style={{ cursor: 'pointer' }} onClick={() => onStartApp()}>
          <img src="/PRODIME.png" alt="PRODIME" style={{ height: '48px', width: 'auto', objectFit: 'contain' }} />
        </div>
        
        {/* Desktop Nav */}
        <nav className="lp-nav">
          <a href="#como-funciona" className="lp-nav-link">Como funciona</a>
          <a href="#seguranca-dados" className="lp-nav-link">Segurança dos dados</a>
          <a onClick={onViewTerms} className="lp-nav-link" style={{ cursor: 'pointer' }}>Termos de uso</a>
          {user ? (
            <button className="btn btn-primary" onClick={onStartApp}>
              Acessar Painel <ArrowRight size={16} />
            </button>
          ) : (
            <>
              <a onClick={onLoginClick} className="lp-nav-link" style={{ fontWeight: 600, cursor: 'pointer' }}>Entrar</a>
              <button className="btn btn-primary" onClick={onStartApp}>
                Acessar sistema
              </button>
            </>
          )}
        </nav>

        {/* Mobile Menu Toggle */}
        <button className="lp-menu-toggle" onClick={() => setMobileMenuOpen(!mobileMenuOpen)}>
          {mobileMenuOpen ? <X size={24} /> : <Menu size={24} />}
        </button>

        {/* Mobile Menu Drawer */}
        <div className={`lp-mobile-menu ${mobileMenuOpen ? 'active' : ''}`}>
          <a href="#como-funciona" className="lp-mobile-nav-link" onClick={() => setMobileMenuOpen(false)}>Como funciona</a>
          <a href="#seguranca-dados" className="lp-mobile-nav-link" onClick={() => setMobileMenuOpen(false)}>Segurança dos dados</a>
          <a onClick={() => { onViewTerms(); setMobileMenuOpen(false); }} className="lp-mobile-nav-link">Termos de uso</a>
          {user ? (
            <button className="btn btn-primary" style={{ width: '100%', marginTop: '12px' }} onClick={() => { onStartApp(); setMobileMenuOpen(false); }}>
              Acessar Painel <ArrowRight size={16} />
            </button>
          ) : (
            <div style={{ display: 'flex', flexDirection: 'column', gap: '12px', width: '100%', marginTop: '12px' }}>
              <button className="btn btn-secondary" style={{ width: '100%' }} onClick={() => { onLoginClick(); setMobileMenuOpen(false); }}>
                Entrar
              </button>
              <button className="btn btn-primary" style={{ width: '100%' }} onClick={() => { onStartApp(); setMobileMenuOpen(false); }}>
                Acessar sistema
              </button>
            </div>
          )}
        </div>
        {mobileMenuOpen && <div className="lp-mobile-menu-overlay" onClick={() => setMobileMenuOpen(false)} />}
      </header>

      {/* Hero Section */}
      <section className="lp-hero">
        <div className="lp-hero-content">
          <span className="lp-badge" style={{ display: 'inline-flex', alignItems: 'center', gap: '6px' }}>
            <Layers size={14} /> Planejamento inteligente de equipamentos em saúde
          </span>
          <h1 className="lp-hero-title" style={{ fontSize: '2.5rem', lineHeight: '1.25', margin: '16px 0' }}>
            Dimensione equipamentos e planeje investimentos de saúde em minutos.
          </h1>
          <div className="lp-hero-description" style={{ display: 'flex', flexDirection: 'column', gap: '14px', fontSize: '1.02rem', lineHeight: '1.6', color: 'var(--secondary-light)', marginBottom: '24px' }}>
            <p>
              O PRODIME auxilia gestores, engenheiros clínicos e equipes técnicas a estimar quantitativos de equipamentos médico-hospitalares e valores referenciais de investimento com agilidade e rigor técnico.
            </p>
            <div style={{ display: 'flex', flexDirection: 'column', gap: '10px', marginTop: '8px' }}>
              <div style={{ display: 'flex', alignItems: 'center', gap: '8px', fontSize: '0.95rem', color: 'var(--secondary)' }}>
                <span style={{ color: 'var(--primary)', fontWeight: 'bold' }}>✓</span> Dimensionamento rápido com base na estrutura informada
              </div>
              <div style={{ display: 'flex', alignItems: 'center', gap: '8px', fontSize: '0.95rem', color: 'var(--secondary)' }}>
                <span style={{ color: 'var(--primary)', fontWeight: 'bold' }}>✓</span> Regras técnicas pré-estruturadas segundo diretrizes sanitárias
              </div>
              <div style={{ display: 'flex', alignItems: 'center', gap: '8px', fontSize: '0.95rem', color: 'var(--secondary)' }}>
                <span style={{ color: 'var(--primary)', fontWeight: 'bold' }}>✓</span> Relatórios detalhados com valores de investimento de referência
              </div>
            </div>
          </div>
          <div className="lp-cta-group">
            <button className="btn btn-primary" style={{ padding: '14px 28px', fontSize: '1rem' }} onClick={onStartApp}>
              Criar estimativa <ArrowRight size={18} />
            </button>
          </div>
        </div>
        <div className="lp-hero-image-container">
          <div className="lp-hero-image-wrapper" style={{ width: '100%', maxWidth: '600px', overflow: 'hidden', borderRadius: 'var(--radius-lg)' }}>
            <video 
              src="/herovideo.mp4" 
              className="lp-hero-image" 
              style={{ width: '100%', height: 'auto', display: 'block', borderRadius: 'var(--radius-md)', objectFit: 'contain' }} 
              autoPlay 
              loop 
              muted 
              playsInline 
            />
          </div>
        </div>
      </section>

      {/* Importante Alert Section */}
      <section className="no-print" style={{ backgroundColor: '#fffbeb', border: '1px solid #fef3c7', borderRadius: '12px', padding: '24px', maxWidth: '1200px', margin: '0 auto 40px auto', display: 'flex', gap: '16px', alignItems: 'flex-start' }}>
        <div style={{ backgroundColor: '#fef3c7', color: '#d97706', borderRadius: '50%', padding: '8px', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
          <Info size={24} />
        </div>
        <div>
          <h4 style={{ fontWeight: 'bold', color: '#92400e', fontSize: '1.05rem', marginBottom: '6px', fontFamily: 'Outfit' }}>Importante</h4>
          <p style={{ fontSize: '0.92rem', color: '#b45309', lineHeight: '1.5' }}>
            O PRODIME é uma ferramenta de apoio ao planejamento. Os resultados apresentados possuem caráter estimativo e referencial. Eles não substituem a análise do gestor responsável, de profissional técnico habilitado, da engenharia clínica, de projetos executivos, de especificações formais de compra, de cotações de mercado ou da avaliação dos órgãos competentes.
          </p>
        </div>
      </section>

      {/* How it Works Section - Interactive */}
      <section id="como-funciona" className="lp-features-section" style={{ borderTop: '1px solid var(--border-color)', paddingTop: '80px', paddingBottom: '80px' }}>
        <div className="lp-section-header" style={{ marginBottom: '50px' }}>
          <span className="lp-badge" style={{ margin: '0 auto', display: 'inline-flex', alignItems: 'center', gap: '6px' }}>
            Fluxo de Trabalho
          </span>
          <h2 className="lp-section-title">Do cadastro ao relatório final em poucos passos</h2>
          <p className="lp-section-subtitle">
            Conheça o processo simples e estruturado do PRODIME para calcular o quantitativo e o investimento necessário para equipamentos de saúde.
          </p>
        </div>

        <div className="lp-how-interactive-container">
          {/* Sidebar steps list */}
          <div className="lp-steps-sidebar">
            {steps.map((item, idx) => (
              <div 
                key={idx} 
                className={`lp-interactive-step-card ${activeStep === idx ? 'active' : ''}`}
                onClick={() => setActiveStep(idx)}
              >
                <div className="lp-step-num">{idx + 1}</div>
                <div className="lp-step-info">
                  <h4 className="lp-step-title-text">{item.title.split('. ')[1] || item.title}</h4>
                  <p className="lp-step-desc-text">{item.desc}</p>
                </div>
              </div>
            ))}
          </div>

          {/* Interactive preview box */}
          <div className="lp-interactive-preview">
            <div className="lp-preview-visual" key={activeStep}>
              {steps[activeStep].visual}
            </div>
          </div>
        </div>
      </section>

      {/* How Rules are Defined Section */}
      <section style={{ backgroundColor: '#f8fafc', padding: '80px 20px', borderTop: '1px solid var(--border-color)', borderBottom: '1px solid var(--border-color)' }}>
        <div style={{ maxWidth: '800px', margin: '0 auto', textAlign: 'center', display: 'flex', flexDirection: 'column', gap: '20px' }}>
          <span className="lp-badge" style={{ margin: '0 auto', display: 'inline-flex', alignItems: 'center', gap: '6px' }}>
            <ClipboardList size={14} /> Padronização e Rigor Técnico
          </span>
          <h2 style={{ fontFamily: 'Outfit', fontSize: '2rem', fontWeight: 700, color: 'var(--secondary)' }}>
            Regras criadas com base técnica e mantidas de forma padronizada
          </h2>
          <div style={{ fontSize: '1.02rem', color: 'var(--secondary-light)', lineHeight: '1.7', display: 'flex', flexDirection: 'column', gap: '14px', textAlign: 'left' }}>
            <p>
              As regras de dimensionamento do PRODIME são elaboradas previamente pelos criadores da ferramenta com base em normas aplicáveis, referências técnicas, práticas de planejamento em saúde e expertise profissional.
            </p>
            <p>
              O usuário final não edita essas regras-base. Essa decisão preserva a padronização, reduz o risco de alterações indevidas e mantém maior rastreabilidade dos resultados gerados pelo sistema.
            </p>
            <p>
              Durante a análise de um projeto, o usuário pode revisar as quantidades sugeridas e registrar ajustes finais com justificativa. Esse ajuste fica documentado no relatório, mas não altera a lógica original de cálculo utilizada pelo PRODIME.
            </p>
          </div>
        </div>
      </section>

      {/* Security & Confidentiality Highlight */}
      <section id="seguranca-dados" style={{ padding: '50px 20px', backgroundColor: 'white' }}>
        <div style={{ maxWidth: '1000px', margin: '0 auto', display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '24px', flexWrap: 'wrap' }}>
          <div style={{ backgroundColor: '#f0fdf4', color: '#16a34a', borderRadius: '50%', width: '56px', height: '56px', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0, border: '1px solid #bbf7d0' }}>
            <Shield size={28} />
          </div>
          <div style={{ flex: '1 1 500px' }}>
            <h4 style={{ fontFamily: 'Outfit', fontWeight: 700, color: 'var(--secondary)', fontSize: '1.2rem', marginBottom: '6px' }}>Confidencialidade e Privacidade por Design</h4>
            <p style={{ fontSize: '0.92rem', color: 'var(--secondary-light)', lineHeight: '1.6' }}>
              Trabalhamos exclusivamente com dados operacionais e de infraestrutura. Seus dados de projeto são sigilosos e não comercializados ou expostos. <strong style={{ color: 'var(--secondary)' }}>Não insira informações pessoais de pacientes ou clínicas</strong> na plataforma. Saiba mais lendo nossa <a onClick={onViewPrivacy} style={{ color: 'var(--primary)', fontWeight: 600, cursor: 'pointer', textDecoration: 'underline' }}>Política de Privacidade</a>.
            </p>
          </div>
        </div>
      </section>

      {/* Call to Action Banner */}
      <section className="lp-cta-banner" style={{ margin: '0', width: '100%' }}>
        <div className="lp-cta-wrapper">
          <h2 className="lp-cta-title">Crie uma estimativa antes de avançar para decisões de investimento</h2>
          <p className="lp-cta-desc" style={{ maxWidth: '800px', margin: '0 auto 24px auto', lineHeight: '1.6' }}>
            Use o PRODIME para estruturar uma visão inicial de equipamentos, quantidades e valores referenciais a partir das informações do projeto.
            A estimativa gerada serve como apoio ao planejamento e deve sempre ser analisada pelo gestor responsável e por profissionais habilitados antes de qualquer decisão de compra, implantação ou adequação.
          </p>
          <button className="btn btn-primary" style={{ padding: '14px 28px', backgroundColor: 'white', color: 'var(--secondary)', fontWeight: 700 }} onClick={onStartApp}>
            Criar estimativa <ArrowRight size={18} />
          </button>
        </div>
      </section>

      {/* Footer */}
      <footer className="lp-footer" style={{ borderTop: '1px solid var(--border-color)', padding: '40px 20px', backgroundColor: '#f8fafc', color: 'var(--secondary)' }}>
        <div style={{ maxWidth: '1200px', margin: '0 auto', display: 'flex', flexDirection: 'column', gap: '20px', textAlign: 'center' }}>
          <p style={{ fontWeight: 600 }}>© 2026 PRODIME — Sistema de apoio ao dimensionamento e estimativa de equipamentos médico-hospitalares.</p>
          <p style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', maxWidth: '900px', margin: '0 auto', lineHeight: '1.5' }}>
            Os resultados gerados pelo sistema são estimativos e não substituem análise técnica, validação institucional, projeto executivo, especificação formal de compra ou aprovação de órgãos competentes.
          </p>
          <div style={{ display: 'flex', justifyContent: 'center', gap: '20px', fontSize: '0.88rem', fontWeight: 600, marginTop: '10px' }}>
            <a onClick={onViewPrivacy} style={{ color: 'var(--primary)', cursor: 'pointer' }}>Política de Privacidade</a>
            <span style={{ color: 'var(--border-color)' }}>|</span>
            <a onClick={onViewTerms} style={{ color: 'var(--primary)', cursor: 'pointer' }}>Termos de Uso</a>
            <span style={{ color: 'var(--border-color)' }}>|</span>
            <a href="#o-que-faz" style={{ color: 'var(--primary)' }}>Aviso de Responsabilidade</a>
            <span style={{ color: 'var(--border-color)' }}>|</span>
            <a href="mailto:contato@prodime.com.br" style={{ color: 'var(--primary)' }}>Contato</a>
          </div>
        </div>
      </footer>
    </div>
  );
}
