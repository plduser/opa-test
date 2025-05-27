package fk

import rego.v1
import data.common
import data.tenants

# FK-specific rules
default allow := false

allow if {
    common.is_authenticated
    tenants.valid_tenant
    input.action == "view_invoice"
    common.has_role("accountant")
}

allow if {
    common.is_authenticated
    tenants.valid_tenant
    input.action == "approve_payment"
    common.has_role("manager")
}

