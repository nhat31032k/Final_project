import express from "express";
// import cors
import cors from "cors";

import session from 'express-session'


import accountRouter from './routes/accountRoute.js'
import assingmentRoute from './routes/assignmentRoute.js'
import newsRoute from './routes/newsRoute.js'
import roomRoute from './routes/roomRoute.js'
import personRoute from './routes/personRoute.js'
import serviceRoute from './routes/serviceRoute.js'
import staffRoute from './routes/staffRoute.js'
import countingRoute from './routes/countingRouter.js'
import typeRoomRoute from './routes/typeRoomRouter.js'

const app = express();

app.use(express.json())
app.use(cors());

app.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}))


app.use("/account", accountRouter)
app.use("/assignment", assingmentRoute)
app.use("/news", newsRoute)
app.use('/room', roomRoute)
app.use('/person', personRoute)
app.use('/service', serviceRoute)
app.use('/staff', staffRoute)
app.use('/counting', countingRoute)
app.use('/typeroom', typeRoomRoute)



app.listen(5050, () => console.log('App listening on port 5050'));