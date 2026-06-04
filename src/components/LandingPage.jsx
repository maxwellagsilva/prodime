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

  return (
    <div className="lp-container">
      {/* Landing Page Header */}
      <header className="lp-header">
        <div className="lp-brand" style={{ cursor: 'pointer' }} onClick={() => onStartApp()}>
          <img src="/PRODIME.png" alt="PRODIME" style={{ height: '48px', width: 'auto', objectFit: 'contain' }} />
        </div>
        
        {/* Desktop Nav */}
        <nav className="lp-nav">
          <a href="#o-que-faz" className="lp-nav-link">O que faz</a>
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
                Criar estimativa
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
          <a href="#o-que-faz" className="lp-mobile-nav-link" onClick={() => setMobileMenuOpen(false)}>O que faz</a>
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
                Criar estimativa
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
            <Layers size={14} /> Sistema de apoio ao planejamento de equipamentos em saúde
          </span>
          <h1 className="lp-hero-title" style={{ fontSize: '2.5rem', lineHeight: '1.25', margin: '16px 0' }}>
            Estime equipamentos e investimentos para unidades de saúde a partir da estrutura informada
          </h1>
          <div className="lp-hero-description" style={{ display: 'flex', flexDirection: 'column', gap: '14px', fontSize: '1.02rem', lineHeight: '1.6', color: 'var(--secondary-light)', marginBottom: '24px' }}>
            <p>
              O PRODIME auxilia gestores, engenheiros clínicos, equipes técnicas e profissionais envolvidos no planejamento de unidades de saúde a estimar quantitativos de equipamentos médico-hospitalares e valores referenciais de investimento.
            </p>
            <p>
              O usuário cadastra as características do projeto, seleciona os ambientes ou setores disponíveis no sistema, informa os parâmetros solicitados e recebe um relatório com equipamentos estimados, quantidades sugeridas, valores referenciais e premissas utilizadas no cálculo.
            </p>
            <p style={{ fontSize: '0.92rem', color: '#64748b' }}>
              As regras de dimensionamento do PRODIME são previamente estruturadas com base em normas aplicáveis, referências técnicas e expertise dos criadores da ferramenta. O usuário final não altera as regras-base; ele informa os dados do projeto, analisa o resultado e, quando necessário, registra ajustes justificados no relatório.
            </p>
          </div>
          <div className="lp-cta-group">
            <button className="btn btn-primary" style={{ padding: '14px 28px', fontSize: '1rem' }} onClick={onStartApp}>
              Criar estimativa <ArrowRight size={18} />
            </button>
            {!user && (
              <button className="btn btn-secondary" style={{ padding: '14px 28px', fontSize: '1rem' }} onClick={onLoginClick}>
                Acessar sistema
              </button>
            )}
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

      {/* What it Does Section */}
      <section id="o-que-faz" className="lp-features-section" style={{ borderTop: '1px solid var(--border-color)', paddingTop: '60px' }}>
        <div className="lp-section-header">
          <h2 className="lp-section-title">Organiza uma estimativa técnica e financeira a partir dos dados do projeto</h2>
          <p className="lp-section-subtitle" style={{ maxWidth: '800px', margin: '12px auto 0 auto' }}>
            O sistema transforma informações sobre a estrutura da unidade de saúde em uma estimativa organizada de equipamentos, quantidades e investimento. O objetivo é apoiar estudos preliminares, planejamento orçamentário, análise de implantação, expansão, adequação ou reestruturação de serviços de saúde.
          </p>
        </div>

        <div className="lp-features-grid">
          <div className="lp-feature-card">
            <div className="lp-feature-icon"><FileText size={24} /></div>
            <h3 className="lp-feature-card-title">1. Cadastro do projeto</h3>
            <p className="lp-feature-card-desc">
              Registre as informações principais da estimativa, como identificação do projeto, unidade de saúde, localidade, responsável pelo preenchimento, observações gerais e demais dados necessários para organizar o relatório.
            </p>
          </div>

          <div className="lp-feature-card">
            <div className="lp-feature-icon"><Info size={24} /></div>
            <h3 className="lp-feature-card-title">2. Classificação da unidade</h3>
            <p className="lp-feature-card-desc">
              Informe características que ajudam a contextualizar o projeto, como perfil administrativo, tipo de projeto e tipo de estabelecimento. Essas informações não limitam o uso da ferramenta; elas ajudam a qualificar a análise e estruturar o relatório final.
            </p>
          </div>

          <div className="lp-feature-card">
            <div className="lp-feature-icon"><Layers size={24} /></div>
            <h3 className="lp-feature-card-title">3. Seleção de ambientes e setores</h3>
            <p className="lp-feature-card-desc">
              Escolha os ambientes, setores ou áreas assistenciais disponíveis no sistema que fazem parte da estimativa. O PRODIME foi pensado para evoluir continuamente, permitindo a inclusão de novas tipologias de unidade, novos setores e novos parâmetros de cálculo ao longo do tempo.
            </p>
          </div>

          <div className="lp-feature-card">
            <div className="lp-feature-icon"><Settings size={24} /></div>
            <h3 className="lp-feature-card-title">4. Preenchimento dos parâmetros</h3>
            <p className="lp-feature-card-desc">
              Informe os dados quantitativos solicitados para cada área selecionada, como capacidades físicas, assistenciais ou operacionais. Os parâmetros exibidos dependem dos setores e ambientes escolhidos no projeto.
            </p>
          </div>

          <div className="lp-feature-card">
            <div className="lp-feature-icon"><ClipboardList size={24} /></div>
            <h3 className="lp-feature-card-title">5. Aplicação de regras técnicas</h3>
            <p className="lp-feature-card-desc">
              O sistema aplica regras previamente cadastradas, construídas a partir de normas, referências técnicas e expertise dos criadores. Essas regras não são alteradas pelo usuário final, preservando a padronização do cálculo.
            </p>
          </div>

          <div className="lp-feature-card">
            <div className="lp-feature-icon"><FileCheck size={24} /></div>
            <h3 className="lp-feature-card-title">6. Relatório técnico-financeiro</h3>
            <p className="lp-feature-card-desc">
              Ao final, o PRODIME gera um relatório com a estrutura informada, equipamentos estimados, quantidades sugeridas, valores referenciais, custo por área, investimento total e observações importantes para análise.
            </p>
          </div>
        </div>
      </section>

      {/* How it Works Section */}
      <section id="como-funciona" style={{ padding: '80px 20px', maxWidth: '1200px', margin: '0 auto', borderTop: '1px solid var(--border-color)' }}>
        <div className="lp-section-header">
          <h2 className="lp-section-title">Do cadastro do projeto ao relatório final</h2>
          <p className="lp-section-subtitle">O PRODIME conduz o usuário por um fluxo simples, estruturado para transformar dados da unidade em uma estimativa técnica e financeira.</p>
        </div>

        <div className="lp-how-grid">
          {[
            { step: '1', title: 'Cadastro do projeto', desc: 'O usuário informa os dados gerais da estimativa, como nome do projeto, nome da unidade de saúde, responsável pelo preenchimento e observações relevantes. Essas informações ajudam a identificar o projeto e compor o relatório final.' },
            { step: '2', title: 'Perfil administrativo', desc: 'O usuário indica o perfil administrativo da unidade, como público, privado ou filantrópico. Essa informação ajuda a contextualizar a estimativa e pode ser útil para análises internas, planejamento orçamentário e organização documental.' },
            { step: '3', title: 'Tipo de projeto', desc: 'O usuário informa se a estimativa está relacionada a uma implantação do zero, ampliação, adequação, reestruturação ou outro tipo de planejamento disponível no sistema. Essa classificação ajuda a diferenciar projetos novos de intervenções em estruturas já existentes.' },
            { step: '4', title: 'Tipo de estabelecimento', desc: 'O usuário seleciona o tipo de estabelecimento ou serviço de saúde mais adequado entre as opções disponíveis no sistema. O PRODIME não se limita a uma única tipologia. A plataforma pode ser expandida para contemplar diferentes modelos de unidades, serviços, estruturas assistenciais e ambientes de apoio à saúde.' },
            { step: '5', title: 'Seleção dos setores e ambientes', desc: 'O usuário escolhe quais áreas cadastradas no sistema fazem parte do projeto. A lista de opções pode evoluir conforme novas regras, setores, ambientes e tipos de serviço forem adicionados ao PRODIME.' },
            { step: '6', title: 'Preenchimento dos parâmetros', desc: 'Para cada área selecionada, o sistema solicita os parâmetros necessários ao cálculo. Esses parâmetros podem variar conforme a estrutura cadastrada e podem representar capacidades físicas, assistenciais, operacionais ou funcionais do projeto.' },
            { step: '7', title: 'Cálculo da estimativa', desc: 'Com base nas informações fornecidas, o PRODIME aplica suas regras técnicas previamente estruturadas e gera uma estimativa de equipamentos, quantidades e valores referenciais.' },
            { step: '8', title: 'Revisão do resultado', desc: 'O usuário analisa o resultado apresentado. Quando necessário, pode ajustar a quantidade final de determinados equipamentos, registrando uma justificativa técnica. Esse ajuste não modifica a regra-base do sistema. Ele apenas documenta uma decisão específica daquele projeto.' },
            { step: '9', title: 'Emissão do relatório', desc: 'Ao final, o sistema gera um relatório com os dados do projeto, estrutura considerada, equipamentos estimados, quantidades, valores referenciais, investimento total e observações técnicas.' }
          ].map((item, index) => (
            <div key={index} style={{ display: 'flex', gap: '16px', backgroundColor: 'white', padding: '24px', borderRadius: '12px', border: '1px solid var(--border-color)', boxShadow: '0 4px 6px rgba(0,0,0,0.02)' }}>
              <div style={{
                minWidth: '36px',
                height: '36px',
                borderRadius: '50%',
                backgroundColor: 'var(--primary-bg)',
                color: 'var(--primary)',
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
                fontWeight: 'bold',
                fontSize: '1rem'
              }}>{item.step}</div>
              <div>
                <h4 style={{ fontWeight: 'bold', color: 'var(--secondary)', fontSize: '1.02rem', marginBottom: '8px', fontFamily: 'Outfit' }}>{item.title}</h4>
                <p style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', lineHeight: '1.5' }}>{item.desc}</p>
              </div>
            </div>
          ))}
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

      {/* Privacy and Confidentiality Section */}
      <section id="seguranca-dados" style={{ padding: '80px 20px', maxWidth: '1000px', margin: '0 auto' }}>
        <div style={{ display: 'flex', gap: '40px', alignItems: 'center', flexWrap: 'wrap' }}>
          <div style={{ flex: '1 1 400px', display: 'flex', flexDirection: 'column', gap: '16px' }}>
            <span className="lp-badge" style={{ width: 'fit-content', display: 'inline-flex', alignItems: 'center', gap: '6px' }}>
              <Lock size={14} /> Confidencialidade e Privacidade
            </span>
            <h2 style={{ fontFamily: 'Outfit', fontSize: '2rem', fontWeight: 700, color: 'var(--secondary)', lineHeight: '1.25' }}>
              Seus dados de projeto não são usados para venda, publicidade ou exposição pública
            </h2>
            <div style={{ fontSize: '0.98rem', color: 'var(--secondary-light)', lineHeight: '1.6', display: 'flex', flexDirection: 'column', gap: '12px' }}>
              <p>
                As informações inseridas no PRODIME são utilizadas para permitir o funcionamento da ferramenta, gerar estimativas, salvar projetos quando essa opção estiver disponível e emitir relatórios.
              </p>
              <p>
                O PRODIME não tem como finalidade vender dados de usuários, divulgar projetos, tornar informações públicas, criar perfis comerciais, espionar instituições ou utilizar dados de projetos para tomada de decisões externas.
              </p>
              <p>
                Projetos de unidades de saúde podem conter informações estratégicas, sensíveis ou confidenciais. Por isso, a plataforma deve tratar essas informações com responsabilidade, transparência e finalidade limitada.
              </p>
            </div>
          </div>
          <div style={{ flex: '1 1 300px', backgroundColor: '#f0fdf4', border: '1px solid #bbf7d0', borderRadius: '16px', padding: '30px', display: 'flex', flexDirection: 'column', gap: '16px' }}>
            <div style={{ width: '48px', height: '48px', borderRadius: '50%', backgroundColor: '#dcfce7', color: '#16a34a', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
              <Shield size={24} />
            </div>
            <h4 style={{ fontFamily: 'Outfit', fontSize: '1.15rem', fontWeight: 700, color: '#14532d' }}>Privacidade por Design</h4>
            <p style={{ fontSize: '0.88rem', color: '#166534', lineHeight: '1.5' }}>
              Focamos exclusivamente em dados de infraestrutura e operacionais. 
              <strong> Não insira dados pessoais de pacientes, prontuários ou informações clínicas individualizadas</strong> na plataforma.
            </p>
          </div>
        </div>
      </section>

      {/* Call to Action Banner */}
      <section className="lp-cta-banner" style={{ margin: '40px auto 0 auto' }}>
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
