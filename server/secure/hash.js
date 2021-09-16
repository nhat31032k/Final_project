import crypto from 'crypto'

export const hashPassword = (username, password) => {
    var salt = username.toString('hex')
    var hash = crypto.pbkdf2Sync(password, salt, 1000, 64, `sha256`).toString(`hex`);
    return hash
}
export const verifyPassword = (username, password_req, password_db ) => {
    var salt = username.toString('hex')
    var hash = crypto.pbkdf2Sync(password_req, salt, 1000, 64, `sha256`).toString(`hex`);
    return hash == password_db
}