import db from '../config/database.js'

export const insertPerson = (data, result) => {
    db.query("INSERT INTO person SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectAllPerson = (result) => {
    db.query("SELECT username, person.ID, person.ID_person, person.name, person.email, person.phone_number, person.birthday, avt FROM person, account WHERE person.ID_person = account.ID", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectAllPersonByRoomName = (room_name, result) => {
    db.query("SELECT * FROM person WHERE room_name LIKE ?", room_name, (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}


export const selectPersonByID = (id_person, result) => {
    db.query("SELECT * FROM person WHERE iD_person = ?", id_person, (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const deletePersonByID = (ID_person, result) => {
    db.query("DELETE FROM person WHERE ID like ?", [ID_person], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const deletePersonByRoomName = (room_name, result) => {
    db.query("DELETE FROM person WHERE room_name like ?", [room_name], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const updatePersonById = (ID_person, data, result) => {
    db.query("UPDATE person SET name = ?, email = ?, phone_number = ?, birthday = ? WHERE ID = ?", [data.name, data.email, data.phone_number, data.birthday, ID_person], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectPersonAndUserById = (id, result) => {
    db.query("SELECT * FROM person, account WHERE person.ID_person = account.ID and person.ID = ?",[id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectPersonUserContractById = (id, result) => {
    db.query("SELECT * FROM person, account, contracts WHERE person.ID_person = account.ID and contracts.id_user = person.ID_person and person.ID = ?",[id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectAllContracts = (result) => {
    db.query("SELECT * FROM person, account, contracts WHERE person.ID_person = account.ID and contracts.id_user = person.ID_person", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const updateContractById = (id, data, result) => {
    db.query("UPDATE contracts SET date_expiration = ?, price = ?, status = ? WHERE id = ?", [data.date_expiration, data.price, data.status, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}


export const deleteContractByID = (id, result) => {
    db.query("DELETE FROM contracts WHERE id like ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


export const insertContract = (data, id_user, result) => {
    db.query(`INSERT INTO contracts (id, date_created, date_expiration, price, status, id_user) VALUES (?, ?, ?, ?, ?, ?)`,[null, data.date_create, data.expiration, data.price, 'paid', id_user] ,(err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, result);
        }
    });   
}