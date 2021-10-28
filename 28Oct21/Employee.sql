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
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `S.no.` int(11) NOT NULL,
  `First Name` varchar(20) NOT NULL,
  `Last Name` varchar(20) NOT NULL,
  `D.O.J` date NOT NULL,
  `Designation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`S.no.`, `First Name`, `Last Name`, `D.O.J`, `Designation`) VALUES
(1, 'Riya', 'Kansagara', '2021-09-22', 'Full Stack'),
(2, 'Avni', 'Sangani', '2021-09-22', 'Full Stack'),
(3, 'Anjani', 'Patel', '2021-09-22', 'Full Stack'),
(4, 'Shriya', 'Patel', '2021-09-22', 'Full Stack'),
(5, 'Shreyanshi', 'Vekariya', '2021-09-22', 'Full Stack'),
(6, 'Kajal', 'Panchal', '2021-09-22', 'Full Stack'),
(7, 'Ranjeet', 'Jayswal', '2021-09-22', 'Full Stack'),
(8, 'Jaydeep', 'Bambhava', '2021-09-22', 'Full Stack'),
(9, 'Devarsh', 'Chauhan', '2021-10-04', 'Full Stack'),
(10, 'Manish', 'Thakkar', '2021-09-22', 'Full Stack');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`S.no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `S.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
