package hr

import rego.v1
import data.common
import data.tenants

# HR-specific rules
default allow := false

allow {
    common.is_authenticated
    tenants.valid_tenant
    input.action == "view_employee"
    common.has_role("hr_staff")
}

allow {
    common.is_authenticated
    tenants.valid_tenant
    input.action == "manage_salary"
    common.has_role("hr_manager")
}
