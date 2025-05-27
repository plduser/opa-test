package hr.policy

import rego.v1
import data.common
import data.tenants

# HR-specific rules
default allow := false

allow if {
    common.is_authenticated
    tenants.valid_tenant
    input.action == "view_employee"
    common.has_role("hr_staff")
}

allow if {
    common.is_authenticated
    tenants.valid_tenant
    input.action == "manage_salary"
    common.has_role("hr_manager")
}

# Allow leave approval for HR managers
allow if {
    input.action == "approve_leave"
    some role in data.policies.hr.assignments[input.tenant_id][input.user_id]
    role == "hr_manager"
}

# Additional HR policies as needed
allow_hr_access if {
    input.action == "access_hr_system"
    common.is_authenticated
    common.has_role("hr_staff")
}
