package main

default allow = false

allow {
  input.app == "fk"
  data.fk.policy.allow
}

allow {
  input.app == "hr"
  data.hr.policy.allow
}
