import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL || '';
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY || '';

if (!supabaseUrl || !supabaseAnonKey) {
  console.warn(
    'Aviso: As variáveis VITE_SUPABASE_URL e VITE_SUPABASE_ANON_KEY não foram detectadas no ambiente. A integração com o banco de dados nuvem e autenticação estará desativada. Configure o arquivo .env com suas chaves do Supabase.'
  );
}

export const supabase = createClient(supabaseUrl, supabaseAnonKey);
export default supabase;
