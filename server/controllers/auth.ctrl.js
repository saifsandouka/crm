const express = require('express');
const jwt = require('jsonwebtoken');
const uuid = require('uuid');
const md5 = require('md5');

const router = express.Router();

const users = [
    {
        name: 'abc',
        pass: md5('abc'),
        User_Id: 1
    },
    {
        name: 'cde',
        pass: 'cde',
        User_Id: 2
    }
]

router.post('/login', function (req, res) {
    const { user, pass } = req.body;
    const theUser = users.find(u => u.name === user && u.pass === md5(pass));
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
    if (users.find(u => u.name === user)) {
        return res.status(400).send('username already taken!');
    }
    users.push({
        name: user,
        pass: md5(pass),
        User_Id: uuid.v4()
    });
    res.status(201).send();
})
module.exports = router;