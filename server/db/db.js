const mysql = require('mysql');

var connection = mysql.createConnection({
   host: '127.0.0.1',
   user: 'root',
   password: '',
   database: 'crm'
});

connection.connect(function (err) {
   if (err) console.log(err);
});

function performSelect(query, values, callback) {
   connection.query(query, values, function (err, results) {
      callback(err, results);
   });
}

function performInsert() {
   connection.query(query, values, function (err, results) {
      callback(err, results);
   });
}

function performDelete() {

}

function performUpdate() {

}

module.exports = {
   performSelect,
   performInsert,
   performUpdate,
   performDelete
}