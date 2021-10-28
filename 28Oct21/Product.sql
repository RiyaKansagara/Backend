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
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `Product id.` int(11) NOT NULL,
  `Product Name` varchar(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Qty.` int(11) NOT NULL,
  `Ctaegory` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`Product id.`, `Product Name`, `Price`, `Qty.`, `Ctaegory`) VALUES
(12345, 'Oreo', 30, 1, 'Food'),
(12346, 'Tshirt', 400, 2, 'Clothing'),
(12347, 'Vivel ', 45, 1, 'Cosmetics'),
(12348, 'Lipstick', 250, 1, 'Cosmetics'),
(12349, 'Temptation', 80, 1, 'Food'),
(12350, 'Facewash', 130, 1, 'Cosmetics'),
(12351, 'Hoodies', 1200, 2, 'Clothing'),
(12352, 'Paracetamol', 32, 12, 'Medicine'),
(12353, 'Watch', 4995, 1, 'Accesories'),
(12354, 'Muffins', 160, 6, 'Food');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`Product id.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `Product id.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12355;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
