import {selectAllRoom, insertRoom, updateRoomById, deleteRoomByRoomName, selectRoomByID, selectAllRoomEmpty} from "../models/roomModel.js"

export const getAllRoom = (req, res) => {
    selectAllRoom((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

export const getAllRoomEmpty = (req, res) => {
    selectAllRoomEmpty((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

export const createRoom = (req, res) => {
    const data = req.body
    insertRoom(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json({code: 0, message: `Thêm phòng ${data.room_name} thành công`});
        }
    });
}

export const editRoom = (req, res) => {
    const data = req.body
    updateRoomById(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json({code: 0, message: `Chỉnh sửa phòng ${data.room_name} thành công`});
        }
    });
}

export const deleteRoom = (req, res) => {
    const room_name = req.params.room_name;
    deleteRoomByRoomName(room_name, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json({result: results[0] ,code: 0, message: `Xóa phòng ${room_name} thành công`});
        }
    });
}
export const getRoomByID = (req, res) => {
    const ID = req.params.ID
    selectRoomByID(ID, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}