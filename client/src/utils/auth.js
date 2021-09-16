import decode from 'jwt-decode'

const auth = JSON.parse(localStorage.getItem('user'))

export function isLoggedIn() {
    if (auth === null) {
        return true
    } else {
        var exp = decode(auth.token).exp
        if (Date.now() >= exp * 1000) {
            return false
        }
    }
    return true
}

