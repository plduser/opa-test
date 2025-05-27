package ksef

import rego.v1
import data.common
import data.tenants

# KSEF-specific rules
default allow := false

allow if {
    common.is_authenticated
    tenants.valid_tenant
    input.action == "send_invoice"
    common.has_role("ksef_sender")
}

allow if {
    common.is_authenticated
    tenants.valid_tenant
    input.action == "view_ksef_status"
    common.has_role("ksef_viewer")
}
# Przykładowe requesty curl do testowania polityk KSEF

