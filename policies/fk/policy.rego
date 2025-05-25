package policies.fk.policy

allow if {
  input.action == "view_invoice"
  has_role("accountant")
}

allow if {
  input.action == "approve_payment"
  has_role("manager")
}

has_role(role) if {
  data.policies.fk.assignments[input.tenant_id][input.user_id][_] == role
}
