package ksef.policy

import rego.v1

bad_rule = true 

test_fail {
  false
}

test_ksiegowa_zmiana_ustawien_ksef {
  allow with input as {
    "tenant_id": "tenantA",
    "user_id": "user123",
    "action": "zmiana_ustawien_ksef"
  } with data as {
    "policies": {
      "ksef": {
        "assignments": {
          "tenantA": {
            "user123": ["ksiegowa"]
          }
        }
      }
    }
  }
}

test_handlowiec_wysylanie_sprzedazy {
  allow with input as {
    "tenant_id": "tenantA",
    "user_id": "user456",
    "action": "wysylanie_do_symfonia_ksef_sprzedaz"
  } with data as {
    "policies": {
      "ksef": {
        "assignments": {
          "tenantA": {
            "user456": ["handlowiec"]
          }
        }
      }
    }
  }
}

test_administrator_dostep_pelny {
  allow with input as {
    "tenant_id": "tenantA",
    "user_id": "user789",
    "action": "dostep_do_dane_konta_pelny"
  } with data as {
    "policies": {
      "ksef": {
        "assignments": {
          "tenantA": {
            "user789": ["administrator"]
          }
        }
      }
    }
  }
}

test_wlasciciel_operacje_na_dokumentach {
  allow with input as {
    "tenant_id": "tenantA",
    "user_id": "user999",
    "action": "operacje_na_dokumentach_pobieranie_upo"
  } with data as {
    "policies": {
      "ksef": {
        "assignments": {
          "tenantA": {
            "user999": ["wlasciciel"]
          }
        }
      }
    }
  }
}

test_zakupowiec_faktury_handlowe {
  allow with input as {
    "tenant_id": "tenantA",
    "user_id": "user555",
    "action": "faktury_zakupowe_handlowe_przegladanie"
  } with data as {
    "policies": {
      "ksef": {
        "assignments": {
          "tenantA": {
            "user555": ["zakupowiec"]
          }
        }
      }
    }
  }
}
