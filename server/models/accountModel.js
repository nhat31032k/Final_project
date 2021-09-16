import db from '../config/database.js'
//import crypto from 'crypto';
import {hashPassword} from '../secure/hash.js'

export const insertAccount = (data, result) => {
    var pass_hash = hashPassword(data.username, data.password)
    db.query('INSERT INTO account (ID, username, password, ID_type_account) VALUES ("' + null + '","' + data.username + '","' + pass_hash + '", "'+ data.ID_type_account  +'")', (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectAllAccount = (result) => {
    db.query("SELECT * FROM account", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectAccountbyUsername = (username, result) => {
    db.query("SELECT * FROM account WHERE username = ?", [username] ,(err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const updateAccountByUsername = (username, data, result) => {
    db.query("UPDATE account SET password = ? WHERE username = ?", [data.password, username], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const deleteAccountByUsername = (username, result) => {
    db.query("DELETE FROM account WHERE username like ?", [username], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectAccountUser = (result) => {
    db.query("SELECT * FROM account WHERE ID_type_account = 3" ,(err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}