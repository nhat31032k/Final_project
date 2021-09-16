import express from "express"

import { getAllAsignment, createAssignment, getAssignmentByIDStaff, editAssignmentbyID, delAssignmentByID } from '../controllers/assignment.js'



const router = express()

router.get('/', getAllAsignment)
router.post("/add", createAssignment)
router.get('/detail/:id_staff', getAssignmentByIDStaff)
router.post('/edit/:id', editAssignmentbyID)
router.delete('/delete/:id', delAssignmentByID)


export default router