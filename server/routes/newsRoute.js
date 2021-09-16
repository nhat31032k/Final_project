import express from "express"


import { getAllNews, createNews, getNewsByID, delNewsByID } from "../controllers/news.js"

const router = express()

router.get('/', getAllNews)
router.post("/add", createNews)
router.get('/detail/:id', getNewsByID)
router.delete('/delete/:id', delNewsByID)


export default router