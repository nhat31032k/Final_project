import express from "express";

import { getCountingService } from '../controllers/counting.js'

const router = express()

router.get("/service", getCountingService)

export default router;
