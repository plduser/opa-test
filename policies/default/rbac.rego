package policies.common.rbac

# Można np. zdefiniować rolę nadrzędną
is_admin(user_id, tenant_id) {
  data.policies.common.admins[tenant_id][_] == user_id
}

# lub zbiorcze sprawdzenie czy użytkownik ma daną rolę w dowolnej aplikacji
has_any_role(user_id, tenant_id, roles) {
  some i
  roles[i] == role
  user_has_role(user_id, tenant_id, role)
}

# fallbackowe has_role (jeśli potrzebne ogólne)
user_has_role(user_id, tenant_id, role) {
  data.policies.common.assignments[tenant_id][user_id][_] == role
}

