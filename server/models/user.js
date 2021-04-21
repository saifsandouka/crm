
function User() {
   /**
    * The user id that own the contact
    *
    * @type {int}
    */
   this.user_owner = null;
   /**
    * Specify the user id.
    *
    * @type {int}
    */
   this.user_id = null;
   /**
    * Email of the user.
    *
    * @type {string}
    */
   this.email = null;
   /**
    * User's role.
    *
    * @type {('Admin' | 'Member')}
    */
   this.role = null;
   /**
    * User's profile.
    *
    * @type {string}
    */
   this.profile = null;
   /**
    * Status of user.
    *
    * @type {('Active' | 'Deleted' | 'Freezed')}
    */
   this.user_status = null;
   /**
    * User hashed password
    * @type {string}
    */
   this.pwd = null;
}

module.exports = User;