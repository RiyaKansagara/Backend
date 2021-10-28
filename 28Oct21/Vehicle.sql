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
-- Table structure for table `Vehicle`
--

CREATE TABLE `Vehicle` (
  `V code` int(11) NOT NULL,
  `Manufacturing year` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Category` varchar(20) NOT NULL,
  `Fuel type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Vehicle`
--

INSERT INTO `Vehicle` (`V code`, `Manufacturing year`, `Price`, `Category`, `Fuel type`) VALUES
(12302, 2010, 35000, '4-Wheeler', 'Petrol'),
(13245, 2020, 500000, '4-Wheeler', 'Diesel'),
(14235, 2019, 98000, '2-Wheeler', 'Petrol'),
(17654, 2021, 7600000, '4-Wheeler', 'Petrol'),
(17698, 2006, 105000, '2-Wheeler', 'Petrol'),
(67293, 2011, 45000, '2-Wheeler', 'Petrol'),
(76546, 2005, 7600000, '4-Wheeler', 'Petrol'),
(78763, 2013, 860000, '4-Wheeler', 'Diesel'),
(87452, 2002, 8000000, '4-Wheeler', 'Petrol'),
(98765, 2009, 3400000, '4-Wheeler', 'Diesel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Vehicle`
--
ALTER TABLE `Vehicle`
  ADD PRIMARY KEY (`V code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
