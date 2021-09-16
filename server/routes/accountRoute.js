import express from "express";

import { createAccount, getAllAccount, editAccount, delAccountByUsername, checkUsername, authentication, getAccountUser } from '../controllers/account.js'

const router = express()

router.get("/", getAllAccount)
router.post("/signup", createAccount)
router.post("/auth", authentication)

router.post("/checkusername", checkUsername)
router.post("/edit/:username", editAccount)
router.delete("/delete/:username",delAccountByUsername)
router.get("/user", getAccountUser)

export default router;
