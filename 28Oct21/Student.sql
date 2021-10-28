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
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `Roll no.` int(11) NOT NULL,
  `Student Name` varchar(20) NOT NULL,
  `Standard` int(11) NOT NULL,
  `Section` varchar(1) NOT NULL,
  `Meduim` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`Roll no.`, `Student Name`, `Standard`, `Section`, `Meduim`) VALUES
(112321, 'Avni', 8, 'A', 'Gujarati'),
(112322, 'Anjani', 10, 'B', 'Hindi'),
(112323, 'Devarsh', 11, 'A', 'Marathi'),
(112324, 'Jaydeep', 8, 'B', 'Gujarati'),
(112325, 'Kajal', 10, 'A', 'Hindi'),
(112326, 'Manish', 11, 'B', 'Marathi'),
(112327, 'Ranjeet', 8, 'A', 'Gujarati'),
(112328, 'Riya', 10, 'B', 'Hindi'),
(112329, 'Shreyanshi', 11, 'A', 'Marathi'),
(112330, 'Shriya', 8, 'B', 'Gujarati');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Roll no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Student`
--
ALTER TABLE `Student`
  MODIFY `Roll no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112331;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
