-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2015 at 02:07 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `softdev_alonzo_miguel_carlo_ourspace`
--

-- --------------------------------------------------------

--
-- Table structure for table `myaddress`
--

CREATE TABLE IF NOT EXISTS `myaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `home_address` varchar(50) DEFAULT NULL,
  `landline` varchar(20) DEFAULT NULL,
  `cellphone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `myaddress`
--

INSERT INTO `myaddress` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `created_at`, `home_address`, `landline`, `cellphone`) VALUES
(1, 'Miguel Carlo', 'Reyes', 'Alonzo', 'M', '2015-03-01 18:03:06', '123 street', '1234567', '987654321');

-- --------------------------------------------------------

--
-- Table structure for table `mycomment`
--

CREATE TABLE IF NOT EXISTS `mycomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myaddress_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myaddress_id` (`myaddress_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mycomment`
--

INSERT INTO `mycomment` (`id`, `myaddress_id`, `author`, `body`, `created_at`) VALUES
(1, 1, 'Miguel Alonzo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2015-03-01 18:06:44');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mycomment`
--
ALTER TABLE `mycomment`
  ADD CONSTRAINT `mycomment_ibfk_1` FOREIGN KEY (`myaddress_id`) REFERENCES `myaddress` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
