import { createClient } from '@supabase/supabase-js';

const json = (res, status, payload) => {
  res.status(status).setHeader('Content-Type', 'application/json');
  res.end(JSON.stringify(payload));
};

const normalizeEmail = (email) => String(email || '').trim().toLowerCase();

export default async function handler(req, res) {
  if (req.method !== 'POST') {
    res.setHeader('Allow', 'POST');
    return json(res, 405, { error: 'Método não permitido' });
  }

  const supabaseUrl = process.env.VITE_SUPABASE_URL;
  const anonKey = process.env.VITE_SUPABASE_ANON_KEY;
  const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY;

  if (!supabaseUrl || !anonKey || !serviceRoleKey) {
    return json(res, 500, {
      error: 'Configuração incompleta: defina SUPABASE_SERVICE_ROLE_KEY no ambiente da Vercel.'
    });
  }

  const authHeader = req.headers.authorization || '';
  const token = authHeader.startsWith('Bearer ') ? authHeader.slice(7) : '';

  if (!token) {
    return json(res, 401, { error: 'Sessão não informada' });
  }

  const { email, name, role = 'User', active = true } = req.body || {};
  const normalizedEmail = normalizeEmail(email);
  const normalizedRole = role === 'Admin' ? 'Admin' : 'User';

  if (!normalizedEmail) {
    return json(res, 400, { error: 'E-mail é obrigatório' });
  }

  if (!name || String(name).trim().length < 2) {
    return json(res, 400, { error: 'Nome completo é obrigatório' });
  }

  const userClient = createClient(supabaseUrl, anonKey, {
    global: { headers: { Authorization: `Bearer ${token}` } }
  });
  const adminClient = createClient(supabaseUrl, serviceRoleKey, {
    auth: { autoRefreshToken: false, persistSession: false }
  });

  const { data: sessionData, error: sessionError } = await userClient.auth.getUser(token);
  if (sessionError || !sessionData?.user) {
    return json(res, 401, { error: 'Sessão inválida ou expirada' });
  }

  const { data: requesterProfile, error: profileError } = await adminClient
    .from('profiles')
    .select('id, role, active')
    .eq('id', sessionData.user.id)
    .single();

  if (profileError || requesterProfile?.role !== 'Admin' || requesterProfile?.active === false) {
    return json(res, 403, { error: 'Apenas administradores ativos podem convidar usuários' });
  }

  const redirectTo = `${req.headers.origin || 'https://app.prodime.com.br'}/app`;
  let existingAuthUser = null;

  for (let page = 1; page <= 10 && !existingAuthUser; page += 1) {
    const { data: usersPage, error: listError } = await adminClient.auth.admin.listUsers({
      page,
      perPage: 100
    });

    if (listError) {
      return json(res, 400, { error: listError.message });
    }

    existingAuthUser = usersPage?.users?.find((item) => normalizeEmail(item.email) === normalizedEmail) || null;

    if (!usersPage?.users || usersPage.users.length < 100) {
      break;
    }
  }

  if (!existingAuthUser) {
    await adminClient
      .from('profiles')
      .delete()
      .eq('email', normalizedEmail)
      .neq('id', sessionData.user.id);
  }

  const { data: inviteData, error: inviteError } = existingAuthUser
    ? { data: { user: existingAuthUser }, error: null }
    : await adminClient.auth.admin.inviteUserByEmail(
      normalizedEmail,
      {
        data: {
          name: String(name).trim(),
          role: normalizedRole
        },
        redirectTo
      }
    );

  if (inviteError) {
    return json(res, 400, { error: inviteError.message });
  }

  const invitedUser = inviteData?.user;
  if (!invitedUser?.id) {
    return json(res, 500, { error: 'Convite criado, mas o usuário não foi retornado pelo Supabase Auth' });
  }

  await adminClient
    .from('profiles')
    .delete()
    .eq('email', normalizedEmail)
    .neq('id', invitedUser.id);

  const { error: upsertError } = await adminClient
    .from('profiles')
    .upsert({
      id: invitedUser.id,
      email: normalizedEmail,
      name: String(name).trim(),
      role: normalizedRole,
      active: Boolean(active)
    });

  if (upsertError) {
    return json(res, 400, { error: upsertError.message });
  }

  return json(res, 200, {
    invited: !existingAuthUser,
    user: {
      id: invitedUser.id,
      email: normalizedEmail,
      name: String(name).trim(),
      role: normalizedRole,
      active: Boolean(active)
    }
  });
}
