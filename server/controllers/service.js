import { selectAccountbyUsername } from '../models/accountModel.js';
import { selectPersonByID } from '../models/personModel.js';
import { insertService, selectAllService, selectAllServiceByRoomName, deleteServiceByID, updateServiceByRoomName, updateService, selectServiceFee, selectServiceStatus } from '../models/serviceModel.js'
import { verifyToken } from '../secure/generateToken.js';
import { sendMail } from '../secure/sendMail.js';

export const createService = (req, res) => {
    const data = req.body
    insertService(data, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json({ code: 0, message: `Thêm chi phí dịch vụ cho ${data.room_name} thành công` });
        }
    });
}

export const getAllService = (req, res) => {
    selectAllService((err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const getServiceByRoomName = (req, res) => {
    let room_name = req.params.room_name
    selectAllServiceByRoomName(room_name, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const delServiceByID = (req, res) => {
    const id = req.params.id;
    deleteServiceByID(id, (err, results) => {
        if (err) {
            res.send(err);
        } else {
            console.log(results)
            res.json({ code: 0, message: `Xóa ${id} thành công` });
        }
    });
}

export const auth = (req, res, next) => {
    const headerAuth = req.headers.authorization.replace('Bearer ', '')
    const body = req.body
    const data = verifyToken(headerAuth)

    try {
        selectAccountbyUsername(data.username, (err, result) => {
            if (err) {
                throw new Error()
            } else {
                if (result.length > 0) {

                    req.data = result[0]
                    req.body = body
                    next();
                    //res.json({ status: 200, msg: 'Call success !', header: headerAuth, body: body, username: result })
                }

            }
        })
    } catch (error) {
        res.status(401).send({ error: 'Not authorized to access this resource' })
    }


}

export const paymenService = (req, res) => {
    
    selectPersonByID(req.data.ID, (err, result) => {
        if (err) {
            res.send(err);
        } else {
            if (result.length > 0) {
                
                var mailOptions = {
                    from: 'cabien13072000@gmail.com',
                    to: result[0].email,
                    subject: 'Payment service',
                    text: `Thanks ${result[0].name} for the payment! Have a nice day !`
                };

                sendMail(mailOptions)
            }
        }
    })
    var sotienconlai = req.body.sodukhadung - req.body.total
    updateServiceByRoomName( req.data.username, sotienconlai, (err, result)=>{
        if (err) {
            res.send(err);
        } else {
            console.log(result)
            res.json({ msg: 'Thanh toan thanh cong !', sotienconlai: sotienconlai });
        }
    })


    //res.send({ data: req.data, body: req.body })
}

export const paymentServicebyStaff = (req, res) => {
    updateService(req.params.room_name, (err, result) => {
        if (err) {
            res.send(err);
        } else {
            res.json(result);
        }
    })
}

export const getServicFee = (req, res) => {
    selectServiceFee((err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}

export const getServicStatus = (req, res) => {
    selectServiceStatus((err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    });
}