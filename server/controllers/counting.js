import { selectCountingService } from '../models/countingModel.js'

export const getCountingService = (req, res) => {
    selectCountingService((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

