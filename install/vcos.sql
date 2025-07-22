-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2025 at 01:51 PM
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
-- Database: `vcos`
--

-- --------------------------------------------------------

--
-- Table structure for table `rms_sync_record`
--

CREATE TABLE `rms_sync_record` (
  `id` int(11) NOT NULL,
  `sync_name` varchar(100) NOT NULL,
  `sync_time` datetime NOT NULL,
  `result` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rms_sync_record`
--

INSERT INTO `rms_sync_record` (`id`, `sync_name`, `sync_time`, `result`) VALUES
(1, 'personal', '2025-07-22 14:50:20', 'ok'),
(2, 'personal', '2025-07-22 14:50:42', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE `system_config` (
  `id` varchar(32) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`id`, `value`) VALUES
('rms_url', 'https://rms.rvc.ac.th'),
('systemName', 'Vocational college OS'),
('systemSubName', 'VCOS'),
('systemThaiName', 'ระบบจัดการเว็บไซต์สำหรับอาชีวศึกษา');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(100) DEFAULT NULL,
  `user_type_id` int(11) NOT NULL DEFAULT 2,
  `picture` varchar(100) DEFAULT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `username`, `password`, `email`, `name`, `surname`, `user_type_id`, `picture`, `active`) VALUES
(1, 'dev', '81dc9bdb52d04dc20036dbd8313ed055', 'noppol.ins@gmail.com', 'นพพล', 'อินศร', 1, 'ZGV2.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(32) NOT NULL,
  `active_menu` text NOT NULL,
  `active_module` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `type_name`, `active_menu`, `active_module`) VALUES
(1, 'developer', 'qa,oqas,developer,admin,user_menu', 'ocd,rms'),
(2, 'admin', 'qa,oqas,adminuser_menu', ''),
(3, 'user', 'qa,oqas,user_menu', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rms_sync_record`
--
ALTER TABLE `rms_sync_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rms_sync_record`
--
ALTER TABLE `rms_sync_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
