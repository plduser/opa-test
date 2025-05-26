package main

import rego.v1

default allow = false

allow if {
  input.app == "fk"
  data.fk.policy.allow with input as input
}

allow if {
  input.app == "hr"
  data.hr.policy.allow with input as input
}

allow if {
  input.app == "ksef"
  data.ksef.policy.allow with input as input
}

has_role_cmn(role) if {
	some r in data.policies.[input.app].assignments[input.tenant_id][input.user_id]
	r == role
}