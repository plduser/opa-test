package hr.policy

import rego.v1

allow if {
	input.action == "approve_leave"
	some role in data.policies.hr.assignments[input.tenant_id][input.user_id]
	role == "hr_manager"
}
