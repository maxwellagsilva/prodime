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
  Plus
} from 'lucide-react';

import supabase from './supabaseClient';
import LandingPage from './components/LandingPage';
import Dashboard from './components/Dashboard';
import ProjectWizard from './components/ProjectWizard';
import Manual from './components/Manual';
import AdminPanel from './components/AdminPanel';
import { FALLBACK_EQUIPMENT, FALLBACK_RULES } from './utils/constants';

export default function App() {
  const [view, setView] = useState('landing'); // 'landing' | 'app'
  const [tab, setTab] = useState('dashboard'); // 'dashboard' | 'projects' | 'project-wizard' | 'manual' | 'admin'
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  // Auth States
  const [user, setUser] = useState(null);
  const [profile, setProfile] = useState(null);
  const [authModalOpen, setAuthModalOpen] = useState(false);
  const [authMode, setAuthMode] = useState('login'); // 'login' | 'signup'
  const [authEmail, setAuthEmail] = useState('');
  const [authPassword, setAuthPassword] = useState('');
  const [authName, setAuthName] = useState('');

  // Core Data States
  const [projects, setProjects] = useState([]);
  const [equipment, setEquipment] = useState(FALLBACK_EQUIPMENT);
  const [rules, setRules] = useState(FALLBACK_RULES);
  const [adminUsers, setAdminUsers] = useState([]);
  const [auditLogs, setAuditLogs] = useState([]);
  
  // Dashboard Stats
  const [stats, setStats] = useState({
    totalProjects: 0,
    totalEquipment: 0,
    totalRules: 0,
    totalInvestment: 0
  });

  // Wizard active editing project
  const [editingProject, setEditingProject] = useState(null);

  // Loading & Toast Notification
  const [loading, setLoading] = useState(false);
  const [loadingText, setLoadingText] = useState('');
  const [toast, setToast] = useState(null);

  // Toast Helper
  const showToast = (message, type = 'success') => {
    setToast({ message, type });
    setTimeout(() => setToast(null), 4000);
  };

  // Monitor Supabase Auth state change
  useEffect(() => {
    // Se o usuário acessar a rota /app diretamente, ativa a view do aplicativo
    if (window.location.pathname.startsWith('/app')) {
      setView('app');
    }

    if (!supabase) return;

    // Check current session
    supabase.auth.getSession().then(({ data: { session } }) => {
      if (session) {
        setUser(session.user);
        fetchUserProfile(session.user);
        setView('app');
      } else {
        loadLocalProjects();
      }
    });

    const { data: { subscription } } = supabase.auth.onAuthStateChange((event, session) => {
      if (event === 'PASSWORD_RECOVERY') {
        // Redirecionamento de recuperação de senha disparado pelo e-mail
        setAuthMode('reset');
        setAuthModalOpen(true);
      } else if (session) {
        setUser(session.user);
        fetchUserProfile(session.user);
        setView('app');
      } else {
        setUser(null);
        setProfile(null);
        loadLocalProjects();
      }
    });

    return () => subscription.unsubscribe();
  }, []);

  // Fetch profiles table data
  const fetchUserProfile = async (authUser) => {
    try {
      const { data, error } = await supabase
        .from('profiles')
        .select('*')
        .eq('id', authUser.id)
        .single();
      
      if (error) throw error;
      setProfile(data);
      showToast(`Bem-vindo, ${data.name || authUser.email}!`, 'success');
      loadCloudData(data);
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
      loadCloudData(fallbackProfile);
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
      const { data: projData, error: projErr } = await supabase
        .from('projects')
        .select(`
          *,
          sectors:project_sectors(*),
          parameters:sector_parameters(*),
          results:project_equipment_results(*)
        `)
        .eq('user_id', userProfile.id)
        .order('updated_at', { ascending: false });
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

        const { data: logsData } = await supabase.from('audit_logs').select('*').order('timestamp', { ascending: false }).limit(100);
        if (logsData) setAuditLogs(logsData);
      }

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

  // Log Audit actions to Supabase
  const logAudit = async (action, details, projectId = null) => {
    if (!supabase || !user) return;
    try {
      await supabase.from('audit_logs').insert({
        project_id: projectId,
        user_email: user.email,
        action,
        details
      });
      // Reload logs if Admin tab is active
      if (profile?.role === 'Admin') {
        const { data: logsData } = await supabase.from('audit_logs').select('*').order('timestamp', { ascending: false }).limit(100);
        if (logsData) setAuditLogs(logsData);
      }
    } catch(e) {
      console.error(e);
    }
  };

  // Authenticate logic
  const handleAuth = async (e) => {
    e.preventDefault();
    setLoading(true);
    setLoadingText('Aguarde...');
    try {
      if (authMode === 'login') {
        const { error } = await supabase.auth.signInWithPassword({
          email: authEmail,
          password: authPassword
        });
        if (error) throw error;
        setAuthModalOpen(false);
        setAuthEmail('');
        setAuthPassword('');
      } else if (authMode === 'signup') {
        const { data, error } = await supabase.auth.signUp({
          email: authEmail,
          password: authPassword,
          options: {
            data: { name: authName }
          }
        });
        if (error) throw error;
        showToast('Cadastro realizado! Por favor, faça login com suas credenciais.', 'success');
        setAuthMode('login');
      } else if (authMode === 'forgot') {
        const { error } = await supabase.auth.resetPasswordForEmail(authEmail, {
          redirectTo: window.location.origin + '/app'
        });
        if (error) throw error;
        showToast('E-mail de recuperação enviado com sucesso! Verifique sua caixa de entrada.', 'success');
        setAuthModalOpen(false);
        setAuthEmail('');
      } else if (authMode === 'reset') {
        const { error } = await supabase.auth.updateUser({ password: authPassword });
        if (error) throw error;
        showToast('Senha atualizada com sucesso!', 'success');
        setAuthModalOpen(false);
        setAuthPassword('');
        // Limpar os parâmetros de hash/URL de redefinição
        window.history.replaceState(null, '', window.location.pathname);
      }
    } catch (err) {
      showToast(err.message, 'danger');
    } finally {
      setLoading(false);
    }
  };

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
          city: projectData.city,
          state: projectData.state,
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

  const handleDeleteUser = async (uId) => {
    if (profile?.role !== 'Admin') return;
    setLoading(true);
    try {
      const { error } = await supabase.from('profiles').delete().eq('id', uId);
      if (error) throw error;
      showToast('Usuário removido da base', 'success');
      await loadCloudData(profile);
    } catch (err) {
      showToast(err.message, 'danger');
    } finally {
      setLoading(false);
    }
  };

  const handleResetDatabase = async () => {
    if (!confirm('Deseja realmente reconstruir e reinicializar o banco de dados? Isso recarregará o seed padrão e sobrescreverá regras e equipamentos existentes.')) return;
    showToast('Recurso indisponível localmente. Por favor, execute o script SQL contido em supabase_schema.sql no console do Supabase para resetar e seedar o banco.', 'warning');
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
          onLoginClick={() => { setAuthMode('login'); setAuthModalOpen(true); }}
          user={user}
        />
      ) : (
        /* APP WORKSPACE VIEW */
        <div className="app-container">
          
          {/* Mobile Top Header */}
          <header className="mobile-header no-print">
            <button className="mobile-menu-toggle" onClick={() => setMobileMenuOpen(!mobileMenuOpen)}>
              {mobileMenuOpen ? <X size={24} /> : <Menu size={24} />}
            </button>
            <div className="lp-brand">
              <div className="lp-logo" style={{ width: '32px', height: '32px', fontSize: '1rem' }}>P</div>
              <span className="lp-title" style={{ fontSize: '1.1rem' }}>PRODIME</span>
            </div>
            <div style={{ width: '24px' }}></div>
          </header>

          <div 
            className={`mobile-sidebar-overlay no-print ${mobileMenuOpen ? 'active' : ''}`}
            onClick={() => setMobileMenuOpen(false)}
          />

          {/* Sidebar Navigation */}
          <aside className={`sidebar no-print ${mobileMenuOpen ? 'active' : ''}`}>
            <div className="brand" onClick={() => setView('landing')} style={{ cursor: 'pointer' }}>
              <div className="brand-icon">P</div>
              <span className="brand-name">PRODIME</span>
            </div>
            
            <nav className="nav-menu">
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
              <a 
                className={`nav-item ${tab === 'manual' ? 'active' : ''}`}
                onClick={() => { setTab('manual'); setMobileMenuOpen(false); }}
              >
                <BookOpen size={20} className="nav-icon" />
                Manual de Regras
              </a>
              
              {/* Admin features if role matches */}
              {profile?.role === 'Admin' && (
                <a 
                  className={`nav-item ${tab === 'admin' ? 'active' : ''}`}
                  onClick={() => { setTab('admin'); setMobileMenuOpen(false); }}
                >
                  <Settings size={20} className="nav-icon" />
                  Painel Admin
                </a>
              )}
            </nav>
            
            {/* User Profile Widget */}
            <div className="user-widget">
              <div className="user-info">
                <div className="user-avatar">
                  {profile?.name ? profile.name.substring(0, 2).toUpperCase() : (user?.email ? user.email.substring(0, 2).toUpperCase() : 'G')}
                </div>
                <div className="user-details">
                  <span className="user-name">{profile?.name || (user?.email ? user.email.split('@')[0] : 'Visitante')}</span>
                  <span className="user-role">{profile?.role || 'Guest (Local)'}</span>
                </div>
              </div>
              
              {user ? (
                <button className="btn btn-secondary btn-sm" onClick={handleSignOut} style={{ width: '100%' }}>
                  <LogOut size={14} /> Sair
                </button>
              ) : (
                <button className="btn btn-primary btn-sm" onClick={() => { setAuthMode('login'); setAuthModalOpen(true); }} style={{ width: '100%' }}>
                  <LogIn size={14} /> Fazer Login
                </button>
              )}
            </div>
          </aside>
          
          {/* Main Content Area */}
          <main className="main-content">
            
            {/* TAB: DASHBOARD */}
            {tab === 'dashboard' && (
              <Dashboard 
                stats={stats}
                recentLogs={auditLogs}
                onStartNewProject={() => { setEditingProject(null); setTab('project-wizard'); }}
                onNavigate={setTab}
              />
            )}

            {/* TAB: PROJECTS LIST */}
            {tab === 'projects' && (
              <div className="tab-section active">
                <div className="page-header">
                  <div>
                    <h1 className="page-title">Projetos de Dimensionamento</h1>
                    <p className="page-subtitle">Visualize e gerencie os dimensionamentos salvos.</p>
                  </div>
                  <button className="btn btn-primary" onClick={() => { setEditingProject(null); setTab('project-wizard'); }}>
                    <Plus size={16} /> Novo Projeto
                  </button>
                </div>

                <div className="card-premium">
                  <div className="table-wrapper">
                    <table className="table-premium">
                      <thead>
                        <tr>
                          <th>Nome do Projeto</th>
                          <th>Hospital / EAS</th>
                          <th>Localidade</th>
                          <th>Tipo / Perfil</th>
                          <th>Responsável</th>
                          <th>Última Alteração</th>
                          <th style={{ width: '220px', textAlign: 'center' }}>Ações</th>
                        </tr>
                      </thead>
                      <tbody>
                        {projects.length > 0 ? (
                          projects.map((proj) => (
                            <tr key={proj.id}>
                              <td style={{ fontWeight: 600, color: 'var(--primary)' }}>{proj.name}</td>
                              <td>{proj.hospital_name}</td>
                              <td>{proj.city} - {proj.state}</td>
                              <td><span className="badge badge-info">{proj.establishment_type}</span></td>
                              <td>{proj.technical_manager}</td>
                              <td>{new Date(proj.updated_at || proj.created_at).toLocaleDateString('pt-BR')}</td>
                              <td style={{ textAlign: 'center', display: 'flex', gap: '8px', justifyContent: 'center' }}>
                                <button 
                                  className="btn btn-secondary btn-sm"
                                  onClick={() => { setEditingProject(proj); setTab('project-wizard'); }}
                                >
                                  Abrir
                                </button>
                                <button 
                                  className="btn btn-danger btn-sm"
                                  onClick={() => handleDeleteProject(proj.id)}
                                >
                                  Deletar
                                </button>
                              </td>
                            </tr>
                          ))
                        ) : (
                          <tr>
                            <td colSpan={7} style={{ textAlign: 'center', padding: '40px 0', color: 'var(--secondary-light)' }}>
                              Nenhum projeto encontrado. Clique em "Novo Projeto" para iniciar!
                            </td>
                          </tr>
                        )}
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            )}

            {/* TAB: PROJECT WIZARD */}
            {tab === 'project-wizard' && (
              <ProjectWizard 
                project={editingProject}
                equipment={equipment}
                rules={rules}
                user={user}
                onSave={handleSaveProject}
                onCancel={() => { setEditingProject(null); setTab('projects'); }}
              />
            )}

            {/* TAB: MANUAL */}
            {tab === 'manual' && <Manual />}

            {/* TAB: ADMIN PANEL */}
            {tab === 'admin' && profile?.role === 'Admin' && (
              <AdminPanel 
                equipment={equipment}
                rules={rules}
                users={adminUsers}
                logs={auditLogs}
                onSaveEquipment={handleSaveEquipment}
                onSaveRule={handleSaveRule}
                onSaveUser={handleSaveUser}
                onDeleteUser={handleDeleteUser}
                onResetDb={handleResetDatabase}
              />
            )}

          </main>
        </div>
      )}

      {/* AUTHENTICATION MODAL */}
      {authModalOpen && (
        <div className="modal-overlay" style={{ zIndex: 1200 }}>
          <div className="modal-card" style={{ maxWidth: '420px' }}>
            <div className="modal-header">
              <h3 className="modal-title">
                {authMode === 'login' && 'Acessar PRODIME'}
                {authMode === 'signup' && 'Criar Conta Grátis'}
                {authMode === 'forgot' && 'Recuperar Senha'}
                {authMode === 'reset' && 'Definir Nova Senha'}
              </h3>
              <button className="modal-close" onClick={() => setAuthModalOpen(false)}>&times;</button>
            </div>
            <form onSubmit={handleAuth}>
              <div style={{ display: 'flex', flexDirection: 'column', gap: '16px' }}>
                {authMode === 'signup' && (
                  <div className="form-group">
                    <label className="form-label">Nome Completo *</label>
                    <input 
                      type="text" 
                      className="form-control" 
                      value={authName} 
                      onChange={e => setAuthName(e.target.value)} 
                      placeholder="Ex: Dra. Ana Silva" 
                      required 
                    />
                  </div>
                )}
                
                {(authMode === 'login' || authMode === 'signup' || authMode === 'forgot') && (
                  <div className="form-group">
                    <label className="form-label">E-mail Corporativo ou Pessoal *</label>
                    <input 
                      type="email" 
                      className="form-control" 
                      value={authEmail} 
                      onChange={e => setAuthEmail(e.target.value)} 
                      placeholder="nome@empresa.com.br" 
                      required 
                    />
                  </div>
                )}

                {(authMode === 'login' || authMode === 'signup' || authMode === 'reset') && (
                  <div className="form-group">
                    <label className="form-label">
                      {authMode === 'reset' ? 'Nova Senha *' : 'Senha de Acesso *'}
                    </label>
                    <input 
                      type="password" 
                      className="form-control" 
                      value={authPassword} 
                      onChange={e => setAuthPassword(e.target.value)} 
                      placeholder="Mínimo 6 caracteres" 
                      required 
                    />
                  </div>
                )}
              </div>

              <button 
                type="submit" 
                className="btn btn-primary" 
                style={{ width: '100%', marginTop: '24px', padding: '12px' }}
              >
                {authMode === 'login' && 'Entrar'}
                {authMode === 'signup' && 'Registrar'}
                {authMode === 'forgot' && 'Enviar Link de Recuperação'}
                {authMode === 'reset' && 'Salvar Nova Senha'}
              </button>

              {/* Login Social (Google OAuth) - Apenas Login & Signup */}
              {(authMode === 'login' || authMode === 'signup') && (
                <>
                  <div style={{ display: 'flex', alignItems: 'center', margin: '20px 0', color: '#94a3b8', fontSize: '0.85rem' }}>
                    <div style={{ flex: 1, height: '1px', backgroundColor: 'var(--border-color)' }}></div>
                    <span style={{ padding: '0 10px' }}>ou</span>
                    <div style={{ flex: 1, height: '1px', backgroundColor: 'var(--border-color)' }}></div>
                  </div>
                  
                  <button 
                    type="button" 
                    className="btn-google" 
                    onClick={handleGoogleLogin}
                  >
                    <svg width="18" height="18" viewBox="0 0 18 18">
                      <path fill="#4285F4" d="M17.64 9.2c0-.63-.06-1.25-.16-1.84H9v3.47h4.84a4.14 4.14 0 0 1-1.8 2.71v2.26h2.91c1.7-1.56 2.69-3.86 2.69-6.6z"/>
                      <path fill="#34A853" d="M9 18c2.43 0 4.47-.8 5.96-2.2l-2.91-2.26c-.8.54-1.84.88-3.05.88-2.34 0-4.33-1.58-5.04-3.71H.94v2.33A9 9 0 0 0 9 18z"/>
                      <path fill="#FBBC05" d="M3.96 10.71a5.41 5.41 0 0 1 0-3.42V4.96H.94a9 9 0 0 0 0 8.08l3.02-2.33z"/>
                      <path fill="#EA4335" d="M9 3.58c1.32 0 2.5.45 3.44 1.35L15 2.4C13.46.97 11.43 0 9 0 5.48 0 2.43 2.03.94 4.96l3.02 2.33c.71-2.13 2.7-3.71 5.04-3.71z"/>
                    </svg>
                    {authMode === 'login' ? 'Entrar com o Google' : 'Cadastrar com o Google'}
                  </button>
                </>
              )}

              {/* Links de Alternância */}
              <div style={{ textAlign: 'center', marginTop: '20px', fontSize: '0.85rem', display: 'flex', flexDirection: 'column', gap: '8px' }}>
                {authMode === 'login' && (
                  <>
                    <span>
                      Não possui uma conta?{' '}
                      <a 
                        style={{ color: 'var(--primary)', cursor: 'pointer', fontWeight: 600 }}
                        onClick={() => { setAuthMode('signup'); setAuthEmail(''); setAuthPassword(''); }}
                      >
                        Cadastre-se grátis
                      </a>
                    </span>
                    <a 
                      style={{ color: 'var(--secondary-light)', cursor: 'pointer', fontSize: '0.8rem' }}
                      onClick={() => { setAuthMode('forgot'); setAuthEmail(''); setAuthPassword(''); }}
                    >
                      Esqueci minha senha
                    </a>
                  </>
                )}
                
                {authMode === 'signup' && (
                  <span>
                    Já tem um cadastro?{' '}
                    <a 
                      style={{ color: 'var(--primary)', cursor: 'pointer', fontWeight: 600 }}
                      onClick={() => { setAuthMode('login'); setAuthEmail(''); setAuthPassword(''); }}
                    >
                      Acesse sua conta
                    </a>
                  </span>
                )}

                {authMode === 'forgot' && (
                  <a 
                    style={{ color: 'var(--primary)', cursor: 'pointer', fontWeight: 600 }}
                    onClick={() => { setAuthMode('login'); setAuthEmail(''); setAuthPassword(''); }}
                  >
                    Voltar para o Login
                  </a>
                )}
              </div>
            </form>
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
