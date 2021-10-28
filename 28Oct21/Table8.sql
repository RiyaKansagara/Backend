-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2021 at 02:39 PM
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
-- Table structure for table `Table8`
--

CREATE TABLE `Table8` (
  `S.no.` int(11) NOT NULL,
  `PG Name` varchar(30) NOT NULL,
  `Total Rooms` int(11) NOT NULL,
  `3-Sharing` int(11) NOT NULL,
  `4-Sharing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Table8`
--

INSERT INTO `Table8` (`S.no.`, `PG Name`, `Total Rooms`, `3-Sharing`, `4-Sharing`) VALUES
(1, 'Supan', 10, 6, 4),
(2, 'Amola', 20, 13, 4),
(3, 'Shree Ji', 35, 20, 15),
(4, 'Daughter\'s home', 12, 6, 6),
(5, 'Gokul', 12, 5, 7),
(6, 'Metro Inn', 50, 40, 10),
(7, 'Katra House', 10, 5, 5),
(8, 'Amigo\'s Inn', 20, 13, 7),
(9, 'Living Shiving', 35, 20, 15),
(10, 'Sky homes', 70, 55, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Table8`
--
ALTER TABLE `Table8`
  ADD PRIMARY KEY (`S.no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Table8`
--
ALTER TABLE `Table8`
  MODIFY `S.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
