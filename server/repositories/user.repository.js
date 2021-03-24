const usersDb = require('./../db/db').users;

function getById(id) {
    return usersDb.find(u => u.User_Id === id);
}

function getOwned(id) {
    if (getById(id).role === 'admin') {
        return usersDb.filter(u => u.User_Owner === id);
    }
    return null;
}

module.exports.getById = getById;
module.exports.getOwned = getOwned;