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
  { code: "10985", name: "Monitor Multiparamétrico", category: "Médico Assistencial", min_price: 14400, avg_price: 18000, max_price: 21600, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Sim" },
  { code: "11425", name: "Ventilador Pulmonar de UTI", category: "Médico Assistencial", min_price: 76000, avg_price: 95000, max_price: 114000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Oxigênio / Ar Comprimido / Vácuo", infra_climatization: "Sim" },
  { code: "10927", name: "Aparelho de Anestesia (Estação de Trabalho)", category: "Médico Assistencial", min_price: 112000, avg_price: 140000, max_price: 168000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "O2 / Ar Comprimido / Óxido Nitroso / Vácuo", infra_climatization: "Sim" },
  { code: "11233", name: "Desfibrilador Cardioversor", category: "Médico Assistencial", min_price: 17600, avg_price: 22000, max_price: 26400, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Não" },
  { code: "407", name: "Bomba de Infusão Volumétrica", category: "Médico Assistencial", min_price: 4400, avg_price: 5500, max_price: 6600, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Não" },
  { code: "2174", name: "Mesa Cirúrgica Elétrica", category: "Médico Assistencial", min_price: 52000, avg_price: 65000, max_price: 78000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Não" },
  { code: "3020", name: "Foco Cirúrgico de LED", category: "Médico Assistencial", min_price: 30400, avg_price: 38000, max_price: 45600, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Não" },
  { code: "10989", name: "Bisturi Eletrônico Monopolar/Bipolar", category: "Médico Assistencial", min_price: 14400, avg_price: 18000, max_price: 21600, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Não" },
  { code: "10798", name: "Carro de Emergência Equipado", category: "Médico Assistencial", min_price: 3600, avg_price: 4500, max_price: 5400, unit: "Unidade", status: "Ativo", infra_electricity: "Não", infra_water: "Não", infra_gases: "Não", infra_climatization: "Não" },
  { code: "10892", name: "Autoclave Horizontal a Vapor (Barreira)", category: "Médico Assistencial", min_price: 104000, avg_price: 130000, max_price: 156000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Sim", infra_gases: "Não", infra_climatization: "Não" },
  { code: "451", name: "Eletrocardiógrafo Portátil", category: "Médico Assistencial", min_price: 6800, avg_price: 8500, max_price: 10200, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Não" },
  { code: "10883", name: "Aparelho de Raio-X Fixo Digital", category: "Médico Assistencial", min_price: 208000, avg_price: 260000, max_price: 312000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Sim" },
  { code: "11805", name: "Tomógrafo Computadorizado", category: "Médico Assistencial", min_price: 1440000, avg_price: 1800000, max_price: 2160000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Sim" },
  { code: "10889", name: "Ressonância Magnética", category: "Médico Assistencial", min_price: 3840000, avg_price: 4800000, max_price: 5760000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Sim" },
  { code: "11422", name: "Ecógrafo / Ultrassom Diagnóstico", category: "Médico Assistencial", min_price: 96000, avg_price: 120000, max_price: 144000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Sim" },
  { code: "537", name: "Incubadora Neonatal Intensiva", category: "Médico Assistencial", min_price: 40000, avg_price: 50000, max_price: 60000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Sim" },
  { code: "321", name: "Aparelho de Fototerapia de LED", category: "Médico Assistencial", min_price: 9600, avg_price: 12000, max_price: 14400, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Não" },
  { code: "10714", name: "Videoendoscópio Digestivo", category: "Médico Assistencial", min_price: 144000, avg_price: 180000, max_price: 216000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Sim" },
  { code: "10548", name: "Termodesinfectadora Horizontal", category: "Médico Assistencial", min_price: 76000, avg_price: 95000, max_price: 114000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Sim", infra_gases: "Não", infra_climatization: "Não" },
  { code: "10925", name: "Mamógrafo Digital Direto", category: "Médico Assistencial", min_price: 304000, avg_price: 380000, max_price: 456000, unit: "Unidade", status: "Ativo", infra_electricity: "Sim", infra_water: "Não", infra_gases: "Não", infra_climatization: "Sim" }
];

export const FALLBACK_RULES = [
  { id: "RULE001", name: "UTI Adulto - Monitor", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "10985", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Monitor individual por leito crítico (monitoramento vital contínuo).", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE002", name: "UTI Adulto - Ventilador", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "11425", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0.20, classification: "Obrigatório", justification: "Ventilador pulmonar mecânico individual (reserva técnica recomendada de 20%).", normative_reference: "RDC 7 Anvisa / RDC 50", active: true },
  { id: "RULE003", name: "UTI Adulto - Bomba Infusão", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "407", calculation_type: "per_parameter", formula_factor: 3, reserve_factor: 0.10, classification: "Obrigatório", justification: "Mínimo 3 bombas de infusão por leito para medicação de alta precisão.", normative_reference: "RDC 7 Anvisa / RDC 50", active: true },
  { id: "RULE004", name: "UTI Adulto - Desfibrilador", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "11233", calculation_type: "rounded_ratio", formula_factor: 10, reserve_factor: 0, classification: "Obrigatório", justification: "Desfibrilador cardioversor de emergência (1 por 10 leitos ou fração).", normative_reference: "RDC 7 Anvisa / RDC 50", active: true },
  { id: "RULE005", name: "UTI Adulto - ECG", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "451", calculation_type: "fixed", formula_factor: 1, reserve_factor: 0, classification: "Recomendado", justification: "Eletrocardiógrafo dedicado ao setor para traçado diagnóstico rápido.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE006", name: "UTI Adulto - Carro Parada", sector: "UTI Adulto", parameter: "leitos", operator: ">", value: 0, equipment_code: "10798", calculation_type: "rounded_ratio", formula_factor: 10, reserve_factor: 0, classification: "Obrigatório", justification: "Carro de parada cardiorrespiratória estruturado. Mínimo 1 por 10 leitos.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE007", name: "Centro Cirúrgico - Mesa Cirúrgica", sector: "Centro Cirúrgico", parameter: "salas_cirurgicas", operator: ">", value: 0, equipment_code: "2174", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Mesa cirúrgica principal por sala operatória.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE008", name: "Centro Cirúrgico - Foco Cirúrgico", sector: "Centro Cirúrgico", parameter: "salas_cirurgicas", operator: ">", value: 0, equipment_code: "3020", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Foco de teto LED de alta intensidade para área operatória.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE009", name: "Centro Cirúrgico - Anestesia", sector: "Centro Cirúrgico", parameter: "salas_cirurgicas", operator: ">", value: 0, equipment_code: "10927", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Estação de trabalho de anestesia dedicada por sala.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE010", name: "Centro Cirúrgico - Bisturi", sector: "Centro Cirúrgico", parameter: "salas_cirurgicas", operator: ">", value: 0, equipment_code: "10989", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0.10, classification: "Obrigatório", justification: "Bisturi elétrico por sala de cirurgia (fator de 10% de reserva técnica).", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE011", name: "Centro Cirúrgico - Monitor", sector: "Centro Cirúrgico", parameter: "salas_cirurgicas", operator: ">", value: 0, equipment_code: "10985", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Monitor multiparamétrico com canais de anestesia por sala.", normative_reference: "RDC 50 Anvisa", active: true },
  { id: "RULE012", name: "Centro Cirúrgico - Recuperação Monitor", sector: "Centro Cirúrgico", parameter: "salas_recuperacao", operator: ">", value: 0, equipment_code: "10985", calculation_type: "per_parameter", formula_factor: 1, reserve_factor: 0, classification: "Obrigatório", justification: "Monitor por leito de recuperação pós-anestésica (RPA).", normative_reference: "RDC 50 Anvisa", active: true }
];
