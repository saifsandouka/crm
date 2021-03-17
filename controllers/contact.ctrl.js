const express = require('express');
const contactsDb = require('./../db/db').contacts;
const Contact = require('./../models/contact');

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
    try {
        const newContact = new Contact({
            Contact_Id: Math.floor(Math.random() * 1000000),
            Contact_Owner: req.User_Id,
            ...req.body
        });

        contactsDb.push(newContact);
        res.status(201).send(newContact);
    }
    catch (ex) {
        res.status(400).send(ex.message);
    }
})

module.exports = router;