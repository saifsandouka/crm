-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 21, 2021 at 06:14 PM
-- Server version: 5.7.18
-- PHP Version: 7.3.24-(to be removed in future macOS)

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

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

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Account_Owner`, `Account_Id`, `Account_Name`, `Website`, `Employee`, `Industry`, `Account_Sit`, `Phone`, `Fax`, `Email`, `Street`, `Zip_Code`, `City`, `Country`) VALUES
(5, 1, 'account one', 'https://ny.web.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'My coffee customers', 'https://my.account.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Contact_Owner` int(11) NOT NULL,
  `Contact_Id` int(11) NOT NULL,
  `First_Name` varchar(40) COLLATE utf8_bin NOT NULL,
  `Last_Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Title` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Date_Of_Birth` datetime DEFAULT NULL,
  `Last_Login` datetime DEFAULT NULL,
  `Phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Fax` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Secondary_Email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Skype_ID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `Description` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `Street` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Zip_Code` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `City` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Country` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_owner` int(11) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `role` varchar(6) COLLATE utf8_bin NOT NULL,
  `profile` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `user_status` varchar(7) COLLATE utf8_bin NOT NULL,
  `pwd` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_owner`, `email`, `role`, `profile`, `user_status`, `pwd`) VALUES
(2, 8, 'user1@admin.com', 'Admin', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(5, 1, 'user2@email.com', 'member', NULL, 'active', '202cb962ac59075b964b07152d234b70'),
(6, NULL, 'user3@email.com', 'admin', NULL, 'active', '202cb962ac59075b964b07152d234b70'),
(7, NULL, 'user@email.com', 'admin', NULL, 'active', '202cb962ac59075b964b07152d234b70'),
(9, NULL, 'my@email.com', 'Admin', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(10, 9, 'user4@admin.com', 'Member', NULL, 'Freezed', '202cb962ac59075b964b07152d234b70'),
(11, 9, 'user2@admin.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(12, NULL, '123', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(13, NULL, 'mmm@gmail.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(14, 2, 'fff@gmail.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(15, 2, 'newuser@gmail.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(16, 2, 'newuser55@gmail.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(17, 2, 'member1@mem.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(18, NULL, 'member2@mem.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(19, NULL, 'owner22@mem.com', 'Owner', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
(20, 2, 'member55@mem.com', 'Member', NULL, 'Active', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Account_Id`),
  ADD KEY `account_user_owner_fk` (`Account_Owner`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Contact_Id`),
  ADD KEY `Contact_Owner` (`Contact_Owner`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Account_Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Contact_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_user_owner_fk` FOREIGN KEY (`Account_Owner`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_user_owner_fk` FOREIGN KEY (`Contact_Owner`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
