import { insertNews, selectAllNews, selectNewsByID, deleteNewsByID } from '../models/newsModel.js'

export const createNews = (req, res) => {
    const data = req.body
    insertNews(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json({code: 0, message: `Thêm ${data.title} thành công`});
        }
    });
}

export const getAllNews = (req, res) => {
    selectAllNews((err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

export const getNewsByID = (req, res) => {
    let id = req.params.id
    selectNewsByID(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}

export const delNewsByID = (req, res) => {
    const id = req.params.id;
    deleteNewsByID(id, (err, results) => {
        if (err){
            res.send(err);
        }else{
            console.log(results)
            res.json({code: 0, message: `Xóa ${id} thành công`});
        }
    });
}
