import { selectAccountbyUsername } from "../models/accountModel.js";
import { insertPerson, selectAllPerson, selectAllPersonByRoomName, deletePersonByID, deletePersonByRoomName, updatePersonById, selectPersonAndUserById, selectPersonUserContractById, selectAllContracts, updateContractById, deleteContractByID, insertContract } from "../models/personModel.js"

export const createPerson = (req, res) => {
    const data = req.body
    insertPerson(data, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json({ code: 0, message: `Thêm ${data.name} thành công` });
        }
    });
}

export const getAllPerson = (req, res) => {
    selectAllPerson((err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const getAllPersonByRoomName = (req, res) => {
    let room_name = req.params.room_name
    selectAllPersonByRoomName(room_name, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const delPersonByID = (req, res) => {
    const ID_person = req.params.ID_person;
    deletePersonByID(ID_person, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            console.log(results)
            res.json({ code: 0, message: `Xóa ${ID_person} thành công` });
        }
    });
}


export const delPersonByRoomName = (req, res) => {
    const room_name = req.params.room_name;
    deletePersonByRoomName(room_name, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json({ code: 0, message: `Xóa những người trong ${room_name} thành công` });
        }
    });
}

export const editPerson = (req, res) => {
    const ID_person = req.params.ID_person
    const data = req.body
    updatePersonById(ID_person, data, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json({ code: 0, message: `Chỉnh sửa ${data.name} thành công` });
        }
    });
}

export const getPersonAndUserById = (req, res) => {
    let id = req.params.id
    selectPersonAndUserById(id, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}


export const getPersonUserContractById = (req, res) => {
    let id = req.params.id
    selectPersonUserContractById(id, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const getAllContracts = (req, res) => {

    selectAllContracts((err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const editContract = (req, res) => {
    const id = req.params.id
    const data = req.body
    updateContractById(id, data, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json({ code: 0, message: `Chỉnh sửa thành công` });
        }
    });
}

export const delContractByID = (req, res) => {
    const id = req.params.id;
    deleteContractByID(id, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            console.log(results)
            res.json({ code: 0, message: `Xóa ${id} thành công` });
        }
    });
}

export const addContract = (req, res) => {
    const data = req.body;
    selectAccountbyUsername(data.no_room, (err, result) => {
        if (err) {
            res.send(err);
        } else {
           
            if (result === null || !result[0]) {
                res.json({status: 404, msg: `User cannot found !`})
            } else {
                selectPersonUserContractById(result[0].ID, (err, rst) => {
                    if (rst){
                        res.json({status: 500, msg: `Room has been created contract !`})
                    } else{
                        insertContract(data, result[0].ID, (err, results) => {
                            if (err) {
                                res.send(err);
                            } else {
                                res.json({ status: 200, data: data, msg: 'Success !', result: results });
                            }
                        });
                    }
                })
                
            }
        }
    })

}

