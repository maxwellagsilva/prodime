import React from 'react';
import { 
  FileText, 
  Settings, 
  Sliders, 
  DollarSign, 
  Plus, 
  ArrowRight,
  TrendingUp,
  BookOpen,
  ClipboardList,
  Shield,
  HelpCircle,
  FolderOpen,
  Activity,
  Layers,
  BarChart2,
  PieChart as PieChartIcon
} from 'lucide-react';
import { 
  BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip as RechartsTooltip, ResponsiveContainer, 
  PieChart, Pie, Cell, Legend 
} from 'recharts';

export default function Dashboard({ 
  stats, 
  onStartNewProject, 
  onNavigate,
  projects = [],
  userProfile = null,
  onOpenProject
}) {
  
  const formatBRL = (val) => {
    return new Intl.NumberFormat('pt-BR', { style: 'currency', currency: 'BRL' }).format(val);
  };

  const hasProjects = projects && projects.length > 0;
  const isAdmin = userProfile?.role === 'Admin';

  // Calculate base metrics
  let totalSectorsAnalyzed = 0;
  
  // Advanced Chart Metrics
  const estTypeMap = {};
  const profileMap = {};
  const projTypeMap = {};
  const equipmentMap = {};

  projects.forEach(p => {
    if (p.sectors) {
      totalSectorsAnalyzed += p.sectors.length;
    }

    const t = p.establishment_type || 'Outros';
    estTypeMap[t] = (estTypeMap[t] || 0) + 1;

    const pr = p.profile || 'Outros';
    profileMap[pr] = (profileMap[pr] || 0) + 1;

    const pt = p.project_type || 'Outros';
    projTypeMap[pt] = (projTypeMap[pt] || 0) + 1;

    if (p.results) {
      // To prevent counting the same equipment multiple times per project, we track seen codes
      const seenInProj = new Set();
      p.results.forEach(r => {
        const qty = (r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) ? r.quantity_adjusted : r.quantity_recommended;
        if (qty > 0) {
          const code = r.equipment_code;
          if (!equipmentMap[code]) {
            equipmentMap[code] = {
              name: r.equipment_name || 'Equipamento',
              code: code,
              count: 0,
              totalValue: 0
            };
          }
          if (!seenInProj.has(code)) {
            equipmentMap[code].count += 1;
            equipmentMap[code].totalValue += (r.avg_price || 0);
            seenInProj.add(code);
          }
        }
      });
    }
  });
  
  let topEstablishment = { name: '-', count: 0, pct: 0 };
  if (projects.length > 0) {
    for (const [name, count] of Object.entries(estTypeMap)) {
      if (count > topEstablishment.count) {
        topEstablishment = { name, count, pct: Math.round((count / projects.length) * 100) };
      }
    }
  }

  const chartDataEstType = Object.entries(estTypeMap)
    .map(([name, value]) => ({ name, value }))
    .sort((a,b) => b.value - a.value);

  const chartDataProfile = Object.entries(profileMap)
    .map(([name, value]) => ({ name, value }));

  const chartDataProjType = Object.entries(projTypeMap)
    .map(([name, value]) => ({ name, value }));
  
  const topEquipment = Object.values(equipmentMap)
    .map(e => ({
      ...e,
      avgPrice: e.totalValue / e.count
    }))
    .sort((a, b) => b.count - a.count)
    .slice(0, 8); // top 8

  const COLORS = ['#1e6d46', '#22c55e', '#3b82f6', '#f59e0b', '#8b5cf6', '#ec4899', '#64748b'];

  if (!hasProjects) {
    return (
      <div className="tab-section active">
        {/* Onboarding Hero Section */}
        <div style={{ textAlign: 'center', padding: '16px 20px', maxWidth: '800px', margin: '0 auto 20px auto', display: 'flex', flexDirection: 'column', alignItems: 'center', gap: '16px' }}>
          <div style={{ width: '48px', height: '48px', borderRadius: '50%', backgroundColor: 'var(--primary-light)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', boxShadow: '0 2px 6px rgba(30, 109, 70, 0.05)' }}>
            <TrendingUp size={24} />
          </div>
          <h2 style={{ fontFamily: 'var(--font-display)', fontSize: '1.6rem', fontWeight: 800, color: 'var(--secondary)', letterSpacing: '-0.5px', margin: 0 }}>Crie sua primeira estimativa de equipamentos</h2>
          <p style={{ color: 'var(--secondary-light)', fontSize: '0.95rem', lineHeight: '1.5', maxWidth: '640px', margin: 0 }}>
            O PRODIME ajuda a estimar quantitativos de equipamentos médico-hospitalares e valores referenciais de investimento com base nos ambientes, setores e parâmetros que você informar.
          </p>
          <button className="btn btn-primary" style={{ padding: '10px 24px', fontSize: '0.9rem', marginTop: '4px' }} onClick={onStartNewProject}>
            Criar Primeira Estimativa <ArrowRight size={16} style={{ marginLeft: '6px' }} />
          </button>
        </div>

        {/* 3-Step Simple Guide */}
        <div style={{ maxWidth: '1000px', margin: '0 auto' }}>
          <h3 style={{ fontFamily: 'var(--font-display)', fontSize: '1.1rem', color: 'var(--secondary)', marginBottom: '16px', textAlign: 'center', fontWeight: 800, letterSpacing: '-0.25px' }}>
            Como funciona em 3 etapas simples:
          </h3>
          <div className="onboarding-steps-grid">
            <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '12px', padding: '20px', alignItems: 'flex-start' }}>
              <div style={{ width: '36px', height: '36px', borderRadius: '50%', backgroundColor: 'var(--primary-light)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: 800, fontSize: '0.95rem' }}>
                1
              </div>
              <h4 style={{ fontWeight: 800, color: 'var(--secondary)', fontFamily: 'var(--font-display)', fontSize: '1.05rem', letterSpacing: '-0.25px', margin: 0 }}>Identificação e Cadastro</h4>
              <p style={{ fontSize: '0.82rem', color: 'var(--secondary-light)', lineHeight: '1.5', margin: 0 }}>
                Informe os dados gerais da estimativa, como nome do projeto, tipo de estabelecimento e responsável técnico.
              </p>
            </div>

            <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '12px', padding: '20px', alignItems: 'flex-start' }}>
              <div style={{ width: '36px', height: '36px', borderRadius: '50%', backgroundColor: 'var(--primary-light)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: 800, fontSize: '0.95rem' }}>
                2
              </div>
              <h4 style={{ fontWeight: 800, color: 'var(--secondary)', fontFamily: 'var(--font-display)', fontSize: '1.05rem', letterSpacing: '-0.25px', margin: 0 }}>Ambientes e Parâmetros</h4>
              <p style={{ fontSize: '0.82rem', color: 'var(--secondary-light)', lineHeight: '1.5', margin: 0 }}>
                Selecione as áreas assistenciais (UTI, CME, Diagnóstico, etc.) e informe as capacidades operacionais (leitos, salas ou boxes).
              </p>
            </div>

            <div className="card-premium" style={{ display: 'flex', flexDirection: 'column', gap: '12px', padding: '20px', alignItems: 'flex-start' }}>
              <div style={{ width: '36px', height: '36px', borderRadius: '50%', backgroundColor: 'var(--primary-light)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center', fontWeight: 800, fontSize: '0.95rem' }}>
                3
              </div>
              <h4 style={{ fontWeight: 800, color: 'var(--secondary)', fontFamily: 'var(--font-display)', fontSize: '1.05rem', letterSpacing: '-0.25px', margin: 0 }}>Análise e Relatório</h4>
              <p style={{ fontSize: '0.82rem', color: 'var(--secondary-light)', lineHeight: '1.5', margin: 0 }}>
                Revise os equipamentos calculados, realize ajustes justificados nas quantidades finais e exporte o relatório técnico-financeiro.
              </p>
            </div>
          </div>
        </div>
      </div>
    );
  }

  // Custom label for Donut charts
  const renderCustomizedLabel = ({ cx, cy, midAngle, innerRadius, outerRadius, percent }) => {
    const radius = innerRadius + (outerRadius - innerRadius) * 0.5;
    const x = cx + radius * Math.cos(-midAngle * Math.PI / 180);
    const y = cy + radius * Math.sin(-midAngle * Math.PI / 180);
    if (percent < 0.05) return null;
    return (
      <text x={x} y={y} fill="white" textAnchor="middle" dominantBaseline="central" fontSize="12" fontWeight="bold">
        {`${(percent * 100).toFixed(0)}%`}
      </text>
    );
  };

  return (
    <div className="tab-section active">
      {/* Statistics Grid */}
      <div className="dashboard-grid" style={{ '--cols-count': 4, marginBottom: '24px' }}>
        <div className="card-premium stats-card stat-projects" style={{ display: 'flex', alignItems: 'center', gap: '20px', padding: '24px' }}>
          <div className="stats-icon-wrapper" style={{ width: '56px', height: '56px', borderRadius: '16px', display: 'flex', alignItems: 'center', justifyContent: 'center', backgroundColor: '#eef2ff', color: '#4f46e5' }}>
            <FileText size={24} />
          </div>
          <div className="stats-info" style={{ display: 'flex', flexDirection: 'column' }}>
            <span className="stats-value" style={{ fontSize: '1.8rem', fontWeight: 800, fontFamily: 'var(--font-display)', color: 'var(--secondary)' }}>{projects.length}</span>
            <span className="stats-label" style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', fontWeight: 500 }}>Estimativas Analisadas</span>
          </div>
        </div>
        
        <div className="card-premium stats-card stat-investment" style={{ display: 'flex', alignItems: 'center', gap: '20px', padding: '24px' }}>
          <div className="stats-icon-wrapper" style={{ width: '56px', height: '56px', borderRadius: '16px', display: 'flex', alignItems: 'center', justifyContent: 'center', backgroundColor: 'var(--primary-light)', color: 'var(--primary)' }}>
            <DollarSign size={24} />
          </div>
          <div className="stats-info" style={{ display: 'flex', flexDirection: 'column' }}>
            <span className="stats-value" style={{ fontSize: '1.8rem', fontWeight: 800, fontFamily: 'var(--font-display)', color: 'var(--secondary)' }}>{formatBRL(stats.totalInvestment || 0)}</span>
            <span className="stats-label" style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', fontWeight: 500 }}>Investimento Total Estimado</span>
          </div>
        </div>

        <div className="card-premium stats-card stat-eq" style={{ display: 'flex', alignItems: 'center', gap: '20px', padding: '24px' }}>
          <div className="stats-icon-wrapper" style={{ width: '56px', height: '56px', borderRadius: '16px', display: 'flex', alignItems: 'center', justifyContent: 'center', backgroundColor: '#fff7ed', color: '#ea580c' }}>
            <Activity size={24} />
          </div>
          <div className="stats-info" style={{ display: 'flex', flexDirection: 'column' }}>
            <span className="stats-value" style={{ fontSize: '1.8rem', fontWeight: 800, fontFamily: 'var(--font-display)', color: 'var(--secondary)' }}>{topEstablishment.pct}%</span>
            <span className="stats-label" style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', fontWeight: 500 }}>Perfil: {topEstablishment.name}</span>
          </div>
        </div>
        
        <div className="card-premium stats-card stat-rules" style={{ display: 'flex', alignItems: 'center', gap: '20px', padding: '24px' }}>
          <div className="stats-icon-wrapper" style={{ width: '56px', height: '56px', borderRadius: '16px', display: 'flex', alignItems: 'center', justifyContent: 'center', backgroundColor: '#fdf2f8', color: '#db2777' }}>
            <Layers size={24} />
          </div>
          <div className="stats-info" style={{ display: 'flex', flexDirection: 'column' }}>
            <span className="stats-value" style={{ fontSize: '1.8rem', fontWeight: 800, fontFamily: 'var(--font-display)', color: 'var(--secondary)' }}>{totalSectorsAnalyzed}</span>
            <span className="stats-label" style={{ fontSize: '0.85rem', color: 'var(--secondary-light)', fontWeight: 500 }}>Setores Analisados</span>
          </div>
        </div>
      </div>
      
      {/* Charts Section */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(3, 1fr)', gap: '24px', marginBottom: '24px' }}>
        {/* Bar Chart: Estabelecimento */}
        <div className="card-premium" style={{ padding: '24px', display: 'flex', flexDirection: 'column', height: '340px' }}>
          <h2 className="card-title" style={{ display: 'flex', alignItems: 'center', gap: '10px', fontSize: '1.1rem', fontFamily: 'var(--font-display)', fontWeight: 700, marginBottom: '20px' }}>
            <BarChart2 size={20} style={{ color: 'var(--primary)' }} /> Volume por Tipo de Estabelecimento
          </h2>
          <div style={{ flex: 1, minHeight: 0 }}>
            <ResponsiveContainer width="100%" height="100%">
              <BarChart data={chartDataEstType} margin={{ top: 10, right: 10, left: -20, bottom: 5 }}>
                <CartesianGrid strokeDasharray="3 3" vertical={false} stroke="#e2e8f0" />
                <XAxis dataKey="name" stroke="#64748b" fontSize={11} tickLine={false} axisLine={false} />
                <YAxis type="number" allowDecimals={false} stroke="#64748b" fontSize={11} tickLine={false} axisLine={false} />
                <RechartsTooltip cursor={{fill: '#f1f5f9'}} contentStyle={{borderRadius: '8px', border: 'none', boxShadow: '0 4px 12px rgba(0,0,0,0.1)'}} />
                <Bar dataKey="value" name="Projetos" fill="var(--primary)" radius={[4, 4, 0, 0]} barSize={32} />
              </BarChart>
            </ResponsiveContainer>
          </div>
        </div>

        {/* Donut Charts: Profile */}
        <div className="card-premium" style={{ padding: '24px', display: 'flex', flexDirection: 'column', height: '340px' }}>
          <h2 className="card-title" style={{ display: 'flex', alignItems: 'center', gap: '10px', fontSize: '1.1rem', fontFamily: 'var(--font-display)', fontWeight: 700, marginBottom: '10px' }}>
            <PieChartIcon size={20} style={{ color: 'var(--primary)' }} /> Perfis Administrativos
          </h2>
          <div style={{ flex: 1, minHeight: 0, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
            <ResponsiveContainer width="100%" height="100%">
              <PieChart>
                <Pie
                  data={chartDataProfile}
                  cx="50%"
                  cy="50%"
                  innerRadius={60}
                  outerRadius={90}
                  paddingAngle={2}
                  dataKey="value"
                  labelLine={false}
                  label={renderCustomizedLabel}
                >
                  {chartDataProfile.map((entry, index) => (
                    <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                  ))}
                </Pie>
                <RechartsTooltip contentStyle={{borderRadius: '8px', border: 'none', boxShadow: '0 4px 12px rgba(0,0,0,0.1)'}} />
                <Legend verticalAlign="bottom" align="center" layout="horizontal" iconType="circle" wrapperStyle={{fontSize: '12px', paddingTop: '16px'}} />
              </PieChart>
            </ResponsiveContainer>
          </div>
        </div>

        {/* Donut Charts: Project Type */}
        <div className="card-premium" style={{ padding: '24px', display: 'flex', flexDirection: 'column', height: '340px' }}>
          <h2 className="card-title" style={{ display: 'flex', alignItems: 'center', gap: '10px', fontSize: '1.1rem', fontFamily: 'var(--font-display)', fontWeight: 700, marginBottom: '10px' }}>
            <PieChartIcon size={20} style={{ color: 'var(--primary)' }} /> Tipos de Projeto
          </h2>
          <div style={{ flex: 1, minHeight: 0, display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
            <ResponsiveContainer width="100%" height="100%">
              <PieChart>
                <Pie
                  data={chartDataProjType}
                  cx="50%"
                  cy="50%"
                  innerRadius={60}
                  outerRadius={90}
                  paddingAngle={2}
                  dataKey="value"
                  labelLine={false}
                  label={renderCustomizedLabel}
                >
                  {chartDataProjType.map((entry, index) => (
                    <Cell key={`cell-${index}`} fill={COLORS[(index + 2) % COLORS.length]} />
                  ))}
                </Pie>
                <RechartsTooltip contentStyle={{borderRadius: '8px', border: 'none', boxShadow: '0 4px 12px rgba(0,0,0,0.1)'}} />
                <Legend verticalAlign="bottom" align="center" layout="horizontal" iconType="circle" wrapperStyle={{fontSize: '12px', paddingTop: '16px'}} />
              </PieChart>
            </ResponsiveContainer>
          </div>
        </div>
      </div>

    </div>
  );
}
