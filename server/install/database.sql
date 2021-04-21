SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `account` (
  `Account_Owner` int(11) NOT NULL,
  `Account_Id` int(20) NOT NULL,
  `Account_Name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Website` varchar(50) COLLATE utf8_bin NOT NULL,
  `Employee` int(50) DEFAULT NULL,
  `Industry` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Account_Sit` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Fax` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Street` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Zip_Code` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `City` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Country` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;



INSERT INTO `account` (`Account_Owner`, `Account_Id`, `Account_Name`, `Website`, `Employee`, `Industry`, `Account_Sit`, `Phone`, `Fax`, `Email`, `Street`, `Zip_Code`, `City`, `Country`) VALUES
(5, 1, 'account one', 'https://ny.web.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'My coffee customers', 'https://my.account.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);



CREATE TABLE `contact` (
  `Contact_Owner` int(11) NOT NULL,
  `Contact_Id` int(11) NOT NULL,
  `First_Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Last_Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Title` varchar(100) COLLATE utf8_bin NOT NULL,
  `Date_Of_Birth` datetime DEFAULT NULL,
  `Last_Login` datetime NOT NULL,
  `Phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `Mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Fax` varchar(20) COLLATE utf8_bin NOT NULL,
  `Email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Secondary_Email` varchar(50) COLLATE utf8_bin NOT NULL,
  `Skype_ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `Description` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Street` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Zip_Code` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `City` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Country` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_owner` int(11) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `role` varchar(6) COLLATE utf8_bin NOT NULL,
  `profile` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `user_status` varchar(7) COLLATE utf8_bin NOT NULL,
  `pwd` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


INSERT INTO `users` (`user_id`, `user_owner`, `email`, `role`, `profile`, `user_status`, `pwd`) VALUES
(2, 8, 'user1@admin.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(5, 1, 'user2@email.com', 'member', NULL, 'active', '202cb962ac59075b964b07152d234b70'),
(6, NULL, 'user3@email.com', 'admin', NULL, 'active', '202cb962ac59075b964b07152d234b70'),
(7, NULL, 'user@email.com', 'admin', NULL, 'active', '202cb962ac59075b964b07152d234b70'),
(9, NULL, 'my@email.com', 'Admin', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(10, 9, 'user4@admin.com', 'Member', NULL, 'Freezed', '202cb962ac59075b964b07152d234b70'),
(11, 9, 'user2@admin.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(12, NULL, '123', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(13, NULL, 'mmm@gmail.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(14, 2, 'fff@gmail.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70');

ALTER TABLE `account`
  ADD PRIMARY KEY (`Account_Id`),
  ADD KEY `account_user_owner_fk` (`Account_Owner`);

ALTER TABLE `contact`
  ADD PRIMARY KEY (`Contact_Id`),
  ADD KEY `Contact_Owner` (`Contact_Owner`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `account`
  MODIFY `Account_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;


ALTER TABLE `account`
  ADD CONSTRAINT `account_user_owner_fk` FOREIGN KEY (`Account_Owner`) REFERENCES `users` (`user_id`);

ALTER TABLE `contact`
  ADD CONSTRAINT `contact_user_owner_fk` FOREIGN KEY (`Contact_Owner`) REFERENCES `users` (`user_id`);
COMMIT;
