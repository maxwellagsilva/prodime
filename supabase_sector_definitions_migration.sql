-- =====================================================================
-- PRODIME: DEFINIÇÕES DE AMBIENTES E PARÂMETROS
-- =====================================================================
-- Execute no SQL Editor do Supabase antes de usar a aba Admin > Ambientes.

ALTER TABLE public.establishment_sector_compatibility
  ADD COLUMN IF NOT EXISTS sector_name text,
  ADD COLUMN IF NOT EXISTS sector_description text,
  ADD COLUMN IF NOT EXISTS parameters jsonb NOT NULL DEFAULT '[]'::jsonb;

UPDATE public.establishment_sector_compatibility esc
SET
  sector_name = COALESCE(esc.sector_name, defaults.sector_name),
  sector_description = COALESCE(esc.sector_description, defaults.sector_description),
  parameters = CASE
    WHEN esc.parameters = '[]'::jsonb THEN defaults.parameters
    ELSE esc.parameters
  END
FROM (
  VALUES
    ('UTI Adulto', 'UTI Adulto', 'Unidade de Terapia Intensiva Adulto', '[{"name":"leitos","label":"Leitos"}]'::jsonb),
    ('UTI Neonatal', 'UTI Neonatal', 'Unidade de Terapia Intensiva Neonatal', '[{"name":"leitos","label":"Leitos"}]'::jsonb),
    ('UTI Pediátrica', 'UTI Pediátrica', 'Unidade de Terapia Intensiva Pediátrica', '[{"name":"leitos","label":"Leitos"}]'::jsonb),
    ('Centro Cirúrgico', 'Centro Cirúrgico', 'Salas cirúrgicas de alta/média complexidade', '[{"name":"salas_cirurgicas","label":"Salas Cirúrgicas"},{"name":"salas_recuperacao","label":"Leitos de Recuperação (RPA)"}]'::jsonb),
    ('Centro Obstétrico', 'Centro Obstétrico', 'Salas de parto e assistência obstétrica', '[{"name":"salas_parto","label":"Salas de Parto"}]'::jsonb),
    ('Centro Obstetrico', 'Centro Obstétrico', 'Salas de parto e assistência obstétrica', '[{"name":"salas_parto","label":"Salas de Parto"}]'::jsonb),
    ('Pronto-Socorro', 'Pronto-Socorro', 'Serviço de urgência/emergência e triagem', '[{"name":"boxes_emergencia","label":"Boxes de Emergência"}]'::jsonb),
    ('Internação', 'Unidade de Internação', 'Acomodações e leitos gerais de enfermaria', '[{"name":"leitos","label":"Leitos"}]'::jsonb),
    ('CME', 'CME', 'Central de Material e Esterilização', '[{"name":"salas","label":"Salas CME"}]'::jsonb),
    ('Diagnóstico por Imagem', 'Diagnóstico por Imagem', 'Salas de RX, TC, RM, Ultrassom e Mamografia', '[{"name":"salas_rx","label":"Raio-X (RX)"},{"name":"salas_tc","label":"Tomografia (CT)"},{"name":"salas_rm","label":"Ressonância (MR)"},{"name":"salas_usg","label":"Ultrassom (USG)"},{"name":"salas_mamografia","label":"Mamografia"}]'::jsonb)
) AS defaults(sector_id, sector_name, sector_description, parameters)
WHERE esc.sector_id = defaults.sector_id;
