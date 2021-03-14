const express = require('express');
const db = require('./db/db');
const defaults = {
    endpoint: '',
    middlewares: {
        get: null,
        post: null
    }
}

const controllers = {};

function getController(ctrlName) {
    return controllers[ctrlName];
}
/**
 * 
 * @param {{endpoint: string, tableName: string, middlewares: {get: [{}], post: [{}]}}} settings 
 */
function crudFactory(_settings) {
    if (controllers[_settings.tableName]) {
        return;
    }
    const crud = express.Router();

    const settings = { ...Object.assign(defaults, _settings) };

    crud.get(settings.endpoint, function (req, res) {
        db.getTable(settings.tableName).read(function (err, data) {
            if (err) return res.status(500).send();

            res.json(data);
        });
    });


    crud.get(`${settings.endpoint}/:id`, function (req, res) {
        const prediction = e => e.id === +req.params.id;

        db.getTable(settings.tableName).filter(prediction, function (err, data) {
            if (err) return res.status(500).send();

            res.json(data);
        });
    });

    crud.post(settings.endpoint, function (req, res) {
        const postData = req.body;
        db.getTable(settings.tableName).create(postData, function (err, data) {
            if (err) return res.status(500).send(err);

            res.status(201).json(data);
        });
    });

    crud.put(settings.endpoint, function (req, res) {
        const postData = req.body;
        db.getTable(settings.tableName).update(postData, function (err, success) {
            if (err) return res.status(500).send();

            res.status(200).json(success);
        });
    });

    crud.delete(settings.endpoint, function (req, res) {
        const { id } = req.query;
        db.getTable(settings.tableName).remove(id, function (err, data) {
            if (err) return res.status(500).send();

            res.status(204).send();
        });
    });
    crud.tableName = settings.tableName;
    controllers[settings.tableName] = crud;

}

module.exports = {
    crudFactory,
    getController
}