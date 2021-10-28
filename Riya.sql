-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2021 at 03:14 PM
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
-- Indexes for table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`S.no.`);

--
-- Indexes for table `DataEntry`
--
ALTER TABLE `DataEntry`
  ADD PRIMARY KEY (`S.no.`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`S.no.`);

--
-- Indexes for table `Employee2`
--
ALTER TABLE `Employee2`
  ADD PRIMARY KEY (`S.no.`);

--
-- Indexes for table `Marksheet`
--
ALTER TABLE `Marksheet`
  ADD PRIMARY KEY (`Roll no.`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`Product id.`);

--
-- Indexes for table `Product2`
--
ALTER TABLE `Product2`
  ADD PRIMARY KEY (`Product id.`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Roll no.`);

--
-- Indexes for table `Table8`
--
ALTER TABLE `Table8`
  ADD PRIMARY KEY (`S.no.`);

--
-- Indexes for table `Vehicle`
--
ALTER TABLE `Vehicle`
  ADD PRIMARY KEY (`V code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DataEntry`
--
ALTER TABLE `DataEntry`
  MODIFY `S.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `S.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Employee2`
--
ALTER TABLE `Employee2`
  MODIFY `S.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `Marksheet`
--
ALTER TABLE `Marksheet`
  MODIFY `Roll no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `Product id.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12355;

--
-- AUTO_INCREMENT for table `Product2`
--
ALTER TABLE `Product2`
  MODIFY `Product id.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12355;

--
-- AUTO_INCREMENT for table `Student`
--
ALTER TABLE `Student`
  MODIFY `Roll no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112331;

--
-- AUTO_INCREMENT for table `Table8`
--
ALTER TABLE `Table8`
  MODIFY `S.no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
