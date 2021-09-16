import express from "express"


import {createPerson, getAllPerson, getAllPersonByRoomName, delPersonByID, delPersonByRoomName, editPerson, getPersonAndUserById, getPersonUserContractById, getAllContracts, editContract, delContractByID, addContract } from "../controllers/person.js"

const router = express()

router.get('/', getAllPerson)
router.get('/contracts', getAllContracts)
router.get('/:room_name', getAllPersonByRoomName)
router.post("/add", createPerson)
router.delete('/delete/:ID_person', delPersonByID)
router.delete('/delete/room/:room_name', delPersonByRoomName)
router.post('/edit/:ID_person', editPerson)
router.get('/person-user/:id', getPersonAndUserById)
router.get('/person-user-contract/:id', getPersonUserContractById)
router.post('/edit-contract/:id', editContract)
router.delete('/delete/contract/:id', delContractByID)
router.post('/add-contract', addContract)

export default router