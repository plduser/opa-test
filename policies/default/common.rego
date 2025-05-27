package common

import rego.v1

# Common helper functions
is_authenticated if {
    input.user_id != null
    input.tenant_id != null
}

has_role(role) if {
    some assigned_role in input.roles
    assigned_role == role
}
