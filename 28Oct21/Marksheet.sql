-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2021 at 02:38 PM
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
-- Table structure for table `Marksheet`
--

CREATE TABLE `Marksheet` (
  `Roll no.` int(11) NOT NULL,
  `Student Name` varchar(20) NOT NULL,
  `Physics` int(11) NOT NULL,
  `Chemistry` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Marksheet`
--

INSERT INTO `Marksheet` (`Roll no.`, `Student Name`, `Physics`, `Chemistry`, `Mathematics`) VALUES
(101, 'Avni', 75, 65, 85),
(102, 'Anjani', 80, 43, 67),
(103, 'Jaydeep', 56, 76, 76),
(104, 'Kajal', 99, 100, 98),
(105, 'Manish', 75, 76, 88),
(106, 'Devarsh', 88, 67, 59),
(107, 'Riya', 76, 90, 65),
(108, 'shriya', 66, 99, 88),
(109, 'Shreyanshi', 87, 56, 98),
(110, 'Ranjeet', 87, 98, 76);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Marksheet`
--
ALTER TABLE `Marksheet`
  ADD PRIMARY KEY (`Roll no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Marksheet`
--
ALTER TABLE `Marksheet`
  MODIFY `Roll no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
