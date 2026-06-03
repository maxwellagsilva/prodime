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
            WHEN new.email = 'admin@prodime.com.br' 
                 OR new.email = 'maxwell.agsilva@hsl.org.br' 
                 OR new.email = 'maxwellagsilva@gmail.com' THEN 'Admin'
            ELSE 'User'
        END,
        true
    );
    RETURN new;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Trigger disparada após criação de usuário no Auth do Supabase
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
    AFTER INSERT ON auth.users
    FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();


-- Função auxiliar para verificar privilégios de Admin sem causar recursão infinita no RLS
CREATE OR REPLACE FUNCTION public.is_admin(user_id uuid)
RETURNS boolean AS $$
BEGIN
    RETURN EXISTS (
        SELECT 1 FROM public.profiles
        WHERE id = user_id AND role = 'Admin'
    );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;


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


-- Políticas para Profiles
DROP POLICY IF EXISTS "Usuários podem ver seus próprios perfis" ON public.profiles;
CREATE POLICY "Usuários podem ver seus próprios perfis" ON public.profiles
    FOR SELECT USING (auth.uid() = id);

DROP POLICY IF EXISTS "Admins podem ver todos os perfis" ON public.profiles;
CREATE POLICY "Admins podem ver todos os perfis" ON public.profiles
    FOR ALL USING (public.is_admin(auth.uid()));

-- Políticas para Equipamentos (Leitura para todos, Escrita apenas para Admins)
DROP POLICY IF EXISTS "Qualquer um pode ler equipamentos" ON public.equipment;
CREATE POLICY "Qualquer um pode ler equipamentos" ON public.equipment
    FOR SELECT USING (true);

DROP POLICY IF EXISTS "Apenas Admins podem modificar equipamentos" ON public.equipment;
CREATE POLICY "Apenas Admins podem modificar equipamentos" ON public.equipment
    FOR ALL USING (public.is_admin(auth.uid()));

-- Políticas para Regras de Cálculo (Leitura para todos, Escrita apenas para Admins)
DROP POLICY IF EXISTS "Qualquer um pode ler regras" ON public.dimensioning_rules;
CREATE POLICY "Qualquer um pode ler regras" ON public.dimensioning_rules
    FOR SELECT USING (true);

DROP POLICY IF EXISTS "Apenas Admins podem modificar regras" ON public.dimensioning_rules;
CREATE POLICY "Apenas Admins podem modificar regras" ON public.dimensioning_rules
    FOR ALL USING (public.is_admin(auth.uid()));

-- Políticas para Projetos (Apenas o próprio criador acessa)
DROP POLICY IF EXISTS "Criador do projeto tem acesso total" ON public.projects;
CREATE POLICY "Criador do projeto tem acesso total" ON public.projects
    FOR ALL USING (user_id = auth.uid() OR user_id IS NULL);

-- Políticas para Itens do Projeto (Sectores, Parâmetros e Resultados)
DROP POLICY IF EXISTS "Acesso total aos setores vinculados ao projeto do usuário" ON public.project_sectors;
CREATE POLICY "Acesso total aos setores vinculados ao projeto do usuário" ON public.project_sectors
    FOR ALL USING (
        EXISTS (
            SELECT 1 FROM public.projects 
            WHERE projects.id = project_sectors.project_id AND (projects.user_id = auth.uid() OR projects.user_id IS NULL)
        )
    );

DROP POLICY IF EXISTS "Acesso total aos parâmetros vinculados ao projeto do usuário" ON public.sector_parameters;
CREATE POLICY "Acesso total aos parâmetros vinculados ao projeto do usuário" ON public.sector_parameters
    FOR ALL USING (
        EXISTS (
            SELECT 1 FROM public.projects 
            WHERE projects.id = sector_parameters.project_id AND (projects.user_id = auth.uid() OR projects.user_id IS NULL)
        )
    );

DROP POLICY IF EXISTS "Acesso total aos resultados vinculados ao projeto do usuário" ON public.project_equipment_results;
CREATE POLICY "Acesso total aos resultados vinculados ao projeto do usuário" ON public.project_equipment_results
    FOR ALL USING (
        EXISTS (
            SELECT 1 FROM public.projects 
            WHERE projects.id = project_equipment_results.project_id AND (projects.user_id = auth.uid() OR projects.user_id IS NULL)
        )
    );



-- =========================================================================
-- 4. DADOS INICIAIS (SEED) - REMOVIDOS
-- =========================================================================
-- O seed de dados dos equipamentos da RENEM e as regras padrão correspondentes
-- foram migrados para o arquivo independente "insert_renem.sql".
-- Por favor, execute o script do arquivo "insert_renem.sql" no SQL Editor
-- do Supabase após rodar este schema para carregar a base de dados oficial.

