package common

is_authenticated {
    input.user != null
    data.ksef.users[input.user].authenticated == true
}

has_role(role) {
    input.user != null
    data.ksef.users[input.user].roles[_] == role
}
