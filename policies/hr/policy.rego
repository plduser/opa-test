package hr.policy

allow {
  input.action == "approve_leave"
  has_role("hr_manager")
}

has_role(role) {
  data.hr.assignments[input.tenant_id][input.user_id][_] == role
}
