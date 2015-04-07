-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2015 at 10:46 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ls_dss`
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

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Administrator', 30, NULL),
('Client', 28, NULL),
('Core-Members', 26, NULL),
('None-Core-Members', 29, NULL);

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
('Administrator', 5, 'Root user', NULL, NULL, NULL, NULL),
('Client', 4, NULL, NULL, NULL, NULL, NULL),
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

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Administrator', 'Client'),
('Administrator', 'Core-Members'),
('Administrator', 'Freelancers'),
('Administrator', 'None-Core-Members');

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
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `company_name` varchar(45) NOT NULL,
  `company_position` varchar(45) NOT NULL,
  PRIMARY KEY (`firstname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `financial`
--

CREATE TABLE IF NOT EXISTS `financial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_price` decimal(9,2) NOT NULL,
  `receipt_no` int(11) NOT NULL,
  `receipt_date` date NOT NULL,
  `vat` decimal(9,2) NOT NULL,
  `tls_cut` decimal(9,2) NOT NULL,
  `talent_fee` decimal(9,2) NOT NULL,
  `total` decimal(9,2) NOT NULL,
  `file_name` varchar(45) NOT NULL,
  `files` varchar(200) NOT NULL,
  `record_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(45) NOT NULL,
  `time_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `financial`
--

INSERT INTO `financial` (`id`, `package_price`, `receipt_no`, `receipt_date`, `vat`, `tls_cut`, `talent_fee`, `total`, `file_name`, `files`, `record_added`, `update_by`, `time_updated`) VALUES
(11, '112312.00', 12, '0000-00-00', '21.00', '222.00', '22.00', '222222.00', 'Test Picture', 'uploads/Test Picture.png', '2015-03-29 22:37:52', 'me', '2000-01-09 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `Code` int(11) NOT NULL,
  `Model` varchar(45) NOT NULL,
  `Brand` varchar(45) NOT NULL,
  `Color` varchar(45) NOT NULL,
  `Specs` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `PurchasedDate` date NOT NULL,
  `Quantity` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`Code`,`user_id`),
  KEY `fk_inventory_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `middlename` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `specialization` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `roles` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `company` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `company` (`company`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `roles`, `company`, `status`, `created_at`, `updated_at`) VALUES
(28, 'test2', 'test2', 'tets', '8bP1zk7MJuJlY4-aLSBAN-Gf9FLus5wz', '$2y$13$3EsP5.ukTLI/JK.Wkz16le5Fa/eaJv./TxtFOjmUgjWgNd8LLttbq', NULL, 'testtest@testc.test1', '', 0, 10, 1427675166, 1427675166),
(30, 'admin', 'admin', 'nstration', '18x7fmHzzaPutNpTWYsWPphDCtD6jx-w', '$2y$13$HVM30jH1jfz1c.UvV71sTupdAPKdAqv9rG.6ZMze/VSSWpFKyrwcK', NULL, 'admin@sample.com', '', 0, 10, 1427856104, 1427856104);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
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

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `fk_inventory_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
