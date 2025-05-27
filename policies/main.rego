package system

import rego.v1

import data.fk.policy as fk
import data.hr.policy as hr
import data.ksef.policy as ksef
import data.tenants

default allow := false

allow if {
	is_valid_request
	route_decision
}

is_valid_request if {
	input.app
	input.tenant_id
	input.user_id
	input.action
	actual_tenant_id := tenants.resolve_tenant_id(input.tenant_id)
	tenants[actual_tenant_id]  # verify that resolved tenant exists
}

route_decision if {
	app_policies := {
		"fk": fk.allow,
		"hr": hr.allow,
		"ksef": ksef.allow,
	}
	app_policies[input.app]
}
