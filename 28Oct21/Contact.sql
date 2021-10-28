-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2021 at 02:36 PM
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
-- Table structure for table `Contact`
--

CREATE TABLE `Contact` (
  `S.no.` int(11) NOT NULL,
  `Employee Name` varchar(11) NOT NULL,
  `Department` varchar(11) NOT NULL,
  `D.O.J` date NOT NULL,
  `Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Contact`
--

INSERT INTO `Contact` (`S.no.`, `Employee Name`, `Department`, `D.O.J`, `Salary`) VALUES
(1, 'Raj', 'Electrical', '2021-09-22', 15000),
(2, 'Ram', 'Mechanical', '2021-10-04', 20000),
(3, 'Jay', 'Civil', '2021-09-22', 15000),
(4, 'Karan', 'Admin', '2021-10-04', 20000),
(5, 'Arjun', 'Electrical', '2021-09-22', 15000),
(6, 'Veer', 'Mechanical', '2021-10-04', 20000),
(7, 'Kush', 'Civil', '2021-09-22', 15000),
(8, 'Luv', 'Admin', '2021-10-04', 20000),
(9, 'Reyan', 'Electrical', '2021-10-04', 15000),
(10, 'Abir', 'Mechanical', '2021-09-22', 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`S.no.`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
