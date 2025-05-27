package tenants

import rego.v1

# Check if tenant exists
tenant_exists if {
    data.tenant_store.tenants[input.tenant_id]
}

# Tenant validation rules
valid_tenant if {
    input.tenant_id != null
    input.tenant_id in data.tenant_store.tenants
}
