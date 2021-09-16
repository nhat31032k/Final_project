import db from '../config/database.js'

export const selectAllRoom = (result) => {
    db.query("SELECT * FROM room", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}


export const selectAllRoomEmpty = (result) => {
    db.query(`SELECT * FROM room WHERE status = "available" `, (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const insertRoom = (data, result) => {
    db.query("INSERT INTO room SET ?", [data], (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const updateRoomById = (data, result) => {
    db.query("UPDATE room SET ID_type_room = ?, status = ? WHERE room_name = ?", [data.ID_type_room, data.status, data.room_name], (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const deleteRoomByRoomName = (room_name, result) => {
    db.query("DELETE FROM room WHERE room_name like ?", [room_name], (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}


export const selectRoomByID = (ID, result) => {
    db.query("SELECT * FROM room WHERE ID = ?", [ID], (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}
