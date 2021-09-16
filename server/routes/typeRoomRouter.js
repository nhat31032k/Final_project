import express from "express"

import { getTypeRoomByID } from "../controllers/typeroom.js"

const router = express()

router.get("/:id_type_room", getTypeRoomByID)

export default router