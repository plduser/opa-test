package policies.fk

test_allow_employee_view_invoice if {
  allow with input as {
    "action": "view_invoice",
    "role": "employee"
  }
}
