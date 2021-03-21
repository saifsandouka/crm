const express = require('express');
const cors = require('cors');
// variables
process.env.SECRET_KEY = 'abc';
process.env.prod = process.env.prod || false;

// configurations
const PORT = 14700;
const app = express();

app.use(express.json());
// if (!process.env.prod) {
app.use(cors());
// }

app.use(express.static('./client'));

// attributes / middlewares
const authorizationAttribute = require('./attributes/authorization.attr');
const quriesAttributes = require('./attributes/query.attribute');

// controllers
const loginCtrl = require('./controllers/login.ctrl');
const contactCtrl = require('./controllers/contact.ctrl');


app.use('/login', loginCtrl);

const middlewares = [
    authorizationAttribute,
    quriesAttributes.fieldsQuery
];

app.use('/contact', ...middlewares, contactCtrl);
app.use('/account', ...middlewares, contactCtrl);
app.use('/user', ...middlewares, contactCtrl);


app.listen(PORT, () => console.log(`server started at port ${PORT}`));