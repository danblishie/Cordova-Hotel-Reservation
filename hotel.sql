-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 08:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookingstatus`
--

CREATE TABLE `bookingstatus` (
  `email` varchar(40) NOT NULL,
  `category` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `roomWant` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bookingstatus`
--

INSERT INTO `bookingstatus` (`email`, `category`, `type`, `roomWant`, `status`, `date`) VALUES
('admin@admin.com', 'Business Class ', 'Double Bed', -1, 1, '2023-10-24'),
('admin@admin.com', 'Business Class ', 'Double Bed', 1, 1, '2023-11-11'),
('iamsabit99@gmail.com', 'Business Class ', 'Single Bed', 21, 1, '2020-05-03'),
('test1@gmail.com', 'Business Class ', 'Double Bed', 2, 1, '2023-11-09'),
('test1@gmail.com', 'Business Class ', 'Double Bed', 5, 1, '2023-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `dec` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`name`, `type`, `cost`, `available`, `img`, `dec`) VALUES
('Business Class ', 'Double Bed', 20000, 9, '/assets/img/rooms/room2.jpg', 'AC Room'),
('Business Class ', 'Single Bed', 800, 10, '/assets/img/rooms/room3.jpg', 'Non AC Room'),
('Business Class ', 'Single Bed', 1200, 10, '/assets/img/rooms/room4.jpg', 'AC Room'),
('Business Class', 'Single Bed', 22000, 5, '/assets/img/rooms/Business ClassSingle Bed22000.pn', 'TESTINGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG'),
('Business Class ', 'Testing Room 5', 20000, 5, '/assets/img/rooms/room1.jpg', 'Maligo ng maganda dito'),
('First class', 'Double Bed', 1357, 24, '/assets/img/rooms/First classDouble Bed1357.png', 'This is a good room'),
('JBC Resort', 'Double Deck', 15000, 5, '/assets/img/rooms/Single Bed10000.png', 'Free Amenities'),
('SRJO Fun Central', 'Single Bed', 50000, 5, '/assets/img/rooms/SRJO Fun CentralSingle Bed50000.', 'Successfully add fully');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `phone`, `password`) VALUES
('admin', 'admin@admin.com', '1', '1'),
('Sabit', 'iamsabit99@gmail.com', '01744248058', '1'),
('Sabit', 'st.sabit13@gmail.com', '01744248058', '1'),
('test', 'test1@gmail.com', '09123456788', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD PRIMARY KEY (`email`,`category`,`type`,`roomWant`,`date`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`name`,`type`,`cost`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD CONSTRAINT `fk_01` FOREIGN KEY (`email`) REFERENCES `user` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
