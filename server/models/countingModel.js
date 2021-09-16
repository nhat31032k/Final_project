import db from '../config/database.js'

export const selectCountingService = (result) => {
    db.query("SELECT SUM(service.dien) as dien, SUM(service.nuoc) as nuoc, SUM(service.internet) as internet, SUM(service.giuxe) as giuxe FROM service", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}
/*
export const selectCountingPerson = (result) => {
    db.query("SELECT SUM(dien) FROM service", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectCountingPerson = (result) => {
    db.query("SELECT SUM(nuoc) FROM service", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectCountingPerson = (result) => {
    db.query("SELECT SUM(internet) FROM service", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}

export const selectCountingPerson = (result) => {
    db.query("SELECT SUM(rac) FROM service", (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}*/

//    db.query("SELECT COUNT(person.id), COUNT(service.dien), COUNT(service.nuoc), COUNT(service.internet), COUNT(service.rac) FROM person, service", (err, results) => {             
