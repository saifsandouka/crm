# CRM Full stack project
## Run the project:
- inside client folder: `npm i` and after `npm run build`
- inside server folder: `npm i` and after `npm start` to run the server
- 
## Important
-   Every endpoint should have he's own file exported with `express.Router()`.
-	All the endpoint controller should be inside the same directory
-	The API supports JSON format in request and response


# The API
A record is an entity which stores all the combined information of a particular contact or company.


## Purpose
To get the list of available records from a module.


## Endpoints
* `GET /{module_api_name}`
* `GET /{module_api_name}/{record_id}`
* `POST /{module_api_name}`
* `PUT /{module_api_name}/{record_id}`
* `DELETE /{module_api_name}/{record_id}`


## Request URL
http://localhost:4444/crm/v1/{module_api_name}

http://localhost:4444/crm/v1/{module_api_name}/{record_id}


## The available modules:
-	Accounts
-	Contacts
-	Users


## Query Parameters

### Fields (string, optional)
To retrieve specific field values.

*example*: http://localhost:4444/crm/v1/contact/1?fields=Last_Name,Email 

**Possible values**: Comma separated field API names. Example: Last_Name,Email


### Ids (string, optional)
To retrieve specific records based on their unique ID.

*example*: http://localhost:4444/crm/v1/contact?ids=1,2,3

**Possible values**: Valid unique IDs of records. Example:  415,086,800, 1,194,419


### Page (integer, optional)
To get the list of records from the respective pages.

*example*: http://localhost:4444/crm/v1/contact?page=2

**Possible values**: Positive Integer values only.

*Default value for page is 1.*


### per_page (integer, optional)
To get the list of records available per page.

*example*: http://localhost:4444/crm/v1/contact?per_page=20

**Possible values**: Positive Integer values only.

*Default value for page is 10.*, *Max value for page is 200.*


## HTTP Statuses
* INVALID_MODULE HTTP **400**
The module name given seems to be invalid

Resolution: You have specified an invalid module name 


* INVALID_URL_PATTERN HTTP **404**
Please check if the URL trying to access is a correct one

Resolution: The request URL specified is incorrect. Specify a valid request URL. Refer to request URL section above.


* NO_PERMISSION HTTP **403**
Permission denied to read

*Resolution*: The user does not have permission to read records data.


* INTERNAL_ERROR HTTP **500**
Internal Server Error

*Resolution*: Unexpected and unhandled exception in Server.


* INVALID_REQUEST_METHOD HTTP **400**
The http request method type is not a valid one

*Resolution*: You have specified an invalid HTTP method to access the API URL. Specify a valid request method. Refer to endpoints section above.


* PATTERN_NOT_MATCHED HTTP **400**
Please check whether the input values are correct

*Resolution*: The value specified for one of the parameters is incorrect. Refer to parameters section above and specify valid parameter values.




# The objects
[Contact object function](Models/contact.js), [Account object function](Models/account.js), [User object function](Models/user.js)



# Server api response examples

[Contact example responses](example-responses/contact.json), [Account example responses](example-responses/account.json), [User example responses](example-responses/user.json)



##
- Create for each module a controller.
- Implement the `get` operation
- Implemet the `post` operation. (Include validations)

# The database
Every object should have it's own file that cotains the the data. all the files should sit under the same directory
for example: `db/contacts.json`, `db/accounts.json`

# Authentication

## login
POST /login  -body { "user": "abc", "pass": "abc"}
s
