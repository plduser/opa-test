package common

is_authenticated if {
    input.user != null
    data.ksef.users[input.user].authenticated == true
}

has_role(role) if {
    input.user != null
    input.tenant != null
    some r in data.ksef.assignments[input.tenant][input.user]
    r == role
}
