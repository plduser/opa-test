package ksef.policy

import rego.v1
import data.main as common

allow if {
	input.action == "zmiana_ustawien_ksef"
	has_role("ksiegowa")
}

allow if {
	input.action == "zarzadzanie_kontrahentami"
	common.has_role_cmn("ksiegowa")
}

allow if {
	input.action == "zmiana_notyfikacji_ksef"
	has_role("ksiegowa")
}

allow if {
	input.action == "dane_konta_(widok_uproszczony)"
	has_role("ksiegowa")
}

allow if {
	input.action == "widocznosc_webview"
	has_role("ksiegowa")
}

allow if {
	input.action == "faktury_zakupowe_kosztowe"
	has_role("ksiegowa")
}

allow if {
	input.action == "faktury_zakupowe_handlowe_(przegladanie)"
	has_role("ksiegowa")
}

allow if {
	input.action == "pobieranie_faktur_do_hm/fk_(przez_webview)"
	has_role("ksiegowa")
}

allow if {
	input.action == "operacje_na_dokumentach_(sprawdz_na_białej_liscie)"
	has_role("ksiegowa")
}

allow if {
	input.action == "operacje_na_dokumentach__(pobieranie_upo)"
	has_role("ksiegowa")
}

allow if {
	input.action == "faktury_sprzedazowe_(przegladanie)"
	has_role("ksiegowa")
}

allow if {
	input.action == "wysyłanie_do_symfonia_ksef_sprzedaz"
	has_role("ksiegowa")
}

allow if {
	input.action == "zapis_do_pliku_(xml/pdf)"
	has_role("ksiegowa")
}

allow if {
	input.action == "dodawanie_załacznikow"
	has_role("ksiegowa")
}

allow if {
	input.action == "dane_konta_(widok_uproszczony)"
	has_role("handlowiec")
}

allow if {
	input.action == "operacje_na_dokumentach_(sprawdz_na_białej_liscie)"
	has_role("handlowiec")
}

allow if {
	input.action == "wysyłanie_do_symfonia_ksef_sprzedaz"
	has_role("handlowiec")
}

allow if {
	input.action == "dodawanie_załacznikow"
	has_role("handlowiec")
}

allow if {
	input.action == "dane_konta_(widok_uproszczony)"
	has_role("zakupowiec")
}

allow if {
	input.action == "widocznosc_webview"
	has_role("zakupowiec")
}

allow if {
	input.action == "faktury_zakupowe_handlowe_(przegladanie)"
	has_role("zakupowiec")
}

allow if {
	input.action == "pobieranie_faktur_do_hm/fk_(przez_webview)"
	has_role("zakupowiec")
}

allow if {
	input.action == "operacje_na_dokumentach_(sprawdz_na_białej_liscie)"
	has_role("zakupowiec")
}

allow if {
	input.action == "dodawanie_załacznikow"
	has_role("zakupowiec")
}

allow if {
	input.action == "zarzadzanie_uzytkownikami"
	has_role("administrator")
}

allow if {
	input.action == "zmiana_ustawien_ksef"
	has_role("administrator")
}

allow if {
	input.action == "zarzadzanie_kontrahentami"
	has_role("administrator")
}

allow if {
	input.action == "zmiana_notyfikacji_ksef"
	has_role("administrator")
}

allow if {
	input.action == "dostep_do_dane_konta_(pełny)"
	has_role("administrator")
}

allow if {
	input.action == "dane_konta_(widok_uproszczony)"
	has_role("administrator")
}

allow if {
	input.action == "widocznosc_webview"
	has_role("administrator")
}

allow if {
	input.action == "faktury_zakupowe_kosztowe"
	has_role("administrator")
}

allow if {
	input.action == "faktury_zakupowe_handlowe_(przegladanie)"
	has_role("administrator")
}

allow if {
	input.action == "pobieranie_faktur_do_hm/fk_(przez_webview)"
	has_role("administrator")
}

allow if {
	input.action == "operacje_na_dokumentach_(sprawdz_na_białej_liscie)"
	has_role("administrator")
}

allow if {
	input.action == "operacje_na_dokumentach__(pobieranie_upo)"
	has_role("administrator")
}

allow if {
	input.action == "faktury_sprzedazowe_(przegladanie)"
	has_role("administrator")
}

allow if {
	input.action == "wysyłanie_do_symfonia_ksef_sprzedaz"
	has_role("administrator")
}

allow if {
	input.action == "zapis_do_pliku_(xml/pdf)"
	has_role("administrator")
}

allow if {
	input.action == "dodawanie_załacznikow"
	has_role("administrator")
}

allow if {
	input.action == "zarzadzanie_uzytkownikami"
	has_role("własciciel_ka")
}

allow if {
	input.action == "zmiana_ustawien_ksef"
	has_role("własciciel_ka")
}

allow if {
	input.action == "zarzadzanie_kontrahentami"
	has_role("własciciel_ka")
}

allow if {
	input.action == "zmiana_notyfikacji_ksef"
	has_role("własciciel_ka")
}

allow if {
	input.action == "dostep_do_dane_konta_(pełny)"
	has_role("własciciel_ka")
}

allow if {
	input.action == "dane_konta_(widok_uproszczony)"
	has_role("własciciel_ka")
}

allow if {
	input.action == "widocznosc_webview"
	has_role("własciciel_ka")
}

allow if {
	input.action == "faktury_zakupowe_kosztowe"
	has_role("własciciel_ka")
}

allow if {
	input.action == "faktury_zakupowe_handlowe_(przegladanie)"
	has_role("własciciel_ka")
}

allow if {
	input.action == "pobieranie_faktur_do_hm/fk_(przez_webview)"
	has_role("własciciel_ka")
}

allow if {
	input.action == "operacje_na_dokumentach_(sprawdz_na_białej_liscie)"
	has_role("własciciel_ka")
}

allow if {
	input.action == "operacje_na_dokumentach__(pobieranie_upo)"
	has_role("własciciel_ka")
}

allow if {
	input.action == "faktury_sprzedazowe_(przegladanie)"
	has_role("własciciel_ka")
}

allow if {
	input.action == "wysyłanie_do_symfonia_ksef_sprzedaz"
	has_role("własciciel_ka")
}

allow if {
	input.action == "zapis_do_pliku_(xml/pdf)"
	has_role("własciciel_ka")
}

allow if {
	input.action == "dodawanie_załacznikow"
	has_role("własciciel_ka")
}

has_role(role) if {
	some r in data.policies.ksef.assignments[input.tenant_id][input.user_id]
	r == role
}
