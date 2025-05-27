package ksef.policy

import rego.v1

test_ksiegowa_zmiana_ustawien_ksef if {
	data.ksef.policy.allow with input as {
		"tenant_id": "tenantA",
		"user_id": "user123",
		"action": "zmiana_ustawien_ksef",
	}
}

test_dostep_zabroniony_dla_innej_akcji if {
	not data.ksef.policy.allow with input as {
		"tenant_id": "tenantA",
		"user_id": "user123",
		"action": "nieznana_akcja",
	}
}

test_brak_uzytkownika if {
	not data.ksef.policy.allow with input as {
		"tenant_id": "tenantA",
		"action": "zmiana_ustawien_ksef",
	}
}
