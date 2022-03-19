-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 05:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `movie_name` varchar(70) DEFAULT NULL,
  `lead_actor` varchar(50) DEFAULT NULL,
  `lead_actress` varchar(50) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `year_of_release` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movie_name`, `lead_actor`, `lead_actress`, `director`, `year_of_release`) VALUES
(1, 'The Mummy', 'Brendan Fraser', 'Rachel Weisz', 'Stephen Sommers', 1999),
(2, 'Jurassic Park', 'Sam Neill', 'Laura Dern', 'Steven Spielberg', 1993),
(3, 'Black Panther', 'Chadwick Boseman', 'Letitia Wright', 'Ryan Coogler', 2018),
(4, 'The Batman', 'Robert Pattison', 'Zoe Kravitz', 'Matt Reeves', 2022),
(5, 'Fantastic Beasts', 'Eddie Redmayne', 'Ktherine Waterson', 'David Yates', 2016);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
