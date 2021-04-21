const express = require('express');
const Contact = require('./../models/contact');
const userRepository = require('./../repositories/user.repository');

const router = express.Router();

router.get('/:id', function (req, res) {
   const id = +req.params.id;
   const contact = contactsDb.find(c => c.Contact_Id === id);
   if (contact) {
      if (contact.Contact_Owner !== req.user_id)
         return res.status(403).send();

      if (req.customQueryField) {
         const ret = {};
         for (let prop in contact) {
            if (req.customQueryField.indexOf(prop) > -1)
               ret[prop] = contact[prop];
         }
         return res.send(ret);
      } else {
         res.send(contact);
      }
   }
})

router.get('/', function (req, res) {
   const getOwnedUsers = userRepository.getOwned(req.user_id);
   let contacts = [];
   if (getOwnedUsers) {
      const ownedUsersIds = getOwnedUsers.map(u => u.user_id);
      contacts = contactsDb.filter(c => ownedUsersIds.indexOf(c.Contact_Owner) > -1);
   }

   contacts = contacts.concat(...contactsDb.filter(c => c.Contact_Owner === req.user_id));

   res.send(contacts);
})

router.post('/', function (req, res) {
   try {
      const newContact = new Contact({
         Contact_Id: Math.floor(Math.random() * 1000000),
         Contact_Owner: req.user_id,
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