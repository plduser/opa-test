package tenants

import rego.v1

# Tenant validation rules
valid_tenant {
    input.tenant_id != null
    input.tenant_id in data.tenants
}
