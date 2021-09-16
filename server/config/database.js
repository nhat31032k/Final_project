import mysql from 'mysql2'

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'final_project_software_engineer'
})

export default db;