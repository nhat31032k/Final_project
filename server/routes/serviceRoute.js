import express from "express"


import { getAllService, createService, getServiceByRoomName, delServiceByID, auth, paymenService, paymentServicebyStaff, getServicFee, getServicStatus }from "../controllers/service.js"

const router = express()

router.get('/', getAllService)
router.post("/add", createService)
router.get('/detail/:room_name', getServiceByRoomName)
router.delete('/delete/:id', delServiceByID)
router.post('/payment', auth, paymenService)
router.post('/payment/:room_name', paymentServicebyStaff)
router.get('/fee', getServicFee)
router.get('/status', getServicStatus)

export default router