-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2015 at 01:49 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

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
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `client_name` varchar(45) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `company_name` varchar(45) NOT NULL,
  `company_position` varchar(45) NOT NULL
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
  `apply_time` int(11) DEFAULT NULL
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
`id` int(11) NOT NULL,
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
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `roles`, `company`, `status`, `created_at`, `updated_at`) VALUES
(1, 'apccpowebadmin', 'CPO', 'Admin', 'RNwH815ZzRffOVn8I6SmJQCTc5eHNK-5', '$2y$13$Hkw5VzXsJVxP2nJA7RFp9.mG5cnZIh6uYF6vdRWkOCB5bfdXZUAIS', NULL, 'cpo@apc.edu.ph', 20, 0, 10, 1424616849, 1424616849),
(9, 'reikaxkira23', 'Ave', 'Moradillo', 'e5JnG66jg0URt2iYVm2OefjEIYjm-tEh', '$2y$13$ILuUoKuCuocPp7qMgGOQ1OTX6gYnxiHcooF2J2E1DkLArfEJzlKiC', NULL, 'reikaxkira@gmail.com', 10, 0, 10, 1424674604, 1424674604),
(10, 'migz', 'Miguel', 'Alonzo', 'l2PnCB9YKhnQgI9NT4pDQyNKeV66HRyi', '$2y$13$s8V5wL6To/bHsPW6.YJzWOz7yg2G.dSE0IXipjAy63xE5PKA4Bs5C', NULL, 'acmoradillo@student.apc.edu.ph', 10, 0, 10, 1424789154, 1424789154),
(11, 'renonpogi', 'Renon', 'Dadulla', 'J8bONWI6m-EMHolAXXGxIcKJ_VRd7Xur', '$2y$13$hqMe1J0vXV8OeWbH1IXemufvvwEMFErpn7Xjdnguol71MZ.xdjC7.', NULL, 'dadulla@student.apc.edu.ph', 10, 0, 10, 1424907831, 1424907831);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`client_name`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`), ADD KEY `company` (`company`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
