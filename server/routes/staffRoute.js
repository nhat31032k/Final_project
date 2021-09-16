import express from "express"

import { createStaff, getAllStaff, delStaffByID, editStaff, getStaffByID, getStaffByIDAccount, getSalaryByID } from '../controllers/staff.js'

const router = express()

router.get("/", getAllStaff)
router.post('/add', createStaff)
router.post('/edit/:id_staff', editStaff)
router.delete("/delete/:id_staff", delStaffByID)
router.get("/:id_staff", getStaffByID)
router.get("/info/:id_account", getStaffByIDAccount)
router.get("/salary/:id_staff", getSalaryByID)

export default router