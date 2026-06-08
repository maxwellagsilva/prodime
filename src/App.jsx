import React, { useState, useEffect } from 'react';
import { 
  Activity, 
  FileText, 
  Settings, 
  Sliders, 
  Clock, 
  Users, 
  BookOpen,
  LayoutDashboard,
  LogIn,
  LogOut,
  Menu,
  X,
  User,
  Plus,
  Shield,
  HelpCircle
} from 'lucide-react';

import supabase from './supabaseClient';
import LandingPage from './components/LandingPage';
import Dashboard from './components/Dashboard';
import ProjectWizard from './components/ProjectWizard';
import Manual from './components/Manual';
import AdminPanel from './components/AdminPanel';
import HelpView from './components/HelpView';
import PrivacyPolicy from './components/PrivacyPolicy';
import TermsOfUse from './components/TermsOfUse';
import { FALLBACK_EQUIPMENT, FALLBACK_RULES, FALLBACK_SECTOR_COMPATIBILITY } from './utils/constants';

const getInitialView = () => {
  if (typeof window === 'undefined') return 'landing';
  const hostname = window.location.hostname;
  if (hostname.includes('app.prodime.com.br')) {
    return 'app';
  }
  if (window.location.pathname.startsWith('/app')) {
    return 'app';
  }
  return 'landing';
};

export default function App() {
  const [view, setView] = useState(getInitialView);
  const [tab, setTab] = useState('dashboard'); // 'dashboard' | 'projects' | 'project-wizard' | 'manual' | 'admin'
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  // Auth States
  const [user, setUser] = useState(null);
  const [profile, setProfile] = useState(null);
  const [authModalOpen, setAuthModalOpen] = useState(false);

  // Core Data States
  const [projects, setProjects] = useState([]);
  const [equipment, setEquipment] = useState(FALLBACK_EQUIPMENT);
  const [rules, setRules] = useState(FALLBACK_RULES);
  const [sectorCompatibility, setSectorCompatibility] = useState(FALLBACK_SECTOR_COMPATIBILITY);
  const [adminUsers, setAdminUsers] = useState([]);
  
  // Dashboard Stats
  const [stats, setStats] = useState({
    totalProjects: 0,
    totalEquipment: 0,
    totalRules: 0,
    totalInvestment: 0
  });

  // Wizard active editing project
  const [editingProject, setEditingProject] = useState(null);
  const [editingProjectStep, setEditingProjectStep] = useState(null);
  const [currentWizardStep, setCurrentWizardStep] = useState(0);

  // Ref for auth state to avoid stale closure
  const currentUserIdRef = React.useRef(null);

  // Loading & Toast Notification
  const [loading, setLoading] = useState(false);
  const [loadingText, setLoadingText] = useState('');
  const [toast, setToast] = useState(null);

  // Toast Helper
  const showToast = (message, type = 'success') => {
    setToast({ message, type });
    setTimeout(() => setToast(null), 4000);
  };

  // Toggle body class 'app-active' to lock viewport scroll when in system view
  useEffect(() => {
    const isApp = view !== 'landing' && view !== 'privacy-policy' && view !== 'terms-of-use';
    if (isApp) {
      document.body.classList.add('app-active');
    } else {
      document.body.classList.remove('app-active');
    }
    return () => {
      document.body.classList.remove('app-active');
    };
  }, [view]);

  // Monitor Supabase Auth state change
  useEffect(() => {
    const hostname = window.location.hostname;
    // Se o usuário acessar a rota /app diretamente ou via subdomínio, ativa a view do aplicativo
    if (hostname.includes('app.prodime.com.br') || window.location.pathname.startsWith('/app')) {
      setView('app');
    }

    if (!supabase) return;

    // Check current session
    supabase.auth.getSession().then(({ data: { session } }) => {
      if (session) {
        currentUserIdRef.current = session.user.id;
        setUser(session.user);
        fetchUserProfile(session.user, true);
        setView('app');
      } else {
        currentUserIdRef.current = null;
        loadLocalProjects();
      }
    });

    const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === 'PASSWORD_RECOVERY') {
        showToast('A recuperação por senha está desativada. Acesse usando sua conta Google.', 'info');
      } else if (session) {
        // Only fetch profile and show toast if the user changed
        if (currentUserIdRef.current !== session.user.id) {
          currentUserIdRef.current = session.user.id;
          setUser(session.user);
          fetchUserProfile(session.user, true);
        } else {
          // Token refresh or same user, just ensure state is up to date silently
          setUser(session.user);
        }
        setView('app');
      } else {
        currentUserIdRef.current = null;
        setUser(null);
        setProfile(null);
        isInitialLoadRef.current = true;
        loadLocalProjects();
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  // Handle production domain routing redirects
  useEffect(() => {
    const hostname = window.location.hostname;
    const isLocalhost = hostname === 'localhost' || hostname === '127.0.0.1' || hostname.startsWith('192.168.') || hostname.includes('.local');
    
    if (!isLocalhost) {
      if (view === 'landing' && hostname.includes('app.prodime.com.br')) {
        // Se estiver no subdomínio do app mas na landing page, redireciona para o site principal
        window.location.href = 'https://prodime.com.br';
      } else if (view === 'app' && !hostname.includes('app.prodime.com.br')) {
        // Se estiver no site principal mas acessar o app, redireciona para o subdomínio do app
        window.location.href = 'https://app.prodime.com.br';
      }
    }
  }, [view]);

  // Ref to track if it's initial load for toast
  const isInitialLoadRef = React.useRef(true);

  // Fetch profiles table data
  const fetchUserProfile = async (authUser, isInitial = false) => {
    try {
      const { data, error } = await supabase
        .from('profiles')
        .select('*')
        .eq('id', authUser.id)
        .single();
      
      if (error) throw error;
      setProfile(data);
      if (isInitialLoadRef.current || isInitial) {
        showToast(`Bem-vindo, ${data.name || authUser.email}!`, 'success');
        isInitialLoadRef.current = false;
        loadCloudData(data);
      }
    } catch (err) {
      console.error('Error fetching user profile:', err);
      // Fallback profile if record creation trigger delays
      const fallbackProfile = {
        id: authUser.id,
        email: authUser.email,
        name: authUser.email.split('@')[0],
        role: authUser.email === 'admin@prodime.com.br' ? 'Admin' : 'User',
        active: true
      };
      setProfile(fallbackProfile);
      if (isInitialLoadRef.current || isInitial) {
        isInitialLoadRef.current = false;
        loadCloudData(fallbackProfile);
      }
    }
  };

  // Load Projects, Equipment catalog and Sizing Rules from Supabase
  const loadCloudData = async (userProfile) => {
    setLoading(true);
    setLoadingText('Carregando dados da nuvem...');
    try {
      // 1. Fetch Equipment
      const { data: eqData, error: eqErr } = await supabase
        .from('equipment')
        .select('*')
        .order('name');
      if (eqErr) throw eqErr;
      if (eqData && eqData.length > 0) setEquipment(eqData);

      // 2. Fetch Rules
      const { data: rulesData, error: rulesErr } = await supabase
        .from('dimensioning_rules')
        .select('*');
      if (rulesErr) throw rulesErr;
      if (rulesData && rulesData.length > 0) setRules(rulesData);

      // 3. Fetch User Projects
      let query = supabase
        .from('projects')
        .select(`
          *,
          sectors:project_sectors(*),
          parameters:sector_parameters(*),
          results:project_equipment_results(*)
        `)
        .order('updated_at', { ascending: false });

      // Admin sees all projects, users see only theirs
      if (userProfile.role !== 'Admin') {
        query = query.eq('user_id', userProfile.id);
      }

      const { data: projData, error: projErr } = await query;
      if (projErr) throw projErr;
      
      // Parse parameters structure
      const parsedProjects = (projData || []).map(p => {
        const paramMap = {};
        p.parameters.forEach(param => {
          if (!paramMap[param.sector_name]) paramMap[param.sector_name] = {};
          paramMap[param.sector_name][param.parameter_name] = Number(param.parameter_value) || 0;
        });
        return {
          ...p,
          parameters: paramMap
        };
      });
      setProjects(parsedProjects);

      // 4. Fetch admin-only resources if Admin
      if (userProfile.role === 'Admin') {
        const { data: usersData } = await supabase.from('profiles').select('*').order('name');
        if (usersData) setAdminUsers(usersData);
      }

      // 5. Fetch Sector Compatibility Matrix
      const { data: compatData } = await supabase.from('establishment_sector_compatibility').select('*');
      if (compatData && compatData.length > 0) setSectorCompatibility(compatData);

    } catch (err) {
      console.error('Error loading Supabase data:', err);
      showToast('Aviso: Erro ao sincronizar dados. Usando catálogo local de fallback.', 'warning');
      loadLocalProjects();
    } finally {
      setLoading(false);
    }
  };

  // Load Projects from LocalStorage (Guest Users)
  const loadLocalProjects = () => {
    const local = localStorage.getItem('prodime_local_projects');
    if (local) {
      try {
        setProjects(JSON.parse(local));
      } catch (e) {
        setProjects([]);
      }
    } else {
      setProjects([]);
    }
    // Static fallback for guest catalog
    setEquipment(FALLBACK_EQUIPMENT);
    setRules(FALLBACK_RULES);
  };

  // Triggered when any project list or calculation updates
  useEffect(() => {
    // Re-calculate Dashboard Stats
    const totalProjects = projects.length;
    const totalEquipment = equipment.filter(e => e.status === 'Ativo').length;
    const totalRules = rules.filter(r => r.active === true).length;
    
    // Sum total investment estimated across all results in all projects
    let totalInvestment = 0;
    projects.forEach(p => {
      if (p.results) {
        p.results.forEach(r => {
          const qty = (r.quantity_adjusted !== null && r.quantity_adjusted !== undefined) ? r.quantity_adjusted : r.quantity_recommended;
          const eqPrice = equipment.find(eq => eq.code === r.equipment_code)?.avg_price || r.avg_price || 0;
          totalInvestment += qty * eqPrice;
        });
      }
    });

    setStats({
      totalProjects,
      totalEquipment,
      totalRules,
      totalInvestment
    });
  }, [projects, equipment, rules]);

  // Log Audit actions to Supabase (Disabled/Removed)
  const logAudit = () => {};

  const handleGoogleLogin = async () => {
    setLoading(true);
    setLoadingText('Conectando ao Google...');
    try {
      const { error } = await supabase.auth.signInWithOAuth({
        provider: 'google',
        options: {
          redirectTo: window.location.origin + '/app'
        }
      });
      if (error) throw error;
    } catch (err) {
      showToast(err.message, 'danger');
      setLoading(false);
    }
  };

  const handleSignOut = async () => {
    setLoading(true);
    try {
      await supabase.auth.signOut();
      setUser(null);
      setProfile(null);
      setProjects([]);
      setTab('dashboard');
      setView('landing');
      showToast('Sessão encerrada com sucesso', 'info');
    } catch (err) {
      console.error(err);
    } finally {
      setLoading(false);
    }
  };

  // Project SAVE handler (Cloud / Local)
  const handleSaveProject = async (projectData) => {
    setLoading(true);
    setLoadingText('Salvando projeto...');
    try {
      if (user && profile) {
        // Cloud Save in Supabase
        const isNew = !projectData.id;
        const projectPayload = {
          name: projectData.name,
          hospital_name: projectData.hospital_name,
          establishment_type: projectData.establishment_type,
          profile: projectData.profile,
          project_type: projectData.project_type,
          technical_manager: projectData.technical_manager,
          currency: projectData.currency,
          notes: projectData.notes,
          price_date: projectData.price_date,
          user_id: user.id,
          updated_at: new Date().toISOString()
        };

        let projectId = projectData.id;

        if (isNew) {
          const { data, error } = await supabase
            .from('projects')
            .insert(projectPayload)
            .select()
            .single();
          if (error) throw error;
          projectId = data.id;
          logAudit('Criar Projeto', `Projeto "${projectData.name}" criado.`, projectId);
        } else {
          const { error } = await supabase
            .from('projects')
            .update(projectPayload)
            .eq('id', projectId);
          if (error) throw error;
          logAudit('Atualizar Projeto', `Projeto "${projectData.name}" atualizado.`, projectId);
        }

        // Delete existing sectors & params in DB
        await supabase.from('project_sectors').delete().eq('project_id', projectId);
        await supabase.from('sector_parameters').delete().eq('project_id', projectId);
        await supabase.from('project_equipment_results').delete().eq('project_id', projectId);

        // Batch insert sectors
        const sectorsPayload = projectData.sectors.map(s => ({
          project_id: projectId,
          sector_name: s.sector_name
        }));
        await supabase.from('project_sectors').insert(sectorsPayload);

        // Batch insert parameters
        const paramsPayload = [];
        for (const sectorName in projectData.parameters) {
          const sectParams = projectData.parameters[sectorName];
          for (const paramName in sectParams) {
            paramsPayload.push({
              project_id: projectId,
              sector_name: sectorName,
              parameter_name: paramName,
              parameter_value: sectParams[paramName]
            });
          }
        }
        if (paramsPayload.length > 0) {
          await supabase.from('sector_parameters').insert(paramsPayload);
        }

        // Batch insert sizing results
        const resultsPayload = projectData.results.map(r => ({
          project_id: projectId,
          sector_name: r.sector_name,
          equipment_code: r.equipment_code,
          quantity_calculated: r.quantity_calculated,
          quantity_recommended: r.quantity_recommended,
          quantity_adjusted: r.quantity_adjusted,
          adjustment_reason: r.adjustment_reason,
          adjusted_by: r.adjusted_by,
          adjusted_at: r.adjusted_at || null
        }));
        if (resultsPayload.length > 0) {
          await supabase.from('project_equipment_results').insert(resultsPayload);
        }

        // Reload data
        await loadCloudData(profile);

      } else {
        // Local Save (Guest Mode)
        const isNew = !projectData.id;
        let updatedList = [...projects];

        if (isNew) {
          projectData.id = 'PROJ-LOC-' + Math.random().toString(36).substr(2, 9).toUpperCase();
          projectData.created_at = new Date().toISOString();
          projectData.updated_at = new Date().toISOString();
          updatedList.unshift(projectData);
        } else {
          projectData.updated_at = new Date().toISOString();
          updatedList = updatedList.map(p => p.id === projectData.id ? projectData : p);
        }

        setProjects(updatedList);
        localStorage.setItem('prodime_local_projects', JSON.stringify(updatedList));
      }

      showToast('Projeto salvo com sucesso!', 'success');
      setTab('projects');
      setEditingProject(null);
    } catch (err) {
      showToast('Erro ao salvar projeto: ' + err.message, 'danger');
    } finally {
      setLoading(false);
    }
  };

  // Delete Project handler
  const handleDeleteProject = async (projId) => {
    if (!confirm('Deseja realmente deletar este projeto?')) return;
    setLoading(true);
    try {
      if (user && profile) {
        const { error } = await supabase.from('projects').delete().eq('id', projId);
        if (error) throw error;
        logAudit('Excluir Projeto', `Projeto ID ${projId} deletado.`, projId);
        await loadCloudData(profile);
      } else {
        const updated = projects.filter(p => p.id !== projId);
        setProjects(updated);
        localStorage.setItem('prodime_local_projects', JSON.stringify(updated));
      }
      showToast('Projeto removido', 'success');
    } catch (err) {
      showToast(err.message, 'danger');
    } finally {
      setLoading(false);
    }
  };

  // ADMIN OPERATIONS
  const handleSaveEquipment = async (eqData) => {
    if (profile?.role !== 'Admin') {
      showToast('Apenas administradores podem gerenciar o catálogo', 'danger');
      return;
    }
    setLoading(true);
    try {
      const { error } = await supabase
        .from('equipment')
        .upsert(eqData);
      if (error) throw error;
      
      logAudit('Salvar Equipamento', `Equipamento ${eqData.code} (${eqData.name}) salvo/editado.`);
      showToast(`Equipamento ${eqData.code} cadastrado com sucesso!`, 'success');
      await loadCloudData(profile);
    } catch (err) {
      showToast(err.message, 'danger');
    } finally {
      setLoading(false);
    }
  };

  const handleSaveRule = async (ruleData) => {
    if (profile?.role !== 'Admin') {
      showToast('Apenas administradores podem gerenciar regras', 'danger');
      return;
    }
    setLoading(true);
    try {
      const { error } = await supabase
        .from('dimensioning_rules')
        .upsert(ruleData);
      if (error) throw error;

      logAudit('Salvar Regra', `Regra ${ruleData.id} (${ruleData.name}) salva/editada.`);
      showToast('Regra de cálculo salva com sucesso!', 'success');
      await loadCloudData(profile);
    } catch (err) {
      showToast(err.message, 'danger');
    } finally {
      setLoading(false);
    }
  };

  const handleSaveUser = async (userData) => {
    if (profile?.role !== 'Admin') return;
    setLoading(true);
    try {
      if (!userData.id) throw new Error('Usuário deve acessar com Google antes de ser editado.');

      const { error } = await supabase
        .from('profiles')
        .upsert(userData);
      if (error) throw error;
      showToast('Perfil do usuário atualizado', 'success');
      await loadCloudData(profile);
    } catch (err) {
      showToast(err.message, 'danger');
    } finally {
      setLoading(false);
    }
  };

  const getHeaderInfo = () => {
    switch (tab) {
      case 'dashboard':
        if (projects.length === 0) {
          return {
            title: "Bem-vindo ao PRODIME",
            subtitle: "Ferramenta de apoio ao planejamento de equipamentos para unidades de saúde."
          };
        }
        return {
          title: "Dashboard Operacional",
          subtitle: "Acompanhe suas estimativas e planejamento de equipamentos."
        };
      case 'projects':
        return {
          title: "Projetos de Dimensionamento",
          subtitle: "Visualize e gerencie os dimensionamentos salvos."
        };
      case 'project-wizard':
        let subtitle = editingProject ? `Editando o projeto: ${editingProject.name}` : "Crie uma nova estimativa de equipamentos em poucos passos.";
        if (currentWizardStep === 1) subtitle = "💡 Passo 1: Comece cadastrando as informações gerais do projeto. Você está a 4 passos do relatório final.";
        else if (currentWizardStep === 2) subtitle = "💡 Passo 2: Selecione quais áreas fazem parte do projeto. Você está a 3 passos do relatório.";
        else if (currentWizardStep === 3) subtitle = "💡 Passo 3: Informe os parâmetros de capacidade física ou operacional. Você está a 2 passos do relatório.";
        else if (currentWizardStep === 4) subtitle = "💡 Passo 4: Revise a estimativa e faça ajustes justificados. Você está a 1 passo do relatório final!";
        else if (currentWizardStep === 5) subtitle = "🎉 Passo 5: Relatório técnico-financeiro gerado com sucesso!";

        return {
          title: editingProject ? "Editar Projeto" : "Novo Projeto de Dimensionamento",
          subtitle: subtitle
        };
      case 'manual':
        return {
          title: "Manual de Regras de Dimensionamento",
          subtitle: "Consulte os parâmetros, ambientes e legislações aplicadas no sistema."
        };
      case 'admin':
        return {
          title: "Configurações",
          subtitle: "Gerenciamento de regras de cálculo, catálogo de equipamentos e usuários."
        };
      case 'help':
        return {
          title: "Ajuda & Suporte",
          subtitle: "Instruções de uso do simulador PRODIME e canais de contato."
        };
      default:
        return { title: "", subtitle: "" };
    }
  };

  return (
    <div>
      {/* Toast Notification */}
      {toast && (
        <div className="toast-container no-print">
          <div className={`toast toast-${toast.type}`}>
            <span>{toast.message}</span>
          </div>
        </div>
      )}

      {/* Loading Overlay */}
      {loading && (
        <div style={{
          position: 'fixed', top: 0, left: 0, right: 0, bottom: 0,
          backgroundColor: 'rgba(15,23,42,0.7)', backdropFilter: 'blur(4px)',
          zIndex: 2000, display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', color: 'white'
        }}>
          <div style={{ border: '4px solid #f3f3f3', borderTop: '4px solid var(--primary)', borderRadius: '50%', width: '40px', height: '40px', animation: 'spin 1s linear infinite', marginBottom: '16px' }} />
          <div style={{ fontFamily: 'Outfit', fontWeight: 600 }}>{loadingText || 'Processando...'}</div>
        </div>
      )}

      {/* LANDING PAGE VIEW */}
      {view === 'landing' ? (
        <LandingPage 
          onStartApp={() => { setView('app'); setTab('dashboard'); }} 
          onLoginClick={() => setAuthModalOpen(true)}
          user={user}
          onViewPrivacy={() => setView('privacy-policy')}
          onViewTerms={() => setView('terms-of-use')}
        />
      ) : view === 'privacy-policy' ? (
        <PrivacyPolicy onBack={() => setView('landing')} />
      ) : view === 'terms-of-use' ? (
        <TermsOfUse onBack={() => setView('landing')} />
      ) : (
        /* APP WORKSPACE VIEW */
        <div className="app-shell">
          <div className="app-container">
          
          {/* Mobile Top Header */}
          <header className="mobile-header no-print">
            <button className="mobile-menu-toggle" onClick={() => setMobileMenuOpen(!mobileMenuOpen)}>
              {mobileMenuOpen ? <X size={24} /> : <Menu size={24} />}
            </button>
            <div className="lp-brand" onClick={() => setView('landing')} style={{ cursor: 'pointer', display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
              <img src="/PRODIME.png" alt="PRODIME" style={{ height: '32px', width: 'auto', objectFit: 'contain' }} />
            </div>
            <div style={{ width: '40px' }}></div>
          </header>

          <div 
            className={`mobile-sidebar-overlay no-print ${mobileMenuOpen ? 'active' : ''}`}
            onClick={() => setMobileMenuOpen(false)}
          />

          {/* Sidebar Navigation */}
          <aside className={`sidebar no-print ${mobileMenuOpen ? 'active' : ''}`}>
            <div className="brand" onClick={() => setView('landing')} style={{ cursor: 'pointer', padding: '0 0 24px 0', display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
              <img src="/PRODIME.png" alt="PRODIME" style={{ height: '52px', width: 'auto', objectFit: 'contain' }} />
            </div>
            
            {/* SECTION MENU */}
            <div className="menu-section-title">MENU</div>
            <nav className="nav-menu" style={{ flexGrow: 0, marginBottom: '16px' }}>
              <a 
                className={`nav-item ${tab === 'dashboard' ? 'active' : ''}`}
                onClick={() => { setTab('dashboard'); setMobileMenuOpen(false); }}
              >
                <LayoutDashboard size={20} className="nav-icon" />
                Dashboard
              </a>
              <a 
                className={`nav-item ${tab === 'projects' || tab === 'project-wizard' ? 'active' : ''}`}
                onClick={() => { setTab('projects'); setMobileMenuOpen(false); }}
              >
                <FileText size={20} className="nav-icon" />
                Projetos
              </a>
              {/* Admin-only features */}
              {profile?.role === 'Admin' && (
                <a 
                  className={`nav-item ${tab === 'manual' ? 'active' : ''}`}
                  onClick={() => { setTab('manual'); setMobileMenuOpen(false); }}
                >
                  <BookOpen size={20} className="nav-icon" />
                  Manual de Regras
                </a>
              )}
            </nav>
            
            {/* SECTION GENERAL */}
            <div style={{ marginTop: 'auto', display: 'flex', flexDirection: 'column', gap: '8px' }}>
              <div className="menu-section-title">GENERAL</div>
              <nav className="nav-menu" style={{ flexGrow: 0 }}>
                {profile?.role === 'Admin' && (
                  <a 
                    className={`nav-item ${tab === 'admin' ? 'active' : ''}`}
                    onClick={() => { setTab('admin'); setMobileMenuOpen(false); }}
                  >
                    <Settings size={20} className="nav-icon" />
                    Configurações
                  </a>
                )}
                <a 
                  className={`nav-item ${tab === 'help' ? 'active' : ''}`}
                  onClick={() => { setTab('help'); setMobileMenuOpen(false); }}
                >
                  <HelpCircle size={20} className="nav-icon" />
                  Ajuda
                </a>
                {user ? (
                  <a 
                    className="nav-item"
                    onClick={() => { handleSignOut(); setMobileMenuOpen(false); }}
                  >
                    <LogOut size={20} className="nav-icon" />
                    Sair
                  </a>
                ) : (
                  <a 
                    className="nav-item"
                    onClick={() => { setAuthModalOpen(true); setMobileMenuOpen(false); }}
                  >
                    <LogIn size={20} className="nav-icon" />
                    Fazer Login
                  </a>
                )}
              </nav>
            </div>
            
            {/* User Profile Widget */}
            <div className="user-widget" style={{ marginTop: '16px', borderTop: '1px solid var(--border-color)', paddingTop: '16px' }}>
              <div className="user-info">
                <div className="user-avatar">
                  {profile?.name ? profile.name.substring(0, 2).toUpperCase() : (user?.email ? user.email.substring(0, 2).toUpperCase() : 'G')}
                </div>
                <div className="user-details">
                  <span className="user-name">{profile?.name || (user?.email ? user.email.split('@')[0] : 'Visitante')}</span>
                  <span className="user-role">{profile?.role || 'Guest (Local)'}</span>
                </div>
              </div>
            </div>
          </aside>
          
          {/* Main Content Area Wrapper */}
          <div className="content-wrapper">
            {/* Top Desktop Header Bar */}
            <header className="app-header no-print">
              <div className="header-title-area">
                <h1 className="header-title">{getHeaderInfo().title}</h1>
                <p className="header-subtitle">{getHeaderInfo().subtitle}</p>
              </div>
              <div className="header-user-widget">
                <div className="user-info">
                  <div className="user-avatar">
                    {profile?.name ? profile.name.substring(0, 2).toUpperCase() : (user?.email ? user.email.substring(0, 2).toUpperCase() : 'G')}
                  </div>
                  <div className="user-details">
                    <span className="user-name">{profile?.name || (user?.email ? user.email.split('@')[0] : 'Visitante')}</span>
                    <span className="user-role" style={{ textTransform: 'none' }}>{user?.email || 'Acesso Local'}</span>
                  </div>
                </div>
              </div>
            </header>

            {/* Main Content Area */}
            <main className="main-content">
              
              {/* TAB: DASHBOARD */}
              {tab === 'dashboard' && (
                <Dashboard 
                  stats={stats}
                  onStartNewProject={() => { setEditingProject(null); setTab('project-wizard'); }}
                  onNavigate={setTab}
                  projects={projects}
                  userProfile={profile}
                  onOpenProject={(proj) => { setEditingProject(proj); setTab('project-wizard'); }}
                />
              )}

              {/* TAB: PROJECTS LIST */}
              {tab === 'projects' && (
                <div className="tab-section active">
                  {projects.length > 0 && (
                    <div className="page-actions">
                      <button className="btn btn-primary" onClick={() => { setEditingProject(null); setTab('project-wizard'); }}>
                        <Plus size={16} /> Novo Projeto
                      </button>
                    </div>
                  )}

                  <div className="card-premium">
                    {projects.length > 0 ? (
                      <div className="table-wrapper">
                        <table className="table-premium">
                          <thead>
                            <tr>
                              <th>Nome do Projeto</th>
                              <th>Hospital / EAS</th>
                              <th>Tipo / Perfil</th>
                              <th>Responsável</th>
                              <th>Última Alteração</th>
                              <th style={{ width: '220px', textAlign: 'center' }}>Ações</th>
                            </tr>
                          </thead>
                          <tbody>
                            {projects.map((proj) => (
                              <tr key={proj.id}>
                                <td style={{ fontWeight: 600, color: 'var(--primary)' }}>{proj.name}</td>
                                <td>{proj.hospital_name}</td>
                                <td><span className="badge badge-info">{proj.establishment_type}</span></td>
                                <td>{proj.technical_manager}</td>
                                <td>{new Date(proj.updated_at || proj.created_at).toLocaleDateString('pt-BR')}</td>
                                <td style={{ textAlign: 'center', display: 'flex', gap: '8px', justifyContent: 'center' }}>
                                  <button 
                                    className="btn btn-secondary btn-sm"
                                    onClick={() => { setEditingProject(proj); setEditingProjectStep(null); setTab('project-wizard'); }}
                                  >
                                    Abrir
                                  </button>
                                  <button 
                                    className="btn btn-primary btn-sm"
                                    onClick={() => { setEditingProject(proj); setEditingProjectStep(5); setTab('project-wizard'); }}
                                  >
                                    Relatório
                                  </button>
                                  <button 
                                    className="btn btn-danger btn-sm"
                                    onClick={() => handleDeleteProject(proj.id)}
                                  >
                                    Deletar
                                  </button>
                                </td>
                              </tr>
                            ))}
                          </tbody>
                        </table>
                      </div>
                    ) : (
                      <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center', padding: '60px 20px', gap: '16px', textAlign: 'center' }}>
                        <div style={{ width: '56px', height: '56px', borderRadius: '50%', backgroundColor: 'var(--primary-light)', color: 'var(--primary)', display: 'flex', alignItems: 'center', justifyContent: 'center' }}>
                          <FileText size={28} />
                        </div>
                        <div>
                          <h3 style={{ fontFamily: 'var(--font-display)', fontSize: '1.25rem', fontWeight: 700, color: 'var(--secondary)', marginBottom: '6px' }}>Nenhum projeto encontrado</h3>
                          <p style={{ fontSize: '0.9rem', color: 'var(--secondary-light)', maxWidth: '400px', margin: '0 auto' }}>Crie seu primeiro projeto para começar a estimar equipamentos médico-hospitalares de forma inteligente.</p>
                        </div>
                        <button className="btn btn-primary" style={{ marginTop: '8px' }} onClick={() => { setEditingProject(null); setTab('project-wizard'); }}>
                          <Plus size={16} /> Criar Primeiro Projeto
                        </button>
                      </div>
                    )}
                  </div>
                </div>
              )}

              {/* TAB: PROJECT WIZARD */}
              {tab === 'project-wizard' && (
                <ProjectWizard 
                  project={editingProject}
                  initialStep={editingProjectStep}
                  hasProjects={projects.length > 0}
                  onStepChange={setCurrentWizardStep}
                  equipment={equipment}
                  rules={rules}
                  user={user}
                  sectorCompatibility={sectorCompatibility}
                  onSave={handleSaveProject}
                  onCancel={() => { setEditingProject(null); setTab('projects'); setEditingProjectStep(null); }}
                />
              )}

              {tab === 'manual' && profile?.role === 'Admin' && <Manual />}

              {tab === 'admin' && profile?.role === 'Admin' && (
                <AdminPanel 
                  equipment={equipment}
                  rules={rules}
                  users={adminUsers}
                  onSaveEquipment={handleSaveEquipment}
                  onSaveRule={handleSaveRule}
                  onSaveUser={handleSaveUser}
                />
              )}

              {/* TAB: HELP (AJUDA) */}
              {tab === 'help' && <HelpView />}

            </main>
          </div>
        </div>
      </div>
      )}

      {/* AUTHENTICATION MODAL */}
      {authModalOpen && (
        <div className="modal-overlay" style={{ zIndex: 1200 }}>
          <div className="modal-card" style={{ maxWidth: '420px' }}>
            <div className="modal-header">
              <h3 className="modal-title">Acessar PRODIME</h3>
              <button className="modal-close" onClick={() => setAuthModalOpen(false)}>&times;</button>
            </div>
            <div>
              <p style={{ color: 'var(--secondary-light)', lineHeight: 1.6, marginBottom: '20px' }}>
                Use sua conta Google para acessar o sistema. No primeiro acesso, seu perfil será criado automaticamente.
              </p>

              <button
                type="button"
                className="btn-google"
                onClick={handleGoogleLogin}
                style={{ width: '100%' }}
              >
                <svg width="18" height="18" viewBox="0 0 18 18">
                  <path fill="#4285F4" d="M17.64 9.2c0-.63-.06-1.25-.16-1.84H9v3.47h4.84a4.14 4.14 0 0 1-1.8 2.71v2.26h2.91c1.7-1.56 2.69-3.86 2.69-6.6z"/>
                  <path fill="#34A853" d="M9 18c2.43 0 4.47-.8 5.96-2.2l-2.91-2.26c-.8.54-1.84.88-3.05.88-2.34 0-4.33-1.58-5.04-3.71H.94v2.33A9 9 0 0 0 9 18z"/>
                  <path fill="#FBBC05" d="M3.96 10.71a5.41 5.41 0 0 1 0-3.42V4.96H.94a9 9 0 0 0 0 8.08l3.02-2.33z"/>
                  <path fill="#EA4335" d="M9 3.58c1.32 0 2.5.45 3.44 1.35L15 2.4C13.46.97 11.43 0 9 0 5.48 0 2.43 2.03.94 4.96l3.02 2.33c.71-2.13 2.7-3.71 5.04-3.71z"/>
                </svg>
                Entrar com o Google
              </button>

              <div style={{ fontSize: '0.78rem', color: 'var(--secondary-light)', marginTop: '18px', lineHeight: '1.5', textAlign: 'center' }}>
                Ao acessar, você concorda com os nossos{' '}
                <a
                  onClick={() => { setAuthModalOpen(false); setView('terms-of-use'); }}
                  style={{ color: 'var(--primary)', cursor: 'pointer', fontWeight: 600, textDecoration: 'underline' }}
                >
                  Termos de Uso
                </a>{' '}
                e{' '}
                <a
                  onClick={() => { setAuthModalOpen(false); setView('privacy-policy'); }}
                  style={{ color: 'var(--primary)', cursor: 'pointer', fontWeight: 600, textDecoration: 'underline' }}
                >
                  Política de Privacidade
                </a>.
              </div>
            </div>
          </div>
        </div>
      )}
      
      {/* CSS Animation injection */}
      <style>{`
        @keyframes spin {
          0% { transform: rotate(0deg); }
          100% { transform: rotate(360deg); }
        }
        .btn-google {
          background-color: white;
          border: 1px solid #cbd5e1;
          color: #334155;
          margin-top: 14px;
          width: 100%;
          display: inline-flex;
          align-items: center;
          justify-content: center;
          gap: 10px;
          padding: 10px;
          font-weight: 600;
          border-radius: var(--radius-md);
          cursor: pointer;
          transition: all 0.2s;
          font-family: var(--font-primary);
          font-size: 0.9rem;
        }
        .btn-google:hover {
          background-color: #f8fafc;
          border-color: #94a3b8;
        }
      `}</style>
    </div>
  );
}
