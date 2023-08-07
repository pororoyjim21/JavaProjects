-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 03:24 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventoryandbillingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerorder`
--

CREATE TABLE `customerorder` (
  `OrderID` int(11) NOT NULL,
  `AccountID` varchar(255) NOT NULL,
  `ProductCode` varchar(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `BrandName` varchar(255) NOT NULL,
  `UnitPrice` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerorder`
--

INSERT INTO `customerorder` (`OrderID`, `AccountID`, `ProductCode`, `ProductName`, `BrandName`, `UnitPrice`, `Quantity`, `Total`) VALUES
(1, 'AC0002', 'PR0005', 'Shampoo', 'Sunsilk', 10, 5, 50),
(2, 'AC0002', 'PR0005', 'Shampoo', 'Sunsilk', 10, 5, 50),
(3, 'AC0002', 'PR0004', 'Toothpaste', 'closeup', 10, 5, 50);

-- --------------------------------------------------------

--
-- Table structure for table `registeracc`
--

CREATE TABLE `registeracc` (
  `AccountID` int(11) NOT NULL,
  `AccID` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `contactnum` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Cash` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registeracc`
--

INSERT INTO `registeracc` (`AccountID`, `AccID`, `username`, `password`, `firstname`, `lastname`, `contactnum`, `Address`, `Status`, `Cash`) VALUES
(1, 'AC0001', 'ramenwen', '1234', 'Roijim', 'Apolito', '09351353611', 'wawa,nasugbu,batangas', 'Vendor', 50),
(2, 'AC0002', 'newnemar', 'hecarim123', 'malcolm', 'pereyra', '09293417344', 'nasugbu,batangas', 'Customer', 1000),
(3, 'AC0003', 'mayonaise', 'naniwhat', 'kazuto', 'kirigaya', '09928398283', 'brgy 6', 'Customer', 1000),
(4, 'AC0004', 'benny', 'gwen', 'ben', 'tennyson', '09293928392', 'brgy 1 nasgubu,batangas', 'Vendor', 1000),
(5, 'AC0005', 'jajajale', '12345', 'joshua', 'henero', '09293938298', 'Lian,Nasugbu Batangas', 'Vendor', NULL),
(6, 'AC0006', 'gahama', '12345', 'Momochi', 'Lalatina', '09283728782', 'Tokyo,Japan', 'Vendor', NULL),
(7, 'AC0007', 'newuser', 'password', 'kirito', 'kirigaya', '09828283982', 'Tokyo,Japan', 'Vendor', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `StatusID` int(11) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`StatusID`, `Status`) VALUES
(1, 'Vendor'),
(2, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `stockID` int(11) NOT NULL,
  `VendorID` varchar(255) NOT NULL,
  `ProductCode` varchar(255) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `ProductBrand` varchar(255) NOT NULL,
  `UnitPrice` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`stockID`, `VendorID`, `ProductCode`, `ProductName`, `ProductBrand`, `UnitPrice`, `Quantity`) VALUES
(1, 'AC0001', 'PR0001', 'SoySauce', 'DatuPuti', 10, 20),
(2, 'AC0001', 'PR0002', 'Kopiko black', 'KOPIKO', 12, 20),
(3, 'ac0001', 'PR0003', 'Toothpaste', 'colgate', 11, 20),
(4, 'ac0001', 'PR0004', 'Toothpaste', 'closeup', 10, 40),
(5, 'ac0001', 'PR0005', 'Shampoo', 'Sunsilk', 10, 20),
(11, 'AC0001', 'PR0006', 'Laptop', 'Lenovo', 15000, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerorder`
--
ALTER TABLE `customerorder`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `registeracc`
--
ALTER TABLE `registeracc`
  ADD PRIMARY KEY (`AccountID`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`StatusID`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`stockID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerorder`
--
ALTER TABLE `customerorder`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `registeracc`
--
ALTER TABLE `registeracc`
  MODIFY `AccountID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `stockID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
