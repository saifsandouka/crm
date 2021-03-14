const express = require('express');
const db = require('./db/db');
const crud = require('./crud');

// configurations
const PORT = 14700;
const app = express();

app.use(express.json());

// my modules imports
crud.crudFactory({
    tableName: db.dbFactory('contact')
});
crud.crudFactory({
    tableName: db.dbFactory('company')
});
crud.crudFactory({
    tableName: db.dbFactory('quote')
});

const contact = crud.getController('contact');
const company = crud.getController('company');
const quote = crud.getController('quote');

app.use('/contact', contact);
app.use('/company', company);
app.use('/quote', quote);


app.listen(PORT, () => console.log(`server started at port ${PORT}`));