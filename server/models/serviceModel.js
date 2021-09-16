import db from '../config/database.js'

export const insertService = (data, result) => {
    db.query("INSERT INTO service SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectAllService = (result) => {
    db.query("SELECT * FROM service", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectAllServiceByRoomName = (room_name, result) => {
    db.query("SELECT * FROM service WHERE room_name LIKE ?", room_name, (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}


export const deleteServiceByID = (id, result) => {
    db.query("DELETE FROM service WHERE id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const updateServiceByRoomName = (room_name, sotienconlai, result) => {
    db.query(
        "UPDATE service SET status = 'paid', sodukhadung = ? WHERE room_name = ?", [sotienconlai ,room_name], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const updateService = (room_name, result) => {
    db.query(
        "UPDATE service SET status = 'paid' WHERE room_name = ?", [room_name], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}
 
export const selectServiceFee = (result) => {
    db.query("SELECT MONTH(month) as month, SUM(dien) as dien, SUM(nuoc) as nuoc, SUM(internet) as internet, SUM(rac) as rac, SUM(giuxe) as giuxe, SUM(khac) as khac FROM `service` GROUP BY MONTH(month)", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectServiceStatus = (result) => {
    db.query("SELECT COUNT(status) as status FROM `service` GROUP BY status", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}