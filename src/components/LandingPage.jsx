import React, { useState, useEffect, useRef } from 'react';
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
  X,
  Stethoscope,
  Building2,
  Users,
  Clock,
  Lightbulb,
  Target
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
  const stepRefs = useRef([]);

  useEffect(() => {
    const handleScroll = () => {
      const viewportMid = window.innerHeight / 2;
      let closestIdx = 0;
      let closestDist = Infinity;

      stepRefs.current.forEach((el, idx) => {
        if (!el) return;
        const rect = el.getBoundingClientRect();
        const elMid = (rect.top + rect.bottom) / 2;
        const dist = Math.abs(elMid - viewportMid);
        if (dist < closestDist) {
          closestDist = dist;
          closestIdx = idx;
        }
      });

      setActiveStep(closestIdx);
    };

    window.addEventListener('scroll', handleScroll, { passive: true });
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);


  const steps = [
    {
      title: "1. Cadastro",
      desc: "Registre os dados identificadores do seu projeto, perfil administrativo e tipo de estabelecimento para iniciar a estimativa de forma qualificada.",
      img: "/step1.png"
    },
    {
      title: "2. Ambientes",
      desc: "Escolha as áreas assistenciais e setores que farão parte da estimativa e preencha as capacidades físicas e operacionais solicitadas pelo sistema.",
      img: "/step2.png"
    },
    {
      title: "3. Parâmetros",
      desc: "O sistema processa instantaneamente as informações inseridas e aplica regras de dimensionamento previamente estruturadas, baseadas em normas vigentes.",
      img: "/step3.png"
    },
    {
      title: "4. Ajustes",
      desc: "Analise a estimativa gerada. Se necessário, ajuste as quantidades com justificativa técnica antes de exportar o relatório final.",
      img: "/step4.png"
    },
    {
      title: "5. Relatório",
      desc: "Exporte o relatório final completo com estimativa financeira, quantitativo de equipamentos e justificativas registradas ao longo do processo.",
      img: "/step5.png"
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
          <a href="#para-quem-e" className="lp-nav-link">Para quem é</a>
          <a href="#sobre" className="lp-nav-link">Sobre o PRODIME</a>
          {user ? (
            <button className="btn btn-primary" onClick={onStartApp}>
              Acessar Painel <ArrowRight size={16} />
            </button>
          ) : (
            <button className="btn btn-primary" onClick={onStartApp}>
              Acessar sistema
            </button>
          )}
        </nav>

        {/* Mobile Menu Toggle */}
        <button className="lp-menu-toggle" onClick={() => setMobileMenuOpen(!mobileMenuOpen)}>
          {mobileMenuOpen ? <X size={24} /> : <Menu size={24} />}
        </button>

        {/* Mobile Menu Drawer */}
        <div className={`lp-mobile-menu ${mobileMenuOpen ? 'active' : ''}`}>
          <a href="#como-funciona" className="lp-mobile-nav-link" onClick={() => setMobileMenuOpen(false)}>Como funciona</a>
          <a href="#para-quem-e" className="lp-mobile-nav-link" onClick={() => setMobileMenuOpen(false)}>Para quem é</a>
          <a href="#sobre" className="lp-mobile-nav-link" onClick={() => setMobileMenuOpen(false)}>Sobre o PRODIME</a>
          {user ? (
            <button className="btn btn-primary" style={{ width: '100%', marginTop: '12px' }} onClick={() => { onStartApp(); setMobileMenuOpen(false); }}>
              Acessar Painel <ArrowRight size={16} />
            </button>
          ) : (
            <button className="btn btn-primary" style={{ width: '100%', marginTop: '12px' }} onClick={() => { onStartApp(); setMobileMenuOpen(false); }}>
              Acessar sistema
            </button>
          )}
        </div>
        {mobileMenuOpen && <div className="lp-mobile-menu-overlay" onClick={() => setMobileMenuOpen(false)} />}
      </header>

      {/* Hero Section */}
      <section className="lp-hero">
        <div className="lp-hero-content">
          <span className="lp-badge" style={{ display: 'inline-flex', alignItems: 'center', gap: '6px' }}>
            <Layers size={14} /> Programa de dimensionamento de parque de equipamentos médicos
          </span>
          <h1 className="lp-hero-title" style={{ fontSize: '2.5rem', lineHeight: '1.25', margin: '16px 0' }}>
            Dimensione o parque de equipamentos médicos do seu projeto em minutos.
          </h1>
          <div className="lp-hero-description" style={{ display: 'flex', flexDirection: 'column', gap: '14px', fontSize: '1.02rem', lineHeight: '1.6', color: 'var(--secondary-light)', marginBottom: '24px' }}>
            <p>
              O PRODIME é um sistema que auxilia engenheiros clínicos e gestores da area da saúde a estimar quais equipamentos, as quantidades e qual o tamanho do investimento com agilidade e rigor técnico.
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
          <div className="lp-hero-image-wrapper">
            <video 
              src="/herovideo.mp4" 
              className="lp-hero-image" 
              autoPlay 
              loop 
              muted 
              playsInline 
            />
          </div>
        </div>
      </section>

      {/* Importante Alert Section */}
      <div className="no-print" style={{ padding: '0 80px', maxWidth: '1440px', margin: '0 auto 40px auto', boxSizing: 'border-box' }}>
        <section style={{ backgroundColor: '#fffbeb', border: '1px solid #fef3c7', borderRadius: '12px', padding: '24px', display: 'flex', gap: '16px', alignItems: 'flex-start' }}>
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
      </div>

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
          {/* Sidebar steps list — scrolls normally */}
          <div className="lp-steps-sidebar">
            {steps.map((item, idx) => (
              <div
                key={idx}
                ref={el => stepRefs.current[idx] = el}
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

          {/* Sticky image panel */}
          <div className="lp-interactive-preview">
            <div className="lp-preview-visual" key={activeStep}>
              <img
                src={steps[activeStep].img}
                alt={steps[activeStep].title}
                style={{ width: '100%', height: 'auto', display: 'block' }}
              />
            </div>
          </div>
        </div>
      </section>

      {/* How Rules are Defined Section */}
      <section style={{ backgroundColor: '#f8fafc', padding: '80px', borderTop: '1px solid var(--border-color)', borderBottom: '1px solid var(--border-color)' }}>
        <div style={{ maxWidth: '1200px', margin: '0 auto', textAlign: 'center', display: 'flex', flexDirection: 'column', gap: '20px' }}>
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


      {/* Para quem é Section */}
      <section id="para-quem-e" style={{ backgroundColor: 'white', padding: '80px' }}>
        <div style={{ maxWidth: '1200px', margin: '0 auto' }}>
          <div style={{ textAlign: 'center', marginBottom: '56px' }}>
            <span className="lp-badge" style={{ margin: '0 auto 16px auto', display: 'inline-flex', alignItems: 'center', gap: '6px' }}>
              <Users size={14} /> Público-alvo
            </span>
            <h2 style={{ fontFamily: 'Outfit', fontSize: '2rem', fontWeight: 700, color: 'var(--secondary)', marginBottom: '16px' }}>
              Feito para quem planeja infraestrutura hospitalar
            </h2>
            <p style={{ fontSize: '1.02rem', color: 'var(--secondary-light)', lineHeight: '1.7' }}>
              O PRODIME foi desenvolvido para profissionais que precisam de respostas rápidas e tecnicamente embasadas na fase de planejamento de projetos de saúde.
            </p>
          </div>

          <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(280px, 1fr))', gap: '24px' }}>

            <div style={{ border: '1px solid var(--border-color)', borderRadius: '16px', padding: '32px', backgroundColor: '#f8fafc', transition: 'box-shadow 0.2s' }}>
              <div style={{ width: '48px', height: '48px', borderRadius: '12px', backgroundColor: 'var(--primary-subtle)', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '20px' }}>
                <Stethoscope size={24} color="var(--primary)" />
              </div>
              <h3 style={{ fontFamily: 'Outfit', fontSize: '1.15rem', fontWeight: 700, color: 'var(--secondary)', marginBottom: '10px' }}>Engenheiros Clínicos</h3>
              <p style={{ fontSize: '0.92rem', color: 'var(--secondary-light)', lineHeight: '1.65' }}>
                Profissionais que conduzem estudos de viabilidade, elaboram diagnósticos situacionais ou apoiam processos licitatórios precisam de estimativas rápidas e rastreáveis. O PRODIME estrutura esse trabalho em minutos.
              </p>
            </div>

            <div style={{ border: '1px solid var(--border-color)', borderRadius: '16px', padding: '32px', backgroundColor: '#f8fafc' }}>
              <div style={{ width: '48px', height: '48px', borderRadius: '12px', backgroundColor: '#f0fdf4', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '20px' }}>
                <Building2 size={24} color="#16a34a" />
              </div>
              <h3 style={{ fontFamily: 'Outfit', fontSize: '1.15rem', fontWeight: 700, color: 'var(--secondary)', marginBottom: '10px' }}>Gestores Hospitalares</h3>
              <p style={{ fontSize: '0.92rem', color: 'var(--secondary-light)', lineHeight: '1.65' }}>
                Diretores e coordenadores que precisam apresentar propostas de investimento em expansão, reforma ou implantação de novas unidades têm no PRODIME um ponto de partida sólido para embasar decisões estratégicas.
              </p>
            </div>

            <div style={{ border: '1px solid var(--border-color)', borderRadius: '16px', padding: '32px', backgroundColor: '#f8fafc' }}>
              <div style={{ width: '48px', height: '48px', borderRadius: '12px', backgroundColor: '#faf5ff', display: 'flex', alignItems: 'center', justifyContent: 'center', marginBottom: '20px' }}>
                <Target size={24} color="#a855f7" />
              </div>
              <h3 style={{ fontFamily: 'Outfit', fontSize: '1.15rem', fontWeight: 700, color: 'var(--secondary)', marginBottom: '10px' }}>Consultores e Escritórios de Projetos</h3>
              <p style={{ fontSize: '0.92rem', color: 'var(--secondary-light)', lineHeight: '1.65' }}>
                Empresas e consultores especializados em planejamento de saúde utilizam o PRODIME para agilizar a fase de pré-projeto, padronizar estimativas entre equipes e entregar propostas mais rápidas e consistentes aos clientes.
              </p>
            </div>

          </div>
        </div>
      </section>

      {/* Sobre o PRODIME Section */}
      <section id="sobre" style={{ backgroundColor: 'var(--secondary)', padding: '80px', position: 'relative', overflow: 'hidden' }}>
        {/* Decorative background elements */}
        <div style={{ position: 'absolute', top: '-60px', right: '-60px', width: '300px', height: '300px', borderRadius: '50%', background: 'rgba(255,255,255,0.03)', pointerEvents: 'none' }} />
        <div style={{ position: 'absolute', bottom: '-80px', left: '-80px', width: '400px', height: '400px', borderRadius: '50%', background: 'rgba(255,255,255,0.02)', pointerEvents: 'none' }} />

        <div style={{ maxWidth: '1200px', margin: '0 auto', position: 'relative', zIndex: 1 }}>
          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '80px', alignItems: 'center' }}>

            {/* Left: story */}
            <div style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
              <span className="lp-badge" style={{ display: 'inline-flex', alignItems: 'center', gap: '6px', width: 'fit-content', backgroundColor: 'rgba(255,255,255,0.1)', color: 'rgba(255,255,255,0.85)', border: '1px solid rgba(255,255,255,0.15)' }}>
                <Lightbulb size={14} /> A origem do PRODIME
              </span>
              <h2 style={{ fontFamily: 'Outfit', fontSize: '2rem', fontWeight: 700, color: 'white', lineHeight: '1.3' }}>
                Nasceu de um problema real — e urgente.
              </h2>
              <div style={{ display: 'flex', flexDirection: 'column', gap: '18px', fontSize: '1.02rem', color: 'rgba(255,255,255,0.72)', lineHeight: '1.75' }}>
                <p>
                  Quem trabalha com planejamento hospitalar conhece bem a cena: uma reunião de diretoria, uma proposta de expansão na pauta, e a pergunta inevitável — <em style={{ color: 'rgba(255,255,255,0.9)' }}>"Qual seria o investimento em equipamentos para esse projeto?"</em>
                </p>
                <p>
                  A resposta honesta, quase sempre, era: <em style={{ color: 'rgba(255,255,255,0.9)' }}>"Preciso de algumas semanas."</em> Porque estimar o parque tecnológico de uma unidade de saúde de forma correta não é simples. É necessário levantar os ambientes, cruzar com normas técnicas e sanitárias, consultar referências de mercado, montar planilhas extensas — e ainda assim lidar com revisões a cada mudança de escopo.
                </p>
                <p>
                  O PRODIME surgiu dessa frustração. Da percepção de que esse processo poderia ser mais inteligente: com regras técnicas pré-estruturadas, baseadas em normas vigentes e experiência de campo, aplicadas de forma rápida e consistente a qualquer tipo de projeto.
                </p>
              </div>
            </div>

            {/* Right: highlights */}
            <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>

              <div style={{ backgroundColor: 'rgba(255,255,255,0.06)', border: '1px solid rgba(255,255,255,0.1)', borderRadius: '14px', padding: '28px', display: 'flex', gap: '20px', alignItems: 'flex-start' }}>
                <div style={{ width: '44px', height: '44px', borderRadius: '10px', backgroundColor: 'rgba(255,255,255,0.1)', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
                  <Clock size={22} color="white" />
                </div>
                <div>
                  <h4 style={{ fontFamily: 'Outfit', fontWeight: 700, color: 'white', fontSize: '1rem', marginBottom: '6px' }}>Do que levava semanas para minutos</h4>
                  <p style={{ fontSize: '0.88rem', color: 'rgba(255,255,255,0.65)', lineHeight: '1.6' }}>A estrutura de regras do PRODIME comprime horas de levantamento manual em um processo guiado de poucos minutos — sem abrir mão da base técnica.</p>
                </div>
              </div>

              <div style={{ backgroundColor: 'rgba(255,255,255,0.06)', border: '1px solid rgba(255,255,255,0.1)', borderRadius: '14px', padding: '28px', display: 'flex', gap: '20px', alignItems: 'flex-start' }}>
                <div style={{ width: '44px', height: '44px', borderRadius: '10px', backgroundColor: 'rgba(255,255,255,0.1)', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
                  <ClipboardList size={22} color="white" />
                </div>
                <div>
                  <h4 style={{ fontFamily: 'Outfit', fontWeight: 700, color: 'white', fontSize: '1rem', marginBottom: '6px' }}>Baseado em normas e experiência real</h4>
                  <p style={{ fontSize: '0.88rem', color: 'rgba(255,255,255,0.65)', lineHeight: '1.6' }}>As regras de dimensionamento foram construídas a partir de normativas técnicas, resoluções sanitárias e vivência prática em projetos hospitalares de diferentes portes e perfis.</p>
                </div>
              </div>

              <div style={{ backgroundColor: 'rgba(255,255,255,0.06)', border: '1px solid rgba(255,255,255,0.1)', borderRadius: '14px', padding: '28px', display: 'flex', gap: '20px', alignItems: 'flex-start' }}>
                <div style={{ width: '44px', height: '44px', borderRadius: '10px', backgroundColor: 'rgba(255,255,255,0.1)', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
                  <TrendingUp size={22} color="white" />
                </div>
                <div>
                  <h4 style={{ fontFamily: 'Outfit', fontWeight: 700, color: 'white', fontSize: '1rem', marginBottom: '6px' }}>Uma ferramenta em evolução contínua</h4>
                  <p style={{ fontSize: '0.88rem', color: 'rgba(255,255,255,0.65)', lineHeight: '1.6' }}>O PRODIME continua sendo desenvolvido com base no uso real por engenheiros clínicos e gestores — incorporando novos ambientes, setores e melhorias à medida que surgem novas demandas do setor.</p>
                </div>
              </div>

            </div>
          </div>
        </div>
      </section>

      {/* Call to Action Banner */}
      <section className="lp-cta-banner" style={{ margin: '0', width: '100%' }}>
        <div className="lp-cta-wrapper">
          <h2 className="lp-cta-title">Crie uma estimativa antes de avançar para decisões de investimento</h2>
          <p className="lp-cta-desc" style={{ margin: '0 auto 24px auto', lineHeight: '1.6' }}>
            Use o PRODIME para estruturar uma visão inicial de equipamentos, quantidades e valores referenciais a partir das informações do projeto.
            A estimativa gerada serve como apoio ao planejamento e deve sempre ser analisada pelo gestor responsável e por profissionais habilitados antes de qualquer decisão de compra, implantação ou adequação.
          </p>
          <button className="btn btn-primary lp-cta-button" onClick={onStartApp}>
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
          </div>
        </div>
      </footer>
    </div>
  );
}
