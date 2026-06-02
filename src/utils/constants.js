// Setores padrão e seus respectivos parâmetros quantitativos
export const SECTORS_METADATA = [
  { 
    id: "UTI Adulto", 
    name: "UTI Adulto", 
    desc: "Unidade de Terapia Intensiva Adulto", 
    params: [{ name: "leitos", label: "Número de Leitos de UTI Adulto" }] 
  },
  { 
    id: "UTI Neonatal", 
    name: "UTI Neonatal", 
    desc: "Unidade de Terapia Intensiva Neonatal", 
    params: [{ name: "leitos", label: "Número de Leitos de UTI Neonatal" }] 
  },
  { 
    id: "UTI Pediátrica", 
    name: "UTI Pediátrica", 
    desc: "Unidade de Terapia Intensiva Pediátrica", 
    params: [{ name: "leitos", label: "Número de Leitos de UTI Pediátrica" }] 
  },
  { 
    id: "Centro Cirúrgico", 
    name: "Centro Cirúrgico", 
    desc: "Salas cirúrgicas de alta/média complexidade", 
    params: [
      { name: "salas_cirurgicas", label: "Número de Salas Cirúrgicas" }, 
      { name: "salas_recuperacao", label: "Número de Leitos de Recuperação (RPA)" }
    ] 
  },
  { 
    id: "Centro Obstetrico", 
    name: "Centro Obstétrico", 
    desc: "Salas de parto e assistência obstétrica", 
    params: [{ name: "salas_parto", label: "Número de Salas de Parto" }] 
  },
  { 
    id: "Pronto-Socorro", 
    name: "Pronto-Socorro", 
    desc: "Serviço de urgência/emergência e triagem", 
    params: [{ name: "boxes_emergencia", label: "Número de Boxes de Emergência" }] 
  },
  { 
    id: "Internação", 
    name: "Unidade de Internação", 
    desc: "Acomodações e leitos gerais de enfermaria", 
    params: [{ name: "leitos", label: "Número de Leitos de Internação" }] 
  },
  { 
    id: "CME", 
    name: "CME", 
    desc: "Central de Material e Esterilização", 
    params: [{ name: "salas", label: "Número de Salas CME" }] 
  },
  { 
    id: "Diagnóstico por Imagem", 
    name: "Diagnóstico por Imagem", 
    desc: "Salas de RX, TC, RM, Ultrassom e Mamografia", 
    params: [
      { name: "salas_rx", label: "Número de Salas de Raio-X (RX)" },
      { name: "salas_tc", label: "Número de Salas de Tomografia (CT)" },
      { name: "salas_rm", label: "Número de Salas de Ressonância (MR)" },
      { name: "salas_usg", label: "Número de Salas de Ultrassom (USG)" },
      { name: "salas_mamografia", label: "Número de Salas de Mamografia" }
    ] 
  }
];

// Dados Mockados de Fallback (Se o Supabase não estiver conectado, o usuário ainda pode testar o sistema localmente)
export const FALLBACK_EQUIPMENT = [
  { code: "MON001", name: "Monitor Multiparamétrico", category: "Monitorização", subcategory: "Sinais Vitais", min_price: 12000, avg_price: 18000, max_price: 25000, unit: "Unidade", status: "Ativo" },
  { code: "VEN001", name: "Ventilador Pulmonar de UTI", category: "Suporte de Vida", subcategory: "Ventilação Mecânica", min_price: 75000, avg_price: 95000, max_price: 130000, unit: "Unidade", status: "Ativo" },
  { code: "ANE001", name: "Aparelho de Anestesia (Estação de Trabalho)", category: "Suporte de Vida", subcategory: "Anestesia", min_price: 95000, avg_price: 140000, max_price: 190000, unit: "Unidade", status: "Ativo" },
  { code: "DES001", name: "Desfibrilador Cardioversor", category: "Suporte de Vida", subcategory: "Reanimação", min_price: 15000, avg_price: 22000, max_price: 32000, unit: "Unidade", status: "Ativo" },
  { code: "BOM001", name: "Bomba de Infusão Volumétrica", category: "Suporte de Vida", subcategory: "Infusão", min_price: 3500, avg_price: 5500, max_price: 8000, unit: "Unidade", status: "Ativo" },
  { code: "MES001", name: "Mesa Cirúrgica Elétrica", category: "Cirúrgico", subcategory: "Infraestrutura", min_price: 45000, avg_price: 65000, max_price: 95000, unit: "Unidade", status: "Ativo" },
  { code: "FOC001", name: "Foco Cirúrgico de LED", category: "Cirúrgico", subcategory: "Infraestrutura", min_price: 20000, avg_price: 38000, max_price: 55000, unit: "Unidade", status: "Ativo" },
  { code: "BIS001", name: "Bisturi Eletrônico Monopolar/Bipolar", category: "Cirúrgico", subcategory: "Corte e Coagulação", min_price: 12000, avg_price: 18000, max_price: 28000, unit: "Unidade", status: "Ativo" },
  { code: "CAR001", name: "Carro de Emergência Equipado", category: "Apoio", subcategory: "Urgência", min_price: 3000, avg_price: 4500, max_price: 6000, unit: "Unidade", status: "Ativo" },
  { code: "AUT001", name: "Autoclave Horizontal a Vapor (Barreira)", category: "Esterilização", subcategory: "Processamento", min_price: 85000, avg_price: 130000, max_price: 210000, unit: "Unidade", status: "Ativo" },
  { code: "ECG001", name: "Eletrocardiógrafo Portátil", category: "Diagnóstico", subcategory: "Cardiologia", min_price: 6000, avg_price: 8500, max_price: 12000, unit: "Unidade", status: "Ativo" },
  { code: "RAI001", name: "Aparelho de Raio-X Fixo Digital", category: "Diagnóstico", subcategory: "Radiologia", min_price: 180000, avg_price: 260000, max_price: 380000, unit: "Unidade", status: "Ativo" },
  { code: "TOM001", name: "Tomógrafo Computadorizado (64 Canais)", category: "Diagnóstico", subcategory: "Tomografia", min_price: 1200000, avg_price: 1800000, max_price: 2500000, unit: "Unidade", status: "Ativo" },
  { code: "RES001", name: "Ressonância Magnética (1.5 Tesla)", category: "Diagnóstico", subcategory: "Ressonância", min_price: 3500000, avg_price: 4800000, max_price: 6200000, unit: "Unidade", status: "Ativo" },
  { code: "USG001", name: "Ecógrafo / Ultrassom Diagnóstico", category: "Diagnóstico", subcategory: "Ultrassonografia", min_price: 75000, avg_price: 120000, max_price: 180000, unit: "Unidade", status: "Ativo" },
  { code: "INC001", name: "Incubadora Neonatal Intensiva", category: "Suporte de Vida", subcategory: "Pediatria", min_price: 35000, avg_price: 50000, max_price: 70000, unit: "Unidade", status: "Ativo" },
  { code: "FOT001", name: "Aparelho de Fototerapia de LED", category: "Suporte de Vida", subcategory: "Pediatria", min_price: 8000, avg_price: 12000, max_price: 18000, unit: "Unidade", status: "Ativo" },
  { code: "GAS001", name: "Videoendoscópio Digestivo", category: "Diagnóstico", subcategory: "Endoscopia", min_price: 12000, avg_price: 180000, max_price: 260000, unit: "Unidade", status: "Ativo" },
  { code: "TER001", name: "Termodesinfectadora Horizontal", category: "Esterilização", subcategory: "Processamento", min_price: 65000, avg_price: 95000, max_price: 140000, unit: "Unidade", status: "Ativo" },
  { code: "MAM001", name: "Mamógrafo Digital Direto", category: "Diagnóstico", subcategory: "Mamografia", min_price: 250000, avg_price: 380000, max_price: 520000, unit: "Unidade", status: "Ativo" }
];

export const FALLBACK_RULES = [
  { id: "RULE001", name: "UTI Adulto - Monitor", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "MON001", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Monitor individual por leito crítico (monitoramento vital contínuo).", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE002", name: "UTI Adulto - Ventilador", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "VEN001", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0.20, classification: "Obrigatório", justification: "Ventilador pulmonar mecânico individual (reserva técnica recomendada de 20%).", normative_reference: "RDC 7 Anvisa / RDC 50", active: true },
  { id: "RULE003", name: "UTI Adulto - Bomba Infusão", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "BOM001", calculation_type: "per_parameter", formula_factor: 3, reserve_factor: 0.10, classification: "Obrigatório", justification: "Mínimo 3 bombas de infusão por leito para medicação de alta precisão.", normative_reference: "RDC 7 Anvisa / RDC 50", active: true },
  { id: "RULE004", name: "UTI Adulto - Desfibrilador", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "DES001", calculation_type: "rounded_ratio", formula_factor: 10, reserve_factor: 0, classification: "Obrigatório", justification: "Desfibrilador cardioversor de emergência (1 por 10 leitos ou fração).", normative_reference: "RDC 7 Anvisa / RDC 50", active: true },
  { id: "RULE005", name: "UTI Adulto - ECG", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "ECG001", calculation_type: "fixed", formula_factor: 1, reserve_factor: 0, classification: "Recomendado", justification: "Eletrocardiógrafo dedicado ao setor para traçado diagnóstico rápido.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE006", name: "UTI Adulto - Carro Parada", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "CAR001", calculation_type: "rounded_ratio", formula_factor: 10, reserve_factor: 0, classification: "Obrigatório", justification: "Carro de parada cardiorrespiratória estruturado. Mínimo 1 por 10 leitos.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE007", name: "Centro Cirúrgico - Mesa Cirúrgica", sector: "Centro Cirúrgico", parameter: "salas_cirurgicas", operator: ">", value: 0, equipment_code: "MES001", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Mesa cirúrgica principal por sala operatória.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE008", name: "Centro Cirúrgico - Foco Cirúrgico", sector: "Centro Cirúrgico", parameter: "salas_cirurgicas", operator: ">", value: 0, equipment_code: "FOC001", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Foco de teto LED de alta intensidade para área operatória.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE009", name: "Centro Cirúrgico - Anestesia", sector: "Centro Cirúrgico", parameter: "salas_cirurgicas", operator: ">", value: 0, equipment_code: "ANE001", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Estação de trabalho de anestesia dedicada por sala.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE010", name: "Centro Cirúrgico - Bisturi", sector: "Centro Cirúrgico", parameter: "salas_cirurgicas", operator: ">", value: 0, equipment_code: "BIS001", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0.10, classification: "Obrigatório", justification: "Bisturi elétrico por sala de cirurgia (fator de 10% de reserva técnica).", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE011", name: "Centro Cirúrgico - Monitor", sector: "Centro Cirúrgico", parameter: "salas_cirurgicas", operator: ">", value: 0, equipment_code: "MON001", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Monitor multiparamétrico com canais de anestesia por sala.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE012", name: "Centro Cirúrgico - Recuperação Monitor", sector: "Centro Cirúrgico", parameter: "salas_recuperacao", operator: ">", value: 0, equipment_code: "MON001", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Monitor por leito de recuperação pós-anestésica (RPA).", normative_reference: "RDC 50 Anvisa", active: true }
];
