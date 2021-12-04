import db from '../config/database.js'

export const selectCountingService = (result) => {
    db.query("SELECT SUM(service.dien) as dien, SUM(service.nuoc) as nuoc, SUM(service.internet) as internet, SUM(service.giuxe) as giuxe FROM service", (err, results) => {
        if (err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
}