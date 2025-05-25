package main

default allow = false

allow {
  input.app == "fk"
  data.policies.fk.policy.allow
}
