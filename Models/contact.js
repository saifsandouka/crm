function Contact() {
     /**
     * Contact id
     *
     * @type {int}
     */
    this.Contact_Id = null;
    /**
     * First name of the contact.
     *
     * @type {string}
     */
    this.First_Name = null;
    /**
     * The job position of the contact.
     *
     * @type {string}
     */
    this.Title = null;
    /**
     * Last name of the contact, this field is mandatory.
     *
     * @type {string}
     */
    this.Last_Name = null;
    /**
     * Specify the birthday of the contact to send greetings for a better relationship.
     *
     * @type {Date}
     */
    this.Date_Of_Birth = null;
    /**
     * Last user login datetime
     *
     * @type {Date}
     */
    this.Last_Login = null;
    /**
     * Phone number of the contact.
     *
     * @type {string}
     */
    this.Phone = null;
    /**
     * Modile number of the contact.
     *
     * @type {string}
     */
    this.Mobile = null;
    /**
     * Fax number of the contact.
     *
     * @type {string}
     */
    this.Fax = null;
    /**
     * Email address of the contact.
     *
     * @type {string}
     */
    this.Email = null;
    /**
     * Secondary email address of the contact.
     *
     * @type {string}
     */
    this.Secondary_Email = null;
    /**
     * Skype ID of the contact. Currently skype ID
     * can be in the range of 6 to 32 characters.
     *
     * @type {string}
     */
    this.Skype_ID = null;
    /**
     * Other details about the contact.
     *
     * @type {string}
     */
    this.Description = null;
    /**
     * Specify the primary address of the contact.
     *
     * Divided into 4 parts:
     *
     *     @type {string}
     *     @type {string}
     *     @type {string}
     *     @type {string}
     */
    this.Street = null;
    this.City = null;
    this.Zip_Code = null;
    this.Country = null;
}
