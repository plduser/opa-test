package main

default allow = false

allow if {
  input.app == "fk"
  data.policies.fk.policy.allow
}

allow if {
  input.app == "hr"
  data.policies.hr.policy.allow
}
