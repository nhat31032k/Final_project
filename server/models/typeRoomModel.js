import db from '../config/database.js'


export const selecTypeRoomByID = (id_type_room, result) => {
    db.query("SELECT * FROM type_room WHERE id_type_room like ?", [id_type_room], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}