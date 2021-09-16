import { insertAssignment, selectAllAssignment, selectAllAssignmentByIDStaff, updateAssignmentById, deleteAssignmentByID } from '../models/assignmentModel.js'

export const createAssignment = (req, res) => {
    const data = req.body
    insertAssignment(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json({code: 0, message: `Thêm công việc ${data.job_name} cho ${data.id_staff} thành công`});
        }
    });
}

export const getAllAsignment = (req, res) => {
    selectAllAssignment((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

export const getAssignmentByIDStaff = (req, res) => {
    let id_staff = req.params.id_staff
    selectAllAssignmentByIDStaff(id_staff, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

export const editAssignmentbyID = (req, res) => {
    const id = req.params.id
    const data = req.body
    updateAssignmentById(id, data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json({code: 0, message: `Chỉnh sửa ${data.job_name} thành công`});
        }
    });
}

export const delAssignmentByID = (req, res) => {
    const id = req.params.id;
    deleteAssignmentByID(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            console.log(results)
            res.json({code: 0, message: `Xóa ${id} thành công`});
        }
    });
}
