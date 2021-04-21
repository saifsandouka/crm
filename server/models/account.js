
function Account() {
    /**
     * The user id that own the account
     *
     * @type {int}
     */
    this.Account_Owner = null;
    /**
     * Specify the account id.
     *
     * @type {int}
     */
    this.Account_Id = null;
    /**
     * Specify the company name. This field is mandatory.
     *
     * @type {string}
     */
    this.Account_Name = null;
    /**
     * The URL of the company's Web site.
     *
     * @type {string}
     */
    this.Website = null;
    /**
     * The number of employees in account's company.
     *
     * @type {int}
     */
    this.Employees = null;
    /**
     * The type of industry of the company.
     * can be one of the values
     * @type {(
            "-None-"|
            "ASP (Application Service Provider)"|
            "Data\/Telecom OEM"|
            "ERP (Enterprise Resource Planning)"|
            "Government\/Military"|
            "Large Enterprise"|
            "ManagementISV"|
            "MSP (Management Service Provider)"|
            "Network Equipment Enterprise"|
            "Non-management ISV"|
            "Optical Networking"|
            "Service Provider"|
            "Small\/Medium Enterprise"|
            "Storage Equipment"|
            "Storage Service Provider"|
            "Systems Integrator"|
            "Wireless Industry"|
            "Communications"|
            "Consulting"|
            "Education"|
            "Financial Services"|
            "Manufacturing"|
            "Real Estate"|
            "Technology"
        )}
     */
    this.Industry = null;
    /**
     * The name of the account’s location, for example, Headquarters or London. Up to 80 characters are allowed in this field.
     *
     * @type {string}
     */
    this.Account_Site = null;
    /**
     * The phone number of the account.
     *
     * @type {string}
     */
    this.Phone = null;
    /**
     * The fax number of the account.
     *
     * @type {string}
     */
    this.Fax = null;
    /**
     * The official E-mail address of the account.
     *
     * @type {string}
     */
    this.Email = null;
    /**
     * The address of the account.
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

module.exports = Account;