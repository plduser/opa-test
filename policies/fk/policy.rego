package fk.policy

import rego.v1

allow if {
  input.action == "view_invoice"
  some role in data.fk.assignments[input.tenant_id][input.user_id]
  role == "accountant"
}

allow if {
  input.action == "approve_payment"
  some role in data.fk.assignments[input.tenant_id][input.user_id]
  role == "manager"
}
