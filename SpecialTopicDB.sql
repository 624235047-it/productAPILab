-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 09, 2021 at 05:10 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `specialtopicdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `areaId` int(9) NOT NULL,
  `areaName` varchar(150) COLLATE utf16_thai_520_w2 NOT NULL,
  `areaPosition` varchar(250) COLLATE utf16_thai_520_w2 NOT NULL,
  `areaSize` int(5) NOT NULL,
  `areaPicture` varchar(200) COLLATE utf16_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerId` int(11) NOT NULL,
  `customerName` varchar(150) COLLATE utf16_thai_520_w2 NOT NULL,
  `customerAddress` varchar(500) COLLATE utf16_thai_520_w2 NOT NULL,
  `customerAge` int(3) NOT NULL,
  `customerPicture` varchar(100) COLLATE utf16_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `farmerId` int(9) NOT NULL,
  `farmerName` varchar(150) COLLATE utf16_thai_520_w2 NOT NULL,
  `farmerAddress` varchar(150) COLLATE utf16_thai_520_w2 NOT NULL,
  `farmerAge` int(3) NOT NULL,
  `plantPicture` varchar(200) COLLATE utf16_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `plantId` int(9) NOT NULL,
  `plantName` varchar(150) COLLATE utf16_thai_520_w2 NOT NULL,
  `plantDetail` varchar(200) COLLATE utf16_thai_520_w2 NOT NULL,
  `plantPrice` int(6) NOT NULL,
  `plantPicture` varchar(200) COLLATE utf16_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productId` int(11) NOT NULL,
  `productName` varchar(200) COLLATE utf16_thai_520_w2 NOT NULL,
  `productDescription` varchar(1000) COLLATE utf16_thai_520_w2 NOT NULL,
  `productPrice` int(5) NOT NULL,
  `productPicture` varchar(100) COLLATE utf16_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_thai_520_w2;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`areaId`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`farmerId`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`plantId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `areaId` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `farmerId` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `plantId` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
