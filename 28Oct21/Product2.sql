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
-- Table structure for table `Product2`
--

CREATE TABLE `Product2` (
  `Product id.` int(11) NOT NULL,
  `CostPrice` int(11) NOT NULL,
  `SellingPrice` int(11) NOT NULL,
  `Margin` int(11) NOT NULL,
  `Profit/Loss` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Product2`
--

INSERT INTO `Product2` (`Product id.`, `CostPrice`, `SellingPrice`, `Margin`, `Profit/Loss`) VALUES
(12345, 1200, 1300, 100, 'Profit'),
(12346, 1120, 1220, 100, 'Profit'),
(12347, 100, 80, -20, 'Loss'),
(12348, 1000, 2000, 1000, 'Profit'),
(12349, 1230, 1230, 0, 'None'),
(12350, 1200, 1400, 200, 'Profit'),
(12351, 1500, 1400, -100, 'Loss'),
(12352, 2500, 3000, 500, 'Profit'),
(12353, 1230, 1220, -10, 'Loss'),
(12354, 5000, 10000, 5000, 'Profit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Product2`
--
ALTER TABLE `Product2`
  ADD PRIMARY KEY (`Product id.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Product2`
--
ALTER TABLE `Product2`
  MODIFY `Product id.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12355;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
