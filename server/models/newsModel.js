import db from '../config/database.js'

export const insertNews = (data, result) => {
    db.query("INSERT INTO news SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}

export const selectAllNews = (result) => {
    db.query("SELECT * FROM news ORDER BY id desc", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectNewsByID = (id, result) => {
    db.query("SELECT * FROM news WHERE id = ?", id, (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const deleteNewsByID = (id, result) => {
    db.query("DELETE FROM news WHERE id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}


