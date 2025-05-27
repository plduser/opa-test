package hr.policy

import rego.v1

test_hr_manager_ma_dostep if {
	allow with input as {
		"tenant_id": "tenantA",
		"user_id": "user999",
		"action": "approve_leave",
	} # zakładamy, że data jest załadowana automatycznie z policies/hr/data.json
}

test_inny_uzytkownik_nie_ma_dostepu if {
	not allow with input as {
		"tenant_id": "tenantA",
		"user_id": "user111",
		"action": "approve_leave",
	}
}

test_brak_dostepu_dla_zlej_akcji if {
	not allow with input as {
		"tenant_id": "tenantA",
		"user_id": "user999",
		"action": "edit_employee",
	}
}
