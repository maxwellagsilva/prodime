import React from 'react';
import { Shield, ArrowLeft } from 'lucide-react';

export default function PrivacyPolicy({ onBack }) {
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
            <Shield size={24} /> Política de Privacidade do PRODIME
          </h1>
          <p className="page-subtitle">Última atualização: 03 de junho de 2026</p>
        </div>
      </div>

      <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '20px', lineHeight: '1.6', color: 'var(--secondary)' }}>
        <p>
          Esta Política de Privacidade explica como o PRODIME coleta, utiliza, armazena e protege informações fornecidas pelos usuários durante o uso da plataforma.
        </p>
        <p>
          Ao utilizar o PRODIME, o usuário declara estar ciente das práticas descritas nesta Política.
        </p>

        <hr style={{ borderColor: 'var(--border-color)' }} />

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>1. Finalidade da plataforma</h3>
          <p>
            O PRODIME é uma ferramenta de apoio ao planejamento e à estimativa de equipamentos médico-hospitalares para unidades de saúde.
          </p>
          <p>
            A plataforma permite que o usuário cadastre informações de projeto, selecione estruturas disponíveis no sistema, informe parâmetros quantitativos e gere relatórios estimativos com equipamentos, quantidades e valores referenciais.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>2. Informações que podem ser coletadas</h3>
          <p>
            Durante o uso do PRODIME, poderão ser coletadas ou armazenadas informações fornecidas diretamente pelo usuário, tais como:
          </p>
          <ul style={{ paddingLeft: '20px', display: 'flex', flexDirection: 'column', gap: '6px' }}>
            <li>nome e e-mail do usuário, quando houver cadastro ou login;</li>
            <li>dados de identificação do projeto;</li>
            <li>nome da unidade de saúde ou estabelecimento informado;</li>
            <li>cidade, estado e demais informações gerais do projeto;</li>
            <li>perfil administrativo, tipo de projeto e tipo de estabelecimento;</li>
            <li>setores, ambientes ou áreas selecionadas;</li>
            <li>parâmetros quantitativos inseridos pelo usuário;</li>
            <li>ajustes, justificativas e observações registradas no projeto;</li>
            <li>relatórios gerados pela plataforma;</li>
            <li>informações técnicas necessárias ao funcionamento, segurança e melhoria da aplicação, como registros de acesso, data e hora de uso, mensagens de erro e dados de sessão.</li>
          </ul>
          <p style={{ marginTop: '10px', fontWeight: 600, color: '#ef4444' }}>
            O PRODIME não solicita intencionalmente dados pessoais de pacientes, prontuários, informações clínicas individualizadas ou dados de saúde de pessoas identificadas. O usuário não deve inserir esse tipo de informação na plataforma.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>3. Como as informações são utilizadas</h3>
          <p>
            As informações fornecidas pelo usuário são utilizadas para:
          </p>
          <ul style={{ paddingLeft: '20px', display: 'flex', flexDirection: 'column', gap: '6px' }}>
            <li>permitir o funcionamento da plataforma;</li>
            <li>gerar estimativas de equipamentos e investimento;</li>
            <li>salvar, recuperar e organizar projetos, quando essa funcionalidade estiver disponível;</li>
            <li>emitir relatórios técnicos e financeiros;</li>
            <li>permitir autenticação e acesso do usuário, quando aplicável;</li>
            <li>manter a segurança, estabilidade e integridade do sistema;</li>
            <li>corrigir erros, melhorar a experiência de uso e aprimorar funcionalidades da plataforma;</li>
            <li>cumprir obrigações legais ou regulatórias, quando necessário.</li>
          </ul>
          <p style={{ marginTop: '10px' }}>
            O PRODIME não utiliza dados de projetos para venda de informações, publicidade comportamental, criação de perfis comerciais, espionagem, divulgação pública ou tomada de decisão externa sobre instituições, gestores ou unidades de saúde.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>4. Confidencialidade dos projetos</h3>
          <p>
            O PRODIME reconhece que projetos de unidades de saúde podem conter informações estratégicas, institucionais ou confidenciais.
          </p>
          <p>
            As informações inseridas pelo usuário não são publicadas, vendidas ou compartilhadas com terceiros para fins comerciais.
          </p>
          <p>
            O acesso aos dados deve ser restrito às finalidades necessárias para funcionamento da plataforma, suporte técnico, segurança, manutenção do sistema e cumprimento de obrigações legais.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>5. Armazenamento das informações</h3>
          <p>
            Dependendo da forma de uso da plataforma, os projetos poderão ser armazenados localmente no dispositivo ou navegador do usuário, ou em ambiente de nuvem vinculado à conta do usuário, quando houver login e funcionalidade de salvamento online.
          </p>
          <p>
            Quando os dados forem armazenados em nuvem, eles serão utilizados para permitir que o usuário acesse, edite e recupere seus projetos dentro da plataforma.
          </p>
          <p>
            O PRODIME não armazena dados com o objetivo de comercializá-los, revendê-los, expô-los publicamente ou utilizá-los para monitoramento indevido.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>6. Compartilhamento de dados</h3>
          <p>
            O PRODIME poderá utilizar fornecedores de tecnologia necessários para operação da plataforma, como serviços de hospedagem, autenticação, banco de dados, armazenamento, monitoramento de erros ou envio de comunicações técnicas.
          </p>
          <p>
            Nesses casos, o compartilhamento ocorre apenas quando necessário para viabilizar o funcionamento, segurança e manutenção da plataforma.
          </p>
          <p>
            O PRODIME não vende dados pessoais ou dados de projetos a terceiros.
          </p>
          <p>
            O PRODIME não compartilha projetos cadastrados com anunciantes, concorrentes, fornecedores comerciais, instituições financeiras, compradores de dados ou terceiros interessados em mapear investimentos de unidades de saúde.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>7. Segurança da informação</h3>
          <p>
            O PRODIME adota medidas técnicas e organizacionais razoáveis para proteger as informações contra acesso não autorizado, perda, alteração, divulgação indevida ou uso inadequado.
          </p>
          <p>
            Apesar dos esforços de segurança, nenhum sistema digital é totalmente imune a falhas, incidentes ou acessos indevidos. Por isso, o usuário também deve adotar boas práticas de segurança, como proteger suas credenciais, utilizar senhas seguras e evitar inserir informações desnecessárias ou excessivamente sensíveis.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>8. Dados que o usuário não deve inserir</h3>
          <p>
            Para reduzir riscos de privacidade e confidencialidade, o usuário não deve inserir no PRODIME:
          </p>
          <ul style={{ paddingLeft: '20px', display: 'flex', flexDirection: 'column', gap: '6px' }}>
            <li>dados pessoais de pacientes;</li>
            <li>informações de prontuário;</li>
            <li>diagnósticos, histórico clínico ou dados de saúde individualizados;</li>
            <li>documentos sigilosos de terceiros;</li>
            <li>informações que não sejam necessárias para gerar a estimativa;</li>
            <li>dados cuja inserção não tenha autorização da instituição responsável.</li>
          </ul>
          <p style={{ marginTop: '10px' }}>
            A plataforma foi desenvolvida para trabalhar com dados estruturais, assistenciais e operacionais do projeto, e não com informações clínicas individualizadas.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>9. Direitos do usuário</h3>
          <p>
            O usuário poderá solicitar informações sobre seus dados, correção, atualização, exclusão ou esclarecimentos sobre o tratamento realizado pelo PRODIME, conforme aplicável.
          </p>
          <p>
            Solicitações relacionadas à privacidade poderão ser enviadas para o e-mail de contato: <a href="mailto:contato@prodime.com.br" style={{ color: 'var(--primary)', fontWeight: 600 }}>contato@prodime.com.br</a>
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>10. Retenção e exclusão</h3>
          <p>
            As informações serão mantidas pelo tempo necessário para cumprir as finalidades descritas nesta Política, permitir o uso da plataforma, atender solicitações do usuário, resguardar direitos e cumprir obrigações legais ou regulatórias.
          </p>
          <p>
            Quando possível e aplicável, o usuário poderá excluir seus projetos ou solicitar a remoção de dados vinculados à sua conta.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>11. Uso de cookies e tecnologias semelhantes</h3>
          <p>
            O PRODIME poderá utilizar cookies, armazenamento local ou tecnologias semelhantes para manter a sessão do usuário, salvar preferências, melhorar a navegação, permitir autenticação e garantir o funcionamento adequado da plataforma.
          </p>
          <p>
            O uso dessas tecnologias não tem como finalidade espionar o usuário, vender informações ou criar perfis comerciais para publicidade.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>12. Alterações nesta Política</h3>
          <p>
            Esta Política de Privacidade poderá ser atualizada periodicamente para refletir mudanças na plataforma, na legislação ou nas práticas de segurança e privacidade.
          </p>
          <p>
            A versão mais recente deverá estar sempre disponível no site do PRODIME.
          </p>
        </section>

        <section>
          <h3 style={{ color: 'var(--primary)', marginBottom: '8px', fontFamily: 'Outfit' }}>13. Contato</h3>
          <p>
            Em caso de dúvidas sobre esta Política de Privacidade ou sobre o tratamento de informações na plataforma, entre em contato pelo e-mail: <a href="mailto:contato@prodime.com.br" style={{ color: 'var(--primary)', fontWeight: 600 }}>contato@prodime.com.br</a>
          </p>
        </section>
      </div>
    </div>
  );
}
