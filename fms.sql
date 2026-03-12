-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2026 at 02:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('kajax', 'kajax@gmail.com', '0719479011', 'hello there?');

-- --------------------------------------------------------

--
-- Table structure for table `emptb`
--

CREATE TABLE `emptb` (
  `eid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `salary` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `emptb`
--

INSERT INTO `emptb` (`eid`, `username`, `password`, `email`, `phone`, `salary`) VALUES
(9, 'kajaxmanuh', 'kajax123', 'kajax@gmail.com', '0719479011', 10000),
(10, 'irene', 'irene123', 'irene@gmail.com', '0711893999', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `manages`
--

CREATE TABLE `manages` (
  `eid` int(11) NOT NULL,
  `ename` varchar(20) NOT NULL,
  `plant_id` varchar(20) NOT NULL,
  `plant_name` varchar(20) NOT NULL,
  `med_id` varchar(20) NOT NULL,
  `med_name` varchar(20) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `plant_id` varchar(10) NOT NULL,
  `med_id` varchar(10) NOT NULL,
  `med_name` varchar(20) NOT NULL,
  `med_type` varchar(20) DEFAULT NULL,
  `med_cost` varchar(20) DEFAULT NULL,
  `med_desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`plant_id`, `med_id`, `med_name`, `med_type`, `med_cost`, `med_desc`) VALUES
('P001', 'M001', 'Tafaban', 'Insecticide', '450rs/l', 'Chloropyriphos 20% EC'),
('P001', 'M002', 'Fame', 'Insecticide', '600rs/30ml', 'Fluendiamide 39.35% SC'),
('P001', 'M003', 'Sectin', 'Fungicide', '450rs/100g', 'Fenamidone 10% + mancozeb 50% WG'),
('P002', 'M004', 'Atrataf', 'Herbicide', '500rs/kg', 'Atrazine 50% Wp'),
('P002', 'M005', 'Tata Metri', 'Herbicide', '1000rs/kg', 'Metribuzin 70% Wp');

-- --------------------------------------------------------

--
-- Table structure for table `method`
--

CREATE TABLE `method` (
  `method_id` varchar(10) NOT NULL,
  `method_name` varchar(20) NOT NULL,
  `method_type` text DEFAULT NULL,
  `method_desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `method`
--

INSERT INTO `method` (`method_id`, `method_name`, `method_type`, `method_desc`) VALUES
('Md001', 'Traditional Method', 'Check basin method', 'Used in level fields'),
('Md002', 'Traditional Method', 'Furrow Irrigation method', 'Cheap labour'),
('Md003', 'Traditional Method', 'Strip Irrigation method', 'Used in raise platform'),
('Md004', 'Modern Method', 'Sprinkler system', 'Used in uneven lands'),
('Md005', 'Modern Method', 'Drip irrigation method', 'Used when there is scarcity of water');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plant_id` varchar(10) NOT NULL,
  `plant_name` varchar(20) NOT NULL,
  `plant_type` varchar(20) DEFAULT NULL,
  `plant_desc` text DEFAULT NULL,
  `soil_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plant_id`, `plant_name`, `plant_type`, `plant_desc`, `soil_type`) VALUES
('P001', 'Tomato', 'Food crop', 'Requires 10 months to grow', 'Red loam soil'),
('P002', 'Sugarcane', 'Food crop', 'Requires 1 year to grow', 'Black soil'),
('P003', 'Paddy', 'Feed and Food crop', 'Requires 4 months to grow', 'Alluvium soil'),
('P004', 'Sunflower', 'Oil crop', 'Requires 3 months to grow', 'Sandy loam soil'),
('P005', 'Cotton', 'Fiber crop', 'Requires 5 months to grow', 'Black soil');

-- --------------------------------------------------------

--
-- Table structure for table `userreg`
--

CREATE TABLE `userreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userreg`
--

INSERT INTO `userreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(12, 'kajax', 'manuh', 'Male', 'kajax@gmail.com', '0719479011', 'kajax123', 'kajax123'),
(13, 'irene', 'nzisa', 'Female', 'irene@gmail.com', '0711893999', 'irene123', 'irene123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emptb`
--
ALTER TABLE `emptb`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`med_id`),
  ADD KEY `plant_id` (`plant_id`);

--
-- Indexes for table `method`
--
ALTER TABLE `method`
  ADD PRIMARY KEY (`method_id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plant_id`);

--
-- Indexes for table `userreg`
--
ALTER TABLE `userreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emptb`
--
ALTER TABLE `emptb`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userreg`
--
ALTER TABLE `userreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_ibfk_1` FOREIGN KEY (`plant_id`) REFERENCES `plant` (`plant_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
