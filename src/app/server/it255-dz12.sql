-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2018 at 11:23 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it255-dz12`
--
CREATE DATABASE IF NOT EXISTS `it255-dz12` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `it255-dz12`;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `broj` int(11) NOT NULL,
  `naziv` varchar(30) NOT NULL,
  `tv` tinyint(1) NOT NULL,
  `kvadrati` int(11) NOT NULL,
  `kreveti` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `broj`, `naziv`, `tv`, `kvadrati`, `kreveti`) VALUES
(1, 1, 'Apartman', 1, 40, 2),
(2, 23, 'Soba', 0, 34, 1),
(3, 2, 'Soba', 1, 50, 3),
(4, 3, 'Apartman', 1, 70, 4),
(5, 5, 'Soba', 1, 57, 2),
(6, 7, 'Soba', 0, 20, 1),
(7, 45, 'asd', 1, 23, 2),
(8, 34, 'soba', 0, 57, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roomss`
--

CREATE TABLE IF NOT EXISTS `roomss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roomname` varchar(20) NOT NULL,
  `tv` tinyint(1) NOT NULL,
  `beds` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomss`
--

INSERT INTO `roomss` (`id`, `roomname`, `tv`, `beds`) VALUES
(1, 'soba', 1, 3),
(2, 'we', 0, 2),
(3, 'apartman', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `token`) VALUES
(13, 'zxcvbnm', 'zxcvbnm', 'zxcvbnm', '02c75fb22c75b23dc963c7eb91a062cc', 'd4953a27c0b72d87f822293cfedef0f3e34fe335'),
(22, 'david', 'david', 'david', '172522ec1028ab781d9dfd17eaca4427', 'e5f9733f3db542ac46b116061cbf9748490a4d13'),
(23, 'zikan', 'zikic', 'zikan', 'd07c80309ab133cb388aa6c6902a408e', '9bd5dcdf5bf2f9eb876a2fd9030c305b3aa8b6df'),
(26, 'milenko', 'milenko', 'milenko', 'edb614d05362c3c2bb39cce64be968cc', '3e726fa4f4a25c14f96254aa1e17b1b1f8d38860'),
(27, 'asdfg', 'asdfsd', 'vlada', 'de83521973ca6a8a2ed28d590fc28074', 'ef80d72f141b463ef4407023f800e3c4f86905fc');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
