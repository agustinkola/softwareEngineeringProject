-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 04:25 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`) VALUES
('Ad 1', 'Admin', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `student_Id` text NOT NULL,
  `name` text NOT NULL,
  `bangla` int(3) NOT NULL,
  `math` int(3) NOT NULL,
  `science` int(3) NOT NULL,
  `ict` int(3) NOT NULL,
  `social_science` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`student_Id`, `name`, `bangla`, `math`, `science`, `ict`, `social_science`) VALUES
('CSE 1001', 'Johirul islam', 85, 73, 67, 41, 55),
('CSE 1002', 'Abdul Islam', 70, 65, 85, 63, 57),
('cse 1004', 'Asif Uddin', 90, 85, 78, 87, 73);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_no` int(50) NOT NULL,
  `student_Id` text NOT NULL,
  `name` text NOT NULL,
  `semester` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `email` text NOT NULL,
  `mobile` int(11) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_no`, `student_Id`, `name`, `semester`, `father_name`, `mother_name`, `email`, `mobile`, `password`) VALUES
(1, 'CSE 1001', 'Johirul islam', '2nd', 'Jabed Ahmmed', 'Roksana Akter', 'student@gmail.com', 1858754178, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `s_no` int(11) NOT NULL,
  `teachers_id` varchar(11) NOT NULL,
  `name` text NOT NULL,
  `department` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`s_no`, `teachers_id`, `name`, `department`, `father_name`, `mother_name`, `email`, `Mobile`, `password`) VALUES
(1, 'TT 001', 'Abid Uddin', 'TT', 'Abul Bosor', 'Sokina Begum', 'teacher@gmail.com', 1526374515, 'teacher'),
(5, '1', 'ana', 'IT', 'xxx', 'yyy', 'ana@epoka.edu.al', 67888888, '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `s_no` (`s_no`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`s_no`),
  ADD UNIQUE KEY `teachers_id` (`teachers_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `s_no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
