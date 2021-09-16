import express from "express"


import {getAllRoom, createRoom, editRoom, deleteRoom, getRoomByID, getAllRoomEmpty} from "../controllers/room.js"

const router = express()

router.get("/", getAllRoom)
router.get("/empty", getAllRoomEmpty)
router.post("/add", createRoom)
router.post("/edit", editRoom)
router.delete('/delete/:room_name', deleteRoom)
router.get("/:ID", getRoomByID)

export default router