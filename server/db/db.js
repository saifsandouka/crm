const md5 = require('md5');

module.exports = {
    contacts: [{
        Contact_Owner: 1,
        Contact_Id: 1,
        First_Name: 'Contact 1',
        Last_Name: 'Last contact 1'
    }, {
        Contact_Owner: 2,
        Contact_Id: 2,
        First_Name: 'Contact 2',
        Last_Name: 'Last contact 2'
    }, {
        Contact_Owner: 3,
        Contact_Id: 3,
        First_Name: 'Contact 3',
        Last_Name: 'Last contact 3'
    }],
    users: [
        {
            User_Owner: null,
            User_Id: 1,
            role: 'Admin',
            email: '1@users.com',
            pass: md5('abc')
        },
        {
            User_Owner: 1,
            User_Id: 2,
            role: 'User',
            email: '2@users.com',
            pass: md5('abc')
        },
        {
            User_Owner: 1,
            User_Id: 3,
            role: 'User',
            email: '3@users.com',
            pass: md5('abc')
        }
    ],
    accounts: [],
}