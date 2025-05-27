package policies.fk_test

import data.policies.fk.allow

test_allow_employee_view_invoice {
  allow with input as {
    "action": "view_invoice",
    "role": "employee"
  }
}
