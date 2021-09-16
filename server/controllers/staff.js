import { insertStaff, selectAllStaff, deleteStaffByID, updateStaffById, selectStaffByID, selectStaffByIDAccount, selectSalaryByID_staff } from '../models/staffModel.js'
import { selectAccountbyUsername } from '../models/accountModel.js'

export const createStaff = (req, res) => {
    const data = req.body
    selectAccountbyUsername(data.username, (err, result) => {
        if (err) {
            res.send(err);
        } else {
           
            if (result === null || !result[0]) {
                res.json({status: 404, msg: `Staff cannot found !`})
            }else if( result[0].ID_type_account === 1 || result[0].ID_type_account === 3){
                res.json({status: 501, msg: `Account is not correct role !`})
            }  else {
                selectStaffByIDAccount(result[0].ID, (err, rst) => {
                    if ( rst[0] ){
                        res.json({status: 500, msg: `Account has been added info !`, result: rst[0]})
                    } else{
                        var tmp = {
                            name: data.name,
                            email: data.email,
                            phone_number: data.phone_number,
                            birthday: data.birthday,
                            position: data.position,
                            address: data.address,
                            avt: data.avt,
                            id_account: result[0].ID
                        }
                        insertStaff(tmp, (err, results) => {
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

export const getStaffByID = (req, res) => {
    const id_staff = req.params.id_staff;
    selectStaffByID(id_staff, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

export const getStaffByIDAccount = (req, res) => {
    const id_account = req.params.id_account;
    selectStaffByIDAccount(id_account, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

export const getAllStaff = (req, res) => {
    selectAllStaff((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

export const delStaffByID = (req, res) => {
    const id_staff = req.params.id_staff;
    deleteStaffByID(id_staff, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json({code: 0, message: `Xóa nhân viên ${id_staff} thành công`});
        }
    });
}

export const editStaff = (req, res) => {
    const id_staff = req.params.id_staff
    const data = req.body
    updateStaffById(id_staff, data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json({code: 0, message: `Chỉnh sửa nhân viên ${data.name} thành công`});
        }
    });
}

export const getSalaryByID = (req, res) => {
    const id_staff = req.params.id_staff;
    selectSalaryByID_staff(id_staff, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}