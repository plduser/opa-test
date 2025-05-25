package policies.common.rbac

# Można np. zdefiniować rolę nadrzędną
is_admin(user_id, tenant_id) {
  data.policies.common.admins[tenant_id][_] == user_id
}

has_any_role(user_id, tenant_id, roles) {
  some i
  user_has_role(user_id, tenant_id, roles[i])
}

user_has_role(user_id, tenant_id, role) {
  data.policies.common.rbac.assignments[tenant_id][user_id][_] == role
}

