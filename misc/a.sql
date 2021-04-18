/*
1.
-	Insert admin user
-	User entering to login screen with email  XXX and pwd YYY.
-	The user in now logged, you have he's User_ID.
-	The user enters the screen "Users I own", you should bring all the users that he own.
-	The user update his employee is "freezed".*/
SET @adminemail = 'my@email.com';
SET @adminpwd = MD5('123');

INSERT INTO `users` (`email`, `pwd`, `role`, `user_status`) 
   VALUES (@adminemail, @adminpwd, 'Admin', 'Active');

SET @uid = (SELECT user_id from `users` WHERE `email` like @adminemail AND `pwd` like @adminpwd);

INSERT INTO `users` (`email`, `pwd`, `role`, `user_status`, `user_owner`) 
   VALUES ('user1@admin.com', MD5('123'), 'Member', 'Active', @uid);

INSERT INTO `users` (`email`, `pwd`, `role`, `user_status`, `user_owner`) 
   VALUES ('user2@admin.com', MD5('123'), 'Member', 'Active', @uid);


SELECT * FROM `users` WHERE `user_owner` = @uid;

SET @memberid = (SELECT user_id FROM `users` WHERE `user_owner` = @uid LIMIT 1);

UPDATE `users` SET `user_status` = 'Freezed' WHERE `user_id` = @memberid AND `user_owner` = @uid;
/*

2.
-	The frozen employee try to login 

-	(TBD) The users tries to retrieve he's contacts.

3. 
-	A user that owned by the Admin from step 1 login to the system
-	He creates a new Contact.
-	(TBD) The admin from step 1 wants to see all he's contact and he's workers contacts.

4. 
-	The admin from step 1 enters the screen "My accounts".
-	He wants to delete the account name "test account".

*/