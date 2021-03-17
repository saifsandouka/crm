const express = require('express');
const contactsDb = require('./../db/db').contacts;

const router = express.Router();

router.get('/:id', function (req, res) {
    const id = +req.params.id;
    const contact = contactsDb.find(c => c.Contact_Id === id);
    if (contact) {
        if (contact.Contact_Owner !== req.User_Id)
            return res.status(403).send();

        res.send(contact);
    }
})

router.get('/', function (req, res) {
    const contact = contactsDb.filter(c => c.Contact_Owner === req.User_Id);
    res.send(contact);
})

router.post('/', function (req, res) {
    const newContact = {
        Contact_Id: Math.floor(Math.random() * 1000000),
        Contact_Owner: req.User_Id,
        First_Name: req.body.First_Name,
        Last_Name: req.body.Last_Name
    };
    contactsDb.push(newContact);
    res.status(201).send(newContact);
})

module.exports = router;