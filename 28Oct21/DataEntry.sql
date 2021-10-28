-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2021 at 02:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Riya`
--

-- --------------------------------------------------------

--
-- Table structure for table `DataEntry`
--

CREATE TABLE `DataEntry` (
  `S.no.` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Age` int(11) NOT NULL,
  `Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `DataEntry`
--

INSERT INTO `DataEntry` (`S.no.`, `Name`, `Gender`, `Age`, `Category`) VALUES
(1, 'Aman', 'male', 13, 'General'),
(2, 'Ami', 'Female', 23, 'OBC'),
(3, 'Bhumi', 'Female', 18, 'General'),
(4, 'Hari', 'male', 54, 'SC'),
(5, 'Sumita', 'Female', 19, 'ST'),
(6, 'Vini', 'Female', 43, 'OBC'),
(7, 'Manoj', 'male', 23, 'General'),
(8, 'Rehan', 'male', 23, 'General'),
(9, 'Shruti', 'Female', 22, 'General'),
(10, 'Arohi', 'Female', 25, 'ST'),
(11, 'Naman', 'male', 25, 'General');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DataEntry`
--
ALTER TABLE `DataEntry`
  ADD PRIMARY KEY (`S.no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DataEntry`
--
ALTER TABLE `DataEntry`
  MODIFY `S.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
