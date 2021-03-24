const express = require('express');
const jwt = require('jsonwebtoken');

const userRepository = require('./../repositories/user.repository');

const router = express.Router();

router.post('/login', function (req, res) {
    const { user, pass } = req.body;
    const theUser = userRepository.getByLogin(user, pass);
    if (theUser) {
        const token = jwt.sign({ User_Id: theUser.User_Id }, process.env.SECRET_KEY, {
            expiresIn: '5h'
        });
        return res.send(token);
    } else {
        res.status(401).send();
    }
})


router.post('/register', function (req, res) {
    const { user, pass } = req.body;
    try {
        userRepository.add({
            email: user,
            pass: pass
        });
        res.status(201).send();
    } catch (ex) {
        return res.status(400).send(ex)
    }
})
module.exports = router;