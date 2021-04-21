const express = require('express');
const os = require('os');
const reportRepository = require('./../repositories/report.repository');

const router = express.Router();

router.get('/user-report', function (req, res) {
   reportRepository.usersReport(req.user_id, function (queryErr, queryRes) {
      if (queryErr) {
         return res.status(400).send(queryErr);
      }

      let file = Object.entries(queryRes[0]).map(a => a[0]) + os.EOL; // get headings
      file += queryRes.map(u => Object.entries(u).map(a => a[1]).join(',')).join(os.EOL);
      res.attachment('report.csv')
      res.type('csv')
      res.send(file);
   })

})

module.exports = router;