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

_user_has_role(role) if {
  some r in data.policies[input.app].assignments[input.tenant_id][input.user_id]
  r == role
}

has_role_cmn(role) = true if {
  _user_has_role(role)
}

has_role_cmn(role) = false if {
  not _user_has_role(role)
}