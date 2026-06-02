-- SCRIPT DE INSERÇÃO RENEM NA BASE PRODIME
-- Gerado automaticamente em 02/06/2026, 19:01:17

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11806', 'Acelerador Linear (Básico - Intermediário)', 'Médico Assistencial', '', 'Equipamento utilizado no serviço de radioterapia, que tem como função emitir a radiação utilizada em diversos tratamentos. As radiações emitidas são os raios x de alta energia (grande poder de penetração para tratamentos de câncer mais profundo) ou elétrons (radiações corpusculares com menor poder de penetração para tratamentos mais superficiais). A energia máxima de fótons deve estar em conformidade com o bunker autorizado (licença CNEN).', '', 'Unidade',
      7553594.53864, 9441993.1733, 11330391.80796, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      'Preço dolarizado referencial de importação.', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11807', 'Acelerador Linear (Recursos avançados com IGRT 3D)', 'Médico Assistencial', '', 'Equipamento utilizado no serviço de radioterapia, que tem como função emitir a radiação utilizada em diversos tratamentos. As radiações emitidas são os raios x de alta energia (grande poder de penetração para tratamentos de câncer mais profundo) ou elétrons (radiações corpusculares com menor poder de penetração para tratamentos mais superficiais). A energia máxima de fótons deve estar em conformidade com o bunker autorizado (licença CNEN).', '', 'Unidade',
      9504809.34128, 11881011.6766, 14257214.01192, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      'Preço dolarizado referencial de importação.', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10272', 'Adipômetro', 'Médico Assistencial', '', 'Instrumento utilizado para medição de gordura localizada e/ou avaliação da composição corporal (cálculo do índice de gordura corporal). O equipamento realiza a medição através de uma prega na região corporal e seus resultados auxiliam num planejamento de atividades físicas e reeducação alimentar para adequação nutricional.', '', 'Unidade',
      140, 175, 210, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10848', 'Agitador com Incubadora', 'Médico Assistencial', '', 'Equipamento utilizado para incubação de amostras que necessitam de agitação orbital e temperatura controlada.', '', 'Unidade',
      14069.6, 17587, 21104.399999999998, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2832', 'Agitador de Kline', 'Médico Assistencial', '', 'Equipamento utilizado  para testes de VDRL, Kline, Alpha ou qualquer outro teste de aglutinação ou floculação.', '', 'Unidade',
      3027.2000000000003, 3784, 4540.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1732', 'Agitador de Plaquetas', 'Médico Assistencial', '', 'Equipamento para agitar plaquetas e bolsas de plaquetas de Apheresis com ou sem termostato.', '', 'Unidade',
      16101.6, 20127, 24152.399999999998, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '41', 'Agitador de Tubos (Vórtex)', 'Médico Assistencial', '', 'Equipamento agitador de tubos e pequenos frascos utilizados em laboratórios.', '', 'Unidade',
      1460.8000000000002, 1826, 2191.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1738', 'Agitador Magnético', 'Médico Assistencial', '', 'Equipamento que promove agitação através de um campo magnético formado por um  ímã acoplado à um pequeno motor.', '', 'Unidade',
      1365.6000000000001, 1707, 2048.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2827', 'Aglutinoscópio', 'Médico Assistencial', '', 'Equipamento para visualizar aglutinação e possibilitar perfeita homogeneização.', '', 'Unidade',
      1664.8000000000002, 2081, 2497.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11922', 'Agogô', 'Apoio', '', 'Instrumento musical de percussão, composto por duas ou mais campanas metálicas de tamanhos diferentes, unidas por uma haste. O som é produzido ao bater com uma baqueta ou com as próprias mãos.', '', 'Unidade',
      117.60000000000001, 147, 176.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2270', 'Alicate de Ordenha para Bolsa de Sangue', 'Apoio', '', 'Alicate utilizado para confinar e selar na bolsa o sangue presente no tubo.', '', 'Unidade',
      17380.8, 21726, 26071.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '174', 'Amalgamador Odontológico', 'Médico Assistencial', '', 'Equipamento de uso odontológico, utilizado para mistura de produtos para homogeneização, necessários à produção da amalgama. A sua função é obturação dental.', '', 'Unidade',
      1652, 2065, 2478, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11994', 'Ambulância Padrão Samu 192 Furgão Sem Equipamentos Aquisição por Pregão 90105/2025 (Item 1)', 'Veículo', '', 'Veículo para transporte e assistência ao paciente (SAMU),para Suporte Básico e/ou Avançado de Vida para Renovação de Frota.', '', 'Unidade',
      234080, 292600, 351120, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11995', 'Ambulância Padrão Samu 192 Furgão Tipo B Aquisição por Pregão 90105/2025 (Item 2)', 'Veículo', '', 'Veículo para transporte e assistência ao paciente (SAMU),para Suporte Básico de Vida (USB).', '', 'Unidade',
      258429.6, 323037, 387644.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11996', 'Ambulância Padrão Samu 192 Furgão Tipo D Aquisição por Pregão 90105/2025 (Item 3)', 'Veículo', '', 'Veículo para transporte e assistência ao paciente (SAMU),para Suporte Avançado de Vida (USA).', '', 'Unidade',
      350227.2, 437784, 525340.7999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11998', 'Ambulância Tipo A - Simples Remoção Furgão (Agora Tem Especialistas) Aquisição por Pregão 90130/2025', 'Veículo', '', 'Ambulância para suporte básico - Tipo A especial (Simples remoção sem risco de vida), destinada ao transporte de pacientes sem risco de vida aparente.', '', 'Unidade',
      219981.6, 274977, 329972.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11656', 'Ambulância Tipo A - Simples Remoção Tipo Furgão', 'Veículo', '', 'Ambulância de transporte para remoção simples e eletiva de pecientes sem risco de vida - Ambulância Tipo A.

Este equipamento possui especificação e preço unitário previamente validados pelo Ministério da Saúde e não serão permitidas alterações.', '', 'Unidade',
      250184, 312730, 375276, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11974', 'Ambulância Tipo A - Simples Remoção Tipo Furgão (Agora Tem Especialistas)', 'Veículo', '', 'Ambulância para suporte básico - Tipo A especial (Simples remoção sem risco de vida), destinada ao transporte de pacientes sem risco de vida aparente.', '', 'Unidade',
      290667.2, 363334, 436000.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11677', 'Ambulância Tipo A - Simples Remoção Tipo Furgoneta', 'Veículo', '', 'Ambulância de transporte para remoção simples e eletiva de pacientes sem risco de vida - Ambulância Tipo A.', '', 'Unidade',
      208798.40000000002, 260998, 313197.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11678', 'Ambulância Tipo A - Simples Remoção Tipo pick-up 4x4', 'Veículo', '', 'Ambulância de transporte para remoção simples e eletiva de pacientes sem risco de vida - Ambulância Tipo A Pick-up 4x4.', '', 'Unidade',
      267530.4, 334413, 401295.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '95', 'Amnioscópio', 'Médico Assistencial', '', 'Equipamento de diagnóstico portátil utilizado pelo médico obstetra para visualizar a cor e a transparência do líquido amniótico. Consiste em um exame simples e indolor onde o médico faz uma análise pela cor do líquido amniótico e com isso consegue determinar o bem estar do bebê.', '', 'Unidade',
      2070.4, 2588, 3105.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11986', 'Amplificador Multicanais', 'Gerais', '', 'É um dispositivo de áudio que contém multiplos circuitos amplificadores discretos (canais) em um único chassi.', '', 'Unidade',
      52498.4, 65623, 78747.59999999999, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2828', 'Analisador Automático para Hematologia', 'Médico Assistencial', '', 'Equipamento automático para rotinas hematológicas, na análise morfológica e contagem de células do sangue.', '', 'Unidade',
      83989.6, 104987, 125984.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '180', 'Analisador Bioquímico', 'Médico Assistencial', '', 'Equipamento de uso essencial em laboratório com medição de analitos, sendo esse dispositivo (automático ou semi automático).', '', 'Unidade',
      89307.20000000001, 111634, 133960.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11416', 'Analisador de Composição Corporal', 'Médico Assistencial', '', 'Equipamento utilizado para diagnosticar deficiência ou excesso de nutrientes no organismo; Acompanhar a evolução terapêutica em várias situações clínicas bem como ser um indicador de risco.', '', 'Unidade',
      28827.2, 36034, 43240.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '718', 'Analisador de Gases Respiratórios/Hemogasômetro', 'Médico Assistencial', '', 'Hemogasômetro, equipamento que permite a análise dos principais gases do sistema respiratório tais como oxigênio e gás carbônico.', '', 'Unidade',
      40332.8, 50416, 60499.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11808', 'Analisador de G6PD', 'Médico Assistencial', '', 'Analisador teste para a detecção quantitativa de Glicose-6-fosfato Desidrogenase (G6PD).', '', 'Unidade',
      1547.2, 1934, 2320.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2877', 'Analisador de Íons/ Eletrólitos', 'Médico Assistencial', '', 'Analisador para dosagem de íons e eletrólitos (como Sódio, Potássio, Cloro, Lítio e Cálcio) nas rotinas laboratoriais de análises clínicas.', '', 'Unidade',
      23477.600000000002, 29347, 35216.4, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10518', 'Analisador de Meridianos', 'Médico Assistencial', '', 'Sistema utilizado para análise bio-elétrica do paciente.', '', 'Unidade',
      1795.2, 2244, 2692.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1461', 'Analisador de Partículas por Difração à Laser', 'Médico Assistencial', '', 'Equipamneto utilizado para medir e caracterizar o tamanho das partículas presentes em uma amostra. Por meio da difração a laser monitora e otimiza a qualidade do produto, garantindo que as partículas estejam dentro das especificações dejedadas', '', 'Unidade',
      942488.6400000001, 1178110.8, 1413732.96, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11324', 'Analisador de Tamanho de Partículas', 'Item Industrial Hosp/Farmacêutico e/ou Pesquisa', '', 'Equipamento utilizado para medir tamanho de partículas sólidas e líquidas, podendo também determinar a forma da partícula analisada, com o objetivo de caracterizar partículas na faixa nano e micrométrica, como nanopartículas, polímeros, proteínas, emulsões, e outros sistemas dispersos.', '', 'Unidade',
      805400.8, 1006751, 1208101.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10493', 'Analisador de Urina', 'Médico Assistencial', '', 'Equipamento para as rotinas de laboratório de urinálise, para determinação parâmetros físicos e químicos,  para auxiliar no diagnóstico de infecções, doenças renais e diabetes.', '', 'Unidade',
      6776.8, 8471, 10165.199999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2789', 'Analisador Imunológico', 'Médico Assistencial', '', 'Equipamento para as rotinas do laboratório de imunologia como: provas hormonais, detecção de marcadores específicos e reações antígeno-anticorpo.', '', 'Unidade',
      156946.4, 196183, 235419.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11952', 'Analisador Termogravimétrico', 'Apoio', '', 'Equipamento utilizado para analisar, avaliar, monitorar massa, por diferentes métodos.', '', 'Unidade',
      1427555.2000000002, 1784444, 2141332.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '909', 'Andador', 'Apoio', '', 'Equipamento utilizado no suporte de pacientes pediátrico a adulto com problemas locomotores.', '', 'Unidade',
      158.4, 198, 237.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11890', 'Andador Posterior com 04 Rodas', 'Apoio', '', 'Equipamento utilizado no suporte de pacientes pediátrico a adulto com problemas locomotores.', '', 'Unidade',
      2264, 2830, 3396, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '162', 'Aparelho de Anestesia', 'Médico Assistencial', '', 'Equipamento destinado à administração e mistura de gases com vapores anestésicos ao paciente, através de respiração espontânea, controlada, manualmente ou mecanicamente, sendo constituído de seção de fluxo contínuo (incluindo vaporizador), sistema respiratório e respirador .', '', 'Unidade',
      230277.6, 287847, 345416.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10927', 'Aparelho de Anestesia com Monitor Multiparâmetros', 'Médico Assistencial', '', 'Equipamento destinado à administração e mistura de gases com vapores anestésicos ao paciente, através de respiração espontânea, controlada, manualmente ou mecanicamente, sendo constituído de seção de fluxo contínuo (incluindo vaporizador), sistema respiratório e respirador. Possui um Monitor Multiparâmetros acoplado ao sistema para medição dos parâmetros fisiológicos durante a anestesia.', '', 'Unidade',
      253957.6, 317447, 380936.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11234', 'Aparelho de Anestesia para Ressonância Magnética', 'Médico Assistencial', '', 'Equipamento destinado à administração e mistura de gases com vapores anestésicos ao paciente, através de respiração espontânea, controlada, manualmente ou mecanicamente, sendo constituído de seção de fluxo contínuo (incluindo vaporizador), sistema respiratório e respirador. Para este item deve ser apresentadas caracteristicas construtivas que permitam a aplicação correta e utilização segura do equipamento em ambientes que possuam Ressonância Nuclear Magnética.', '', 'Unidade',
      300000, 375000, 450000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10270', 'Aparelho de Bioimpedância Elétrica (BIA)', 'Médico Assistencial', '', 'Utilizado para analisar a composição corporal por meio da resistência total do corpo à passagem de uma corrente elétrica.', '', 'Unidade',
      172, 215, 258, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3034', 'Aparelho de Corrente Interferencial', 'Médico Assistencial', '', 'É um equipamento de eletroterapia amplamente utilizado para fins de analgesia (alívio e dor) e estimulação neuromuscular.', '', 'Unidade',
      1948, 2435, 2922, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10', 'Aparelho de DVD', 'Gerais', '', 'Aparelho para audio-visualização de discos do tipo DVD.', '', 'Unidade',
      260.8, 326, 391.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11354', 'Aparelho de Fototerapia para Psoríase', 'Médico Assistencial', '', 'Equipamento de fototerapia indicado para tratamento de psoríase, vitiligo, dermatite atópica, entre outros. Pode ser fixo aplicado para tratamentos de corpo inteiro ou portátil para aplicações em regiões isoladas, a depender do tipo da doença.', '', 'Unidade',
      8288.800000000001, 10361, 12433.199999999999, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2775', 'Aparelho de Luz Infravermelho', 'Médico Assistencial', '', 'Equipamento emissor de radiação infravermelha que auxilia na irrigação sanguínea, na redução da dor e também pode ser utilizado em bancos de leite.', '', 'Unidade',
      373.6, 467, 560.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10912', 'Aparelho de Raios X - Fixo Analógico', 'Médico Assistencial', '', 'Equipamento emissor de Raios X para fins de diagnóstico médico.', '', 'Unidade',
      137280, 171600, 205920, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10883', 'Aparelho de Raios X - Fixo Digital', 'Médico Assistencial', '', 'Equipamento com tecnologia digital (detector de painel plano) emissor de Raios X para fins de diagnóstico clínico por imagem.', '', 'Unidade',
      324781.60000000003, 405977, 487172.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '361', 'Aparelho de Raios X - Móvel', 'Médico Assistencial', '', 'Aparelho móvel emissor de Raios X para fins de diagnóstico médico.', '', 'Unidade',
      199200, 249000, 298800, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '316', 'Aparelho de Raios X - Odontológico', 'Médico Assistencial', '', 'Equipamento de uso odontológico, destinado à obtenção de radiografias odontológicas.', '', 'Unidade',
      10333.6, 12917, 15500.4, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '329', 'Aparelho de Raios X - Panorâmico', 'Médico Assistencial', '', 'Equipamento emissor  de Raios X, para fins de diagnóstico médico-odontológico, que realiza movimento panorâmico ao redor da cabeça, para gerar imagens radiográficas da arcada dentária.', '', 'Unidade',
      117447.20000000001, 146809, 176170.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10913', 'Aparelho de Raios X Telecomandado com Fluoroscopia', 'Médico Assistencial', '', 'Aparelho emissor de Raio X para fins diagnósticos, dotado de sistema de fluoroscopia, que gera imagens em tempo real para exames específicos.', '', 'Unidade',
      2203013.6, 2753767, 3304520.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1748', 'Aparelho de Som', 'Gerais', '', 'Aparelho utilizado na reprodução de som.', '', 'Unidade',
      414.40000000000003, 518, 621.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11820', 'Aparelho Gerador de Ozônio para Odontologia', 'Médico Assistencial', '', 'Equipamento que produz gás ozônio (O3), indicado para o combate a infecções e inflamações, possui propriedades analgésicas, anti-inflamatórias e antissépticas. Utilizado na endodontia, periodontia, cirurgia e no tratamento de cárie dental.', '', 'Unidade',
      10842.400000000001, 13553, 16263.599999999999, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '61', 'Aparelho Medidor de Ponto de Fusão', 'Médico Assistencial', '', 'Equipamento utilizado para a determinação do Ponto de Fusão em produtos sólidos (pós), verificação da pureza e qualidade da substância analisada.', '', 'Unidade',
      3253.6000000000004, 4067, 4880.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '418', 'Aparelho para Densitometria Óssea por Raios - X', 'Médico Assistencial', '', 'Equipamento emissor de Raios X para fins Diagnósticos quanto ao grau de osteoporose e outros diagnósticos ósseos.', '', 'Unidade',
      325477.60000000003, 406847, 488216.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2524', 'Aparelho para Determinação da Desintegração', 'Médico Assistencial', '', 'Aparelho para determinar o tempo de desintegração de comprimidos e cápsulas.', '', 'Unidade',
      58107.200000000004, 72634, 87160.8, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2902', 'Aparelho para Determinação de Dureza', 'Médico Assistencial', '', 'Equipamento para Teste de Dureza de Comprimidos.', '', 'Unidade',
      28305.264000000003, 35381.58, 42457.896, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '360', 'Aparelho para Fisioterapia por Microondas', 'Médico Assistencial', '', 'É um equipamento de termoterapia profunda que utiliza a energia eletromagnética de alta frequência, na faixa das micro-ondas, para gerar calor terapêutico nos tecidos corporais.', '', 'Unidade',
      4434.400000000001, 5543, 6651.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '453', 'Aparelho para Fisioterapia por Ondas Curtas', 'Médico Assistencial', '', 'Equipamento utilizado para aplicar radiações produzidas por meio da corrente elétrica, podendo ser administrada de modo contínuo ou pulsado.', '', 'Unidade',
      7451.200000000001, 9314, 11176.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '321', 'Aparelho para Fototerapia (icterícia/neonatologia)', 'Médico Assistencial', '', 'Aparelho de fototerapia por irradiação de lâmpadas (fluorescentes ou halógenas ou por fonte de LED), constituído por unidade refletora giratória e base móvel com rodízios e sistema de freio.', '', 'Unidade',
      7652, 9565, 11478, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '483', 'Aparelho para Hemodiálise', 'Médico Assistencial', '', 'Aparelho microprocessado que permite o processo de filtragem do sangue.', '', 'Unidade',
      88972.8, 111216, 133459.19999999998, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10492', 'Aparelho para Hemossedimentação', 'Médico Assistencial', '', 'Equipamento automatizado para leitura da Velocidade de Hemossedimentação (VHS) nas rotinas laboratoriais', '', 'Unidade',
      3504, 4380, 5256, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '882', 'Aparelho para Tração Ortopédica', 'Médico Assistencial', '', 'O equipamento é utilizado em tratamento de  problemas nas regiões: cervical, lombar, tornozelo e pé.', '', 'Unidade',
      348.8, 436, 523.1999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10375', 'Aparelho Radiográfico Odontológico para Exame Extraoral', 'Médico Assistencial', '', 'Equipamento de diagnóstico por imagens odontológicas, que são geradas por Raios X emitidos e captados em 360 graus ao redor do paciente, formando os chamados cortes da arcada dentária e demais áreas de interesse do estudo.', '', 'Unidade',
      205835.2, 257294, 308752.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '531', 'Aquecedor de Fluídos/ Sangue', 'Médico Assistencial', '', 'Equipamento que realiza aquecimento de sangue, fluídos corporais, produtos à base de sangue e soluções intravenosas, durante infusão ou não, por meio da utilização de unidades de aquecimento.', '', 'Unidade',
      31708, 39635, 47562, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11751', 'Aquecedor de Máscaras Termoplásticas para Radioterapia', 'Apoio', '', 'Aquecedor de água para modelagem de máscaras termoplásticas.', '', 'Unidade',
      3851.2000000000003, 4814, 5776.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '992', 'Aquecedor Endodôntico para Gutta Percha', 'Médico Assistencial', '', 'Equipamento utilizado para aquecer e plastificar a guta percha.', '', 'Unidade',
      2774.4, 3468, 4161.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2356', 'Aquecedor Portátil de Ambiente', 'Gerais', '', 'Equipamento portátil, utilizado para aqueceder ambientes.', '', 'Unidade',
      143.20000000000002, 179, 214.79999999999998, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2569', 'Ar Condicionado', 'Infraestrutura', '', 'Aparelho que trata o ar, regulando sua qualidade no que diz respeito às suas condições de temperatura.', '', 'Unidade',
      2272, 2840, 3408, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '253', 'Arco Cirúrgico', 'Médico Assistencial', '', 'Equipamento emissor de Raios-X para formação de imagens clínicas para fins diagnósticos. Arco em C móvel com fluoroscopia para a realização de procedimentos em pacientes adultos, pediátricos e neonatais.', '', 'Unidade',
      377769.60000000003, 472212, 566654.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2138', 'Armário', 'Gerais', '', 'Armário móvel de aço ou madeira para guarda de materiais diversos.', '', 'Unidade',
      982.4000000000001, 1228, 1473.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11203', 'Armário com Aspiração de Segurança', 'Apoio', '', 'Equipamento para armazenagem de resinas e produtos químicos voláteis utilizado na oficina ortopédica.', '', 'Unidade',
      6097.6, 7622, 9146.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11925', 'Armário Eletrônico Dispensador de Medicamentos e Materiais Hospitalares com Sistema Automatizado', 'Apoio', '', 'Equipamento utilizado para dispensação de medicamentos e materiais hospitalares, com a finalidade  de garantir uma gestão mais eficiente, segura e controlada das medicações materiais médicos utilizados na unidade de saúde. Ele permite a dispensação automatizada, controlada e rastreável dos materiais, ajudando a evitar desperdícios, erros e uso indevido.', '', 'Unidade',
      211175.2, 263969, 316762.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11718', 'Armário em Aço Inox para CME', 'Gerais', '', 'Armário e/ou estante para utilização em Central de Material  Esterilizado.', '', 'Unidade',
      6091.200000000001, 7614, 9136.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2131', 'Armário Vitrine', 'Gerais', '', 'Armário do tipo vitrine com porta para guarda de materiais ou medicamentos.', '', 'Unidade',
      1336.8000000000002, 1671, 2005.1999999999998, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1730', 'Arquivo', 'Gerais', '', 'Arquivo para documentos, tipo fichário com gaveta.', '', 'Unidade',
      1865.6000000000001, 2332, 2798.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '713', 'Articulador Odontológico', 'Apoio', '', 'Equipamento utilizado para reproduzir as posições maxilo-mandibulares.', '', 'Unidade',
      1664.8000000000002, 2081, 2497.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '71', 'Aspirador de Secreções Elétrico Móvel', 'Médico Assistencial', '', 'Aspirador móvel, utilizado nos procedimentos de aspirar secreção.', '', 'Unidade',
      3630.4, 4538, 5445.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10376', 'Aspirador de Vapores', 'Apoio', '', 'Equipamento utilizado para aspiração de vapores/gases, produzidos durante procedimentos cirúrgicos pela utilização de bisturis eletrônicos a fim de reter possíveis vírus e bactérias através dos filtros, além de eliminar os odores causados pelos cortes e coagulações realizados pelo equipamento. Deve ser utilizado para obter uma sala de cirurgia constantemente limpa e protegida, proporcionando melhores condições de trabalho aos profissionais da saúde.', '', 'Unidade',
      3991.2000000000003, 4989, 5986.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10584', 'Aspirador Ultrassônico/ Bisturi Ultrassônico', 'Médico Assistencial', '', 'O Aspirador Ultrassônico é um equipamento indicado para simultaneamente, fragmentar, emulsificar, irrigar e aspirar tecidos das mais diversas origens, inclusive calcificados. 
Bisturi para corte e coagulação de tecidos moles com amplo controle do sangramento, sem lesões térmicas periféricas, sem utilização de corrente elétrica através do paciente, sem carbonização dos tecidos, sem escarificação, sem fumaça e odores. Ativação ultrassônica gerada por cerâmicas piezoelétricas.', '', 'Unidade',
      385344.80000000005, 481681, 578017.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11889', 'Assistente de Tosse', 'Médico Assistencial', '', 'Equipamento projetado para simular a tosse natural e auxiliar na remoção de secreções das vias respiratórias', '', 'Unidade',
      25116.800000000003, 31396, 37675.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '956', 'Audiômetro', 'Médico Assistencial', '', 'Aparelho usado para medir a sensibilidade auditiva e a intensidade do som. Neste equipamento não poderá ser especificado BERA (Sistema de Potencial Evocado).', '', 'Unidade',
      26349.600000000002, 32937, 39524.4, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10551', 'Autoclave Horizontal de Mesa (até 75 litros)', 'Apoio', '', 'Autoclave horizontal de bancada à vapor para esterilização de instrumentos e materiais médico-cirúrgicos.', '', 'Unidade',
      4491.2, 5614, 6736.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10893', 'Autoclave Hospitalar Horizontal (acima de 350 litros)', 'Apoio', '', 'Autoclave Hospitalar Horizontal de grande porte para esterilização de instrumentais cirúrgicos e materiais em geral.', '', 'Unidade',
      322200, 402750, 483300, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10892', 'Autoclave Hospitalar Horizontal (151 a 350 litros)', 'Apoio', '', 'Autoclave Hospitalar Horizontal de grande porte para esterilização de instrumentais cirúrgicos e materiais em geral.', '', 'Unidade',
      247652, 309565, 371478, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10552', 'Autoclave Hospitalar Horizontal (75 a 150 litros)', 'Apoio', '', 'Autoclave Hospitalar Horizontal de grande porte para esterilização de instrumentais cirúrgicos e materiais em geral, na Central de Materiais Esterelizados.', '', 'Unidade',
      193317.6, 241647, 289976.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2271', 'Autoclave Vertical', 'Apoio', '', 'Autoclave vertical com controle microprocessado, para esterilização de materiais.', '', 'Unidade',
      25006.4, 31258, 37509.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11672', 'Automação para Imuno-Histoquímica', 'Médico Assistencial', '', 'Equipamento para a automação do preparo das amostras nos ensaios de imunohistoquímica. Equipamento para a automação da localização de antígenos em secções de tecido usando anticorpos primários específicos, permitindo a utilização de anticorpos primários de outros fabricantes.', '', 'Unidade',
      563040, 703800, 844560, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10563', 'Autorefrator', 'Médico Assistencial', '', '*Equipamento oftalmológico utilizado para identificar automaticamente o grau de refração do olho, podendo também medir a curvatura da córnea.', '', 'Unidade',
      23624, 29530, 35436, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2141', 'Balança Analítica de Precisão', 'Médico Assistencial', '', 'Balança para preparação de reagentes, corantes e demais rotinas laboratoriais. Pode obter precisão de 0,0001g.', '', 'Unidade',
      5892, 7365, 8838, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2980', 'Balança Antropométrica Adulto', 'Médico Assistencial', '', 'Equipamento para pesagem e medição da estatura do paciente.', '', 'Unidade',
      1474.4, 1843, 2211.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2981', 'Balança Antropométrica Infantil', 'Médico Assistencial', '', '*Equipamento para pesagem do paciente.', '', 'Unidade',
      873.6, 1092, 1310.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11247', 'Balança Antropométrica para Obesos', 'Médico Assistencial', '', '*Equipamento para pesagem e medição da estatura do paciente.', '', 'Unidade',
      1796, 2245, 2694, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11886', 'Balança Digital para Pessoa em Cadeira de Rodas', 'Médico Assistencial', '', '*Equipamento utilizado para pesagem de paciente.

Neste item não serão financiadas balanças do tipo domésticas sendo permitidas apenas balanças do tipo profissional.', '', 'Unidade',
      5398.400000000001, 6748, 8097.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11076', 'Balança Digital Portátil', 'Médico Assistencial', '', '*Equipamento utilizado para pesagem de paciente.

Neste item não serão financiadas balanças do tipo domésticas sendo permitidas apenas balanças do tipo profissional.', '', 'Unidade',
      1594.4, 1993, 2391.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11796', 'Balança Dinâmica', 'Apoio', '', 'Equipamento para checagem de peso em linha.', '', 'Unidade',
      153600, 192000, 230400, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11280', 'Balança para Determinação de Umidade', 'Médico Assistencial', '', 'Equipamento de laboratório que mede a quantidade de água em uma amostra (sólida ou líquida) usando o método de perda por secagem (termogravimétrico), aquecendo-a e calculando a diferença de peso antes e depois da evaporação da umidade.', '', 'Unidade',
      9934.400000000001, 12418, 14901.599999999999, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10265', 'Balança para Laboratório', 'Médico Assistencial', '', 'Equipamento de bancada utilizada em laboratório para medir massa em uso geral com precisão de 0,01g.', '', 'Unidade',
      2268.8, 2836, 3403.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11339', 'Balança Semi-Analítica', 'Médico Assistencial', '', 'Equipamentom digital para uso em laboratórios para medir massa com precisão entre 0,001g e 0,1 g. A capacidade máxima é variável de acordo com o uso pretendido.', '', 'Unidade',
      3516.8, 4396, 5275.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2305', 'Balança Tipo Plataforma', 'Médico Assistencial', '', 'Balança do tipo plataforma para pesagem de materiais diversos.', '', 'Unidade',
      1633.6000000000001, 2042, 2450.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2965', 'Balancim Proprioceptivo', 'Médico Assistencial', '', 'Equipamento utilizado para exercícios de equilíbrio, propriocepção e fortalecimento muscular.', '', 'Unidade',
      488, 610, 732, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2709', 'Balcão de Atendimento', 'Gerais', '', 'Balcão utilizado para atender clientes em uma recepção.', '', 'Unidade',
      1264.8000000000002, 1581, 1897.1999999999998, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2224', 'Balde a Chute', 'Gerais', '', 'Equipamento com rodízios para transportar balde.', '', 'Unidade',
      509.6, 637, 764.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2099', 'Balde a Pedal', 'Gerais', '', 'Recipiente para a coleta de detritos, com dispositivo de elevação da tampa acionado por pedal.', '', 'Unidade',
      334.40000000000003, 418, 501.59999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1717', 'Balde/ Lixeira', 'Gerais', '', 'Cesto  de Lixo  sem pedal.', '', 'Unidade',
      76, 95, 114, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '53', 'Bancada', 'Gerais', '', 'Bancada com superfície em aço inoxidável para preparo e dispensação de imunobiológicos.', '', 'Unidade',
      2310.4, 2888, 3465.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11205', 'Bancada para Oficina Ortopédica', 'Gerais', '', 'Bancada para trabalhos manuais em oficina ortopédica.', '', 'Unidade',
      1510.4, 1888, 2265.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10495', 'Banco de Wells', 'Médico Assistencial', '', 'Utilizado na avaliação física, como um teste de flexibilidade para medir a amplitude do alongamento da parte posterior do tronco e pernas.', '', 'Unidade',
      329.6, 412, 494.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11935', 'Banco Regulável Ajustável Supino - 0 a 90°', 'Apoio', '', 'Equipamento utilizado para a prática de musculação no processo de reabilitação e inserção no esporte adaptado, uso previsto para pessoas com mobilidade reduzida.', '', 'Unidade',
      993.6, 1242, 1490.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11933', 'Banco Supino Reto', 'Apoio', '', 'Equipamento utilizado para a prática de musculação no processo de reabilitação e inserção no esporte adaptado, uso previsto para pessoas com mobilidade reduzida.', '', 'Unidade',
      844.8000000000001, 1056, 1267.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2840', 'Banho a Seco (Termobloco)', 'Médico Assistencial', '', 'Equipamento para incubar substâncias utilizando ao invés de água aquecida (banho-maria tradicional) bloco de alumínio. 
Aplicações nas áreas de biologia molecular, biotecnologia, histologia, análises clínicas, farmacêutica, alimentícia, entre outras.', '', 'Unidade',
      2177.6, 2722, 3266.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '377', 'Banho de Parafina', 'Médico Assistencial', '', 'Aparelho para manter a parafina líquida com temperatura constante e regulável.', '', 'Unidade',
      5934.400000000001, 7418, 8901.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11338', 'Banho Ultrassônico', 'Apoio', '', 'Equipamento utilizado para preparo de soluções e limpeza de materiais.', '', 'Unidade',
      8400, 10500, 12600, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '220', 'Banho-Maria', 'Médico Assistencial', '', 'Utilizado para aquecer lenta e uniformemente qualquer substância líquida ou sólida.', '', 'Unidade',
      1816.8000000000002, 2271, 2725.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1828', 'Banho-Maria (para alimentos)', 'Gerais', '', 'Equipamento utilizado para aquecer as refeições por meio do calor indireto.', '', 'Unidade',
      967.2, 1209, 1450.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10257', 'Banho-Maria para Lactário', 'Médico Assistencial', '', 'Equipamento destinado ao processamento de Leite Humano (aquecimento, degelo ou pasteurização).', '', 'Unidade',
      26703.2, 33379, 40054.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2711', 'Banqueta', 'Gerais', '', 'Banco pequeno e sem encosto.', '', 'Unidade',
      410.40000000000003, 513, 615.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11084', 'Banqueta Dobrável', 'Gerais', '', 'Banco pequeno e sem encosto dobrável.', '', 'Unidade',
      108, 135, 162, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11074', 'Banqueta para Parto Vertical', 'Médico Assistencial', '', 'Utilizado para auxiliar durante o trabalho de parto, com abertura na frente que permite a visualização do parto.', '', 'Unidade',
      840, 1050, 1260, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10298', 'Baropodômetro', 'Médico Assistencial', '', 'Equipamento utilizado para análise e identificação de desvios, pressões anormais na região do pé, entre outros.', '', 'Unidade',
      17769.600000000002, 22212, 26654.399999999998, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11897', 'Barra de Flexão em T', 'Apoio', '', 'Equipamento utilizado para exercícios de força, especialmente para trabalhar os músculos das costas, ombro e braços', '', 'Unidade',
      964.8000000000001, 1206, 1447.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '911', 'Barras Paralelas para Fisioterapia', 'Médico Assistencial', '', 'Equipamento para auxílio de exercicios de fisoterapia e reabilitação (treino, mancha, equilibrio em pé e transferência de peso).', '', 'Unidade',
      2291.2000000000003, 2864, 3436.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1820', 'Bebedouro/ Purificador Refrigerado', 'Gerais', '', 'Bebedouro elétrico para refrigeração de água potável.', '', 'Unidade',
      800, 1000, 1200, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '146', 'BERA Sistema de Potencial Evocado', 'Médico Assistencial', '', 'Utilizado para registrar a atividade elétrica da via auditiva até o sistema nervoso central e assim avaliar o funcionamento da cóclea, nervo da audição e via auditiva central. Também poderá  avaliar a função coclear, indicado para diagnósticar doença de Ménière e monitorar, por meio do módulo, ou função para eletrococleografia (EcohG).', '', 'Unidade',
      59704.8, 74631, 89557.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11595', 'BERA Triagem', 'Médico Assistencial', '', 'Detecta potenciais elétricos que surgem em resposta a sons e avalia a integridade do nervo auditivo e das vias auditivas no tronco encefálico. Realizado aplicando sons (com uma sonda ou fone de ouvido) e captando respostas elétricas através de eletrodos posicionados em 3 pontos na cabeça.', '', 'Unidade',
      32547.2, 40684, 48820.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '553', 'Berço Aquecido', 'Médico Assistencial', '', 'Berço para acomodação de recém nascido, aquecido por sistema de calor irradiante para proporcionar conforto térmico.', '', 'Unidade',
      21796, 27245, 32694, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '20', 'Berço Hospitalar com Grades', 'Apoio', '', 'Equipamento para acomodação de pacientes pediátricos.', '', 'Unidade',
      3314.4, 4143, 4971.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2011', 'Berço para Recém Nascido', 'Apoio', '', 'Equipamento para acomodação de pacientes recém-nascido.', '', 'Unidade',
      1446.4, 1808, 2169.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10864', 'Berço para Recém Nascido com Fototerapia Reversa', 'Médico Assistencial', '', 'É um berço podendo ser aquecido ou não para alojamento do recém-nascido que deve apresentar em sua estrutura o recurso de fototerapia reversa integrada para tratamento da hiperbilirrubinemia neonatal através de irradiação de lâmpadas.', '', 'Unidade',
      18171.2, 22714, 27256.8, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11603', 'Bicicleta', 'Veículo', '', 'Veículo de duas rodas, sendo a traseira acionada por um sistema de pedais que movimentam uma corrente transmissora.', '', 'Unidade',
      685.6, 857, 1028.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11899', 'Bicicleta Elétrica', 'Veículo', '', 'Veículo de duas rodas, tipo motocicleta elétrica utilizada para o deslocamento de profissionais da Estratégia Saúde da Família (ESF), Agentes Comunitários de Saúde (ACS), Equipes Multiprofissionais e outras equipes que necessitam se locomover com agilidade em áreas urbanas e rurais.', '', 'Unidade',
      5018.400000000001, 6273, 7527.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '6', 'Bicicleta Ergométrica Vertical', 'Médico Assistencial', '', 'Equipamento utilizado para realizar estudos ergométricos envolvendo medições dos mais diversos tipos de esforços físicos.', '', 'Unidade',
      3032, 3790, 4548, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '632', 'Bilirrubinômetro', 'Médico Assistencial', '', 'Aparelho analisador de bilirrubina.', '', 'Unidade',
      27547.2, 34434, 41320.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11891', 'Biofeedback Eletromiográfico (Uroginecológico)', 'Médico Assistencial', '', 'Equipamento que contém um sistema eletrônico de amplificação de condicionamento de sinais para conseguir captar, isolar e amplificar o sinal elétrico muscular desejado.', '', 'Unidade',
      4996.8, 6246, 7495.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1737', 'Biombo', 'Apoio', '', 'É um objeto ou móvel, geralmente movível (que pode ser movido), utilizado para divisão de ambientes e promover privacidade ao paciente.', '', 'Unidade',
      832.8000000000001, 1041, 1249.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2745', 'Biombo Plumbífero', 'Apoio', '', 'Mobiliário hospitalar, revestido em chumbo, usado para proteção do profissional durante a realização de exames radiológicos.', '', 'Unidade',
      5837.6, 7297, 8756.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3130', 'Biômetro de Coerência Óptica', 'Médico Assistencial', '', 'Equipamento destinado ao diagnóstico oftalmológico para cálculo de medidas necessárias para determinação da lente intraocular (LIO) durante a cirurgia de catarata, utilizando as medições a partir da luz (interferometria).', '', 'Unidade',
      209846.40000000002, 262308, 314769.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10987', 'Biômetro Ultrassônico/Ecobiômetro', 'Médico Assistencial', '', 'Aparelho oftalmológico que usa ultrassom para medir com precisão as dimensões internas do olho, como o comprimento axial (distância da córnea à retina) e a profundidade da câmara anterior, sendo crucial para calcular o grau da Lente Intraocular (LIO) implantada na cirurgia de catarata, além de auxiliar no diagnóstico de outras condições oculares.', '', 'Unidade',
      23856, 29820, 35784, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1510', 'Biorreator/ Fermentador', 'Médico Assistencial', '', 'Equipamento utilizado em laboratório em processos de fermentação aeróbica e anaeróbica.', '', 'Unidade',
      257042.40000000002, 321303, 385563.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10463', 'BIPAP', 'Médico Assistencial', '', 'Sistema de suporte ventilatório não-invasivo.', '', 'Unidade',
      5059.200000000001, 6324, 7588.799999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11241', 'BIPAP com Monitor Gráfico', 'Médico Assistencial', '', 'Sistema de suporte ventilatório não-invasivo que possua monitor gráfico para monitorização dos parâmetros em UTI.', '', 'Unidade',
      19888.800000000003, 24861, 29833.199999999997, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10989', 'Bisturi Elétrico (a partir de 151 W)', 'Médico Assistencial', '', 'Aparelho utilizado na maioria dos procedimentos cirúrgicos com a finalidade de coagular, dissecar, cortar e fulgurar os tecidos biológicos.', '', 'Unidade',
      27499.2, 34374, 41248.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10995', 'Bisturi Elétrico (até 150 W)', 'Médico Assistencial', '', 'Aparelho utilizado na maioria dos procedimentos cirúrgicos que transforma a corrente elétrica de baixa freqüência em corrente de alta freqüência. Tem a finalidade de coagular, dissecar, cortar e fulgurar os tecidos biológicos.', '', 'Unidade',
      11226.400000000001, 14033, 16839.6, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '434', 'Bomba à Vácuo', 'Infraestrutura', '', 'Equipamento gerador de vácuo para diversas aplicações em ambiente hospitalar.', '', 'Unidade',
      3796, 4745, 5694, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11803', 'Bomba à Vácuo Odontológica', 'Infraestrutura', '', 'Equipamento gerador de vácuo para serviços de saúde bucal.', '', 'Unidade',
      3678.4, 4598, 5517.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2318', 'Bomba D''Agua Elétrica', 'Infraestrutura', '', 'Equipamento que transfere agua de um lugar para outro atraves da tubulação.', '', 'Unidade',
      1312, 1640, 1968, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '407', 'Bomba de Infusão', 'Médico Assistencial', '', 'Equipamento médico-hospitalar, utilizado para infundir líquidos tais como drogas ou nutrientes, com controle de fluxo e volume nas vias venosa.', '', 'Unidade',
      10339.2, 12924, 15508.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10452', 'Bomba de Infusão de Seringa', 'Médico Assistencial', '', 'Bomba de infusão para uso em unidade de terapia intensiva no cuidado de pacientes pediátricos e adultos.', '', 'Unidade',
      6759.200000000001, 8449, 10138.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11887', 'Bomba Dosadora para Fluoretação', 'Gerais', '', 'Bomba para dosar com precisão os compostos de flúor utilizados na fluoretação da água de abastecimento público.', '', 'Unidade',
      4631.2, 5789, 6946.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '246', 'Bomba Elétrica para Sucção de Leite', 'Médico Assistencial', '', 'É um dispositivo médico-hospitalar e de uso doméstico projetado para remover o leite materno do seio de uma mãe lactante por meio de um mecanismo de sucção rítmica e controlada.', '', 'Unidade',
      18225.600000000002, 22782, 27338.399999999998, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10543', 'Bomba Injetora de Contraste', 'Médico Assistencial', '', 'Equipamento para infusão de contraste, automatizada com controle de fluxo e volume, para uso em exames de tomografia, hemodinâmica, ressonância, etc.', '', 'Unidade',
      90597.6, 113247, 135896.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '291', 'Bomba Peristáltica para uso Farmacêutico/ Laboratorial', 'Médico Assistencial', '', 'Equipamento de uso laboratorial utilizado para bombear e dosar com precisão soluções.', '', 'Unidade',
      20385.600000000002, 25482, 30578.399999999998, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10404', 'Botijão Criogênico', 'Médico Assistencial', '', 'Recipientes projetados para o armazenamento e transporte de nitrogênio líquido.', '', 'Unidade',
      4512, 5640, 6768, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2848', 'Botijão de Gás', 'Gerais', '', 'É um recipiente pressurizado, projetado especificamente para armazenar e transportar Gás Liquefeito de Petróleo (GLP).', '', 'Unidade',
      204, 255, 306, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10541', 'Braçadeira para Injeção', 'Apoio', '', 'É um dispositivo médico projetado especificamente para imobilizar e estabilizar o membro (geralmente o braço ou antebraço) de um paciente, a fim de facilitar a realização de procedimentos de injeção ou punção venosa.', '', 'Unidade',
      236, 295, 354, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10547', 'Braquiterapia com Sistema de Controle Remoto', 'Médico Assistencial', '', 'Constitui uma forma de tratamento que utiliza fontes radioativas, em contato direto com o tumor (colo uterino, vagina, vulva, próstata e pele)), sendo indicada a pacientes que se submetem à radioterapia.
Equipamento utilizado no serviço de radioterapia, para os procedimentos intracavitários com a inserção de semente (s) radioativa (s) (radioisótopo) no paciente durante o tratamento.
São premissas que estes equipamentos estejam alinhados com a tecnologia requerida pelo Sistema Único de Saúde, expressa na tabela de procedimentos aprovada e publicada pelo Ministério da Saúde.', '', 'Unidade',
      1643231.6, 2054039.5, 2464847.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      'Preço dolarizado referencial de importação.', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1935', 'Bureta Automática', 'Médico Assistencial', '', 'Equipamento utilizado para dispensações e titulações laboratoriais.', '', 'Unidade',
      7091.200000000001, 8864, 10636.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10806', 'Cabideiro', 'Gerais', '', 'Móvel para pendurar roupas e pertences.', '', 'Unidade',
      217.60000000000002, 272, 326.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1047', 'Cabine Audiométrica', 'Apoio', '', 'Utilizada para diminuir as interferências externas e assim realizar testes audiométricos.', '', 'Unidade',
      6509.6, 8137, 9764.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11773', 'Cabine de Exaustão de Pós', 'Apoio', '', 'Item que retem as partculas sólidas para manipulação laboratorial', '', 'Unidade',
      1450.4, 1813, 2175.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1462', 'Cabine de Pesagem', 'Apoio', '', 'Equipamento utilizado para pesagem e amostragem de matéria-primas.', '', 'Unidade',
      213673.6, 267092, 320510.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '778', 'Cabine de Proteção Biológica', 'Apoio', '', 'Equipamentos que oferecem proteção ao produto manipulado, ao operador e ao ambiente onde estão inseridos e o fluxo de ar é sempre vertical.', '', 'Unidade',
      20937.600000000002, 26172, 31406.399999999998, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '759', 'Cadeira', 'Gerais', '', 'Cadeira de uso geral, utilizada para acomodar pessoas.', '', 'Unidade',
      245.60000000000002, 307, 368.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11934', 'Cadeira Adutora e Abdutora', 'Apoio', '', 'Equipamento utilizado para a prática de musculação no processo de reabilitação e inserção no esporte adaptado, uso previsto ara pessoas com mobilidade reduzida.', '', 'Unidade',
      1919.2, 2399, 2878.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1736', 'Cadeira de Banho/ Higiênica', 'Apoio', '', 'Utilizada para proceder no banho de aspersão em pacientes debilitados.', '', 'Unidade',
      399.20000000000005, 499, 598.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3052', 'Cadeira de Rodas Adulto', 'Apoio', '', 'Equipamento utilizado no transporte de pessoas fragilizadas ou impossibilitada de andar.', '', 'Unidade',
      1211.2, 1514, 1816.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11246', 'Cadeira de Rodas para Obeso', 'Apoio', '', 'Equipamento utilizado no transporte de pessoas fragilizadas ou impossibilitada de andar.', '', 'Unidade',
      1908.8000000000002, 2386, 2863.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11245', 'Cadeira de Rodas Pediátrica', 'Apoio', '', 'Equipamento utilizado no transporte de pessoas fragilizadas ou impossibilitadas de andar.', '', 'Unidade',
      1410.4, 1763, 2115.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11926', 'Cadeira Flexora e Extensora', 'Médico Assistencial', '', 'É utilizado para a prática de musculação no processo de reabilitação e inserção no esporte adaptado, uso previsto para pessoas com mobilidade reduzida.', '', 'Unidade',
      1172.8, 1466, 1759.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '519', 'Cadeira Odontológica Completa', 'Médico Assistencial', '', 'Cadeira utiliza para realizar procedimentos odontológicos. Acompanha o equipo, o sugador e o refletor.', '', 'Unidade',
      21924, 27405, 32886, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1364', 'Cadeira Oftalmológica', 'Apoio', '', 'Utilizada para proceder consultas clínicas e pequenas cirurgias oftalmológicas.', '', 'Unidade',
      16422.4, 20528, 24633.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1754', 'Cadeira Otorrinológica', 'Apoio', '', 'Utilizada para proceder consultas clínicas e pequenas cirurgias otorrinológicas.', '', 'Unidade',
      18696.8, 23371, 28045.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10994', 'Cadeira para Coleta de Sangue', 'Apoio', '', 'Cadeira utilizada para procedimentos de coleta de sangue.', '', 'Unidade',
      500, 625, 750, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10502', 'Cadeira para Massagem', 'Apoio', '', 'Cadeira utilizada para aplicar técnicas de massagens.', '', 'Unidade',
      800.8000000000001, 1001, 1201.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11087', 'Cadeira para Obeso', 'Gerais', '', 'Móbiliário para acomodar pessoas obesas.', '', 'Unidade',
      2004.8000000000002, 2506, 3007.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3043', 'Cadeira para Turbilhão', 'Médico Assistencial', '', 'Cadeira utilizada em hidroterapia para imersão de membros em recipiente onde o tratamento ocorre através do movimento rápido da água em forma de redemoinho.', '', 'Unidade',
      805.6, 1007, 1208.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2272', 'Cadeira Universitária', 'Gerais', '', 'Cadeira universitária para utilização em salas de reuniões e auditórios.', '', 'Unidade',
      645.6, 807, 968.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11625', 'Caixa de Som Amplificada', 'Gerais', '', 'É um sistema de áudio que integra o alto-falante (ou conjunto de alto-falantes) e o amplificador de potência no mesmo gabinete.', '', 'Unidade',
      834.4000000000001, 1043, 1251.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11086', 'Caixa para Desinfecção de Limas Endodônticas', 'Apoio', '', 'É um dispositivo ou recipiente médico-odontológico projetado especificamente para organizar, limpar e desinfetar os instrumentos endodônticos (principalmente as limas).', '', 'Unidade',
      25.6, 32, 38.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11840', 'Caixa Sanfonada', 'Gerais', '', 'Item destinado para armazenar, organizar, transportar, ferramentar, peças, acessórios.', '', 'Unidade',
      172, 215, 258, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2172', 'Caixa Térmica', 'Gerais', '', 'Recipiente utilizado para acondicionamento e/ou transporte temporário de substâncias que requeiram temperaturas controladas (não proporciona controle rigoroso).', '', 'Unidade',
      975.2, 1219, 1462.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11800', 'Calandra Hospitalar', 'Apoio', '', 'Utilizada na lavanderia hospitalar para passar os tecidos através de vapor, gás ou aquecimento elétrico.', '', 'Unidade',
      133978.4, 167473, 200967.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11147', 'Calibrador de Pressão', 'Apoio', '', 'Equipamento portátil utilizado para medir, ajustar e calibrar a pressão em instrumentos de medição de pressão. Permite verificar se os dispositivos de medição estão operando corretamente e fornecendo leituras precisas.', '', 'Unidade',
      101051.20000000001, 126314, 151576.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11162', 'Calorímetro Diferencial de Varredura', 'Apoio', '', 'Equipamento utilizado para a Execução de Análises Térmicas.', '', 'Unidade',
      372866.4, 466083, 559299.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1236', 'Cama Comum (não hospitalar)', 'Apoio', '', 'Cama para acomodar pessoas em ambientes como conforto médico, repouso de funcionários.
Esse item tem disponibilidade para aquisição de dois tipos de cama: cama simples, para acomodar uma pessoa ou beliche, para acomodar duas pessoas.', '', 'Unidade',
      588.8000000000001, 736, 883.1999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11441', 'Cama Elástica Proprioceptiva', 'Médico Assistencial', '', 'É um equipamento de exercício e fisioterapia projetado especificamente para desafiar e estimular o Sistema Proprioceptivo e o Equilíbrio do usuário.', '', 'Unidade',
      444, 555, 666, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '765', 'Cama Hospitalar Adulto (sem movimento Fawler)', 'Médico Assistencial', '', 'Cama para acomodação de pacientes adulto.', '', 'Unidade',
      2037.6000000000001, 2547, 3056.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1002', 'Cama Hospitalar Tipo Fawler Elétrica', 'Médico Assistencial', '', 'Cama com movimentos fawler (deve possuir motores elétricos) para acomodação de pacientes pediátrico, adulto e obeso.', '', 'Unidade',
      19118.4, 23898, 28677.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1981', 'Cama Hospitalar Tipo Fawler Mecânica', 'Médico Assistencial', '', 'Cama com movimentos fawler (movimentos por manivela) para acomodação de pacientes adulto e obeso.

OBSERVAÇÃO: Para a característica Cabeceira/peseira removíveis, ao selecionar a opção "Não possui", entende-se que a cabeceira e peseira são fixas. Ao selecionar qualquer uma das outras duas opções, estará definido o material de confecção e entende-se que as mesmas são removíveis.', '', 'Unidade',
      5749.6, 7187, 8624.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10844', 'Cama PPP', 'Médico Assistencial', '', 'Cama hospitalar que reúne condições necessárias para parto normal (Parto Humanizado).', '', 'Unidade',
      11660.800000000001, 14576, 17491.2, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '595', 'Câmara Cintilográfica (Gama Câmara)', 'Médico Assistencial', '', 'Equipamento detector de radiação emitida por radiofármaco utilizado pelo paciente para fins diagnósticos. Gama Câmara que permita realizar exames gerais de medicina nuclear com técnicas de imagens em SPECT e planares de corpo inteiro, com possibilidade de magnificação da imagem.', '', 'Unidade',
      2864000, 3580000, 4296000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1998', 'Câmara Climática', 'Médico Assistencial', '', 'Equipamento para testes de temperatura, estudos de estabilidade, envelhecimento, durabilidade de materiais, medicamentos, alimentos, peças, embalagens e culturas de tecidos vegetais.', '', 'Unidade',
      33891.200000000004, 42364, 50836.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1384', 'Câmara de Conservação para Transporte de Bolsas de Sangue', 'Apoio', '', 'Equipamento utilizado no apoio ao transporte de bolsas de sangue, possuindo utensílios para este fim.', '', 'Unidade',
      7796, 9745, 11694, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10491', 'Câmara Escura Odontológica', 'Apoio', '', 'é um equipamento ou pequeno compartimento projetado para permitir que o profissional de odontologia realize a manipulação, remoção e processamento químico (revelação e fixação) de filmes radiográficos intraorais sob condições de total escuridão.', '', 'Unidade',
      275.2, 344, 412.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2940', 'Câmara Mortuária', 'Apoio', '', 'Câmara refrigerada utilizada para conservação e guarda de cadáveres.', '', 'Unidade',
      52273.600000000006, 65342, 78410.4, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2460', 'Câmara para Conservação de Hemoderivados/ Imuno/ Termolábeis', 'Apoio', '', 'Câmara fria, para armazenamento e conservação de sangue, vacinas ou outros materiais laboratoriais termolábeis.', '', 'Unidade',
      12948.800000000001, 16186, 19423.2, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3050', 'Câmara para Conservação de Imunobiológicos', 'Apoio', '', 'Câmara fria para armazenamento e conservação de imunobiológicos.', '', 'Unidade',
      12948.800000000001, 16186, 19423.2, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11608', 'Câmara para Conservação de Imunobiológicos a Energia Solar', 'Apoio', '', 'Câmara para conservação e armazenamento científico de imunobilógicos e/ou outros materiais termolábeis com temperatura controlada. A energia elétrica necessária para alimentar o equipamento é gerada através de um kit de energia solar já acoplado ao sistema.', '', 'Unidade',
      27284.800000000003, 34106, 40927.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2039', 'Câmara Ultra-Violeta/ Transiluminador', 'Médico Assistencial', '', 'Câmara (Gabinete) de visualização específica para análise superior de fluorescência em placas ou papéis de cromatografia em camada delgada (TLC), e outros materiais como lipídios, esteróides, vitaminas, porfinas e hidrocarbonos clorados.', '', 'Unidade',
      2900, 3625, 4350, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11834', 'Câmera de Segurança', 'Gerais', '', 'Esse tipo de câmera de segurança é ideal para espaços externos, principalmente para os locais onde se deseja evidenciar a presença do equipamento no ambiente, reforçando a sensação de segurança', '', 'Unidade',
      1804.8000000000002, 2256, 2707.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11858', 'Câmera de Videoconferência', 'Gerais', '', 'Câmera de vídeo que capta imagens, utilizada para videoconferência, monitoramento de ambientes, produção de vídeo e imagens para edição, entre outras aplicações.', '', 'Unidade',
      1714.4, 2143, 2571.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10165', 'Campímetro', 'Médico Assistencial', '', 'Aparelho que realiza o acompanhamento e avaliação do percepção visual (amplitude de visão periférica). Pode ser usado para o diagnóstico precoce de glaucoma, degenerações do nervo óptico e retina. Através do Campímetro é realizado um exame ocular que estuda a percepção visual central e periférica. Quando o oftalmologista mede a visão de longe e de perto ele está observando a percepção visual central. A percepção periférica no ser humano é em torno de 180° se tivermos a falar dos dois olhos, mas, uma campimetria faz-se monocularmente o que reduz para 160°, isto porque temos a cana do nariz que não nos deixa perceber a 180°.', '', 'Unidade',
      70275.2, 87844, 105412.8, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1845', 'Capela de Exaustão de Gases', 'Apoio', '', 'Equipamento de proteção desenvolvida com a finalidade de dissipar gases nocivos, utilizado em laboratórios que realizam o manuseio de reagentes.', '', 'Unidade',
      4199.2, 5249, 6298.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1863', 'Capela de Fluxo Laminar', 'Apoio', '', 'Equipamento projetado para criar áreas de trabalhos estéreis dentro de um laboratório, para garantir que os materiais biológicos, químicos e estéreis sejam manipulados de forma segura e sem risco de contaminação.', '', 'Unidade',
      19984, 24980, 29976, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '149', 'Capnógrafo', 'Médico Assistencial', '', 'Equipamento utilizado na monitoração da concentração de CO2 expirado pelos pacientes.', '', 'Unidade',
      10546.400000000001, 13183, 15819.599999999999, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '108', 'Cardiotocógrafo', 'Médico Assistencial', '', 'Equipamento para monitoração externa da freqüência cardíaca fetal, movimento fetal e contração uterina materna.', '', 'Unidade',
      20267.2, 25334, 30400.8, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '936', 'Cardioversor', 'Médico Assistencial', '', 'Equipamento utilizado para aplicar uma carga, sincronizada, buscando o restabelecimento do ritmo cardíaco.', '', 'Unidade',
      22472.800000000003, 28091, 33709.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11598', 'Cardioversor Para Unidade Móvel de Urgência', 'Médico Assistencial', '', 'Desfibrilador e monitor de ECG, integrados, com opção de sincronismo para uso em pacientes adultos e pediátricos para Unidade Móvel de Urgência.', '', 'Unidade',
      44638.4, 55798, 66957.59999999999, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1703', 'Carrinho de Mão', 'Gerais', '', 'Carro para transporte de materiais de construção.', '', 'Unidade',
      169.60000000000002, 212, 254.39999999999998, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1855', 'Carro de Curativos', 'Apoio', '', 'Carro utilizado no apoio a realização de curativos e transporte de utensílios para este fim.', '', 'Unidade',
      962.4000000000001, 1203, 1443.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10798', 'Carro de Emergência', 'Apoio', '', 'Carro para transporte de materiais e equipamentos utilizado para atender situações de emergência, urgência.', '', 'Unidade',
      5189.6, 6487, 7784.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10805', 'Carro Maca Avançado', 'Apoio', '', 'Maca, com rodízios, que apresenta recursos avançados, utilizada para transportar e acomodar o paciente.', '', 'Unidade',
      14378.400000000001, 17973, 21567.6, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11045', 'Carro Maca para Ressonância Magnética', 'Apoio', '', 'Maca com rodízios confeccionada em material diamagnético utilizada no transporte de pacientes, para uso em procedimentos especiais.', '', 'Unidade',
      3652.8, 4566, 5479.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1488', 'Carro Maca Simples', 'Apoio', '', 'Maca com rodízios utilizada para acomodação e transporte de pacientes.', '', 'Unidade',
      3065.6000000000004, 3832, 4598.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11842', 'Carro para Ferramentas', 'Gerais', '', 'Item móvel utilizado para guardar, transportar materiais.', '', 'Unidade',
      1482.4, 1853, 2223.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2306', 'Carro para Material de Limpeza', 'Gerais', '', 'É um equipamento móvel projetado para organizar, transportar e armazenar de forma eficiente e segura todos os suprimentos, ferramentas e produtos necessários para a realização de serviços de limpeza e manutenção', '', 'Unidade',
      1170.4, 1463, 1755.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11843', 'Carro para Mecânico', 'Gerais', '', 'Item utilizado para ajudar o profissional a ter acesso debaixo de veículos.', '', 'Unidade',
      228, 285, 342, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2223', 'Carro para Transporte de Cadáveres', 'Apoio', '', 'É um equipamento hospitalar ou funerário projetado especificamente para a movimentação segura, discreta e higiênica do corpo de uma pessoa falecida (cadáver) de seu local de óbito para o necrotério, câmara fria ou área de preparação.', '', 'Unidade',
      4535.2, 5669, 6802.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2630', 'Carro para Transporte de Materiais (diversos)', 'Gerais', '', 'Carro para transporte de materiais.', '', 'Unidade',
      4910.400000000001, 6138, 7365.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10350', 'Carro para Transporte de Resíduos', 'Gerais', '', 'Carro utilizado para o transporte de detritos com tampa.', '', 'Unidade',
      1134.4, 1418, 1701.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2089', 'Carro Térmico', 'Apoio', '', 'Carro térmico, utilizado no transporte de bandejas de refeição.', '', 'Unidade',
      51277.600000000006, 64097, 76916.4, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11916', 'Cavalete de Pintura', 'Apoio', '', 'Suporte ou estrutura utilizada para sustentar uma tela nas atividades de arteterapia.', '', 'Unidade',
      82.4, 103, 123.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11904', 'Cavaquinho', 'Apoio', '', 'Instrumento musical de cordas, formado por um corpo oco e chato, em forma de oito, tem um braço que possui trastes que o torna um instrumento temperado, composto de quatro cordas.', '', 'Unidade',
      300, 375, 450, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10397', 'Central de Inclusão de Parafina', 'Médico Assistencial', '', 'Equipamento para inclusão de parafina nas rotinas do Latoratório de Anatomia Patológica. Sistema contendo um módulo de placa fria, um módulo com placa aquecida e dispensador de parafina.', '', 'Unidade',
      43400, 54250, 65100, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10277', 'Central de Monitoração para UTI', 'Médico Assistencial', '', 'Solução destinada para a monitorização simultânea de diversos leitos à distância do local onde o equipamento estiver instalado. A Central assegura e viabiliza aos profissionais a monitoração remota dos pacientes, o que facilita o trabalho no hospital.', '', 'Unidade',
      239488.80000000002, 299361, 359233.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2964', 'Central de Nebulização', 'Médico Assistencial', '', 'Equipamento utilizado para nebulização e ou inalação com fins terapêuticos.', '', 'Unidade',
      2417.6, 3022, 3626.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11802', 'Centrífuga de Roupas', 'Apoio', '', 'Equipamento utlizado para centrifugar roupas e tecidos hospitalares.', '', 'Unidade',
      68932.8, 86166, 103399.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2059', 'Centrífuga Laboratorial', 'Médico Assistencial', '', 'Equipamento utilizado para separar as amostras, fazendo com que a parte líquida da amostra seja separada da parte sólida.', '', 'Unidade',
      3822.4, 4778, 5733.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11264', 'Centrífuga Lavadora de Células', 'Médico Assistencial', '', 'Centrifuga  utilizada para lavar células sanguíneas para testes de reagentes de antiglobulina tais como compatibilidade ABO, testes de Rh, cruzamento combinado, procedimento COOMBS, dentre outros.', '', 'Unidade',
      63751.200000000004, 79689, 95626.8, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1673', 'Centrífuga Refrigerada', 'Médico Assistencial', '', 'Centrífuga utilizada em laboratórios clínicos, hospitais, pesquisas clínicas, microbiologia, bancos de sangue, com necessidade de refrigeração.', '', 'Unidade',
      24255.2, 30319, 36382.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10929', 'Centrifugador para Prótese Dentária', 'Apoio', '', 'Equipamento utilizado para fundir ligas de ouro, níquel/ cromo para a confecção de prótese dentária.', '', 'Unidade',
      908, 1135, 1362, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11782', 'Chapa Aquecedora', 'Apoio', '', 'Equipamento utilizado para o aquecimento uniforme e controlado de diferentes substâncias colocadas no equipamento.', '', 'Unidade',
      1372, 1715, 2058, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11910', 'Chocalho', 'Apoio', '', 'Instrumento musical de percussão que emite sons ao ser agitado, sendo utilizado como um recurso para atividades de reabilitação sensoriais e motoras.', '', 'Unidade',
      248.8, 311, 373.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2656', 'Chuveiro Lava-Olhos', 'Apoio', '', 'São equipamentos de proteção coletiva imprescindíveis a todos os laboratórios. São destinados a eliminar ou minimizar os danos causados por acidentes nos olhos e/ou face e em qualquer parte do corpo.', '', 'Unidade',
      944.8000000000001, 1181, 1417.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3068', 'Cicloergômetro', 'Médico Assistencial', '', 'É um equipamento de exercício e avaliação projetado para permitir que o usuário realize um trabalho físico mensurável utilizando o movimento de pedalar.', '', 'Unidade',
      1539.2, 1924, 2308.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11927', 'Cicloergômetro para Membros Superiores', 'Médico Assistencial', '', 'Equipamento utilizado  para membros superiores possui .regulação em altura a fim de possibilitar a realização do xercício nas posições em pé e sentado. As manivelas são bidirecionais, funcionando de forma ativa ou ativaassistida (o aparelho pode auxiliar o movimento).', '', 'Unidade',
      162.4, 203, 243.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11252', 'Cilindro de CO2', 'Apoio', '', 'Cilindro destinado ao preenchido/ carregamento com Dióxido de Carbono ou CO2, utilizado em várias aplicações na medicina. Existem diversas especificações de pureza deste gás, a qual é requerida pelo tipo de aplicação.', '', 'Unidade',
      902.4000000000001, 1128, 1353.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '782', 'Cilindro de Gases Medicinais', 'Apoio', '', 'Cilindro destinado ao preenchido/carregamento de gás ou mistura de gases destinados ao armazenamento e transporte de gases de alta pureza (como oxigênio, óxido nitroso, ar medicinal) para uso terapêutico, diagnóstico ou anestésico', '', 'Unidade',
      1512, 1890, 2268, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10482', 'Citocentrífuga', 'Médico Assistencial', '', 'Aparelho para preparo de lâminas a partir de células em suspensão dedicada aos procedimentos laboratoriais citológicos', '', 'Unidade',
      11939.2, 14924, 17908.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11411', 'Citômetro de Fluxo ( a partir de 7 parâmetros)', 'Médico Assistencial', '', 'Equipamento de detecção óptico-eletrônico para análises de características físicas e/ou químicas de partículas/células microscópicas suspensas em meio líquido em fluxo. Permite a análise de vários parâmetros simultaneamente para contar, examinar e classificar as estruturas.', '', 'Unidade',
      735200, 919000, 1102800, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11410', 'Citômetro de Fluxo (até 6 parâmetros)', 'Médico Assistencial', '', 'Equipamento de detecção óptico-eletrônico para análises de características físicas e/ou químicas de partículas/células microscópicas suspensas em meio líquido em fluxo. Permite a análise de vários parâmetros simultaneamente para contar, examinar e classificar as estruturas.', '', 'Unidade',
      378400, 473000, 567600, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10908', 'Coagulador de Argônio', 'Médico Assistencial', '', 'O coagulador por plasma de argônio é uma técnica de eletrocoagulação utilizada para a coagulação de tecidos vascularizados e com perda substancial de sangue, que necessita de rápido controle do sangramento e baixa destruição tecidual por haver pouca penetração na espessura da parede do órgão. Indicado para cirurgias de ginecologia, vídeolaparoscopia e endoscopia, cirurgias oncológicas, dentre outras que necessitem de coagulação rápida e eficaz. São necessários para o procedimento um cilindro contendo o gás de argônio, um gerador eletrocirúrgico de alta frequência e uma sonda especial de eletrocoagulação.', '', 'Unidade',
      78149.6, 97687, 117224.4, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2443', 'Coagulômetro', 'Médico Assistencial', '', 'Equipamento para detecção qualitativa ou quantitativa relacionada formação do coágulo, destinado a realização de ensaios de coagulação como: Tempo de Protrombina (TP), Tempo de Tromboplastina Parcialmente ativada (TTPA), Fibrinogênio, Tempo de Trombina (TT), entre outros.', '', 'Unidade',
      10001.6, 12502, 15002.4, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11946', 'Coletor de Dados Hospitalar Móvel', 'Apoio', '', 'Dispositivo portátil robusto com tela sensível ao toque, usado para coleta de dados, comunicação e execução de tarefas à beira leito.', '', 'Unidade',
      3444, 4305, 5166, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10059', 'Colorador Automático de Lâminas', 'Médico Assistencial', '', 'Equipamento para otimização de processos de coloração de lâminas em diversas rotinas laboratoriais.', '', 'Unidade',
      82052.8, 102566, 123079.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '378', 'Colposcópio', 'Médico Assistencial', '', 'Equipamento utilizado para visualização do colo uterino, vagina e vulva.', '', 'Unidade',
      14428, 18035, 21642, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2952', 'Coluna Oftalmológica', 'Médico Assistencial', '', 'Coluna oftalmológica utilizada para apoio nas consultas e pequenas intervenções cirúrgicas e pós-cirúrgicas.', '', 'Unidade',
      11140, 13925, 16710, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1006', 'Comadre', 'Apoio', '', 'Recipiente anatômico utilizado pelo paciente feminino para fazer as suas necessidades fisiológicas.', '', 'Unidade',
      176, 220, 264, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11198', 'Compressor de Ar', 'Gerais', '', 'Equipamento que produz e armazena ar comprimido para aplicações mecânicas, de pintura, dentre outras que requeiram ar comprimido não medicinal.', '', 'Unidade',
      1531.2, 1914, 2296.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3119', 'Compressor Odontológico', 'Apoio', '', 'Equipamento que produz e armazena ar comprimido, isento de óleo, utilizado no consultório odontológico para aplicação de alguns equipamentos que requeiram ar comprimido.', '', 'Unidade',
      2782.4, 3478, 4173.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11907', 'Compressor Torácico Externo Automático', 'Médico Assistencial', '', 'Um compressor torácico portátil é um equipamento médico projetado para realizar compressões torácicas automáticas em pacientes que sofreram parada cardíaca. Ele é usado em situações de emergência para manter a circulação sanguínea até que o paciente possa receber tratamento médico avançado.', '', 'Unidade',
      131976, 164970, 197964, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2149', 'Compressora (para comprimidos)', 'Apoio', '', 'equipamento utilização na compressão de fórmulas farmacêuticas em formato de comprimidos.', '', 'Unidade',
      190900.80000000002, 238626, 286351.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10894', 'Computador (Desktop-Avançado)', 'Gerais', '', 'É um computador de mesa que oferece maior capacidade de armazenamento, maior versatilidade. Possui disco rígico com maior capacidade de armazenamento para fotos, vídeos, programas, sistema operacional; memória RAM superior, interface de vídeo capaz de  transmitir dados de áudio e vídeo em alta resolução simultaneamente por um único cabo,', '', 'Unidade',
      6505.6, 8132, 9758.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2274', 'Computador (Desktop-Básico)', 'Gerais', '', 'É um computador de mesa que não realiza tarefas muito pesadas. Possui capacidade para assistir vídeo, abrir alguns programas, navegar na internet, conforme a quantidade de memória.', '', 'Unidade',
      4490.400000000001, 5613, 6735.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10557', 'Computador Portátil (Notebook)', 'Gerais', '', 'É um computador portátil, que pode ser transportado.', '', 'Unidade',
      5732, 7165, 8598, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11871', 'Computador Portátil (Notebook para Telessaúde)', 'Gerais', '', 'É um computador portátil, que pode ser transportado voltado para as ações da Saúde Digital.', '', 'Unidade',
      5732, 7165, 8598, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10991', 'Computador Servidor (Apenas Servidor Básico de Entrada)', 'Gerais', '', 'O computador servidor é, basicamente, um computador mais potente do que seu desktop comum. Ele foi desenvolvido especificamente para transmitir informações e fornecer produtos de software a outros computadores que estiverem conectados a ele por uma rede. Os servidores têm o hardware para gerenciar o funcionamento em rede wireless e por cabo Ethernet, normalmente através de um roteador.', '', 'Unidade',
      10912, 13640, 16368, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10558', 'Computador Servidor (Servidores de Médio e Grande Porte)', 'Gerais', '', 'O computador servidor é, basicamente, um computador mais potente do que seu desktop comum. Ele foi desenvolvido especificamente para transmitir informações e fornecer produtos de software a outros computadores que estiverem conectados a ele por uma rede. Os servidores têm o hardware para gerenciar o funcionamento em rede wireless e por cabo Ethernet, normalmente através de um roteador.', '', 'Unidade',
      32924, 41155, 49386, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11593', 'Concentrador de Oxigênio', 'Médico Assistencial', '', 'Equipamento que produz oxigênio para entregar ao paciente este gás mais purificado.', '', 'Unidade',
      4588, 5735, 6882, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2160', 'Condutivímetro', 'Apoio', '', 'Medidor de condutividade utilizado no controle de qualidade da água, formulações e soluções.', '', 'Unidade',
      7943.200000000001, 9929, 11914.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11912', 'Conjunto de Bancos Coloridos', 'Apoio', '', 'Bancos versáteis para auxiliar terapias.', '', 'Unidade',
      1322.4, 1653, 1983.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11749', 'Conjunto de Controle de Qualidade e Dosimetria para Radioterapia', 'Apoio', '', 'Item utilizado para determinação da dose absorvida através de medidas em Serviços de Radioterapia.', '', 'Unidade',
      423884.80000000005, 529856, 635827.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11750', 'Conjunto de Fixação de Pacientes em Radioterapia', 'Apoio', '', 'O item permite a confecção de máscaras e moldes com a finalidade de reduzir a possibilidade de qualquer movimento durante a administração da dose de radioterapia.', '', 'Unidade',
      560000, 700000, 840000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10898', 'Consultório Odontológico Portátil', 'Médico Assistencial', '', 'Cadeira odontológica portátil, acompanhada de itens como: sugador, compressor, refletor, seringa tríplice, banqueta, que serão utilizados para realizar procedimentos odontológicos.', '', 'Unidade',
      16870.4, 21088, 25305.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11780', 'Contador de Cápsula', 'Apoio', '', 'Contar cápsulas para que sejam dispensadas em quantidades corretas.', '', 'Unidade',
      240.8, 301, 361.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2190', 'Contador de Colônias', 'Médico Assistencial', '', 'Equipamento usado para contar as colónias de bactérias e outros microorganismos que crescem sobre uma placa de ágar', '', 'Unidade',
      2200.8, 2751, 3301.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1260', 'Contador Manual de Células', 'Médico Assistencial', '', 'Aparelho contador manual de células sanguíneas, podendo ter display digital, tecla de zeragem e timer.', '', 'Unidade',
      916, 1145, 1374, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11812', 'Controladora para rede wifi', 'Gerais', '', 'Reforçar a segurança da rede, impondo políticas de segurança em cada ponto de acesso e impedindo acessos não autorizados à sua rede sem fio. Alguns controladores WLAN ainda oferecem serviços de detecção e prevenção de intrusos em caso de ataque de rede.', '', 'Unidade',
      1606.4, 2008, 2409.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11362', 'Cortina de Ar', 'Infraestrutura', '', 'A cortina de ar ou cortina de vento, é utilizada para proteção contra a perda de ar refrigerado. Além disso, as cortinas realizam a desestratificão  térmica do ar, misturando o ar parado junto ao forro com o ar do piso em ambientes não climatizados; oferecem eficiente barreira de ar para, dentre outros, manter a temperatura do ambiente. Permite o tráfego livre e previne acidentes em passagens através de portas.', '', 'Unidade',
      743.2, 929, 1114.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '626', 'CPAP', 'Médico Assistencial', '', 'Aparelho de pressão positiva contínua nas vias aéreas.', '', 'Unidade',
      2705.6000000000004, 3382, 4058.3999999999996, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10449', 'CR - Digitalizador de Imagens Radiográficas (monocassete)', 'Médico Assistencial', '', 'Equipamento leitor de cassetes para digitalização de imagens radiográficas.', '', 'Unidade',
      102933.6, 128667, 154400.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10921', 'CR - Digitalizador de Imagens Radiográficas (multicassetes)', 'Médico Assistencial', '', 'Equipamento leitor de cassetes para digitalização de imagens radiográficas.', '', 'Unidade',
      136200, 170250, 204300, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3132', 'Criocautério', 'Médico Assistencial', '', 'Equipamento dermatológico utilizado para criocauterização do colo uterino, codilomas, pólipos, lesões verrugosas e lesões de pele. O procedimento é feito através do congelamento da lesão, o que leva à destruição da mesma devido ás baixas temperaturas.', '', 'Unidade',
      4612.8, 5766, 6919.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1422', 'Criostato', 'Médico Assistencial', '', 'Equipamento dedicado para cortes em congelação, sendo um micrótomo montado dentro de um freezer trabalhando com temperaturas em torno de -20ºC.', '', 'Unidade',
      144257.6, 180322, 216386.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '906', 'Cromatógrafo', 'Médico Assistencial', '', 'Aparelho utilizado na análise de substâncias por processo químico, capaz de separar os vários componentes da amostra.', '', 'Unidade',
      419676.80000000005, 524596, 629515.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2144', 'Cronômetro', 'Gerais', '', 'É um tipo de relógio usado para medir pequenos intervalos de tempo.', '', 'Unidade',
      68, 85, 102, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11199', 'DEA - Desfibrilador Externo Automático', 'Médico Assistencial', '', 'É um equipamento eletrônico computadorizado que analisa o ritmo cardíaco, identifica arritmias passíveis de choque e administra a descarga elétrica automaticamente ou após o comando do operador. Ele é projetado para ser utilizado por leigos, com comandos de voz e visuais.

Equipamento que afere os batimentos cardíacos do ser humano e aplica a carga, se necessário, através do modo de Desfibrilação Externa Automática.', '', 'Unidade',
      10794.400000000001, 13493, 16191.599999999999, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11485', 'Decibelímetro', 'Médico Assistencial', '', 'Equipamento utilizado para medir o nível de pressão sonora.', '', 'Unidade',
      1452, 1815, 2178, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11813', 'Decoder de videowall', 'Gerais', '', 'É um recurso utilizado em projetos de Digital Signage no qual várias telas são dispostas juntas uma da outra, possibilitando a formação de um único painel. Com este recurso, é possível exibir conteúdo nos mais diversos formatos.', '', 'Unidade',
      5008, 6260, 7512, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2351', 'Deionizador', 'Apoio', '', 'Equipamento para produção de água quimicamente pura (pureza iônica) em diversas áreas como: Laboratórios Químicos, Farmacêuticos, Análises Clínicas, etc.', '', 'Unidade',
      1929.6000000000001, 2412, 2894.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1116', 'Dermátomo', 'Médico Assistencial', '', 'Equipamento utilizado para corte de pele e debridamento de feridas', '', 'Unidade',
      128610.40000000001, 160763, 192915.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1394', 'Dermatoscópio', 'Médico Assistencial', '', 'É um exame para detecção e prevenção de câncer do pele.', '', 'Unidade',
      10549.6, 13187, 15824.4, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11861', 'Dermatoscópio para Telessaúde', 'Médico Assistencial', '', 'É um exame para detecção e prevenção de câncer do pele, com aplicação para telemedicina.', '', 'Unidade',
      5520, 6900, 8280, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11874', 'Desempoeirador de Comprimido', 'Gerais', '', 'O equipamento possibilita a extração de pó e remoção de rebarbas confiáveis, de acordo com as diretrizes das Boas Práticas de Fabricação (BPF) de medicamentos.', '', 'Unidade',
      849916.8, 1062396, 1274875.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11233', 'Desfibrilador Convencional', 'Médico Assistencial', '', 'É um equipamento médico de suporte avançado de vida, utilizado para reverter arritmias graves, aplicando uma carga, não sincronizada, buscando o restabelecimanto do ritmo cardíaco.', '', 'Unidade',
      18897.600000000002, 23622, 28346.399999999998, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '337', 'Desintegrador de Agulhas', 'Apoio', '', 'Tem o objetivo de impedir a reutilização de agulhas possivelmente contaminadas por diversas doenças transmitidas via contato sangüíneo, além de prevenir acidentes com alto risco de contaminações, evita agressões ao meio ambiente destruindo a agulha por completo.', '', 'Unidade',
      497.6, 622, 746.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '636', 'Dessecador', 'Apoio', '', 'Equipamento utilizado para diminuir a umidade de substância e dessecar produtos.', '', 'Unidade',
      5158.400000000001, 6448, 7737.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2339', 'Destilador de Água', 'Apoio', '', 'Equipamento utilizado para eliminar contaminantes da água por meio do sistema de destilação.', '', 'Unidade',
      2106.4, 2633, 3159.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11781', 'Destilador de Óleo Essencial', 'Médico Assistencial', '', 'É um equipamento projetado para extrair compostos aromáticos voláteis de materiais botânicos.', '', 'Unidade',
      15956, 19945, 23934, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2303', 'Desumidificador', 'Apoio', '', 'Aparelho utilizado para reduzir a umidade relativa do ar no combate ao mofo, fungos e oxidações em ambientes hospitalares.', '', 'Unidade',
      2521.6000000000004, 3152, 3782.3999999999996, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '421', 'Detector Fetal', 'Médico Assistencial', '', 'Equipamento de uso obstétrico, não invasivo, para avaliação por meio de auscultação de dados fetais.', '', 'Unidade',
      1532, 1915, 2298, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '910', 'Diapasão', 'Apoio', '', 'Instrumento metálico em forma de forquilha, utilizado para o diagnótisco da surdez d problemas neurológicos em pacientes pediátricos e neonatais.', '', 'Unidade',
      100, 125, 150, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3039', 'Dinamômetro', 'Médico Assistencial', '', 'Equipamento utilizado para medir a intensidade da força física do paciente.', '', 'Unidade',
      1400, 1750, 2100, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11894', 'Disco Flexor', 'Apoio', '', 'Equipamento utilizado em atividades terapêuticas, promovendo vivências sensoriais que levam a experimentar novos movimentos rotacionais e lineares', '', 'Unidade',
      969.6, 1212, 1454.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10522', 'Dispensador de Parafina', 'Apoio', '', 'Equipamento utilizado para armazenamento e dispensação de parafina derretida dedicada aos procedimentos laboratoriais histológicos.', '', 'Unidade',
      7032.8, 8791, 10549.199999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11837', 'Dispositivo Auxiliar de Marcha', 'Apoio', '', 'Dispositivo utilizado para auxiliar na mobilidade.', '', 'Unidade',
      152, 190, 228, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11924', 'Disruptor de Células e Tecidos', 'Médico Assistencial', '', 'Equipamento utilizado para romper ou quebrar células, tecidos e outros materiais biológicos, liberando seu conteúdo intracelular, para a extração de ácidos nucleicos.', '', 'Unidade',
      77387.2, 96734, 116080.8, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '161', 'Dissolutor - Aparelho para Teste de Dissolução', 'Médico Assistencial', '', 'Equipamento para teste de dissolução de comprimidos e cápsulas.', '', 'Unidade',
      121575.20000000001, 151969, 182362.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1678', 'Divã', 'Gerais', '', 'Poltrona clínica para uso em exames ou para o repouso de pacientes.', '', 'Unidade',
      690.4000000000001, 863, 1035.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11455', 'Dobradeira de Tubos', 'Gerais', '', 'Equipamento utilizado para realizar curvas em tubos para a fabricação e adptação de peças tubulares no serviço de adequação postural de cadeiras de rodas.', '', 'Unidade',
      4712, 5890, 7068, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10225', 'Doppler Vascular', 'Médico Assistencial', '', 'Equipamento utilizado no diagnóstico e monitoração de pulsações de dificil percepção e baixa pressão sanguinea. Equipamento portátil ou de mesa.', '', 'Unidade',
      1276, 1595, 1914, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '451', 'Eletrocardiógrafo', 'Médico Assistencial', '', 'Eletrocardiógrafo é um equipamento projetado para captar a diferença de potencial elétrico gerado pela atividade cardíaca e converte-a em registro gráfico.', '', 'Unidade',
      15960, 19950, 23940, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11860', 'Eletrocardiógrafo para Telessaúde', 'Médico Assistencial', '', 'ECG, Eletrocardiógrafo é um equipamento projetado para captar a diferença de potencial elétrico gerado pela atividade cardíaca e converte-a em registro gráfico, com aplicação para Telessaúde.', '', 'Unidade',
      10281.6, 12852, 15422.4, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '484', 'Eletroencefalógrafo', 'Médico Assistencial', '', 'Equipamento de utilização clínica, eletrônico para medição, amplificação e registro dos sinais fisiológicos do cérebro.', '', 'Unidade',
      16397.600000000002, 20497, 24596.399999999998, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3016', 'Eletroestimulador com Corrente Galvânica-Farádica', 'Médico Assistencial', '', 'Equipamento elétrico usado na eletroterapia cuja função é a estimulação dos músculos, aumentando o metabolismo muscular e a circulação local.', '', 'Unidade',
      3046.4, 3808, 4569.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '529', 'Eletromiógrafo', 'Médico Assistencial', '', 'Equipamento para exame diagnóstico da função de nervos e músculos.', '', 'Unidade',
      86000, 107500, 129000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11242', 'Eletroneuromiógrafo', 'Médico Assistencial', '', 'Equipamento que detecta graficamente os procedimentos de avaliação da função do sistema nervoso periférico e muscular através do registro das respostas elétricas geradas.
A eletroneuromiografia (ENMG) é realizada em duas fases:  estudos dos nervos periférios e estudo dos músculos.
ENMG é realizado por médico com formação especializada em neurofisiologia clínica.', '', 'Unidade',
      198320, 247900, 297480, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1199', 'Eletronistagmógrafo', 'Médico Assistencial', '', 'Equipamento utilizado para realizar o exame otoneurológico, permitindo visualizar, registrar e reproduzir a movimentação ocular do paciente.', '', 'Unidade',
      24029.600000000002, 30037, 36044.4, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10163', 'Eletroretinógrafo', 'Médico Assistencial', '', 'Equipamento de eletrofisiologia visual, para o estudo eletrofisiológico da retina e da visão óptica, permite medir a funcionalidade/vitalidade das células retinianas através de eletrodos.', '', 'Unidade',
      236000, 295000, 354000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10554', 'Elevador para Transposição de Leito', 'Apoio', '', 'Utilizado para fazer a transferência do paciente entre leitos, poltronas, levar ao sanitário.', '', 'Unidade',
      10042.400000000001, 12553, 15063.599999999999, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11083', 'Embarcação para Transporte com Motor Popa (até 12 pessoas)', 'Veículo', '', 'Embarcação para transporte em prol do acesso da População Ribeirinha à Atenção Básica de Saúde.', '', 'Unidade',
      77576.8, 96971, 116365.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '25', 'Emissões Otoacústicas', 'Médico Assistencial', '', 'Utilizado para estimular e captar os sons emitidos pela cóclea após a apresentação de um estímulo sonoro. Destinado a realizar triagem e diagnóstico.', '', 'Unidade',
      31379.2, 39224, 47068.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11594', 'Emissões Otoacústicas Triagem', 'Médico Assistencial', '', 'Utilizado para estimular e captar os sons emitidos pela cóclea após a apresentação de um estímulo sonoro. Este equipamento é destinado SOMENTE para realizar triagem.', '', 'Unidade',
      16789.600000000002, 20987, 25184.399999999998, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2844', 'Empilhadeira', 'Gerais', '', 'É um equipamento que foi especialmente projetado para o manuseio de cargas paletizadas em geral, possibilitando elevar a mesma para carregar e descarregar caminhões, alimentar e retirar mercadorias de prateleiras e ainda efetuar o transporte de cargas.', '', 'Unidade',
      4775.2, 5969, 7162.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2875', 'Encapsuladora', 'Apoio', '', 'Equipamento ultilizado para encapsulamento de fórmula farmacêutica.', '', 'Unidade',
      3884, 4855, 5826, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10138', 'Endoscópio Flexível (Fibroendoscopia)', 'Médico Assistencial', '', 'Endoscópio Flexível composto por fibra óptica para fins de diagnóstico médico.

*SÓ PODEM SER ESPECIFICADOS OS FIBROENDOSCÓPIOS.', '', 'Unidade',
      53877.600000000006, 67347, 80816.4, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '547', 'Endoscópio Rígido', 'Médico Assistencial', '', 'Endoscópio Rígido para acoplamento em fonte de luz e observação interna do corpo humano.', '', 'Unidade',
      72096.8, 90121, 108145.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11908', 'Equipamento de Análise Clínica Tipo Point Of Care', 'Médico Assistencial', '', 'Equipamentos que realizam testes rápidos (bioquímicos, glicemia, marcadores cardíacos, gases
sanguíneos, hemoglobina glicada, PCR etc.) diretamente no local de atendimento ao paciente.', '', 'Unidade',
      6618.400000000001, 8273, 9927.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11936', 'Equipamento de Envase e Rotulagem de Soluções', 'Gerais', '', 'Equipamento destinado a função envasar e rotulagem das soluções de tampão e extraçã quando aplicável dos testes produzidos.', '', 'Unidade',
      549200, 686500, 823800, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11955', 'Equipamento de Moldagem por Compressão à Vácuo', 'Apoio', '', 'Equipamento utilizado para a prototipagem de sistemas de liberação implantáveis e com perda mínima de material.', '', 'Unidade',
      1003196, 1253995, 1504794, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2301', 'Equipamento para Conexão Estéril', 'Apoio', '', 'Equipamento para conexão de tubos estéreis de PVC, para garantia da esterilidade dos componentes.', '', 'Unidade',
      81168, 101460, 121752, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11648', 'Equipamento para Crosslinking Corneano', 'Médico Assistencial', '', 'Equipamento emissor de luz UVA para procedimento de reticulação do colágeno corneano. Utilizado em procedimento não invasivo, para auxílio no tratamento de Ceratocone.', '', 'Unidade',
      368335.2, 460419, 552502.7999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10418', 'Equipamento para Drenagem Linfática', 'Médico Assistencial', '', 'Equipamento utilizado para drenagem linfática.', '', 'Unidade',
      5706.400000000001, 7133, 8559.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11938', 'Equipamento para Impregnação e Laminação de Card', 'Apoio', '', 'Equipamento de Impregnação e Laminação de Cards é utilizado na preparação de dispositivos diagnósticos, promovendo a aplicação uniforme de reagentes e a laminação de camadas funcionais nos cards. É indicado para a produção em larga escala de testes rápidos, garantindo precisão, padronização e qualidade do produto final.', '', 'Unidade',
      7243698.4, 9054623, 10865547.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11937', 'Equipamento para Montagem e Embalagem de Cassetes', 'Apoio', '', 'Equipamento destinado para montar e embalar cassetes utilizados em testes laboratoriais ou diagnósticos, garantindo padronização, segurança e integridade dos produtos. É indicado para ambientes de produção farmacêutica, laboratorial
ou hospitalar que demandam agilidade e precisão na preparação de insumos diagnósticos.', '', 'Unidade',
      2145565.6, 2681957, 3218348.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1592', 'Equipamento para Teste de Integridade de Filtros', 'Apoio', '', 'O equipamento de teste de integridade de filtros tem como finalidade avaliar a integridade de filtros membrana (geralmente de 0,22 µm ou 0,45 µm) antes e/ou depois da filtração de líquidos ou gases estéreis, garantindo que o processo não foi comprometido.', '', 'Unidade',
      542946.4, 678683, 814419.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10055', 'Equipo Cart Odontológico', 'Médico Assistencial', '', 'Utilizado para acoplar as pontas, os reservatórios de água que será utilizado para alimentar essas pontas e auxiliar o profissional durante os procedimentos odontológicos.', '', 'Unidade',
      5274.400000000001, 6593, 7911.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10356', 'Eretor Plataforma', 'Médico Assistencial', '', 'Equipamento utilizado para estabilização de tronco, quadril e trabalho postural.', '', 'Unidade',
      2005.6000000000001, 2507, 3008.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1829', 'Escada com 2 degraus', 'Gerais', '', 'Dispositivo auxiliar para facilitar o acesso de pacientes à níveis mais altos, tais como leitos.', '', 'Unidade',
      312.8, 391, 469.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10902', 'Escada com 3 degraus', 'Gerais', '', 'Dispositivo auxiliar para facilitar o acesso à níveis mais altos.', '', 'Unidade',
      376.8, 471, 565.1999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2374', 'Escada de 7 degraus', 'Gerais', '', 'Escada com 7 degraus com revestimento antiderrapante.', '', 'Unidade',
      250.4, 313, 375.59999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10887', 'Escada Digital em Madeira para Reabilitação', 'Médico Assistencial', '', 'Utilizada para realizar a amplitude de movimento de ombro e dedo.', '', 'Unidade',
      164, 205, 246, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11444', 'Escada em L com Rampa', 'Médico Assistencial', '', 'Escada utilizada para realização de treinos de marcha para recuperação do equilíbrio e força durante a caminhada em rampa ou degraus.', '', 'Unidade',
      2598.4, 3248, 3897.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10211', 'Escada Linear para Marcha (sem rampa)', 'Médico Assistencial', '', 'Utilizada para realizar a marcha ou caminha em pacientes com déficits neuromusculares.', '', 'Unidade',
      1780.8000000000002, 2226, 2671.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11893', 'Escada Suspensa', 'Apoio', '', 'Equipamento utilizado para ativar as reações de equilíbrio, buscar novas direções de subida e descida usando a coordenação bilateral ao mesmo tempo q desenvolve a coordenação viso-motora.', '', 'Unidade',
      412, 515, 618, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10785', 'Esfigmomanômetro Adulto', 'Médico Assistencial', '', 'Equipamento utilizado para aferição, não invasiva, da pressão arterial.', '', 'Unidade',
      88.80000000000001, 111, 133.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '89', 'Esfigmomanômetro de Pedestal', 'Médico Assistencial', '', 'Esfigmomanômetro de coluna de líquido manométrico para medição de pressão arterial em pacientes adultos.', '', 'Unidade',
      803.2, 1004, 1204.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10786', 'Esfigmomanômetro Infantil', 'Médico Assistencial', '', 'Equipamento utilizado para aferição, não invasiva, da pressão arterial.', '', 'Unidade',
      237.60000000000002, 297, 356.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11244', 'Esfigmomanômetro Obeso', 'Médico Assistencial', '', 'Equipamento utilizado para aferição, não invasiva, da pressão arterial.', '', 'Unidade',
      167.20000000000002, 209, 250.79999999999998, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10080', 'Esmerilhadeira', 'Gerais', '', 'Equipamento utilizado para corte a seco, esmerilhamento e lixamento de metais', '', 'Unidade',
      460.8, 576, 691.1999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2934', 'Espaldar em Madeira (Barra/ Escada de Ling)', 'Médico Assistencial', '', 'Equipamento Utilizado para alongamentos e exercícios de fortalecimento muscular e reabilitação motora.', '', 'Unidade',
      1036, 1295, 1554, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2453', 'Espectrofotômetro', 'Médico Assistencial', '', 'Equipamento que mede e compara a quantidade de luz absorvida por uma solução.', '', 'Unidade',
      4629.6, 5787, 6944.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11133', 'Espectrofotômetro UV-VIS', 'Médico Assistencial', '', 'Equipamento para leituras na faixa ultravioleta e visível que permite determinar a concentração de um composto em solução.', '', 'Unidade',
      110895.20000000001, 138619, 166342.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2462', 'Espectrômetro', 'Médico Assistencial', '', 'Instrumento analítico utilizado para medir a massa de íons, identificando compostos químicos em uma amostra. Pode ser utilizado em aplicações como a caracterização de antígenos vacinais e na identificação de componentes em matrizes de origem ambiental e biológica.', '', 'Unidade',
      648000, 810000, 972000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '597', 'Espirômetro', 'Médico Assistencial', '', 'Equipamento para medições de fluxo e volume inspirado e expirado em pacientes.', '', 'Unidade',
      15848.800000000001, 19811, 23773.2, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11868', 'Espirômetro para Telessaúde', 'Médico Assistencial', '', 'Equipamento para medições de fluxo e volume inspirado e expirado em pacientes. Com aplicação para Telessaúde/telemedicina.', '', 'Unidade',
      15848.800000000001, 19811, 23773.2, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11430', 'Estabilizador de Tensão/Módulo Isolador (Para Computador)', 'Gerais', '', 'Os estabilizadores são equipamentos eletrônicos responsáveis por corrigir a tensão da rede elétrica para fornecer aos equipamentos uma alimentação estável e segura.', '', 'Unidade',
      473.6, 592, 710.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10267', 'Estadiômetro', 'Apoio', '', 'Equipamento utilizado para medir altura de pessoas.', '', 'Unidade',
      707.2, 884, 1060.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1921', 'Estante', 'Gerais', '', 'Estante desmontável, de aço, aberta no fundo e nas laterais.', '', 'Unidade',
      630.4000000000001, 788, 945.5999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10856', 'Estativa de Teto para Equipamentos', 'Infraestrutura', '', 'Destinada ao uso no centro cirúrgico com função de suporte para equipamentos.', '', 'Unidade',
      27357.600000000002, 34197, 41036.4, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11932', 'Esteira Elétrica para Usuário de Cadeira de Rodas', 'Apoio', '', 'Equipamento para treino aeróbio para indivíduos que usam cadeira de rodas para a locomoção. Geralmente, possui base larga para caber a cadeira;
sistema de travamento para segurança; monitor que apresenta as medidas relacionadas (tempo, distância
percorrida); ajuste de de velocidade e distância; rampa removível para fácil armazenamento', '', 'Unidade',
      32968.8, 41211, 49453.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3', 'Esteira Ergométrica', 'Médico Assistencial', '', 'Esteira elétrica para uso em exames ergométricos e avaliação física/cardiológica  e para exercícios de reabilitação física.', '', 'Unidade',
      2960.8, 3701, 4441.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10888', 'Esterilizador por Métodos Físicos-Químicos', 'Apoio', '', 'Esterilizador que utiliza processo físico-químico, para esterilização de dispositivos e materiais médicos.', '', 'Unidade',
      472735.2, 590919, 709102.7999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11919', 'Estesiômetro (Monofilamentos de Semmes Weinstein)', 'Apoio', '', 'Instrumento utilizado para avaliar a sensibilidade tátil e neurológica da pele. Mede a percepção de estímulos mecânicos e pode ajudar a diagnosticar neuropatias, lesões nervosas periféricas e outras condições que afetam a sensibilidade cutânea.', '', 'Unidade',
      316.8, 396, 475.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '85', 'Estetoscópio Adulto', 'Médico Assistencial', '', 'Aparelho portátil para auscultação de sons cardíacos e pulmonares de pacientes.', '', 'Unidade',
      276, 345, 414, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '79', 'Estetoscópio de Pinard', 'Médico Assistencial', '', 'Utilizado na auscultação dos batimentos cardíacos, em gestantes. Instrumento em forma de "corneta" (cone);', '', 'Unidade',
      67.2, 84, 100.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11863', 'Estetoscópio Digital para Telessaúde', 'Médico Assistencial', '', 'Aparelho portátil para auscultação de sons cardíacos e pulmonares de pacientes, com aplicação para Telessaúde/Telemedicina.', '', 'Unidade',
      5357.6, 6697, 8036.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '110', 'Estetoscópio Infantil', 'Médico Assistencial', '', 'Aparelho portátil para auscultação de sons cardíacos e pulmonares de pacientes', '', 'Unidade',
      252.8, 316, 379.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '843', 'Estimulador Neuro-Muscular', 'Médico Assistencial', '', 'Equipamento utilizado para realizar a terapia de disfunções neuromusculares por meio da aplicação de corrente elétrica (estimulação elétrica), que pode ser cutânea, anal, vaginal.', '', 'Unidade',
      2388, 2985, 3582, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2841', 'Estufa de CO2', 'Apoio', '', 'Equipamento utilizado para realização de trabalhos envolvendo pesquisas de cultura celular e microbiológicas. Permite o crescimento e desenvolvimento de células em cultura.', '', 'Unidade',
      63176, 78970, 94764, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '410', 'Estufa de Cultura', 'Apoio', '', 'Equipamento para incubação com temperatura controlada, por tempo variável, para incubação, crescimento e multiplicação de microorganismos.', '', 'Unidade',
      3693.6000000000004, 4617, 5540.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2825', 'Estufa de Secagem e Esterilização', 'Apoio', '', 'Equipamento de esterilização e secagem para eliminação de microrganismos de materiais como vidrarias e instrumentais.', '', 'Unidade',
      4049.6000000000004, 5062, 6074.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2452', 'Exaustor de Ar Industrial', 'Infraestrutura', '', 'Exaustão e filtragem de poluentes gerados em processos industriais. Equipamento de parede, podendo ser com ou sem filtro.', '', 'Unidade',
      1232, 1540, 1848, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '359', 'Exaustor para Câmara Escura', 'Infraestrutura', '', 'Utilizado para remover os gases, decorrentes das revelações dos filmes radiológicos.', '', 'Unidade',
      1168, 1460, 1752, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11443', 'Exercitador de Mãos e Dedos', 'Médico Assistencial', '', 'Aparelho para exercitar a flexão das mãos, dedos e antebraços. Indicado para fortalecimento da musculatura, aumento da mobilidade e coordenação dos dedos.', '', 'Unidade',
      41.6, 52, 62.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11446', 'Exercitador de Pés e Tornozelo', 'Médico Assistencial', '', 'Equipamento para realização de exercícios de flexo-extensão de tornozelo e pés, através de exercícios ativos buscando o fortalecimento do tornozelo.', '', 'Unidade',
      332.8, 416, 499.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11984', 'Expansor de Áudio', 'Apoio', '', 'É um processador de dinâmica que aumenta a faixa dinâmica de um sinal de áudio.', '', 'Unidade',
      5327.200000000001, 6659, 7990.799999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10851', 'Expansor de Pele', 'Apoio', '', 'Utilizado em procedimentos cirúrgicos, como enxerto, para promover maior elasticidade da pele.', '', 'Unidade',
      146086.4, 182608, 219129.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1074', 'Extrator Manual de Plasma', 'Apoio', '', 'Equipamento desenvolvido para extração de plasma, preparo de componentes ou fracionamento do sangue após centrifugação.', '', 'Unidade',
      1727.2, 2159, 2590.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '460', 'Extrator/ Purificador de Material Genético', 'Médico Assistencial', '', 'Equipamento destinado a extração ou purificação da amostra para obtenção do material genético.', '', 'Unidade',
      108313.6, 135392, 162470.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11943', 'Extrusora de Co-Rotação com Duplo Parafuso Aquecido', 'Apoio', '', 'Equipamento utilizado para misturar, fundir, dispersar, reagir e conformar materiais
termoplásticos ou pastosos sob alta temperatura e cisalhamento controlado, com alto grau de homogeneização e flexibilidade de formulação.', '', 'Unidade',
      255740, 319675, 383610, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1554', 'Facoemulsificador', 'Médico Assistencial', '', 'Equipamento destinado às cirurgias de catarata pela técnica de facoemulsificação ultrassônica.', '', 'Unidade',
      324533.60000000003, 405667, 486800.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1980', 'Ferro Elétrico Industrial', 'Gerais', '', 'Ferro elétrico industrial, utilizado para passar roupas.', '', 'Unidade',
      928, 1160, 1392, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2982', 'FES', 'Médico Assistencial', '', 'A estimulação elétrica funcional é utilizada para contrair os músculos por meio da corrente elétrica.', '', 'Unidade',
      1896.8000000000002, 2371, 2845.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11905', 'Flauta', 'Apoio', '', 'Instrumento musical de sopro, com formato de um tubo oco com orifícios que emitem sons.', '', 'Unidade',
      33.6, 42, 50.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11884', 'Fluorômetro', 'Apoio', '', 'Equipamentos utilizado para quantificar ácido nucléicos (DNA e RNA) por meio de fluorescência.', '', 'Unidade',
      24559.2, 30699, 36838.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10795', 'Foco Cirúrgico de Solo Móvel', 'Médico Assistencial', '', 'Foco cirúrgico portátil composto por base móvel com rodízio e cúpula (s).', '', 'Unidade',
      24036, 30045, 36054, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3020', 'Foco Cirúrgico de Teto', 'Médico Assistencial', '', 'Sistema de iluminação, de estrutura fixa, utilizado para auxiliar a visualização  dos profissionais durante a realização de procedimentos/intervenções médicas.', '', 'Unidade',
      44528, 55660, 66792, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11417', 'Foco Cirúrgico de Teto com Câmera de Vídeo', 'Médico Assistencial', '', 'Foco cirúrgico com câmera, de estrutura fixa, sistema de iluminação e vídeo utilizado para auxiliar a visualização em tempo real à equipe do centro cirúrgico.', '', 'Unidade',
      118492.8, 148116, 177739.19999999998, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '971', 'Foco Refletor Ambulatorial', 'Médico Assistencial', '', 'Equipamento com foco refletor parabólico de uso em consultórios.', '', 'Unidade',
      639.2, 799, 958.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2894', 'Fogão', 'Gerais', '', 'Utensílio usado para cozinhar, por meio de calor, produzido por elemento combustível o gás.', '', 'Unidade',
      1638.4, 2048, 2457.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2416', 'Fogão Industrial', 'Gerais', '', 'Fogão a gás para uso industrial.', '', 'Unidade',
      2896.8, 3621, 4345.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11987', 'Fone de Ouvido Monoauricular', 'Apoio', '', 'É um headset ou fone que possui apenas um alto-falante para o usuário ouvir o áudio, cobrindo, portanto, somente uma orelha.', '', 'Unidade',
      93.60000000000001, 117, 140.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1618', 'Forno de Despirogenização', 'Apoio', '', 'Equipamento essencial na indústria farmacêutica, projetado para esterilizar e eliminar pirógenos de materiais como frascos, ampolas e utensílios de vidro, garantindo a segurança e a pureza dos produtos finais.', '', 'Unidade',
      2393418.4, 2991773, 3590127.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1994', 'Forno de Microondas', 'Gerais', '', 'Forno elétrico para aquecimento através de microondas, para utilização em ambientes de nutrição.', '', 'Unidade',
      627.2, 784, 940.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11829', 'Forno de Sinterização de Zircônia', 'Apoio', '', 'Equipamento utilizado para sinterização de zircônias, cristalização de dissilicato e glaze de cerâmicas.', '', 'Unidade',
      41840, 52300, 62760, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11819', 'Forno Fotopolimerizador', 'Apoio', '', 'Equipamento indicado para fotopolimerizar resinas de laboratório na confecção de próteses dentárias.', '', 'Unidade',
      3719.2000000000003, 4649, 5578.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1851', 'Forno Industrial', 'Gerais', '', 'Forno para assar alimentos diversos de uso em cozinha industrial.', '', 'Unidade',
      2708, 3385, 4062, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2358', 'Forno Mufla', 'Apoio', '', 'Equipamento utilizado para aquecimento de materiais em temperaturas elevadas sem a contaminação com as cinzas, gazes e resíduos provenientes da combustão. Uttilizado principalmente para o processo de calcinação de substâncias.', '', 'Unidade',
      13680, 17100, 20520, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11214', 'Forno Ortopédico de Infravermelho', 'Apoio', '', 'Equipamento utilizado para termoformagem de órteses e próteses.', '', 'Unidade',
      133950.4, 167438, 200925.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10372', 'Fotocoagulador a Laser', 'Médico Assistencial', '', 'Equipamento dedicado para procedimentos de fotocoagulação dos segmentos anterior e posterior do olho, através de laser. A fotocoagulação consiste no procedimento cirúrgico ambulatorial, com finalidade terapêutica para tratamento de retinopatia diabética, vasculopatias retinianas, degeneração macular relacionada à idade, descolamento de retina e lesões periféricas de retina, entre outros.', '', 'Unidade',
      562384, 702980, 843576, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11973', 'Fotodocumentador Multimodal', 'Apoio', '', 'É um equipamento utilizado para captura e documentação
digital de imagens de amostras biológicas em diferentes plataformas experimentais, utilizado em laboratórios e na área médica.', '', 'Unidade',
      234452, 293065, 351678, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3069', 'Fotóforo - Foco de Luz de Cabeça', 'Médico Assistencial', '', 'Equipamento utilizado para iluminação clínica e cirúrgica em áreas pouco iluminadas.', '', 'Unidade',
      5619.200000000001, 7024, 8428.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1129', 'Fotômetro', 'Médico Assistencial', '', 'Aparelho que permite determinar a concentração de íons em amostras biológicas nas rotinas de análises laboratoriais.', '', 'Unidade',
      9205.6, 11507, 13808.4, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '419', 'Fotopolimerizador de Resinas', 'Apoio', '', 'Aparelho indicado para polimerizar resinas através de luz visível.', '', 'Unidade',
      1094.4, 1368, 1641.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1414', 'Freezer Comum', 'Gerais', '', 'Equipamento utilizado para conservar alimentos e materiais afins.', '', 'Unidade',
      3093.6000000000004, 3867, 4640.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11743', 'Freezer Laboratorial', 'Apoio', '', 'Equipamento destinado para o armazenamento de amostras laboratoriais.', '', 'Unidade',
      20723.2, 25904, 31084.8, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10930', 'Freezer para Armazenamento de Hemocomponentes', 'Apoio', '', 'Freezer especial para armazenamento e ou conservação de amostras laboratoriais, hemoderivados ou hemocomponentes.', '', 'Unidade',
      20723.2, 25904, 31084.8, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10906', 'Freezer para Banco de Leite', 'Apoio', '', 'Equipamento utilizado para congelar e conservar leite humano.', '', 'Unidade',
      3059.2000000000003, 3824, 4588.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11269', 'Freezer para Congelamento Rápido (Blast Freezer)', 'Apoio', '', 'Freezer para Congelamento Rápido (Blast Freezer)', '', 'Unidade',
      96756.8, 120946, 145135.19999999998, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2312', 'Freezer para Congelamento Rápido (Ultrafreezer)', 'Apoio', '', 'Equipamento empregado na conservação e armazenamento de materiais para laboratório, produtos para laboratório, preparação de amostras que serão submetidas a testes de qualidade e também utilizado como Freezer para Plasma, já que promove temperaturas baixas.', '', 'Unidade',
      55656, 69570, 83484, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1988', 'Freezer para Soroteca', 'Apoio', '', 'Equipamento destinado para o armazenamento de amostras laboratoriais.', '', 'Unidade',
      20723.2, 25904, 31084.8, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11828', 'Fresadora Odontológica', 'Médico Assistencial', '', 'Equipamento de usinagem dental de alta precisão que utiliza tecnologia CAD/CAM para fabricar próteses dentárias, como coroas, pontes e facetas.', '', 'Unidade',
      148960, 186200, 223440, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2103', 'Fresadora Ortopédica', 'Apoio', '', 'Equipamento utilizado para fresagem de Próteses e Órteses.', '', 'Unidade',
      30740.800000000003, 38426, 46111.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '516', 'Friabilômetro', 'Médico Assistencial', '', 'Equipamento utilizado em laboratórios e indústrias farmacêuticas para medir o grau de friabilidade dos comprimidos.', '', 'Unidade',
      20499.2, 25624, 30748.8, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2347', 'Furadeira Elétrica de Bancada', 'Gerais', '', 'Furadeira de precisão e eficiência nas operações.', '', 'Unidade',
      716.8000000000001, 896, 1075.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11206', 'Furadeira Manual Industrial 1/2"', 'Gerais', '', 'Furadeira manual elétrica de uso profissional.', '', 'Unidade',
      446.40000000000003, 558, 669.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2355', 'Gabinete UV para Visualização de Cromatografia', 'Apoio', '', 'Câmara escura/Gabinete UV para visualização de fluorescência com lâmpadas e visor conferindo proteção UV.', '', 'Unidade',
      3358.4, 4198, 5037.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11928', 'Gaiola Power Hack', 'Médico Assistencial', '', 'Equipamento de musculação focado no treino dos membros inferiores a partir de
uma plataforma ajustável. Sua estrutura é feita de metal, possuindo ganchos para descanso de barras, apoio
para barras paralela com manopla de borracha, podendo ou não ser fixada no chão', '', 'Unidade',
      3218.4, 4023, 4827.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11251', 'Gama Probe', 'Médico Assistencial', '', 'Sistema de sondas intra-operatórias destinadas a determinar com alta precisão a localização e extensão de um tecido patológico previamente marcado com radioisótopos emissores de raios gama.', '', 'Unidade',
      140664, 175830, 210996, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10904', 'Gangorra de Equilíbrio', 'Médico Assistencial', '', 'Equipamento utilizado na reabilitação e fisoterapia para teste de equilíbrio.', '', 'Unidade',
      323.20000000000005, 404, 484.79999999999995, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2398', 'Ganho de Inserção', 'Médico Assistencial', '', 'Sistema de medição do ganho de inserção acústica, para avaliação da amplificação sonora individual.', '', 'Unidade',
      54148, 67685, 81222, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10928', 'Garrote Pneumático Eletrônico', 'Médico Assistencial', '', 'Utilizado para bloquear a circulação sanguínea e assim realizar procedimentos médicos e cirúrgicos.', '', 'Unidade',
      61300, 76625, 91950, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10942', 'Geladeira Comercial de 4 Portas', 'Gerais', '', 'Geladeira Comercial utilizada para resfriamento de produtos alimentícios.', '', 'Unidade',
      5242.400000000001, 6553, 7863.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10935', 'Geladeira de Porta Dupla para Hematologia', 'Apoio', '', 'Refrigerador para armazenamento e conservação de hemoderivados.', '', 'Unidade',
      43590.4, 54488, 65385.6, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2022', 'Geladeira/ Refrigerador', 'Gerais', '', 'Equipamento destinado à conservação sob refrigeração e/ou em baixa temperatura de materiais diversos.', '', 'Unidade',
      2312.8, 2891, 3469.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11853', 'Gerador de Umidade', 'Apoio', '', 'É um dispositivo projetado para produzir e controlar níveis específicos de umidade relativa em um ambiente controlado. Ele pode ser usado em laboratórios, processos industriais, testes de materiais, calibração de instrumentos e outras aplicações que exigem condições precisas de umidade. O gerador de umidade permite criar uma atmosfera controlada para garantir a precisão e consistência nas medições e experimentos.', '', 'Unidade',
      80752.8, 100941, 121129.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '428', 'Glicosímetro', 'Médico Assistencial', '', 'Aparelho para medição da dosagem de glicose no sangue.', '', 'Unidade',
      92, 115, 138, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3027', 'Goniômetro', 'Apoio', '', 'Goniômetro para mensuração de amplitude articular.', '', 'Unidade',
      96, 120, 144, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '78', 'Gotejador Elétrico', 'Apoio', '', 'Utilizado para encerar as próteses dentárias.', '', 'Unidade',
      1387.2, 1734, 2080.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11610', 'GPS Portátil', 'Gerais', '', 'GPS é um sistema de navegação por satélite com um aparelho móvel que envia informações sobre a posição de algo em qualquer horário e em qualquer condição climática. GPS é a sigla de Global Positioning System que significa sistema de posicionamento global, em português.', '', 'Unidade',
      1680.8000000000002, 2101, 2521.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11208', 'Graminho Traçador', 'Gerais', '', 'Equipamento utilizado para marcações de referência em moldes gessados.', '', 'Unidade',
      1443.2, 1804, 2164.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2572', 'Granulador', 'Médico Assistencial', '', 'Equipamento utilizado para granular produtos ou matéria prima.', '', 'Unidade',
      72328, 90410, 108492, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11980', 'Gravador de Áudio Digital', 'Apoio', '', 'É um dispositivo eletrônico projetado para capturar, converter, armazenar e reproduzir sinais de áudio em formato digital.', '', 'Unidade',
      978.4000000000001, 1223, 1467.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11243', 'Grupo Gerador (acima de 300 KVA)', 'Infraestrutura', '', 'Equipamento utilizado na redundância de abastecimento de energia elétrica, evitando-se contingências, garantindo o fornecimento de energia elétrica e também do funcionamento dos serviços.', '', 'Unidade',
      180762.40000000002, 225953, 271143.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10901', 'Grupo Gerador Portátil (até 7 KVA)', 'Infraestrutura', '', 'Equipamento utilizado na redundância de abastecimento de energia elétrica, evitando-se contingências, garantindo o fornecimento de energia elétrica e também do funcionamento dos serviços.', '', 'Unidade',
      7205.6, 9007, 10808.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10602', 'Grupo Gerador (101 a 300 KVA)', 'Infraestrutura', '', 'Equipamento utilizado na redundância de abastecimento de energia elétrica, evitando-se contingências, garantindo o fornecimento de energia elétrica e também do funcionamento dos serviços.', '', 'Unidade',
      137727.2, 172159, 206590.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2570', 'Grupo Gerador (8 a 100 KVA)', 'Infraestrutura', '', 'Equipamento utilizado na redundância de abastecimento de energia elétrica, evitando-se contingências, garantindo o fornecimento de energia elétrica e também do funcionamento dos serviços.', '', 'Unidade',
      68912.8, 86141, 103369.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2158', 'Hemoglobinômetro', 'Médico Assistencial', '', 'Sistema de análise de hemoglobina, por meio de amostra de sangue.', '', 'Unidade',
      5270.400000000001, 6588, 7905.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1858', 'Homogeneizador', 'Médico Assistencial', '', 'Aparelho utilizado as rotinas de laboratórios de Análises Clínicas, Hospitais, Universidades, Centros de Pesquisas e Ensino, dentre outros. Tem como função manter as células sangüíneas em suspensão homogênea nos exames hematológicos, lavar precipitados, preparar suspensões, dissolver as amostras que reagem vagarosamente, dentre outros.', '', 'Unidade',
      1331.2, 1664, 1996.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10458', 'Homogeneizador de Bolsa de Sangue', 'Médico Assistencial', '', 'Homogeneizador de sangue para hematologia.', '', 'Unidade',
      18739.2, 23424, 28108.8, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11818', 'Imersor de Cera', 'Apoio', '', 'Equipamento aquecedor de cera para prótese dentária, desenvolvido para fabricação de coppings; derrete a cera rapidamente e mantem a temperatura ideal.', '', 'Unidade',
      489.6, 612, 734.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1966', 'Imitanciômetro', 'Médico Assistencial', '', 'Utilizado para avaliar as condições da orelha média. Sendo possível identificar o tipo de perda auditiva, se condutiva ou neurosensorial.', '', 'Unidade',
      30400, 38000, 45600, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11920', 'Impressora de Cassetes', 'Apoio', '', 'Equipamento utilizado no rastreio e identificação de amostras de tecidos.', '', 'Unidade',
      155261.6, 194077, 232892.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1731', 'Impressora de Código de Barras', 'Gerais', '', 'Equipamento utilizado para impressão de código de barras.', '', 'Unidade',
      1703.2, 2129, 2554.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11918', 'Impressora de Lâminas', 'Apoio', '', 'Equipamednto utilizado  para identificação e rastreamento de amostras microscópicas imprimindo diretamente
nas lâminas informações como código de barras, nomes de pacientes e números de
identificação, garantindo organização e rastreabilidade.', '', 'Unidade',
      151032, 188790, 226548, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '288', 'Impressora Dry de Filmes Radiológicos', 'Apoio', '', 'Sistema de impressão térmica de alta resolução para uso em aparelhos raiao-x, tomografia  computadorizada, ressonância magnética, ultra-som, medicina nuclear e etc.', '', 'Unidade',
      29540, 36925, 44310, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10896', 'Impressora Laser (Comum)', 'Gerais', '', 'Equipamento utilizado para impressão de documentos ou imagens.', '', 'Unidade',
      2484, 3105, 3726, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1373', 'Impressora Laser Multifuncional (copiadora, scanner e fax opcional)', 'Gerais', '', 'Equipamento multifucional utilizado para impressão, cópia, scanner e recebimento de fax.', '', 'Unidade',
      4182.400000000001, 5228, 6273.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11831', 'Impressora 3D Odontológica', 'Apoio', '', 'Equipamento que permite a impressão 3D de modelos altamente detalhados e precisos, como a confecção de gengiva artificial, guia cirúrgico, placas miorrelaxantes, prótese total e moldeiras individuais.', '', 'Unidade',
      4533.6, 5667, 6800.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1697', 'Incubadora de Demanda Bioquímica de Oxigênio (BOD)', 'Médico Assistencial', '', 'Equipamento para medição de BOD (demanda bioquimica de oxigênio) ou para estudos de SHELF-LIFE (prazo de validade) a seco e incubações a baixa temperatura.', '', 'Unidade',
      8268.800000000001, 10336, 12403.199999999999, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10319', 'Incubadora de Plaquetas', 'Médico Assistencial', '', 'Equipamento utilizado para controle de temperatura durante a agitação de bolsas com plaquetas.', '', 'Unidade',
      66355.2, 82944, 99532.8, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '852', 'Incubadora de Transporte Neonatal', 'Médico Assistencial', '', 'Equipamento utilizado para proporcionar suporte à vida, durante o transporte de recém-nascidos em ambiente adequado de umidade, temperatura e oxigenação.', '', 'Unidade',
      40511.200000000004, 50639, 60766.799999999996, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '537', 'Incubadora Neonatal (estacionária)', 'Médico Assistencial', '', 'Equipamento utilizado para fins terapêuticos, proporcionado condições de ambiente controlado para o paciente neonatal.', '', 'Unidade',
      33710.4, 42138, 50565.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2642', 'Jogo de Peneiras com Aparelho Vibratório', 'Médico Assistencial', '', 'Aparelho vibratório com peneiras para granulação.', '', 'Unidade',
      6688.8, 8361, 10033.199999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10201', 'Jogo de Polias', 'Médico Assistencial', '', 'Equipamento utilizado para exercícios de membros superiores e inferiores.', '', 'Unidade',
      2102.4, 2628, 3153.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1289', 'Lâmpada de Fenda', 'Médico Assistencial', '', 'Equipamento oftalmológico utilizado para realização de exames do segmento anterior do olho.', '', 'Unidade',
      23180, 28975, 34770, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2705', 'Lanterna Clínica', 'Apoio', '', 'Equipamento utilizado para melhorar a visibilidade nos exames físicos, como as avaliações dos reflexos pupilares, garganta, ouvidos e narinas.', '', 'Unidade',
      46.400000000000006, 58, 69.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11248', 'Laringoscópio Adulto', 'Médico Assistencial', '', 'Equipamento  de engate rápido, para uso em procedimentos de emergência e anestesia, que necessitem de acesso às vias aéreas.', '', 'Unidade',
      1132.8, 1416, 1699.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11249', 'Laringoscópio Infantil', 'Médico Assistencial', '', 'Equipamento  de engate rápido, para uso em procedimentos de emergência e anestesia, que necessitem de acesso às vias aéreas.', '', 'Unidade',
      1090.4, 1363, 1635.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3001', 'Laser para Fisioterapia', 'Médico Assistencial', '', 'Laser utilizado em tratamentos  para distúrbios articulares, lesões traumáticas, lesões esportivas, por meio da aplicação da onda do laser.', '', 'Unidade',
      3126.4, 3908, 4689.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10321', 'Laser para Oftalmologia (YAG/Diodo)', 'Médico Assistencial', '', 'Equipamento dedicado a procedimentos cirúrgicos e terapêuticos oftalmológicos.', '', 'Unidade',
      174920, 218650, 262380, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '184', 'Laser para Tratamento Odontológico', 'Médico Assistencial', '', 'Utilizado com propriedades terapêuticas (anti-inflamatória, analgésica, bioestimulante) por meio da emissão de uma fonte de luz.', '', 'Unidade',
      7744.8, 9681, 11617.199999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '398', 'Lavadora de Endoscópio', 'Apoio', '', 'Equipamento dedicado para reprocessamento/lavagem de endoscópios, obrigatoriamente comtemplando lavagem por meio de desinfecção enzimática. Não é passível de aprovação as configurações que realizem a lavagem por meio de ultrassom, por se tratar de outro item do sistema: Lavadora Ultrassônica..', '', 'Unidade',
      125253.6, 156567, 187880.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10507', 'Lavadora de Microplacas', 'Apoio', '', 'Equipamento projetado para realizar lavagens simples e completas em microplacas nas rotinas laboratoriais.', '', 'Unidade',
      19856.800000000003, 24821, 29785.199999999997, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2163', 'Lavadora de Pipetas', 'Apoio', '', 'Equipamento destinado a lavagem de pipetas.', '', 'Unidade',
      688, 860, 1032, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1938', 'Lavadora de Roupas', 'Gerais', '', 'Equipamento utilizado para lavagem de roupas. Este item corresponde a lavadora doméstica.', '', 'Unidade',
      1943.2, 2429, 2914.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10920', 'Lavadora de Roupas Hospitalar (capacidade acima de 50 Kg)', 'Apoio', '', 'Lavadora para uso profissional, destinada a lavagem e enxágüe de roupas para uso hospitalar.', '', 'Unidade',
      87941.6, 109927, 131912.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10562', 'Lavadora de Roupas Hospitalar (capacidade até 50 Kg)', 'Apoio', '', 'Lavadora para uso profissional, destinada a lavagem e enxágüe de roupas para uso hospitalar.', '', 'Unidade',
      52355.200000000004, 65444, 78532.8, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11414', 'Lavadora Extratora de Roupas Hospitalar', 'Apoio', '', 'Lavadora para uso profissional, destinada a lavagem e enxágüe e centrifugação de roupas para uso hospitalar.', '', 'Unidade',
      408714.4, 510893, 613071.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11304', 'Lavadora GMP', 'Apoio Laboratorial', '', 'Equipamento utilizado em área produtiva para lavagem e secagem dos materiais utilizados durante o processo de fabricação dos medicamentos, imunobiológicos, tais como vacinas, soros,etc.', '', 'Unidade',
      2501094.4, 3126368, 3751641.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10548', 'Lavadora Termodesinfectora', 'Apoio', '', 'Equipamento para lavagem, enxágüe e desinfecção térmica automática de instrumentais, utensílios, vidrarias de laboratório, tubos e acessórios para anestesia, tubos de sucção, embalagens e outros.', '', 'Unidade',
      254559.2, 318199, 381838.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10984', 'Lavadora Ultrassônica acima de 15 litros', 'Apoio', '', 'Equipamento utilizado para auxiliar na limpeza de peças ou partes, retirando toda sujeira e impureza encontrada na superfície e nas reentrâncias minúsculas e mais profundas através de ultrassom, que consiste na transformação de energia elétrica em energia mecânica.', '', 'Unidade',
      43866.4, 54833, 65799.59999999999, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10983', 'Lavadora Ultrassônica até 15 litros', 'Apoio', '', 'Equipamento utilizado para auxiliar na limpeza de peças ou partes, retirando toda sujeira e impureza encontrada na superfície e nas reentrâncias minúsculas e mais profundas através de ultrassom, que consiste na transformação de energia elétrica em energia mecânica.', '', 'Unidade',
      5174.400000000001, 6468, 7761.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11557', 'Leito Fluidizado', 'Apoio', '', 'Equipamento utilizado para secagem de pós e granulados.', '', 'Unidade',
      2866227.3600000003, 3582784.2, 4299341.04, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11992', 'Leitor Automatizado de Placas Elispot', 'Médico Assistencial', '', 'Equipamento laboratorial especializado que captura imagens digitais de microplacas ELISPOT e utiliza software para contar e analisar automaticamente os pontos (spots) formados, que representam células secretoras de uma molécula específica.', '', 'Unidade',
      470867.2, 588584, 706300.7999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1234', 'Leitor de Código de Barras', 'Gerais', '', 'Aparelho para leitura de códigos de barras por feixe ótico.', '', 'Unidade',
      204, 255, 306, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11099', 'Leitora de Microplacas de Elisa', 'Médico Assistencial', '', 'Leitora (fotômetro) dedicada, controlada por um microprocessador para ler e calcular os resultados de ensaios em uma placa de microtitulação,podendo ser manual ou automatizado.', '', 'Unidade',
      24144, 30180, 36216, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11833', 'Leitor/Quantificador de Material Genético em Placas', 'Gerais', '', 'Leitor de placa para quantificação e avaliação de qualidade de material genético extraído. Avaliações essas fundamentais para melhor preparo de procedimentos genômicos, como sequenciamento e genotipagem.', '', 'Unidade',
      170896, 213620, 256344, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2927', 'Lensômetro', 'Médico Assistencial', '', 'Equipamento para medição de lentes esféricas, cilíndricas, de contato, óculos de sol e prismas.', '', 'Unidade',
      8080, 10100, 12120, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2682', 'Liofilizador', 'Médico Assistencial', '', 'Equipamento utilizado para remove a umidade de alimentos, amostras biologicas e produtos farmacêuticos obtido pelo processo de sublimação.', '', 'Unidade',
      36424.8, 45531, 54637.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1941', 'Liquidificador', 'Gerais', '', 'Aparelho elétrico para mistura e liquidificação de alimentos e/ou sucos.', '', 'Unidade',
      693.6, 867, 1040.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1387', 'Liquidificador Industrial', 'Gerais', '', 'Aparelho elétrico para mistura e liquidificação de grandes massas e volumes de alimentos e sucos.', '', 'Unidade',
      2208, 2760, 3312, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1044', 'Litotriptor Extracorpóreo', 'Médico Assistencial', '', 'Sistema de fragmentação de cálculos renais por ondas de choque através da localização por fluoroscopia. O sistema é composto minimamente pela mesa de exames, arco cirúrgico, monitor e litotriptor, podendo solicitar o monitor de ECG e aparelho de ultrassonografia.', '', 'Unidade',
      960000, 1200000, 1440000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10194', 'Litotriptor Intracorpóreo', 'Médico Assistencial', '', 'Equipamento para fragmentação de cálculos renais por meio de energia ultrassônica, pneumática, laser.', '', 'Unidade',
      28792, 35990, 43188, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11220', 'Lixadeira Dupla', 'Gerais', '', 'Lixadeira multifuncional, com cinta de lixa conjugada com disco de lixa, usada para desbastes e acabamentos de dispositivos ortopédicos, bem como seus componentes.', '', 'Unidade',
      41220, 51525, 61830, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '192', 'Localizador de Ápice', 'Médico Assistencial', '', 'Utilizado para determinar a odontometria.', '', 'Unidade',
      1772, 2215, 2658, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '494', 'Longarina', 'Gerais', '', 'Conjunto de cadeiras acopladas lateralmente (no mínimo dois assentos).', '', 'Unidade',
      616, 770, 924, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10565', 'Lousa Interativa', 'Gerais', '', 'Equipamento no qual as informações de um computador serão transmitidas por meio de um projetor multimídia sobre a lousa, sensível ao toque, que funcionará como um monitor.', '', 'Unidade',
      3221.6000000000004, 4027, 4832.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2327', 'Luminária Flexível de Mesa com Lupa', 'Apoio', '', 'Trata-se de um produto de utilização profissional, encontrado na grande maioria das bancadas eletrônicas de modo a auxiliar o profissional.', '', 'Unidade',
      458.40000000000003, 573, 687.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2945', 'Maca de Transferência (dois carros)', 'Apoio', '', 'Conjunto de carros maca para transferência de paciente em centro cirúrgico (dois carros e um leito).', '', 'Unidade',
      5132.8, 6416, 7699.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10925', 'Mamógrafo', 'Médico Assistencial', '', 'Equipamento emissor de Raios X para fins diagnósticos de mamografia com tecnologia Digital (detector de painel plano).', '', 'Unidade',
      1194363.2, 1492954, 1791544.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11957', 'Manequim Adulto Simulador para Treino de habilidades clínicas em Suporte Básico de Vida', 'Apoio', '', 'Equipamento utilizado para treinar profissionais especializados em Urgênia e Emergência que prestam assistência à pacientes em casos de Suporte Básico de Vida.', '', 'Unidade',
      10644, 13305, 15966, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11960', 'Manequim Lactente (Bebê) Simulador para Treino de habilidades clínicas em Suporte Básico de Vida', 'Apoio', '', 'Equipamento utilizado para treinamento dos profissionais especializados em Urgência e Emergência que prestam assistência à pacientes em casos de Suporte Básico de vida.', '', 'Unidade',
      1568.8000000000002, 1961, 2353.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11959', 'Manequim Pediátrico Simulador para Treino de habilidades clínicas em Suporte Básico de Vida', 'Apoio', '', 'Equipamento utilizado para treinamento dos profissionais especializadas em Urgência e Emergência que prestam assistência à pacientes em casos de Suporte Básico à Vida.', '', 'Unidade',
      7436.8, 9296, 11155.199999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11956', 'Manequim Simulador para Treino de habilidades clínicas em Suporte Avançado de Vida', 'Apoio', '', 'Equipamento utilizado para capacitar profissionais de saúde especializados em Urgência e Emergência que prestam assistência aos pacientes em casos de Suporte Básico e Avançado de Vida.', '', 'Unidade',
      130432.8, 163041, 195649.19999999998, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10422', 'Manovacuômetro', 'Médico Assistencial', '', 'Equipamento utilizado para medir a pressão negativa e/ou positiva em sistemas hospitalares.', '', 'Unidade',
      1635.2, 2044, 2452.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11783', 'Manta Aquecedora', 'Apoio', '', 'A manta aquecedora é utilizada para aquecer balões de vidro contando soluções para diferentes finalidades.', '', 'Unidade',
      608.8000000000001, 761, 913.1999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1656', 'Manta Térmica Elétrica', 'Médico Assistencial', '', 'Manta térmica elétrica para aquecimento corporal em resgate de emergência.', '', 'Unidade',
      1117.6000000000001, 1397, 1676.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10274', 'MAPA - Monitor Ambulatorial de Pressão Arterial', 'Médico Assistencial', '', 'Equipamento utilizado para medições de pressão sanguínea sistólica, diastólica e freqüência cardíaca.', '', 'Unidade',
      47988, 59985, 71982, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11091', 'Máquina Chanfradeira', 'Gerais', '', 'Equipamento utilizado para realizar chanfros em couro para costura de calçados ortopédicos.', '', 'Unidade',
      5115.200000000001, 6394, 7672.799999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10468', 'Máquina de Circulação Extracorpórea', 'Médico Assistencial', '', 'Máquina que faz o papel do pulmão, de oxigenar o sangue, e do coração, de bombeá-lo.', '', 'Unidade',
      312000, 390000, 468000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11452', 'Máquina de Costura de Coluna', 'Gerais', '', 'Equipamento utilizado na confecção de calçados ortopédicos, correias, joelheiras e demais acessórios em couro e materiais.', '', 'Unidade',
      10435.2, 13044, 15652.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11216', 'Máquina de Costura em Zig Zag', 'Gerais', '', 'Equipamento para costura tipo zig-zag, para tecidos e lona.', '', 'Unidade',
      2960, 3700, 4440, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2456', 'Máquina de Costura Industrial', 'Gerais', '', 'Máquina de costura reta, usada na confecção de órteses em tecidos, correias, forrações de cadeiras de rodas e afins.', '', 'Unidade',
      2989.6000000000004, 3737, 4484.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11209', 'Máquina de Solda MIG MAG', 'Gerais', '', 'Equipamento utilizado para soldagem de metais na confecção de dispositivos para adaptações  e adequações de cadeiras de rodas.', '', 'Unidade',
      3420.8, 4276, 5131.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '255', 'Máquina de Solda Odontológica', 'Apoio', '', 'Utilizado para realizar trabalhos ortodônticos de solda.', '', 'Unidade',
      1887.2, 2359, 2830.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10568', 'Máquina de Sucção para Laminação', 'Apoio', '', 'Equipamento de sucção usado na fabricação de Próteses e Órteses.', '', 'Unidade',
      35058.4, 43823, 52587.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11453', 'Máquina de Sucção para Termomoldagem em Ortopedia Técnica', 'Apoio', '', 'Equipamento utilizado para gerar a pressão negativa na superfície dos moldes para a termoformação das próteses e encaixes protéticos.', '', 'Unidade',
      21796.800000000003, 27246, 32695.199999999997, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11844', 'Máquina Fotográfica', 'Gerais', '', 'Item destinado a capturar e registar imagens.', '', 'Unidade',
      11996.800000000001, 14996, 17995.2, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2943', 'Máquina para Produzir Gelo', 'Gerais', '', 'Aparelho termoelétrico para produção de gelo.', '', 'Unidade',
      4984, 6230, 7476, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11267', 'Máquina Unitarizadora de Medicamentos', 'Apoio', '', 'Equipamento utilizado para na unitarização de doses de medicamentos.', '', 'Unidade',
      172000, 215000, 258000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10252', 'Marcapasso Cardíaco Externo', 'Médico Assistencial', '', 'Marcapasso Cardíaco para uso externo usado no cuidado intensivo temporário de estimulação do coração sem atividade espontânea ou com problemas no sistema de condução.', '', 'Unidade',
      10588.800000000001, 13236, 15883.199999999999, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11211', 'Martelete Pneumático', 'Médico Assistencial', '', 'Martelete tipo rompedor pneumático utilizado para quebrar moldes em gesso.', '', 'Unidade',
      489.6, 612, 734.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3079', 'Martelo de Reflexo', 'Apoio', '', 'É um reflexo que provoca uma contração no joelho que leva a perna a movimentar-se involuntariamente para a frente.', '', 'Unidade',
      49.6, 62, 74.39999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11784', 'Medidor de Atividade de Água', 'Apoio', '', 'Verificar a presença de água disponível para microrganismos nos produtos farmacêuticos e estabelecer limites de segurança para evitar contaminações e degradação dos produtos.', '', 'Unidade',
      135352.80000000002, 169191, 203029.19999999998, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10414', 'Medidor de Cuff', 'Apoio', '', 'Utilizado para medição e calibração da pressão do cuff (balonete) de tubos endotraqueais sem comprometer a terapia do paciente; indica a faixa ideal da pressão do cuff.', '', 'Unidade',
      2226.4, 2783, 3339.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '512', 'Medidor de Densidade Aparente/ Compactada', 'Apoio', '', 'Equipamento utilizado para medir a densidade de pós, grânulos e produtos similares.', '', 'Unidade',
      25940.800000000003, 32426, 38911.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11909', 'Medidor de Fluxo Expiratório', 'Médico Assistencial', '', 'Equipamento utilizado para medir fluxo expiratório em avaliação respiratória.', '', 'Unidade',
      148, 185, 222, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '836', 'Medidor de Nível de Oxigênio', 'Apoio', '', 'Equipamento para medir/detectar da concentração de oxigênio em um ambiente.', '', 'Unidade',
      1196.8, 1496, 1795.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '478', 'Medidor Geiger de Radiação', 'Apoio', '', 'Equipamento portátil para detectar radiação do tipo: alfa, beta, gama e raios X.', '', 'Unidade',
      7769.6, 9712, 11654.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10128', 'Mesa Antropométrica', 'Apoio', '', 'Mesa Antropométrica com tampo em aço esmaltado e estrutura tubular provida de cursor de medição para uso em consultório', '', 'Unidade',
      668, 835, 1002, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2102', 'Mesa Auxiliar', 'Gerais', '', 'Mesa auxiliar destinada ao apoio de recursos médico-assistenciais, utilizada em ambientes hospitalares.', '', 'Unidade',
      620.8000000000001, 776, 931.1999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2174', 'Mesa Cirúrgica Elétrica', 'Médico Assistencial', '', 'Mesa composta por coluna, tampo e base, para procedimentos de alta cirurgia, com movimentos acionados eletricamente.', '', 'Unidade',
      83223.20000000001, 104029, 124834.79999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '363', 'Mesa Cirúrgica Mecânica', 'Médico Assistencial', '', 'Mesa composta por coluna, tampo e base, para procedimentos de alta cirurgia, com movimentos acionados mecanicamente.', '', 'Unidade',
      52588.8, 65736, 78883.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2234', 'Mesa de Cabeceira', 'Gerais', '', 'Mesa localizada na cabeceira da cama hospitalar, utilizada para guardar ou apoio de acessórios.', '', 'Unidade',
      610.4, 763, 915.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11228', 'Mesa de Cabeceira com Refeição Acoplada', 'Gerais', '', 'Mesa localizada na cabeceira da cama hospitalar, utilizada para guardar ou apoio de acessórios.
Este item deve possuir uma mesa de refeição acoplada e gavetas.
Nos agurpadores disponíveis, a opção "Não possui" não existe para essas duas características.', '', 'Unidade',
      651.2, 814, 976.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1868', 'Mesa de Escritório', 'Gerais', '', 'Móvel para escritório.', '', 'Unidade',
      723.2, 904, 1084.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1222', 'Mesa de Exames', 'Médico Assistencial', '', 'Mesa fixa utilizada para exames/tratamento de pacientes', '', 'Unidade',
      1860, 2325, 2790, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3099', 'Mesa de Kanavel', 'Médico Assistencial', '', 'Equipamento para exercícios de flexo-extensão de dedos, prono-supinação e flexo-extensão de punho.', '', 'Unidade',
      4562.400000000001, 5703, 6843.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3026', 'Mesa de Mayo', 'Apoio', '', 'Mesa auxiliar móvel, tipo mayo, para uso em procedimentos de anestesia e/ou cirúrgicos em geral.', '', 'Unidade',
      458.40000000000003, 573, 687.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2659', 'Mesa de Reunião', 'Gerais', '', 'Mesa utilizada em ambientes administrativos.', '', 'Unidade',
      476, 595, 714, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10398', 'Mesa Ginecológica', 'Médico Assistencial', '', 'Mesa para exame ginecológico, constituída por base, leito, gaveta de escoamento e par de porta coxa.', '', 'Unidade',
      1298.4, 1623, 1947.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '662', 'Mesa Ginecológica Elétrica', 'Médico Assistencial', '', 'Mesa para exame ginecológico elétrica, constituída por base, leito, gaveta de escoamento e par de porta coxa.', '', 'Unidade',
      25606.4, 32008, 38409.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3007', 'Mesa Ortostática', 'Médico Assistencial', '', 'Equipamento destinado para paraplégicos, para que possam ficar na posição vertical, saindo da cadeira de rodas sem auxílio de terceiros; ideal para a prevenção da osteoporose precoce dos membros inferiores e descontrole intestinal.', '', 'Unidade',
      7096, 8870, 10644, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2098', 'Mesa para Computador', 'Gerais', '', 'Móvel utilizado para alocar computadores do tipo desktop (mouse, teclado, monitor e CPU).', '', 'Unidade',
      305.6, 382, 458.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1923', 'Mesa para Consultório', 'Gerais', '', 'Mobiliario utilizado para apoio a escrita, no atendimento médico/profissional da saúde.', '', 'Unidade',
      483.20000000000005, 604, 724.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2150', 'Mesa para Impressora', 'Gerais', '', 'Móvel utilizado para acomodação de impressora.', '', 'Unidade',
      174.4, 218, 261.59999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2304', 'Mesa para Refeição', 'Gerais', '', 'Mesa utilizada para refeição por pacientes acamados ou em cadeira de rodas em ambientes hospitalares.', '', 'Unidade',
      917.6, 1147, 1376.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2426', 'Mesa para Refeitório', 'Gerais', '', 'Mesa para uso em refeitórios.', '', 'Unidade',
      1209.6000000000001, 1512, 1814.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11930', 'Mesa Refrigerada', 'Apoio', '', 'A mesa refrigerada ou mesa fria é utilizada para a preservação da temperatura das amostras de mosquitos e insetos vetores, durante a triagem e identificação taxonômica, visando a manutenção da viabilidade viral e preservação de ácidos nucleicos.', '', 'Unidade',
      50800, 63500, 76200, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1950', 'Mesas de Trabalho ou Bancada', 'Infraestrutura', '', 'Mesa de trabalho ou bancada utilizada para realizar atividades específicas diversas.', '', 'Unidade',
      1053.6000000000001, 1317, 1580.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '738', 'Micro Jato para Prótese Dentária', 'Médico Assistencial', '', 'Equipamento utilizado para limpar e/ou remover resíduos de peças dentárias.', '', 'Unidade',
      939.2, 1174, 1408.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10316', 'Microcerátomo', 'Médico Assistencial', '', 'Instrumento projetado para executar ressecções circulares na córnea com diâmetro e espessura predeterminados. O diâmetro da ressecção é determinado por características do anel vácuo, e a espessura pelo aplanador posicionado no cabeçote do microceratomo bem como a largura da lâmina.', '', 'Unidade',
      439040, 548800, 658560, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2284', 'Microfone', 'Gerais', '', 'Realização de cursos e capacitações para profissionais de saúde.', '', 'Unidade',
      147.20000000000002, 184, 220.79999999999998, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2812', 'Micrômetro', 'Gerais', '', 'Item utilizado para medir espessura, largura, profundidade, altura de objetos.', '', 'Unidade',
      368, 460, 552, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11738', 'Micromotor Elétrico com Localizador de Ápice', 'Médico Assistencial', '', 'O equipamento motor de endodontia rotatória é indicado para a instrumentação automatizada e preparo de canais radiculares durante tratamento endodôntico facilitando a remoção total do tecido pulpar, limpeza e instrumentação do conduto radicular.', '', 'Unidade',
      8035.200000000001, 10044, 12052.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11821', 'Micromotor Elétrico de Bancada', 'Apoio', '', 'Equipamento utilizado para realizar o acabamento, polimento e fabricação de próteses dentárias.', '', 'Unidade',
      3303.2000000000003, 4129, 4954.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '12001', 'Micro-ônibus com Acessibilidade (Agora Tem Especialistas) Aquisição por Pregão 90414/2025', 'Veículo', '', 'Micro-ônibus com acessibilidade destinado ao transporte sanitário.', '', 'Unidade',
      467680, 584600, 701520, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11654', 'Micro-ônibus Rural de Transporte Sanitário', 'Veículo', '', 'Veículo tipo: Micro-ônibus Rural para transporte de passageiros.', '', 'Unidade',
      689327.2000000001, 861659, 1033990.7999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11652', 'Micro-ônibus Urbano de Transporte Sanitário', 'Veículo', '', 'Veículo tipo: Micro-ônibus urbano para transporte de passageiros', '', 'Unidade',
      575665.6, 719582, 863498.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '24', 'Micropipeta Monocanal', 'Médico Assistencial', '', 'Equipamento de alta precisão para dispensar e/ou manusear liquídos e fluídos em pequenos volumes. Larga utilização em laboratórios de análises clínicas humana, análises clínicas veterinárias, biologia molecular, bioquímica, biotecnologia, controle de qualidade, indústria farmacêutica, universaidades, etc.', '', 'Unidade',
      1016, 1270, 1524, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2510', 'Micropipeta Multicanal', 'Médico Assistencial', '', 'Equipamento de alta precisão para dispensar e/ou manusear liquídos e fluídos em pequenos volumes. Larga utilização em laboratórios de análises clínicas humana, análises clínicas veterinárias, biologia molecular, bioquímica, biotecnologia, controle de qualidade, indústria farmacêutica, universaidades, etc.', '', 'Unidade',
      3006.4, 3758, 4509.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11841', 'Microretífica', 'Gerais', '', 'Item capaz de cortar, lixar, polir, perfurar materiais e superfícies.', '', 'Unidade',
      216.8, 271, 325.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '390', 'Microscópio Cirúrgico', 'Médico Assistencial', '', 'Equipamento desenvolvido para uso em microcirurgias nas áreas como oftalmologia, neurologia, ortopedia, otorrinolaringologia entre outras especialidades.', '', 'Unidade',
      683158.4, 853948, 1024737.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11748', 'Microscópio Cirúrgico Oftalmológico', 'Médico Assistencial', '', 'Equipamento desenvolvido para uso em cirurgias na área de oftalmologia.', '', 'Unidade',
      621160.8, 776451, 931741.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11616', 'Microscópio Eletrônico de Varredura', 'Apoio', '', 'Equipamento para  produzir imagens de alta resolução da superfície de uma amostra. Com tecnologia dedicada que permite que as imagens criadas tenham uma visualização tridimensional, sendo úteis opara avaliar a sua estrutura superficial.', '', 'Unidade',
      828514.4, 1035643, 1242771.5999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10432', 'Microscópio Especular de Córnea', 'Médico Assistencial', '', 'Equipamento destinado a realizar a contagem de células endoteliais da córnea.', '', 'Unidade',
      82027.20000000001, 102534, 123040.79999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11785', 'Microscópio Estereoscópio', 'Médico Assistencial', '', 'Utilizado para a realização de análises morfo-anatômicas', '', 'Unidade',
      2784, 3480, 4176, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '725', 'Microscópio Laboratorial', 'Médico Assistencial', '', 'Equipamento utilizado em estudos e comportamentos de células não perceptíveis a olho nu.', '', 'Unidade',
      12847.2, 16059, 19270.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11197', 'Microscópio Laboratorial Básico', 'Médico Assistencial', '', 'Equipamento utilizado em estudos e comportamentos celulares não perceptíveis a olho nu.', '', 'Unidade',
      1784.8000000000002, 2231, 2677.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11526', 'Microscópio Óptico com Câmera', 'Apoio', '', 'Para atendimento tanto na demanda de desenvolvimento como de Controle de Qualidade, na análise e liberação de insumos farmacêuticos.', '', 'Unidade',
      359955.2, 449944, 539932.7999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '433', 'Micrótomo', 'Médico Assistencial', '', 'Equipamento para cortes histológicos micrométricos seqüenciais e precisos de materiais inclusos em parafina para uso em microscopia.', '', 'Unidade',
      37224.8, 46531, 55837.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11953', 'Mini-Extrusora com GMP', 'Apoio', '', 'Equipamento para produção de implantes.', '', 'Unidade',
      3137994.4000000004, 3922493, 4706991.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '466', 'Misturador Laboratorial', 'Médico Assistencial', '', 'Equipamento de laboratório usado para misturar, homogeneizar, cisalhar ou apenas agitar as fases de desenvolvimento e preparação de soluções, pastas ou emulsões.', '', 'Unidade',
      3448, 4310, 5172, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2185', 'Mixer', 'Gerais', '', 'Eletrodoméstico de utensílio multifuncional que tem a função de mistura e tritura alimentos em pequenas quantidades.', '', 'Unidade',
      144, 180, 216, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11839', 'Mochila de Resgate', 'Apoio', '', 'Saco de tecido resistente utilizado para acondicionar e transportar itens utilizados em atendimentos de resgate.', '', 'Unidade',
      222.4, 278, 333.59999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2954', 'Mocho', 'Gerais', '', 'Tipo de cadeira giratória para facilitar a movimentação e precisão em procedimentos médicos cirurgicos, muito utilizado em consultórios odontológicos.', '', 'Unidade',
      425.6, 532, 638.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11628', 'Moinho de Facas e Martelos', 'Médico Assistencial', '', 'Equipamento utilizado para moer matérias-primas sólidas para redução do tamanho de partículas.', '', 'Unidade',
      24528, 30660, 36792, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11854', 'Moinho para Trituração de Comprimidos', 'Apoio', '', 'Equipamento utilizado para moagem de amostras de diferentes materiais com o objetivo de prepará-las para análise em laboratórios', '', 'Unidade',
      6562.400000000001, 8203, 9843.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11272', 'Moinho Rotativo Cônico', 'Item Industrial Não Hospitalar', '', 'Equipamento utilizado para moer e reduzir o tamanho de partículas em matérias-primas sólidas.', '', 'Unidade',
      210980.80000000002, 263726, 316471.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1159', 'Monitor de Pressão Intracraniana (PIC)', 'Médico Assistencial', '', 'Monitor utilizado no diagnóstico do aumento da pressão intracraniana, assim como para o tratamento da hipertensão intracraniana, conforme a aplicação clínica.', '', 'Unidade',
      108137.6, 135172, 162206.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11864', 'Monitor de Sinais Vitais para Telessaúde', 'Médico Assistencial', '', 'Medidor de sinais vitais como frequência cardíaca, oximetria, temperatura, pressão atrterial e eletrocardiograma com conectividade e apliocação para Telessaúde/Telemedicina.', '', 'Unidade',
      6131.200000000001, 7664, 9196.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11949', 'Monitor de Vídeo', 'Apoio', '', 'Equipamento eletrônico destinado à exibição de imagens em alta definição, com maior fidelidade de cores e amplo ângulo de visão.', '', 'Unidade',
      736.8000000000001, 921, 1105.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11799', 'Monitor Hemodinâmico', 'Médico Assistencial', '', 'Utilizado para medição do débito cardíaco contínuo (volume de sangue bombeado pelo coração em minutos), o que auxilia num tratamento mais específico para pacientes críticos e de alto risco, pois se conhece melhor o desempenho cardíaco e variavelmente o consumo de O2. Utilizado para Tratamento Intensivo e Unidades Coronarianas.', '', 'Unidade',
      178667.2, 223334, 268000.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '673', 'Monitor Multiparâmetros', 'Médico Assistencial', '', 'Monitor Multiparâmetros para uso na monitoração de Eletrocardiograma (ECG), Respiração, Temperatura, Pressão Não-Invasiva (PNI) e Oximetria (SPO2), para uso em pacientes adulto/pediátrico e neonatal.', '', 'Unidade',
      15479.2, 19349, 23218.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11673', 'Monitor Multiparâmetros para Centro Cirúrgico', 'Médico Assistencial', '', 'Monitor Multiparâmetros para Centro Cirúrgic para uso na monitoração de Eletrocardiograma (ECG), Respiração, Temperatura, Pressão Não-Invasiva (PNI), Oximetria (SPO2), Pressão Invasiva (PI), Capnografia (ETCO2), Agentes Anestésicos e Índice de Sedação Anestésica (BIS), para uso em pacientes adulto/pediátrico e neonatal.', '', 'Unidade',
      32892, 41115, 49338, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11237', 'Monitor Multiparâmetros para Ressonância Magnética', 'Médico Assistencial', '', 'Monitor multiparamétrico podendo ser utilizado na monitoração de ECG/respiração, pressão não-invasiva (PNI), oximetria de pulso (SpO2), pressão invasiva (PI), capnografia (EtCO2), temperatura, débito cardíaco (DC), agentes anestésicos, índice de sedação anestésica (BIS/ISA), para uso em pacientes adulto/pediátrico e neonatal.
Para este item deve ser apresentadas características construtivas que permitam a aplicação correta e utilização segura do equipamento em ambientes que possuam Ressonância Nuclear Magnética.', '', 'Unidade',
      471752.80000000005, 589691, 707629.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10985', 'Monitor Multiparâmetros para UTI', 'Médico Assistencial', '', 'Monitor Multiparâmetros para UTI para uso na monitoração de Eletrocardiograma (ECG), Respiração, Temperatura, Pressão Não-Invasiva (PNI), Oximetria (SPO2), Pressão Invasiva (PI), Capnografia (ETCO2), Débito Cardíaco (DC), Agentes Anestésicos e Índice de Sedação Anestésica (BIS/ISA), para uso em pacientes adulto/pediátrico e neonatal.', '', 'Unidade',
      22354.4, 27943, 33531.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10765', 'Monitor para Imagens Radiológicas', 'Médico Assistencial', '', 'Monitor de alta resolução específico para visualização de imagens radiológicas.', '', 'Unidade',
      51120, 63900, 76680, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11219', 'Morsa de Bancada', 'Gerais', '', 'Morsa tipo torno de bancada para fixação de peças e utensílios.', '', 'Unidade',
      168.8, 211, 253.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2295', 'Morsa para Furadeira de Bancada', 'Gerais', '', 'Morsa para bancada para fixação de peças para a furação em furadeira de bancada.', '', 'Unidade',
      170.4, 213, 255.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10566', 'Moto Esmeril', 'Gerais', '', 'Ferramenta utilizada para restauração, lixamento e limpeza de peças.', '', 'Unidade',
      1109.6000000000001, 1387, 1664.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11900', 'Motocicleta Elétrica', 'Veículo', '', 'Veículo de duas rodas, tipo motocicleta elétrica utilizada para o deslocamento de profissionais da Estratégia Saúde da Família (ESF), Agentes Comunitários de Saúde (ACS), Equipes Multiprofissionais e outras equipes que necessitam se locomover com agilidade em áreas urbanas e rurais.', '', 'Unidade',
      13967.2, 17459, 20950.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11774', 'Motocultivador', 'Gerais', '', 'Equipamento movido a combustão que serve para preparar o plantio em hortas, afofando a terra e preparando o solo.', '', 'Unidade',
      2935.2000000000003, 3669, 4402.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '698', 'Motor de Suspensão', 'Apoio', '', 'Equipamento utilizado para corte, lapidação, desgaste, polimento e gravações em próteses em conultórios odontológicos.', '', 'Unidade',
      664, 830, 996, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '205', 'Motor Elétrico Cirúrgico Odontológico', 'Médico Assistencial', '', 'Equipamento utilizado para cirurgias e implantes odontológicos (perfuração, macheamento e inserção), perfurações ósseas, cirurgias buco-maxilo-faciais, cirurgias paraendodônticas, cirurgias periodontais, aperto de peças protéticas, cirurgias plásticas, desgastes e polimentos.', '', 'Unidade',
      9407.2, 11759, 14110.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2408', 'Multímetro', 'Gerais', '', 'É um equipamento de teste utilizado para medir grandezas elétricas como tensão, corrente, resistência.', '', 'Unidade',
      337.6, 422, 506.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11954', 'Nanoindentador Completo', 'Apoio', '', 'Equipamento utilizado para caracterizar as propriedades mecânicas dos materiais em pequenas escalas de comprimento.', '', 'Unidade',
      1515100.8, 1893876, 2272651.1999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11792', 'Nebulizador Costal', 'Gerais', '', 'Item para Aplicação espacial de inseticidas a Ultra Baixo Volume, de uso individual com o equipamento acoplado nas costas do operador', '', 'Unidade',
      2328, 2910, 3492, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11791', 'Nebulizador Pesado Veicular', 'Gerais', '', 'Item para Aplicação espacial de inseticidas a Ultra Baixo Volume, de uso com o equipamento acoplado a veículo. A aplicação espacial de inseticidas a Ultra Baixo Volume, tem como objetivo eliminar as fêmeas do mosquito Aedes aegypti infectadas por arbovírus.', '', 'Unidade',
      97800, 122250, 146700, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '586', 'Nebulizador Portátil', 'Médico Assistencial', '', 'Equipamento portátil com tecnologia de modo ultrassônico ou compressor, utilizado para administrar medicamentos por via inalatória ou recomendado para doenças respiratórias (bronquite, asma, resfriados, renite, etc.).', '', 'Unidade',
      181.60000000000002, 227, 272.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '541', 'Negatoscópio', 'Apoio', '', 'Equipamento utilizado para visualização de imagens radiográficas.', '', 'Unidade',
      822.4000000000001, 1028, 1233.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11223', 'Nível Pélvico', 'Apoio', '', 'Equipamento usado para verificar o nivelamento do corpo humano através da posição da pélvis.', '', 'Unidade',
      1044, 1305, 1566, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11965', 'No-break de 20KVA', 'Apoio', '', 'Equipamento utilizado para estabilização elétrica e manutenção de servidoes mesmo em picos de estabilidade energia,', '', 'Unidade',
      58418.4, 73023, 87627.59999999999, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1978', 'No-Break (Para Computador/Impressora)', 'Gerais', '', 'É um aparelho que funciona como uma reserva de energia, proporcionando um tempo de autonomia para que tarefas sejam concluídas, caso seja necessário. Além de proteger os computadores da eletricidade que alimenta esses equipamentos, evitando perda de dados e danos aos computadores que estejam ligados a ele.', '', 'Unidade',
      1039.2, 1299, 1558.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11849', 'No-Break (Para Mamógrafo)', 'Gerais', '', 'É um aparelho que funciona como uma reserva de energia, proporcionando um tempo de autonomia para que tarefas sejam concluídas, caso seja necessário.', '', 'Unidade',
      7149.6, 8937, 10724.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10990', 'No-Break (Para Servidor)', 'Gerais', '', 'É um aparelho que funciona como uma reserva de energia, proporcionando um tempo de autonomia para que tarefas sejam concluídas, caso seja necessário. Além de proteger os servidores da eletricidade, evitando perda de dados e danos aos servodores que estejam ligados a ele.', '', 'Unidade',
      8549.6, 10687, 12824.4, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1506', 'Oftalmoscópio', 'Médico Assistencial', '', 'Utilizado para realização de exames não invasivos, para auxiliar a visualização dos exames da estrutura do olho como: atérias, veias, nervo óptico, retina, córnea, humor aquoso, humos vítreo e cristalino. Indicado também para diagnosticar doenças como Glaucoma e Catarata. Pode ser utilizado para detectar outros tipos de doenças como tuberculose, hipertensão, toxoplasmose, diabestes, AIDS, artrite reumatóide, esclerose múltipla entre outras, pois, muitas dessas doenças alteram o aspecto do fundo do olho humano.', '', 'Unidade',
      1818.4, 2273, 2727.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11429', 'Oftalmoscópio Binocular Indireto', 'Médico Assistencial', '', 'Equipamento que permite ao examinador o uso prolongado, sem causar fadigas. Possui ampla e nítida imagem do fundo do olho e auxilia no mapeamento de retina.', '', 'Unidade',
      14317.6, 17897, 21476.399999999998, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11867', 'Oftalmoscópio para Telessaúde', 'Médico Assistencial', '', 'tilizado para realização de exames não invasivos, para auxiliar a visualização dos exames da estrutura do olho como: atérias, veias, nervo óptico, retina, córnea, humor aquoso, humos vítreo e cristalino. Indicado também para diagnosticar doenças como Glaucoma e Catarata. Pode ser utilizado para detectar outros tipos de doenças como tuberculose, hipertensão, toxoplasmose, diabestes, AIDS, artrite reumatóide, esclerose múltipla entre outras, pois, muitas dessas doenças alteram o aspecto do fundo do olho humano. Com aplicação para Telessaúde/telemedicina.', '', 'Unidade',
      5898.400000000001, 7373, 8847.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2229', 'Osmômetro', 'Médico Assistencial', '', 'O Osmômetro é um aparelho eletrônico de precisão utilizado para determinar a osmolalidade de uma amostra através da medida de seu ponto de congelamento (ponto de fusão).
Aplicação: determinação da concentração de soluções químicas, produtos alimentícios, sangue, urina etc.', '', 'Unidade',
      33197.6, 41497, 49796.4, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10353', 'Osmose Reversa', 'Apoio', '', 'Equipamento de purificação para a produção de água química e microbiologicamente pura.', '', 'Unidade',
      2941.6000000000004, 3677, 4412.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11649', 'Otoscópio de Sistema Aberto', 'Médico Assistencial', '', 'Equipamento destinado para a visualização, acesso e iluminação do conduto auditivo em pequenos procedimentos.', '', 'Unidade',
      2941.6000000000004, 3677, 4412.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11866', 'Otoscópio para Telessaúde', 'Médico Assistencial', '', 'Equipamento destinado para a visualização, acesso e iluminação do conduto auditivo em pequenos procedimentos. Com aplicação para Telessaúde/telemedicina.', '', 'Unidade',
      5691.200000000001, 7114, 8536.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1073', 'Otoscópio Simples', 'Médico Assistencial', '', 'Equipamento destinado à realização de exame visual do ouvido externo.', '', 'Unidade',
      1034.4, 1293, 1551.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '699', 'Oxímetro de Pulso', 'Médico Assistencial', '', 'Equipamento utilizado para medição, de forma contínua e não invasiva, da saturação parcial de oxigênio (SpO2) no sangue e da freqüência cardíaca, através de um sensor não-invasivo. Indicado para uso adulto, pediátrico e/ou neonatal.', '', 'Unidade',
      4836.8, 6046, 7255.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11235', 'Oxímetro de Pulso para Ressonância Magnética', 'Médico Assistencial', '', 'Equipamento utilizado para medição, de forma contínua e não invasiva, da saturação parcial de oxigênio (SpO2) no sangue e da freqüência cardíaca, através de um sensor não-invasivo. Para este item deve ser apresentadas características construtivas que permitam a aplicação correta e utilização segura do equipamento em ambientes que possuam Ressonância Nuclear Magnética.', '', 'Unidade',
      30713.600000000002, 38392, 46070.4, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11870', 'Oxímetro para Telessaúde', 'Médico Assistencial', '', 'Equipamento utilizado para medição, de forma contínua e não invasiva, da saturação parcial de oxigênio (SpO2) no sangue e da freqüência cardíaca, através de um sensor não-invasivo. Indicado para uso adulto, pediátrico e/ou neonatal. Com aplicação para Telessaúde/Telemedicina.', '', 'Unidade',
      1553.6000000000001, 1942, 2330.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10850', 'Palete', 'Gerais', '', 'Paletes, é um tipo de estrado fabricado em madeira, ferro ou plástico utilizado para acomodar caixas, produtos, etc. A função dos paletes é viabilizar a otimização do transporte de cargas através do uso de paleteiras e/ou empilhadeiras. Paletes de plástico tem uma vida útil mais longa, facilidade na limpeza, adequação a temperatura e umidade de algumas cargas.', '', 'Unidade',
      244.8, 306, 367.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11911', 'Pandeiro', 'Apoio', '', 'Instrumento musical de percussão que emite sons ao ser agitado, sendo utilizado como um recurso para atividades de reabilitação sensoriais e motoras.', '', 'Unidade',
      144.8, 181, 217.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11213', 'Panela Elétrica para Confecção de Órteses', 'Apoio', '', 'Equipamento utilizado para modelagem de termoplásticos de baixa temperaturas.', '', 'Unidade',
      2424, 3030, 3636, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11822', 'Panela Elétrica Polimerizadora Digital', 'Apoio', '', 'Equipamento utilizado na confecção de peças que utilizam resinas termo-polimerizantes como polimerização de dentaduras e trabalhos que necessitam de pressão e calor.', '', 'Unidade',
      2684, 3355, 4026, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11823', 'Panela Eliminadora de Bolhas', 'Apoio', '', 'Equipamento utilizado para realizar a polimerização do acrílico auto-polimerizável com o objetivo de eliminar as bolhas da peça.', '', 'Unidade',
      742.4000000000001, 928, 1113.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '496', 'Papagaio', 'Apoio', '', 'Recurso utilizado pelo paciente masculino acamado ou com dificuldades locomotoras, em situações adversas, para coleta de urina.', '', 'Unidade',
      118.4, 148, 177.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1175', 'Paquímetro', 'Gerais', '', 'É um instrumento utlizado para medir as dimensões de um material.', '', 'Unidade',
      720, 900, 1080, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11092', 'Parafusadeira Pneumática Manual', 'Gerais', '', 'Equipamento utilizado para montagem e desmontagem de juntas afixadas com parafusos ou porcas.', '', 'Unidade',
      1054.4, 1318, 1581.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '569', 'Passa Chassi Radiográfico', 'Apoio', '', 'Passa chassi com portas, construído em aço (inoxidável ou tratado e pintado), para transposição de filme radiológico, acondicionado em chassi à câmara-escura.', '', 'Unidade',
      4121.6, 5152, 6182.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11412', 'PCR em Tempo Real', 'Médico Assistencial', '', 'Equipamento de PCR Quantitativo em Tempo Real para aplicações de amplificação e quantificação de número de cópias do DNA, quantificação da expressão gênica e proteica em tempo real, genotipagem de alelos, dentre outros. A PCR em tempo real é realizada por meio de uma plataforma de instrumentação que contém um termociclador com sistema ótico para excitação da fluorescência e na coleção da emissão e um computador com software para aquisição de dados e análise final da reação.', '', 'Unidade',
      147664, 184580, 221496, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1521', 'Pedígrafo', 'Médico Assistencial', '', 'Equipamento utilizado para obter a plantígrafia do pé do paciente.', '', 'Unidade',
      650.4000000000001, 813, 975.5999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11962', 'Pedômetro Digital', 'Apoio', '', 'Dispositivo portátil destinado à contagem de passos e ao monitoramento de parâmetros relacionados à atividade física e deslocamento.', '', 'Unidade',
      80, 100, 120, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10779', 'Percolador', 'Médico Assistencial', '', 'Equipamento que realiza a extração de componentes soluvéis atraves da passagem da solução por materiais porosos.', '', 'Unidade',
      529.6, 662, 794.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11775', 'Perfurador De Solo À Gasolina', 'Gerais', '', 'Item movido a combustão que serve para realizar perfurações para plantio, cultivo de hortaliças, plantas (mudas) e instalações de mourões', '', 'Unidade',
      1116.8, 1396, 1675.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '301', 'PET CT', 'Médico Assistencial', '', 'Equipamento emissor de Raios X combinado com a detecção de pósitrons para fins de diagnóstico médico principalmene para detectar o câncer de forma precoce.', '', 'Unidade',
      6592000, 8240000, 9888000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '304', 'pHmetro - Medidor', 'Médico Assistencial', '', 'O medidor de pH ou pHmetro é um equipamento de laboratório muito utilizado para a medição do pH. O pH ou potencial de hidrogênio iônico, é um índice que indica se o meio é ácido, neutro ou alcalino. A determinação e controle do pH é padrão em muitas aplicações industriais, em tratamento de água e no controle de qualidade de líquidos.', '', 'Unidade',
      3879.2000000000003, 4849, 5818.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11786', 'Picnômetro com Tampa', 'Apoio', '', 'Determinação de massa específica e densidade de líquidos.', '', 'Unidade',
      597.6, 747, 896.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1706', 'Pipetador Automático', 'Médico Assistencial', '', 'Instrumento para acoplar nas pipetas para auxiliar na aspiração e dispensação de volumes.', '', 'Unidade',
      1312.8000000000002, 1641, 1969.1999999999998, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11915', 'Piscina de bolinhas', 'Apoio', '', 'Piscina de bolinhas é um brinquedo com laterais espumadas preenchido com bolinhas coloridas.', '', 'Unidade',
      2492, 3115, 3738, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10963', 'Pistola para Biópsia Mamária', 'Médico Assistencial', '', 'Equipamento utilizado para biopsia de tecidos moles (pulmão, rim, mama, fígado, próstata, tireóide, etc.).', '', 'Unidade',
      75657.6, 94572, 113486.4, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2429', 'Placa Aquecedora', 'Médico Assistencial', '', 'Equipamento utilizado para o aquecimento de moldes metálicos, cassetes plásticos e lâminas microscópicas.', '', 'Unidade',
      1239.2, 1549, 1858.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10523', 'Placa Refrigerada', 'Médico Assistencial', '', 'Equipamento que permite o resfriamento de cassetes plásticos ou blocos de parafina para rotinas laboratoriais de anatomia patológica/histologia.', '', 'Unidade',
      6477.6, 8097, 9716.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '730', 'Plastificadora para uso Odontológico', 'Apoio', '', 'Equipamento utlizado para cópia de modelos em gesso em diversos trabalhos odontológicos como: protetor bucal, placa bio-relaxante, placa de mordida, bruxismo, placa de base, moldeiras individuais, moldeira para clareamento caseiro, embalagem de modelo de estudo e moldeira para fluoretação.', '', 'Unidade',
      1371.2, 1714, 2056.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11811', 'Plataforma Automática de Pipetagem de Alto Desempenho', 'Apoio', '', 'Equipamento destinado ao manuseio de líquidos de laboratório.', '', 'Unidade',
      1587148.8, 1983936, 2380723.1999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11204', 'Plataforma de Elevação', 'Gerais', '', 'Equipamento utilizado para moldagem de encaixe protético.', '', 'Unidade',
      21756, 27195, 32634, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11895', 'Plataforma Inclinada (Plano Inclinado)', 'Apoio', '', 'É um equipamento versátil que pode ser utilizado em diversas situações, desde apresentações e aulas até trabalhos artísticos e organização documental.', '', 'Unidade',
      196, 245, 294, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11892', 'Plataforma Suspensa', 'Apoio', '', 'Equipamento utilizado em atividade terapêuticas, promovendo vivências sensoriais que levam a experimentar novos movimentos rotacionais e lineares.', '', 'Unidade',
      1201.6000000000001, 1502, 1802.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10213', 'Podoscópio', 'Médico Assistencial', '', 'Equipamento utilizado para análise planar completa das deformidades do pé.', '', 'Unidade',
      2232, 2790, 3348, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '610', 'Polarímetro', 'Médico Assistencial', '', 'Equipamento utilizado para determinação de rotação ótica de substâncias e através destas, definir a sua concentração, conteúdo e pureza.', '', 'Unidade',
      4104, 5130, 6156, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '154', 'Polígrafo', 'Médico Assistencial', '', 'Sistema Eletromédico computadorizado para realização de procedimentos de Hemodinâmica.', '', 'Unidade',
      145173.6, 181467, 217760.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10325', 'Polissonógrafo', 'Médico Assistencial', '', 'Equipamento utilizado para realização do exame de polissonografia que investiga os distúrbios do sono, sendo possível avaliar os registros de variáveis eletrofisiológicas, como atividade elétrica cerebral, frequência cardíaca e outros através de sensores posicionados na superfície corporal do paciente.', '', 'Unidade',
      50439.200000000004, 63049, 75658.8, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10111', 'Politriz', 'Gerais', '', 'Máquina utilizada para polir hastes metálicas que são usadas na montagem de órteses.', '', 'Unidade',
      521.6, 652, 782.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2345', 'Poltrona Hospitalar', 'Gerais', '', 'Poltrona com estofamento utilizada em ambientes hospitalares.', '', 'Unidade',
      1640.8000000000002, 2051, 2461.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1672', 'Poltrona para Doação de Sangue', 'Apoio', '', 'Poltrona com estofamento para utilização em hemodiálise, quimioterapia, doação/coleta de sangue, ou seja, procedimentos mais longos que necessitam de acomodação.', '', 'Unidade',
      7454.400000000001, 9318, 11181.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11814', 'Ponto de acesso sem fio', 'Gerais', '', 'Dispositivo de rede, para uso interno, que permite aos dispositivos sem fio se conectarem a uma rede cabeada. É mais simples e fácil instalá-los para conectar todos os computadores ou dispositivos na rede do que usar fios e cabos.', '', 'Unidade',
      1980, 2475, 2970, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10794', 'Prancha Longa de Imobilização de Coluna', 'Apoio', '', 'Utilizada na imobilização e transporte de pacientes acidentados. Possui orifícios ao longo de sua estrutura permitindo a fixação por tirantes, realização de amarras e fixação de imobilizadores de cabeça.', '', 'Unidade',
      541.6, 677, 812.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11787', 'Prensa Hidráulica', 'Apoio', '', 'Extração de óleo fixo de plantas medicinais, como óleo de fava de sucupira, e outros.', '', 'Unidade',
      1104, 1380, 1656, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11983', 'Processador de Áudio', 'Apoio', '', 'É um dispositivo cuja função é manipular, aprimorar, corrigir e modificar o sinal de áudio, alterando duas características antes que ele seja reproduzido ou gravado', '', 'Unidade',
      33188, 41485, 49782, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '545', 'Processadora de Filmes Radiográficos', 'Apoio', '', 'Processadora automática de filmes para Raois-X e Mamografia com misturador de químicos.', '', 'Unidade',
      9683.2, 12104, 14524.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '616', 'Processadora de Tecidos (Histotécnico)', 'Médico Assistencial', '', 'Equipamento automático de bancada (sistema de carrossel) utilizado no processamento de tecidos para exame histológico, na passagem dos fragmentos de tecido no processo de fixação, desidratação, clareamento e embebição em parafina para a confecção do bloco para corte.', '', 'Unidade',
      43740, 54675, 65610, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11240', 'Processadora de Tecidos (Vertical)', 'Médico Assistencial', '', 'Equipamento automático vertical (sistema à vácuol) utilizado no processamento de tecidos para exame histológico em rotinas de grande porte.', '', 'Unidade',
      190993.6, 238742, 286490.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '510', 'Projetor Multimídia (Datashow)', 'Gerais', '', 'Equipamento utilizado na projeção de apresentações profissionais, vídeos, filmes, imagens, fotos, etc.', '', 'Unidade',
      2548.8, 3186, 3823.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '452', 'Projetor Oftalmológico', 'Médico Assistencial', '', 'Equipamento utilizado por oftalmologistas na realização de testes de acuidade visual.', '', 'Unidade',
      16804, 21005, 25206, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10438', 'Prono-supinador', 'Médico Assistencial', '', 'Equipamento utilizado no auxílio ao tratamento de lesões dos nervos mediano e radial. O prono supinador é indicado em sequelas que comprometem a prono supinação (lesões dos nervos mediano e radial), auxiliam nas sequelas que afetam a rotação externa do ombro (artrite reumatoide, osteoartrite, artrite traumática), interna (ombro congelado idiopático) e no comprometimento de bíceps braquial.', '', 'Unidade',
      257.6, 322, 386.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11605', 'Pulverizador de Compressão Prévia', 'Gerais', '', 'Pulverizador de Compressão Prévia.', '', 'Unidade',
      1702.4, 2128, 2553.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1519', 'Pupilômetro', 'Médico Assistencial', '', 'O Pupilômetro é um aparelho que serve para tirar as medidas da distância nazopupilar, ou seja, ele tira as medidas e centraliza a montagem dos óculos em cada rosto individualmente.', '', 'Unidade',
      858.4000000000001, 1073, 1287.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10582', 'Purificador de Ar', 'Gerais', '', 'Utilizado para renovar a qualidade do ar.', '', 'Unidade',
      1864, 2330, 2796, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11881', 'Quadriciclo UTV', 'Veículo', '', 'Veículo Quadriciclo UTV para o transporte de equipe com função de intensificação da vigilância, prevenção e controle da malária em áreas remotas e de difícil acesso.', '', 'Unidade',
      80919.20000000001, 101149, 121378.79999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11880', 'Quadriciclo 4x4', 'Veículo', '', 'Veículo Quadriciclo 4x4 para o transporte de equipe com função de intensificação da vigilância, prevenção e controle da malária em áreas remotas e de difícil acesso.', '', 'Unidade',
      51606.4, 64508, 77409.59999999999, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10905', 'Rack de Servidor', 'Gerais', '', 'Gabinete metálico padronizado para a montagem e armazenamento modular de equipamentos de informática.', '', 'Unidade',
      2299.2000000000003, 2874, 3448.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11966', 'Rack para Servidores Genomicos', 'Apoio', '', 'Equipamento em estrutura metálica utlizado para suporte adequado a servidores computacionais que possuam tamanho padrão parea racks de 42U.', '', 'Unidade',
      56674.4, 70843, 85011.59999999999, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11856', 'Rádio Comunicador Marítimo', 'Apoio', '', 'Rádio Comunicador Marítimo permite a comunicação por voz entre as embarcações e as estações costeiras em uma faixa de frequência específica. Os rádios VHF são fáceis de usar, possuem alcance adequado para a maioria das necessidades de comunicação marítima e são amplamente adotados em todo o mundo.', '', 'Unidade',
      3128.8, 3911, 4693.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11848', 'Rádio VHF', 'Gerais', '', 'É um aparelho de alta frequência que permite transmitir e receber mensagens de longas distâncias.', '', 'Unidade',
      2185.6, 2732, 3278.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '806', 'Radiômetro para Fototerapia', 'Apoio', '', 'Equipamento utilizado para monitorar a radiação emitida por equipamentos de fototerapia dentro de um determinado espectro concentrado no azul visível, bem como monitorar a exposição do paciente a essa irradiação (valor da irradiância) e a eficiência da fonte de luz.', '', 'Unidade',
      3164.8, 3956, 4747.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2930', 'Rampa com Degraus', 'Médico Assistencial', '', 'Rampa com degraus para uso fisioterápico adulto e pediátrico.', '', 'Unidade',
      2824, 3530, 4236, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11896', 'Rampa de Equilíbrio', 'Apoio', '', 'Equipamento utilizado para exercícios de equilíbrio, coordenação e propriocepção, com a característica principal de ter a altura ou inclinação ajustável.', '', 'Unidade',
      1298.4, 1623, 1947.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3091', 'Rampa para Alongamento', 'Médico Assistencial', '', 'Rampa de alongamento para fisioterapia e RPG.', '', 'Unidade',
      130.4, 163, 195.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '779', 'Reanimador Pulmonar em T', 'Médico Assistencial', '', 'Equipamento portátil aplicado para utilização em ventilação pulmonar mecânica manual não invasiva, permitindo otimização da complacência pulmonar e das trocas gasosas, através da manutenção contínua e segura do fluxo de ventilação.', '', 'Unidade',
      12630.400000000001, 15788, 18945.6, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3006', 'Reanimador Pulmonar Manual Adulto (Ambu)', 'Médico Assistencial', '', 'Dispositivo bolsa-valva, que quando conectado à máscara, tubo traqueal ou tubo de traqueostomia, é destinado a fornecer ventilação manual à vítima.', '', 'Unidade',
      221.60000000000002, 277, 332.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3010', 'Reanimador Pulmonar Manual Pediátrico (Ambu)', 'Médico Assistencial', '', 'Dispositivo bolsa-valva, que quando conectado à máscara, tubo traqueal ou tubo de traqueostomia, é destinado a fornecer ventilação manual à vítima.', '', 'Unidade',
      291.2, 364, 436.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11979', 'Receptor Quádruplo sem Fio Digital', 'Apoio', '', 'É um componente central de um sistema de áudio profissional, como um sistema de microfones sem fio ou um sistema de monitoramento In-Ear (IEM).', '', 'Unidade',
      41512, 51890, 62268, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11913', 'Reco-reco', 'Apoio', '', 'Instrumento musical de percussão que emite sons, sendo utilizado como um recurso para atividades de reabilitação sensoriais e motoras.', '', 'Unidade',
      200, 250, 300, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11824', 'Recortador de Gesso', 'Apoio', '', 'Equipamento indicado para recortes e acabamentos em modelos de gesso utilizados para a confecção de peças odontológicas.', '', 'Unidade',
      2612.8, 3266, 3919.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '744', 'Refletor Odontológico', 'Médico Assistencial', '', 'Utilizado para proporcionar luminosidade no interior da cavidade oral.', '', 'Unidade',
      2458.4, 3073, 3687.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '688', 'Refratômetro', 'Médico Assistencial', '', 'Instrumento para avaliar o índice de refração, concentração, dispersão e pureza de amostras líquidas, viscosas e sólidas de substâncias opacas e transparentes.', '', 'Unidade',
      294.40000000000003, 368, 441.59999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11294', 'Refratômetro de Bancada', 'Médico Assistencial', '', 'Equipamento utilizado pela Seção de Controle Físico Químico na realização de testes para excipientes líquidos utilizados pelo LFM na produção de medicamentos.', '', 'Unidade',
      56176.8, 70221, 84265.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '66', 'Refrator de Greens', 'Médico Assistencial', '', 'Equipamento óptico (manual) de Teste de Refração Subjetiva para avaliação da acuidade visual.', '', 'Unidade',
      9485.6, 11857, 14228.4, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10546', 'Refrigerador Laboratorial', 'Apoio', '', 'Equipamento utilizado para resfriar amostras biológicas, químicas ou materiais sensíveis, mantendo-os em temperaturas específicas controladas. Este tipo de refrigerador é essencial para preservar a integridade e estabilidade das amostras durante armazenamento ou experimentos.', '', 'Unidade',
      22409.600000000002, 28012, 33614.4, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11950', 'Registrador de Ponto Eletrônico', 'Apoio', '', 'Equipamento eletrônico destinado ao registro de jornada de trabalho de colaboradores, por meio de autenticação biométrica, facial ou por cartão, conforme regulamentação vigente.', '', 'Unidade',
      1998.4, 2498, 2997.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2966', 'Régua de Gases (Assistência Respiratória de Parede)', 'Infraestrutura', '', 'Equipamento utilizado para assistência respiratória.', '', 'Unidade',
      1968, 2460, 2952, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1320', 'Relógio Comparador', 'Gerais', '', 'É um instrumento de medida por comparação.', '', 'Unidade',
      628.8000000000001, 786, 943.1999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2482', 'Relógio de Parede', 'Gerais', '', 'Relógio de parede analógico ou digital.', '', 'Unidade',
      118.4, 148, 177.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10258', 'Resfriador Rápido para Lactário', 'Apoio', '', 'Equipamento destinado ao resfriamento rápido do leite humano.', '', 'Unidade',
      45036.8, 56296, 67555.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10891', 'Ressonância Nuclear Magnética até 0,5 T', 'Médico Assistencial', '', 'Equipamento que utliza campo magnético e ondas de radiofrequência para formar imagens médicas para fins de radiodiagnóstico.', '', 'Unidade',
      2969009.6, 3711262, 4453514.399999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10889', 'Ressonância Nuclear Magnética 1,5 T', 'Médico Assistencial', '', 'Equipamento que utliza campo magnético e ondas de radiofrequência para formar imagens médicas para fins de radiodiagnóstico.', '', 'Unidade',
      4075240, 5094050, 6112860, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10890', 'Ressonância Nuclear Magnética 3,0 T', 'Médico Assistencial', '', 'Equipamento que utliza campo magnético e ondas de radiofrequência para formar imagens médicas para fins de radiodiagnóstico.', '', 'Unidade',
      8400000, 10500000, 12600000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '98', 'Retinógrafo', 'Médico Assistencial', '', 'Retinógrafo computadorizado com sistema digitalizador para captura, processamento e armazenamento dos exames realizados, com imagens do fundo de olho para avaliação da retinopatia hipertensiva e diabética.', '', 'Unidade',
      238667.2, 298334, 358000.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11862', 'Retinógrafo para Telessaúde', 'Médico Assistencial', '', 'Retinógrafo Portátil para processamento e armazenamento dos exames realizados, com imagens do fundo de olho para avaliação da retinopatia hipertensiva e diabética.', '', 'Unidade',
      25216, 31520, 37824, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1534', 'Retinoscópio', 'Médico Assistencial', '', 'Equipamento de uso oftalmológico, para medição do grau de refração do olho para determinação de anomalias de refração, como miopia, hipermetropia ou astigmatismo.', '', 'Unidade',
      4932.8, 6166, 7399.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11705', 'Revestidora para Comprimidos e Pellets', 'Apoio', '', 'Equipamento utilizado para revestimento de comprimidos e pellts na indústria farmacêutica.', '', 'Unidade',
      1998149.6, 2497687, 2997224.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11778', 'Roçadeira Multifuncional à Gasolina', 'Gerais', '', 'Item utilizado para podar grama e pequenas ervas que crescem no meio de plantações de plantas medicinais.', '', 'Unidade',
      1002.4000000000001, 1253, 1503.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11898', 'Rolo Suspenso com Apoio dos Pés', 'Apoio', '', 'Equipamento terapêutico utilizado para promover o equilíbrio, a coordenação e a integração sensorial', '', 'Unidade',
      1345.6000000000001, 1682, 2018.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11674', 'Rotaevaporador', 'Apoio', '', 'Equipamento para concentrar amostras através de evaporação rotativa sob vácuo, em banho aquecido.', '', 'Unidade',
      21939.2, 27424, 32908.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2594', 'Roteador (LAN)', 'Gerais', '', 'Dispositivo que encaminha pacotes de dados entre redes de computadores, criando um conjunto de redes de sobreposição. Um roteador é conectado a duas ou mais linhas de dados de redes diferentes. Quando um pacote de dados chega, em uma das linhas, o roteador lê a informação de endereço no pacote para determinar o seu destino final. Em seguida, usando a informação na sua política de tabela de roteamento ou encaminhamento, ele direciona o pacote para a rede mais próxima em sua viagem.', '', 'Unidade',
      552.8000000000001, 691, 829.1999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2487', 'Scanner', 'Gerais', '', 'Digitalizador ou Scanner é um aparelho de leitura ótica que permite converter imagens, fotos, ilustrações e textos em papel, num formato digital que pode ser manipulado em computador.', '', 'Unidade',
      3373.6000000000004, 4217, 5060.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11830', 'Scanner de Bancada (CAD/CAM)', 'Apoio', '', 'Equipamento utilizado para digitalizar modelos dentários, oferecendo uma varredura rápida e detalhada produzindo resultados de alta qualidade em pouso tempo.', '', 'Unidade',
      34742.4, 43428, 52113.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11923', 'Scanner de Lâminas', 'Apoio', '', 'Equipamento utilizado para digitalizar lâminas microscópicas, transformando imagens deamostras biológicas em arquivos digitais de alta resolução.', '', 'Unidade',
      2567247.2, 3209059, 3850870.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11825', 'Scanner Intraoral Odontológico', 'Apoio', '', 'Equipamento utilizado para realizar escaneamentos precisos e ágeis para a confecção de alinhadores ortodônticos, todo tipo de dispositivo protético sobre dentes e implantes, próteses móveis, placas mio-relaxantes e outros trabalhos.', '', 'Unidade',
      48120, 60150, 72180, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11815', 'Scanner 3D', 'Gerais', '', 'Escaneia a forma espacial, estrutura e cor de um objeto para obter informações sobre as coordenadas espaciais da superfície do objeto, podendo efetuar a digitalização 3D de partes do corpo (orelhas, mãos, pés e nariz) para visualizar aparência pré-cirúrgica e pós-cirúrgica ou simular os efeitos do procedimento cirúrgico.', '', 'Unidade',
      7463.200000000001, 9329, 11194.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11801', 'Secadora de Roupas Hospitalar', 'Apoio', '', 'Secadora rotativa de roupas industrial para lavanderia hospitalar.', '', 'Unidade',
      69406.40000000001, 86758, 104109.59999999999, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10442', 'Secadora de Traquéias', 'Apoio', '', 'Secadora utilizada para secagem de acessórios de ventilação pulmonar e intrumentais cirúrgicos em geral.', '', 'Unidade',
      73152.8, 91441, 109729.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1503', 'Seladora', 'Apoio', '', 'Equipamento utilizado para selar embalagens plásticas para uso em hospitais, clínicas e outros.', '', 'Unidade',
      889.6, 1112, 1334.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2290', 'Seladora Dielétrica para Bolsa de Sangue', 'Apoio', '', 'Equipamento utilizado para selar, exclusivamente bolsa de sangue.', '', 'Unidade',
      21147.2, 26434, 31720.8, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11963', 'Sensor Inercial', 'Apoio', '', 'Equipamento utilizado para mensuração objetiva de parâmetros como: marcha, equilíbrio, postura e amplitude de movimento articular. Sua aplicação abrange áreas de reabilitação, medicina esportiva, ergonomia e pesquisa científica, garantindo dados quantitativos, padronizados e exportáveis para relatórios.', '', 'Unidade',
      21332, 26665, 31998, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2857', 'Sequenciador de DNA', 'Médico Assistencial', '', 'Equipamento dedicado a análise de sequências de DNA, estudo de polimorfismo e detecção de alterações genéticas.', '', 'Unidade',
      664428.8, 830536, 996643.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10071', 'Serra de Autópsia', 'Médico Assistencial', '', 'Serra para dissecar e dissecção de corpos humanos.', '', 'Unidade',
      1816.8000000000002, 2271, 2725.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11064', 'Serra de Fita', 'Gerais', '', 'Equipamento para corte com serra tipo fita para secção de madeiras,plástico, alumínio e aço.', '', 'Unidade',
      10440, 13050, 15660, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3054', 'Serra para Gesso', 'Apoio', '', 'Equipamento utilizado para remoção de imobilização de fratura, feita em gesso e similares.', '', 'Unidade',
      2031.2, 2539, 3046.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11629', 'Serra/ Perfuradora Óssea (Drill)', 'Médico Assistencial', '', 'Equipamento utilizado para serrar ou perfurar ossos em procedimentos cirúrgicos.', '', 'Unidade',
      33660, 42075, 50490, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11065', 'Serra Tico-Tico', 'Gerais', '', 'Equipamento vesátil utilizado para cortes de madeira, metais, plásticos e acrílico.', '', 'Unidade',
      436, 545, 654, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11967', 'Servidor de Ancoragem de Sistemas Web', 'Apoio', '', 'Servidor computacional para ancoragem de servidores da web.', '', 'Unidade',
      608631.2000000001, 760789, 912946.7999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11968', 'Servidor de Armazenamento Central de Dados Genômicos', 'Apoio', '', 'Servidor computacional para armazenamento central de dados genômicos', '', 'Unidade',
      5468000, 6835000, 8202000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11964', 'Servidor de Armazenamento em Redundância', 'Apoio', '', 'Servidor computacional de grande porte.', '', 'Unidade',
      3708800, 4636000, 5563200, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11969', 'Servidor de Armazenamento para Sequenciador Genético de Alto Desempenho-NGS', 'Apoio', '', 'Servidor computacional para armazenamento de grande volume de dados.', '', 'Unidade',
      640000, 800000, 960000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11970', 'Servidor de Gerenciamento de Logs', 'Apoio', '', 'Servidor computacional para armazenamento e monitoramento de dados de acessos.', '', 'Unidade',
      614557.6, 768197, 921836.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11835', 'Servidor de Videomonitoramento', 'Gerais', '', 'Sistema que permite que imagens geradas e gravadas em formato digital a partir da própria câmera sejam analisadas. Assim, quando captura e gera uma imagem, a câmera IP pode oferecer uma alta resolução, o que significa melhor qualidade nas imagens.', '', 'Unidade',
      1477.6000000000001, 1847, 2216.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11971', 'Servidor para Processamento de Análises Genômicas', 'Apoio', '', 'Servidor computacional de grande portre otimizado para processamento e análise de alta densidade de dados genômicos.', '', 'Unidade',
      614557.6, 768197, 921836.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10567', 'Silo', 'Gerais', '', 'Equipamento utilizado para armazenamento de gesso, usado para confeccionar moldes para confecção de órteses e próteses.', '', 'Unidade',
      22928, 28660, 34392, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10297', 'Simetrógrafo', 'Médico Assistencial', '', 'Equipamento utilizado para avaliação postural que permite identificar os desvios posturais mais evidentes, por meio da observação de pontos anatômicos específicos que permitirão identificar possíveis assimetrias decorrentes desta alteração postural.', '', 'Unidade',
      815.2, 1019, 1222.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2260', 'Simulador de Cabeça para Intubação', 'Apoio', '', 'Utilizado para simular a intubação em treinamentos e práticas clínicas.', '', 'Unidade',
      2766.4, 3458, 4149.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11929', 'Simulador de Escada', 'Apoio', '', 'Equipamento utilizado para treino de resistência aeróbia a partir da simulação
da tarefa de subir escada. Pode possuir suporte em aço para apoio dos membros superiores, display LCD(velocidade, distância, cronômetro, monitoramento cardíaco e calorias) e porta objetos. Comumente, esse
equipamento suporta até 150 kg e altura máxima de 2,30m. Para composição dos degraus, o material é
antiderrapante. Ao longo do exercício, é possível programa resistência para a impulsão do passo.', '', 'Unidade',
      14727.2, 18409, 22090.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1977', 'Simulador de Maternidade', 'Apoio', '', 'Utilizado para simular a ausculta do batimento cardíaco fetal, medição pélvica, apalpação das mamas nos treinamentos e práticas clínicas.', '', 'Unidade',
      14151.2, 17689, 21226.8, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1857', 'Simulador de Parto', 'Apoio', '', 'O simulador é destinado para possibilitar a prática de manobras pré-natais, intraparto e pré-parto.', '', 'Unidade',
      3248.8, 4061, 4873.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11931', 'Simulador de Remo', 'Apoio', '', 'Equipamento para exercício aeróbio que simula o esporte de remo. Ele trabalha o
condicionamento cardiorrespiratório e função muscular da cintura escapular e de membros superioresnto utilizado no processo final de reabilitação para inserção no esporte adaptado.', '', 'Unidade',
      1526.4, 1908, 2289.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '719', 'Simulador/ Tomógrafo para Radioterapia', 'Médico Assistencial', '', 'Equipamento de diagnóstico por imagens, que são geradas por Raios X emitidos e captados em 360 graus ao redor do paciente, formando os chamados cortes tomográficos, e que possui acessórios específicos para fins de simulação de radioterapia.', '', 'Unidade',
      2686000, 3357500, 4029000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11859', 'Sistema Automatizado Elisa', 'Médico Assistencial', '', 'Sistema automatizado, que inclui as etapas de pipetagem, incubação, lavagem de placas, leitura e geração de resultados em um mesmo equipamento.', '', 'Unidade',
      1147567.2, 1434459, 1721350.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '878', 'Sistema Completo de Mistura de Sólidos por BINS', 'Item Industrial Hosp/Farmacêutico e/ou Pesquisa', '', 'Sistema para prepração de mistura de sólidos para compressão e encapsulamento de medicamentos.', '', 'Unidade',
      603394.4, 754243, 905091.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10446', 'Sistema Computadorizado para Teste Ergométrico', 'Médico Assistencial', '', 'Sistema computadorizado composto de esteira ergométrica e sistema de análise cardíaca para realização de teste de esforço cardíaco.', '', 'Unidade',
      62192, 77740, 93288, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2095', 'Sistema de Aférese', 'Médico Assistencial', '', 'Sistema de aférese é utilizado no procedimento de separação do sangue total em seus derivados.', '', 'Unidade',
      553333.6, 691667, 830000.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11732', 'Sistema de Água Ultrapura', 'Apoio', '', 'Equipamento projetado para fornecer água ultrapura de alta qualidade adaptado às necessidades de cada usuário de laboratório', '', 'Unidade',
      29022.4, 36278, 43533.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11798', 'Sistema de Análise de Proteína', 'Médico Assistencial', '', 'Equipamento utilizado para caracterização do antígeno vacinal, com a detecção e
caracterização de proteínas', '', 'Unidade',
      333185.60000000003, 416482, 499778.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10278', 'Sistema de Bomba Intraórtica / Balão Intraórtico', 'Médico Assistencial', '', 'Equipamento utilizado para assistência cardíaca temporária em diversos procedimentos.', '', 'Unidade',
      468000, 585000, 702000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2275', 'Sistema de Campo Livre', 'Médico Assistencial', '', 'Equipamento destinado para realizar exames audiométricos.', '', 'Unidade',
      3919.2000000000003, 4899, 5878.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11875', 'Sistema de Centrifugação', 'Gerais', '', 'Sistema utilizado para separar componentes de uma mistura por meio de força centrífuga, otimizando processos como purificação, concentração e clarificação de amostras.', '', 'Unidade',
      2455300, 3069125, 3682950, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1543', 'Sistema de Cirurgia Guiada por Imagem (Neuronavegador)', 'Médico Assistencial', '', 'Equipamento de localização espacial em tempo real que rastreia, à distância e continuamente, os instrumentos cirúrgicos e sua relação com as estruturas anatômicas do paciente. As imagens tomográficas são utilizadas como mapas tridimensionais orientando todo o procedimento cirúrgico.', '', 'Unidade',
      1310356.8, 1637946, 1965535.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11826', 'Sistema de Digitalização de Imagens Odontológicas', 'Apoio', '', 'Equipamento utilizado para finalidade diagnóstica, com captura de imagens radiológicas intraorais, de forma nítida e instantânea.', '', 'Unidade',
      9493.6, 11867, 14240.4, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '994', 'Sistema de Eletroforese', 'Médico Assistencial', '', 'Equipamento utilizado para a  separação de moléculas.', '', 'Unidade',
      9409.6, 11762, 14114.4, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11200', 'Sistema de Embalagem Primária e Secundária para Sólidos', 'Apoio', '', 'Sistema completo destinado à embalagens de medicamentos produzidos nos laboratórios para envasar, embalar. encaixotar e paletizar produtos sólidos orais no formato de blister e/ou frasco plástico/vidro.', '', 'Unidade',
      12800000, 16000000, 19200000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11991', 'Sistema de Envase Asséptico', 'Apoio', '', 'Equipamento para envase estéril de produtos biológicos.', '', 'Unidade',
      23325896, 29157370, 34988844, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11944', 'Sistema de Fermentadores', 'Apoio', '', 'Equipamento utilizado para cultivo de levedura responsável pela produção das partículas semelhantes ao vírus VLP utilizada na produção do IFA.', '', 'Unidade',
      27570441.6, 34463052, 41355662.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11876', 'Sistema de Filtração em Fluxo Tangencial', 'Gerais', '', 'Equipamento para separar e concentrar partículas ou moléculas de uma solução, permitindo a passagem de líquidos e pequenos solutos através de uma membrana, enquanto retém partículas maiores, como células, proteínas ou outros componentes.', '', 'Unidade',
      1553712, 1942140, 2330568, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11878', 'Sistema de Fluxo de Trabalho de Biologia Molecular', 'Apoio', '', 'Equipamento destinado a realizar o fluxo de trabalho do laboratório.', '', 'Unidade',
      2035367.2000000002, 2544209, 3053050.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '282', 'Sistema de Hemodinâmica', 'Médico Assistencial', '', 'Equipamento emissor de raios-x com detector plano digital (Flat Panel) para a realização de angiografia por meio da obtenção de imagens digitais em diagnósticos cardiológicos, neurológicos, vasculares periféricos e procedimentos intervencionistas.', '', 'Unidade',
      3342699.2, 4178374, 5014048.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11667', 'Sistema de Higienização de Pacientes', 'Apoio', '', 'Sistema de higienização para pacientes acamados, com deficiência física e/ou outros problemas de locomoção.', '', 'Unidade',
      42667.200000000004, 53334, 64000.799999999996, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3012', 'Sistema de Hipo/Hipertermia (Colchão/ Manta)', 'Médico Assistencial', '', 'Sistema de hipotermia e hipertermia dotado de sensor para monitorização da temperatura do líquido circulante no interior do colchão e do paciente.', '', 'Unidade',
      200000, 250000, 300000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2734', 'Sistema de Identificação e de Antibiograma', 'Médico Assistencial', '', 'Sistema Automático para Incubação de Microorganismo podendo realizar a identificação, detecção de crescimento bacteriano e testes de sensibilidade.', '', 'Unidade',
      256680, 320850, 385020, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11882', 'Sistema de Inspeção das Linhas de Embalagem', 'Apoio', '', 'Sistema de inspeção das linhas de embalagem utilizado para garantir o controle total do processo de embalagem na indústria farmacêutica', '', 'Unidade',
      849882.4, 1062353, 1274823.5999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11961', 'Sistema de Luzes de Treinamento Reativo (Flash Reflex Training)', 'Apoio', '', 'Dispositivos interativos projetados para aprimorar a velocidade de reação, coordenação motora, agilidade e atenção. Compostas por unidades portáteis que emitem luzes coloridas e desafiam o usuário a responder rapidamente a estímulos visuais. Utilizadas em treinamentos físicos, reabilitação neuromotora e avaliações cognitivas.', '', 'Unidade',
      3568.8, 4461, 5353.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10947', 'Sistema de Microscopia Cirúrgica com Vídeo Angiografia', 'Médico Assistencial', '', 'O sistema deve conter minimamente o microscópio cirúrgico com sistema de vídeo angiografia digital e sistema compatível para realizar neuronavegação.', '', 'Unidade',
      1296297.6, 1620372, 1944446.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10934', 'Sistema de Monitoramento de Temperatura', 'Apoio', '', 'Sistema composto por sensores e software para monitor a temperatura da cadeia de frio.', '', 'Unidade',
      259663.2, 324579, 389494.8, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11948', 'Sistema de Monitorização Neurofisiológica Intraoperatória', 'Médico Assistencial', '', 'Equipamento destinado ao monitoramento neurofisiológico em tempo real durante procedimentos cirúrgicos, com foco na preservação de estruturas neurológicas funcionais. Permite a detecção imediata de alterações na condução neural por meio de técnicas de estimulação elétrica e registro de respostas neurofisiológicas, sendo aplicado em cirurgias neurológicas, otorrinolaringológicas, ortopédicas, vasculares e outras em que exista risco de comprometimento neurológico.', '', 'Unidade',
      228024.80000000002, 285031, 342037.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11879', 'Sistema de Produção de Biomedicamentos', 'Apoio', '', 'Sistema utilizado para o processo produtivo de biofármacos.', '', 'Unidade',
      42271014.400000006, 52838768, 63406521.599999994, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11978', 'Sistema de Retorno de Aúdio sem Fio', 'Apoio', '', 'Equipamento eletrônico projetado para fornecer uma mixagem de áudio personalisada e sem fio diretamente aos ouvidos do artista, músico ou palestrante no palco ou em abientes de performance.', '', 'Unidade',
      1577.6000000000001, 1972, 2366.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11268', 'Sistema de Vídeo Endoscopia Flexível', 'Médico Assistencial', '', 'Sistema de Vídeo Endoscopia flexível para observação e biópsia de pacientes.', '', 'Unidade',
      279156, 348945, 418734, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10254', 'Sistema de Vídeo Endoscopia Rígida', 'Médico Assistencial', '', 'Sistema para Video  Endoscopia Rígida para realização de procedimentos de vídeocirurgias minimamente invasivas, de acordo com cada aplicação, Vídeolaparoscopia, Artroscopia,  Vídeocirurgia, Histeroscopia, Cistoscopia, Ureteroscopia, Nefroscopia, etc.', '', 'Unidade',
      334400, 418000, 501600, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1123', 'Sistema Holter - Analisador e Gravador', 'Médico Assistencial', '', 'O Sistema Holter trata-se de um monitor portátil que registra a atividade elétrica do coração e suas variações durante as 24 horas do dia ou mais e pode, assim, detectar alterações que em geral não aparecem num exame de tempo mais limitado, como num eletrocardiograma simples, por exemplo.', '', 'Unidade',
      48516.8, 60646, 72775.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11873', 'Sistema Integrado de Granulação, Secagem e Mistura', 'Gerais', '', 'Sistema utilizado no processo de granulação, secagem e mistura de insumos farmacêuticos para produção de medicamentos.', '', 'Unidade',
      44888298.400000006, 56110373, 67332447.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11951', 'Sistema Integrado de Monitoramento de Radiação de Àrea', 'Infraestrutura', '', 'Essencial para garantir a segurança radiológica de ambientes que utilizam ou armazenam materiais radioativos. O equipamento permite a detecção e medição precisa dos níveis deradiação ionizante, assegurando que estejam dentro dos limites estabelecidos pelas normas de segurança e vigilância sanitária. Além disso, é fundamental para a proteção dos profissionais envolvidos e para a prevenção de exposições indevidas.', '', 'Unidade',
      1728640, 2160800, 2592960, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11939', 'Sistema Manual de Células de Difusão Vertical', 'Apoio', '', 'Equipamento utilizado para avaliar a permeação ou liberação de substâncias através de barreiras biológicas como pele humana, pele animal, membranas sintéticas ou mucosas, usado amplamente em ensaios de permeação transdérmica de medicamentos, cosméticos e produtos químicos; ensaios de liberação in vitro; desenvolvimento e validação de formulações dermatológicas, farmacêuticas, cosméticas e veterinárias; avaliação comparativa de bioequivalência tópica in vitro; estudos de cinética de liberação e absorção cutânea.', '', 'Unidade',
      173616, 217020, 260424, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '264', 'Sistema para Urodinâmica', 'Médico Assistencial', '', 'Equipamento utilizado para realização de análise do funcionamento do trato urinário inferior (bexiga e uretra) nas suas funções de armazenamento, transporte e esvaziamento de urina.', '', 'Unidade',
      55840, 69800, 83760, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1990', 'Sofá-cama Hospitalar', 'Gerais', '', 'Sofá utilizado para descanço, espera, entre outras funcionalidades.', '', 'Unidade',
      2895.2000000000003, 3619, 4342.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11836', 'Sonofletor de Comunicação', 'Gerais', '', 'É uma solução de sonorização voltada para emitir avisos sonoros dentre outras funções.', '', 'Unidade',
      4060, 5075, 6090, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2527', 'Soprador Térmico', 'Gerais', '', 'Equipamento de aquecimento ultilizado em banco de tecidos e oficina ortopédica.', '', 'Unidade',
      346.40000000000003, 433, 519.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2692', 'Suporte de Hamper', 'Apoio', '', 'Dispositivo utilizado para descarte de roupas usadas.', '', 'Unidade',
      408.8, 511, 613.1999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2369', 'Suporte de Soro', 'Apoio', '', 'Estrutura utilizada para colocar o frasco de soro durante a aplicação no paciente.', '', 'Unidade',
      332, 415, 498, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11239', 'Suporte de Soro para Ressonância Magnética', 'Apoio', '', 'Estrutura utilizada para colocar o frasco de soro durante a aplicação no paciente, para uso em salas de ressonância magnética.', '', 'Unidade',
      568.8000000000001, 711, 853.1999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1590', 'Suporte de Westergreen', 'Médico Assistencial', '', 'Suporte que possui capacidade para acomodar pipetas de sedimentação sanguínea segundo método Westergreen.', '', 'Unidade',
      370.40000000000003, 463, 555.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11838', 'Suporte para Perfurocortante', 'Gerais', '', 'Suporte destinado para suportar caixa coletora de material perfurocortante no ambiente de saúde.', '', 'Unidade',
      28, 35, 42, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1327', 'Switch', 'Gerais', '', 'É um equipamento de interconexão, do tipo concentrador de rede, porém, ele divide a rede em domínios de colisão independentes.

*Este equipamento possui especificação e preço unitário previamente validados pelo Ministério da Saúde e não serão permitidas alterações.', '', 'Unidade',
      3226.4, 4033, 4839.599999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11816', 'Switch de distribuição', 'Gerais', '', 'Elemento intermediário entre os switches core e os switches de acesso. Esses equipamentos normalmente são utilizados em redes locais com múltiplas unidades.', '', 'Unidade',
      63382.4, 79228, 95073.59999999999, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11972', 'Switch de 100GB', 'Apoio', '', 'Switch de alto desempenho para transmissão de grande volume de dados.', '', 'Unidade',
      74596.8, 93246, 111895.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11817', 'Switcher de vídeo', 'Gerais', '', 'O Switcher de Vídeo é uma solução portátil para produção de vídeo HD que acomoda até quatro entradas HDMI. Você pode controlar o switcher manualmente usando os controles embutidos ou conectá-lo a um computador executando software opcional para opções de controle adicionais.', '', 'Unidade',
      9396.800000000001, 11746, 14095.199999999999, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2951', 'Tablado para Fisioterapia', 'Médico Assistencial', '', 'Tablado para Fisioterapia Neurológica e Reabilitação.', '', 'Unidade',
      1408, 1760, 2112, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11744', 'Tablet', 'Gerais', '', 'Dispositivo portátil, de tamanho pequeno e com tela sensível ao toque. Permite acessar a internet, enviar e-mails, utilizar aplicativos e funcionalidades de acordo com demandas próprias.', '', 'Unidade',
      1754.4, 2193, 2631.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11776', 'Tábua De Passar Roupa', 'Gerais', '', 'Item utilizado como base para desamassar roupas, panos e tecidos em geral', '', 'Unidade',
      148, 185, 222, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10903', 'Tábua de Propriocepção', 'Médico Assistencial', '', 'Equipamento utilizada em Exercício de equilíbrio, Transferência de Peso, Fortalecimento de MMII e Exercícios Proprioceptivos.', '', 'Unidade',
      295.2, 369, 442.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3094', 'Tábua de Quadríceps', 'Médico Assistencial', '', 'Equipamento utilizado para  reabilitação motora de membros inferiores com ganho de força muscular, flexibilidade e amplitude de movimento.', '', 'Unidade',
      166.4, 208, 249.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3103', 'Tábua de Tríceps', 'Médico Assistencial', '', 'Equipamento usado como rampa para a prática de alongamento da panturrilha (batata da perna) em paciente em reabilitação e fisioterapia.', '', 'Unidade',
      175.20000000000002, 219, 262.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11901', 'Tambor', 'Gerais', '', 'Equipamento utilizado como um recurso para atividades de reabilitação sensoriais e motoras', '', 'Unidade',
      49.6, 62, 74.39999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11945', 'Tanque Inox de Processamento', 'Apoio', '', 'O tanque de inox para processamento é utilizado principalmente na manipulação, mistura, armazenamento
temporário e preparo de substâncias líquidas ou pastosas em ambientes que exigem alto padrão de higiene, como os
setores farmacêutico, alimentício e cosmético. Sua construção em aço inoxidável garante resistência à corrosão,
facilidade de limpeza e compatibilidade com normas sanitárias, sendo ideal para processos que demandam controle
de temperatura, homogeneidade e segurança no manuseio de produtos sensíveis.', '', 'Unidade',
      680888, 851110, 1021332, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11914', 'Teclado Eletrônico', 'Gerais', '', 'Instrumento musical composto por conjuntos de teclas que produzem sons quando pressionadas.', '', 'Unidade',
      1154.4, 1443, 1731.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2625', 'Tela de Projeção', 'Gerais', '', 'Tela retrátil para projeção de imagens, com sistema de fixação no teto e/ou parede e/ou pedestal.', '', 'Unidade',
      779.2, 974, 1168.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1382', 'Telefone', 'Gerais', '', 'Telefone é um aparelho que permite transmitir sons à distância através de sinais elétricos.', '', 'Unidade',
      192.8, 241, 289.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11596', 'Telefone Celular Rural de Mesa', 'Gerais', '', 'Telefone celular rural de mesa que proporciona longo alcance devido a sua antena externa de alto ganho.', '', 'Unidade',
      570.4, 713, 855.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11847', 'Telefone Satelital', 'Gerais', '', 'É um aparelho telefônico que envia sinal ao satélite para realizar as ligações.', '', 'Unidade',
      15965.6, 19957, 23948.399999999998, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2259', 'Televisor', 'Gerais', '', 'Aparelho utilizado para captação de sinais de imagens e sons.', '', 'Unidade',
      1090.4, 1363, 1635.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2958', 'TENS - Estimulador Transcutâneo', 'Médico Assistencial', '', 'É um equipamento que realizada neuroestimulação elétrica por meio transcutâneo.', '', 'Unidade',
      1896.8000000000002, 2371, 2845.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3093', 'TENS e FES', 'Médico Assistencial', '', 'Aparelho clínico de FES e TENS, indicado para tratamento por eletroestimulação e eletroanalgesia.', '', 'Unidade',
      1896.8000000000002, 2371, 2845.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10560', 'Termociclador para PCR', 'Médico Assistencial', '', 'Equipamento automático para realização de técnicas de PCR (Reação em cadeia da polimerase), amplificação de DNA, entre outras análises.

*Não é passível de aprovação neste item a tecnologia de PCR em Tempo Real por existir item com nomenclatura própria.
As configurações permitidas referem-se aos termocicladores convencionais com ou sem gradiente.', '', 'Unidade',
      27714.4, 34643, 41571.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11855', 'Termohigrobarômetro', 'Apoio', '', 'É um dispositivo que mede temperatura, umidade relativa e pressão atmosférica simultaneamente.', '', 'Unidade',
      1835.2, 2294, 2752.7999999999997, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1339', 'Termohigrômetro', 'Apoio', '', 'Aparelho de medição que indica temperaturas externas e internas e umidade relativa do ar.', '', 'Unidade',
      172, 215, 258, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11415', 'Termômetro Clínico', 'Médico Assistencial', '', 'Utilizado para verificar temperatura corporal.', '', 'Unidade',
      145.6, 182, 218.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11604', 'Termonebulizador tipo FOG', 'Gerais', '', 'Aparelho Termonebulizador, tipo portátil, para aplicação espacial.', '', 'Unidade',
      6615.200000000001, 8269, 9922.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2797', 'Titulador Automático', 'Médico Assistencial', '', 'Equipamento utilizado para identificar a concentração de substâncias em amostras analisadas, com a função de realizar procedimentos de titulação de acordo com as necessidades do método e usuário em questão.', '', 'Unidade',
      29482.4, 36853, 44223.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11805', 'Tomógrafo Computadorizado (Acima de 16 canais até 80 canais)', 'Médico Assistencial', '', 'Tomógrafo Computadorizado Helicoidal Multislice, composto por unidade de comando, gantry, mesa paciente móvel e demais acessórios. O sistema (software) deverá permitir operar com simultaneidade plena de operações distintas, como: exploração, reconstrução e demonstração de imagens. Deve possuir pacote de softwares integrados que possibilitem imagens livres de artefatos e de alta resolução.', '', 'Unidade',
      2400000, 3000000, 3600000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11804', 'Tomógrafo Computadorizado (Até 16 canais)', 'Médico Assistencial', '', 'Tomógrafo Computadorizado Helicoidal Multislice, composto por unidade de comando, gantry, mesa paciente móvel e demais acessórios. O sistema (software) deverá permitir operar com simultaneidade plena de operações distintas, como: exploração, reconstrução e demonstração de imagens. Deve possuir pacote de softwares integrados que possibilitem imagens livres de artefatos e de alta resolução.', '', 'Unidade',
      1188000, 1485000, 1782000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10323', 'Tomógrafo de Coerência Óptica', 'Médico Assistencial', '', 'Equipamento utilizado para gerar imagens tomográficas da porção posterior do olho, possibilitar a análise da retina, glaucoma e diagnósticos oftalmológicos de pacientes.', '', 'Unidade',
      487320, 609150, 730980, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1551', 'Tonômetro', 'Médico Assistencial', '', 'Equipamento utilizado para o processo de medição da pressão interna do globo ocular em pacientes com suspeita de glaucoma.', '', 'Unidade',
      4556.8, 5696, 6835.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '3123', 'Topógrafo de Córnea', 'Médico Assistencial', '', 'Sistema destinado ao mapeamento topográfico do relevo da córnea para identificação de diagnóstico de patologias, planejamento e avaliação pré e pós-cirúrgico nas cirurgias refrativas, facectomias e transplante de córnea.', '', 'Unidade',
      55700, 69625, 83550, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '789', 'Torno Odontológico', 'Apoio', '', 'Equipamento utilizado para polir próteses dentárias.', '', 'Unidade',
      828, 1035, 1242, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11088', 'Torno Universal', 'Gerais', '', 'Equipamento utilizado para confecção de peças personalizadas para órteses, próteses e adaptações em cadeiras de rodas e meios auxiliares de locomoção.', '', 'Unidade',
      35776, 44720, 53664, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10776', 'Torquímetro', 'Gerais', '', 'É uma ferramenta utilizada para medir o torque aplicado em parafusos e porcas.', '', 'Unidade',
      1145.6000000000001, 1432, 1718.3999999999999, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '1229', 'Transiluminador Cutâneo (Venoscópio)', 'Médico Assistencial', '', 'Equipamento localizador de veias baseado no princípio da captação da hemoglobina presente nos vasos sanguíneos através da emissão de luz em espectro infravermelho.', '', 'Unidade',
      1304, 1630, 1956, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '259', 'Transportadora de Paletes (Paleteira)', 'Gerais', '', 'Equipamento utilizado para transporte de cargas dispostas em palets.', '', 'Unidade',
      1774.4, 2218, 2661.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11917', 'Trapézio', 'Apoio', '', 'Equipamento desenvolvido para atividades terapêuticas, indicado como recurso nas terapias IS (Integração Sensorial), para trabalhar membros superiores, promove estímulos vestibulares reações de equilíbrio.', '', 'Unidade',
      184.8, 231, 277.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11903', 'Triângulo', 'Apoio', '', 'Equipamento utilizado como um recurso para atividades de reabilitação sensoriais e motoras', '', 'Unidade',
      46.400000000000006, 58, 69.6, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11374', 'Triturador Forrageiro', 'Gerais', '', 'Equipamento utilizado para triturar materiais como cascas de frutas, legumes, verduras, restos de alimento entre outros materiais.', '', 'Unidade',
      1532.8000000000002, 1916, 2299.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11651', 'Trocador de Fraldas de Parede', 'Gerais', '', 'Item utilizado para a realização de troca de fraldas.', '', 'Unidade',
      1360.8000000000002, 1701, 2041.1999999999998, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10909', 'Tromboelastógrafo/ Tromboelastômetro', 'Médico Assistencial', '', 'Equipamento utilizado para análise de coagulação.', '', 'Unidade',
      576000, 720000, 864000, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11883', 'Turbidímetro', 'Apoio', '', 'Equipamento destinado a efetuar leitura de inóculos, cuja medição é convertida em uma leitura de turbidez, expressa em unidades de nefelometria.', '', 'Unidade',
      12024, 15030, 18036, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '928', 'Turbilhão', 'Médico Assistencial', '', 'Equipamento utilizado para estimulação da circulação sanguinea e alívio da dor através da exploração da reação do corpo aos estímulos exercidos pela pressão e calor da água.', '', 'Unidade',
      8964, 11205, 13446, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11254', 'Ultracongelador de Nitrogênio Líquido', 'Apoio', '', 'Congelador de criogênico é projetado para congelar qualquer tipo de amostras biológicas sensíveis através de abastecimento por nitrogênio líquido.', '', 'Unidade',
      92541.6, 115677, 138812.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11266', 'UltraSonicador', 'Médico Assistencial', '', 'Equipamento que promove a homogeneização de amostras, o rompimento e fragmentação, como também extração de componentes e redução de tamanho de partículas.', '', 'Unidade',
      20549.600000000002, 25687, 30824.399999999998, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11423', 'Ultrassom Diagnóstico com Aplicação Transesofágica', 'Médico Assistencial', '', 'Equipamento para diagnóstico por imagens médicas geradas através de ondas mecânicas de frequência ultrassônica, para realização de exames ginecologia, obstetrícia, ecografia abdominal Geral, urologia, cerebrovascular, vascular periférico, ecografia mamária, músculo-esquelético, pequenas partes (tireóide, testículo), transcraniano, transfontanela, cardiologia adulta e pediátrica e transesofágico.', '', 'Unidade',
      267000, 333750, 400500, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11869', 'Ultrassom Diagnóstico Portátil paraTelessaúde', 'Médico Assistencial', '', 'Equipamento para diagnóstico por imagens médicas geradas através de ondas mecânicas de frequência ultrassônica, para realização de exames. Com aplicação para Telessaúde/Telemedicina.', '', 'Unidade',
      44000, 55000, 66000, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11422', 'Ultrassom Diagnóstico sem Aplicação Transesofágica', 'Médico Assistencial', '', 'Equipamento para diagnóstico por imagens médicas geradas através de ondas mecânicas de frequência ultrassônica, para realização de exames.', '', 'Unidade',
      143733.6, 179667, 215600.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11655', 'Ultrassom Diagnóstico Transcraniano', 'Médico Assistencial', '', 'Equipamento que utiliza a técnica de ultrassom para medir indiretamente o fluxo nas porções proximais das principais artérias intracranianas, oferecendo informações dinâmicas da circulação cerebral.', '', 'Unidade',
      246800, 308500, 370200, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2729', 'Ultrassom Odontológico', 'Médico Assistencial', '', 'Equipamento utilizado nos processos de limpeza dentário e em processos odontológicos que necessitam de alta energia.', '', 'Unidade',
      4344.8, 5431, 6517.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '194', 'Ultrassom Oftalmológico', 'Médico Assistencial', '', 'Aparelho para diagnóstico que aproveita o eco produzido pelo som para ver em tempo real as sombras produzidas pelas estruturas e órgãos, nesse caso utilizado para os olhos.', '', 'Unidade',
      64592, 80740, 96888, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '204', 'Ultrassom para Fisioterapia', 'Médico Assistencial', '', 'Equipamento para terapia de estruturas superficiais e profundas geradas através de ondas mecânicas de frequência ultrassônica.', '', 'Unidade',
      1884.8000000000002, 2356, 2827.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10754', 'Unidade Automática para Reprocessamento de Filtros', 'Apoio', '', 'Equipamento utilizado para reprocessamento dos filtros utilizados em tratamento hemodialítico.', '', 'Unidade',
      24825.600000000002, 31032, 37238.4, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '97', 'Unidade Auxiliar com Sugador', 'Médico Assistencial', '', 'Mangueira que recebe ar, do comprocessor, na qual será acoplado o sugador.', '', 'Unidade',
      976, 1220, 1464, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11993', 'Unidade Móvel da Saúde - SAMU 192 (Motolância)', 'Veículo', '', 'Motocicleta equipada para atendimento de emergência, usada para chegar rapidamente a locais com trânsito intenso ou de difícil acesso, oferecendo suporte inicial e agilidade para salvar vidas antes da chegada da ambulância.', '', 'Unidade',
      55280.8, 69101, 82921.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11997', 'Unidade Móvel da Saúde - SAMU 192 Sem Equipamentos (Motolância)', 'Veículo', '', 'Motocicleta equipada para atendimento de emergência, usada para chegar rapidamente a locais com trânsito intenso ou de difícil acesso, oferecendo suporte inicial e agilidade para salvar vidas antes da chegada da ambulância.', '', 'Unidade',
      40649.600000000006, 50812, 60974.399999999994, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '32', 'Unidade Móvel de Coleta', 'Veículo', '', 'Ônibus adaptado para atuar como posto móvel de coleta de sangue.', '', 'Unidade',
      2880140.8000000003, 3600176, 4320211.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11587', 'Unidade Móvel de Saúde - SAMU (Suporte Básico e/ou Avançado de Vida)', 'Veículo', '', 'Veículo para transporte e assistência ao paciente (SAMU),para Suporte Básico e/ou Avançado de Vida exclusivamente para o Componente Renovação de Frota.', '', 'Unidade',
      378240, 472800, 567360, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11845', 'Unidade Móvel de Saúde - SAMU 192 - (USA)', 'Veículo', '', 'Veículo para transporte e assistência ao paciente (SAMU),para Suporte  Avançado de Vida exclusivamente para o Componente Ampliação/Expansão da Frota (USA).', '', 'Unidade',
      554423.2000000001, 693029, 831634.7999999999, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11846', 'Unidade Móvel de Saúde - SAMU 192 - (USB)', 'Veículo', '', 'Veículo para transporte e assistência ao paciente (SAMU),para Suporte Básico de Vida exclusivamente para o Componente Ampliação/Expansão da Frota (USB).', '', 'Unidade',
      441834.4, 552293, 662751.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11885', 'Unidade Odontológica Móvel - UOM (Pregão nº 90105/2024)', 'Veículo', '', 'Unidade Odontológica Móvel destinada às ações assistenciais de saúde bucal.', '', 'Unidade',
      319504.80000000005, 399381, 479257.19999999995, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11771', 'Vacuômetro para Rede de Gases', 'Infraestrutura', '', 'Equipamento utilizado na rede de gases para aspiração de secreções, fluídos corporais, corpos estranhos nas áreas nasais, faringe e traqueias. Transforma a pressão positiva em negativa gerando vácuo.', '', 'Unidade',
      197.60000000000002, 247, 296.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11770', 'Válvula Reguladora de Pressão para Rede de Gases', 'Infraestrutura', '', 'Equipamento utilizado para controle de pressão e distribuição de gases medicinais proveniente de rede de alimentação de gases (Ar comprimido, Oxigênio ou Óxido nitroso medicinais).', '', 'Unidade',
      297.6, 372, 446.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11777', 'Varal de Chão', 'Gerais', '', 'Item utilizado para secagem de roupas, panos e tecidos em geral', '', 'Unidade',
      148, 185, 222, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '36', 'Veículo de Passeio - Transporte de Equipe  (5 pessoas, 0 Km)', 'Veículo', '', 'Veículo para transportar a equipe de saúde.', '', 'Unidade',
      78012.8, 97516, 117019.2, '', 8,
      12, false, 'Alta', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11585', 'Veículo de Transporte Adaptado', 'Veículo', '', 'Veículo adpatado 4x2 para transporte de pessoas com deficiência tipo cadeirante e dificiculdade de locomoção.

Este equipamento possui especificação e preço unitário previamente validados pelo Ministério da Saúde e não serão permitidas alterações.', '', 'Unidade',
      327822.4, 409778, 491733.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11795', 'Veículo de Transporte Adaptado (Com Acessibilidade - 1 Cadeirante)', 'Veículo', '', 'Transporte sanitário adaptado para atendimentos eletivos de pessoas com deficiência que não apresentem condições de mobilidade e acessibilidade autônoma aos meios de transporte convencional.', '', 'Unidade',
      280474.4, 350593, 420711.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11653', 'Veículo de Transporte Sanitário ( Com Acessibilidade - 1 Cadeirante)', 'Veículo', '', 'Veículo 4x2 para transporte pessoas com acessibilidade para 1 cadeirante.', '', 'Unidade',
      280474.4, 350593, 420711.6, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10923', 'Veículo Pick-up Cabine Dupla 4x4 (Diesel)', 'Veículo', '', 'Veículo utilizado no transporte de equipe de saúde em regiões rurais.', '', 'Unidade',
      200553.6, 250692, 300830.39999999997, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11611', 'Veículo Tipo Motocicleta (Cross)', 'Veículo', '', 'Veículo de duas rodas e tração traseira - salvo raras excepções - com um motor que propicia sua auto-locomoção capaz de desenvolver velocidade de cruzeiro com segurança e conforto.', '', 'Unidade',
      20038.4, 25048, 30057.6, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11103', 'Veículo tipo Van - Diesel', 'Veículo', '', 'Veículo tipo van utilizado para transportar a equipe de saúde.', '', 'Unidade',
      283872, 354840, 425808, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11975', 'Veículo Tipo Van com Acessibilidade (Agora Tem Especialistas)', 'Veículo', '', 'Veículo tipo VAN com acessibilidade para cadeirante destinado ao transporte sanitário.', '', 'Unidade',
      357813.60000000003, 447267, 536720.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11999', 'Veículo Tipo Van com Acessibilidade (Agora Tem Especialistas)  Aquisição por Pregão 90447/2025', 'Veículo', '', 'Veículo tipo VAN com acessibilidade para cadeirante destinado ao transporte sanitário.', '', 'Unidade',
      243680, 304600, 365520, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '2624', 'Ventilador de Teto/ Parede', 'Gerais', '', 'Equipamento utilizado para proporcionar a circulação de ar no ambiente, promovendo maior conforto térmico.', '', 'Unidade',
      299.2, 374, 448.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11236', 'Ventilador Pulmonar para Ressonância Magnética', 'Médico Assistencial', '', 'Equipamento usado nos casos de insuficiência respiratória, com a função de realizar o bombeamento de ar enriquecido com oxigênio para o interior dos pulmões, permitindo de forma cíclica, a lavagem do CO2 (ventilação pulmonar). Para este item deve ser apresentadas características construtivas que permitam a aplicação correta e utilização segura do equipamento em ambientes que possuam Ressonância Nuclear Magnética.', '', 'Unidade',
      22675.2, 28344, 34012.799999999996, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11425', 'Ventilador Pulmonar Pressométrico e Volumétrico', 'Médico Assistencial', '', 'Equipamento usado nos casos de insuficiência respiratória, com a função de realizar o bombeamento de ar enriquecido com oxigênio para o interior dos pulmões.', '', 'Unidade',
      86697.6, 108372, 130046.4, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10294', 'Ventilômetro/ Respirômetro', 'Médico Assistencial', '', 'Aparelho para medição do volume corrente de ar expirado. Utilizado para medir o volume corrente, volume minuto, dentre outros parâmetros respiratórios.', '', 'Unidade',
      29324.800000000003, 36656, 43987.2, '', 8,
      12, false, 'Média', 'Média',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11827', 'Vibrador de Gesso', 'Apoio', '', 'Equipamento que produz efeito vibratório no gesso previamente a sua espatulação, eliminam as bolhas de ar que causam falhas técnicas nos modelos de gesso utilizados na confecção das próteses dentárias e aparelhos ortodônticos.', '', 'Unidade',
      1051.2, 1314, 1576.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10907', 'Vídeo Laringoscópio', 'Médico Assistencial', '', 'Laringoscópio específico com câmera e luz acoplada.', '', 'Unidade',
      15066.400000000001, 18833, 22599.6, '', 8,
      12, false, 'Média', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11921', 'Videogame', 'Apoio', '', 'Dispositivo eletrônico projetado para executar jogos digitais, conectado a uma tela para exibição de imagem. Possui hardware dedicado para processamento gráfico e computacional, permitindo a interação por meio de controles. Pode oferecer suporte a jogos em formato digital e/ou físico, além de funcionalidades online, como multiplayer e acesso a conteúdos adicionais.', '', 'Unidade',
      3127.2000000000003, 3909, 4690.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11906', 'Violão', 'Apoio', '', 'O violão é um instrumento de cordas pinçadas, geralmente com seis cordas, e possui um corpo acústico (a caixa de ressonância) ligado a um braço com trastes, funcionando como uma atividade relaxante e terapêutica, auxiliando na reabilitação física e cognitiva.', '', 'Unidade',
      257.6, 322, 386.4, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '11902', 'Violino', 'Apoio', '', 'Equipamento utilizado como um recurso para atividades de reabilitação sensoriais e motoras.', '', 'Unidade',
      64.8, 81, 97.2, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '973', 'Viscosímetro', 'Médico Assistencial', '', 'Equipamento utilizado para medir a viscosidade dos fluidos.', '', 'Unidade',
      6115.200000000001, 7644, 9172.8, '', 8,
      12, false, 'Baixa', 'Baixa',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

INSERT INTO public.equipment (
      code, name, category, subcategory, description, applicable_sectors, unit, 
      min_price, avg_price, max_price, manufacturers, life_span_years, 
      maintenance_interval_months, calibration_required, criticality, complexity, 
      infra_electricity, infra_water, infra_gases, infra_climatization, dimensions, 
      notes, normative_reference, status
    ) VALUES (
      '10155', 'Vitreófago', 'Médico Assistencial', '', 'Equipamento cirúrgico oftalmológico destinado às cirurgias do segmento posterior e anterior do olho.', '', 'Unidade',
      628160.8, 785201, 942241.2, '', 8,
      12, false, 'Alta', 'Alta',
      'Sim', 'Não', 'Não', 'Não', '',
      '', 'RENEM FNS 2026', 'Ativo'
    ) ON CONFLICT (code) DO UPDATE SET 
      name = EXCLUDED.name,
      category = EXCLUDED.category,
      description = EXCLUDED.description,
      avg_price = EXCLUDED.avg_price,
      min_price = EXCLUDED.min_price,
      max_price = EXCLUDED.max_price,
      criticality = EXCLUDED.criticality,
      complexity = EXCLUDED.complexity,
      updated_at = now();

