const express = require('express');

// variables
process.env.SECRET_KEY = 'abc';

// attributes / middlewares
const authorizationAttribute = require('./attributes/authorization.attr');
const fieldsQuery = require('./attributes/query.attribute').fieldsQuery;

// controllers
const loginCtrl = require('./controllers/login.ctrl');
const contactCtrl = require('./controllers/contact.ctrl');

// configurations
const PORT = 14700;
const app = express();

app.use(express.json());

app.use('/login', loginCtrl);

const middlewares = [
    authorizationAttribute,
    fieldsQuery
];

app.use('/contact', ...middlewares, contactCtrl);
app.use('/account', ...middlewares, contactCtrl);
app.use('/user', ...middlewares, contactCtrl);


app.listen(PORT, () => console.log(`server started at port ${PORT}`));