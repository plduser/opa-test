package policies.hr.policy

allow if {
  input.action == "approve_leave"
  has_role("hr_manager")
}

has_role(role) if {
  data.policies.hr.assignments[input.tenant_id][input.user_id][_] == role
}
