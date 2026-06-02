import React from 'react';
import { 
  BookOpen, 
  HelpCircle, 
  Settings, 
  Sliders, 
  ShieldAlert, 
  FileText 
} from 'lucide-react';

export default function Manual() {
  return (
    <div className="tab-section active">
      <div className="page-header">
        <div>
          <h1 className="page-title" style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
            <BookOpen size={24} /> Manual de Regras de Dimensionamento
          </h1>
          <p className="page-subtitle">Guia prático para cadastro de regras de cálculo e parametrização sob a RDC 50.</p>
        </div>
      </div>

      <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '24px' }}>
        <div>
          <h2 style={{ fontFamily: 'Outfit', fontSize: '1.4rem', color: 'var(--primary)', marginBottom: '12px', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <Sliders size={20} /> 1. Parâmetros e Significado dos Campos de Regra
          </h2>
          <p style={{ color: 'var(--secondary-light)', fontSize: '0.95rem', marginBottom: '16px' }}>
            Ao criar ou editar uma regra de dimensionamento clínico, cada campo define como o motor de regras calculará a recomendação dos equipamentos.
          </p>

          <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '16px', fontSize: '0.88rem' }}>
            <div style={{ padding: '12px', backgroundColor: '#f8fafc', borderRadius: '8px', border: '1px solid #e2e8f0' }}>
              <strong style={{ color: 'var(--primary)' }}>Nome Descritivo da Regra:</strong>
              <p style={{ color: 'var(--secondary-light)', marginTop: '4px' }}>Padrão recomendado: [Setor] - [Equipamento] - [Finalidade]. Ex: UTI Adulto - Monitor Multiparamétrico.</p>
            </div>
            
            <div style={{ padding: '12px', backgroundColor: '#f8fafc', borderRadius: '8px', border: '1px solid #e2e8f0' }}>
              <strong style={{ color: 'var(--primary)' }}>Setor Aplicável:</strong>
              <p style={{ color: 'var(--secondary-light)', marginTop: '4px' }}>Setor onde a regra deve ser aplicada (ex: Centro Cirúrgico, UTI Adulto, Pronto-Socorro).</p>
            </div>
            
            <div style={{ padding: '12px', backgroundColor: '#f8fafc', borderRadius: '8px', border: '1px solid #e2e8f0' }}>
              <strong style={{ color: 'var(--primary)' }}>Parâmetro de Entrada (Trigger):</strong>
              <p style={{ color: 'var(--secondary-light)', marginTop: '4px' }}>A variável numérica a ser lida do projeto (ex: leitos, salas_cirurgicas, boxes_emergencia).</p>
            </div>
            
            <div style={{ padding: '12px', backgroundColor: '#f8fafc', borderRadius: '8px', border: '1px solid #e2e8f0' }}>
              <strong style={{ color: 'var(--primary)' }}>Operador Condicional:</strong>
              <p style={{ color: 'var(--secondary-light)', marginTop: '4px' }}>Condição lógica para ativar o cálculo (ex: Sempre aplica, Maior que [&gt;], Igual a [==]).</p>
            </div>
            
            <div style={{ padding: '12px', backgroundColor: '#f8fafc', borderRadius: '8px', border: '1px solid #e2e8f0' }}>
              <strong style={{ color: 'var(--primary)' }}>Tipo de Cálculo (Fórmula):</strong>
              <ul style={{ color: 'var(--secondary-light)', marginTop: '4px', paddingLeft: '16px' }}>
                <li><strong>Fixo (fixed):</strong> Fornece a quantidade exata do fator de fórmula, independente do tamanho do setor.</li>
                <li><strong>Por Parâmetro (per_parameter):</strong> Multiplica o parâmetro pelo fator de fórmula (ex: 1 monitor por leito = 1 x leitos).</li>
                <li><strong>Por Grupo (rounded_ratio):</strong> Divide o parâmetro pelo fator e arredonda para cima (ex: 1 desfibrilador para cada 10 leitos).</li>
              </ul>
            </div>
            
            <div style={{ padding: '12px', backgroundColor: '#f8fafc', borderRadius: '8px', border: '1px solid #e2e8f0' }}>
              <strong style={{ color: 'var(--primary)' }}>Reserva Técnica:</strong>
              <p style={{ color: 'var(--secondary-light)', marginTop: '4px' }}>Porcentagem de segurança sobressalente em formato decimal. Ex: 0.20 para acrescer 20% de equipamentos de reserva em manutenção.</p>
            </div>
            
            <div style={{ padding: '12px', backgroundColor: '#f8fafc', borderRadius: '8px', border: '1px solid #e2e8f0' }}>
              <strong style={{ color: 'var(--primary)' }}>Classificação Regulatória:</strong>
              <p style={{ color: 'var(--secondary-light)', marginTop: '4px' }}>Obrigatoriedade regulatória do item: <strong>Obrigatório</strong> (exigido por lei), <strong>Recomendado</strong> (conselhos/associações) ou <strong>Opcional</strong>.</p>
            </div>

            <div style={{ padding: '12px', backgroundColor: '#f8fafc', borderRadius: '8px', border: '1px solid #e2e8f0' }}>
              <strong style={{ color: 'var(--primary)' }}>Referência Normativa:</strong>
              <p style={{ color: 'var(--secondary-light)', marginTop: '4px' }}>Base regulatória (Ex: Anvisa RDC nº 50/2002, AMIB, Portaria MS nº 3432/98).</p>
            </div>
          </div>
        </div>

        <hr style={{ borderColor: 'var(--border-color)' }} />

        <div>
          <h2 style={{ fontFamily: 'Outfit', fontSize: '1.4rem', color: 'var(--primary)', marginBottom: '12px', display: 'flex', alignItems: 'center', gap: '8px' }}>
            <HelpCircle size={20} /> 2. Exemplos Práticos de Configuração
          </h2>

          <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
            <div style={{ borderLeft: '4px solid var(--primary)', padding: '12px 18px', backgroundColor: '#f0fdfa', borderRadius: '0 8px 8px 0' }}>
              <h4 style={{ fontWeight: 600, color: 'var(--secondary)' }}>Caso A: Monitor de UTI (1 por leito + 10% reserva técnica)</h4>
              <ul style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '6px', listStyleType: 'circle', paddingLeft: '16px' }}>
                <li><strong>Setor:</strong> UTI Adulto | <strong>Parâmetro:</strong> leitos</li>
                <li><strong>Tipo de Cálculo:</strong> Quantidade por Unidade de Parâmetro (per_parameter)</li>
                <li><strong>Fator Fórmula:</strong> 1.00 | <strong>Reserva Técnica:</strong> 0.10</li>
                <li><strong>Cálculo Realizado:</strong> <code>Qtd = Teto(Leitos * 1.00 * (1 + 0.10))</code></li>
              </ul>
            </div>

            <div style={{ borderLeft: '4px solid var(--primary)', padding: '12px 18px', backgroundColor: '#f0fdfa', borderRadius: '0 8px 8px 0' }}>
              <h4 style={{ fontWeight: 600, color: 'var(--secondary)' }}>Caso B: Desfibrilador de UTI (1 para cada 10 leitos ou fração)</h4>
              <ul style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '6px', listStyleType: 'circle', paddingLeft: '16px' }}>
                <li><strong>Setor:</strong> UTI Adulto | <strong>Parâmetro:</strong> leitos</li>
                <li><strong>Tipo de Cálculo:</strong> Quantidade por Grupo (rounded_ratio)</li>
                <li><strong>Fator Fórmula:</strong> 10.00 | <strong>Reserva Técnica:</strong> 0.00</li>
                <li><strong>Cálculo Realizado:</strong> <code>Qtd = Teto(Leitos / 10)</code> (Para 15 leitos, retorna 2 desfibriladores)</li>
              </ul>
            </div>

            <div style={{ borderLeft: '4px solid var(--primary)', padding: '12px 18px', backgroundColor: '#f0fdfa', borderRadius: '0 8px 8px 0' }}>
              <h4 style={{ fontWeight: 600, color: 'var(--secondary)' }}>Caso C: Carro de Parada Emergencial (1 fixo por enfermaria)</h4>
              <ul style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', marginTop: '6px', listStyleType: 'circle', paddingLeft: '16px' }}>
                <li><strong>Setor:</strong> Unidade de Internação | <strong>Parâmetro:</strong> leitos</li>
                <li><strong>Tipo de Cálculo:</strong> Quantidade Fixa (fixed)</li>
                <li><strong>Fator Fórmula:</strong> 1.00 | <strong>Reserva Técnica:</strong> 0.00</li>
                <li><strong>Cálculo Realizado:</strong> Sempre retorna exatamente <code>1 unidade</code> independente do número de leitos do projeto.</li>
              </ul>
            </div>
          </div>
        </div>

        <div className="regulatory-banner">
          <strong>Aviso de Responsabilidade Técnica:</strong>
          <p style={{ marginTop: '4px' }}>
            As regras referenciadas por padrão no PRODIME baseiam-se na RDC Anvisa nº 50/2002 e suas atualizações vigentes. Emendas e especificidades municipais ou estaduais devem ser ajustadas manualmente no painel administrativo por um Engenheiro Clínico habilitado.
          </p>
        </div>
      </div>
    </div>
  );
}
