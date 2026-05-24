-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2024 at 06:39 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `manhole`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `mobile`) VALUES
('admin', 'admin', 9894442716);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `mobile`, `uname`, `pass`) VALUES
(1, 'Thiru', 'thiru@gmail.com', 9582659563, 'thiru', '123456'),
(2, 'Raja', 'raja@gmail.com', 9662582255, 'raja', '123456'),
(3, 'Kumar', 'kumar@gmail.com', 9874561234, 'kumar', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `img_name` varchar(20) NOT NULL,
  `process_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `uname`, `status`, `latitude`, `longitude`, `date_time`, `img_name`, `process_st`) VALUES
(1, 'raja', 'Open', '13.013', '80.1697', '2024-04-04 20:38:18', 'M1.png', 1),
(2, 'raja', 'Open', '10.836258', '78.689229', '2024-04-04 20:42:31', 'M2.png', 1),
(3, 'raja', 'Broken', '10.836258', '78.689229', '2023-03-28 20:24:52', 'M3.png', 1),
(4, 'kumar', 'Open', '13.078145', '80.23774', '2024-04-04 20:42:40', 'M4.png', 1),
(5, 'kumar', 'Person', '10.85138', '78.65719', '2024-04-04 20:42:43', 'M5.png', 1),
(6, 'kumar', 'Person', '10.85138', '78.65719', '2024-03-18 12:36:10', 'M6.png', 0),
(7, 'kumar', 'Person', '10.85138', '78.65719', '2024-03-18 12:38:00', 'M7.png', 0),
(8, 'kumar', 'Person', '10.85138', '78.65719', '2024-04-04 20:38:10', 'M8.png', 1),
(9, 'kumar', 'Overflow', '10.85138', '78.65719', '2024-04-04 20:38:07', 'M9.png', 1),
(10, 'kumar', 'Broken', '10.851383', '78.657189', '2024-05-04 13:44:09', 'M10.png', 0),
(11, 'kumar', 'Open', '10.851383', '78.657189', '2024-05-04 14:05:58', 'M11.png', 0);
