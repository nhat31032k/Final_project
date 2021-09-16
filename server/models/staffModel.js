import db from '../config/database.js'

export const insertStaff = (data, result) => {
    db.query("INSERT INTO staff SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectStaffByID = (id_staff, result) => {
    db.query("SELECT * FROM staff WHERE id like ?", [id_staff], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectStaffByIDAccount = (id_account, result) => {
    db.query("SELECT * FROM staff WHERE id_account like ?", [id_account], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectAllStaff = (result) => {
    db.query("SELECT * FROM staff", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const deleteStaffByID = (id_staff, result) => {
    db.query("DELETE FROM staff WHERE id like ?", [id_staff], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const updateStaffById = (id_staff, data, result) => {
    db.query(
        "UPDATE staff SET name = ?, email = ?, phone_number = ?, position = ?, address = ? WHERE id = ?", [data.name, data.email, data.phone_number, data.position, data.address, id_staff], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectSalaryByID_staff = (id, result) => {
    db.query("SELECT * FROM salary WHERE id_staff like ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


