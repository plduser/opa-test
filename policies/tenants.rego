package tenants

import rego.v1

# Tenant definitions with their details
tenants := {
	"3d2dea4a-9bdd-4444-9c67-4b46d1394628": {
		"name": "Spólka1",
		"nip": "1111111111",
	},
	"3d2dea4a-9bdd-4444-9c67-4b46d1394629": {
		"name": "Spólka2",
		"nip": "2222222222",
	},
}

# Alias mappings
alias_to_id := {
	"tenantA": "3d2dea4a-9bdd-4444-9c67-4b46d1394628"
}

# Helper rule to resolve tenant ID from either direct ID or alias
resolve_tenant_id(id) := actual_id if {
	alias_to_id[id]
	actual_id := alias_to_id[id]
} else := id if {
	tenants[id]
}

valid_tenant {
    input.tenant_id != null
}
