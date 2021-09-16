import db from '../config/database.js'

export const insertAssignment = (data, result) => {
    db.query("INSERT INTO assignment SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectAllAssignment = (result) => {
    db.query("SELECT * FROM assignment", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectAllAssignmentByIDStaff = (id_staff, result) => {
    db.query("SELECT * FROM assignment WHERE id_staff = ?", id_staff, (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const updateAssignmentById = (id, data, result) => {
    db.query("UPDATE assignment SET date = ?, time_start = ?, time_finish = ?, job_name = ?, id_staff = ? WHERE id = ?", [data.date, data.time_start, data.time_finish, data.job_name, data.id_staff, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


export const deleteAssignmentByID = (id, result) => {
    db.query("DELETE FROM Assignment WHERE id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}



