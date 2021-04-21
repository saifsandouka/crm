const jwt = require('jsonwebtoken');

/* userToken { user_id: number } */

module.exports = function (req, res, next) {
   const [tokenType, userToken] = req.headers.authorization.split(' ');
   if (tokenType === 'Bearer') {
      try {
         const tokenData = jwt.verify(userToken, process.env.SECRET_KEY);
         if (tokenData.role !== 'Admin') {
            return res.status(403).send(ex);
         }
         return next();
      }
      catch (ex) {
         return res.status(401).send(ex);
      }
   }

   return res.status(401).send();
}