import jwt from 'jsonwebtoken'

const token_key = 'software-engineer'

export const generateToken = (data) => {
    //var expiration = '180s'
    return jwt.sign(data, token_key, { expiresIn: '1h' })
}

export const verifyToken = (token) => {
    return jwt.verify(token, token_key)
}
