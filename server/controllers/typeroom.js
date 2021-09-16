import { selecTypeRoomByID } from '../models/typeRoomModel.js'

export const getTypeRoomByID = (req, res) => {
    const id_type_room = req.params.id_type_room;
    selecTypeRoomByID(id_type_room, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}