const db = require('./../db/db');

function usersReport(ownerid, callback) {
   const sql = `SELECT 
   child.user_id, 
   parent.email as 'owner email', 
   child.email as 'user email', 
   child.role, 
   child.profile, 
   child.user_status 
   FROM users child
   JOIN users parent ON child.user_owner = parent.user_id
   WHERE child.user_owner = ?;`;
   db.performQuery(sql, [ownerid], function (err, res) {
      if (res && res.length == 0) {
         return callback("No results");
      }
      callback(err, res);
   })

}

module.exports.usersReport = usersReport;