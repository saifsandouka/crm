-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2021 at 06:11 PM
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
  `Street` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `Zip_Code` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `City` varchar(70) COLLATE utf8_bin DEFAULT NULL,
  `Country` varchar(35) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Contact_Owner`, `Contact_Id`, `First_Name`, `Last_Name`, `Title`, `Date_Of_Birth`, `Last_Login`, `Phone`, `Mobile`, `Fax`, `Email`, `Secondary_Email`, `Skype_ID`, `Description`, `Street`, `Zip_Code`, `City`, `Country`) VALUES
(9, 1, 'Haya', 'Lopez', 'Advertising Sales Agent', '1993-07-11 19:35:17', NULL, '02-9021014', '054-3276527', NULL, 'HayaLopez59@yahoo.com', NULL, '43628385', NULL, 'College Avenue', NULL, 'Des Moines', 'Kosovo'),
(6, 2, 'Prisha', 'Dickens', 'Attendant', '1997-09-05 10:56:43', NULL, '03-6651793', '058-5260151', NULL, 'PrishaDickens78@walla.com', NULL, '94249603', NULL, 'Clark Street', NULL, 'Albuquerque', 'Mexico'),
(6, 3, 'Jessica', 'Britt', 'Audio and Video Equipment Technician', '1982-09-27 12:40:28', NULL, '08-6894806', '054-5477168', NULL, 'JessicaBritt88@yahoo.com', NULL, '9351164', NULL, 'Beech Street', NULL, 'Corona', 'Mali'),
(6, 4, 'Kiara', 'Webster', 'Baker', '1985-06-18 12:35:49', NULL, '02-1319285', '052-9691028', NULL, 'KiaraWebster35@yahoo.com', NULL, '38846819', NULL, 'Hillcrest Drive', NULL, 'Anaheim', 'El Salvador'),
(2, 5, 'Jessica', 'Britt', 'Appraiser', '1985-09-11 08:47:59', NULL, '04-1665712', '050-2241237', NULL, 'JessicaBritt39@gmail.com', NULL, '76183527', NULL, 'Woodland Avenue', NULL, 'Baton Rouge', 'Bhutan'),
(19, 6, 'Rose', 'Barr', 'Captain', '1975-09-19 14:41:47', NULL, '09-9240489', '054-3281499', NULL, 'RoseBarr17@walla.com', NULL, '76598754', NULL, 'Euclid Avenue', NULL, 'Augusta', 'Maldives'),
(6, 7, 'Chandler', 'Little', 'Busines', '1974-01-21 07:42:22', NULL, '03-2432558', '058-1732303', NULL, 'ChandlerLittle88@walla.com', NULL, '248280', NULL, 'Career/Technical Education Teacher', NULL, 'Gilbert', 'Burundi'),
(6, 8, 'Rajveer', 'Tillman', 'Bartender', '1967-10-16 14:39:28', NULL, '02-9185674', '050-9161669', NULL, 'RajveerTillman40@walla.com', NULL, '90168318', NULL, 'Captain', NULL, 'Boulder', 'Cuba'),
(7, 9, 'Mira', 'Peck', 'Actor', '1983-03-29 11:20:09', NULL, '03-5587487', '058-8631169', NULL, 'MiraPeck3@outlook.com', NULL, '33598624', NULL, 'William Street', NULL, 'Abilene', 'Argentina'),
(2, 10, 'Jessica', 'Britt', 'Advertising Sales Agent', '1975-07-22 21:34:31', NULL, '02-6610146', '050-3020390', NULL, 'JessicaBritt51@gmail.com', NULL, '18683168', NULL, '2nd Street East', NULL, 'Davidson County', 'Congo {Democratic Rep}'),
(19, 11, 'Kasey', 'Ibarra', 'Area', '1975-09-24 23:12:18', NULL, '08-3675860', '054-5978674', NULL, 'KaseyIbarra35@icloud.com', NULL, '14641525', NULL, 'Mulberry Street', NULL, 'Bremerton', 'Haiti'),
(9, 12, 'Edna', 'Collier', 'Administrative Services Manager', '1980-10-05 17:39:40', NULL, '09-2313382', '058-4032661', NULL, 'EdnaCollier65@icloud.com', NULL, '58538536', NULL, '7th Street East', NULL, 'Fontana', 'Angola'),
(2, 13, 'Samad', 'Meyer', 'Ambulance Driver', '1969-03-02 08:23:10', NULL, '02-8636362', '054-2030053', NULL, 'SamadMeyer50@icloud.com', NULL, '69870242', NULL, 'Buyer', NULL, 'Amarillo', 'Kiribati'),
(7, 14, 'Fatima', 'Mason', 'Automotive Body and Related Repairer', '1969-08-19 04:15:18', NULL, '09-8189656', '052-1613619', NULL, 'FatimaMason91@outlook.com', NULL, '97727942', NULL, 'Biological Technician', NULL, 'Bradenton', 'Cape Verde'),
(7, 15, 'Dione', 'Firth', 'Agricultural Engineer', '1980-09-18 13:28:47', NULL, '03-4747552', '052-9462426', NULL, 'DioneFirth56@gmail.com', NULL, '48284596', NULL, 'Route 10', NULL, 'Akron', 'Japan'),
(6, 16, 'Haya', 'Lopez', 'Biological Science Teacher', '1993-10-22 13:09:50', NULL, '02-4099606', '058-9008789', NULL, 'HayaLopez0@outlook.com', NULL, '77564650', NULL, 'Wood Street', NULL, 'Detroit', 'Iran'),
(2, 17, 'Frankie', 'Graham', 'Athletic Trainer', '1994-03-27 01:15:43', NULL, '03-5994302', '052-6087214', NULL, 'FrankieGraham45@yahoo.com', NULL, '65659428', NULL, 'Highland Drive', NULL, 'Flint', 'Myanmar, {Burma}'),
(6, 18, 'Willie', 'Page', 'Architect', '1994-05-01 23:13:52', NULL, '03-2836002', '054-2867911', NULL, 'WilliePage46@yahoo.com', NULL, '35001933', NULL, 'Elm Avenue', NULL, 'Charleston', 'Montenegro'),
(7, 19, 'Bertram', 'Herbert', 'Audio-Visual and Multimedia Collections Specialist', '1989-03-28 14:35:17', NULL, '09-2487524', '050-7153433', NULL, 'BertramHerbert68@outlook.com', NULL, '84704294', NULL, 'Arch Street', NULL, 'Bryan', 'Comoros'),
(19, 20, 'Marcelina', 'Hollis', 'Audio and Video Equipment Technician', '1985-08-07 02:50:19', NULL, '08-8051007', '058-3980634', NULL, 'MarcelinaHollis31@walla.com', NULL, '42097235', NULL, 'George Street', NULL, 'Bakersfield', 'Ethiopia'),
(9, 21, 'Sullivan', 'Finley', 'Aerospace Engineer', '1988-01-09 10:38:39', NULL, '02-5262560', '052-9441039', NULL, 'SullivanFinley87@walla.com', NULL, '48678369', NULL, 'Grant Street', NULL, 'Fort Collins', 'Kuwait'),
(9, 22, 'Dione', 'Firth', 'Biochemist', '1980-04-27 08:20:57', NULL, '09-7304277', '050-6217201', NULL, 'DioneFirth34@walla.com', NULL, '20398246', NULL, '5th Street North', NULL, 'Chicago', 'Japan'),
(2, 23, 'Asa', 'Nielsen', 'Bench Carpenter', '1970-02-15 10:11:19', NULL, '03-2601078', '054-3282202', NULL, 'AsaNielsen72@gmail.com', NULL, '80239112', NULL, 'Bartender', NULL, 'Baltimore', 'Italy'),
(6, 24, 'Etta', 'Everett', 'Accountant', '1977-01-15 07:40:36', NULL, '03-5334209', '054-4588255', NULL, 'EttaEverett53@outlook.com', NULL, '33125075', NULL, 'Route 6', NULL, 'Allentown', 'Brazil'),
(2, 25, 'Theo', 'Chaney', 'Building Cleaning Worker', '1966-11-04 05:16:38', NULL, '04-8969741', '054-1054836', NULL, 'TheoChaney96@walla.com', NULL, '89095500', NULL, 'King Street', NULL, 'Bloomington', 'Lesotho'),
(2, 26, 'Asa', 'Nielsen', 'Tender', '1969-06-02 02:47:21', NULL, '08-1284550', '058-2879482', NULL, 'AsaNielsen1@outlook.com', NULL, '75278383', NULL, 'Blockmason', NULL, 'Atlanta', 'Cape Verde'),
(6, 27, 'Lincoln', 'Barrett', 'Billing and Posting Clerk', '1983-02-08 17:33:32', NULL, '04-8216285', '054-1489809', NULL, 'LincolnBarrett53@yahoo.com', NULL, '55283893', NULL, 'Bicycle Repairer', NULL, 'Ann Arbor', 'Djibouti'),
(19, 28, 'Carmel', 'Forrest', 'Service Technician', '2000-01-22 23:42:32', NULL, '09-1012910', '052-3305361', NULL, 'CarmelForrest54@icloud.com', NULL, '45677288', NULL, 'Walnut Avenue', NULL, 'Fort Wayne', 'Morocco'),
(6, 29, 'Sharna', 'Benton', 'Anthropology and Archeology Teacher', '1996-05-27 06:18:49', NULL, '09-1308697', '050-1188959', NULL, 'SharnaBenton88@icloud.com', NULL, '43391451', NULL, 'Bookkeeping', NULL, 'Garden Grove', 'Kuwait'),
(19, 30, 'Mia-Rose', 'Ewing', 'Tender', '1985-05-04 17:37:15', NULL, '03-8651411', '052-5372921', NULL, 'Mia-RoseEwing41@yahoo.com', NULL, '93344743', NULL, 'Hilltop Road', NULL, 'Flint', 'Lebanon'),
(2, 31, 'Frankie', 'Graham', 'Bookkeeping', '1975-02-18 11:40:35', NULL, '09-3378864', '050-3888254', NULL, 'FrankieGraham75@yahoo.com', NULL, '80861785', NULL, 'Linden Avenue', NULL, 'Baltimore', 'Cameroon'),
(2, 32, 'Amber-Rose', 'Church', 'Mechanic', '1984-05-06 07:47:31', NULL, '03-5824510', '052-9467762', NULL, 'Amber-RoseChurch44@walla.com', NULL, '49347720', NULL, 'Riverside Drive', NULL, 'Gastonia', 'Benin'),
(2, 33, 'Lorelai', 'Fitzpatrick', 'Airline Pilot', '1992-04-14 05:14:57', NULL, '02-2399388', '050-3605644', NULL, 'LorelaiFitzpatrick17@gmail.com', NULL, '63602599', NULL, 'Penn Street', NULL, 'Danbury', 'Costa Rica'),
(19, 34, 'Ihsan', 'Norton', 'Air Traffic Controller', '2000-09-25 07:14:22', NULL, '03-3993386', '054-2769550', NULL, 'IhsanNorton62@gmail.com', NULL, '39403951', NULL, '2nd Street East', NULL, 'Albuquerque', 'Costa Rica'),
(6, 35, 'Tayyib', 'Fritz', 'Architectural and Civil Drafter', '1995-01-24 13:11:32', NULL, '04-4975752', '052-7394615', NULL, 'TayyibFritz4@walla.com', NULL, '8173626', NULL, 'Sherwood Drive', NULL, 'Bethlehem', 'El Salvador'),
(9, 36, 'Alina', 'Perry', 'Cartographer', '2000-05-04 21:34:20', NULL, '03-7837390', '050-7474694', NULL, 'AlinaPerry16@walla.com', NULL, '79459106', NULL, 'Biological Science Teacher', NULL, 'Clarke County', 'Latvia'),
(9, 37, 'Jaye', 'Greene', 'Bench Carpenter', '1991-12-08 18:26:39', NULL, '04-4816119', '052-4713396', NULL, 'JayeGreene62@icloud.com', NULL, '92841228', NULL, 'Franklin Avenue', NULL, 'Corpus Christi', 'Laos'),
(9, 38, 'Mia-Rose', 'Ewing', 'Biochemist', '1968-10-13 20:20:49', NULL, '09-9908032', '050-3386960', NULL, 'Mia-RoseEwing76@yahoo.com', NULL, '51163997', NULL, 'Mulberry Street', NULL, 'Cathedral City', 'Kyrgyzstan'),
(9, 39, 'Bill', 'Bartlett', 'Bus Driver', '1982-03-10 10:53:24', NULL, '04-5325985', '050-4423405', NULL, 'BillBartlett32@gmail.com', NULL, '57365583', NULL, '5th Street North', NULL, 'Boston', 'Kiribati'),
(7, 40, 'Lois', 'Cleveland', 'Cardiovascular Technologist', '1971-09-28 17:17:36', NULL, '08-6123394', '050-1077721', NULL, 'LoisCleveland58@icloud.com', NULL, '58402166', NULL, 'Bill and Account Collector', NULL, 'Gastonia', 'Ecuador'),
(2, 41, 'Shayne', 'Broadhurst', 'Diesel Engine Specialist', '1971-04-05 11:05:44', NULL, '02-8251965', '050-6442651', NULL, 'ShayneBroadhurst22@icloud.com', NULL, '45913378', NULL, 'Carpenter', NULL, 'Champaign', 'Armenia'),
(7, 42, 'Theo', 'Chaney', 'Technician', '1997-01-02 03:57:33', NULL, '09-9611487', '050-6979408', NULL, 'TheoChaney13@icloud.com', NULL, '2660924', NULL, 'Durham Road', NULL, 'Clarke County', 'Kazakhstan'),
(19, 43, 'Gurpreet', 'Waters', 'Camera Operator', '1978-11-04 19:29:57', NULL, '02-2937152', '052-1108649', NULL, 'GurpreetWaters49@gmail.com', NULL, '20732077', NULL, 'Billing and Posting Clerk', NULL, 'Fort Worth', 'Laos'),
(19, 44, 'Frankie', 'Graham', 'Advertising Sales Agent', '1982-10-17 17:19:15', NULL, '09-7001959', '052-2445152', NULL, 'FrankieGraham5@outlook.com', NULL, '28943869', NULL, 'Summit Street', NULL, 'Appleton', 'Kazakhstan'),
(9, 45, 'Kalvin', 'Alvarez', 'Bus Driver', '1985-04-04 03:41:51', NULL, '04-2100980', '054-5637533', NULL, 'KalvinAlvarez92@outlook.com', NULL, '94271389', NULL, 'Linden Avenue', NULL, 'Boulder', 'Canada'),
(6, 46, 'Etta', 'Everett', 'Animal Control Worker', '1978-01-04 14:53:49', NULL, '09-4591191', '052-8643794', NULL, 'EttaEverett2@icloud.com', NULL, '63635935', NULL, 'Business Operations Specialist', NULL, 'Gilbert', 'Dominica'),
(7, 47, 'Meghan', 'Leech', 'Audiologist', '1985-12-19 19:31:14', NULL, '02-6644181', '054-2771721', NULL, 'MeghanLeech97@icloud.com', NULL, '80730603', NULL, 'Captain', NULL, 'Austin', 'Guinea-Bissau'),
(6, 48, 'Marcelina', 'Hollis', 'Automotive and Watercraft Service Attendant', '1983-06-23 13:22:53', NULL, '04-7008075', '058-3997889', NULL, 'MarcelinaHollis0@walla.com', NULL, '18797458', NULL, 'Myrtle Avenue', NULL, 'Baton Rouge', 'Dominica'),
(7, 49, 'Kristopher', 'Marsden', 'Audiologist', '1969-11-08 03:20:18', NULL, '03-7889824', '050-8571986', NULL, 'KristopherMarsden50@walla.com', NULL, '58040964', NULL, 'Biophysicist', NULL, 'Garland', 'Angola'),
(9, 50, 'Amrita', 'Mcclure', 'Atmospheric', '1983-10-07 01:05:09', NULL, '03-8652954', '050-2639970', NULL, 'AmritaMcclure41@icloud.com', NULL, '25137496', NULL, 'Poplar Street', NULL, 'Baton Rouge', 'Brunei'),
(9, 51, 'Deon', 'Williamson', 'Truck Mechanic', '1983-10-28 08:11:41', NULL, '08-9721955', '054-2146334', NULL, 'DeonWilliamson93@yahoo.com', NULL, '34358404', NULL, 'Bench Carpenter', NULL, 'Corona', 'Kazakhstan'),
(19, 52, 'Samad', 'Meyer', 'Agricultural Inspector', '1997-08-29 16:45:26', NULL, '03-7037167', '054-9499519', NULL, 'SamadMeyer66@walla.com', NULL, '25830522', NULL, 'Lafayette Avenue', NULL, 'Fremont', 'Ecuador'),
(9, 53, 'Mia-Rose', 'Ewing', 'Bailiff', '1968-12-21 08:44:42', NULL, '03-1727171', '052-5443180', NULL, 'Mia-RoseEwing88@walla.com', NULL, '95043585', NULL, 'Penn Street', NULL, 'Gilbert', 'Dominican Republic'),
(7, 54, 'Aadil', 'Mckinney', 'Architectural and Civil Drafter', '1989-08-14 16:29:19', NULL, '08-2370450', '054-4565199', NULL, 'AadilMckinney80@icloud.com', NULL, '98445977', NULL, 'Carpenter', NULL, 'Antioch', 'Fiji'),
(2, 55, 'Carmel', 'Forrest', 'Astronomer', '1979-04-17 00:33:41', NULL, '03-6136250', '050-3573774', NULL, 'CarmelForrest5@outlook.com', NULL, '94939557', NULL, 'Buyer', NULL, 'Arvada', 'Dominica'),
(6, 56, 'Gideon', 'Munro', 'Instructor', '1993-06-30 06:23:23', NULL, '04-9895447', '054-1844358', NULL, 'GideonMunro67@gmail.com', NULL, '59011064', NULL, '2nd Street East', NULL, 'Downey', 'Cape Verde'),
(7, 57, 'Mylee', 'Newman', 'Agricultural Worker', '1978-06-26 00:25:27', NULL, '03-1305751', '052-2993906', NULL, 'MyleeNewman79@walla.com', NULL, '38851745', NULL, 'Holly Drive', NULL, 'Frederick', 'Bangladesh'),
(7, 58, 'Marcia', 'Wilcox', 'Anthropology and Archeology Teacher', '1984-06-26 19:51:04', NULL, '04-3926771', '050-4816225', NULL, 'MarciaWilcox75@icloud.com', NULL, '52534476', NULL, 'College Avenue', NULL, 'Colorado Springs', 'Gambia'),
(2, 59, 'Annabell', 'Booker', 'Bartender', '1985-06-23 23:05:01', NULL, '09-4628017', '050-5339869', NULL, 'AnnabellBooker86@outlook.com', NULL, '264600', NULL, 'Hilltop Road', NULL, 'Concord', 'Cyprus'),
(19, 60, 'Marcelina', 'Hollis', 'Agricultural Sciences Teacher', '2000-07-22 01:18:28', NULL, '08-5569437', '050-2942351', NULL, 'MarcelinaHollis43@gmail.com', NULL, '13885956', NULL, 'Technician', NULL, 'Bonita Springs', 'Morocco'),
(9, 61, 'Perry', 'Black', 'Captain', '1992-08-17 08:50:44', NULL, '02-9882119', '054-4626727', NULL, 'PerryBlack96@yahoo.com', NULL, '71444746', NULL, 'Billing and Posting Clerk', NULL, 'Brighton', 'Bangladesh'),
(19, 62, 'Can', 'Seymour', 'Career/Technical Education Teacher', '1987-02-24 22:21:50', NULL, '02-3588649', '052-6295575', NULL, 'CanSeymour75@outlook.com', NULL, '73191904', NULL, 'Carpet Installer', NULL, 'Dallas', 'Cuba'),
(9, 63, 'Barbara', 'Frazier', 'Art Director', '1973-03-26 03:08:41', NULL, '02-2775297', '058-4310689', NULL, 'BarbaraFrazier40@icloud.com', NULL, '17326161', NULL, 'Cedar Lane', NULL, 'Fort Collins', 'Austria'),
(7, 64, 'Kiara', 'Webster', 'Aerospace Engineer', '1978-08-10 22:58:02', NULL, '09-1460059', '054-6991969', NULL, 'KiaraWebster10@walla.com', NULL, '77953631', NULL, 'Summit Street', NULL, 'Aurora', 'Honduras'),
(9, 65, 'Corben', 'Montoya', 'Animal Trainer', '1978-02-13 00:26:21', NULL, '09-9540169', '058-3333013', NULL, 'CorbenMontoya49@icloud.com', NULL, '3425691', NULL, 'Business Operations Specialist', NULL, 'Bethlehem', 'Ethiopia'),
(19, 66, 'Bertram', 'Herbert', 'All Occupation', '1991-12-07 16:31:31', NULL, '02-7325850', '050-5745121', NULL, 'BertramHerbert52@icloud.com', NULL, '10499748', NULL, 'Canal Street', NULL, 'Downey', 'Bulgaria'),
(19, 67, 'Jessica', 'Britt', 'Instructor', '1966-11-13 06:37:33', NULL, '03-5347620', '050-8881475', NULL, 'JessicaBritt85@outlook.com', NULL, '22178200', NULL, 'Magnolia Drive', NULL, 'Cape Coral', 'Georgia'),
(9, 68, 'Frankie', 'Graham', 'Broadcast News Analyst', '1981-09-15 03:30:17', NULL, '03-3901687', '052-7029960', NULL, 'FrankieGraham4@icloud.com', NULL, '88498138', NULL, 'Wood Street', NULL, 'Clearwater', 'Belarus'),
(2, 69, 'Beatriz', 'Parker', 'Billing and Posting Clerk', '1975-02-21 03:10:18', NULL, '08-3392085', '050-1692619', NULL, 'BeatrizParker55@outlook.com', NULL, '141192', NULL, 'Hillside Drive', NULL, 'Bradenton', 'Austria'),
(6, 70, 'Etta', 'Everett', 'Building Cleaning Worker', '1993-09-03 09:15:36', NULL, '03-5436907', '054-4776048', NULL, 'EttaEverett52@icloud.com', NULL, '3660822', NULL, 'Shady Lane', NULL, 'Baton Rouge', 'Ecuador'),
(9, 71, 'Jaye', 'Greene', 'Adhesive Bonding Machine Operator', '1974-12-15 03:21:29', NULL, '03-1633117', '052-1909217', NULL, 'JayeGreene52@icloud.com', NULL, '10260080', NULL, 'Holly Drive', NULL, 'Charleston', 'Grenada'),
(2, 72, 'Bertram', 'Herbert', 'Fabricator', '1990-05-17 04:17:26', NULL, '04-5481385', '052-6608824', NULL, 'BertramHerbert59@walla.com', NULL, '41596703', NULL, 'Walnut Avenue', NULL, 'Bel Air', 'Dominican Republic'),
(19, 73, 'Billy', 'Wagner', 'Assembler', '1995-12-31 08:04:11', NULL, '08-4610931', '054-3026502', NULL, 'BillyWagner16@outlook.com', NULL, '17797779', NULL, 'Hillside Drive', NULL, 'Chattanooga', 'Azerbaijan'),
(9, 74, 'Mac', 'Stafford', 'Athletic Trainer', '1978-08-04 03:42:32', NULL, '04-3155278', '052-6956330', NULL, 'MacStafford76@icloud.com', NULL, '9933174', NULL, 'William Street', NULL, 'Albany', 'Barbados'),
(19, 75, 'Levison', 'Peralta', 'Camera and Photographic Equipment Repairer', '2000-02-05 09:46:48', NULL, '08-6439396', '054-3397743', NULL, 'LevisonPeralta56@yahoo.com', NULL, '75518727', NULL, 'Park Drive', NULL, 'Bonita Springs', 'East Timor'),
(9, 76, 'Amisha', 'Poole', 'Meat Cutter', '1982-04-29 19:10:38', NULL, '09-1546621', '052-8701350', NULL, 'AmishaPoole70@gmail.com', NULL, '2945880', NULL, 'Boilermaker', NULL, 'Costa Mesa', 'Georgia'),
(9, 77, 'Conner', 'Howells', 'Bus Driver', '1979-12-15 03:58:46', NULL, '04-3301347', '058-2379517', NULL, 'ConnerHowells72@yahoo.com', NULL, '37995184', NULL, 'Blockmason', NULL, 'Des Moines', 'Central African Rep'),
(7, 78, 'Fatema', 'Wolfe', 'Audiologist', '1992-12-19 12:42:12', NULL, '03-7766470', '052-3449317', NULL, 'FatemaWolfe78@outlook.com', NULL, '73238227', NULL, 'Oxford Court', NULL, 'Birmingham', 'Maldives'),
(2, 79, 'Mac', 'Stafford', 'Bus Driver', '1982-10-14 13:52:46', NULL, '02-5128072', '058-7174751', NULL, 'MacStafford51@icloud.com', NULL, '76450646', NULL, 'Primrose Lane', NULL, 'Fayetteville', 'Iceland'),
(6, 80, 'Ada', 'Drew', 'All Occupation', '1992-09-04 16:41:40', NULL, '03-7729408', '058-4176387', NULL, 'AdaDrew30@outlook.com', NULL, '37887798', NULL, 'William Street', NULL, 'Dallas', 'Algeria'),
(9, 81, 'Barbara', 'Frazier', 'Carpenter', '1969-03-19 12:25:35', NULL, '09-7018090', '050-7122318', NULL, 'BarbaraFrazier80@yahoo.com', NULL, '95043890', NULL, 'Brickmason', NULL, 'Atlanta', 'Czech Republic'),
(6, 82, 'Beatriz', 'Parker', 'Aircraft Cargo Handling Supervisor', '1998-05-03 07:46:19', NULL, '08-8243457', '052-8229875', NULL, 'BeatrizParker93@outlook.com', NULL, '73301310', NULL, 'Summit Street', NULL, 'Fort Lauderdale', 'Congo {Democratic Rep}'),
(6, 83, 'Nichole', 'Singleton', 'Cabinetmaker', '1976-02-19 04:23:10', NULL, '08-1112527', '054-1012989', NULL, 'NicholeSingleton96@outlook.com', NULL, '74960132', NULL, 'Truck Mechanic', NULL, 'Bryan', 'Lesotho'),
(2, 84, 'Perry', 'Black', 'Atmospheric and Space Scientist', '1998-06-23 22:09:46', NULL, '03-8564073', '054-2224467', NULL, 'PerryBlack71@outlook.com', NULL, '58514426', NULL, 'Poplar Street', NULL, 'Antioch', 'Colombia'),
(2, 85, 'Beatriz', 'Parker', 'Anesthesiologist', '1999-11-04 21:35:54', NULL, '09-8842176', '054-7908208', NULL, 'BeatrizParker14@yahoo.com', NULL, '24859997', NULL, 'Primrose Lane', NULL, 'Chesapeake', 'Armenia'),
(6, 86, 'Presley', 'Hutchinson', 'Artist', '1978-09-12 10:03:58', NULL, '09-4035288', '054-5842263', NULL, 'PresleyHutchinson92@icloud.com', NULL, '43921367', NULL, 'Brokerage Clerk', NULL, 'Corona', 'Korea South'),
(7, 87, 'Kasey', 'Ibarra', 'Cabinetmaker', '1998-03-26 23:19:38', NULL, '04-6811910', '054-1300932', NULL, 'KaseyIbarra37@gmail.com', NULL, '54327307', NULL, 'Mulberry Street', NULL, 'Atlanta', 'Belize'),
(2, 88, 'Abdirahman', 'Mendez', 'Aerospace Engineering and Operations Technician', '1981-11-18 05:05:27', NULL, '02-1314478', '054-1913982', NULL, 'AbdirahmanMendez56@icloud.com', NULL, '99883785', NULL, 'Brickmason', NULL, 'Garland', 'Czech Republic'),
(6, 89, 'Fraser', 'Coffey', 'Animal Breeder', '1978-03-18 04:47:01', NULL, '04-5192333', '050-6414426', NULL, 'FraserCoffey37@yahoo.com', NULL, '90767443', NULL, 'Truck Mechanic', NULL, 'Carrollton', 'Angola'),
(9, 90, 'Willie', 'Page', 'Auditor', '1984-03-31 14:26:20', NULL, '09-1400660', '058-2390304', NULL, 'WilliePage29@icloud.com', NULL, '88544120', NULL, 'Heather Lane', NULL, 'Downey', 'Congo {Democratic Rep}'),
(19, 91, 'Markus', 'Forbes', 'Adult Basic and Secondary Education and Literacy Teacher', '1972-08-19 07:32:35', NULL, '02-1192384', '054-2917182', NULL, 'MarkusForbes47@yahoo.com', NULL, '29098165', NULL, 'Career/Technical Education Teacher', NULL, 'Daytona Beach', 'Italy'),
(19, 92, 'Marcelina', 'Hollis', 'Arbitrator', '1976-02-11 14:22:41', NULL, '08-4456390', '052-6199648', NULL, 'MarcelinaHollis70@walla.com', NULL, '13595422', NULL, 'George Street', NULL, 'Columbus', 'Georgia'),
(7, 93, 'Kasey', 'Ibarra', 'Aircraft Cargo Handling Supervisor', '1982-09-21 08:05:39', NULL, '04-7791428', '058-3223171', NULL, 'KaseyIbarra13@gmail.com', NULL, '92283270', NULL, 'Warren Street', NULL, 'Ann Arbor', 'Mozambique'),
(2, 94, 'Aadil', 'Mckinney', 'Architecture Teacher', '1981-07-29 08:08:35', NULL, '08-8985477', '054-7908324', NULL, 'AadilMckinney7@yahoo.com', NULL, '81816059', NULL, 'Purchasing Agent', NULL, 'Billings', 'Bahrain'),
(19, 95, 'Ava-Rose', 'Joyce', 'Agricultural Sciences Teacher', '1994-11-01 17:06:04', NULL, '02-5049484', '054-3759530', NULL, 'Ava-RoseJoyce79@icloud.com', NULL, '48106191', NULL, 'Broadcast Technician', NULL, 'Albuquerque', 'Honduras'),
(9, 96, 'Fraser', 'Coffey', 'Bu', '1966-04-28 06:41:36', NULL, '04-1932513', '050-3255242', NULL, 'FraserCoffey47@outlook.com', NULL, '61562051', NULL, '6th Avenue', NULL, 'Boise City', 'El Salvador'),
(2, 97, 'Riaan', 'Howard', 'Aerospace Engineering and Operations Technician', '1991-06-17 05:51:30', NULL, '08-9001085', '058-8906599', NULL, 'RiaanHoward77@outlook.com', NULL, '25531483', NULL, 'Windsor Court', NULL, 'Allentown', 'Australia'),
(7, 98, 'Ahsan', 'Whyte', 'Camera and Photographic Equipment Repairer', '1991-07-01 22:55:35', NULL, '08-9076755', '054-9301367', NULL, 'AhsanWhyte31@yahoo.com', NULL, '59551442', NULL, 'Busines', NULL, 'Bakersfield', 'Marshall Islands'),
(7, 99, 'Chandler', 'Little', 'Brickmason', '1981-07-09 21:06:38', NULL, '02-8385478', '054-3438531', NULL, 'ChandlerLittle22@outlook.com', NULL, '75986526', NULL, 'Biological Technician', NULL, 'Flint', 'Burkina'),
(7, 100, 'Bertram', 'Herbert', 'Architecture and Engineering Occupation', '1975-11-02 02:55:51', NULL, '09-6067714', '058-5285029', NULL, 'BertramHerbert10@outlook.com', NULL, '71212773', NULL, 'Bus Driver', NULL, 'College Station', 'Brazil');

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
(5, 1, 'user2@email.com', 'Member', NULL, 'active', '202cb962ac59075b964b07152d234b70'),
(6, NULL, 'user3@email.com', 'Admin', NULL, 'active', '202cb962ac59075b964b07152d234b70'),
(7, NULL, 'user@email.com', 'Admin', NULL, 'active', '202cb962ac59075b964b07152d234b70'),
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
(19, NULL, 'owner22@mem.com', 'Admin', NULL, 'Active', '202cb962ac59075b964b07152d234b70'),
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
  MODIFY `Contact_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
