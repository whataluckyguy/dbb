-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 30, 2021 at 03:38 PM
-- Server version: 10.1.48-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arkpass`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`id`, `name`, `email`, `password`, `role_id`) VALUES
(6, 'ritesh', 'rddubey31@gmail.com', '$2a$10$ul5FyVrBkqECOYV0RWoJPOH8VcS9lRBD86R5OmeLtSxpDygeSe9xi', 1),
(11, 'zibran', 'zibranshaikh@ymail.com', '$2a$10$BPwav0iMvnYXKvKjrIi7oOGoyn3eU1hBaFNKX6jmh2w5h7u0P6v6W', 1),
(12, 'waqar', 'waqar@arkpass.com', '$2a$10$Po2YTEGs0f6roe0mp7j.C.wihXdbNKRN6GNE6XkhB8DLJCxfm6/pi', 1),
(13, 'Waqar', 'wraja2147@gmail.com', '$2a$10$HwnOYgFpCVotWt6.NM4T9.tYi6ikEDnT4sbViPPyeUIQRw8qOkMv2', 3),
(14, 'Waqar Manager', 'w.raja@roofit.co.in', '$2a$10$nEE4yMBskYPSfgeQMaxeWOHOwwjDkchDwLYLQFpLLUCaljZkrhL0O', 2),
(15, 'Executive 2', 'flyezy1@gmail.com', '$2a$10$QiXC31OiL151Gskz.BgsIe5xwx04T15WYjiBS.5k/rPLYUMte0xbK', 3),
(16, 'waqar@arkpass.com', 'nitesh.khatri88@gmail.com', '$2a$10$3AXHkTpgub6cCJJQC5ARbOvSF8U.IvlO898CVWfLFyukj942h//NC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Company`
--

CREATE TABLE `Company` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `users_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Company_user_profile`
--

CREATE TABLE `Company_user_profile` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `joining_date` varchar(100) DEFAULT NULL,
  `leaving_date` varchar(100) DEFAULT NULL,
  `rank` varchar(50) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `company_number` varchar(50) NOT NULL,
  `personal_number` varchar(20) NOT NULL,
  `company_email` varchar(50) NOT NULL,
  `personal_email` varchar(100) NOT NULL,
  `emergency_name` varchar(50) NOT NULL,
  `emergency_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Company_user_profile`
--

INSERT INTO `Company_user_profile` (`id`, `user_id`, `title`, `first_name`, `middle_name`, `last_name`, `company`, `department`, `joining_date`, `leaving_date`, `rank`, `employee_id`, `company_number`, `personal_number`, `company_email`, `personal_email`, `emergency_name`, `emergency_number`) VALUES
(38, 64, 'Mr', 'Waqar', '', 'Raja', 'ABC Corporation', 'Management', '2021-06-30T18:30:00.000Z', '2021-07-31 09:53:21.066', '', '', '+919702955590', '', 'waqar@arkpass.com', '', 'Vidhi Raja', '+919702657474'),
(39, 64, 'Mr', 'Sameer', '', 'Ali', 'ABC Corporation', 'Management', '2021-06-30T18:30:00.000Z', '2021-07-31 09:54:35.895', '', '', '+911234512345', '', 'sameer@arkpass.com', '', 'Lisha Ali', '+911234512345'),
(40, 64, 'Mr', 'Zubin', 'Aspi', 'Aibara', 'Pikateck Technologies LLP ', 'Commercial ', '2016-03-31T18:30:00.000Z', '2021-08-04 08:27:33.763', 'A', 'ZUB01', '+02223853325', '', 'zubin@pikateck.com', '', 'Zubina', '+9820453331'),
(41, 69, 'Mr', 'zibran', 'shaikh', 'shaikh', 'xxx', 'sscbhtthrgerfQEWGT54GR', '2021-03-29T18:30:00.000Z', '2021-08-05 11:43:33.316', '3', '6576576576', '+918655188102', '+918655188102', 'brddubey31@ymail.com', 'zibranshaikh@ymail.com', 'zibran', '+918655188102'),
(42, 69, 'Mr', 'Ritesh', '', 'Dubey', 'xas', 'IT', '2021-01-03T18:30:00.000Z', '2021-08-07 14:26:53.988', '3', '6576576576', '+918655188102', '+918655188102', 'brddubey31@gmail.com', 'zibranshaikh@ymail.com', 'zibran', '+918655188102');

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Documents`
--

CREATE TABLE `Documents` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `doc_number` varchar(20) DEFAULT NULL,
  `issuing_country` varchar(50) DEFAULT NULL,
  `issuing_date` varchar(100) DEFAULT NULL,
  `expiry_date` varchar(100) DEFAULT NULL,
  `issuing_state` varchar(50) DEFAULT NULL,
  `issuing_address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `pin_code` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Documents`
--

INSERT INTO `Documents` (`id`, `user_id`, `doc_type`, `doc_name`, `title`, `first_name`, `last_name`, `dob`, `doc_number`, `issuing_country`, `issuing_date`, `expiry_date`, `issuing_state`, `issuing_address`, `city`, `state`, `country`, `pin_code`) VALUES
(32, 40, 'Aadhaar Card', NULL, 'Mr', 'Zubin', 'Aibara', '1978-05-03T18:30:00.000Z', 'EK202020202022002', 'India', '2019-05-24T18:30:00.000Z', '2021-08-03T18:30:00.000Z', 'Maharashtra', 'xxxxx', 'mumbai', 'Maharashtra', 'India', '400026');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `full_name` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name_of_organisation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`full_name`, `phone`, `email`, `name_of_organisation`) VALUES
('zibran', 983839993, 'zibranshaikh@ymail.com', 'Arkpass'),
('testing', 2147483647, 'cerd@gmail.com', 'qwe'),
('zibran shaikh', 2147483647, 'zibranshaikh@ymail.com', 'arkpass'),
('Waqar Raja', 2147483647, 'w_raja@hotmail.co.uk', 'Travel Analyst LLP'),
('Waqar Raja', 2147483647, 'waqar@arkpass.com', 'JDOID'),
('Rajeev Bapurapu', 2147483647, 'bapurapurajeev@gmail.com', 'Rajeev Bapurapu'),
('pooja gandhi', 2147483647, 'poojagandhi262@gmail.com', 'pradeep parts'),
('Nimesh Panchal', 2147483647, 'crownnimesh@gmail.com', 'Spheretekk'),
('Nimesh Panchal', 2147483647, 'crownnimesh@gmail.com', 'pixlpower'),
('Nimesh Panchal', 2147483647, 'crownnimesh@gmail.com', 'pixlpower'),
('venky', 2147483647, 'kotavenkatesh204@gmail.com', 'pixlpower'),
('adfn', 123456789, '2@test.com', 'testing'),
('adfn', 123456789, 'lalit7142@gmail.com', 'testing'),
('lalit kumar', 2147483647, 'lalit7142@gmail.com', 'Individual'),
('Rohit', 2147483647, 'lalit7142@gmail.com', 'indi'),
('lalit', 2147483647, 'lalit7142@gmail.com', 'indi');

-- --------------------------------------------------------

--
-- Table structure for table `Flights`
--

CREATE TABLE `Flights` (
  `id` int(10) NOT NULL,
  `trip_id` int(10) NOT NULL,
  `airline` varchar(100) DEFAULT NULL,
  `departure_date` varchar(100) DEFAULT NULL,
  `arrival_date` varchar(100) DEFAULT NULL,
  `departure_airport` varchar(100) DEFAULT NULL,
  `arrival_airport` varchar(100) DEFAULT NULL,
  `pnr` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Flights`
--

INSERT INTO `Flights` (`id`, `trip_id`, `airline`, `departure_date`, `arrival_date`, `departure_airport`, `arrival_airport`, `pnr`) VALUES
(23, 17, 'Air India', '2021-08-24T18:30:00.000Z', '2021-08-30T18:30:00.000Z', 'Indira Gandhi International Airport, (DEL), India', 'Indira Gandhi International Airport, (DEL), India', 'HG12309'),
(24, 18, 'Aegean Airlines', '2021-08-30T18:30:00.000Z', '2021-09-02T11:45:00.000Z', 'Anaa Airport, (AAA), French Polynesia', 'Aalborg Airport, (AAL), Denmark', '12345789698'),
(25, 19, 'Aer Lingus', '2021-09-01T18:30:00.000Z', '2021-09-28T18:30:00.000Z', 'El Mellah Airport, (AAE), Algeria', 'El Mellah Airport, (AAE), Algeria', 'dsfsdf'),
(26, 19, 'Aer Lingus', '2021-08-12T18:30:00.000Z', '2021-08-30T18:30:00.000Z', 'Mala Mala, (AAM), South Africa', 'Al Ain Airport, (AAN), United Arab Emirates', 'sdfsadf'),
(27, 20, 'Aegean Airlines', '2021-08-30T13:30:00.000Z', '2021-08-30T13:31:00.000Z', 'Anaa Airport, (AAA), French Polynesia', 'Mala Mala, (AAM), South Africa', '12345789698');

-- --------------------------------------------------------

--
-- Table structure for table `Frequent_flyer_details`
--

CREATE TABLE `Frequent_flyer_details` (
  `id` int(10) NOT NULL,
  `company_profile_id` int(10) NOT NULL,
  `miles_program` varchar(100) NOT NULL,
  `flyer_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Frequent_flyer_details`
--

INSERT INTO `Frequent_flyer_details` (`id`, `company_profile_id`, `miles_program`, `flyer_number`) VALUES
(33, 40, 'Skywards', 'EK2020202020020202'),
(34, 40, 'A+', 'UA2020202020202');

-- --------------------------------------------------------

--
-- Table structure for table `Request`
--

CREATE TABLE `Request` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `flight_ids` text COMMENT '1,2,3',
  `travellers_ids` varchar(100) DEFAULT NULL,
  `assigned_executive_id` int(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1-requested, 2-rejected, 3-in proces, 4-completed',
  `remark` text,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Request`
--

INSERT INTO `Request` (`id`, `user_id`, `trip_id`, `type`, `date`, `flight_ids`, `travellers_ids`, `assigned_executive_id`, `status`, `remark`, `details`) VALUES
(44, 71, 18, 4, '2021-08-10T06:54:34.143Z', '24', '41', 13, 1, NULL, '[{\"profile_id\":41,\"profile_name\":\"zibran shaikh shaikh\",\"seating_preference\":\"First Row\",\"notes\":\"\",\"documents\":[],\"flyer\":[]}]'),
(45, 69, 18, 3, '2021-08-10T06:57:37.544Z', '24', '41', 15, 1, NULL, '[{\"profile_id\":41,\"profile_name\":\"zibran shaikh shaikh\",\"notes\":\"\",\"meal_preference\":\"Halal\",\"documents\":[],\"flyer\":[]}]'),
(47, 64, 17, 10, '2021-08-10T07:44:10.254Z', '23', '38', 15, 2, '', '[{\"profile_id\":38,\"profile_name\":\"Waqar  Raja\",\"cancel\":\"change\",\"notes\":\"\"},{\"profile_id\":39,\"profile_name\":\"Sameer  Ali\",\"cancel\":\"\",\"notes\":\"\"},{\"profile_id\":40,\"profile_name\":\"Zubin Aspi Aibara\",\"cancel\":\"\",\"notes\":\"\"}]'),
(48, 64, 19, 3, '2021-08-10T08:54:24.654Z', '25,26', '38', 13, 1, NULL, '[{\"profile_id\":38,\"profile_name\":\"Waqar  Raja\",\"notes\":\"\",\"meal_preference\":\"Jain\",\"documents\":[],\"flyer\":[]}]'),
(49, 64, 19, 2, '2021-09-04T15:19:47.461Z', '25', '', 15, 1, NULL, '[{\"profile_id\":38,\"profile_name\":\"Waqar  Raja\",\"travel_documents\":\"\",\"frequent_flyer\":\"\",\"seating_preference\":\"\",\"priority_checkin\":\"\",\"bags_to_check_in\":\"\",\"special_request\":\"\",\"notes\":\"\",\"documents\":[],\"flyer\":[]}]');

-- --------------------------------------------------------

--
-- Table structure for table `Trips`
--

CREATE TABLE `Trips` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `startDate` varchar(100) NOT NULL,
  `endDate` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `accommodation` varchar(500) NOT NULL,
  `transportation` varchar(500) NOT NULL,
  `food_beverage` varchar(500) NOT NULL,
  `insurance` varchar(500) NOT NULL,
  `other` varchar(500) NOT NULL,
  `profile` text NOT NULL COMMENT 'Comma separated user profile ids'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Trips`
--

INSERT INTO `Trips` (`id`, `user_id`, `name`, `startDate`, `endDate`, `company`, `department`, `accommodation`, `transportation`, `food_beverage`, `insurance`, `other`, `profile`) VALUES
(17, 64, 'Delhi', '2021-08-24T18:30:00.000Z', '2021-08-30T18:30:00.000Z', 'ABC Corporation', 'Sales', '', '', '', '', '', '40,39,38'),
(18, 69, 'Rit', '2021-09-06T18:30:00.000Z', '2021-09-03T18:30:00.000Z', 'xxx', 'sscbhtthrgerfQEWGT54GR', '', '', '', '', '', '41'),
(19, 64, 'Maldives', '2021-10-27T18:30:00.000Z', '2021-10-29T18:30:00.000Z', 'Travel Analyst', 'Sales', '', '', '', '', '', '38'),
(20, 69, 'Ritq', '2021-08-20T18:30:00.000Z', '2021-08-27T18:30:00.000Z', 'proapp', 'IT', '', '', '', '', '', '42,41');

-- --------------------------------------------------------

--
-- Table structure for table `Trip_Documents`
--

CREATE TABLE `Trip_Documents` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `trip_profile_document` varchar(50) NOT NULL,
  `trip_id` int(10) DEFAULT NULL,
  `profile_id` int(10) DEFAULT NULL,
  `document_name` varchar(100) DEFAULT NULL,
  `document_category` varchar(100) DEFAULT NULL,
  `document_subcategory` varchar(100) DEFAULT NULL,
  `valid_from` varchar(100) DEFAULT NULL,
  `valid_to` varchar(100) DEFAULT NULL,
  `dropzone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Trip_Documents`
--

INSERT INTO `Trip_Documents` (`id`, `user_id`, `trip_profile_document`, `trip_id`, `profile_id`, `document_name`, `document_category`, `document_subcategory`, `valid_from`, `valid_to`, `dropzone`) VALUES
(27, 64, 'Profile', NULL, 39, 'Passport', 'Ticket / reservation', 'Boarding Pass', '2021-08-02T18:30:00.000Z', '2021-08-25T18:30:00.000Z', '[{\"public_id\":\"nx6cmq0rl9fsgryiqdzi\",\"url\":\"https://res.cloudinary.com/dx6zgsncl/image/upload/v1628231006/nx6cmq0rl9fsgryiqdzi.png\"}]'),
(28, 64, 'Profile', NULL, 38, 'Passport', 'Travel insurance', 'Trip Travel Insurance', '2021-08-02T18:30:00.000Z', '2021-08-17T18:30:00.000Z', '[{\"public_id\":\"widwg9in4hzwhthwubhl\",\"url\":\"https://res.cloudinary.com/dx6zgsncl/image/upload/v1628231135/widwg9in4hzwhthwubhl.png\"}]'),
(29, 64, 'Trip', 19, NULL, 'E ticket', 'Travel visa / Residency', 'Permanent Residency Card', '2021-08-05T18:30:00.000Z', '2021-08-23T18:30:00.000Z', '[{\"public_id\":\"widwg9in4hzwhthwubhl\",\"url\":\"https://res.cloudinary.com/dx6zgsncl/image/upload/v1628231135/widwg9in4hzwhthwubhl.png\"}]'),
(30, 64, 'Trip', 17, NULL, 'E ticket', 'Travel visa / Residency', 'Permanent Residency Card', '2021-08-04T18:30:00.000Z', '2021-08-18T18:30:00.000Z', '[{\"public_id\":\"widwg9in4hzwhthwubhl\",\"url\":\"https://res.cloudinary.com/dx6zgsncl/image/upload/v1628231135/widwg9in4hzwhthwubhl.png\"}]'),
(31, 69, 'Trip', 20, NULL, 'tbg', 'Travel visa / Residency', 'Permanent Residency Card', '2021-08-04T18:30:00.000Z', '2021-08-20T18:30:00.000Z', '[{\"public_id\":\"ky5xigzf8j87l8dohfmx\",\"url\":\"https://res.cloudinary.com/dx6zgsncl/image/upload/v1628347592/ky5xigzf8j87l8dohfmx.png\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(10) NOT NULL,
  `profile_id` int(10) DEFAULT NULL,
  `admin_id` int(10) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT '0',
  `roles` int(10) NOT NULL COMMENT '1-Admin, 2- Manager, 3- Employee'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `profile_id`, `admin_id`, `name`, `mobile`, `email`, `password`, `is_verified`, `roles`) VALUES
(64, NULL, NULL, 'ABC Corporation', '9702955590', 'w_raja@hotmail.co.uk', '$2a$10$TOFUNy9yNkIk2J/9GXsZVueuwpysyjB1cTWAxw3LWDTgmWMdRqheK', 1, 1),
(65, 38, 64, 'Waqar  Raja', '+919702955590', 'waqar@arkpass.com', '$2a$10$yiQPkRApnNg7f67FZiymAe2v4.ViwsFHOMirpHs9zolZIvJD4adVy', 1, 2),
(66, 39, 64, 'Sameer  Ali', '+911234512345', 'sameer@arkpass.com', '$2a$10$tiLINrdihfwn0KrM0jpeyORygGoSEQA23drxcVcr/NR.kfwVM1gaC', 1, 3),
(67, 40, 64, 'Zubin Aspi Aibara', '+02223853325', 'zubin@pikateck.com', '$2a$10$qMakTiPS74ZIQYrYAHbGJ.J7IRGGDNkO1JjDHA4iHJ7r1MdVX/VC.', 1, 2),
(68, NULL, NULL, 'zibran', '9324385837', 'zibranshaikh@ymail.com', '$2a$10$8RQmF0SnBHqpKqa3otIWZOV2MkLPbVppcwryD.Wzedb/zfAeFu6ke', 1, 2),
(69, NULL, NULL, 'arddubey31@gmail.com', '8080288546', 'arddubey31@gmail.com', '$2a$10$8RQmF0SnBHqpKqa3otIWZOV2MkLPbVppcwryD.Wzedb/zfAeFu6ke', 1, 1),
(70, 41, 69, 'zibran shaikh shaikh', '+918655188102', 'brddubey31@ymail.com', '$2a$10$jngimr8nJesoiL2eyhw8UOUlposBFyqnNOIlZ8rN5zrYgMi9fygwu', 1, 3),
(71, 42, 69, 'Ritesh  Dubey', '+918655188102', 'brddubey31@gmail.com', '$2a$10$ypsfjSF8.jwqyUnmhbY2yeAMY72wL6.jWRjEhNaAPBSDR0MTeQbcK', 1, 3),
(72, NULL, NULL, 'dushyant', '7021847707', 'dushyant@pikateck.com', '$2a$10$vC4D.jsbPZyuNs7xa.maxeCiXd0QaYJPGlETVjlPiJ3JSxG60T03i', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Company_user_profile`
--
ALTER TABLE `Company_user_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Documents`
--
ALTER TABLE `Documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Flights`
--
ALTER TABLE `Flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Frequent_flyer_details`
--
ALTER TABLE `Frequent_flyer_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Request`
--
ALTER TABLE `Request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Trips`
--
ALTER TABLE `Trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Trip_Documents`
--
ALTER TABLE `Trip_Documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `Company`
--
ALTER TABLE `Company`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Company_user_profile`
--
ALTER TABLE `Company_user_profile`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `Department`
--
ALTER TABLE `Department`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Documents`
--
ALTER TABLE `Documents`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `Flights`
--
ALTER TABLE `Flights`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `Frequent_flyer_details`
--
ALTER TABLE `Frequent_flyer_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `Request`
--
ALTER TABLE `Request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `Trips`
--
ALTER TABLE `Trips`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Trip_Documents`
--
ALTER TABLE `Trip_Documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
