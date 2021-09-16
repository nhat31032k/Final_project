import { insertAccount, selectAllAccount, updateAccountByUsername, deleteAccountByUsername, selectAccountbyUsername, selectAccountUser } from '../models/accountModel.js'
import { verifyPassword } from '../secure/hash.js'
import { generateToken, verifyToken } from '../secure/generateToken.js'

export const createAccount = (req, res) => {
    const data = req.body

    if (data.password === data.password_confirm) {
        delete data.password_confirm
        insertAccount(data, (err, results) => {
            if (err) {
                res.send(err);
            } else {
                res.json({ code: 0, message: `Thêm ${data.username} thành công` });
            }
        });
    }
    else {
        res.json({ code: 1, message: 'Incorrect username/password' })
    }

}

export const authentication = (req, res) => {
    const username = req.body.username;
    const password = req.body.password;

    selectAccountbyUsername(username, (err, result) => {

        if (result.length > 0) {
            if (verifyPassword(username, password, result[0].password)) {
                var data = {
                    id: result[0].ID,
                    username: result[0].username,
                    role: result[0].ID_type_account
                }
                var token = generateToken(data)

              
                res.send({ status: 200, msg: 'Login Success !!', token: token } )
                //res.redirect('/');
            } else {
                res.send({ status: 500, msg: 'Incorrect username/password !!' })
            }
        } else {
            res.send({ status: 500, msg: 'Incorrect username/password !!' })
        }
        res.end();

    })


}

export const checkUsername = (req, res) => {
    const username = req.body.username
    selectAccountbyUsername(username, (err, result) => {
        if (err) {
            res.send(err)
        } else {
            res.send({ data: result});
        }
    })
}

export const getAllAccount = (req, res) => {
    selectAllAccount((err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const editAccount = (req, res) => {
    const username = req.params.username
    const data = req.body
    updateAccountByUsername(username, data, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json({ code: 0, message: `Chỉnh sửa ${username} thành công` });
        }
    });
}

export const delAccountByUsername = (req, res) => {
    const username = req.params.username;
    deleteAccountByUsername(username, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            console.log(results)
            res.json({ code: 0, message: `Xóa ${username} thành công` });
        }
    });
}

export const getAccountUser = (req, res) => {
    selectAccountUser((err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}