import React from 'react';
import { 
  HelpCircle, 
  BookOpen, 
  Layers, 
  Sliders, 
  FileText, 
  Mail, 
  MessageSquare,
  ArrowRight
} from 'lucide-react';

export default function HelpView() {
  return (
    <div style={{ display: 'grid', gridTemplateColumns: '2fr 1.1fr', gap: '16px', alignItems: 'start' }} className="wizard-layout-grid">
      {/* Left Column: Documentation / Steps */}
      <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '16px', padding: '20px' }}>
        <div>
          <h2 className="card-title" style={{ display: 'flex', alignItems: 'center', gap: '8px', fontSize: '1.2rem', fontFamily: 'var(--font-display)', fontWeight: 700 }}>
            <HelpCircle size={22} style={{ color: 'var(--primary)' }} /> Central de Ajuda & Como Usar
          </h2>
          <p style={{ fontSize: '0.82rem', color: 'var(--secondary-light)', marginTop: '6px', lineHeight: '1.5' }}>
            O PRODIME é um sistema inteligente de dimensionamento de equipamentos médicos com base nas normas da Anvisa (RDC 50, RDC 7 e demais legislações vigentes). Siga o passo a passo abaixo para realizar seus planejamentos.
          </p>
        </div>

        <hr style={{ border: 'none', borderTop: '1px solid var(--border-color)', margin: 0 }} />

        {/* Step-by-step Guide */}
        <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
          
          <div style={{ display: 'flex', gap: '12px', alignItems: 'start' }}>
            <div style={{ backgroundColor: 'rgba(20, 83, 45, 0.08)', color: 'var(--primary)', borderRadius: '10px', padding: '8px', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
              <FileText size={18} />
            </div>
            <div>
              <h3 style={{ fontSize: '0.92rem', fontWeight: 700, color: 'var(--secondary)', marginBottom: '4px', fontFamily: 'var(--font-display)' }}>1. Cadastre os Dados Gerais</h3>
              <p style={{ fontSize: '0.78rem', color: 'var(--secondary-light)', lineHeight: '1.4' }}>
                Cadastre a estimativa, informe a instituição e o Tipo de Estabelecimento (ex: Hospital, UBS, Clínica), que define quais setores estarão elegíveis para o projeto.
              </p>
            </div>
          </div>

          <div style={{ display: 'flex', gap: '12px', alignItems: 'start' }}>
            <div style={{ backgroundColor: 'rgba(20, 83, 45, 0.08)', color: 'var(--primary)', borderRadius: '10px', padding: '8px', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
              <Layers size={18} />
            </div>
            <div>
              <h3 style={{ fontSize: '0.92rem', fontWeight: 700, color: 'var(--secondary)', marginBottom: '4px', fontFamily: 'var(--font-display)' }}>2. Escolha as Áreas e Setores</h3>
              <p style={{ fontSize: '0.78rem', color: 'var(--secondary-light)', lineHeight: '1.4' }}>
                Selecione as áreas que serão dimensionadas (ex: UTI, Centro Cirúrgico, CME). O sistema carrega os ambientes correspondentes com base na RDC 50.
              </p>
            </div>
          </div>

          <div style={{ display: 'flex', gap: '12px', alignItems: 'start' }}>
            <div style={{ backgroundColor: 'rgba(20, 83, 45, 0.08)', color: 'var(--primary)', borderRadius: '10px', padding: '8px', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
              <Sliders size={18} />
            </div>
            <div>
              <h3 style={{ fontSize: '0.92rem', fontWeight: 700, color: 'var(--secondary)', marginBottom: '4px', fontFamily: 'var(--font-display)' }}>3. Insira as Capacidades Operacionais</h3>
              <p style={{ fontSize: '0.78rem', color: 'var(--secondary-light)', lineHeight: '1.4' }}>
                Informe os parâmetros operacionais de cada setor (ex: leitos, salas cirúrgicas). O sistema calcula as quantidades com base nas fórmulas da Anvisa.
              </p>
            </div>
          </div>

          <div style={{ display: 'flex', gap: '12px', alignItems: 'start' }}>
            <div style={{ backgroundColor: 'rgba(20, 83, 45, 0.08)', color: 'var(--primary)', borderRadius: '10px', padding: '8px', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0 }}>
              <BookOpen size={18} />
            </div>
            <div>
              <h3 style={{ fontSize: '0.92rem', fontWeight: 700, color: 'var(--secondary)', marginBottom: '4px', fontFamily: 'var(--font-display)' }}>4. Revise os Resultados e Faça Ajustes</h3>
              <p style={{ fontSize: '0.78rem', color: 'var(--secondary-light)', lineHeight: '1.4' }}>
                Revise a estimativa gerada. Se necessário, ajuste as quantidades inserindo uma justificativa técnica e exporte o relatório final para Excel ou CSV.
              </p>
            </div>
          </div>

        </div>
      </div>

      {/* Right Column: Support / Contact */}
      <div style={{ display: 'flex', flexDirection: 'column', gap: '12px' }}>
        <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '14px', padding: '16px 20px' }}>
          <h2 className="card-title" style={{ display: 'flex', alignItems: 'center', gap: '8px', fontSize: '1.15rem', fontFamily: 'var(--font-display)', fontWeight: 700 }}>
            <MessageSquare size={20} style={{ color: 'var(--primary)' }} /> Suporte Técnico
          </h2>
          <p style={{ fontSize: '0.78rem', color: 'var(--secondary-light)', lineHeight: '1.5' }}>
            Dúvidas regulatórias, encontrou algum bug ou precisa de ajuda com a importação de dados? Nosso suporte técnico está à disposição.
          </p>
          
          <div style={{ backgroundColor: 'var(--bg-app)', padding: '10px 12px', borderRadius: '10px', border: '1px solid var(--border-color)', display: 'flex', alignItems: 'center', gap: '10px' }}>
            <Mail style={{ color: 'var(--primary)' }} size={18} />
            <div style={{ display: 'flex', flexDirection: 'column' }}>
              <span style={{ fontSize: '0.7rem', color: 'var(--text-muted)', textTransform: 'uppercase', fontWeight: 700 }}>E-mail de Contato</span>
              <a href="mailto:suporte@prodime.com.br" style={{ fontSize: '0.85rem', color: 'var(--secondary)', fontWeight: 700, textDecoration: 'none' }}>
                suporte@prodime.com.br
              </a>
            </div>
          </div>

          <a 
            href="mailto:suporte@prodime.com.br?subject=Suporte%20PRODIME%20-%20D%C3%BAvida/Contato" 
            className="btn btn-primary" 
            style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '6px', padding: '10px', fontSize: '0.85rem', fontWeight: 600, textDecoration: 'none' }}
          >
            Falar com o Suporte <ArrowRight size={14} />
          </a>
        </div>

        <div className="card-premium" style={{ backgroundColor: 'rgba(20, 83, 45, 0.02)', border: '1px dashed var(--primary)', padding: '12px 16px' }}>
          <h4 style={{ fontSize: '0.85rem', fontWeight: 700, color: 'var(--primary)', marginBottom: '6px' }}>💡 Dica Importante</h4>
          <p style={{ fontSize: '0.76rem', color: 'var(--secondary-light)', lineHeight: '1.4' }}>
            Administradores podem alterar os preços, regras matemáticas de cálculo e incluir novos equipamentos no catálogo através do menu <strong>Configurações</strong>.
          </p>
        </div>
      </div>
    </div>
  );
}
