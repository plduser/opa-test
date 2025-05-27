package tenants

import rego.v1

# Check if tenant exists
tenant_exists if {
    data.tenants[input.tenant_id]
}

# Tenant validation rules
valid_tenant {
    input.tenant_id != null
    input.tenant_id in data.tenants
}
