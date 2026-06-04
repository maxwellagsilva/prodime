import React from 'react';
import { FileText, ArrowLeft } from 'lucide-react';

export default function TermsOfUse({ onBack }) {
  return (
    <div className="legal-container">
      {onBack && (
        <button 
          className="btn-back-modern no-print" 
          onClick={onBack}
        >
          <ArrowLeft size={18} /> Voltar para o início
        </button>
      )}
      
      <div className="page-header">
        <div>
          <h1 className="page-title" style={{ display: 'flex', alignItems: 'center', gap: '10px' }}>
            <FileText size={24} /> Termos de Uso do PRODIME
          </h1>
          <p className="page-subtitle">Última atualização: 03 de junho de 2026</p>
        </div>
      </div>

      <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '20px', lineHeight: '1.6', color: 'var(--secondary)' }}>
        <p>
          Estes Termos de Uso regulam o acesso e a utilização do PRODIME, plataforma de apoio ao planejamento e à estimativa de equipamentos médico-hospitalares para unidades de saúde.
        </p>
        <p>
          Ao acessar ou utilizar o PRODIME, o usuário declara que leu, compreendeu e concorda com estes Termos.
        </p>

        <hr style={{ borderColor: 'var(--border-color)' }} />

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>1. Objetivo do PRODIME</h3>
          <p>
            O PRODIME tem como finalidade apoiar a elaboração de estimativas de equipamentos médico-hospitalares e valores referenciais de investimento a partir das informações inseridas pelo usuário.
          </p>
          <p>
            A plataforma organiza dados do projeto, aplica regras técnicas previamente cadastradas e gera relatórios estimativos para apoio ao planejamento, análise orçamentária e discussão técnica.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>2. Natureza estimativa dos resultados</h3>
          <p>
            Os resultados gerados pelo PRODIME possuem caráter estimativo, referencial e informativo.
          </p>
          <p>
            As quantidades, valores, classificações e recomendações apresentadas não constituem decisão definitiva de compra, parecer técnico vinculante, projeto executivo, especificação formal de aquisição, laudo, aprovação regulatória ou substituição da análise de profissional habilitado.
          </p>
          <p>
            A decisão final sobre aquisição, substituição, implantação, expansão ou adequação de equipamentos deve ser tomada pelo gestor responsável, pela equipe técnica competente e por profissionais habilitados, considerando a realidade da unidade, legislação aplicável, normas locais, perfil assistencial, orçamento disponível, parque tecnológico existente, estratégia institucional e exigências dos órgãos competentes.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>3. Regras de dimensionamento</h3>
          <p>
            As regras de dimensionamento utilizadas pelo PRODIME são previamente estruturadas com base em normas aplicáveis, referências técnicas, critérios de planejamento em saúde e expertise dos criadores da ferramenta.
          </p>
          <p>
            O usuário final não edita as regras-base de cálculo.
          </p>
          <p>
            O usuário pode revisar o resultado gerado e, quando disponível, ajustar quantidades finais de equipamentos mediante justificativa. Esses ajustes ficam vinculados ao projeto específico e não alteram a regra-base do sistema.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>4. Responsabilidade pelo preenchimento</h3>
          <p>
            O usuário é responsável pelas informações que inserir na plataforma.
          </p>
          <p>
            A qualidade da estimativa depende da correção, completude e atualidade dos dados informados, incluindo características do projeto, tipo de unidade, setores selecionados, parâmetros quantitativos, observações e ajustes manuais.
          </p>
          <p>
            O PRODIME não se responsabiliza por decisões tomadas com base em dados incompletos, incorretos, desatualizados ou inseridos sem validação técnica adequada.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>5. Limitações da plataforma</h3>
          <p>
            O PRODIME não substitui:
          </p>
          <ul style={{ paddingLeft: '20px', display: 'flex', flexDirection: 'column', gap: '6px' }}>
            <li>avaliação de gestor responsável;</li>
            <li>análise de engenharia clínica;</li>
            <li>atuação de profissional habilitado;</li>
            <li>projeto executivo;</li>
            <li>estudo de viabilidade;</li>
            <li>inventário do parque tecnológico existente;</li>
            <li>especificação técnica de compra;</li>
            <li>pesquisa formal de preços;</li>
            <li>cotação com fornecedores;</li>
            <li>análise de infraestrutura física, elétrica, hidráulica, gases medicinais, climatização ou tecnologia da informação;</li>
            <li>licenciamento sanitário;</li>
            <li>aprovação de órgãos reguladores;</li>
            <li>cumprimento de normas municipais, estaduais ou federais aplicáveis.</li>
          </ul>
          <p style={{ marginTop: '10px' }}>
            A plataforma deve ser utilizada como instrumento de apoio ao planejamento, e não como única fonte para decisões de investimento.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>6. Valores referenciais</h3>
          <p>
            Os valores apresentados pelo PRODIME são estimativas referenciais e podem variar conforme marca, modelo, especificação técnica, fornecedor, região, tributos, câmbio, frete, instalação, garantia, contrato de manutenção, acessórios, consumíveis, treinamento e condições comerciais.
          </p>
          <p>
            Antes de qualquer aquisição, o usuário deve realizar pesquisa formal de mercado, cotação com fornecedores e validação técnica das especificações.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>7. Confidencialidade e uso dos dados de projeto</h3>
          <p>
            O PRODIME reconhece que informações sobre projetos de unidades de saúde podem ser estratégicas ou confidenciais.
          </p>
          <p>
            As informações inseridas pelo usuário são utilizadas para funcionamento da plataforma, geração de estimativas, salvamento de projetos quando aplicável, emissão de relatórios, segurança e manutenção do sistema.
          </p>
          <p>
            O PRODIME não tem como finalidade vender, publicar, expor, repassar para anunciantes, criar perfis comerciais, espionar instituições ou utilizar os dados dos projetos para tomada de decisões externas.
          </p>
          <p style={{ marginTop: '10px', fontWeight: 600, color: '#ef4444' }}>
            O usuário deve evitar inserir informações sigilosas desnecessárias, dados pessoais de pacientes, prontuários, diagnósticos ou qualquer dado clínico individualizado.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>8. Conta de usuário e segurança</h3>
          <p>
            Quando houver cadastro ou login, o usuário é responsável por manter a confidencialidade de suas credenciais de acesso.
          </p>
          <p>
            O usuário não deve compartilhar senha, permitir acesso não autorizado à sua conta ou utilizar credenciais de terceiros.
          </p>
          <p>
            Caso identifique uso indevido, acesso não autorizado ou suspeita de incidente, o usuário deverá comunicar a equipe responsável pelo PRODIME por meio do canal de contato: <a href="mailto:contato@prodime.com.br" style={{ color: 'var(--primary)', fontWeight: 600 }}>contato@prodime.com.br</a>
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>9. Uso permitido</h3>
          <p>
            O usuário concorda em utilizar o PRODIME apenas para finalidades lícitas, relacionadas ao planejamento, estudo, organização ou análise de estimativas de equipamentos em saúde.
          </p>
          <p>
            É proibido utilizar a plataforma para:
          </p>
          <ul style={{ paddingLeft: '20px', display: 'flex', flexDirection: 'column', gap: '6px' }}>
            <li>inserir informações falsas de forma deliberada;</li>
            <li>tentar acessar dados de outros usuários;</li>
            <li>copiar, extrair ou explorar indevidamente a base de regras ou dados do sistema;</li>
            <li>realizar engenharia reversa não autorizada;</li>
            <li>comprometer a segurança, estabilidade ou disponibilidade da aplicação;</li>
            <li>utilizar a plataforma para fins ilegais, abusivos ou contrários à boa-fé.</li>
          </ul>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>10. Propriedade intelectual</h3>
          <p>
            O PRODIME, sua marca, interface, textos, regras estruturadas, organização dos dados, lógica de funcionamento, relatórios, elementos visuais e demais componentes da plataforma pertencem aos seus titulares ou licenciadores, salvo quando indicado de outra forma.
          </p>
          <p>
            O uso da plataforma não concede ao usuário propriedade sobre o sistema, suas regras, código-fonte, marca ou metodologia.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>11. Disponibilidade do serviço</h3>
          <p>
            O PRODIME poderá passar por atualizações, manutenções, correções, melhorias ou interrupções temporárias.
          </p>
          <p>
            Embora sejam adotados esforços para manter a plataforma disponível, não há garantia de funcionamento ininterrupto, livre de erros ou permanentemente disponível.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>12. Atualização de regras e funcionalidades</h3>
          <p>
            As regras, parâmetros, setores, tipos de estabelecimento, valores referenciais e funcionalidades do PRODIME poderão ser atualizados, ampliados, corrigidos ou removidos ao longo do tempo.
          </p>
          <p>
            Estimativas geradas em momentos diferentes podem apresentar diferenças em razão de atualizações do sistema, mudanças na base de preços, revisão de regras ou evolução das referências técnicas utilizadas.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>13. Isenção de responsabilidade</h3>
          <p>
            Na máxima extensão permitida pela legislação aplicável, o PRODIME não será responsável por prejuízos decorrentes de decisões tomadas exclusivamente com base nos resultados gerados pela plataforma, sem validação técnica, administrativa, financeira, regulatória ou profissional adequada.
          </p>
          <p>
            O usuário reconhece que o relatório gerado é um instrumento de apoio e que a responsabilidade pela decisão final cabe à instituição, ao gestor responsável e aos profissionais habilitados envolvidos no projeto.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>14. Privacidade</h3>
          <p>
            O tratamento de informações dos usuários e dos projetos é descrito na Política de Privacidade do PRODIME, que integra estes Termos de Uso.
          </p>
          <p>
            Ao utilizar a plataforma, o usuário também declara ciência da Política de Privacidade.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>15. Alterações nos Termos</h3>
          <p>
            Estes Termos de Uso poderão ser atualizados periodicamente para refletir mudanças na plataforma, na legislação, nas práticas de segurança ou nas condições de uso.
          </p>
          <p>
            A versão mais recente deverá estar disponível no site do PRODIME.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>16. Contato</h3>
          <p>
            Dúvidas, solicitações ou comunicações relacionadas a estes Termos de Uso poderão ser enviadas para o e-mail: <a href="mailto:contato@prodime.com.br" style={{ color: 'var(--primary)', fontWeight: 600 }}>contato@prodime.com.br</a>
          </p>
        </section>
      </div>
    </div>
  );
}
