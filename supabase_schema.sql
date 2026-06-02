-- PRODIME Database Schema & Default Data Seed Script
-- Execute este script no SQL Editor do seu projeto Supabase para criar as tabelas e povoá-las com dados iniciais (Equipamentos e Regras da RDC 50).

-- =========================================================================
-- 1. CRIAÇÃO DE TABELAS
-- =========================================================================

-- Desativar RLS temporariamente para criação limpa
-- (Será ativado individualmente)

-- Tabela de Perfis de Usuários (Profiles)
CREATE TABLE IF NOT EXISTS public.profiles (
    id UUID PRIMARY KEY, -- FK para auth.users (gerenciado pelo Supabase Auth)
    email TEXT NOT NULL UNIQUE,
    name TEXT,
    role TEXT DEFAULT 'User' CHECK (role IN ('Admin', 'User')),
    active BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Tabela de Equipamentos (Catálogo Geral)
CREATE TABLE IF NOT EXISTS public.equipment (
    code TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    subcategory TEXT,
    description TEXT,
    applicable_sectors TEXT,
    unit TEXT DEFAULT 'Unidade',
    min_price NUMERIC(12,2) DEFAULT 0,
    avg_price NUMERIC(12,2) DEFAULT 0,
    max_price NUMERIC(12,2) DEFAULT 0,
    manufacturers TEXT,
    life_span_years INTEGER,
    maintenance_interval_months INTEGER,
    calibration_required BOOLEAN DEFAULT false,
    criticality TEXT,
    complexity TEXT,
    infra_electricity TEXT,
    infra_water TEXT,
    infra_gases TEXT,
    infra_climatization TEXT,
    dimensions TEXT,
    notes TEXT,
    normative_reference TEXT,
    status TEXT DEFAULT 'Ativo',
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Tabela de Regras de Cálculo de Dimensionamento
CREATE TABLE IF NOT EXISTS public.dimensioning_rules (
    id TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    sector TEXT NOT NULL,
    parameter TEXT NOT NULL,
    operator TEXT NOT NULL,
    value NUMERIC(10,2) DEFAULT 0,
    equipment_code TEXT REFERENCES public.equipment(code) ON DELETE CASCADE,
    calculation_type TEXT NOT NULL,
    formula_factor NUMERIC(10,2) NOT NULL,
    reserve_factor NUMERIC(5,2) DEFAULT 0,
    classification TEXT NOT NULL,
    justification TEXT,
    normative_reference TEXT,
    active BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Tabela de Projetos
CREATE TABLE IF NOT EXISTS public.projects (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID REFERENCES public.profiles(id) ON DELETE CASCADE, -- Permite NULL para projetos anônimos
    name TEXT NOT NULL,
    hospital_name TEXT NOT NULL,
    city TEXT NOT NULL,
    state VARCHAR(2) NOT NULL,
    establishment_type TEXT NOT NULL,
    profile TEXT,
    is_public BOOLEAN DEFAULT false,
    project_type TEXT,
    currency TEXT DEFAULT 'BRL',
    price_date TEXT,
    technical_manager TEXT,
    notes TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Tabela de Setores de Projetos
CREATE TABLE IF NOT EXISTS public.project_sectors (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    project_id UUID REFERENCES public.projects(id) ON DELETE CASCADE NOT NULL,
    sector_name TEXT NOT NULL,
    complexity TEXT DEFAULT 'Média',
    turns INTEGER DEFAULT 3,
    volume_estimated NUMERIC(10,2) DEFAULT 0,
    criticality TEXT DEFAULT 'Média'
);

-- Tabela de Parâmetros de Setores
CREATE TABLE IF NOT EXISTS public.sector_parameters (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    project_id UUID REFERENCES public.projects(id) ON DELETE CASCADE NOT NULL,
    sector_name TEXT NOT NULL,
    parameter_name TEXT NOT NULL,
    parameter_value NUMERIC(10,2) DEFAULT 0
);

-- Tabela de Resultados Finais de Dimensionamento
CREATE TABLE IF NOT EXISTS public.project_equipment_results (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    project_id UUID REFERENCES public.projects(id) ON DELETE CASCADE NOT NULL,
    sector_name TEXT NOT NULL,
    equipment_code TEXT REFERENCES public.equipment(code) ON DELETE CASCADE NOT NULL,
    quantity_calculated NUMERIC(10,2) DEFAULT 0,
    quantity_recommended INTEGER DEFAULT 0,
    quantity_adjusted INTEGER,
    adjustment_reason TEXT,
    adjusted_by TEXT,
    adjusted_at TIMESTAMP WITH TIME ZONE
);

-- Tabela de Logs de Auditoria
CREATE TABLE IF NOT EXISTS public.audit_logs (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    project_id UUID REFERENCES public.projects(id) ON DELETE SET NULL,
    user_email TEXT,
    action TEXT NOT NULL,
    timestamp TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL,
    details TEXT
);


-- =========================================================================
-- 2. TRIGGER DE AUTO-CRIAÇÃO DE PERFIL APÓS SIGN-UP
-- =========================================================================

-- Função para lidar com novos usuários registrados no auth do Supabase
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO public.profiles (id, email, name, role, active)
    VALUES (
        new.id,
        new.email,
        coalesce(new.raw_user_meta_data->>'name', split_part(new.email, '@', 1)),
        -- Se for o primeiro e-mail cadastrado ou um e-mail específico de admin, define como Admin
        CASE 
            WHEN new.email = 'admin@prodime.com.br' OR new.email = 'maxwell@hsl.org.br' THEN 'Admin'
            ELSE 'User'
        END,
        true
    );
    RETURN new;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Trigger disparada após criação de usuário no Auth do Supabase
CREATE OR REPLACE TRIGGER on_auth_user_created
    AFTER INSERT ON auth.users
    FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();


-- =========================================================================
-- 3. POLÍTICAS DE SEGURANÇA E RLS (ROW LEVEL SECURITY)
-- =========================================================================

-- Ativar RLS em todas as tabelas
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.equipment ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.dimensioning_rules ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.projects ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.project_sectors ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.sector_parameters ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.project_equipment_results ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.audit_logs ENABLE ROW LEVEL SECURITY;

-- Políticas para Profiles
CREATE POLICY "Usuários podem ver seus próprios perfis" ON public.profiles
    FOR SELECT USING (auth.uid() = id);
CREATE POLICY "Admins podem ver todos os perfis" ON public.profiles
    FOR ALL USING (
        EXISTS (
            SELECT 1 FROM public.profiles 
            WHERE profiles.id = auth.uid() AND profiles.role = 'Admin'
        )
    );

-- Políticas para Equipamentos (Leitura para todos, Escrita apenas para Admins)
CREATE POLICY "Qualquer um pode ler equipamentos" ON public.equipment
    FOR SELECT USING (true);
CREATE POLICY "Apenas Admins podem modificar equipamentos" ON public.equipment
    FOR ALL USING (
        EXISTS (
            SELECT 1 FROM public.profiles 
            WHERE profiles.id = auth.uid() AND profiles.role = 'Admin'
        )
    );

-- Políticas para Regras de Cálculo (Leitura para todos, Escrita apenas para Admins)
CREATE POLICY "Qualquer um pode ler regras" ON public.dimensioning_rules
    FOR SELECT USING (true);
CREATE POLICY "Apenas Admins podem modificar regras" ON public.dimensioning_rules
    FOR ALL USING (
        EXISTS (
            SELECT 1 FROM public.profiles 
            WHERE profiles.id = auth.uid() AND profiles.role = 'Admin'
        )
    );

-- Políticas para Projetos (Apenas o próprio criador acessa)
CREATE POLICY "Criador do projeto tem acesso total" ON public.projects
    FOR ALL USING (user_id = auth.uid() OR user_id IS NULL);

-- Políticas para Itens do Projeto (Sectores, Parâmetros e Resultados)
CREATE POLICY "Acesso total aos setores vinculados ao projeto do usuário" ON public.project_sectors
    FOR ALL USING (
        EXISTS (
            SELECT 1 FROM public.projects 
            WHERE projects.id = project_sectors.project_id AND (projects.user_id = auth.uid() OR projects.user_id IS NULL)
        )
    );

CREATE POLICY "Acesso total aos parâmetros vinculados ao projeto do usuário" ON public.sector_parameters
    FOR ALL USING (
        EXISTS (
            SELECT 1 FROM public.projects 
            WHERE projects.id = sector_parameters.project_id AND (projects.user_id = auth.uid() OR projects.user_id IS NULL)
        )
    );

CREATE POLICY "Acesso total aos resultados vinculados ao projeto do usuário" ON public.project_equipment_results
    FOR ALL USING (
        EXISTS (
            SELECT 1 FROM public.projects 
            WHERE projects.id = project_equipment_results.project_id AND (projects.user_id = auth.uid() OR projects.user_id IS NULL)
        )
    );

-- Políticas para Logs de Auditoria
CREATE POLICY "Leitura de logs apenas para Admins" ON public.audit_logs
    FOR SELECT USING (
        EXISTS (
            SELECT 1 FROM public.profiles 
            WHERE profiles.id = auth.uid() AND profiles.role = 'Admin'
        )
    );
CREATE POLICY "Permitir inserção de logs por usuários logados" ON public.audit_logs
    FOR INSERT WITH CHECK (true);


-- =========================================================================
-- 4. INSERÇÃO DE DADOS INICIAIS (SEED)
-- =========================================================================

-- Inserir Equipamentos Referenciais
INSERT INTO public.equipment 
(code, name, category, subcategory, description, applicable_sectors, unit, min_price, avg_price, max_price, manufacturers, life_span_years, maintenance_interval_months, calibration_required, criticality, complexity, infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, notes, normative_reference, status)
VALUES
('MON001', 'Monitor Multiparamétrico', 'Monitorização', 'Sinais Vitais', 'Monitor de sinais vitais de beira de leito com ECG, SpO2, PNI, Resp e Temp.', 'UTI Adulto,UTI Neonatal,UTI Pediátrica,Centro Cirúrgico,Pronto-Socorro', 'Unidade', 12000, 18000, 25000, 'Mindray, Philips, Nihon Kohden', 7, 6, true, 'Alta', 'Média', '110V/220V', 'Não', 'Não', 'Não', '30x30x25 cm', 'Requer calibração anual.', 'Anvisa RDC 50, RDC 343', 'Ativo'),
('VEN001', 'Ventilador Pulmonar de UTI', 'Suporte de Vida', 'Ventilação Mecânica', 'Ventilador mecânico microprocessado invasivo/não-invasivo adulto/pediátrico.', 'UTI Adulto,UTI Pediátrica,Pronto-Socorro', 'Unidade', 75000, 95000, 130000, 'Magnamed, Dräger, Hamilton', 8, 6, true, 'Alta', 'Alta', '110V/220V e Bateria', 'Não', 'Ar Comprimido, Oxigênio', 'Ar condicionado necessário', '45x50x135 cm', 'Exige rede de gases medicinais estável.', 'Anvisa RDC 50', 'Ativo'),
('ANE001', 'Aparelho de Anestesia (Estação de Trabalho)', 'Suporte de Vida', 'Anestesia', 'Estação de anestesia com ventilador mecânico microprocessado e vaporizadores.', 'Centro Cirúrgico,Centro Obstetrico', 'Unidade', 95000, 140000, 190000, 'Dräger, GE Healthcare, Mindray', 10, 6, true, 'Alta', 'Alta', '110V/220V e Bateria', 'Não', 'Ar Comprimido, Oxigênio, Óxido Nitroso', 'Ar condicionado necessário', '70x65x140 cm', 'Requer exaustão ativa de gases anestésicos.', 'Anvisa RDC 50', 'Ativo'),
('DES001', 'Desfibrilador Cardioversor', 'Suporte de Vida', 'Reanimação', 'Desfibrilador cardioversor bifásico com ECG, marcapasso externo e modo DEA.', 'UTI Adulto,UTI Neonatal,UTI Pediátrica,Centro Cirúrgico,Centro Obstetrico,Pronto-Socorro,Internação', 'Unidade', 15000, 22000, 32000, 'Instramed, ZOLL, Physio-Control', 7, 12, true, 'Alta', 'Média', '110V/220V e Bateria', 'Não', 'Não', 'Não', '32x30x22 cm', 'Deve passar por teste diário de bateria.', 'Anvisa RDC 50', 'Ativo'),
('BOM001', 'Bomba de Infusão Volumétrica', 'Suporte de Vida', 'Infusão', 'Bomba de infusão peristáltica linear para infusão precisa de fluidos e drogas.', 'UTI Adulto,UTI Neonatal,UTI Pediátrica,Centro Cirúrgico,Pronto-Socorro,Internação', 'Unidade', 3500, 5500, 8000, 'Samtronic, B. Braun, Hospira', 6, 12, true, 'Média', 'Baixa', '110V/220V e Bateria', 'Não', 'Não', 'Não', '15x15x25 cm', 'Requer equipo específico de infusão.', 'Anvisa RDC 50', 'Ativo'),
('MES001', 'Mesa Cirúrgica Elétrica', 'Cirúrgico', 'Infraestrutura', 'Mesa operatória eletro-hidráulica radiotransparente para cirurgia geral.', 'Centro Cirúrgico,Centro Obstetrico', 'Unidade', 45000, 65000, 95000, 'Barrisolar, Steris, Stryker', 12, 12, false, 'Alta', 'Média', '220V', 'Não', 'Não', 'Não', '200x55 cm', 'Carga limite suportada: 180 kg.', 'Anvisa RDC 50', 'Ativo'),
('FOC001', 'Foco Cirúrgico de LED', 'Cirúrgico', 'Infraestrutura', 'Foco de teto LED duplo com controle digital de intensidade luminosa.', 'Centro Cirúrgico,Centro Obstetrico', 'Unidade', 20000, 38000, 55000, 'Steris, Trumpf, Barrisolar', 10, 12, false, 'Alta', 'Média', '110V/220V', 'Não', 'Não', 'Não', 'Cúpula Ø 60 cm', 'Requer fixação rígida no teto/laje.', 'Anvisa RDC 50', 'Ativo'),
('BIS001', 'Bisturi Eletrônico Monopolar/Bipolar', 'Cirúrgico', 'Corte e Coagulação', 'Bisturi elétrico de alta frequência com corte, coagulação e bipolar.', 'Centro Cirúrgico,Centro Obstetrico', 'Unidade', 12000, 18000, 28000, 'Wem, Medtronic, Valleylab', 8, 12, true, 'Alta', 'Média', '110V/220V', 'Não', 'Não', 'Não', '35x35x15 cm', 'Fundamental uso de placa neutra no paciente.', 'Anvisa RDC 50', 'Ativo'),
('CAR001', 'Carro de Emergência Equipado', 'Apoio', 'Urgência', 'Carro de parada completo em aço com divisórias, suporte cilindro e soro.', 'UTI Adulto,UTI Neonatal,UTI Pediátrica,Centro Cirúrgico,Pronto-Socorro,Internação', 'Unidade', 3000, 4500, 6000, 'Sitmed, Vallitech, Fami', 10, 24, false, 'Alta', 'Baixa', 'Não', 'Não', 'Não', 'Não', '90x50x100 cm', 'Mantido lacrado com kit de medicamentos de parada.', 'Anvisa RDC 50', 'Ativo'),
('AUT001', 'Autoclave Horizontal a Vapor (Barreira)', 'Esterilização', 'Processamento', 'Autoclave horizontal de porta dupla para barreiras de esterilização CME.', 'CME', 'Unidade', 85000, 130000, 210000, 'Baumer, Cisa, Steris', 12, 6, true, 'Alta', 'Alta', '220V/380V Trifásico', 'Sim (Água tratada e esgoto)', 'Vapor de gerador', 'Requer coifa exaustora', '120x150x190 cm', 'Exige qualidade de água abrandada/deionizada.', 'Anvisa RDC 50, RDC 15', 'Ativo'),
('ECG001', 'Eletrocardiógrafo Portátil', 'Diagnóstico', 'Cardiologia', 'Eletrocardiógrafo digital de 12 canais com impressão e laudo preliminar.', 'UTI Adulto,Pronto-Socorro,Internação', 'Unidade', 6000, 8500, 12000, 'Teb, Bionet, Mindray', 7, 12, true, 'Média', 'Média', '110V/220V e Bateria', 'Não', 'Não', 'Não', '28x32x10 cm', 'Uso em postos para ECG rotineiro.', 'Anvisa RDC 50', 'Ativo'),
('RAI001', 'Aparelho de Raio-X Fixo Digital', 'Diagnóstico', 'Radiologia', 'Sistema radiográfico digital (DR) de alta frequência com mesa e bucky.', 'Diagnóstico por Imagem,Pronto-Socorro', 'Unidade', 180000, 260000, 380000, 'Siemens, GE Healthcare, Philips', 10, 6, true, 'Média', 'Alta', '220V/380V Trifásico', 'Não', 'Não', 'Ar condicionado necessário', 'Mesa: 220x80 cm', 'Sala requer blindagem de barita ou chumbo.', 'Anvisa RDC 50, RDC 330', 'Ativo'),
('TOM001', 'Tomógrafo Computadorizado (64 Canais)', 'Diagnóstico', 'Tomografia', 'Scanner de CT multislice 64 canais com estação de processamento.', 'Diagnóstico por Imagem', 'Unidade', 1200000, 1800000, 2500000, 'Canon, GE Healthcare, Siemens', 10, 4, true, 'Alta', 'Alta', '380V Trifásico', 'Não', 'Não', 'Climatização com chiller dedicada', 'Gantry: 200x200x95 cm', 'Requer blindagem estrutural e ar-condicionado de precisão.', 'Anvisa RDC 50, RDC 330', 'Ativo'),
('RES001', 'Ressonância Magnética (1.5 Tesla)', 'Diagnóstico', 'Ressonância', 'Sistema supercondutor RM de 1.5 Tesla para exames de alto campo.', 'Diagnóstico por Imagem', 'Unidade', 3500000, 4800000, 6200000, 'GE Healthcare, Siemens, Philips', 12, 3, true, 'Alta', 'Alta', '380V Trifásico', 'Água gelada compressor', 'Hélio selado', 'Clima 24h e quench', 'Gantry: 220x220x240 cm', 'Requer blindagem de RF (Gaiola Faraday) e duto Quench.', 'Anvisa RDC 50, RDC 330', 'Ativo'),
('USG001', 'Ecógrafo / Ultrassom Diagnóstico', 'Diagnóstico', 'Ultrassonografia', 'Aparelho de ultrassom com Doppler colorido e 3 transdutores de fábrica.', 'Diagnóstico por Imagem,Consultórios,UTI Adulto', 'Unidade', 75000, 120000, 180000, 'Samsung, GE Healthcare, Mindray', 7, 12, true, 'Média', 'Média', '110V/220V', 'Não', 'Não', 'Ar condicionado necessário', '60x75x145 cm', 'Excelente portabilidade para UTI e exames clínicos.', 'Anvisa RDC 50', 'Ativo'),
('INC001', 'Incubadora Neonatal Intensiva', 'Suporte de Vida', 'Pediatria', 'Incubadora com controle térmico do ar/pele e servocontrolador de umidade.', 'UTI Neonatal', 'Unidade', 35000, 50000, 70000, 'Fanem, Olidef', 8, 6, true, 'Alta', 'Alta', '110V/220V e Bateria', 'Não', 'Oxigênio', 'Não', '65x100x140 cm', 'Uso essencial para regulação térmica do recém-nascido.', 'Anvisa RDC 50, RDC 7', 'Ativo'),
('FOT001', 'Aparelho de Fototerapia de LED', 'Suporte de Vida', 'Pediatria', 'Fototerapia de pedestal com alta irradiância em super LEDs azuis.', 'UTI Neonatal', 'Unidade', 8000, 12000, 18000, 'Fanem, Olidef', 8, 12, true, 'Média', 'Baixa', '110V/220V', 'Não', 'Não', 'Não', '40x40x160 cm', 'Tratamento de icterícia em leito neonatal.', 'Anvisa RDC 50', 'Ativo'),
('GAS001', 'Videoendoscópio Digestivo', 'Diagnóstico', 'Endoscopia', 'Torre de endoscopia com gastroscópio, colonoscópio e monitor.', 'Endoscopia', 'Unidade', 12000, 180000, 260000, 'Olympus, Pentax, Fujifilm', 8, 6, false, 'Média', 'Alta', '110V/220V', 'Não', 'Não', 'Não', '45x50x120 cm', 'Requer sala apropriada para lavagem e desinfecção de tubos.', 'Anvisa RDC 50, RDC 6', 'Ativo'),
('TER001', 'Termodesinfectadora Horizontal', 'Esterilização', 'Processamento', 'Lavadora termodesinfectadora automática de instrumentos cirúrgicos.', 'CME', 'Unidade', 65000, 95000, 140000, 'Baumer, Cisa, Steelco', 10, 6, true, 'Média', 'Alta', '220V/380V Trifásico', 'Sim (Água fria/quente/osmose e esgoto)', 'Não', 'Exaurimento requerido', '80x90x160 cm', 'Garante limpeza uniforme e proteção ao trabalhador da CME.', 'Anvisa RDC 50, RDC 15', 'Ativo'),
('MAM001', 'Mamógrafo Digital Direto', 'Diagnóstico', 'Mamografia', 'Mamógrafo de alta fidelidade com braço isocêntrico motorizado.', 'Diagnóstico por Imagem', 'Unidade', 250000, 380000, 520000, 'Hologic, GE Healthcare', 10, 6, true, 'Média', 'Alta', '220V', 'Não', 'Não', 'Ar condicionado necessário', '100x120x190 cm', 'Requer proteção e blindagem contra radiação.', 'Anvisa RDC 50, RDC 330', 'Ativo')
ON CONFLICT (code) DO UPDATE SET 
    name = EXCLUDED.name, category = EXCLUDED.category, subcategory = EXCLUDED.subcategory,
    description = EXCLUDED.description, min_price = EXCLUDED.min_price, avg_price = EXCLUDED.avg_price,
    max_price = EXCLUDED.max_price, updated_at = now();

-- Inserir Regras de Cálculo Regulatórias
INSERT INTO public.dimensioning_rules 
(id, name, sector, parameter, operator, value, equipment_code, calculation_type, formula_factor, reserve_factor, classification, justification, normative_reference, active)
VALUES
('RULE001', 'UTI Adulto - Monitor', 'UTI Adulto', 'leitos', '>', 0, 'MON001', 'per_parameter', 1, 0, 'Obrigatório', 'Monitor individual por leito crítico (monitoramento vital contínuo).', 'RDC 50 Anvisa', true),
('RULE002', 'UTI Adulto - Ventilador', 'UTI Adulto', 'leitos', '>', 0, 'VEN001', 'per_parameter', 1, 0.20, 'Obrigatório', 'Ventilador pulmonar mecânico individual (reserva técnica recomendada de 20%).', 'RDC 7 Anvisa / RDC 50', true),
('RULE003', 'UTI Adulto - Bomba Infusão', 'UTI Adulto', 'leitos', '>', 0, 'BOM001', 'per_parameter', 3, 0.10, 'Obrigatório', 'Mínimo 3 bombas de infusão por leito para medicação de alta precisão.', 'RDC 7 Anvisa / RDC 50', true),
('RULE004', 'UTI Adulto - Desfibrilador', 'UTI Adulto', 'leitos', '>', 0, 'DES001', 'rounded_ratio', 10, 0, 'Obrigatório', 'Desfibrilador cardioversor de emergência (1 por 10 leitos ou fração).', 'RDC 7 Anvisa / RDC 50', true),
('RULE005', 'UTI Adulto - ECG', 'UTI Adulto', 'leitos', '>', 0, 'ECG001', 'fixed', 1, 0, 'Recomendado', 'Eletrocardiógrafo dedicado ao setor para traçado diagnóstico rápido.', 'RDC 50 Anvisa', true),
('RULE006', 'UTI Adulto - Carro Parada', 'UTI Adulto', 'leitos', '>', 0, 'CAR001', 'rounded_ratio', 10, 0, 'Obrigatório', 'Carro de parada cardiorrespiratória estruturado. Mínimo 1 por 10 leitos.', 'RDC 50 Anvisa', true),
('RULE007', 'Centro Cirúrgico - Mesa Cirúrgica', 'Centro Cirúrgico', 'salas_cirurgicas', '>', 0, 'MES001', 'per_parameter', 1, 0, 'Obrigatório', 'Mesa cirúrgica principal por sala operatória.', 'RDC 50 Anvisa', true),
('RULE008', 'Centro Cirúrgico - Foco Cirúrgico', 'Centro Cirúrgico', 'salas_cirurgicas', '>', 0, 'FOC001', 'per_parameter', 1, 0, 'Obrigatório', 'Foco de teto LED de alta intensidade para área operatória.', 'RDC 50 Anvisa', true),
('RULE009', 'Centro Cirúrgico - Anestesia', 'Centro Cirúrgico', 'salas_cirurgicas', '>', 0, 'ANE001', 'per_parameter', 1, 0, 'Obrigatório', 'Estação de trabalho de anestesia dedicada por sala.', 'RDC 50 Anvisa', true),
('RULE010', 'Centro Cirúrgico - Bisturi', 'Centro Cirúrgico', 'salas_cirurgicas', '>', 0, 'BIS001', 'per_parameter', 1, 0.10, 'Obrigatório', 'Bisturi elétrico por sala de cirurgia (fator de 10% de reserva técnica).', 'RDC 50 Anvisa', true),
('RULE011', 'Centro Cirúrgico - Monitor', 'Centro Cirúrgico', 'salas_cirurgicas', '>', 0, 'MON001', 'per_parameter', 1, 0, 'Obrigatório', 'Monitor multiparamétrico com canais de anestesia por sala.', 'RDC 50 Anvisa', true),
('RULE012', 'Centro Cirúrgico - Recuperação Monitor', 'Centro Cirúrgico', 'salas_recuperacao', '>', 0, 'MON001', 'per_parameter', 1, 0, 'Obrigatório', 'Monitor por leito de recuperação pós-anestésica (RPA).', 'RDC 50 Anvisa', true),
('RULE013', 'Internação - Carro Emergência', 'Internação', 'leitos', '>', 0, 'CAR001', 'rounded_ratio', 30, 0, 'Recomendado', 'Carro de parada rápida para ala de enfermaria (1 por posto - 30 leitos).', 'RDC 50 Anvisa', true),
('RULE014', 'Internação - Desfibrilador', 'Internação', 'leitos', '>', 0, 'DES001', 'rounded_ratio', 30, 0, 'Recomendado', 'Desfibrilador bifásico acessível (1 por 30 leitos ou posto de enfermagem).', 'RDC 50 Anvisa', true),
('RULE015', 'Pronto-Socorro - Monitor Emergência', 'Pronto-Socorro', 'boxes_emergencia', '>', 0, 'MON001', 'per_parameter', 1, 0, 'Obrigatório', 'Monitor multiparamétrico por box de emergência.', 'RDC 50 Anvisa', true),
('RULE016', 'Pronto-Socorro - Ventilador Emergência', 'Pronto-Socorro', 'boxes_emergencia', '>', 0, 'VEN001', 'per_parameter', 1, 0, 'Obrigatório', 'Ventilador de transporte/emergência por leito crítico do PS.', 'RDC 50 Anvisa', true),
('RULE017', 'Pronto-Socorro - Desfibrilador', 'Pronto-Socorro', 'boxes_emergencia', '>', 0, 'DES001', 'fixed', 1, 0, 'Obrigatório', 'Desfibrilador cardioversor fixo na sala vermelha/emergência.', 'RDC 50 Anvisa', true),
('RULE018', 'Pronto-Socorro - Bomba Infusão', 'Pronto-Socorro', 'boxes_emergencia', '>', 0, 'BOM001', 'per_parameter', 2, 0.10, 'Obrigatório', 'Bombas de infusão (2 por box de emergência) para suporte rápido.', 'RDC 50 Anvisa', true),
('RULE019', 'CME - Autoclave', 'CME', 'salas', '>', 0, 'AUT001', 'fixed', 2, 0, 'Obrigatório', 'Mínimo de 2 autoclaves de barreira na CME para fluxo contínuo e segurança.', 'RDC 15 Anvisa / RDC 50', true),
('RULE020', 'CME - Termodesinfectadora', 'CME', 'salas', '>', 0, 'TER001', 'fixed', 1, 0, 'Recomendado', 'Lavadora termodesinfectadora automatizada para higienização confiável.', 'RDC 15 Anvisa / RDC 50', true),
('RULE021', 'Diagnóstico por Imagem - Raio-X', 'Diagnóstico por Imagem', 'salas_rx', '>', 0, 'RAI001', 'per_parameter', 1, 0, 'Obrigatório', 'Aparelho de raio-x digital por sala de Raio-X cadastrada.', 'RDC 50 Anvisa', true),
('RULE022', 'Diagnóstico por Imagem - Ultrassom', 'Diagnóstico por Imagem', 'salas_usg', '>', 0, 'USG001', 'per_parameter', 1, 0, 'Obrigatório', 'Aparelho de ultrassom por sala de ultrassonografia cadastrada.', 'RDC 50 Anvisa', true),
('RULE026', 'Diagnóstico por Imagem - Tomografia', 'Diagnóstico por Imagem', 'salas_tc', '>', 0, 'TOM001', 'per_parameter', 1, 0, 'Obrigatório', 'Tomógrafo computadorizado por sala de tomografia cadastrada.', 'RDC 50 Anvisa', true),
('RULE027', 'Diagnóstico por Imagem - Ressonância', 'Diagnóstico por Imagem', 'salas_rm', '>', 0, 'RES001', 'per_parameter', 1, 0, 'Obrigatório', 'Ressonância magnética por sala de exame cadastrada.', 'RDC 50 Anvisa', true),
('RULE028', 'Diagnóstico por Imagem - Mamografia', 'Diagnóstico por Imagem', 'salas_mamografia', '>', 0, 'MAM001', 'per_parameter', 1, 0, 'Obrigatório', 'Mamógrafo digital por sala de mamografia cadastrada.', 'RDC 50 Anvisa', true),
('RULE023', 'UTI Neonatal - Incubadora', 'UTI Neonatal', 'leitos', '>', 0, 'INC001', 'per_parameter', 1, 0, 'Obrigatório', 'Incubadora microprocessada termo-controlada individual por leito neonatal.', 'RDC 7 Anvisa / RDC 50', true),
('RULE024', 'UTI Neonatal - Monitor', 'UTI Neonatal', 'leitos', '>', 0, 'MON001', 'per_parameter', 1, 0, 'Obrigatório', 'Monitor individual multiparamétrico neonatal.', 'RDC 7 Anvisa / RDC 50', true),
('RULE025', 'UTI Neonatal - Fototerapia', 'UTI Neonatal', 'leitos', '>', 0, 'FOT001', 'rounded_ratio', 4, 0, 'Recomendado', 'Aparelho de fototerapia (1 para cada 4 leitos críticos ou fração).', 'RDC 50 Anvisa', true)
ON CONFLICT (id) DO UPDATE SET 
    name = EXCLUDED.name, sector = EXCLUDED.sector, parameter = EXCLUDED.parameter,
    operator = EXCLUDED.operator, value = EXCLUDED.value, equipment_code = EXCLUDED.equipment_code,
    calculation_type = EXCLUDED.calculation_type, formula_factor = EXCLUDED.formula_factor,
    reserve_factor = EXCLUDED.reserve_factor, classification = EXCLUDED.classification,
    justification = EXCLUDED.justification, normative_reference = EXCLUDED.normative_reference,
    updated_at = now();
