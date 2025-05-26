package policies.common.rbac

import rego.v1

is_admin(user_id, tenant_id) if {
  data.policies.common.rbac.admins[tenant_id][_] == user_id
}

user_has_role(user_id, tenant_id, role) if {
  data.policies.common.rbac.assignments[tenant_id][user_id][_] == role
}

has_any_role(user_id, tenant_id, roles) if {
  some i
  user_has_role(user_id, tenant_id, roles[i])
}

has_role_cmn(role) = result if {
  result := false
  some r in data.policies[input.app].assignments[input.tenant_id][input.user_id]
  result := r == role
}
