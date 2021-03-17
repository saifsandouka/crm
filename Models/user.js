
function Users() {
    /**
     * Specify the user id.
     *
     * @type {int}
     */
    this.User_Id = null;
    /**
     * Email of the user.
     *
     * @type {string}
     */
    this.email = null;
    /**
     * User's role.
     *
     * @type {string}
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
    this.status = null;
}