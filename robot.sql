-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 03:35 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `robot`
--

-- --------------------------------------------------------

--
-- Table structure for table `base`
--

CREATE TABLE `base` (
  `id` int(11) NOT NULL,
  `Forward` varchar(200) NOT NULL,
  `Backward` varchar(200) NOT NULL,
  `Stop` tinyint(1) NOT NULL,
  `LeftM` varchar(200) NOT NULL,
  `RightM` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base`
--

INSERT INTO `base` (`id`, `Forward`, `Backward`, `Stop`, `LeftM`, `RightM`) VALUES
(1, 'forward', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `motors`
--

CREATE TABLE `motors` (
  `angle1` int(6) NOT NULL,
  `angle2` int(6) NOT NULL,
  `angle3` int(6) NOT NULL,
  `angle4` int(6) NOT NULL,
  `angle5` int(6) NOT NULL,
  `angle6` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motors`
--

INSERT INTO `motors` (`angle1`, `angle2`, `angle3`, `angle4`, `angle5`, `angle6`) VALUES
(90, 90, 90, 90, 155, 32),
(90, 90, 59, 90, 155, 32),
(90, 90, 113, 69, 135, 48);

-- --------------------------------------------------------

--
-- Table structure for table `offvalues`
--

CREATE TABLE `offvalues` (
  `OffV` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offvalues`
--

INSERT INTO `offvalues` (`OffV`) VALUES
(0),
(0);

-- --------------------------------------------------------

--
-- Table structure for table `onvalues`
--

CREATE TABLE `onvalues` (
  `OnV` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `onvalues`
--

INSERT INTO `onvalues` (`OnV`) VALUES
(1),
(1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `base`
--
ALTER TABLE `base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
