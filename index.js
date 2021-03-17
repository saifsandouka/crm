const express = require('express');

// controllers
const contactCtrl = require('./controllers/contact.ctrl');

// configurations
const PORT = 14700;
const app = express();

app.use(express.json());

app.use('/company', company);


app.listen(PORT, () => console.log(`server started at port ${PORT}`));