-- =====================================================================
-- PRODIME: MATRIZ DE COMPATIBILIDADE DE SETORES POR TIPO DE ESTABELECIMENTO
-- =====================================================================

-- 1. Criar a tabela de compatibilidade
CREATE TABLE IF NOT EXISTS public.establishment_sector_compatibility (
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  establishment_type text NOT NULL,
  sector_id text NOT NULL,
  is_compatible boolean DEFAULT true NOT NULL,
  created_at timestamp with time zone DEFAULT timezone('utc'::text, now()) NOT NULL,
  UNIQUE(establishment_type, sector_id)
);

-- 2. Ativar Row Level Security (RLS)
ALTER TABLE public.establishment_sector_compatibility ENABLE ROW LEVEL SECURITY;

-- 3. Remover políticas antigas se existirem
DROP POLICY IF EXISTS "Allow public read access on compatibility" ON public.establishment_sector_compatibility;
DROP POLICY IF EXISTS "Allow admin write access on compatibility" ON public.establishment_sector_compatibility;

-- 4. Criar políticas de acesso
CREATE POLICY "Allow public read access on compatibility" 
  ON public.establishment_sector_compatibility 
  FOR SELECT USING (true);

CREATE POLICY "Allow admin write access on compatibility" 
  ON public.establishment_sector_compatibility 
  FOR ALL TO authenticated 
  USING (public.is_admin(auth.uid()));

-- 5. Limpar dados anteriores (evita duplicidade no seed)
TRUNCATE TABLE public.establishment_sector_compatibility CASCADE;

-- 6. Inserir matriz de compatibilidade (RDC 50)
INSERT INTO public.establishment_sector_compatibility (establishment_type, sector_id, is_compatible) VALUES
-- Hospital Geral (Todos os setores liberados)
('Hospital Geral', 'UTI Adulto', true),
('Hospital Geral', 'UTI Neonatal', true),
('Hospital Geral', 'UTI Pediátrica', true),
('Hospital Geral', 'Centro Cirúrgico', true),
('Hospital Geral', 'Centro Obstétrico', true),
('Hospital Geral', 'Pronto-Socorro', true),
('Hospital Geral', 'Internação', true),
('Hospital Geral', 'CME', true),
('Hospital Geral', 'Diagnóstico por Imagem', true),

-- Hospital Especializado (Todos os setores liberados)
('Hospital Especializado', 'UTI Adulto', true),
('Hospital Especializado', 'UTI Neonatal', true),
('Hospital Especializado', 'UTI Pediátrica', true),
('Hospital Especializado', 'Centro Cirúrgico', true),
('Hospital Especializado', 'Centro Obstétrico', true),
('Hospital Especializado', 'Pronto-Socorro', true),
('Hospital Especializado', 'Internação', true),
('Hospital Especializado', 'CME', true),
('Hospital Especializado', 'Diagnóstico por Imagem', true),

-- Hospital-Dia (Cirurgias, CME, Imagem, Internação curta. Sem UTI ou Obstetrício)
('Hospital-Dia', 'UTI Adulto', false),
('Hospital-Dia', 'UTI Neonatal', false),
('Hospital-Dia', 'UTI Pediátrica', false),
('Hospital-Dia', 'Centro Cirúrgico', true),
('Hospital-Dia', 'Centro Obstétrico', false),
('Hospital-Dia', 'Pronto-Socorro', false),
('Hospital-Dia', 'Internação', true),
('Hospital-Dia', 'CME', true),
('Hospital-Dia', 'Diagnóstico por Imagem', true),

-- Pronto Atendimento (Pronto-Socorro, CME, Imagem. Sem UTI, Cirúrgico ou Internação)
('Pronto Atendimento', 'UTI Adulto', false),
('Pronto Atendimento', 'UTI Neonatal', false),
('Pronto Atendimento', 'UTI Pediátrica', false),
('Pronto Atendimento', 'Centro Cirúrgico', false),
('Pronto Atendimento', 'Centro Obstétrico', false),
('Pronto Atendimento', 'Pronto-Socorro', true),
('Pronto Atendimento', 'Internação', false),
('Pronto Atendimento', 'CME', true),
('Pronto Atendimento', 'Diagnóstico por Imagem', true),

-- Clínica Ambulatorial (Consulta e diagnóstico simples. Sem UTI, Cirurgia complexa ou Pronto-Socorro)
('Clínica Ambulatorial', 'UTI Adulto', false),
('Clínica Ambulatorial', 'UTI Neonatal', false),
('Clínica Ambulatorial', 'UTI Pediátrica', false),
('Clínica Ambulatorial', 'Centro Cirúrgico', false),
('Clínica Ambulatorial', 'Centro Obstétrico', false),
('Clínica Ambulatorial', 'Pronto-Socorro', false),
('Clínica Ambulatorial', 'Internação', false),
('Clínica Ambulatorial', 'CME', true),
('Clínica Ambulatorial', 'Diagnóstico por Imagem', true),

-- Unidade Básica de Saúde (Saúde primária. Apenas apoio básico)
('Unidade Básica de Saúde', 'UTI Adulto', false),
('Unidade Básica de Saúde', 'UTI Neonatal', false),
('Unidade Básica de Saúde', 'UTI Pediátrica', false),
('Unidade Básica de Saúde', 'Centro Cirúrgico', false),
('Unidade Básica de Saúde', 'Centro Obstétrico', false),
('Unidade Básica de Saúde', 'Pronto-Socorro', false),
('Unidade Básica de Saúde', 'Internação', false),
('Unidade Básica de Saúde', 'CME', true),
('Unidade Básica de Saúde', 'Diagnóstico por Imagem', true),

-- Centro de Diagnóstico (Apenas imagem e higienização/apoio)
('Centro de Diagnóstico', 'UTI Adulto', false),
('Centro de Diagnóstico', 'UTI Neonatal', false),
('Centro de Diagnóstico', 'UTI Pediátrica', false),
('Centro de Diagnóstico', 'Centro Cirúrgico', false),
('Centro de Diagnóstico', 'Centro Obstétrico', false),
('Centro de Diagnóstico', 'Pronto-Socorro', false),
('Centro de Diagnóstico', 'Internação', false),
('Centro de Diagnóstico', 'CME', true),
('Centro de Diagnóstico', 'Diagnóstico por Imagem', true);
