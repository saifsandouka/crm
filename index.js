const express = require('express');

// variables
process.env.SECRET_KEY = 'abc';

// attributes / middlewares
const authorizationAttribute = require('./attributes/authorization.attr');

// controllers
const loginCtrl = require('./controllers/login.ctrl');
const contactCtrl = require('./controllers/contact.ctrl');

// configurations
const PORT = 14700;
const app = express();

app.use(express.json());

app.use('/login', loginCtrl);
app.use('/contact', authorizationAttribute, contactCtrl);
app.use('/account', authorizationAttribute, contactCtrl);
app.use('/user', authorizationAttribute, contactCtrl);


app.listen(PORT, () => console.log(`server started at port ${PORT}`));