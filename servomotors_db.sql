-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 يونيو 2021 الساعة 20:36
-- إصدار الخادم: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servomotors_db`
--

-- --------------------------------------------------------

--
-- بنية الجدول `servomotorsstatus_table`
--

CREATE TABLE `servomotorsstatus_table` (
  `SMOOID` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `servomotorsstatus_table`
--

INSERT INTO `servomotorsstatus_table` (`SMOOID`, `status`) VALUES
(1, 1),
(2, 0),
(3, 1),
(4, 0),
(5, 1),
(6, 0),
(7, 1),
(8, 0),
(9, 1),
(10, 0),
(11, 1),
(12, 0),
(13, 1),
(14, 0),
(15, 1),
(16, 0),
(17, 1),
(18, 0),
(19, 1),
(20, 0),
(21, 1),
(22, 0),
(23, 1),
(24, 0),
(25, 1),
(26, 0),
(27, 1),
(28, 0),
(29, 1),
(30, 0),
(31, 1),
(32, 0);

-- --------------------------------------------------------

--
-- بنية الجدول `servomotors_table`
--

CREATE TABLE `servomotors_table` (
  `SMID` int(11) NOT NULL,
  `servoMotor1` int(11) NOT NULL,
  `servoMotor2` int(11) NOT NULL,
  `servoMotor3` int(11) NOT NULL,
  `servoMotor4` int(11) NOT NULL,
  `servoMotor5` int(11) NOT NULL,
  `servoMotor6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `servomotors_table`
--

INSERT INTO `servomotors_table` (`SMID`, `servoMotor1`, `servoMotor2`, `servoMotor3`, `servoMotor4`, `servoMotor5`, `servoMotor6`) VALUES
(1, 156, 50, 131, 57, 136, 48),
(2, 180, 180, 180, 180, 180, 180),
(3, 90, 90, 90, 90, 90, 90),
(4, 61, 125, 152, 56, 114, 53),
(5, 147, 127, 112, 135, 104, 132),
(6, 96, 111, 112, 99, 95, 128);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `servomotorsstatus_table`
--
ALTER TABLE `servomotorsstatus_table`
  ADD PRIMARY KEY (`SMOOID`);

--
-- Indexes for table `servomotors_table`
--
ALTER TABLE `servomotors_table`
  ADD PRIMARY KEY (`SMID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `servomotorsstatus_table`
--
ALTER TABLE `servomotorsstatus_table`
  MODIFY `SMOOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `servomotors_table`
--
ALTER TABLE `servomotors_table`
  MODIFY `SMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
