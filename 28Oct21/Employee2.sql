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
-- Table structure for table `Employee2`
--

CREATE TABLE `Employee2` (
  `S.no.` int(11) NOT NULL,
  `First Name` varchar(20) NOT NULL,
  `Last Name` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Employee2`
--

INSERT INTO `Employee2` (`S.no.`, `First Name`, `Last Name`, `City`, `State`) VALUES
(1, 'Riya', 'Kansagara', 'Chittorgarh', 'Rajasthan'),
(2, 'Avni', 'Sangani', 'Dhoraji', 'Gujarat'),
(3, 'Shriya', 'Patel', 'Ahmedabad', 'Gujarat'),
(4, 'Anjani', 'Patel', 'Ahmedabad', 'Gujarat'),
(5, 'Shreyanshi', 'Vekariya', 'Ahmedabad', 'Gujarat'),
(7, 'Kajal', 'Panchal', 'Ahmedabad', 'Gujarat'),
(8, 'Ranjeet', 'Jayswal', 'Ahmedabad', 'Gujarat'),
(9, 'Jaydeep', 'Bambhava', 'Rajkot', 'Gujarat'),
(10, 'Devarsh', 'Chauhan', 'Ahmedabad', 'Gujarat'),
(11, 'Manish', 'Thakkar', 'Surendranagar', 'Gujarat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employee2`
--
ALTER TABLE `Employee2`
  ADD PRIMARY KEY (`S.no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employee2`
--
ALTER TABLE `Employee2`
  MODIFY `S.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
