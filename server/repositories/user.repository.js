const uuid = require('uuid');
const md5 = require('md5');
const db = require('./../db/db');

function getById(id, callback) {
   db.performSelect('SELECT * FROM `users` WHERE `User_Id` = ?', [id], function (err, res) {
      if (res.length == 1) {
         callback(res[0]);
      } else callback('no user');
   });
}

function getByLogin(email, pass, callback) {
   db.performSelect('SELECT * FROM `users` WHERE `email` = ? AND pwd = ?', [email, md5(pass)], function (err, res) {
      callback(err, res.length == 1 ? res[0] : null);
   });
}

function getOwnedUsers(id, callback) {
   db.performSelect('SELECT * FROM `users` WHERE `user_owner` = ?', [id], function (err, res) {
      callback(err, res);
   });
}
function getOwned(id, callback) {
   getById(id, function (err, res) {
      if (err) return callback(err);

      if (res.role === 'Admin') {
         getOwnedUsers(res.id, function (err2, res2) {
            callback(err2, res2);
         })
      } else callback(null, null);
   });
}

function add(objModel) {
   if (usersDb.find(u => u.email === objModel.email)) {
      throw new Error('email already taken!');
   }
   const newUser = {
      email: user,
      pass: md5(pass),
      User_Id: uuid.v4()
   };
   usersDb.push(newUser);
   return newUser;
}

module.exports.getById = getById;
module.exports.getOwned = getOwned;
module.exports.getByLogin = getByLogin;
module.exports.add = add;