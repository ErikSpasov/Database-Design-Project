-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2024 at 10:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database project`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Event_ID` int(11) DEFAULT NULL,
  `Booking_Date` date DEFAULT NULL,
  `Space_ID` int(11) DEFAULT NULL,
  `Booking_Status` enum('Confirmed','Cancelled') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_ID`, `User_ID`, `Event_ID`, `Booking_Date`, `Space_ID`, `Booking_Status`) VALUES
(1, 3, 1, '2024-02-12', 1, 'Confirmed'),
(2, 4, 2, '2024-03-21', 2, 'Cancelled'),
(3, 5, 3, '2024-03-24', 3, 'Confirmed'),
(4, 6, 4, '2024-07-13', 4, 'Cancelled'),
(5, 7, 5, '2024-03-09', 5, 'Confirmed'),
(6, 8, 6, '2024-10-06', 6, 'Confirmed'),
(7, 9, 3, '2024-11-03', 3, 'Confirmed'),
(8, 10, 4, '2024-12-04', 4, 'Cancelled'),
(9, 11, 5, '2024-02-05', 5, 'Confirmed'),
(10, 12, 1, '2024-01-12', 1, 'Confirmed'),
(11, 13, 2, '2024-09-23', 2, 'Cancelled'),
(12, 14, 3, '2024-04-22', 3, 'Confirmed'),
(13, 15, 3, '2024-03-26', 3, 'Confirmed'),
(14, 16, 4, '2024-10-25', 4, 'Cancelled'),
(15, 17, 5, '2024-06-12', 5, 'Confirmed'),
(16, 18, 6, '2024-05-23', 6, 'Confirmed'),
(17, 19, 3, '2024-09-17', 3, 'Confirmed'),
(18, 20, 4, '2024-02-12', 4, 'Cancelled'),
(19, 21, 5, '2024-03-18', 5, 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `digital engagement`
--

CREATE TABLE `digital engagement` (
  `Engagement_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Engagagement_Type` varchar(50) DEFAULT NULL,
  `Status` enum('Paused','Completed') DEFAULT NULL,
  `Engagement_Date` date DEFAULT NULL,
  `Engagement_Time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `digital engagement`
--

INSERT INTO `digital engagement` (`Engagement_ID`, `User_ID`, `Engagagement_Type`, `Status`, `Engagement_Date`, `Engagement_Time`) VALUES
(1, 3, 'Email Campaign', 'Completed', '2021-02-12', '10:00:00'),
(2, 4, 'Social Media', 'Paused', '2023-10-15', '13:30:00'),
(3, 9, 'Online Course', 'Completed', '2020-05-21', '17:00:00'),
(4, 10, 'Online Course', 'Paused', '2015-12-05', '14:30:00'),
(5, 11, 'Email Campaign', 'Completed', '2019-09-18', '14:00:00'),
(6, 12, 'Social Media', 'Paused', '2024-07-22', '15:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Event_ID` int(11) NOT NULL,
  `Event_Name` varchar(50) DEFAULT NULL,
  `Event_Type` varchar(50) DEFAULT NULL,
  `Event_Date` date DEFAULT NULL,
  `Event_Time` time DEFAULT NULL,
  `Event_Duration` time DEFAULT NULL,
  `Event_Description` text DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Organiser_ID` int(11) DEFAULT NULL,
  `Ticket_Price` varchar(16) DEFAULT NULL,
  `Ticket_Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`Event_ID`, `Event_Name`, `Event_Type`, `Event_Date`, `Event_Time`, `Event_Duration`, `Event_Description`, `Location`, `Organiser_ID`, `Ticket_Price`, `Ticket_Type`) VALUES
(1, 'Tech Conference 2024', 'Conference', '2024-12-10', '09:00:00', '08:00:00', 'A technology-focused conference.', 'New York, NY', 1, '100', 'General'),
(2, 'Community Meetup', 'Networking', '2024-12-12', '18:00:00', '03:00:00', 'A gathering for community members.', 'Los Angeles, CA', 2, 'Free', 'Community'),
(3, 'Workshop on AI', 'Workshop', '2024-12-15', '10:00:00', '04:00:00', 'Hands-on AI workshop.', 'San Francisco, CA', 3, '50', 'Workshop'),
(4, 'Health Camp', 'Camp', '2024-12-18', '08:00:00', '06:00:00', 'Free health checkups.', 'Chicago, IL', 4, 'Free', 'Health'),
(5, 'Code Marathon', 'Hackathon', '2024-12-20', '09:00:00', '12:00:00', 'Coding competition.', 'Austin, TX', 5, 'Free', 'Hackathon'),
(6, 'Annual Charity Gala', 'Gala', '2024-12-25', '19:00:00', '05:00:00', 'Fundraiser event.', 'Miami, FL', 6, '200', 'VIP');

-- --------------------------------------------------------

--
-- Table structure for table `event_ tag`
--

CREATE TABLE `event_ tag` (
  `Event_Tag_ID` int(11) NOT NULL,
  `Event_ID` int(11) DEFAULT NULL,
  `Tag_ID` int(11) DEFAULT NULL,
  `Date_Assign` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_ tag`
--

INSERT INTO `event_ tag` (`Event_Tag_ID`, `Event_ID`, `Tag_ID`, `Date_Assign`) VALUES
(1, 1, 1, '2024-12-01'),
(2, 2, 2, '2024-12-02'),
(3, 3, 4, '2024-12-03'),
(4, 4, 3, '2024-12-04'),
(5, 5, 1, '2024-12-05'),
(6, 6, 6, '2024-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `Interest_ID` int(11) NOT NULL,
  `Interest_Name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`Interest_ID`, `Interest_Name`) VALUES
(1, 'Learning'),
(2, 'Sharing'),
(3, 'Working'),
(4, 'Happening'),
(5, 'Caring');

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE `organisation` (
  `Organisation_ID` int(11) NOT NULL,
  `Organisation_Name` varchar(50) DEFAULT NULL,
  `Location` varchar(150) DEFAULT NULL,
  `Contact_No` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`Organisation_ID`, `Organisation_Name`, `Location`, `Contact_No`, `Email`) VALUES
(1, 'Tech Innovators', 'New York, NY', '1234567890', 'contact@techinnovators.com'),
(2, 'Green Earth', 'Los Angeles, CA', '0987654321', 'info@greenearth.com'),
(3, 'Edu Future', 'San Francisco, CA', '9876543210', 'info@edufuture.com'),
(4, 'Global Aid', 'Chicago, IL', '8765432109', 'contact@globalaid.com'),
(5, 'Code Warriors', 'Austin, TX', '7654321098', 'info@codewarriors.com'),
(6, 'Community Builders', 'Miami, FL', '6543210987', 'support@communitybuilders.com');

-- --------------------------------------------------------

--
-- Table structure for table `organiser`
--

CREATE TABLE `organiser` (
  `Organiser_ID` int(11) NOT NULL,
  `Organiser_Name` varchar(50) DEFAULT NULL,
  `Contact` int(11) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organiser`
--

INSERT INTO `organiser` (`Organiser_ID`, `Organiser_Name`, `Contact`, `Type`) VALUES
(1, 'Alice Johnson', 2147483647, 'Corporate'),
(2, 'Bob Smith', 2147483647, 'Community'),
(3, 'Carol Adams', 2147483647, 'Volunteer'),
(4, 'David Lee', 2147483647, 'Freelancer'),
(5, 'Emily Clarke', 2147483647, 'Partner'),
(6, 'Frank Miller', 2147483647, 'Individual');

-- --------------------------------------------------------

--
-- Table structure for table `space`
--

CREATE TABLE `space` (
  `Space_ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Capacity` int(11) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `space`
--

INSERT INTO `space` (`Space_ID`, `Name`, `Capacity`, `Area`, `Location`) VALUES
(1, 'Main Conference Room', 100, 'Third Floor', 'New York, NY'),
(2, 'Outdoor Patio', 50, 'Outside', 'Los Angeles, CA'),
(3, 'Workshop Hall', 200, 'Ground Floor', 'San Francisco, CA'),
(4, 'Health Center', 150, 'First Floor', 'Chicago, IL'),
(5, 'Coding Lab', 80, 'Third Floor', 'Austin, TX'),
(6, 'Gala Ballroom', 500, 'Second Floor', 'Miami, FL');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `Tag_ID` int(11) NOT NULL,
  `Tag_Name` varchar(50) DEFAULT NULL,
  `Tag_Description` varchar(50) DEFAULT NULL,
  `Created_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`Tag_ID`, `Tag_Name`, `Tag_Description`, `Created_Date`) VALUES
(1, 'Technology', 'Innovative topics in technology.', '2024-01-01'),
(2, 'Sustainability', 'Practices for a better planet.', '2024-01-02'),
(3, 'Health', 'Promoting health and well-being.', '2024-01-03'),
(4, 'Education', 'Educational programs.', '2024-01-04'),
(5, 'Networking', 'Connecting people.', '2024-01-05'),
(6, 'Fundraising', 'Charity and fundraising events.', '2024-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Phone_No` int(11) DEFAULT NULL,
  `User_Type_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `First_Name`, `Last_Name`, `Email`, `Gender`, `Date_Of_Birth`, `Phone_No`, `User_Type_ID`) VALUES
(3, 'Alice', 'Smith', 'alice.smith@example.com', 'Female', '1990-05-10', 1234567890, 5),
(4, 'John', 'Johnson', 'john.johnson@example.com', 'Male', '1985-03-22', 1234567891, 6),
(5, 'Amy', 'Eurbank', 'amy.eurbank@example.com', 'Felame', '1990-04-12', 1234567891, 7),
(6, 'Ross', 'Rick', 'ross.rick@example.com', 'Male', '1981-01-04', 1234567891, 8),
(7, 'Alex', 'Jordan', 'alex.jordan@example.com', 'Male', '1995-10-12', 1234567891, 9),
(8, 'Jack', 'Jones', 'jack.jones@example.com', 'Male', '1982-06-07', 1234567891, 10),
(9, 'Frank', 'Blue', 'frank.blue@example.com', 'Male', '1993-09-25', 1234567895, 12),
(10, 'Grace', 'Gray', 'grace.gray@example.com', 'Female', '1990-11-03', 1234567896, 13),
(11, 'Hank', 'Silver', 'hank.silver@example.com', 'Male', '1987-04-16', 1234567897, 14),
(12, 'Charlie', 'Brown', 'charlie.brown@example.com', 'Male', '1992-08-15', 1234567892, 15),
(13, 'Diana', 'White', 'diana.white@example.com', 'Female', '1988-07-30', 1234567893, 16),
(14, 'John', 'Snow', 'random@example.com', 'Female', '1992-12-30', 1234567893, 17),
(15, 'Ragnar', 'Lothbrok', 'random@example.com', 'Female', '1991-03-30', 1234567893, 18),
(16, 'Varian', 'Wryn', 'random@example.com', 'Female', '0000-00-00', 1234567893, 19),
(17, 'John', 'Cena', 'random@example.com', 'Female', '1982-07-30', 1234567893, 20),
(18, 'Hasan', 'Abdul', 'random@example.com', 'Female', '1983-07-20', 1234567893, 21),
(19, 'Walter', 'White', 'random@example.com', 'Female', '1982-07-21', 1234567893, 22),
(20, 'John', 'Jacks', 'random@example.com', 'Male', '1991-12-30', 1234567893, 23),
(21, 'Carl', 'Wyzs', 'random@example.com', 'Male', '1991-03-30', 1234567893, 24),
(22, 'Aiden', 'Warth', 'random@example.com', 'Male', '1996-05-12', 1234567893, 25),
(23, 'Kosta', 'Cenat', 'random@example.com', 'Male', '1982-01-23', 1234567893, 26),
(24, 'George', 'Smith', 'random@example.com', 'Male', '1983-02-12', 1234567893, 27),
(25, 'Walt', 'Snea', 'random@example.com', 'Male', '1982-07-21', 1234567893, 28);

-- --------------------------------------------------------

--
-- Table structure for table `user_interest`
--

CREATE TABLE `user_interest` (
  `User_Interest_ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `Interest_ID` int(11) DEFAULT NULL,
  `Rank` int(11) DEFAULT NULL,
  `Date_Added` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_interest`
--

INSERT INTO `user_interest` (`User_Interest_ID`, `User_ID`, `Interest_ID`, `Rank`, `Date_Added`) VALUES
(1, 3, 1, 1, '2022-01-01'),
(2, 4, 2, 2, '2021-02-02'),
(3, 5, 3, 1, '2021-02-03'),
(4, 6, 4, 3, '2020-01-04'),
(5, 7, 5, 4, '2017-05-05'),
(6, 8, 1, 1, '2016-07-01'),
(7, 9, 2, 2, '2019-02-02'),
(8, 10, 3, 1, '2023-10-03'),
(15, 17, 5, 4, '2022-12-05'),
(16, 18, 1, 1, '2021-01-01'),
(17, 19, 2, 2, '2020-11-02'),
(18, 20, 3, 1, '2015-03-03'),
(19, 21, 4, 3, '2023-04-04'),
(20, 22, 5, 4, '2021-05-05'),
(21, 23, 1, 1, '2022-04-01'),
(22, 24, 2, 2, '2022-04-02'),
(23, 25, 3, 1, '2023-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `User_Log_ID` int(11) NOT NULL,
  `Check_In` datetime NOT NULL,
  `Check_Out` datetime DEFAULT NULL,
  `Type` varchar(50) NOT NULL,
  `Duration` int(11) DEFAULT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`User_Log_ID`, `Check_In`, `Check_Out`, `Type`, `Duration`, `User_ID`) VALUES
(1, '2024-01-12 09:00:00', '2024-01-12 17:00:00', 'Visit', 480, 3),
(2, '2024-02-12 08:30:00', '2024-02-12 15:30:00', 'Work', 420, 4),
(3, '2024-03-09 10:00:00', '2024-03-09 18:00:00', 'Event Participation', 480, 5),
(4, '2024-04-22 09:00:00', '2024-04-22 16:30:00', 'Workshop', 450, 6),
(5, '2024-05-23 08:00:00', '2024-05-23 14:30:00', 'Networking', 390, 7),
(6, '2024-06-12 09:15:00', '2024-06-12 17:15:00', 'Fundraising', 480, 8);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `User_Type_ID` int(11) NOT NULL,
  `Type_Name` varchar(50) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Created_Date` datetime DEFAULT NULL,
  `Permission_Level` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `Organisation_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`User_Type_ID`, `Type_Name`, `Description`, `Created_Date`, `Permission_Level`, `IsActive`, `Organisation_ID`) VALUES
(5, 'Organisation Member', 'Members belonging to an organization.', '2024-01-01 00:00:00', 3, 1, 1),
(6, 'Organisation Member', 'Members belonging to an organization.', '2024-02-02 00:00:00', 3, 1, 2),
(7, 'Organisation Member', 'Members belonging to an organization.', '2024-03-03 00:00:00', 3, 1, 3),
(8, 'Organisation Member', 'Members belonging to an organization.', '2024-04-04 00:00:00', 3, 1, 4),
(9, 'Organisation Member', 'Members belonging to an organization.', '2024-05-05 00:00:00', 3, 1, 5),
(10, 'Organisation Member', 'Members belonging to an organization.', '2024-06-06 00:00:00', 3, 1, 6),
(11, 'Guest', 'Visitors or temporary users.', '2023-01-12 00:00:00', 1, 1, NULL),
(12, 'Guest', 'Visitors or temporary users.', '2015-02-16 00:00:00', 1, 2, NULL),
(13, 'Guest', 'Visitors or temporary users.', '2014-04-10 00:00:00', 1, 1, NULL),
(14, 'Guest', 'Visitors or temporary users.', '2017-01-07 00:00:00', 1, 2, NULL),
(15, 'Guest', 'Visitors or temporary users.', '2024-04-22 00:00:00', 1, 1, NULL),
(16, 'Guest', 'Visitors or temporary users.', '2024-07-19 00:00:00', 1, 1, NULL),
(17, 'Community Member', 'Individuals part of the community.', '2021-02-15 00:00:00', 2, 1, NULL),
(18, 'Community Member', 'Individuals part of the community.', '2022-09-21 00:00:00', 2, 1, NULL),
(19, 'Community Member', 'Individuals part of the community.', '2024-11-24 00:00:00', 2, 2, NULL),
(20, 'Community Member', 'Individuals part of the community.', '2023-12-14 00:00:00', 2, 1, NULL),
(21, 'Community Member', 'Individuals part of the community.', '2017-03-17 00:00:00', 2, 2, NULL),
(22, 'Community Member', 'Individuals part of the community.', '2025-04-19 00:00:00', 2, 1, NULL),
(23, 'Workspace Member', 'Members of a co-working space.', '2024-01-01 00:00:00', 2, 1, NULL),
(24, 'Workspace Member', 'Members of a co-working space.', '2021-01-16 00:00:00', 2, 1, NULL),
(25, 'Workspace Member', 'Members of a co-working space.', '2022-01-16 00:00:00', 2, 1, NULL),
(26, 'Workspace Member', 'Members of a co-working space.', '2020-05-14 00:00:00', 2, 2, NULL),
(27, 'Workspace Member', 'Members of a co-working space.', '2020-11-24 00:00:00', 2, 2, NULL),
(28, 'Workspace Member', 'Members of a co-working space.', '2024-10-15 00:00:00', 2, 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD KEY `fk_booking_user` (`User_ID`),
  ADD KEY `fk_booking_event` (`Event_ID`),
  ADD KEY `fk_booking_space` (`Space_ID`);

--
-- Indexes for table `digital engagement`
--
ALTER TABLE `digital engagement`
  ADD PRIMARY KEY (`Engagement_ID`),
  ADD KEY `fk_digital_engagement_user` (`User_ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Event_ID`),
  ADD KEY `Organiser_ID` (`Organiser_ID`);

--
-- Indexes for table `event_ tag`
--
ALTER TABLE `event_ tag`
  ADD PRIMARY KEY (`Event_Tag_ID`),
  ADD KEY `Event_ID` (`Event_ID`,`Tag_ID`),
  ADD KEY `Tag_ID` (`Tag_ID`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD PRIMARY KEY (`Interest_ID`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
  ADD PRIMARY KEY (`Organisation_ID`);

--
-- Indexes for table `organiser`
--
ALTER TABLE `organiser`
  ADD PRIMARY KEY (`Organiser_ID`);

--
-- Indexes for table `space`
--
ALTER TABLE `space`
  ADD PRIMARY KEY (`Space_ID`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`Tag_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `User_Type_ID` (`User_Type_ID`);

--
-- Indexes for table `user_interest`
--
ALTER TABLE `user_interest`
  ADD PRIMARY KEY (`User_Interest_ID`),
  ADD KEY `Interest_ID` (`Interest_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`User_Log_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`User_Type_ID`),
  ADD KEY `fk_user_type_organisation` (`Organisation_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `digital engagement`
--
ALTER TABLE `digital engagement`
  MODIFY `Engagement_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `organisation`
--
ALTER TABLE `organisation`
  MODIFY `Organisation_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `User_Log_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `User_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fk_booking_event` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`),
  ADD CONSTRAINT `fk_booking_space` FOREIGN KEY (`Space_ID`) REFERENCES `space` (`Space_ID`),
  ADD CONSTRAINT `fk_booking_user` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `digital engagement`
--
ALTER TABLE `digital engagement`
  ADD CONSTRAINT `fk_digital_engagement_user` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`Organiser_ID`) REFERENCES `organiser` (`Organiser_ID`);

--
-- Constraints for table `event_ tag`
--
ALTER TABLE `event_ tag`
  ADD CONSTRAINT `event_ tag_ibfk_1` FOREIGN KEY (`Event_ID`) REFERENCES `event` (`Event_ID`),
  ADD CONSTRAINT `event_ tag_ibfk_2` FOREIGN KEY (`Tag_ID`) REFERENCES `tag` (`Tag_ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`User_Type_ID`) REFERENCES `user_type` (`User_Type_ID`);

--
-- Constraints for table `user_interest`
--
ALTER TABLE `user_interest`
  ADD CONSTRAINT `user_interest_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`),
  ADD CONSTRAINT `user_interest_ibfk_2` FOREIGN KEY (`Interest_ID`) REFERENCES `interest` (`Interest_ID`);

--
-- Constraints for table `user_log`
--
ALTER TABLE `user_log`
  ADD CONSTRAINT `user_log_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE;

--
-- Constraints for table `user_type`
--
ALTER TABLE `user_type`
  ADD CONSTRAINT `fk_user_type_organisation` FOREIGN KEY (`Organisation_ID`) REFERENCES `organisation` (`Organisation_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
