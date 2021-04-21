var ncp = require('ncp').ncp;

ncp("./build", "./../server/client", function (err) {
   if (err) {
      return console.error(err);
   }
   console.log('done!');
});