package policies.fk.policy

allow {
  input.action == "view_invoice"
  has_role("accountant")
}

allow {
  input.action == "approve_payment"
  has_role("manager")
}

has_role(role) {
  data.policies.fk.assignments[input.tenant_id][input.user_id][_] == role
}
