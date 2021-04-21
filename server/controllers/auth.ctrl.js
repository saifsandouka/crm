const express = require('express');
const jwt = require('jsonwebtoken');

const userRepository = require('./../repositories/user.repository');

const router = express.Router();

router.post('/login', function (req, res) {
   const { user, pass } = req.body;
   userRepository.getByLogin(user, pass, function (err, theUser) {
      if (theUser) {
         const token = jwt.sign({
            user_id: theUser.user_id,
            role: theUser.role
         }, process.env.SECRET_KEY, {
            expiresIn: '5h'
         });
         return res.send(token);
      } else {
         res.status(401).send();
      }
   });
})


router.post('/register', function (req, res) {
   const { user, pass } = req.body;
   userRepository.add({
      email: user,
      pass: pass,
      ownerid: req.user_id
   }, function (err, success) {
      if (err || !success) {
         return res.status(400).send(err)
      }
      res.status(201).send();
   });

})
module.exports = router;