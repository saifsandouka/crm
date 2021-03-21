import { User, account, contact } from './index';

function create(type, args) {
    switch (type) {
        case type === 'user': {
            return new User();
        }
    }
}

module.exports = create;