-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2015 at 01:44 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lightswitch`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('Core-Members', 1, NULL, NULL, NULL, NULL, NULL),
('Freelancers', 3, NULL, NULL, NULL, NULL, NULL),
('None-Core-Members', 2, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client_name` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `company_name` varchar(45) NOT NULL,
  `company_position` varchar(45) NOT NULL,
  PRIMARY KEY (`client_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_name`, `address`, `contact_number`, `company_name`, `company_position`) VALUES
('Ave Jay Moradillo', 'Blk 338 Lot 2 Tulip St. Pembo,Makati City', 8367990, 'Tsunemori Co.', 'CEO'),
('Markim Africa', 'sa Paoville', 95555555, 'Africa and junglers Co.', 'CEO'),
('Min Cheol', 'sa tabi tabi', 666, 'Cheol Cheol Company', 'CEO'),
('Patrick', 'sa Paoville', 797979, 'popo', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1424330563),
('m130524_201442_init', 1424330580);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` int(11) NOT NULL DEFAULT '10',
  `company` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company` (`company`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `roles`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'apccpowebadmin', 'CPO', 'Admin', 'RNwH815ZzRffOVn8I6SmJQCTc5eHNK-5', '$2y$13$Hkw5VzXsJVxP2nJA7RFp9.mG5cnZIh6uYF6vdRWkOCB5bfdXZUAIS', NULL, 'cpo@apc.edu.ph', 20, 0, 10, 1424616849, 1424616849),
(9, 'reikaxkira23', 'Ave', 'Moradillo', 'e5JnG66jg0URt2iYVm2OefjEIYjm-tEh', '$2y$13$ILuUoKuCuocPp7qMgGOQ1OTX6gYnxiHcooF2J2E1DkLArfEJzlKiC', NULL, 'reikaxkira@gmail.com', 10, 0, 10, 1424674604, 1424674604),
(10, 'migz', 'Miguel', 'Alonzo', 'l2PnCB9YKhnQgI9NT4pDQyNKeV66HRyi', '$2y$13$s8V5wL6To/bHsPW6.YJzWOz7yg2G.dSE0IXipjAy63xE5PKA4Bs5C', NULL, 'acmoradillo@student.apc.edu.ph', 10, 0, 10, 1424789154, 1424789154),
(11, 'renonpogi', 'Renon', 'Dadulla', 'J8bONWI6m-EMHolAXXGxIcKJ_VRd7Xur', '$2y$13$hqMe1J0vXV8OeWbH1IXemufvvwEMFErpn7Xjdnguol71MZ.xdjC7.', NULL, 'dadulla@student.apc.edu.ph', 10, 0, 10, 1424907831, 1424907831),
(12, 'miguel', 'Miguel', 'Moradillo', 'BQ_U24_E6XBf4LA4VW0fz7HYx7wBDVAs', '$2y$13$J9SgEwiWKxOsAgzRPNcTfeL0OOhn8mjZ5h1aGn0Wr/kG35Sy2B3ye', NULL, 'miguel@yahoo.com', 10, 0, 10, 1424912123, 1424912123),
(13, '123456', 'First', 'Last', 'TBspGA_EFItN4tr7I7Zrz9cFkZjvXRGk', '$2y$13$GYHsBXCzA0IzUx4vh2iBe.CRH4PGfJWp9iHaeoEhRZt5c1N6Si0WK', NULL, 'email@gmail.com', 15, 0, 10, 1425652635, 1425652635),
(14, 'none', 'none', 'none', 'tIl9RUmefVzptfa5jgFu5JJFg_KfQupp', '$2y$13$0JoKOXzi/2JS99CBg9B3uunbqBX0WtZN4Je16SXaB7gEyjavqZrMe', NULL, 'none@gmail.com', 15, 0, 10, 1425652704, 1425652704),
(15, 'free', 'free', 'free', 'g1-atUVvHg6dteDS0F45VPKeKein0SF0', '$2y$13$dyr8q0YyeDZ52Jzu6lkOburQR/uaFjMFuLxF35FG0IAmeVKkNleHy', NULL, 'free@gmail.com', 15, 0, 10, 1425652765, 1425652765);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
