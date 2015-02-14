-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2014 at 05:46 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lightswitch`
--
CREATE DATABASE IF NOT EXISTS `lightswitch` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lightswitch`;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_assets`
--

CREATE TABLE IF NOT EXISTS `na3pc_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `na3pc_assets`
--

INSERT INTO `na3pc_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 123, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 68, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 69, 70, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 71, 72, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 73, 74, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 75, 76, 1, 'com_login', 'com_login', '{}'),
(13, 1, 77, 78, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 79, 80, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 81, 82, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 83, 84, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 85, 86, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 87, 88, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 89, 92, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 93, 94, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 95, 96, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 97, 98, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 99, 100, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 101, 104, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 105, 108, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 109, 110, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 67, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 90, 91, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 106, 107, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 102, 103, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 111, 112, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 113, 114, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 27, 19, 20, 3, 'com_content.article.1', 'Client', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(36, 27, 21, 22, 3, 'com_content.article.2', 'Financials', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 27, 23, 24, 3, 'com_content.article.3', 'Inventory', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 27, 25, 26, 3, 'com_content.article.4', 'Members', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 27, 27, 28, 3, 'com_content.article.5', 'Projects', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 27, 29, 30, 3, 'com_content.article.6', 'New Equipment', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(41, 27, 31, 32, 3, 'com_content.article.7', 'Available Equipment', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(42, 27, 33, 34, 3, 'com_content.article.8', 'Equipment', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 27, 35, 36, 3, 'com_content.article.9', 'Equipment Status', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(44, 1, 115, 116, 1, 'com_profiles', 'com_profiles', '{}'),
(45, 27, 37, 38, 3, 'com_content.article.10', 'Home', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(46, 27, 39, 40, 3, 'com_content.article.11', 'Income Statement', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(47, 27, 41, 42, 3, 'com_content.article.12', 'Contract Fee''s', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 27, 43, 44, 3, 'com_content.article.13', 'Balance Sheet', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 27, 45, 46, 3, 'com_content.article.14', 'Client Info Table', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 27, 47, 48, 3, 'com_content.article.15', 'Client Project Proposal''s List', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 27, 49, 50, 3, 'com_content.article.16', 'Core Members', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 27, 51, 52, 3, 'com_content.article.17', 'None Core Members', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 27, 53, 54, 3, 'com_content.article.18', 'Hired Talent/Freelancers', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(54, 27, 55, 56, 3, 'com_content.article.19', 'Proposed Projects', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 27, 57, 58, 3, 'com_content.article.20', 'Completed Project', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 27, 59, 60, 3, 'com_content.article.21', 'Archives', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 27, 61, 62, 3, 'com_content.article.22', 'Complete Equipment', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 27, 63, 64, 3, 'com_content.article.23', 'Complete Equipment (2)', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 1, 117, 120, 1, 'com_dpcalendar', 'com_dpcalendar', '{}'),
(60, 59, 118, 119, 2, 'com_dpcalendar.category.8', 'Uncategorised', ''),
(61, 1, 121, 122, 1, 'com_elasticsearch', 'elasticsearch', '{}'),
(62, 27, 65, 66, 3, 'com_content.article.24', 'TLS doc 1', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_associations`
--

CREATE TABLE IF NOT EXISTS `na3pc_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_banners`
--

CREATE TABLE IF NOT EXISTS `na3pc_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_banner_clients`
--

CREATE TABLE IF NOT EXISTS `na3pc_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `na3pc_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_categories`
--

CREATE TABLE IF NOT EXISTS `na3pc_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `na3pc_categories`
--

INSERT INTO `na3pc_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 60, 1, 13, 14, 1, 'uncategorised', 'com_dpcalendar', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","color":"3366CC"}', '', '', '{"author":"","robots":""}', 825, '2014-09-03 18:52:15', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_contact_details`
--

CREATE TABLE IF NOT EXISTS `na3pc_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_content`
--

CREATE TABLE IF NOT EXISTS `na3pc_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `na3pc_content`
--

INSERT INTO `na3pc_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 35, 'Client', 'client', '', '<p>Client Details can be found here.</p>', '', 1, 0, 0, 2, '2014-08-21 09:47:20', 825, '', '2014-08-28 00:04:35', 825, 0, '0000-00-00 00:00:00', '2014-08-21 09:47:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 22, '', '', 2, 112, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 36, 'Financials', 'financials', '', '<p>Company Payments,Receipts, Invoice can be found here.</p>', '', 1, 0, 0, 2, '2014-08-27 11:27:59', 825, '', '2014-08-28 00:08:37', 825, 0, '0000-00-00 00:00:00', '2014-08-27 11:27:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 21, '', '', 2, 27, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 37, 'Inventory', 'inventory', '', '<p>Welcome come to the lighswitch''s Inventory system.<br /><br />Please hover your mouse cursor in Equipments to view options.</p>', '', 1, 0, 0, 2, '2014-08-27 11:45:42', 825, '', '2014-08-27 22:50:59', 825, 0, '0000-00-00 00:00:00', '2014-08-27 11:45:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 20, '', '', 2, 33, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 38, 'Members', 'members', '', '<p>Names,address,contacts, and other details of everyone involve short/long run in the company is found here.</p>', '', 1, 0, 0, 2, '2014-08-27 11:46:12', 825, '', '2014-08-28 00:40:39', 825, 0, '0000-00-00 00:00:00', '2014-08-27 11:46:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 19, '', '', 2, 16, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 39, 'Projects', 'projects', '', '<p>Here you will find projects that were proposed by either the client or the lightswitch and also the projects that were completed.</p>', '', 1, 0, 0, 2, '2014-08-27 11:50:21', 825, '', '2014-08-28 00:57:47', 825, 0, '0000-00-00 00:00:00', '2014-08-27 11:50:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 18, '', '', 2, 35, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 40, 'New Equipment', 'camera', '', '<p> <span style="color: red; font-family: arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f1f1f1;">New!  Nikon D700 Digital SLR Camera                        Samsung NX 50-200mm                 <br /></span></p>\r\n<p><img src="images/camera1.jpg" border="0" alt="" width="241" height="240" /> <img src="images/lenses1.jpg" border="0" alt="" width="247" height="237" /></p>\r\n<p><span style="color: red; font-family: arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: #f1f1f1;">                          X - Tripod                          <br /></span></p>\r\n<p><img src="images/tripod1.jpg" border="0" alt="" width="245" height="238" /></p>', '', 1, 0, 0, 2, '2014-08-27 21:58:52', 825, '', '2014-08-28 01:11:15', 825, 825, '2014-09-03 18:11:37', '2014-08-27 21:58:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 18, 0, 17, '', '', 2, 33, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 41, 'Available Equipment', 'available-equipment', '', '<table width="701" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Quantity</td>\r\n<td>Equipment Name</td>\r\n<td>Availability</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>X-Tripod</td>\r\n<td>Yes</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>Camera</td>\r\n<td>Yes</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Lense</td>\r\n<td>Yes</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 2, '2014-08-27 22:30:44', 825, '', '2014-08-27 22:47:02', 825, 825, '2014-09-03 18:11:51', '2014-08-27 22:30:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 16, '', '', 2, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 42, 'Equipment', 'equipment', '', '<p>Here you will find everything you need to know about our equipments.<br /><br />Enjoy!</p>', '', 1, 0, 0, 2, '2014-08-27 22:52:46', 825, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-08-27 22:52:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 15, '', '', 2, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 43, 'Equipment Status', 'equipment-status', '', '<table width="578" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Equipment Description</td>\r\n<td>Serial #</td>\r\n<td>Status</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td bgcolor="green">Green</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td bgcolor="red">Red</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td bgcolor="blue">Blue</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td>Black</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>STATUS KEY</strong></p>\r\n<p>Red - Under Repair <br /> Blue - Borrowed <br /> Black - broken <br />Green - Available</p>', '', 1, 0, 0, 2, '2014-08-27 23:15:10', 825, '', '2014-08-27 23:59:52', 825, 825, '2014-09-03 18:11:33', '2014-08-27 23:15:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 14, '', '', 2, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 45, 'Home', 'home', '', '<p>Welcome to the lightswitch website!<br /><br /><br />*Note: Full feature of the system can only be viewed by core members or priviledge members.</p>', '', 1, 0, 0, 2, '2014-08-28 00:02:28', 825, '', '2014-08-28 00:04:02', 825, 825, '2014-09-04 04:36:56', '2014-08-28 00:02:28', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 13, '', '', 1, 119, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 46, 'Income Statement', 'income-statement', '', '<p><img src="images/income-statement-example-document.jpg" border="0" alt="" /></p>\r\n<p>{jsmallfib}</p>', '', 1, 0, 0, 2, '2014-08-28 00:09:20', 825, '', '2014-09-05 01:10:52', 825, 0, '0000-00-00 00:00:00', '2014-08-28 00:09:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 12, '', '', 2, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 47, 'Contract Fee''s', 'contract-fee-s', '', '<p><img src="images/FilmingFees.jpg" border="0" alt="" width="642" height="307" /></p>', '', 1, 0, 0, 2, '2014-08-28 00:15:11', 825, '', '2014-08-28 00:15:44', 825, 0, '0000-00-00 00:00:00', '2014-08-28 00:15:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 11, '', '', 2, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 48, 'Balance Sheet', 'balance-sheet', '', '<p><img src="images/BALANCE-SHEET.jpg" border="0" alt="" /></p>', '', 1, 0, 0, 2, '2014-08-28 00:16:57', 825, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-08-28 00:16:57', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 10, '', '', 2, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 49, 'Client Info Table', 'client-info-table', '', '<p> </p>\r\n<p> Info Table</p>\r\n<table width="522" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Client Name</td>\r\n<td>Address</td>\r\n<td>Contact Number</td>\r\n<td>Company Name</td>\r\n<td>Company Position</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Takeshi</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n<tr>\r\n<td>Ivan Castrodes</td>\r\n<td>Paranaque City</td>\r\n<td>09061234567</td>\r\n<td>Sugar Kid &amp; Co</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 2, '2014-08-28 00:22:46', 825, '', '2014-09-04 04:52:56', 825, 0, '0000-00-00 00:00:00', '2014-08-28 00:22:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 9, '', '', 2, 55, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 50, 'Client Project Proposal''s List', 'client-project-proposal-s-list', '', '<p><strong>1st Project - ATC(Alabang Town Center) Exhibit</strong></p>\r\n<p><strong>Client Company Name: sample-company<br /></strong></p>\r\n<p>Status: <strong>Approved</strong></p>\r\n<p><strong><a href="test.txt"> Exhibit Document </a></strong></p>\r\n<p><strong> </strong></p>\r\n<hr />\r\n<p><strong><br />2nd Project - Close Up Models Photoshoot</strong></p>\r\n<p><strong>Client Company Name: sample-company</strong></p>\r\n<p>Status:<strong> Pending<br /></strong></p>\r\n<p><strong><a href="test.txt"> Photoshoot Document </a></strong></p>\r\n<p> </p>\r\n<hr />\r\n<p><strong><br />3rd Project - Painting Request<br /></strong></p>\r\n<p><strong>Client Company Name: sample-company<br /></strong></p>\r\n<p>Status:<strong> Denied<br /></strong></p>\r\n<p><strong><a href="test.txt"> Painting Request Document </a></strong></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> {jsmallfib}</p>', '', 1, 0, 0, 2, '2014-08-28 00:27:29', 825, '', '2014-09-04 05:00:42', 825, 825, '2014-09-05 01:36:44', '2014-08-28 00:27:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, 8, '', '', 2, 55, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 51, 'Core Members', 'core-members', '', '<p> Core Members</p>\r\n<table width="648" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Name</td>\r\n<td>Age</td>\r\n<td>Birthday</td>\r\n<td>Address</td>\r\n<td>Phone Number</td>\r\n<td>Mobile Number</td>\r\n<td>Email Address</td>\r\n</tr>\r\n<tr>\r\n<td>Takeshi Garcia</td>\r\n<td>--</td>\r\n<td>--/--/---- </td>\r\n<td>Alabang City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>takeshi@samplemail.com </td>\r\n</tr>\r\n<tr>\r\n<td>Takeshi Garcia</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Alabang City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>takeshi@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Takeshi Garcia</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Alabang City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>takeshi@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Takeshi Garcia</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Alabang City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>takeshi@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Takeshi Garcia</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Alabang City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>takeshi@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Takeshi Garcia</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Alabang City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>takeshi@samplemail.com</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 2, '2014-08-28 00:47:41', 825, '', '2014-08-28 00:48:00', 825, 0, '0000-00-00 00:00:00', '2014-08-28 00:47:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 7, '', '', 2, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 52, 'None Core Members', 'none-core-members', '', '<p>None Core Members</p>\r\n<table width="648" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Name</td>\r\n<td>Age</td>\r\n<td>Birthday</td>\r\n<td>Address</td>\r\n<td>Phone Number</td>\r\n<td>Mobile Number</td>\r\n<td>Email Address</td>\r\n</tr>\r\n<tr>\r\n<td>Armand Cuenca</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Bicutan City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Armand@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Armand Cuenca</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Bicutan City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Armand@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Armand Cuenca</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Bicutan City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Armand@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Armand Cuenca</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Bicutan City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Armand@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Armand Cuenca</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Bicutan City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Armand@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Armand Cuenca</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Bicutan City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Armand@samplemail.com</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 2, '2014-08-28 00:52:01', 825, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-08-28 00:52:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 6, '', '', 2, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 53, 'Hired Talent/Freelancers', 'hired-talent-freelancers', '', '<p>Hired Talent/Freelancers</p>\r\n<table width="648" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Name</td>\r\n<td>Age</td>\r\n<td>Birthday</td>\r\n<td>Address</td>\r\n<td>Phone Number</td>\r\n<td>Mobile Number</td>\r\n<td>Email Address</td>\r\n</tr>\r\n<tr>\r\n<td>Kara Olarte</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Makati City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Kara@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Kara Olarte</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Makati City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Kara@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Kara Olarte</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Makati City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Kara@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Kara Olarte</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Makati City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Kara@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Kara Olarte</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Makati City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Kara@samplemail.com</td>\r\n</tr>\r\n<tr>\r\n<td>Kara Olarte</td>\r\n<td>--</td>\r\n<td>--/--/----</td>\r\n<td>Makati City</td>\r\n<td>xxx-xxxx</td>\r\n<td>xxxx-xxx-xxxx</td>\r\n<td>Kara@samplemail.com</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 0, 0, 2, '2014-08-28 00:54:44', 825, '', '2014-08-28 00:56:37', 825, 0, '0000-00-00 00:00:00', '2014-08-28 00:54:44', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 5, '', '', 2, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 54, 'Proposed Projects', 'proposed-projects', '', '<p><strong>Date Proposed: 00/00/0000<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample1 Document</a></strong></p>\r\n<p><strong>Date Proposed: 00/00/0000<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample2 Document </a></strong></p>\r\n<p><strong>Date Proposed: 00/00/0000<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample3 Document </a></strong></p>\r\n<p><strong>Date Proposed: 00/00/0000<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample4 Document </a></strong></p>\r\n<p><strong>Date Proposed: 00/00/0000<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample5 Document </a></strong></p>\r\n<p><strong>Date Proposed: 00/00/0000<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample6 Document </a></strong></p>\r\n<p><strong>Date Proposed: 00/00/0000<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample7 Document </a></strong></p>\r\n<p><strong>Date Proposed: 00/00/0000<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample8 Document </a></strong></p>\r\n<p><strong>Date Proposed: 00/00/0000<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample9 Document </a></strong></p>\r\n<p><strong>Date Proposed: 00/00/0000<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample10 Document </a></strong></p>', '', 1, 0, 0, 2, '2014-08-28 01:00:08', 825, '', '2014-08-28 01:09:30', 825, 0, '0000-00-00 00:00:00', '2014-08-28 01:00:08', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 4, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 55, 'Completed Project', 'completed-project', '', '<p><strong>Date Completed: 01/01/2010<br /></strong></p>\r\n<p><strong>Client: Sugar Kid &amp; Co<br /></strong></p>\r\n<p><strong><a href="test.txt"> Sample1 Document </a></strong></p>\r\n<p> </p>\r\n<p><span class="readonly plg-desc"><strong>{jsmallfib}</strong></span></p>', '', 1, 0, 0, 2, '2014-08-28 01:01:58', 825, '', '2014-09-05 01:39:31', 825, 0, '0000-00-00 00:00:00', '2014-08-28 01:01:58', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 3, '', '', 2, 17, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 56, 'Archives', 'archives', '', '<p>Heres where all archives are found</p>', '', 1, 0, 0, 2, '2014-09-03 18:08:54', 825, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-09-03 18:08:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 2, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 57, 'Complete Equipment', 'complete-equipment', '', '<p> <strong>New Equipment</strong></p>\r\n<table width="500" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Equipment Name</td>\r\n<td>Equipment Serial#</td>\r\n<td>Type</td>\r\n</tr>\r\n<tr>\r\n<td>Cannon X000</td>\r\n<td>0x000000000 </td>\r\n<td>Camera</td>\r\n</tr>\r\n<tr>\r\n<td>EF-S 10–22mm</td>\r\n<td>0x000000000</td>\r\n<td>Lense</td>\r\n</tr>\r\n<tr>\r\n<td>Canon deluxe tripod 300</td>\r\n<td>0x000000000</td>\r\n<td>Tripod</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p> <strong>Available Equipment</strong></p>\r\n<table width="500" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Quantity</td>\r\n<td>Equipment Type</td>\r\n<td>Availability</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>Tripod</td>\r\n<td>Yes</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>Camera</td>\r\n<td>Yes</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Lense</td>\r\n<td>Yes</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><br /> <strong>Equipment Status</strong></p>\r\n<table width="500" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Equipment Description</td>\r\n<td>Serial #</td>\r\n<td>Status</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td bgcolor="green">Green</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td bgcolor="red">Red</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td bgcolor="blue">Blue</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td>Black</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>STATUS KEY</strong></p>\r\n<p>Red - Under Repair <br /> Blue - Borrowed <br /> Black - broken <br />Green - Available</p>', '', 1, 0, 0, 2, '2014-09-03 18:15:36', 825, '', '2014-09-04 08:34:53', 825, 0, '0000-00-00 00:00:00', '2014-09-03 18:15:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 0, 1, '', '', 2, 34, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 58, 'Complete Equipment (2)', 'complete-equipment-2', '', '<p> <strong>New Equipment</strong></p>\r\n<table width="701" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Equipment Name</td>\r\n<td>Equipment Serial#</td>\r\n<td>Type</td>\r\n</tr>\r\n<tr>\r\n<td>Cannon X000</td>\r\n<td>0x000000000 </td>\r\n<td>Camera</td>\r\n</tr>\r\n<tr>\r\n<td>EF-S 10–22mm</td>\r\n<td>0x000000000</td>\r\n<td>Lense</td>\r\n</tr>\r\n<tr>\r\n<td>Canon deluxe tripod 300</td>\r\n<td>0x000000000</td>\r\n<td>Tripod</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p> <strong>Available Equipment</strong></p>\r\n<table width="701" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Quantity</td>\r\n<td>Equipment Type</td>\r\n<td>Availability</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>Tripod</td>\r\n<td>Yes</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>Camera</td>\r\n<td>Yes</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Lense</td>\r\n<td>Yes</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /><br /> <strong>Equipment Status</strong></p>\r\n<table width="578" border="4">\r\n<tbody>\r\n<tr>\r\n<td>Equipment Description</td>\r\n<td>Serial #</td>\r\n<td>Status</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td bgcolor="green">Green</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td bgcolor="red">Red</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td bgcolor="blue">Blue</td>\r\n</tr>\r\n<tr>\r\n<td>Nikon D700 Digital SLR Camera</td>\r\n<td>00000000-X</td>\r\n<td>Black</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>STATUS KEY</strong></p>\r\n<p>Red - Under Repair <br /> Blue - Borrowed <br /> Black - broken <br />Green - Available</p>', '', -2, 0, 0, 2, '2014-09-03 18:44:12', 825, '', '2014-09-03 18:44:25', 825, 0, '0000-00-00 00:00:00', '2014-09-03 18:44:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 0, '', '', 2, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 62, 'TLS doc 1', 'tls-doc-1', '', '<p>Sample Doc 1 for the month of january</p>\r\n<p><span class="readonly plg-desc"><strong> </strong></span></p>\r\n<p><strong>1st Project - ATC(Alabang Town Center) Exhibit</strong></p>\r\n<p><strong>Client Company Name: sample-company<br /></strong></p>\r\n<p>Status: <strong>Approved</strong></p>\r\n<p><strong><a href="test.txt"> Exhibit Document </a></strong></p>\r\n<p> </p>\r\n<hr />\r\n<p><span class="readonly plg-desc"><strong>{jsmallfib}</strong></span></p>', '', 1, 0, 0, 2, '2014-09-04 08:21:46', 825, '', '2014-09-05 01:37:54', 825, 0, '0000-00-00 00:00:00', '2014-09-04 08:21:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 0, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `na3pc_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_content_rating`
--

CREATE TABLE IF NOT EXISTS `na3pc_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `na3pc_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_dpcalendar_attendees`
--

CREATE TABLE IF NOT EXISTS `na3pc_dpcalendar_attendees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `attend_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remind_time` int(11) NOT NULL,
  `remind_type` tinyint(1) NOT NULL DEFAULT '1',
  `reminder_sent_date` datetime DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '1',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `transaction_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `processor` varchar(255) DEFAULT NULL,
  `net_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gross_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_percent` float DEFAULT NULL,
  `txn_type` varchar(255) NOT NULL,
  `payer_id` varchar(255) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `event_id` (`event_id`),
  KEY `idx_notify` (`reminder_sent_date`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_dpcalendar_caldav_calendarobjects`
--

CREATE TABLE IF NOT EXISTS `na3pc_dpcalendar_caldav_calendarobjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calendardata` mediumblob,
  `uri` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendarid` int(10) unsigned NOT NULL,
  `lastmodified` int(11) unsigned DEFAULT NULL,
  `etag` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned NOT NULL,
  `componenttype` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstoccurence` int(11) unsigned DEFAULT NULL,
  `lastoccurence` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calendarid` (`calendarid`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_dpcalendar_caldav_calendars`
--

CREATE TABLE IF NOT EXISTS `na3pc_dpcalendar_caldav_calendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ctag` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT '0',
  `calendarcolor` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `components` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `transparent` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `principaluri` (`principaluri`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_dpcalendar_caldav_groupmembers`
--

CREATE TABLE IF NOT EXISTS `na3pc_dpcalendar_caldav_groupmembers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `principal_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `principal_id` (`principal_id`,`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_dpcalendar_caldav_principals`
--

CREATE TABLE IF NOT EXISTS `na3pc_dpcalendar_caldav_principals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayname` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `vcardurl` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `external_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uri` (`uri`),
  KEY `external_id` (`external_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `na3pc_dpcalendar_caldav_principals`
--

INSERT INTO `na3pc_dpcalendar_caldav_principals` (`id`, `uri`, `email`, `displayname`, `vcardurl`, `external_id`) VALUES
(1, 'principals/admin', 'jrcastrodes@gmail.com', 'Super User', NULL, 825),
(2, 'principals/sugarkid', 'karenlove@sampe.mail', 'ivan', NULL, 826),
(4, 'principals/admin/calendar-proxy-read', 'jrcastrodes@gmail.com', 'Super User', NULL, 825),
(5, 'principals/sugarkid/calendar-proxy-read', 'karenlove@sampe.mail', 'ivan', NULL, 826),
(7, 'principals/admin/calendar-proxy-write', 'jrcastrodes@gmail.com', 'Super User', NULL, 825),
(8, 'principals/sugarkid/calendar-proxy-write', 'karenlove@sampe.mail', 'ivan', NULL, 826);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_dpcalendar_events`
--

CREATE TABLE IF NOT EXISTS `na3pc_dpcalendar_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `original_id` int(11) DEFAULT NULL,
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `rrule` varchar(255) DEFAULT NULL,
  `recurrence_id` varchar(255) DEFAULT NULL,
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `all_day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `color` varchar(250) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `capacity` int(11) DEFAULT NULL,
  `capacity_used` int(11) DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax` tinyint(1) NOT NULL DEFAULT '0',
  `ordertext` text NOT NULL,
  `orderurl` varchar(255) DEFAULT NULL,
  `canceltext` text NOT NULL,
  `cancelurl` varchar(255) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '1',
  `access_content` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `plugintype` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_start_date` (`start_date`),
  KEY `idx_end_date` (`end_date`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_dpcalendar_events_location`
--

CREATE TABLE IF NOT EXISTS `na3pc_dpcalendar_events_location` (
  `event_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`event_id`,`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_dpcalendar_extcalendars`
--

CREATE TABLE IF NOT EXISTS `na3pc_dpcalendar_extcalendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `plugin` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(250) NOT NULL DEFAULT '',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_plugin` (`plugin`),
  KEY `idx_state` (`state`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_dpcalendar_locations`
--

CREATE TABLE IF NOT EXISTS `na3pc_dpcalendar_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `province` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `zip` varchar(255) NOT NULL DEFAULT '',
  `street` varchar(255) NOT NULL DEFAULT '',
  `number` varchar(255) NOT NULL DEFAULT '',
  `room` varchar(255) NOT NULL DEFAULT '',
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_extensions`
--

CREATE TABLE IF NOT EXISTS `na3pc_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10028 ;

--
-- Dumping data for table `na3pc_extensions`
--

INSERT INTO `na3pc_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"0","show_article_options":"0","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"0","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"0","show_subcat_desc":"0","show_cat_num_articles":"0","show_base_description":"0","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"0","show_cat_num_articles_cat":"0","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"0","filter_field":"hide","show_headings":"0","list_show_date":"0","date_format":"","list_show_hits":"0","list_show_author":"0","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"0","show_feed_link":"0","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2013","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 825, '2014-08-27 21:06:29', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0);
INSERT INTO `na3pc_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 1, 2, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"2","register_tos_article":"","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 825, '2014-09-04 08:35:21', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.10","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"November 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.16","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'JB DropDown Menu', 'module', 'mod_jbmenu', '', 0, 1, 0, 0, '{"legacy":false,"name":"JB DropDown Menu","type":"module","creationDate":"March 10, 2012","author":"Extly.com","copyright":"Copyright (C) 2007 - 2012 Prieco, S.A. All rights reserved.","authorEmail":"support@extly.com","authorUrl":"http:\\/\\/www.extly.com","version":"2.0","description":"This module displays a menu on the frontend, based on Twitter''s Bootstrap, Subnav, Nav Nav-pills, with Dropdown Menu.","group":""}', '{"startLevel":"1","endLevel":"0","showAllChildren":"0","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'siteground-j16-22', 'template', 'siteground-j16-22', '', 0, 1, 1, 0, '{"legacy":false,"name":"siteground-j16-22","type":"template","creationDate":"17 May 2011","author":"SiteGround","copyright":"Siteground","authorEmail":"templates@siteground.com","authorUrl":"http:\\/\\/www.siteground.com","version":"1.0.0","description":"This Joomla Template is designed by SiteGround.com and can be used free of charge. The template is suitable for personal and business Joomla sites. It can be used with many popular modules and components for Joomla. At www.siteground.com you can find more great looking free Joomla templates.","group":""}', '{"sliding_background":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'Za Trigger menu', 'module', 'mod_za_trigger_menu', '', 0, 1, 0, 0, '{"legacy":false,"name":"Za Trigger menu","type":"module","creationDate":"iuni 2014","author":"Andrey","copyright":"Copyright (C) Za-studio.net. All rights reserved.","authorEmail":"design@za-studio.ru","authorUrl":"www.za-studio.net","version":"1","description":" \\n\\t\\n    \\n\\t<a href=\\"http:\\/\\/za-studio.net\\" style=\\"float:left;\\"><img src=\\"\\/modules\\/mod_za_trigger_menu\\/css\\/logo.png\\" \\/><\\/a>Za Trigger menu free For Joomla! Module let your joomla more elegant!<br\\/> <a href=\\"http:\\/\\/www.za-studio.net\\/index.php\\/en\\/template\\/premium-templates-joomla\\">Templates<\\/a><br\\/>\\n\\thttp:\\/\\/za-studio.net\\n\\t<a href=\\"http:\\/\\/www.za-studio.net\\/index.php\\/extension\\/modules-for-joomla\\">More extension..<\\/a>\\n    <br\\/>\\n    \\n\\t","group":""}', '{"startLevel":"1","endLevel":"0","showAllChildren":"1","loadJQuery":"0","bgtrigger":"#000000","fontcolor":"#fff","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'click_new', 'template', 'click_new', '', 0, 1, 1, 0, '{"legacy":false,"name":"click_new","type":"template","creationDate":"2014-06-11","author":"Za studio","copyright":"","authorEmail":"","authorUrl":"http:\\/\\/za-studio.ru","version":"3.0","description":"your logo","group":""}', '{"blogLayoutType":"default"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'SCLogin', 'module', 'mod_sclogin', '', 0, 1, 0, 0, '{"legacy":false,"name":"SCLogin","type":"module","creationDate":"2014\\/08\\/11","author":"SourceCoast | www.sourcecoast.com","copyright":"Copyright (C) 2009-2014 SourceCoast. All rights reserved.","authorEmail":"support@sourcecoast.com","authorUrl":"http:\\/\\/www.sourcecoast.com","version":"4.1.2","description":"\\n        <div style=''border: 1px solid #6ba6d7; text-align: justify;''><div style=''text-align:center; font-size: 18px; color: white; background:#6ba6d7; padding: 5px;''>SCLogin Module<\\/div><div style=''padding: 4px; background:white; font-size: 12px;''>Enhanced login module with flexible styles and customizations.<br\\/><br\\/><b>Main Features:<\\/b><ol><li>Core Joomla login functionality<\\/li><li>Facebook, Google+, Twitter and LinkedIn Authentication when combined with <a href=''http:\\/\\/www.sourcecoast.com\\/joomla-facebook\\/'' target=''_blank'' style=''color:red;''>JFBConnect<\\/a><\\/li><li>Modal popups, layout choices and bootstrap styling<\\/li><li>Supports Joomla 2.5 and 3.x<\\/li><\\/ol><br\\/>Please visit <a style=''color:red;'' href=''http:\\/\\/www.sourcecoast.com\\/sclogin\\/features\\/'' target=''_blank''>SourceCoast<\\/a> for more information or <a style=''color:red;'' href=''http:\\/\\/www.sourcecoast.com\\/forums'' target=''_blank''>our forums<\\/a> for support.<br\\/><br\\/><\\/div><\\/div><div style=''text-align:justify; border: 4px solid #6ba6d7; color:white; background: #6ba6d7; padding:2px; font-size: 14px;''>If you use SCLogin, please post a rating and a review at the Joomla! Extensions Directory: <a style=''color:#DDDDDD'' href=''http:\\/\\/extensions.joomla.org\\/extensions\\/access-a-security\\/site-access\\/authentication\\/24054'' target=''_blank''>SCLogin Enhanced Login<\\/a><\\/div>","group":""}', '{"displayType":"inline","modalButtonStyle":"button","modalCloseButton":"1","socialButtonsLayout":"vertical","showLoginForm":"1","showForgotUsername":"none","showForgotPassword":"none","showRegisterLink":"1","showRememberMe":"0","register_type":"joomla","jlogin":"","usesecure":"0","enableProfilePic":"0","profileWidth":"50","profileHeight":"50","linkProfile":"0","greetingName":"1","showUserMenu":"","userMenuStyle":"0","showLogoutButton":"1","showConnectButton":"1","jlogout":"","user_intro":"","loadJQuery":"0","showPoweredByLink":"2","moduleclass_sfx":"","cache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'JoomBuilder Dropdown Menu FREE', 'module', 'mod_jb_free_dropdown', '', 0, 1, 0, 0, '{"legacy":false,"name":"JoomBuilder Dropdown Menu FREE","type":"module","creationDate":"December 2012","author":"Michael Penn (JoomBuilder.net)","copyright":"Copyright (C) 2012 - JoomBuilder (Michael Penn). All rights reserved.","authorEmail":"enquiry@joombuilder.net","authorUrl":"www.joombuilder.net","version":"0.4","description":"MOD_JB_FREE_DROPDOWN_XML_DESCRIPTION","group":""}', '{"startLevel":"1","endLevel":"0","showAllChildren":"0","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Abivia.net SuperTable Free Plugin', 'plugin', 'abiviasupertable', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"Abivia.net SuperTable Free Plugin","type":"plugin","creationDate":"20140501","author":"Abivia Inc.","copyright":"(C) 2012-2014. Abivia Inc. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.abivia.net","version":"2.0.3","description":"PLG_ABIVIASUPERTABLE_PLUGIN_FREE_DESC","group":""}', '{"triggerWord":"supertable","cssMode":"preset","presetFile":"ahs","customFile":"","jsLoad":"1","messages":"1","debug":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'Simple File Upload v1.3 (for J1.6)', 'module', 'mod_simplefileuploadv1.3', '', 0, 1, 0, 0, '{"legacy":false,"name":"Simple File Upload v1.3 (for J1.6)","type":"module","creationDate":"January 2011","author":"Anders Wasen","copyright":"Copyright (C) 2011 Anders Was\\u00e9n. All rights reserved.","authorEmail":"awasen@gmail.com","authorUrl":"wasen.net","version":"1.3","description":"A simple upload module. Will allow a user to upload a file to the given folder fetched from the parameter settings.","group":""}', '{"upload_location":".\\/images\\/","upload_maxsize":"100000","upload_capthca":"0","upload_capthcacase":"0","upload_capthcacasemsg":"0","upload_email":"","upload_emailmsg":"0","upload_emailhtml":"1","@spacer":"","upload_fileexist":"2","upload_multi":"0","upload_maxmulti":"","upload_startmulti":"","upload_fileextensions":".gif .jpg .jpeg .png","upload_filetypes":"image\\/gif;image\\/jpeg;image\\/pjpeg;image\\/png;image\\/x-png","upload_blacklist":".php .php3 .php4 .php5 .php6 .phtml .pl .py .jsp .asp .htm .html .shtml .sh .cgi .exe .bat .cmd","upload_doubleext":"1","upload_phpext":"1","upload_gifcomment":"1","upload_donate":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'com_profiles', 'component', 'com_profiles', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_profiles","type":"component","creationDate":"2013-05-02","author":"Mad4Media - Fahrettin Kutyol","copyright":"Copyright(C) Mad4Media - All rights reserved!","authorEmail":"joomla@mad4media.com","authorUrl":"http:\\/\\/www.mad4media.de","version":"1.0.0","description":"Joomla Filemanager","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'MOD_EASYFILEUPLOADER', 'module', 'mod_easyfileuploader', '', 0, 1, 0, 0, '{"legacy":false,"name":"MOD_EASYFILEUPLOADER","type":"module","creationDate":"March 2012","author":"Michael Gilkes (Valor Apps)","copyright":"Copyright (C) 2010-2012 Michael Albert Gilkes. All rights reserved.","authorEmail":"michael@valorapps.com","authorUrl":"https:\\/\\/www.valorapps.com","version":"2.5","description":"MOD_EFU_DESCRIPTION","group":""}', '{"efu_parent":"images","efu_folder":"","efu_maxsize":"1000000","efu_custom":"1","efu_label":"Choose a file to upload:","efu_button":"Upload File","efu_question":"Replace existing files with uploaded files?","efu_yes":"Yes","efu_no":"No","efu_filetypes":"image\\/gif;image\\/jpeg;image\\/pjpeg;image\\/png;application\\/pdf;application\\/msword;application\\/zip;application\\/x-compressed;application\\/x-zip-compressed;multipart\\/x-zip;application\\/excel;application\\/vnd.ms-excel;application\\/x-excel;application\\/x-msexcel","efu_replace":"1","efu_variable":"fileToUpload","efu_multiple":"1","efu_results_bgcolor":"#DDEEFF","efu_user":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'plg_system_dpcalendar', 'plugin', 'dpcalendar', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_dpcalendar","type":"plugin","creationDate":"Aug 2014","author":"Digital Peak","copyright":"(C) 2007 - 2014 Digital Peak. All rights reserved.\\n\\t","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"4.0.12","description":"PLG_SYSTEM_DPCALENDAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'mod_dpcalendar_upcoming', 'module', 'mod_dpcalendar_upcoming', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_dpcalendar_upcoming","type":"module","creationDate":"Aug 2014","author":"Digital Peak","copyright":"(C) 2007 - 2014 Digital Peak. All rights reserved.\\n\\t","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"4.0.12","description":"MOD_DPCALENDAR_UPCOMING_XML_DESCRIPTION","group":""}', '{"max_events":"5","order":"asc","filter":"","ongoing":"0","output_grouping":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'mod_dpcalendar_counter', 'module', 'mod_dpcalendar_counter', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_dpcalendar_counter","type":"module","creationDate":"Aug 2014","author":"Digital Peak","copyright":"(C) 2007 - 2014 Digital Peak. All rights reserved.\\n\\t","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"4.0.12","description":"MOD_DPCALENDAR_COUNTER_XML_DESCRIPTION","group":""}', '{"filter":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'mod_dpcalendar_mini', 'module', 'mod_dpcalendar_mini', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_dpcalendar_mini","type":"module","creationDate":"Aug 2014","author":"Digital Peak","copyright":"(C) 2007 - 2014 Digital Peak. All rights reserved.\\n\\t","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"4.0.12","description":"MOD_DPCALENDAR_MINI_XML_DESCRIPTION","group":""}', '{"compact_events":"2","weekstart":"1","titleformat_month":"M Y","timeformat_month":"g:i a","show_event_as_popup":"2","popup_width":"","popup_height":"500","event_edit_popup":"1","calendar_height":"","event_color":"135CAE"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'plg_search_dpcalendar', 'plugin', 'dpcalendar', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_dpcalendar","type":"plugin","creationDate":"Aug 2014","author":"Digital Peak","copyright":"(C) 2007 - 2014 Digital Peak. All rights reserved.\\n\\t","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"4.0.12","description":"PLG_SEARCH_DPCALENDAR_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"0","pastevents":"1","date_format":"m.d.Y","time_format":"g:i a"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'com_dpcalendar', 'component', 'com_dpcalendar', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_dpcalendar","type":"component","creationDate":"Aug 2014","author":"Digital Peak","copyright":"(C) 2007 - 2014 Digital Peak. All rights reserved.\\n\\t","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"4.0.12","description":"COM_DPCALENDAR_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'dpcalendar', 'package', 'pkg_dpcalendar', '', 0, 1, 1, 0, '{"legacy":false,"name":"DPCalendar","type":"package","creationDate":"Aug 2014","author":"Digital Peak","copyright":"(C) 2007 - 2014 Digital Peak. All rights reserved.","authorEmail":"info@digital-peak.com","authorUrl":"joomla.digital-peak.com","version":"4.0.12","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'PLG_JSMALLFIB_TITLE', 'plugin', 'jsmallfib', 'content', 0, 1, 2, 0, '{"legacy":false,"name":"PLG_JSMALLFIB_TITLE","type":"plugin","creationDate":"March 2012","author":"Enrico Sandoli","copyright":"Copyright (c) 2009-2012 Enrico Sandoli. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.smallerik.com","version":"1.3.2.pro","description":"PLG_JSMALLFIB_DESC","group":""}', '{"default_path":"jsmallfib_top","is_path_relative":"1","default_path_override_enabled":"0","default_visitor_access_rights":"0","default_reguser_access_rights":"4","userbound_prefix":"Personal area for user ID","userbound_prefix_use":"1","userbound_parameter":"0","userbound_suffix":"","default_personal_access_rights":"5","groupbound_prefix":"Shared area for group ID","groupbound_prefix_use":"1","groupbound_parameter":"0","groupbound_suffix":"","default_group_access_rights":"5","pick_usergroup_lowest_rights":"1","unzip_allow":"1","allow_file_archiving":"1","filter_list_allow":"1","hidden_files":".htaccess, .ftpquota, *.php, index.html","hidden_folders":"","encode_to_utf8":"1","is_direct_link_to_files":"0","display_currentdirectory":"1","show_help_link":"1","allow_upload_box_hiding":"1","thumbsize":"60","display_filesize":"1","filesize_separator":".","display_filedate":"1","date_format":"dd_mm_yyyy_slashsep","display_filetime":"1","display_seconds":"1","default_sort_by":"name","default_sort_as":"asc","default_sort_nat":"1","upload_type":"SWFUPLOAD","swfupload_file_size_limit_number":"0","swfupload_file_size_limit_unit":"KB","swfupload_button_action":"1","swfupload_resolve_conflicts":"0","swfupload_file_upload_limit":"100","swfupload_file_types":"*.*","swfupload_file_types_description":"All files","table_width":"680","box_distance":"10","js_iconset":"smallerik","border_radius":"5","use_box_shadow":"1","shadow_width":"3","shadow_blur":"5","shadow_color":"100","header_bgcolor":"FFFFFF","js_icon_width":"32","js_icon_padding":"12","min_row_height":"40","highlighted_color":"FFD","oddrows_color":"F9F9F9","evenrows_color":"FFFFFF","framebox_bgcolor":"FFFFFF","framebox_linecolor":"CDD2D6","framebox_border":"1","framebox_linetype":"solid","line_bgcolor":"CDD2D6","line_height":"1","uploadbox_bgcolor":"FFFFFF","uploadbox_linecolor":"CDD2D6","uploadbox_border":"1","uploadbox_linetype":"solid","inputbox_bgcolor":"FFFFFF","inputbox_linecolor":"CDD2D6","inputbox_border":"1","inputbox_linetype":"solid","errorbox_bgcolor":"FFE4E1","errorbox_linecolor":"F8A097","errorbox_border":"1","errorbox_linetype":"solid","successbox_bgcolor":"E7F6DC","successbox_linecolor":"66B42D","successbox_border":"1","successbox_linetype":"solid","log_uploads":"0","log_downloads":"0","log_removedfolders":"0","log_removedfiles":"0","log_restoredfiles":"0","log_newfolders":"0","log_newfoldernames":"0","log_newfilenames":"0","log_unzippedfiles":"0","log_highlighted_color":"FF6600","log_email_from":"","log_email_from_string":"Jsmallfib Log Alert","log_email_to":"","log_email_subject":"Jsmallfib Log Alert","mail_in_html_mode":"0","log_type":"1","log_file_consolidation":"1","default_log_path":"logs","is_log_path_relative":"1","trusted_authors":"","default_file_chmod":"0664","default_dir_chmod":"0775","hide_credits_icon":"0","DEBUG_enabled":"0"}', '', '', 825, '2014-09-05 01:10:34', 0, 0),
(10018, 'elasticsearch', 'component', 'com_elasticsearch', '', 1, 1, 0, 0, '{"legacy":false,"name":"ElasticSearch","type":"component","creationDate":"July 2013","author":"Jean-Baptiste Cayrou and Adrien Gareau","copyright":"Copyright 2013 CRIM - Computer Research Institute of Montreal","authorEmail":"info-deti@crim.ca","authorUrl":"http:\\/\\/crim-ca.github.io\\/jes","version":"1.0","description":"ElasticSearch component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'Content - ElasticSearch', 'plugin', 'elastic', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"Content - ElasticSearch","type":"plugin","creationDate":"July 2013","author":"Jean-Baptiste Cayrou and Adrien Gareau","copyright":"Copyright 2013 CRIM - Computer Research Institute of Montreal","authorEmail":"info-deti@crim.ca","authorUrl":"http:\\/\\/crim-ca.github.io\\/jes","version":"1.0","description":"Plugin to transfert events to ElasticSearch plugin group","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'ElasticSearch - Article', 'plugin', 'article', 'elasticsearch', 0, 0, 1, 0, '{"legacy":false,"name":"ElasticSearch - Article","type":"plugin","creationDate":"July 2013","author":"Jean-Baptiste Cayrou and Adrien Gareau","copyright":"Copyright 2013 CRIM - Computer Research Institute of Montreal","authorEmail":"info-deti@crim.ca","authorUrl":"http:\\/\\/crim-ca.github.io\\/jes","version":"1.0","description":"ElasticSearch plugin for article content","group":""}', '{"boost":"1.0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'ElasticSearch - Contact', 'plugin', 'contact', 'elasticsearch', 0, 0, 1, 0, '{"legacy":false,"name":"ElasticSearch - Contact","type":"plugin","creationDate":"July 2013","author":"Jean-Baptiste Cayrou and Adrien Gareau","copyright":"Copyright 2013 CRIM - Computer Research Institute of Montreal","authorEmail":"info-deti@crim.ca","authorUrl":"http:\\/\\/crim-ca.github.io\\/jes","version":"1.0","description":"ElasticSearch plugin for contact content","group":""}', '{"boost":"1.0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'ElasticSearch - Weblinks', 'plugin', 'weblinks', 'elasticsearch', 0, 0, 1, 0, '{"legacy":false,"name":"ElasticSearch - Weblinks","type":"plugin","creationDate":"July 2013","author":"Jean-Baptiste Cayrou and Adrien Gareau","copyright":"Copyright 2013 CRIM - Computer Research Institute of Montreal","authorEmail":"info-deti@crim.ca","authorUrl":"http:\\/\\/crim-ca.github.io\\/jes","version":"1.0","description":"ElasticSearch plugin for weblinks content","group":""}', '{"boost":"1.0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'System - ElasticaLib', 'plugin', 'elasticaLib', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"System - ElasticaLib","type":"plugin","creationDate":"July 2013","author":"Jean-Baptiste Cayrou and Adrien Gareau","copyright":"Copyright 2013 CRIM - Computer Research Institute of Montreal","authorEmail":"info-deti@crim.ca","authorUrl":"http:\\/\\/crim-ca.github.io\\/jes","version":"1.0.0","description":"Register Elastica Library","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 'Elastica', 'library', 'Elastica', '', 0, 1, 1, 0, '{"legacy":false,"name":"Elastica","type":"library","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.0","description":"Elatica library for Joomla","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10025, 'mod_elasticsearch', 'module', 'mod_elasticsearch', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_elasticsearch","type":"module","creationDate":"September 2013","author":"Adrien GAREAU - Jean-Baptiste CAYROU","copyright":"Copyright 2013 CRIM - Computer Research Institute of Montreal","authorEmail":"info-deti@crim.ca","authorUrl":"http:\\/\\/crim-ca.github.io\\/jes","version":"1.0","description":"A search bar for elastic search component","group":""}', '{"width":"20","button_pos":"right","opensearch":"1","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10026, 'elasticsearch', 'package', 'pkg_elasticsearch', '', 0, 1, 1, 0, '{"legacy":false,"name":"ElasticSearch Package","type":"package","creationDate":"2013-08-22","author":"Adrien Gareau and Jean Baptiste Cayrou","copyright":"","authorEmail":"","authorUrl":"http:\\/\\/crim.ca\\/","version":"1.0","description":"ElasticSearch extension for Joomla","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10027, 'TZ Search', 'module', 'mod_tz_search', '', 0, 1, 0, 0, '{"legacy":false,"name":"TZ Search","type":"module","creationDate":"February 2014","author":"TuanNA","copyright":"","authorEmail":"support@templaza.com","authorUrl":"www.templaza.com","version":"2.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '{"width":"20","button":"0","button_pos":"left","imagebutton":"0","opensearch":"1","set_itemid":"0","searchfor":"1","ordering":"1","searchonly":"1","loadjquery":"0","loadbootstrap":"0","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_filters`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `na3pc_finder_links`
--

INSERT INTO `na3pc_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_content&view=article&id=21', 'index.php?option=com_content&view=article&id=21:archives&catid=2:uncategorised', 'Archives', 'Heres where all archives are found', '2014-09-04 02:08:55', '75e6d26df178adaf9dd58ee8b3847131', 1, 1, 2, '*', '2014-09-03 18:08:54', '0000-00-00 00:00:00', '2014-09-03 18:08:54', '0000-00-00 00:00:00', 0, 0, 3, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223231223b733a353a22616c696173223b733a383a226172636869766573223b733a373a2273756d6d617279223b733a34313a223c703e486572657320776865726520616c6c2061726368697665732061726520666f756e643c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22383235223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31313a226d6f6469666965645f6279223b733a313a2230223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a36393a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2230223b733a31313a226c696e6b5f7469746c6573223b733a313a2230223b733a31303a2273686f775f696e74726f223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2230223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2230223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a31303a2273686f775f69636f6e73223b733a313a2230223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2230223b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2230223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2230223b733a31363a2273686f775f7375626361745f64657363223b733a313a2230223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2230223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2230223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2230223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2230223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2231223b733a383a226f72646572696e67223b733a313a2230223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31313a2232313a6172636869766573223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a36333a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f61727469636c652f322d756e63617465676f72697365642f32312d6172636869766573223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3231223b733a353a22726f757465223b733a37383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32313a61726368697665732663617469643d323a756e63617465676f7269736564223b733a353a227469746c65223b733a383a224172636869766573223b733a31313a226465736372697074696f6e223b733a33343a22486572657320776865726520616c6c2061726368697665732061726520666f756e64223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2232223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30392d30332031383a30383a3534223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d30392d30332031383a30383a3534223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a333b7d),
(2, 'index.php?option=com_content&view=article&id=22', 'index.php?option=com_content&view=article&id=22:complete-equipment&catid=2:uncategorised&Itemid=113', 'Complete Equipment', 'New Equipment Equipment Name Equipment Serial# Type Cannon X000 0x000000000 Camera EF-S 10–22mm 0x000000000 Lense Canon deluxe tripod 300 0x000000000 Tripod Available Equipment Quantity Equipment Type Availability 3 Tripod Yes 5 Camera Yes 2 Lense Yes Equ', '2014-09-04 16:34:54', '2ff9d529cf89ab023e82ed64b994c032', 1, 1, 2, '*', '2014-09-03 18:15:36', '0000-00-00 00:00:00', '2014-09-03 18:15:36', '0000-00-00 00:00:00', 0, 0, 3, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223232223b733a353a22616c696173223b733a31383a22636f6d706c6574652d65717569706d656e74223b733a373a2273756d6d617279223b733a313531363a223c703ec2a03c7374726f6e673e4e65772045717569706d656e743c2f7374726f6e673e3c2f703e0d0a3c7461626c652077696474683d223530302220626f726465723d2234223e0d0a3c74626f64793e0d0a3c74723e0d0a3c74643e45717569706d656e74204e616d653c2f74643e0d0a3c74643e45717569706d656e742053657269616c233c2f74643e0d0a3c74643e547970653c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e43616e6e6f6e20583030303c2f74643e0d0a3c74643e3078303030303030303030c2a03c2f74643e0d0a3c74643e43616d6572613c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e45462d53203130e2809332326d6d3c2f74643e0d0a3c74643e30783030303030303030303c2f74643e0d0a3c74643e4c656e73653c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e43616e6f6e2064656c75786520747269706f64203330303c2f74643e0d0a3c74643e30783030303030303030303c2f74643e0d0a3c74643e547269706f643c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e0d0a3c703ec2a03c2f703e0d0a3c703ec2a03c7374726f6e673e417661696c61626c652045717569706d656e743c2f7374726f6e673e3c2f703e0d0a3c7461626c652077696474683d223530302220626f726465723d2234223e0d0a3c74626f64793e0d0a3c74723e0d0a3c74643e5175616e746974793c2f74643e0d0a3c74643e45717569706d656e7420547970653c2f74643e0d0a3c74643e417661696c6162696c6974793c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e333c2f74643e0d0a3c74643e547269706f643c2f74643e0d0a3c74643e5965733c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e353c2f74643e0d0a3c74643e43616d6572613c2f74643e0d0a3c74643e5965733c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e323c2f74643e0d0a3c74643e4c656e73653c2f74643e0d0a3c74643e5965733c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e0d0a3c703e3c6272202f3e3c6272202f3e203c7374726f6e673e45717569706d656e74205374617475733c2f7374726f6e673e3c2f703e0d0a3c7461626c652077696474683d223530302220626f726465723d2234223e0d0a3c74626f64793e0d0a3c74723e0d0a3c74643e45717569706d656e74204465736372697074696f6e3c2f74643e0d0a3c74643e53657269616c20233c2f74643e0d0a3c74643e5374617475733c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4e696b6f6e2044373030204469676974616c20534c522043616d6572613c2f74643e0d0a3c74643e30303030303030302d583c2f74643e0d0a3c7464206267636f6c6f723d22677265656e223e477265656e3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4e696b6f6e2044373030204469676974616c20534c522043616d6572613c2f74643e0d0a3c74643e30303030303030302d583c2f74643e0d0a3c7464206267636f6c6f723d22726564223e5265643c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4e696b6f6e2044373030204469676974616c20534c522043616d6572613c2f74643e0d0a3c74643e30303030303030302d583c2f74643e0d0a3c7464206267636f6c6f723d22626c7565223e426c75653c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4e696b6f6e2044373030204469676974616c20534c522043616d6572613c2f74643e0d0a3c74643e30303030303030302d583c2f74643e0d0a3c74643e426c61636b3c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e0d0a3c703e3c7374726f6e673e535441545553204b45593c2f7374726f6e673e3c2f703e0d0a3c703e526564202d20556e64657220526570616972203c6272202f3e20426c7565202d20426f72726f776564203c6272202f3e20426c61636b202d2062726f6b656e203c6272202f3e477265656e202d20417661696c61626c653c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22383235223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d30342030383a33343a3533223b733a31313a226d6f6469666965645f6279223b733a333a22383235223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a36393a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2230223b733a31313a226c696e6b5f7469746c6573223b733a313a2230223b733a31303a2273686f775f696e74726f223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2230223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2230223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a31303a2273686f775f69636f6e73223b733a313a2230223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2230223b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2230223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2230223b733a31363a2273686f775f7375626361745f64657363223b733a313a2230223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2230223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2230223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2230223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2230223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2237223b733a383a226f72646572696e67223b733a313a2231223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32313a2232323a636f6d706c6574652d65717569706d656e74223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a33303a22696e6465782e7068702f696e76656e746f72792f65717569706d656e7473223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3232223b733a353a22726f757465223b733a39393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32323a636f6d706c6574652d65717569706d656e742663617469643d323a756e63617465676f7269736564264974656d69643d313133223b733a353a227469746c65223b733a31383a22436f6d706c6574652045717569706d656e74223b733a31313a226465736372697074696f6e223b733a3537323a224e65772045717569706d656e742045717569706d656e74204e616d652045717569706d656e742053657269616c2320547970652043616e6e6f6e20583030302030783030303030303030302043616d6572612045462d53203130e2809332326d6d203078303030303030303030204c656e73652043616e6f6e2064656c75786520747269706f642033303020307830303030303030303020547269706f6420417661696c61626c652045717569706d656e74205175616e746974792045717569706d656e74205479706520417661696c6162696c697479203320547269706f642059657320352043616d657261205965732032204c656e7365205965732045717569706d656e74205374617475732045717569706d656e74204465736372697074696f6e2053657269616c202320537461747573204e696b6f6e2044373030204469676974616c20534c522043616d6572612030303030303030302d5820477265656e204e696b6f6e2044373030204469676974616c20534c522043616d6572612030303030303030302d5820526564204e696b6f6e2044373030204469676974616c20534c522043616d6572612030303030303030302d5820426c7565204e696b6f6e2044373030204469676974616c20534c522043616d6572612030303030303030302d5820426c61636b20535441545553204b455920526564202d20556e6465722052657061697220426c7565202d20426f72726f77656420426c61636b202d2062726f6b656e20477265656e202d20417661696c61626c65223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2232223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30392d30332031383a31353a3336223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d30392d30332031383a31353a3336223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a333b7d),
(3, 'index.php?option=com_content&view=article&id=23', 'index.php?option=com_content&view=article&id=23:complete-equipment-2&catid=2:uncategorised', 'Complete Equipment (2)', 'New Equipment Equipment Name Equipment Serial# Type Cannon X000 0x000000000 Camera EF-S 10–22mm 0x000000000 Lense Canon deluxe tripod 300 0x000000000 Tripod Available Equipment Quantity Equipment Type Availability 3 Tripod Yes 5 Camera Yes 2 Lense Yes Equ', '2014-09-04 02:45:00', 'a59c8313c9518c0baffbb0d9c411a8e8', 1, 0, 2, '*', '2014-09-03 18:44:12', '0000-00-00 00:00:00', '2014-09-03 18:44:12', '0000-00-00 00:00:00', 0, 0, 3, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223233223b733a353a22616c696173223b733a32303a22636f6d706c6574652d65717569706d656e742d32223b733a373a2273756d6d617279223b733a313531363a223c703ec2a03c7374726f6e673e4e65772045717569706d656e743c2f7374726f6e673e3c2f703e0d0a3c7461626c652077696474683d223730312220626f726465723d2234223e0d0a3c74626f64793e0d0a3c74723e0d0a3c74643e45717569706d656e74204e616d653c2f74643e0d0a3c74643e45717569706d656e742053657269616c233c2f74643e0d0a3c74643e547970653c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e43616e6e6f6e20583030303c2f74643e0d0a3c74643e3078303030303030303030c2a03c2f74643e0d0a3c74643e43616d6572613c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e45462d53203130e2809332326d6d3c2f74643e0d0a3c74643e30783030303030303030303c2f74643e0d0a3c74643e4c656e73653c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e43616e6f6e2064656c75786520747269706f64203330303c2f74643e0d0a3c74643e30783030303030303030303c2f74643e0d0a3c74643e547269706f643c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e0d0a3c703ec2a03c2f703e0d0a3c703ec2a03c7374726f6e673e417661696c61626c652045717569706d656e743c2f7374726f6e673e3c2f703e0d0a3c7461626c652077696474683d223730312220626f726465723d2234223e0d0a3c74626f64793e0d0a3c74723e0d0a3c74643e5175616e746974793c2f74643e0d0a3c74643e45717569706d656e7420547970653c2f74643e0d0a3c74643e417661696c6162696c6974793c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e333c2f74643e0d0a3c74643e547269706f643c2f74643e0d0a3c74643e5965733c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e353c2f74643e0d0a3c74643e43616d6572613c2f74643e0d0a3c74643e5965733c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e323c2f74643e0d0a3c74643e4c656e73653c2f74643e0d0a3c74643e5965733c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e0d0a3c703e3c6272202f3e3c6272202f3e203c7374726f6e673e45717569706d656e74205374617475733c2f7374726f6e673e3c2f703e0d0a3c7461626c652077696474683d223537382220626f726465723d2234223e0d0a3c74626f64793e0d0a3c74723e0d0a3c74643e45717569706d656e74204465736372697074696f6e3c2f74643e0d0a3c74643e53657269616c20233c2f74643e0d0a3c74643e5374617475733c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4e696b6f6e2044373030204469676974616c20534c522043616d6572613c2f74643e0d0a3c74643e30303030303030302d583c2f74643e0d0a3c7464206267636f6c6f723d22677265656e223e477265656e3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4e696b6f6e2044373030204469676974616c20534c522043616d6572613c2f74643e0d0a3c74643e30303030303030302d583c2f74643e0d0a3c7464206267636f6c6f723d22726564223e5265643c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4e696b6f6e2044373030204469676974616c20534c522043616d6572613c2f74643e0d0a3c74643e30303030303030302d583c2f74643e0d0a3c7464206267636f6c6f723d22626c7565223e426c75653c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4e696b6f6e2044373030204469676974616c20534c522043616d6572613c2f74643e0d0a3c74643e30303030303030302d583c2f74643e0d0a3c74643e426c61636b3c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e0d0a3c703e3c7374726f6e673e535441545553204b45593c2f7374726f6e673e3c2f703e0d0a3c703e526564202d20556e64657220526570616972203c6272202f3e20426c7565202d20426f72726f776564203c6272202f3e20426c61636b202d2062726f6b656e203c6272202f3e477265656e202d20417661696c61626c653c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22383235223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d30332031383a34343a3235223b733a31313a226d6f6469666965645f6279223b733a333a22383235223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a36393a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2230223b733a31313a226c696e6b5f7469746c6573223b733a313a2230223b733a31303a2273686f775f696e74726f223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2230223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2230223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a31303a2273686f775f69636f6e73223b733a313a2230223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2230223b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2230223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2230223b733a31363a2273686f775f7375626361745f64657363223b733a313a2230223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2230223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2230223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2230223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2230223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2232223b733a383a226f72646572696e67223b733a313a2230223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32333a2232333a636f6d706c6574652d65717569706d656e742d32223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a37353a22696e6465782e7068702f636f6d706f6e656e742f636f6e74656e742f61727469636c652f322d756e63617465676f72697365642f32332d636f6d706c6574652d65717569706d656e742d32223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3233223b733a353a22726f757465223b733a39303a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32333a636f6d706c6574652d65717569706d656e742d322663617469643d323a756e63617465676f7269736564223b733a353a227469746c65223b733a32323a22436f6d706c6574652045717569706d656e7420283229223b733a31313a226465736372697074696f6e223b733a3537323a224e65772045717569706d656e742045717569706d656e74204e616d652045717569706d656e742053657269616c2320547970652043616e6e6f6e20583030302030783030303030303030302043616d6572612045462d53203130e2809332326d6d203078303030303030303030204c656e73652043616e6f6e2064656c75786520747269706f642033303020307830303030303030303020547269706f6420417661696c61626c652045717569706d656e74205175616e746974792045717569706d656e74205479706520417661696c6162696c697479203320547269706f642059657320352043616d657261205965732032204c656e7365205965732045717569706d656e74205374617475732045717569706d656e74204465736372697074696f6e2053657269616c202320537461747573204e696b6f6e2044373030204469676974616c20534c522043616d6572612030303030303030302d5820477265656e204e696b6f6e2044373030204469676974616c20534c522043616d6572612030303030303030302d5820526564204e696b6f6e2044373030204469676974616c20534c522043616d6572612030303030303030302d5820426c7565204e696b6f6e2044373030204469676974616c20534c522043616d6572612030303030303030302d5820426c61636b20535441545553204b455920526564202d20556e6465722052657061697220426c7565202d20426f72726f77656420426c61636b202d2062726f6b656e20477265656e202d20417661696c61626c65223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a303b733a363a22616363657373223b733a313a2232223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30392d30332031383a34343a3132223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d30392d30332031383a34343a3132223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a333b7d);
INSERT INTO `na3pc_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(4, 'index.php?option=com_content&view=article&id=14', 'index.php?option=com_content&view=article&id=14:client-info-table&catid=2:uncategorised&Itemid=105', 'Client Info Table', 'Info Table Client Name Address Contact Number Company Name Company Position Ivan Castrodes Paranaque City 09061234567 Sugar Kid & Co Ivan Castrodes Paranaque City 09061234567 Sugar Kid & Co Ivan Castrodes Paranaque City 09061234567 Sugar Kid & Co Ivan Cas', '2014-09-04 12:52:57', '456903dfedf15cfaf34be404435e167a', 1, 1, 2, '*', '2014-08-28 00:22:46', '0000-00-00 00:00:00', '2014-08-28 00:22:46', '0000-00-00 00:00:00', 0, 0, 3, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223134223b733a353a22616c696173223b733a31373a22636c69656e742d696e666f2d7461626c65223b733a373a2273756d6d617279223b733a313830383a223c703ec2a03c2f703e0d0a3c703ec2a0496e666f205461626c653c2f703e0d0a3c7461626c652077696474683d223532322220626f726465723d2234223e0d0a3c74626f64793e0d0a3c74723e0d0a3c74643e436c69656e74204e616d653c2f74643e0d0a3c74643e416464726573733c2f74643e0d0a3c74643e436f6e74616374204e756d6265723c2f74643e0d0a3c74643e436f6d70616e79204e616d653c2f74643e0d0a3c74643e436f6d70616e7920506f736974696f6e3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e54616b657368693c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c74723e0d0a3c74643e4976616e2043617374726f6465733c2f74643e0d0a3c74643e506172616e6171756520436974793c2f74643e0d0a3c74643e30393036313233343536373c2f74643e0d0a3c74643e5375676172204b69642026616d703b20436f3c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22383235223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d30342030343a35323a3536223b733a31313a226d6f6469666965645f6279223b733a333a22383235223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a36393a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2230223b733a31313a226c696e6b5f7469746c6573223b733a313a2230223b733a31303a2273686f775f696e74726f223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2230223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2230223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a31303a2273686f775f69636f6e73223b733a313a2230223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2230223b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2230223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2230223b733a31363a2273686f775f7375626361745f64657363223b733a313a2230223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2230223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2230223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2230223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2230223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2237223b733a383a226f72646572696e67223b733a313a2239223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32303a2231343a636c69656e742d696e666f2d7461626c65223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a38333a22696e6465782e7068702f636c69656e742f636c69656e742d696e666f2f636c69656e742d696e666f2d7461626c652f322d756e63617465676f72697365642f31342d636c69656e742d696e666f2d7461626c65223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3134223b733a353a22726f757465223b733a39383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31343a636c69656e742d696e666f2d7461626c652663617469643d323a756e63617465676f7269736564264974656d69643d313035223b733a353a227469746c65223b733a31373a22436c69656e7420496e666f205461626c65223b733a31313a226465736372697074696f6e223b733a3836363a22496e666f205461626c6520436c69656e74204e616d65204164647265737320436f6e74616374204e756d62657220436f6d70616e79204e616d6520436f6d70616e7920506f736974696f6e204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f2054616b6573686920506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f204976616e2043617374726f64657320506172616e617175652043697479203039303631323334353637205375676172204b6964202620436f223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2232223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30382d32382030303a32323a3436223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d30382d32382030303a32323a3436223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a333b7d),
(5, 'index.php?option=com_content&view=article&id=15', 'index.php?option=com_content&view=article&id=15:client-project-proposal-s-list&catid=2:uncategorised&Itemid=106', 'Client Project Proposal''s List', '1st Project - ATC(Alabang Town Center) Exhibit Client Company Name: sample-company Status: Approved Exhibit Document 2nd Project - Close Up Models Photoshoot Client Company Name: sample-company Status: Pending Photoshoot Document 3rd Project - Painting Re', '2014-09-04 13:00:43', '3123321c2d69a9bceb9f4538b309447c', 1, 1, 2, '*', '2014-08-28 00:27:29', '0000-00-00 00:00:00', '2014-08-28 00:27:29', '0000-00-00 00:00:00', 0, 0, 3, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223135223b733a353a22616c696173223b733a33303a22636c69656e742d70726f6a6563742d70726f706f73616c2d732d6c697374223b733a373a2273756d6d617279223b733a3932343a223c703e3c7374726f6e673e3173742050726f6a656374202d2041544328416c6162616e6720546f776e2043656e7465722920457868696269743c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673e436c69656e7420436f6d70616e79204e616d653a2073616d706c652d636f6d70616e793c6272202f3e3c2f7374726f6e673e3c2f703e0d0a3c703e5374617475733a203c7374726f6e673e417070726f7665643c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673e3c6120687265663d22746573742e747874223e204578686962697420446f63756d656e74c2a03c2f613e3c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673ec2a03c2f7374726f6e673e3c2f703e0d0a3c6872202f3e0d0a3c703e3c7374726f6e673e3c6272202f3e326e642050726f6a656374202d20436c6f7365205570204d6f64656c732050686f746f73686f6f743c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673e436c69656e7420436f6d70616e79204e616d653a2073616d706c652d636f6d70616e793c2f7374726f6e673e3c2f703e0d0a3c703e5374617475733a3c7374726f6e673e2050656e64696e673c6272202f3e3c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673e3c6120687265663d22746573742e747874223e2050686f746f73686f6f7420446f63756d656e74203c2f613e3c2f7374726f6e673e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c6872202f3e0d0a3c703e3c7374726f6e673e3c6272202f3e3372642050726f6a656374202d205061696e74696e6720526571756573743c6272202f3e3c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673e436c69656e7420436f6d70616e79204e616d653a2073616d706c652d636f6d70616e793c6272202f3e3c2f7374726f6e673e3c2f703e0d0a3c703e5374617475733a3c7374726f6e673e2044656e6965643c6272202f3e3c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673e3c6120687265663d22746573742e747874223e205061696e74696e67205265717565737420446f63756d656e74203c2f613e3c2f7374726f6e673e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c703ec2a03c2f703e0d0a3c703ec2a03c2f703e0d0a3c703ec2a05b54686973206c696e65206973207265706c6163656420627920612066696c65207265706f7369746f7279207768656e207468652061727469636c65206973207669657765645d3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22383235223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d30342030353a30303a3432223b733a31313a226d6f6469666965645f6279223b733a333a22383235223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a36393a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2230223b733a31313a226c696e6b5f7469746c6573223b733a313a2230223b733a31303a2273686f775f696e74726f223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2230223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2230223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a31303a2273686f775f69636f6e73223b733a313a2230223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2230223b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2230223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2230223b733a31363a2273686f775f7375626361745f64657363223b733a313a2230223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2230223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2230223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2230223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2230223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2238223b733a383a226f72646572696e67223b733a313a2238223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a33333a2231353a636c69656e742d70726f6a6563742d70726f706f73616c2d732d6c697374223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a3130373a22696e6465782e7068702f70726f6a656374732d617263686976652f636c69656e742d70726f6a6563742d70726f706f73616c2d732d6c6973742f322d756e63617465676f72697365642f31352d636c69656e742d70726f6a6563742d70726f706f73616c2d732d6c697374223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3135223b733a353a22726f757465223b733a3131313a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31353a636c69656e742d70726f6a6563742d70726f706f73616c2d732d6c6973742663617469643d323a756e63617465676f7269736564264974656d69643d313036223b733a353a227469746c65223b733a33303a22436c69656e742050726f6a6563742050726f706f73616c2773204c697374223b733a31313a226465736372697074696f6e223b733a3430393a223173742050726f6a656374202d2041544328416c6162616e6720546f776e2043656e74657229204578686962697420436c69656e7420436f6d70616e79204e616d653a2073616d706c652d636f6d70616e79205374617475733a20417070726f766564204578686962697420446f63756d656e7420326e642050726f6a656374202d20436c6f7365205570204d6f64656c732050686f746f73686f6f7420436c69656e7420436f6d70616e79204e616d653a2073616d706c652d636f6d70616e79205374617475733a2050656e64696e672050686f746f73686f6f7420446f63756d656e74203372642050726f6a656374202d205061696e74696e67205265717565737420436c69656e7420436f6d70616e79204e616d653a2073616d706c652d636f6d70616e79205374617475733a2044656e696564205061696e74696e67205265717565737420446f63756d656e74205b54686973206c696e65206973207265706c6163656420627920612066696c65207265706f7369746f7279207768656e207468652061727469636c65206973207669657765645d223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2232223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30382d32382030303a32373a3239223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d30382d32382030303a32373a3239223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a333b7d),
(6, 'index.php?option=com_content&view=article&id=24', 'index.php?option=com_content&view=article&id=24:tls-doc-1&catid=2:uncategorised&Itemid=135', 'TLS doc 1', 'Sample Doc 1 for the month of january 1st Project - ATC(Alabang Town Center) Exhibit Client Company Name: sample-company Status: Approved Exhibit Document Current folder: top level info Filter file list: File nameclass=''emptyTd''> Sample Folder Add folder:', '2014-09-05 09:37:55', '04d4f388562b626cf4a47413efd3f2b4', 1, 1, 1, '*', '2014-09-04 08:21:46', '0000-00-00 00:00:00', '2014-09-04 08:21:46', '0000-00-00 00:00:00', 0, 0, 3, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223234223b733a353a22616c696173223b733a393a22746c732d646f632d31223b733a373a2273756d6d617279223b733a353138313a223c703e53616d706c6520446f63203120666f7220746865206d6f6e7468206f66206a616e756172793c2f703e0d0a3c703e3c7370616e20636c6173733d22726561646f6e6c7920706c672d64657363223e3c7374726f6e673ec2a03c2f7374726f6e673e3c2f7370616e3e3c2f703e0d0a3c703e3c7374726f6e673e3173742050726f6a656374202d2041544328416c6162616e6720546f776e2043656e7465722920457868696269743c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673e436c69656e7420436f6d70616e79204e616d653a2073616d706c652d636f6d70616e793c6272202f3e3c2f7374726f6e673e3c2f703e0d0a3c703e5374617475733a203c7374726f6e673e417070726f7665643c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673e3c6120687265663d22746573742e747874223e204578686962697420446f63756d656e74203c2f613e3c2f7374726f6e673e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c6872202f3e0d0a3c703e3c7370616e20636c6173733d22726561646f6e6c7920706c672d64657363223e3c7374726f6e673e3c6469762069643d274a535f4d41494e5f444956273e3c6469762069643d274a535f544f505f444956273e3c7461626c653e3c74722076616c69676e3d2763656e746572273e093c746420636f6c7370616e3d2732273e266e6273703b3c2f74643e3c2f74723e3c74722076616c69676e3d27746f70273e3c746420636c6173733d276e617669676174696f6e273e43757272656e7420666f6c6465723a203c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f54273e746f70206c6576656c3c2f613e3c2f74643e093c746420636c6173733d27746f704c696e6b73273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f542668656c703d31273e696e666f3c2f613e3c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c6469762069643d274a535f46494c45535f444956273e3c7461626c653e3c7472203e3c666f726d20616374696f6e3d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f5427206d6574686f643d27706f7374273e3c746420636f6c7370616e3d2737273e3c7461626c6520636c6173733d2766696c7465725461626c65273e3c74723e3c7464207469746c653d2255736520612073656d69636f6c6f6e2d736570617261746564206c697374206f66207061747465726e730a466f72206578616d706c653a202e6a70673b202e7064663b202e646f63223e46696c7465722066696c65206c6973743a266e6273703b266e6273703b3c2f74643e3c74642077696474683d273235302720616c69676e3d277269676874273e3c696e70757420636c6173733d276c6f6e675f696e7075745f6669656c6427206e616d653d2763757272656e745f66696c7465725f6c6973742720747970653d2774657874272076616c75653d2222202f3e3c2f74643e3c746420636c6173733d2766696c74657249636f6e5469636b273e3c696e70757420747970653d27696d61676527207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f7469636b2e706e6722207469746c653d2255736520612073656d69636f6c6f6e2d736570617261746564206c697374206f66207061747465726e730a466f72206578616d706c653a202e6a70673b202e7064663b202e646f6322202f3e3c2f74643e3c746420636c6173733d2766696c74657249636f6e44656c657465273e3c2f74643e3c2f74723e3c2f7461626c653e3c2f74643e3c2f666f726d3e3c2f74723e3c747220636c6173733d27726f7720686561646572273e3c746420636c6173733d27656d7074795464273e3c2f74643e3c746420636c6173733d2766696c654e616d65273e3c6120687265663d22687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f5426616d703b736f72745f62793d6e616d6526616d703b736f72745f61733d6465736322207469746c653d2253657420696e2064657363656e64696e67206f72646572223e2046696c65206e616d65203c696d67207374796c653d22626f726465723a303b22207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f6172726f775f75702e706e6722202f3e3c2f613e3c2f74643e3c746420636c6173733d27656d7074795464273e3c2f74643e3c746420636c6173733d27656d7074795464273e3c2f74643e3c746420636f6c7370616e3d27332720636c6173733d27656d7074795464273e3c2f74643e3c2f74723e3c747220636c6173733d276a736d616c6c696e65273e3c746420636f6c7370616e3d2737273e3c2f74643e3c2f74723e3c747220636c6173733d27726f77206f646427206f6e6d6f7573656f7665723d27746869732e636c6173734e616d653d22686967686c6967687465642227206f6e6d6f7573656f75743d27746869732e636c6173734e616d653d22726f77206f646422273e093c746420636c6173733d2766696c6549636f6e273e093c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f542f53616d706c652b466f6c646572273e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f666f6c6465722e706e67222077696474683d27333227202f3e3c2f613e093c2f74643e093c746420636c6173733d2766696c654e616d65273e093c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f542f53616d706c652b466f6c646572273e53616d706c6520466f6c6465723c2f613e093c2f74643e093c746420636f6c7370616e3d27332720636c6173733d27656d7074795464273e3c2f74643e3c746420636c6173733d2766696c65416374696f6e273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f54266f6c645f666f6c6465726e616d653d53616d706c652b466f6c646572273e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f72656e616d652e706e672220626f726465723d273027207469746c653d2252656e616d6520666f6c646572205b53616d706c6520466f6c6465725d22202f3e3c2f613e3c2f74643e3c746420636c6173733d27656d7074795464273e3c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c6469762069643d274a535f414354494f4e535f444956273e3c7461626c653e3c74723e093c746420636c6173733d2772696768745f616c69676e6564273e20202020202020202020202020203c666f726d207374796c653d27646973706c61793a696e6c696e653b206d617267696e3a203070783b2070616464696e673a203070783b2720656e63747970653d276d756c7469706172742f666f726d2d646174612720616374696f6e3d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f5427206d6574686f643d27706f7374273e41646420666f6c6465723a266e6273703b266e6273703b093c2f74643e093c74643e20202020202020202020202020203c696e70757420636c6173733d276c6f6e675f696e7075745f6669656c6427206e616d653d27757365726469722720747970653d277465787427202f3e093c2f74643e093c746420636c6173733d27616374696f6e49636f6e273e20202020202020202020202020203c696e70757420747970653d27696d61676527207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f616464666f6c6465722e706e6722207469746c653d224164642061206e657720666f6c64657222202f3e20202020202020202020202020203c2f666f726d3e093c2f74643e3c2f74723e3c74723e093c746420636c6173733d2772696768745f616c69676e65642720636f6c7370616e3d2731273e3c666f726d206e616d653d2775706c6f6164466f726d27207374796c653d27646973706c61793a696e6c696e653b206d617267696e3a203070783b2070616464696e673a203070783b2720656e63747970653d276d756c7469706172742f666f726d2d646174612720616374696f6e3d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f5427206d6574686f643d27706f7374273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f54267365745f75706c6f61645f747970655f636f6f6b69653d53574655504c4f414427203e55736520466c6173682075706c6f616465723c2f613e266e6273703b7c266e6273703b55706c6f61642061206e65772066696c653a266e6273703b093c2f74643e093c74643e093c696e707574206e616d653d227573657266696c652220747970653d2266696c6522202f3e093c2f74643e093c746420636c6173733d27616374696f6e49636f6e273e093c696e70757420747970653d27696d61676527207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f61646466696c652e706e6722207469746c653d2255706c6f61642061206e65772066696c6522202f3e093c696e70757420747970653d2768696464656e27206e616d653d2775706c6f61645f646972272076616c75653d224a53524f4f54223e09093c2f666f726d3e093c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c6469762069643d274a535f424f54544f4d5f444956273e3c7461626c653e3c74723e3c746420636c6173733d27616374696f6e49636f6e273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f54267365745f646973706c61795f616374696f6e735f636f6f6b69653d4e4f5f414354494f4e27207469746c653d22436c6f736520746865206e657720666f6c6465722f66696c652075706c6f616420626f78223e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f6d696e75732e706e672220626f726465723d273027202f3e3c2f613e3c2f74643e093c74643e266e6273703b3c2f74643e3c746420636c6173733d2772696768745f616c69676e6564273e3c6120687265663d27687474703a2f2f7777772e736d616c6c6572696b2e636f6d27207461726765743d275f626c616e6b273e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f6a736d616c6c6669622e706e672220626f726465723d273027207469746c653d224a536d616c6c666962202876657273696f6e20312e332e322e70726f290a436f70797269676874266e6273703b26636f70793b266e6273703b323030392d3230313220456e7269636f2053616e646f6c6922202f3e3c2f613e3c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c2f6469763e3c2f7374726f6e673e3c2f7370616e3e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22383235223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d30352030313a33373a3534223b733a31313a226d6f6469666965645f6279223b733a333a22383235223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a36393a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2230223b733a31313a226c696e6b5f7469746c6573223b733a313a2230223b733a31303a2273686f775f696e74726f223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2230223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2230223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a31303a2273686f775f69636f6e73223b733a313a2230223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2230223b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2230223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2230223b733a31363a2273686f775f7375626361745f64657363223b733a313a2230223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2230223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2230223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2230223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2230223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2235223b733a383a226f72646572696e67223b733a313a2230223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31323a2232343a746c732d646f632d31223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a37393a22696e6465782e7068702f70726f6a656374732d617263686976652f636c69656e742d70726f6a6563742d70726f706f73616c2d732d6c6973742f6a616e756172792d323031342d70726f6a65637473223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234223b733a353a22726f757465223b733a39303a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32343a746c732d646f632d312663617469643d323a756e63617465676f7269736564264974656d69643d313335223b733a353a227469746c65223b733a393a22544c5320646f632031223b733a31313a226465736372697074696f6e223b733a3434373a2253616d706c6520446f63203120666f7220746865206d6f6e7468206f66206a616e75617279203173742050726f6a656374202d2041544328416c6162616e6720546f776e2043656e74657229204578686962697420436c69656e7420436f6d70616e79204e616d653a2073616d706c652d636f6d70616e79205374617475733a20417070726f766564204578686962697420446f63756d656e742043757272656e7420666f6c6465723a20746f70206c6576656c20696e666f2046696c7465722066696c65206c6973743a2046696c65206e616d65636c6173733d27656d7074795464273e2053616d706c6520466f6c6465722041646420666f6c6465723a687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3234264974656d69643d313335266a736d616c6c6669623d31266469723d4a53524f4f54267365745f75706c6f61645f747970655f636f6f6b69653d53574655504c4f414427203e2055736520466c6173682075706c6f61646572207c2055706c6f61642061206e65772066696c653a223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2231223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30392d30342030383a32313a3436223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d30392d30342030383a32313a3436223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a333b7d);
INSERT INTO `na3pc_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(7, 'index.php?option=com_content&view=article&id=11', 'index.php?option=com_content&view=article&id=11:income-statement&catid=2:uncategorised&Itemid=109', 'Income Statement', 'Current folder: top level info Filter file list: File namehref=''http://localhost/lightswitch/index.php?option=com_content&view=article&id=11&Itemid=109&jsmallfib=1&dir=JSROOT/Sample+Folder''> Sample Folder Add folder: Use Flash uploader | Upload a new file', '2014-09-05 09:10:53', '8e02d1fb9d2388d4b19839c1db63cf5f', 1, 1, 2, '*', '2014-08-28 00:09:20', '0000-00-00 00:00:00', '2014-08-28 00:09:20', '0000-00-00 00:00:00', 0, 0, 3, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223131223b733a353a22616c696173223b733a31363a22696e636f6d652d73746174656d656e74223b733a373a2273756d6d617279223b733a343833303a223c703e3c696d67207372633d22696d616765732f696e636f6d652d73746174656d656e742d6578616d706c652d646f63756d656e742e6a70672220626f726465723d22302220616c743d2222202f3e3c2f703e0d0a3c703e3c6469762069643d274a535f4d41494e5f444956273e3c6469762069643d274a535f544f505f444956273e3c7461626c653e3c74722076616c69676e3d2763656e746572273e093c746420636f6c7370616e3d2732273e266e6273703b3c2f74643e3c2f74723e3c74722076616c69676e3d27746f70273e3c746420636c6173733d276e617669676174696f6e273e43757272656e7420666f6c6465723a203c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f54273e746f70206c6576656c3c2f613e3c2f74643e093c746420636c6173733d27746f704c696e6b73273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f542668656c703d31273e696e666f3c2f613e3c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c6469762069643d274a535f46494c45535f444956273e3c7461626c653e3c7472203e3c666f726d20616374696f6e3d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f5427206d6574686f643d27706f7374273e3c746420636f6c7370616e3d2737273e3c7461626c6520636c6173733d2766696c7465725461626c65273e3c74723e3c7464207469746c653d2255736520612073656d69636f6c6f6e2d736570617261746564206c697374206f66207061747465726e730a466f72206578616d706c653a202e6a70673b202e7064663b202e646f63223e46696c7465722066696c65206c6973743a266e6273703b266e6273703b3c2f74643e3c74642077696474683d273235302720616c69676e3d277269676874273e3c696e70757420636c6173733d276c6f6e675f696e7075745f6669656c6427206e616d653d2763757272656e745f66696c7465725f6c6973742720747970653d2774657874272076616c75653d2222202f3e3c2f74643e3c746420636c6173733d2766696c74657249636f6e5469636b273e3c696e70757420747970653d27696d61676527207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f7469636b2e706e6722207469746c653d2255736520612073656d69636f6c6f6e2d736570617261746564206c697374206f66207061747465726e730a466f72206578616d706c653a202e6a70673b202e7064663b202e646f6322202f3e3c2f74643e3c746420636c6173733d2766696c74657249636f6e44656c657465273e3c2f74643e3c2f74723e3c2f7461626c653e3c2f74643e3c2f666f726d3e3c2f74723e3c747220636c6173733d27726f7720686561646572273e3c746420636c6173733d27656d7074795464273e3c2f74643e3c746420636c6173733d2766696c654e616d65273e3c6120687265663d22687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f5426616d703b736f72745f62793d6e616d6526616d703b736f72745f61733d6465736322207469746c653d2253657420696e2064657363656e64696e67206f72646572223e2046696c65206e616d65203c696d67207374796c653d22626f726465723a303b22207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f6172726f775f75702e706e6722202f3e3c2f613e3c2f74643e3c746420636c6173733d27656d7074795464273e3c2f74643e3c746420636c6173733d27656d7074795464273e3c2f74643e3c746420636f6c7370616e3d27332720636c6173733d27656d7074795464273e3c2f74643e3c2f74723e3c747220636c6173733d276a736d616c6c696e65273e3c746420636f6c7370616e3d2737273e3c2f74643e3c2f74723e3c747220636c6173733d27726f77206f646427206f6e6d6f7573656f7665723d27746869732e636c6173734e616d653d22686967686c6967687465642227206f6e6d6f7573656f75743d27746869732e636c6173734e616d653d22726f77206f646422273e093c746420636c6173733d2766696c6549636f6e273e093c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f542f53616d706c652b466f6c646572273e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f666f6c6465722e706e67222077696474683d27333227202f3e3c2f613e093c2f74643e093c746420636c6173733d2766696c654e616d65273e093c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f542f53616d706c652b466f6c646572273e53616d706c6520466f6c6465723c2f613e093c2f74643e093c746420636f6c7370616e3d27332720636c6173733d27656d7074795464273e3c2f74643e3c746420636c6173733d2766696c65416374696f6e273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f54266f6c645f666f6c6465726e616d653d53616d706c652b466f6c646572273e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f72656e616d652e706e672220626f726465723d273027207469746c653d2252656e616d6520666f6c646572205b53616d706c6520466f6c6465725d22202f3e3c2f613e3c2f74643e3c746420636c6173733d27656d7074795464273e3c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c6469762069643d274a535f414354494f4e535f444956273e3c7461626c653e3c74723e093c746420636c6173733d2772696768745f616c69676e6564273e20202020202020202020202020203c666f726d207374796c653d27646973706c61793a696e6c696e653b206d617267696e3a203070783b2070616464696e673a203070783b2720656e63747970653d276d756c7469706172742f666f726d2d646174612720616374696f6e3d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f5427206d6574686f643d27706f7374273e41646420666f6c6465723a266e6273703b266e6273703b093c2f74643e093c74643e20202020202020202020202020203c696e70757420636c6173733d276c6f6e675f696e7075745f6669656c6427206e616d653d27757365726469722720747970653d277465787427202f3e093c2f74643e093c746420636c6173733d27616374696f6e49636f6e273e20202020202020202020202020203c696e70757420747970653d27696d61676527207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f616464666f6c6465722e706e6722207469746c653d224164642061206e657720666f6c64657222202f3e20202020202020202020202020203c2f666f726d3e093c2f74643e3c2f74723e3c74723e093c746420636c6173733d2772696768745f616c69676e65642720636f6c7370616e3d2731273e3c666f726d206e616d653d2775706c6f6164466f726d27207374796c653d27646973706c61793a696e6c696e653b206d617267696e3a203070783b2070616464696e673a203070783b2720656e63747970653d276d756c7469706172742f666f726d2d646174612720616374696f6e3d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f5427206d6574686f643d27706f7374273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f54267365745f75706c6f61645f747970655f636f6f6b69653d53574655504c4f414427203e55736520466c6173682075706c6f616465723c2f613e266e6273703b7c266e6273703b55706c6f61642061206e65772066696c653a266e6273703b093c2f74643e093c74643e093c696e707574206e616d653d227573657266696c652220747970653d2266696c6522202f3e093c2f74643e093c746420636c6173733d27616374696f6e49636f6e273e093c696e70757420747970653d27696d61676527207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f61646466696c652e706e6722207469746c653d2255706c6f61642061206e65772066696c6522202f3e093c696e70757420747970653d2768696464656e27206e616d653d2775706c6f61645f646972272076616c75653d224a53524f4f54223e09093c2f666f726d3e093c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c6469762069643d274a535f424f54544f4d5f444956273e3c7461626c653e3c74723e3c746420636c6173733d27616374696f6e49636f6e273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f54267365745f646973706c61795f616374696f6e735f636f6f6b69653d4e4f5f414354494f4e27207469746c653d22436c6f736520746865206e657720666f6c6465722f66696c652075706c6f616420626f78223e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f6d696e75732e706e672220626f726465723d273027202f3e3c2f613e3c2f74643e093c74643e266e6273703b3c2f74643e3c746420636c6173733d2772696768745f616c69676e6564273e3c6120687265663d27687474703a2f2f7777772e736d616c6c6572696b2e636f6d27207461726765743d275f626c616e6b273e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f6a736d616c6c6669622e706e672220626f726465723d273027207469746c653d224a536d616c6c666962202876657273696f6e20312e332e322e70726f290a436f70797269676874266e6273703b26636f70793b266e6273703b323030392d3230313220456e7269636f2053616e646f6c6922202f3e3c2f613e3c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c2f6469763e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22383235223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d30352030313a31303a3532223b733a31313a226d6f6469666965645f6279223b733a333a22383235223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a36393a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2230223b733a31313a226c696e6b5f7469746c6573223b733a313a2230223b733a31303a2273686f775f696e74726f223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2230223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2230223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a31303a2273686f775f69636f6e73223b733a313a2230223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2230223b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2230223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2230223b733a31363a2273686f775f7375626361745f64657363223b733a313a2230223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2230223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2230223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2230223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2230223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2233223b733a383a226f72646572696e67223b733a323a223132223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a31393a2231313a696e636f6d652d73746174656d656e74223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a35333a22696e6465782e7068702f66696e616e6369616c732f7061796d656e742d7265636f7264732f696e636f6d652d73746174656d656e74223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131223b733a353a22726f757465223b733a39373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31313a696e636f6d652d73746174656d656e742663617469643d323a756e63617465676f7269736564264974656d69643d313039223b733a353a227469746c65223b733a31363a22496e636f6d652053746174656d656e74223b733a31313a226465736372697074696f6e223b733a3336303a2243757272656e7420666f6c6465723a20746f70206c6576656c20696e666f2046696c7465722066696c65206c6973743a2046696c65206e616d65687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3131264974656d69643d313039266a736d616c6c6669623d31266469723d4a53524f4f542f53616d706c652b466f6c646572273e2053616d706c6520466f6c6465722041646420666f6c6465723a2055736520466c6173682075706c6f61646572207c2055706c6f61642061206e65772066696c653a7372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f61646466696c652e706e6722207469746c653d2255706c6f61642061206e65772066696c6522202f3e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2232223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30382d32382030303a30393a3230223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d30382d32382030303a30393a3230223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a333b7d),
(8, 'index.php?option=com_content&view=article&id=20', 'index.php?option=com_content&view=article&id=20:completed-project&catid=2:uncategorised&Itemid=123', 'Completed Project', 'Date Completed: 01/01/2010 Client: Sugar Kid & Co Sample1 Document Current folder: top level info Filter file list: File nameonmouseout=''this.className="row odd"''> Sample Folder Add folder: Use Flash uploader | Upload a new file:class=''actionIcon''>', '2014-09-05 09:39:31', 'e01d6bfe565d81c821380996ed87a25f', 1, 1, 2, '*', '2014-08-28 01:01:58', '0000-00-00 00:00:00', '2014-08-28 01:01:58', '0000-00-00 00:00:00', 0, 0, 3, 0x4f3a31393a2246696e646572496e6465786572526573756c74223a31383a7b733a31313a22002a00656c656d656e7473223b613a32343a7b733a323a226964223b733a323a223230223b733a353a22616c696173223b733a31373a22636f6d706c657465642d70726f6a656374223b733a373a2273756d6d617279223b733a343939353a223c703e3c7374726f6e673e4461746520436f6d706c657465643a2030312f30312f323031303c6272202f3e3c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673e436c69656e743a205375676172204b69642026616d703b20436f3c6272202f3e3c2f7374726f6e673e3c2f703e0d0a3c703e3c7374726f6e673e3c6120687265663d22746573742e747874223e2053616d706c653120446f63756d656e74203c2f613e3c2f7374726f6e673e3c2f703e0d0a3c703ec2a03c2f703e0d0a3c703e3c7370616e20636c6173733d22726561646f6e6c7920706c672d64657363223e3c7374726f6e673e3c6469762069643d274a535f4d41494e5f444956273e3c6469762069643d274a535f544f505f444956273e3c7461626c653e3c74722076616c69676e3d2763656e746572273e093c746420636f6c7370616e3d2732273e266e6273703b3c2f74643e3c2f74723e3c74722076616c69676e3d27746f70273e3c746420636c6173733d276e617669676174696f6e273e43757272656e7420666f6c6465723a203c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f54273e746f70206c6576656c3c2f613e3c2f74643e093c746420636c6173733d27746f704c696e6b73273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f542668656c703d31273e696e666f3c2f613e3c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c6469762069643d274a535f46494c45535f444956273e3c7461626c653e3c7472203e3c666f726d20616374696f6e3d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f5427206d6574686f643d27706f7374273e3c746420636f6c7370616e3d2737273e3c7461626c6520636c6173733d2766696c7465725461626c65273e3c74723e3c7464207469746c653d2255736520612073656d69636f6c6f6e2d736570617261746564206c697374206f66207061747465726e730a466f72206578616d706c653a202e6a70673b202e7064663b202e646f63223e46696c7465722066696c65206c6973743a266e6273703b266e6273703b3c2f74643e3c74642077696474683d273235302720616c69676e3d277269676874273e3c696e70757420636c6173733d276c6f6e675f696e7075745f6669656c6427206e616d653d2763757272656e745f66696c7465725f6c6973742720747970653d2774657874272076616c75653d2222202f3e3c2f74643e3c746420636c6173733d2766696c74657249636f6e5469636b273e3c696e70757420747970653d27696d61676527207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f7469636b2e706e6722207469746c653d2255736520612073656d69636f6c6f6e2d736570617261746564206c697374206f66207061747465726e730a466f72206578616d706c653a202e6a70673b202e7064663b202e646f6322202f3e3c2f74643e3c746420636c6173733d2766696c74657249636f6e44656c657465273e3c2f74643e3c2f74723e3c2f7461626c653e3c2f74643e3c2f666f726d3e3c2f74723e3c747220636c6173733d27726f7720686561646572273e3c746420636c6173733d27656d7074795464273e3c2f74643e3c746420636c6173733d2766696c654e616d65273e3c6120687265663d22687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f5426616d703b736f72745f62793d6e616d6526616d703b736f72745f61733d6465736322207469746c653d2253657420696e2064657363656e64696e67206f72646572223e2046696c65206e616d65203c696d67207374796c653d22626f726465723a303b22207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f6172726f775f75702e706e6722202f3e3c2f613e3c2f74643e3c746420636c6173733d27656d7074795464273e3c2f74643e3c746420636c6173733d27656d7074795464273e3c2f74643e3c746420636f6c7370616e3d27332720636c6173733d27656d7074795464273e3c2f74643e3c2f74723e3c747220636c6173733d276a736d616c6c696e65273e3c746420636f6c7370616e3d2737273e3c2f74643e3c2f74723e3c747220636c6173733d27726f77206f646427206f6e6d6f7573656f7665723d27746869732e636c6173734e616d653d22686967686c6967687465642227206f6e6d6f7573656f75743d27746869732e636c6173734e616d653d22726f77206f646422273e093c746420636c6173733d2766696c6549636f6e273e093c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f542f53616d706c652b466f6c646572273e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f666f6c6465722e706e67222077696474683d27333227202f3e3c2f613e093c2f74643e093c746420636c6173733d2766696c654e616d65273e093c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f542f53616d706c652b466f6c646572273e53616d706c6520466f6c6465723c2f613e093c2f74643e093c746420636f6c7370616e3d27332720636c6173733d27656d7074795464273e3c2f74643e3c746420636c6173733d2766696c65416374696f6e273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f54266f6c645f666f6c6465726e616d653d53616d706c652b466f6c646572273e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f72656e616d652e706e672220626f726465723d273027207469746c653d2252656e616d6520666f6c646572205b53616d706c6520466f6c6465725d22202f3e3c2f613e3c2f74643e3c746420636c6173733d27656d7074795464273e3c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c6469762069643d274a535f414354494f4e535f444956273e3c7461626c653e3c74723e093c746420636c6173733d2772696768745f616c69676e6564273e20202020202020202020202020203c666f726d207374796c653d27646973706c61793a696e6c696e653b206d617267696e3a203070783b2070616464696e673a203070783b2720656e63747970653d276d756c7469706172742f666f726d2d646174612720616374696f6e3d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f5427206d6574686f643d27706f7374273e41646420666f6c6465723a266e6273703b266e6273703b093c2f74643e093c74643e20202020202020202020202020203c696e70757420636c6173733d276c6f6e675f696e7075745f6669656c6427206e616d653d27757365726469722720747970653d277465787427202f3e093c2f74643e093c746420636c6173733d27616374696f6e49636f6e273e20202020202020202020202020203c696e70757420747970653d27696d61676527207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f616464666f6c6465722e706e6722207469746c653d224164642061206e657720666f6c64657222202f3e20202020202020202020202020203c2f666f726d3e093c2f74643e3c2f74723e3c74723e093c746420636c6173733d2772696768745f616c69676e65642720636f6c7370616e3d2731273e3c666f726d206e616d653d2775706c6f6164466f726d27207374796c653d27646973706c61793a696e6c696e653b206d617267696e3a203070783b2070616464696e673a203070783b2720656e63747970653d276d756c7469706172742f666f726d2d646174612720616374696f6e3d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f5427206d6574686f643d27706f7374273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f54267365745f75706c6f61645f747970655f636f6f6b69653d53574655504c4f414427203e55736520466c6173682075706c6f616465723c2f613e266e6273703b7c266e6273703b55706c6f61642061206e65772066696c653a266e6273703b093c2f74643e093c74643e093c696e707574206e616d653d227573657266696c652220747970653d2266696c6522202f3e093c2f74643e093c746420636c6173733d27616374696f6e49636f6e273e093c696e70757420747970653d27696d61676527207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f61646466696c652e706e6722207469746c653d2255706c6f61642061206e65772066696c6522202f3e093c696e70757420747970653d2768696464656e27206e616d653d2775706c6f61645f646972272076616c75653d224a53524f4f54223e09093c2f666f726d3e093c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c6469762069643d274a535f424f54544f4d5f444956273e3c7461626c653e3c74723e3c746420636c6173733d27616374696f6e49636f6e273e3c6120687265663d27687474703a2f2f6c6f63616c686f73742f6c696768747377697463682f696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230264974656d69643d313233266a736d616c6c6669623d31266469723d4a53524f4f54267365745f646973706c61795f616374696f6e735f636f6f6b69653d4e4f5f414354494f4e27207469746c653d22436c6f736520746865206e657720666f6c6465722f66696c652075706c6f616420626f78223e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f6d696e75732e706e672220626f726465723d273027202f3e3c2f613e3c2f74643e093c74643e266e6273703b3c2f74643e3c746420636c6173733d2772696768745f616c69676e6564273e3c6120687265663d27687474703a2f2f7777772e736d616c6c6572696b2e636f6d27207461726765743d275f626c616e6b273e3c696d67207372633d22706c7567696e732f636f6e74656e742f6a736d616c6c6669622f6d656469612f736d616c6c6572696b2f6e617669676174696f6e49636f6e732f6a736d616c6c6669622e706e672220626f726465723d273027207469746c653d224a536d616c6c666962202876657273696f6e20312e332e322e70726f290a436f70797269676874266e6273703b26636f70793b266e6273703b323030392d3230313220456e7269636f2053616e646f6c6922202f3e3c2f613e3c2f74643e3c2f74723e3c2f7461626c653e3c2f6469763e3c2f6469763e3c2f7374726f6e673e3c2f7370616e3e3c2f703e223b733a343a22626f6479223b733a303a22223b733a353a226361746964223b733a313a2232223b733a31303a22637265617465645f6279223b733a333a22383235223b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323031342d30392d30352030313a33393a3331223b733a31313a226d6f6469666965645f6279223b733a333a22383235223b733a363a22706172616d73223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a36393a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2230223b733a31313a226c696e6b5f7469746c6573223b733a313a2230223b733a31303a2273686f775f696e74726f223b733a313a2230223b733a31333a2273686f775f63617465676f7279223b733a313a2230223b733a31333a226c696e6b5f63617465676f7279223b733a313a2230223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31313a2273686f775f617574686f72223b733a313a2230223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2230223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2230223b733a393a2273686f775f766f7465223b733a313a2230223b733a31333a2273686f775f726561646d6f7265223b733a313a2230223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2230223b733a31343a22726561646d6f72655f6c696d6974223b733a333a22313030223b733a31303a2273686f775f69636f6e73223b733a313a2230223b733a31353a2273686f775f7072696e745f69636f6e223b733a313a2230223b733a31353a2273686f775f656d61696c5f69636f6e223b733a313a2230223b733a393a2273686f775f68697473223b733a313a2230223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b733a313a2230223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2230223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2230223b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2230223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2230223b733a31363a2273686f775f7375626361745f64657363223b733a313a2230223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2230223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2230223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2230223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b733a313a2231223b733a31383a226e756d5f696e74726f5f61727469636c6573223b733a313a2234223b733a31313a226e756d5f636f6c756d6e73223b733a313a2232223b733a393a226e756d5f6c696e6b73223b733a313a2234223b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2230223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2230223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2230223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2230223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2230223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2230223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b7d7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a393a224a5265676973747279223a313a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a343a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b733a31303a22787265666572656e6365223b733a303a22223b7d7d733a373a2276657273696f6e223b733a313a2235223b733a383a226f72646572696e67223b733a313a2233223b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b733a313a2231223b733a31303a226361745f616363657373223b733a313a2231223b733a343a22736c7567223b733a32303a2232303a636f6d706c657465642d70726f6a656374223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a31303a2253757065722055736572223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a343a2270617468223b733a33363a22696e6465782e7068702f61726368697665732f636f6d706c657465642d70726f6a656374223b733a31303a226d657461617574686f72223b4e3b7d733a31353a22002a00696e737472756374696f6e73223b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d733a31313a22002a007461786f6e6f6d79223b613a343a7b733a343a2254797065223b613a313a7b733a373a2241727469636c65223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a363a22417574686f72223b613a313a7b733a31303a2253757065722055736572223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31303a2253757065722055736572223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a2243617465676f7279223b613a313a7b733a31333a22556e63617465676f7269736564223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d733a383a224c616e6775616765223b613a313a7b733a313a222a223b4f3a373a224a4f626a656374223a343a7b733a31303a22002a005f6572726f7273223b613a303a7b7d733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b7d7d7d733a333a2275726c223b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d3230223b733a353a22726f757465223b733a39383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32303a636f6d706c657465642d70726f6a6563742663617469643d323a756e63617465676f7269736564264974656d69643d313233223b733a353a227469746c65223b733a31373a22436f6d706c657465642050726f6a656374223b733a31313a226465736372697074696f6e223b733a3234383a224461746520436f6d706c657465643a2030312f30312f3230313020436c69656e743a205375676172204b6964202620436f2053616d706c653120446f63756d656e742043757272656e7420666f6c6465723a20746f70206c6576656c20696e666f2046696c7465722066696c65206c6973743a2046696c65206e616d656f6e6d6f7573656f75743d27746869732e636c6173734e616d653d22726f77206f646422273e2053616d706c6520466f6c6465722041646420666f6c6465723a2055736520466c6173682075706c6f61646572207c2055706c6f61642061206e65772066696c653a636c6173733d27616374696f6e49636f6e273e223b733a393a227075626c6973686564223b4e3b733a353a227374617465223b693a313b733a363a22616363657373223b733a313a2232223b733a383a226c616e6775616765223b733a313a222a223b733a31383a227075626c6973685f73746172745f64617465223b733a31393a22323031342d30382d32382030313a30313a3538223b733a31363a227075626c6973685f656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a2273746172745f64617465223b733a31393a22323031342d30382d32382030313a30313a3538223b733a383a22656e645f64617465223b733a31393a22303030302d30302d30302030303a30303a3030223b733a31303a226c6973745f7072696365223b4e3b733a31303a2273616c655f7072696365223b4e3b733a373a22747970655f6964223b693a333b7d);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_terms0`
--

INSERT INTO `na3pc_finder_links_terms0` (`link_id`, `term_id`, `weight`) VALUES
(1, 3, 0.14),
(1, 4, 0.98),
(1, 5, 1.07331),
(1, 6, 2.34652),
(1, 7, 0.98),
(1, 8, 1.12),
(1, 9, 0.14),
(1, 10, 0.91),
(1, 11, 0.56004),
(2, 11, 0.56004),
(3, 11, 0.56004),
(4, 11, 0.56004),
(8, 11, 0.56004),
(5, 11, 0.88673),
(6, 11, 0.88673),
(7, 11, 0.88673),
(1, 17, 0.79992),
(2, 17, 0.79992),
(3, 17, 0.79992),
(4, 17, 0.79992),
(5, 17, 0.79992),
(6, 17, 0.79992),
(7, 17, 0.79992),
(8, 17, 0.79992),
(1, 18, 3.19992),
(2, 18, 3.19992),
(3, 18, 3.19992),
(4, 18, 3.19992),
(5, 18, 3.19992),
(6, 18, 3.19992),
(7, 18, 3.19992),
(8, 18, 3.19992),
(2, 54, 0.56),
(3, 54, 0.56),
(2, 55, 1.02669),
(3, 55, 1.02669),
(2, 57, 0.84),
(3, 57, 0.84),
(2, 58, 1.14331),
(3, 58, 1.14331),
(2, 139, 0.56),
(3, 139, 0.56),
(2, 140, 1.00331),
(3, 140, 1.00331),
(2, 141, 1.14331),
(3, 141, 1.14331),
(2, 142, 0.56),
(3, 142, 0.56),
(2, 143, 3.73324),
(3, 143, 3.73324),
(2, 144, 4.76),
(3, 144, 4.76),
(6, 146, 0.28),
(2, 146, 0.84),
(3, 146, 0.84),
(5, 146, 0.84),
(2, 147, 0.93331),
(3, 147, 0.93331),
(2, 148, 1.02669),
(3, 148, 1.02669),
(2, 149, 0.98),
(3, 149, 0.98),
(2, 150, 1.09669),
(3, 150, 1.09669),
(2, 305, 1.19),
(3, 305, 1.19),
(2, 306, 1.35331),
(3, 306, 1.35331),
(2, 339, 0.95669),
(3, 339, 0.95669),
(2, 340, 1.12),
(3, 340, 1.12),
(2, 341, 1.07331),
(3, 341, 1.07331),
(2, 342, 1.35331),
(3, 342, 1.35331),
(4, 421, 0.32669),
(4, 422, 1.05),
(4, 423, 1.21331),
(8, 473, 0.23331),
(4, 473, 3.26634),
(8, 474, 0.91),
(4, 474, 12.74),
(8, 475, 0.98),
(4, 475, 13.72),
(5, 544, 0.04669),
(6, 544, 0.04669),
(8, 544, 0.04669),
(7, 544, 0.09338),
(5, 545, 0.84),
(5, 546, 1.09669),
(5, 547, 0.93331),
(5, 548, 1.09669),
(5, 617, 0.32669),
(6, 617, 0.32669),
(5, 618, 0.98),
(6, 618, 0.98),
(5, 619, 1.14331),
(6, 619, 1.14331),
(5, 620, 0.37331),
(6, 620, 0.37331),
(5, 621, 1.07331),
(6, 621, 1.07331),
(5, 622, 1.28331),
(6, 622, 1.28331),
(5, 623, 0.14),
(6, 623, 0.14),
(5, 624, 0.95669),
(6, 624, 0.95669),
(5, 625, 1.07331),
(6, 625, 1.07331),
(5, 690, 0.1334),
(5, 691, 2.4),
(6, 692, 0.65331),
(5, 692, 1.95993),
(6, 693, 1.19),
(5, 693, 3.57),
(5, 694, 1.4),
(6, 694, 1.4),
(5, 695, 1.35331),
(5, 696, 1.37669),
(5, 697, 1.05),
(6, 697, 1.05),
(5, 698, 1.23669),
(6, 698, 1.23669),
(5, 699, 1.00331),
(5, 700, 1.21331),
(5, 701, 1.02669),
(5, 702, 1.28331),
(8, 756, 0.28),
(6, 756, 0.56),
(7, 756, 0.56),
(6, 757, 0.93331),
(6, 758, 0.98),
(6, 776, 0.81669),
(8, 776, 0.81669),
(7, 776, 1.63338),
(6, 777, 0.93331),
(8, 777, 0.93331),
(7, 777, 1.86662),
(6, 778, 0.14),
(7, 778, 0.14),
(8, 778, 0.14),
(6, 779, 0.93331),
(7, 779, 0.93331),
(8, 779, 0.93331),
(7, 780, 1.02669),
(8, 780, 1.02669),
(7, 781, 0.32669),
(7, 782, 0.95669),
(7, 783, 1.09669),
(6, 784, 0.93331),
(7, 784, 0.93331),
(6, 785, 1.00331),
(6, 870, 1.00331),
(7, 870, 1.00331),
(8, 870, 1.00331),
(6, 871, 1.09669),
(7, 871, 1.09669),
(8, 871, 1.09669),
(7, 872, 1.02669),
(7, 873, 1.19),
(7, 874, 0.42),
(7, 875, 1.28331),
(7, 876, 1.4),
(7, 877, 0.14),
(7, 878, 0.95669),
(7, 879, 1.14331),
(7, 904, 1.00331),
(7, 911, 2.22),
(6, 962, 0.14),
(6, 963, 0.93331),
(6, 964, 1.05),
(6, 965, 0.46669),
(6, 966, 1.02669),
(6, 967, 1.16669),
(8, 1013, 0.32669),
(8, 1014, 1.07331),
(8, 1015, 1.26);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_terms2`
--

INSERT INTO `na3pc_finder_links_terms2` (`link_id`, `term_id`, `weight`) VALUES
(1, 13, 0.23331),
(1, 14, 0.95669),
(1, 15, 1.05),
(2, 110, 0.46662),
(3, 110, 0.46662),
(2, 111, 0.91),
(3, 111, 0.91),
(2, 112, 1.14331),
(3, 112, 1.14331),
(2, 332, 0.95669),
(3, 332, 0.95669),
(2, 333, 1.12),
(3, 333, 1.12),
(5, 560, 0.18669),
(5, 561, 0.86331),
(5, 562, 1.07331),
(6, 651, 0.18669),
(7, 651, 0.18669),
(8, 651, 0.18669),
(5, 651, 0.98679),
(6, 820, 0.18669),
(7, 820, 0.18669),
(6, 821, 0.93331),
(7, 821, 0.93331),
(6, 822, 1.16669),
(7, 822, 1.16669),
(6, 840, 0.23331),
(7, 840, 0.23331),
(8, 840, 0.23331),
(6, 841, 0.93331),
(7, 841, 0.93331),
(8, 841, 0.93331),
(6, 842, 1.09669),
(7, 842, 1.09669),
(8, 842, 1.09669),
(6, 843, 0.51331),
(7, 843, 0.51331),
(6, 844, 1.09669),
(7, 844, 1.09669),
(6, 845, 1.19),
(7, 845, 1.19),
(6, 846, 0.91),
(7, 846, 0.91),
(8, 846, 0.91),
(6, 847, 1.02669),
(7, 847, 1.02669),
(8, 847, 1.02669),
(6, 848, 0.42),
(7, 848, 0.42),
(6, 849, 1.19),
(7, 849, 1.19),
(6, 850, 1.33),
(7, 850, 1.33);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_terms3`
--

INSERT INTO `na3pc_finder_links_terms3` (`link_id`, `term_id`, `weight`) VALUES
(6, 455, 0.42),
(7, 455, 0.84),
(6, 764, 0.23331),
(7, 764, 0.23331),
(6, 765, 1.05),
(7, 765, 1.05),
(6, 766, 1.33),
(7, 766, 1.33),
(6, 833, 0.95669),
(7, 833, 0.95669),
(6, 834, 1.05),
(7, 834, 1.05),
(7, 835, 1.05),
(7, 836, 1.28331),
(6, 837, 0.28),
(7, 837, 0.28),
(7, 838, 1.00331),
(7, 839, 1.19),
(6, 919, 0.32669),
(6, 944, 0.42),
(6, 945, 1.07331),
(6, 946, 1.23669),
(6, 957, 0.95669),
(6, 958, 1.14331),
(6, 959, 0.93331),
(6, 960, 1.09669),
(8, 975, 0.56),
(8, 976, 0.23331),
(8, 977, 1.05),
(8, 978, 1.14331);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_terms4`
--

INSERT INTO `na3pc_finder_links_terms4` (`link_id`, `term_id`, `weight`) VALUES
(2, 76, 1.68),
(3, 76, 1.68),
(2, 77, 4.38676),
(3, 77, 4.38676),
(2, 78, 1.23669),
(3, 78, 1.23669),
(2, 79, 1.21331),
(3, 79, 1.21331),
(2, 80, 1.23669),
(3, 80, 1.23669),
(2, 81, 1.19),
(3, 81, 1.19),
(2, 84, 0.93331),
(3, 84, 0.93331),
(2, 85, 0.98),
(3, 85, 0.98),
(2, 86, 1.97321),
(3, 86, 1.97321),
(2, 87, 5.92),
(3, 87, 5.92),
(2, 128, 0.28),
(3, 128, 0.28),
(2, 129, 0.91),
(3, 129, 0.91),
(2, 130, 1.02669),
(3, 130, 1.02669),
(2, 131, 0.91),
(3, 131, 0.91),
(2, 132, 1.07331),
(3, 132, 1.07331),
(2, 133, 0.28),
(3, 133, 0.28),
(2, 134, 0.95669),
(3, 134, 0.95669),
(2, 135, 1.16669),
(3, 135, 1.16669),
(2, 163, 0.42),
(3, 163, 0.42),
(2, 164, 0.81669),
(3, 164, 0.81669),
(2, 165, 0.95669),
(3, 165, 0.95669),
(2, 166, 0.81669),
(3, 166, 0.81669),
(2, 167, 0.98),
(3, 167, 0.98),
(2, 168, 1.00331),
(3, 168, 1.00331),
(2, 307, 0.95669),
(3, 307, 0.95669),
(2, 308, 1.02669),
(3, 308, 1.02669),
(2, 309, 0.28),
(3, 309, 0.28),
(2, 310, 0.95669),
(3, 310, 0.95669),
(2, 311, 1.23669),
(3, 311, 1.23669),
(2, 312, 0.23331),
(3, 312, 0.23331),
(2, 313, 0.98),
(3, 313, 0.98),
(2, 314, 1.14331),
(3, 314, 1.14331),
(2, 357, 1.16669),
(3, 357, 1.16669),
(3, 415, 6.16679),
(4, 424, 5.46),
(4, 425, 14.863),
(4, 426, 16.38),
(4, 427, 2.61366),
(4, 428, 15.0263),
(4, 429, 16.9863),
(6, 430, 0.28),
(8, 430, 0.28),
(4, 430, 1.76),
(5, 430, 2.32),
(4, 431, 5.05679),
(4, 432, 5.79679),
(4, 433, 0.95669),
(4, 434, 1.14331),
(8, 435, 0.09331),
(4, 435, 1.30634),
(4, 436, 10.3597),
(4, 437, 13.1603),
(4, 438, 0.93331),
(4, 439, 1.16669),
(6, 440, 0.32669),
(4, 440, 0.65338),
(5, 440, 0.98007),
(4, 441, 0.98),
(6, 441, 0.98),
(5, 441, 2.94),
(4, 442, 1.16669),
(4, 443, 1.07331),
(4, 444, 1.19),
(4, 445, 0.32669),
(4, 446, 1.02669),
(4, 447, 1.21331),
(5, 563, 0.37331),
(5, 564, 0.95669),
(5, 565, 1.00331),
(5, 566, 0.46669),
(5, 567, 1.05),
(5, 568, 1.14331),
(5, 626, 0.28),
(6, 626, 0.28),
(5, 627, 1.02669),
(6, 627, 1.02669),
(5, 628, 1.19),
(6, 628, 1.19),
(6, 629, 1.02669),
(5, 629, 3.08007),
(6, 630, 1.14331),
(5, 630, 3.42993),
(5, 631, 5.42679),
(5, 632, 3.5334),
(5, 633, 3.11661),
(5, 634, 0.23331),
(5, 635, 0.88669),
(5, 636, 1.05),
(6, 637, 1.33),
(5, 637, 3.99),
(5, 685, 0.65338),
(5, 686, 1.02669),
(5, 687, 1.21331),
(5, 688, 1.07331),
(5, 689, 1.19),
(6, 786, 0.14),
(7, 786, 0.14),
(6, 787, 0.95669),
(7, 787, 0.95669),
(6, 788, 1.07331),
(7, 788, 1.07331),
(6, 789, 0.32669),
(7, 789, 0.65338),
(7, 790, 1.09669),
(7, 791, 1.23669),
(6, 792, 0.98),
(7, 792, 0.98),
(6, 793, 1.16669),
(7, 793, 1.16669),
(6, 794, 0.32669),
(7, 794, 0.32669),
(8, 794, 0.32669),
(6, 795, 1.02669),
(7, 795, 1.02669),
(8, 795, 1.02669),
(6, 796, 1.12),
(7, 796, 1.12),
(8, 796, 1.12),
(6, 947, 0.23331),
(8, 947, 0.23331),
(6, 948, 1.05),
(6, 949, 1.21331),
(6, 950, 0.28),
(6, 951, 1.09669),
(6, 952, 1.19),
(8, 988, 1.12),
(8, 989, 0.42),
(8, 990, 1.00331),
(8, 991, 1.09669),
(8, 992, 0.98),
(8, 993, 1.07331),
(8, 994, 0.93331),
(8, 995, 1.14331),
(8, 996, 2.64),
(8, 997, 0.98),
(8, 998, 1.05),
(8, 999, 5.79679),
(8, 1010, 0.14),
(8, 1011, 0.86331),
(8, 1012, 1.02669);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_terms6`
--

INSERT INTO `na3pc_finder_links_terms6` (`link_id`, `term_id`, `weight`) VALUES
(5, 652, 0.28),
(5, 653, 1.09669),
(5, 654, 1.26),
(7, 851, 0.23331),
(7, 852, 1.05),
(7, 853, 1.4),
(6, 922, 0.23331),
(6, 923, 0.88669),
(6, 924, 1.07331);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_terms7`
--

INSERT INTO `na3pc_finder_links_terms7` (`link_id`, `term_id`, `weight`) VALUES
(1, 19, 1.04004),
(2, 19, 1.04004),
(3, 19, 1.04004),
(4, 19, 1.04004),
(5, 19, 1.04004),
(6, 19, 1.04004),
(7, 19, 1.04004),
(8, 19, 1.04004),
(1, 20, 0.64008),
(2, 20, 0.64008),
(3, 20, 0.64008),
(4, 20, 0.64008),
(5, 20, 0.64008),
(6, 20, 0.64008),
(7, 20, 0.64008),
(8, 20, 0.64008),
(2, 113, 0.18669),
(3, 113, 0.18669),
(7, 113, 0.18669),
(8, 113, 0.18669),
(4, 113, 0.37338),
(6, 113, 0.37338),
(5, 113, 0.56007),
(2, 116, 0.14),
(3, 116, 0.14),
(6, 116, 0.14),
(8, 116, 0.14),
(7, 116, 0.28),
(2, 119, 0.93324),
(3, 119, 0.93324),
(2, 120, 3.73324),
(3, 120, 3.73324),
(2, 121, 4.48),
(3, 121, 4.48),
(2, 125, 0.37331),
(3, 125, 0.37331),
(2, 126, 1.12),
(3, 126, 1.12),
(2, 154, 0.23331),
(3, 154, 0.23331),
(2, 155, 0.98),
(3, 155, 0.98),
(2, 156, 1.09669),
(3, 156, 1.09669),
(2, 334, 1.02669),
(3, 334, 1.02669),
(2, 335, 1.19),
(3, 335, 1.19),
(2, 336, 1.00331),
(3, 336, 1.00331),
(2, 337, 1.23669),
(3, 337, 1.23669),
(2, 338, 1.23669),
(3, 338, 1.23669),
(4, 460, 0.98),
(4, 461, 1.16669),
(4, 462, 0.98),
(4, 463, 1.19),
(4, 464, 0.28),
(4, 465, 1.02669),
(4, 466, 1.14331),
(6, 655, 1.14331),
(5, 655, 3.42993),
(6, 656, 1.30669),
(5, 656, 3.92007),
(5, 706, 0.09331),
(5, 707, 0.91),
(5, 708, 1.16669),
(7, 854, 0.7),
(7, 855, 1.23669),
(7, 856, 1.33),
(6, 857, 0.88669),
(8, 857, 0.88669),
(7, 857, 1.77338),
(8, 886, 0.28),
(6, 886, 0.56),
(7, 886, 0.56),
(6, 887, 0.88669),
(8, 887, 0.88669),
(7, 887, 1.77338),
(6, 888, 0.98),
(8, 888, 0.98),
(7, 888, 1.96),
(6, 889, 0.37331),
(7, 889, 0.37331),
(8, 889, 0.37331),
(6, 890, 1.05),
(7, 890, 1.05),
(8, 890, 1.05),
(6, 891, 1.09669),
(7, 891, 1.09669),
(8, 891, 1.09669),
(6, 892, 0.14),
(7, 892, 0.14),
(8, 892, 0.14),
(6, 893, 0.91),
(7, 893, 0.91),
(8, 893, 0.91),
(6, 894, 1.12),
(7, 894, 1.12),
(8, 894, 1.12),
(6, 970, 0.95669),
(6, 971, 1.12);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_terms8`
--

INSERT INTO `na3pc_finder_links_terms8` (`link_id`, `term_id`, `weight`) VALUES
(1, 12, 0.23331),
(1, 16, 0.6666),
(2, 16, 0.6666),
(3, 16, 0.6666),
(4, 16, 0.6666),
(5, 16, 0.6666),
(8, 16, 0.6666),
(6, 16, 0.89991),
(7, 16, 0.89991),
(2, 88, 0.74676),
(3, 88, 0.74676),
(2, 89, 3.92),
(3, 89, 3.92),
(2, 90, 4.29324),
(3, 90, 4.29324),
(2, 91, 0.51331),
(3, 91, 0.51331),
(2, 92, 1.12),
(3, 92, 1.12),
(2, 93, 1.28331),
(3, 93, 1.28331),
(2, 94, 1.30676),
(3, 94, 1.30676),
(2, 95, 3.82676),
(3, 95, 3.82676),
(2, 96, 4.48),
(3, 96, 4.48),
(2, 107, 0.14),
(3, 107, 0.14),
(2, 108, 0.86331),
(3, 108, 0.86331),
(2, 109, 1.00331),
(3, 109, 1.00331),
(2, 315, 0.28),
(3, 315, 0.28),
(2, 316, 1.00331),
(3, 316, 1.00331),
(2, 317, 1.09669),
(3, 317, 1.09669),
(6, 448, 0.18669),
(7, 448, 0.18669),
(8, 448, 0.18669),
(4, 448, 1.17348),
(4, 449, 5.86652),
(4, 450, 1.09669),
(4, 452, 2.42697),
(4, 453, 13.347),
(4, 454, 16.38),
(8, 456, 0.14),
(4, 456, 1.96),
(8, 457, 0.84),
(4, 457, 11.76),
(4, 458, 11.4803),
(4, 459, 1.02669),
(4, 467, 5.88),
(4, 468, 14.3737),
(4, 469, 18.2937),
(4, 470, 0.37331),
(4, 471, 1.00331),
(4, 472, 1.23669),
(5, 552, 0.18669),
(6, 552, 0.56007),
(8, 552, 0.56007),
(7, 552, 0.74676),
(5, 553, 1.05),
(5, 554, 1.16669),
(5, 555, 0.18662),
(5, 556, 0.95669),
(5, 557, 1.02669),
(5, 558, 0.91),
(5, 638, 0.28),
(5, 639, 1.05),
(5, 640, 1.23669),
(6, 641, 0.37331),
(8, 641, 0.37331),
(5, 641, 1.11993),
(5, 642, 1.00331),
(5, 643, 1.12),
(5, 657, 0.74662),
(5, 658, 2.14662),
(5, 659, 1.23669),
(5, 660, 1.28331),
(5, 661, 0.32669),
(5, 662, 1.12),
(5, 663, 1.33),
(5, 664, 0.93338),
(5, 665, 1.09669),
(5, 666, 1.28331),
(5, 667, 1.14331),
(6, 669, 0.32669),
(8, 669, 1.72679),
(5, 669, 2.70686),
(5, 670, 0.95669),
(6, 670, 0.95669),
(5, 671, 1.14331),
(6, 671, 1.14331),
(5, 672, 1.00331),
(5, 673, 1.07331),
(5, 674, 1.07331),
(5, 675, 1.26),
(5, 676, 3.0666),
(5, 677, 3.2),
(5, 678, 2.72),
(5, 679, 3.00339),
(5, 680, 1.0666),
(5, 681, 2.6666),
(5, 682, 3),
(5, 683, 1.13339),
(5, 684, 2.55),
(5, 734, 0.98),
(5, 735, 1.16669),
(5, 736, 0.98),
(5, 737, 1.16669),
(5, 740, 1.23669),
(6, 753, 0.88),
(6, 754, 5.13348),
(6, 797, 0.14),
(7, 797, 0.14),
(6, 798, 0.93331),
(7, 798, 0.93331),
(7, 799, 1.09669),
(6, 801, 0.91),
(7, 801, 0.91),
(8, 801, 0.91),
(6, 802, 1.02669),
(7, 802, 1.02669),
(8, 802, 1.02669),
(6, 803, 0.91),
(7, 803, 0.91),
(8, 803, 0.91),
(6, 804, 0.28),
(7, 804, 0.28),
(8, 804, 0.28),
(6, 805, 0.95669),
(7, 805, 0.95669),
(8, 805, 0.95669),
(6, 806, 1.07331),
(7, 806, 1.07331),
(8, 806, 1.07331),
(6, 807, 0.23331),
(7, 807, 0.23331),
(8, 807, 0.23331),
(6, 808, 1.02669),
(7, 808, 1.02669),
(8, 808, 1.02669),
(6, 809, 1.19),
(7, 809, 1.19),
(8, 809, 1.19),
(6, 810, 0.84),
(7, 810, 0.84),
(8, 810, 0.84),
(6, 811, 0.93331),
(7, 811, 0.93331),
(8, 811, 0.93331),
(6, 812, 1.09669),
(7, 812, 1.09669),
(8, 812, 1.09669),
(6, 813, 0.93331),
(7, 813, 0.93331),
(8, 813, 0.93331),
(6, 814, 1.07331),
(7, 814, 1.07331),
(8, 814, 1.07331),
(7, 815, 0.93331),
(8, 815, 0.93331),
(7, 816, 1.07331),
(8, 816, 1.07331),
(7, 817, 0.32669),
(7, 818, 1.02669),
(7, 819, 1.19),
(6, 823, 0.09331),
(7, 823, 0.09331),
(6, 824, 0.81669),
(6, 825, 0.98),
(6, 826, 0.91),
(7, 826, 0.91),
(6, 827, 1.07331),
(7, 827, 1.07331),
(6, 828, 0.95669),
(7, 828, 0.95669),
(8, 828, 0.95669),
(6, 829, 1.07331),
(7, 829, 1.07331),
(8, 829, 1.07331),
(6, 830, 0.28),
(7, 830, 0.28),
(6, 831, 0.93331),
(6, 832, 1.16669),
(6, 861, 0.14),
(7, 861, 0.14),
(6, 862, 0.93331),
(7, 862, 0.93331),
(6, 863, 1.02669),
(7, 863, 1.02669),
(7, 864, 0.32669),
(7, 865, 1.05),
(7, 866, 1.28331),
(7, 867, 0.14),
(7, 868, 0.91),
(7, 869, 1.07331),
(7, 905, 0.81669),
(7, 906, 0.98),
(7, 907, 1.48),
(7, 908, 5.67321),
(7, 909, 0.93331),
(7, 910, 1.16669),
(6, 915, 0.91),
(6, 916, 0.14),
(6, 917, 0.86331),
(6, 918, 1.00331),
(6, 953, 1.02669),
(6, 954, 1.07331),
(8, 954, 1.07331),
(6, 955, 1.23669),
(8, 955, 1.23669),
(8, 1000, 0.18669),
(8, 1001, 1.02669),
(8, 1002, 1.09669),
(8, 1003, 1.02669);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_terms9`
--

INSERT INTO `na3pc_finder_links_terms9` (`link_id`, `term_id`, `weight`) VALUES
(2, 60, 0.46662),
(3, 60, 0.46662),
(2, 61, 0.98),
(3, 61, 0.98),
(2, 62, 1.12),
(3, 62, 1.12),
(2, 63, 0.98),
(3, 63, 0.98),
(2, 64, 1.07331),
(3, 64, 1.07331),
(2, 65, 0.37338),
(3, 65, 0.37338),
(2, 66, 1.00331),
(3, 66, 1.00331),
(2, 67, 1.14331),
(3, 67, 1.14331),
(2, 68, 0.93331),
(3, 68, 0.93331),
(2, 69, 1.05),
(3, 69, 1.05),
(2, 70, 0.37331),
(3, 70, 0.37331),
(2, 71, 1.02669),
(3, 71, 1.02669),
(2, 72, 1.19),
(3, 72, 1.19),
(2, 73, 0.28),
(3, 73, 0.28),
(2, 74, 0.98),
(3, 74, 0.98),
(2, 75, 1.21331),
(3, 75, 1.21331),
(2, 354, 0.18669),
(3, 354, 0.18669),
(2, 355, 1.07331),
(3, 355, 1.07331),
(2, 356, 1.23669),
(3, 356, 1.23669),
(5, 549, 0.09331),
(5, 550, 0.79331),
(5, 551, 0.91),
(5, 575, 0.28),
(6, 895, 0.18669),
(7, 895, 0.18669),
(6, 896, 0.98),
(7, 896, 0.98),
(6, 897, 1.05),
(7, 897, 1.05);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_termsb`
--

INSERT INTO `na3pc_finder_links_termsb` (`link_id`, `term_id`, `weight`) VALUES
(2, 102, 0.46662),
(3, 102, 0.46662),
(2, 103, 1.05),
(3, 103, 1.05),
(2, 105, 0.95669),
(3, 105, 0.95669),
(2, 106, 1.07331),
(3, 106, 1.07331);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_termsc`
--

INSERT INTO `na3pc_finder_links_termsc` (`link_id`, `term_id`, `weight`) VALUES
(1, 2, 0.34),
(2, 32, 1.86676),
(3, 32, 1.86676),
(2, 33, 1.07331),
(3, 33, 1.07331),
(2, 34, 1.23669),
(3, 34, 1.23669),
(2, 35, 1.05),
(3, 35, 1.05),
(2, 36, 1.19),
(3, 36, 1.19),
(2, 37, 1.07331),
(3, 37, 1.07331),
(2, 38, 1.21331),
(3, 38, 1.21331),
(2, 39, 1.02669),
(3, 39, 1.02669),
(2, 40, 1.16669),
(3, 40, 1.16669),
(2, 41, 0.07),
(3, 41, 0.44),
(2, 42, 0.86331),
(3, 42, 0.86331),
(2, 43, 0.95669),
(3, 43, 0.95669),
(2, 44, 0.34),
(2, 287, 2.31),
(3, 287, 2.31),
(2, 288, 1.12),
(3, 288, 1.12),
(2, 289, 1.23669),
(3, 289, 1.23669),
(2, 290, 1.09669),
(3, 290, 1.09669),
(2, 291, 1.23669),
(3, 291, 1.23669),
(2, 292, 1.12),
(3, 292, 1.12),
(2, 293, 1.35331),
(3, 293, 1.35331),
(2, 294, 0.14),
(3, 294, 0.14),
(2, 295, 0.86331),
(3, 295, 0.86331),
(2, 296, 1.14331),
(3, 296, 1.14331),
(2, 297, 0.18669),
(3, 297, 0.18669),
(2, 298, 1.07331),
(3, 298, 1.07331),
(2, 299, 1.21331),
(3, 299, 1.21331),
(3, 414, 0.34),
(4, 417, 10.78),
(4, 418, 15.3537),
(4, 419, 16.66),
(4, 420, 0.34),
(5, 607, 0.34),
(5, 608, 0.14),
(6, 608, 0.14),
(5, 609, 0.95669),
(6, 609, 0.95669),
(5, 610, 1.05),
(6, 610, 1.05),
(5, 611, 0.14),
(5, 612, 0.95669),
(5, 613, 1.09669),
(7, 749, 0.07),
(6, 749, 0.51),
(6, 752, 0.48),
(6, 769, 0.81669),
(7, 769, 0.81669),
(6, 770, 0.98),
(7, 770, 0.98),
(6, 771, 0.21),
(6, 772, 1.00331),
(6, 773, 1.05),
(6, 774, 0.91),
(6, 775, 1.00331),
(7, 898, 0.21),
(7, 899, 1.00331),
(7, 900, 1.05),
(7, 901, 0.48),
(7, 902, 0.91),
(7, 903, 1.00331),
(6, 913, 0.81669),
(6, 914, 0.91),
(8, 979, 0.28),
(8, 980, 0.81669),
(8, 981, 0.93331),
(8, 982, 0.86331),
(8, 983, 1.02669),
(8, 984, 0.34),
(8, 985, 0.28),
(8, 986, 0.95669),
(8, 987, 1.09669);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_termsd`
--

INSERT INTO `na3pc_finder_links_termsd` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(7, 1, 0),
(8, 1, 0),
(6, 858, 0.28),
(7, 858, 0.28),
(6, 859, 0.93331),
(7, 859, 0.93331),
(6, 860, 1.12),
(7, 860, 1.12),
(6, 925, 0.09331),
(6, 926, 0.93331),
(6, 961, 1.02669),
(8, 1004, 0.14),
(8, 1005, 0.93331),
(8, 1006, 1.09669),
(8, 1007, 0.46669),
(8, 1008, 1.07331),
(8, 1009, 1.30669);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_termse`
--

INSERT INTO `na3pc_finder_links_termse` (`link_id`, `term_id`, `weight`) VALUES
(2, 45, 0.07),
(3, 45, 0.07),
(2, 48, 0.07),
(3, 48, 0.07),
(2, 49, 0.88669),
(3, 49, 0.88669),
(2, 50, 0.98),
(3, 50, 0.98),
(2, 97, 5.16),
(3, 97, 5.16),
(2, 98, 1.19),
(3, 98, 1.19),
(2, 99, 1.35331),
(3, 99, 1.35331),
(2, 100, 1.02669),
(3, 100, 1.02669),
(2, 151, 0.84),
(3, 151, 0.84),
(2, 300, 0.88669),
(3, 300, 0.88669),
(2, 301, 0.98),
(3, 301, 0.98),
(2, 302, 0.21),
(3, 302, 0.21),
(2, 303, 1.05),
(3, 303, 1.05),
(2, 304, 1.21331),
(3, 304, 1.21331),
(2, 318, 0.18669),
(3, 318, 0.18669),
(2, 319, 0.86331),
(3, 319, 0.86331),
(2, 320, 0.98),
(3, 320, 0.98),
(2, 321, 1.14331),
(3, 321, 1.14331),
(2, 322, 1.26),
(3, 322, 1.26),
(2, 323, 1.26),
(3, 323, 1.26),
(2, 324, 1.12),
(3, 324, 1.12),
(2, 325, 1.35331),
(3, 325, 1.35331),
(2, 326, 1.07331),
(3, 326, 1.07331),
(2, 327, 1.19),
(3, 327, 1.19),
(2, 328, 1.07331),
(3, 328, 1.07331),
(2, 329, 1.30669),
(3, 329, 1.30669),
(2, 330, 1.02669),
(3, 330, 1.02669),
(2, 331, 1.33),
(3, 331, 1.33),
(2, 343, 0.93331),
(3, 343, 0.93331),
(2, 344, 1.21331),
(3, 344, 1.21331),
(2, 345, 1.07331),
(3, 345, 1.07331),
(2, 346, 1.30669),
(3, 346, 1.30669),
(2, 347, 0.93331),
(3, 347, 0.93331),
(2, 348, 0.98),
(3, 348, 0.98),
(6, 349, 0.18669),
(2, 349, 0.37338),
(3, 349, 0.37338),
(2, 350, 1.09669),
(3, 350, 1.09669),
(2, 351, 1.14331),
(3, 351, 1.14331),
(2, 352, 0.95669),
(3, 352, 0.95669),
(2, 353, 1.07331),
(3, 353, 1.07331),
(3, 416, 5.05679),
(4, 476, 1.46652),
(4, 477, 0.98),
(4, 478, 1.09669),
(4, 480, 0.32669),
(4, 481, 1.09669),
(4, 482, 1.21331),
(5, 569, 0.14),
(6, 569, 0.14),
(5, 570, 0.95669),
(5, 571, 1.02669),
(5, 572, 0.18669),
(5, 573, 0.91),
(5, 574, 0.98),
(5, 614, 0.14),
(5, 615, 0.95669),
(5, 616, 1.16669),
(5, 644, 0.65338),
(6, 644, 0.65338),
(5, 645, 1.02669),
(6, 645, 1.02669),
(5, 646, 1.21331),
(6, 646, 1.21331),
(5, 647, 1.07331),
(6, 647, 1.07331),
(5, 703, 0.18669),
(6, 703, 0.18669),
(5, 704, 0.95669),
(6, 704, 0.95669),
(5, 705, 1.14331),
(6, 705, 1.14331),
(5, 738, 1.16669),
(6, 759, 0.74),
(6, 760, 4.56321),
(6, 761, 4.81),
(7, 880, 0.23331),
(7, 881, 0.98),
(7, 882, 1.02669),
(6, 883, 0.14),
(7, 883, 0.14),
(8, 883, 0.14),
(6, 884, 0.91),
(7, 884, 0.91),
(8, 884, 0.91),
(6, 885, 1.02669),
(7, 885, 1.02669),
(8, 885, 1.02669),
(6, 928, 0.91),
(6, 929, 0.98),
(6, 956, 1.26),
(6, 968, 0.95669),
(6, 969, 1.21331);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_links_termsf`
--

INSERT INTO `na3pc_finder_links_termsf` (`link_id`, `term_id`, `weight`) VALUES
(1, 21, 0.23331),
(1, 22, 0.91),
(1, 23, 1.12),
(5, 578, 0.18669),
(5, 579, 0.88669),
(5, 580, 1.07331);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `na3pc_finder_taxonomy`
--

INSERT INTO `na3pc_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0),
(2, 1, 'Type', 1, 1, 0),
(3, 2, 'Article', 1, 1, 0),
(4, 1, 'Author', 1, 1, 0),
(5, 4, 'Super User', 1, 1, 0),
(6, 1, 'Category', 1, 1, 0),
(7, 6, 'Uncategorised', 1, 1, 0),
(8, 1, 'Language', 1, 1, 0),
(9, 8, '*', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_taxonomy_map`
--

INSERT INTO `na3pc_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(1, 7),
(1, 9),
(2, 3),
(2, 5),
(2, 7),
(2, 9),
(3, 3),
(3, 5),
(3, 7),
(3, 9),
(4, 3),
(4, 5),
(4, 7),
(4, 9),
(5, 3),
(5, 5),
(5, 7),
(5, 9),
(6, 3),
(6, 5),
(6, 7),
(6, 9),
(7, 3),
(7, 5),
(7, 7),
(7, 9),
(8, 3),
(8, 5),
(8, 7),
(8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_terms`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1038 ;

--
-- Dumping data for table `na3pc_finder_terms`
--

INSERT INTO `na3pc_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`) VALUES
(1, '', '', 0, 0, 0, '', 25),
(2, '21', '21', 0, 0, 0.2, '', 1),
(3, 'all', 'all', 0, 0, 0.2, 'A400', 1),
(4, 'all archives', 'all archives', 0, 1, 1.4, 'A46212', 1),
(5, 'all archives are', 'all archives are', 0, 1, 1.5333, 'A462126', 1),
(6, 'archives', 'archives', 0, 0, 0.5333, 'A6212', 1),
(7, 'archives are', 'archives are', 0, 1, 1.4, 'A62126', 1),
(8, 'archives are found', 'archives are found', 0, 1, 1.6, 'A62126153', 1),
(9, 'are', 'are', 0, 0, 0.2, 'A600', 1),
(10, 'are found', 'are found', 0, 1, 1.3, 'A6153', 1),
(11, 'article', 'article', 0, 0, 0.4667, 'A6324', 25),
(12, 'found', 'found', 0, 0, 0.3333, 'F530', 1),
(13, 'heres', 'heres', 0, 0, 0.3333, 'H620', 1),
(14, 'heres where', 'heres where', 0, 1, 1.3667, 'H626', 1),
(15, 'heres where all', 'heres where all', 0, 1, 1.5, 'H6264', 1),
(16, 'index', 'index', 0, 0, 0.3333, 'I532', 25),
(17, 'super', 'super', 0, 0, 0.3333, 'S160', 25),
(18, 'super user', 'super user', 0, 1, 1.3333, 'S1626', 25),
(19, 'uncategorised', 'uncategorised', 0, 0, 0.8667, 'U5232623', 25),
(20, 'user', 'user', 0, 0, 0.2667, 'U260', 25),
(21, 'where', 'where', 0, 0, 0.3333, 'W600', 1),
(22, 'where all', 'where all', 0, 1, 1.3, 'W640', 1),
(23, 'where all archives', 'where all archives', 0, 1, 1.6, 'W646212', 1),
(32, '00000000-x', '00000000-x', 0, 0, 0.6667, 'X000', 10),
(33, '00000000-x black', '00000000-x black', 0, 1, 1.5333, 'X142', 10),
(34, '00000000-x black status', '00000000-x black status', 0, 1, 1.7667, 'X14232', 10),
(35, '00000000-x blue', '00000000-x blue', 0, 1, 1.5, 'X140', 10),
(36, '00000000-x blue nikon', '00000000-x blue nikon', 0, 1, 1.7, 'X14525', 10),
(37, '00000000-x green', '00000000-x green', 0, 1, 1.5333, 'X650', 10),
(38, '00000000-x green nikon', '00000000-x green nikon', 0, 1, 1.7333, 'X6525', 10),
(39, '00000000-x red', '00000000-x red', 0, 1, 1.4667, 'X630', 10),
(40, '00000000-x red nikon', '00000000-x red nikon', 0, 1, 1.6667, 'X63525', 10),
(41, '2', '2', 0, 0, 0.1, '', 10),
(42, '2 lense', '2 lense', 0, 1, 1.2333, 'L520', 10),
(43, '2 lense yes', '2 lense yes', 0, 1, 1.3667, 'L520', 10),
(44, '22', '22', 0, 0, 0.2, '', 7),
(45, '3', '3', 0, 0, 0.1, '', 10),
(46, '3 x-tripod', '3 x-tripod', 0, 1, 1.3333, 'X3613', 3),
(47, '3 x-tripod yes', '3 x-tripod yes', 0, 1, 1.4667, 'X36132', 3),
(48, '5', '5', 0, 0, 0.1, '', 10),
(49, '5 camera', '5 camera', 0, 1, 1.2667, 'C560', 10),
(50, '5 camera yes', '5 camera yes', 0, 1, 1.4, 'C562', 10),
(51, '50-200mm', '50-200mm', 0, 0, 0.5333, 'M000', 3),
(52, '50-200mm x', '50-200mm x', 0, 1, 1.3333, 'M200', 3),
(53, '50-200mm x tripod', '50-200mm x tripod', 0, 1, 1.5667, 'M23613', 3),
(54, 'availability', 'availability', 0, 0, 0.8, 'A14143', 10),
(55, 'availability 3', 'availability 3', 0, 1, 1.4667, 'A14143', 10),
(56, 'availability 3 x-tripod', 'availability 3 x-tripod', 0, 1, 1.7667, 'A1414323613', 3),
(57, 'available', 'available', 0, 0, 0.6, 'A1414', 10),
(58, 'available equipment', 'available equipment', 0, 1, 1.6333, 'A14142153', 8),
(59, 'available equipment description', 'available equipment description', 0, 1, 2, 'A1414215326135', 1),
(60, 'black', 'black', 0, 0, 0.3333, 'B420', 10),
(61, 'black broken', 'black broken', 0, 1, 1.4, 'B421625', 10),
(62, 'black broken green', 'black broken green', 0, 1, 1.6, 'B421625265', 10),
(63, 'black status', 'black status', 0, 1, 1.4, 'B4232', 10),
(64, 'black status key', 'black status key', 0, 1, 1.5333, 'B4232', 9),
(65, 'blue', 'blue', 0, 0, 0.2667, 'B400', 10),
(66, 'blue borrowed', 'blue borrowed', 0, 1, 1.4333, 'B4163', 10),
(67, 'blue borrowed black', 'blue borrowed black', 0, 1, 1.6333, 'B4163142', 10),
(68, 'blue nikon', 'blue nikon', 0, 1, 1.3333, 'B4525', 10),
(69, 'blue nikon d700', 'blue nikon d700', 0, 1, 1.5, 'B45253', 10),
(70, 'borrowed', 'borrowed', 0, 0, 0.5333, 'B630', 10),
(71, 'borrowed black', 'borrowed black', 0, 1, 1.4667, 'B63142', 10),
(72, 'borrowed black broken', 'borrowed black broken', 0, 1, 1.7, 'B631421625', 10),
(73, 'broken', 'broken', 0, 0, 0.4, 'B625', 10),
(74, 'broken green', 'broken green', 0, 1, 1.4, 'B625265', 10),
(75, 'broken green available', 'broken green available', 0, 1, 1.7333, 'B6252651414', 10),
(76, 'camera', 'camera', 0, 0, 0.4, 'C560', 10),
(77, 'camera 00000000-x', 'camera 00000000-x', 0, 1, 1.5667, 'C562', 10),
(78, 'camera 00000000-x black', 'camera 00000000-x black', 0, 1, 1.7667, 'C562142', 10),
(79, 'camera 00000000-x blue', 'camera 00000000-x blue', 0, 1, 1.7333, 'C56214', 10),
(80, 'camera 00000000-x green', 'camera 00000000-x green', 0, 1, 1.7667, 'C56265', 10),
(81, 'camera 00000000-x red', 'camera 00000000-x red', 0, 1, 1.7, 'C56263', 10),
(82, 'camera samsung', 'camera samsung', 0, 1, 1.4667, 'C5625252', 3),
(83, 'camera samsung nx', 'camera samsung nx', 0, 1, 1.5667, 'C562525252', 3),
(84, 'camera yes', 'camera yes', 0, 1, 1.3333, 'C562', 10),
(85, 'camera yes 2', 'camera yes 2', 0, 1, 1.4, 'C562', 10),
(86, 'complete', 'complete', 0, 0, 0.5333, 'C5143', 10),
(87, 'complete equipment', 'complete equipment', 0, 1, 1.6, 'C51432153', 10),
(88, 'd700', 'd700', 0, 0, 0.2667, 'D000', 10),
(89, 'd700 digital', 'd700 digital', 0, 1, 1.4, 'D234', 10),
(90, 'd700 digital slr', 'd700 digital slr', 0, 1, 1.5333, 'D234246', 10),
(91, 'description', 'description', 0, 0, 0.7333, 'D26135', 10),
(92, 'description serial', 'description serial', 0, 1, 1.6, 'D26135264', 10),
(93, 'description serial status', 'description serial status', 0, 1, 1.8333, 'D26135264232', 10),
(94, 'digital', 'digital', 0, 0, 0.4667, 'D234', 10),
(95, 'digital slr', 'digital slr', 0, 1, 1.3667, 'D234246', 10),
(96, 'digital slr camera', 'digital slr camera', 0, 1, 1.6, 'D234246256', 10),
(97, 'equipment', 'equipment', 0, 0, 0.6, 'E2153', 10),
(98, 'equipment description', 'equipment description', 0, 1, 1.7, 'E215326135', 10),
(99, 'equipment description serial', 'equipment description serial', 0, 1, 1.9333, 'E215326135264', 10),
(100, 'equipment name', 'equipment name', 0, 1, 1.4667, 'E21535', 10),
(101, 'equipment name availability', 'equipment name availability', 0, 1, 1.9, 'E2153514143', 3),
(102, 'green', 'green', 0, 0, 0.3333, 'G650', 10),
(103, 'green available', 'green available', 0, 1, 1.5, 'G651414', 10),
(104, 'green available equipment', 'green available equipment', 0, 1, 1.8333, 'G6514142153', 1),
(105, 'green nikon', 'green nikon', 0, 1, 1.3667, 'G6525', 10),
(106, 'green nikon d700', 'green nikon d700', 0, 1, 1.5333, 'G65253', 10),
(107, 'key', 'key', 0, 0, 0.2, 'K000', 10),
(108, 'key red', 'key red', 0, 1, 1.2333, 'K630', 10),
(109, 'key red under', 'key red under', 0, 1, 1.4333, 'K63536', 10),
(110, 'lense', 'lense', 0, 0, 0.3333, 'L520', 10),
(111, 'lense yes', 'lense yes', 0, 1, 1.3, 'L520', 10),
(112, 'lense yes equipment', 'lense yes equipment', 0, 1, 1.6333, 'L52153', 10),
(113, 'name', 'name', 0, 0, 0.2667, 'N000', 22),
(114, 'name availability', 'name availability', 0, 1, 1.5667, 'N14143', 3),
(115, 'name availability 3', 'name availability 3', 0, 1, 1.6333, 'N14143', 3),
(116, 'new', 'new', 0, 0, 0.2, 'N000', 15),
(117, 'new nikon', 'new nikon', 0, 1, 1.3, 'N250', 3),
(118, 'new nikon d700', 'new nikon d700', 0, 1, 1.4667, 'N253', 3),
(119, 'nikon', 'nikon', 0, 0, 0.3333, 'N250', 10),
(120, 'nikon d700', 'nikon d700', 0, 1, 1.3333, 'N253', 10),
(121, 'nikon d700 digital', 'nikon d700 digital', 0, 1, 1.6, 'N253234', 10),
(122, 'nx', 'nx', 0, 0, 0.1333, 'N200', 3),
(123, 'nx 50-200mm', 'nx 50-200mm', 0, 1, 1.3667, 'N250', 3),
(124, 'nx 50-200mm x', 'nx 50-200mm x', 0, 1, 1.4333, 'N252', 3),
(125, 'quantity', 'quantity', 0, 0, 0.5333, 'Q530', 10),
(126, 'quantity equipment', 'quantity equipment', 0, 1, 1.6, 'Q532153', 10),
(127, 'quantity equipment name', 'quantity equipment name', 0, 1, 1.7667, 'Q5321535', 3),
(128, 'red', 'red', 0, 0, 0.2, 'R300', 10),
(129, 'red nikon', 'red nikon', 0, 1, 1.3, 'R3525', 10),
(130, 'red nikon d700', 'red nikon d700', 0, 1, 1.4667, 'R35253', 10),
(131, 'red under', 'red under', 0, 1, 1.3, 'R3536', 10),
(132, 'red under repair', 'red under repair', 0, 1, 1.5333, 'R353616', 10),
(133, 'repair', 'repair', 0, 0, 0.4, 'R160', 10),
(134, 'repair blue', 'repair blue', 0, 1, 1.3667, 'R1614', 10),
(135, 'repair blue borrowed', 'repair blue borrowed', 0, 1, 1.6667, 'R1614163', 10),
(136, 'samsung', 'samsung', 0, 0, 0.4667, 'S5252', 3),
(137, 'samsung nx', 'samsung nx', 0, 1, 1.3333, 'S525252', 3),
(138, 'samsung nx 50-200mm', 'samsung nx 50-200mm', 0, 1, 1.6333, 'S5252525', 3),
(139, 'serial', 'serial', 0, 0, 0.4, 'S640', 10),
(140, 'serial status', 'serial status', 0, 1, 1.4333, 'S64232', 10),
(141, 'serial status nikon', 'serial status nikon', 0, 1, 1.6333, 'S64232525', 10),
(142, 'slr', 'slr', 0, 0, 0.2, 'S460', 10),
(143, 'slr camera', 'slr camera', 0, 1, 1.3333, 'S46256', 10),
(144, 'slr camera 00000000-x', 'slr camera 00000000-x', 0, 1, 1.7, 'S462562', 10),
(145, 'slr camera samsung', 'slr camera samsung', 0, 1, 1.6, 'S4625625252', 3),
(146, 'status', 'status', 0, 0, 0.4, 'S320', 15),
(147, 'status key', 'status key', 0, 1, 1.3333, 'S320', 9),
(148, 'status key red', 'status key red', 0, 1, 1.4667, 'S3263', 9),
(149, 'status nikon', 'status nikon', 0, 1, 1.4, 'S32525', 10),
(150, 'status nikon d700', 'status nikon d700', 0, 1, 1.5667, 'S325253', 10),
(151, 'tripod', 'tripod', 0, 0, 0.4, 'T613', 10),
(152, 'tripod quantity', 'tripod quantity', 0, 1, 1.5, 'T613253', 3),
(153, 'tripod quantity equipment', 'tripod quantity equipment', 0, 1, 1.8333, 'T6132532153', 3),
(154, 'under', 'under', 0, 0, 0.3333, 'U536', 10),
(155, 'under repair', 'under repair', 0, 1, 1.4, 'U53616', 10),
(156, 'under repair blue', 'under repair blue', 0, 1, 1.5667, 'U5361614', 10),
(157, 'x', 'x', 0, 0, 0.0667, 'X000', 3),
(158, 'x tripod', 'x tripod', 0, 1, 1.2667, 'X3613', 3),
(159, 'x tripod quantity', 'x tripod quantity', 0, 1, 1.5667, 'X3613253', 3),
(160, 'x-tripod', 'x-tripod', 0, 0, 0.5333, 'X3613', 3),
(161, 'x-tripod yes', 'x-tripod yes', 0, 1, 1.4, 'X36132', 3),
(162, 'x-tripod yes 5', 'x-tripod yes 5', 0, 1, 1.4667, 'X36132', 3),
(163, 'yes', 'yes', 0, 0, 0.2, 'Y200', 10),
(164, 'yes 2', 'yes 2', 0, 1, 1.1667, 'Y200', 10),
(165, 'yes 2 lense', 'yes 2 lense', 0, 1, 1.3667, 'Y2452', 10),
(166, 'yes 5', 'yes 5', 0, 1, 1.1667, 'Y200', 10),
(167, 'yes 5 camera', 'yes 5 camera', 0, 1, 1.4, 'Y256', 10),
(168, 'yes equipment', 'yes equipment', 0, 1, 1.4333, 'Y2153', 10),
(169, 'yes equipment description', 'yes equipment description', 0, 1, 1.8333, 'Y215326135', 3),
(287, '0x000000000', '0x000000000', 0, 0, 1.1, 'X000', 7),
(288, '0x000000000 camera', '0x000000000 camera', 0, 1, 1.6, 'X560', 7),
(289, '0x000000000 camera ef-s', '0x000000000 camera ef-s', 0, 1, 1.7667, 'X5612', 7),
(290, '0x000000000 lense', '0x000000000 lense', 0, 1, 1.5667, 'X452', 7),
(291, '0x000000000 lense canon', '0x000000000 lense canon', 0, 1, 1.7667, 'X4525', 7),
(292, '0x000000000 tripod', '0x000000000 tripod', 0, 1, 1.6, 'X3613', 7),
(293, '0x000000000 tripod available', '0x000000000 tripod available', 0, 1, 1.9333, 'X36131414', 7),
(294, '10', '10', 0, 0, 0.2, '', 7),
(295, '10 22mm', '10 22mm', 0, 1, 1.2333, 'M000', 7),
(296, '10 22mm 0x000000000', '10 22mm 0x000000000', 0, 1, 1.6333, 'M200', 7),
(297, '22mm', '22mm', 0, 0, 0.2667, 'M000', 7),
(298, '22mm 0x000000000', '22mm 0x000000000', 0, 1, 1.5333, 'M200', 7),
(299, '22mm 0x000000000 lense', '22mm 0x000000000 lense', 0, 1, 1.7333, 'M2452', 7),
(300, '3 tripod', '3 tripod', 0, 1, 1.2667, 'T613', 7),
(301, '3 tripod yes', '3 tripod yes', 0, 1, 1.4, 'T6132', 7),
(302, '300', '300', 0, 0, 0.3, '', 7),
(303, '300 0x000000000', '300 0x000000000', 0, 1, 1.5, 'X000', 7),
(304, '300 0x000000000 tripod', '300 0x000000000 tripod', 0, 1, 1.7333, 'X3613', 7),
(305, 'availability 3 tripod', 'availability 3 tripod', 0, 1, 1.7, 'A14143613', 7),
(306, 'available equipment quantity', 'available equipment quantity', 0, 1, 1.9333, 'A14142153253', 7),
(307, 'camera ef-s', 'camera ef-s', 0, 1, 1.3667, 'C5612', 7),
(308, 'camera ef-s 10', 'camera ef-s 10', 0, 1, 1.4667, 'C5612', 7),
(309, 'cannon', 'cannon', 0, 0, 0.4, 'C500', 7),
(310, 'cannon x000', 'cannon x000', 0, 1, 1.3667, 'C520', 7),
(311, 'cannon x000 0x000000000', 'cannon x000 0x000000000', 0, 1, 1.7667, 'C520', 7),
(312, 'canon', 'canon', 0, 0, 0.3333, 'C500', 7),
(313, 'canon deluxe', 'canon deluxe', 0, 1, 1.4, 'C5342', 7),
(314, 'canon deluxe tripod', 'canon deluxe tripod', 0, 1, 1.6333, 'C53423613', 7),
(315, 'deluxe', 'deluxe', 0, 0, 0.4, 'D420', 7),
(316, 'deluxe tripod', 'deluxe tripod', 0, 1, 1.4333, 'D423613', 7),
(317, 'deluxe tripod 300', 'deluxe tripod 300', 0, 1, 1.5667, 'D423613', 7),
(318, 'ef-s', 'ef-s', 0, 0, 0.2667, 'E120', 7),
(319, 'ef-s 10', 'ef-s 10', 0, 1, 1.2333, 'E120', 7),
(320, 'ef-s 10 22mm', 'ef-s 10 22mm', 0, 1, 1.4, 'E125', 7),
(321, 'equipment equipment', 'equipment equipment', 0, 1, 1.6333, 'E21532153', 7),
(322, 'equipment equipment name', 'equipment equipment name', 0, 1, 1.8, 'E215321535', 7),
(323, 'equipment name equipment', 'equipment name equipment', 0, 1, 1.8, 'E215352153', 7),
(324, 'equipment quantity', 'equipment quantity', 0, 1, 1.6, 'E2153253', 7),
(325, 'equipment quantity equipment', 'equipment quantity equipment', 0, 1, 1.9333, 'E21532532153', 7),
(326, 'equipment serial', 'equipment serial', 0, 1, 1.5333, 'E2153264', 7),
(327, 'equipment serial type', 'equipment serial type', 0, 1, 1.7, 'E215326431', 7),
(328, 'equipment status', 'equipment status', 0, 1, 1.5333, 'E2153232', 7),
(329, 'equipment status equipment', 'equipment status equipment', 0, 1, 1.8667, 'E2153232153', 7),
(330, 'equipment type', 'equipment type', 0, 1, 1.4667, 'E21531', 7),
(331, 'equipment type availability', 'equipment type availability', 0, 1, 1.9, 'E215314143', 7),
(332, 'lense canon', 'lense canon', 0, 1, 1.3667, 'L525', 7),
(333, 'lense canon deluxe', 'lense canon deluxe', 0, 1, 1.6, 'L525342', 7),
(334, 'name equipment', 'name equipment', 0, 1, 1.4667, 'N2153', 7),
(335, 'name equipment serial', 'name equipment serial', 0, 1, 1.7, 'N2153264', 7),
(336, 'new equipment', 'new equipment', 0, 1, 1.4333, 'N2153', 7),
(337, 'new equipment equipment', 'new equipment equipment', 0, 1, 1.7667, 'N21532153', 7),
(338, 'quantity equipment type', 'quantity equipment type', 0, 1, 1.7667, 'Q5321531', 7),
(339, 'serial type', 'serial type', 0, 1, 1.3667, 'S6431', 7),
(340, 'serial type cannon', 'serial type cannon', 0, 1, 1.6, 'S643125', 7),
(341, 'status equipment', 'status equipment', 0, 1, 1.5333, 'S32153', 7),
(342, 'status equipment description', 'status equipment description', 0, 1, 1.9333, 'S3215326135', 7),
(343, 'tripod 300', 'tripod 300', 0, 1, 1.3333, 'T613', 7),
(344, 'tripod 300 0x000000000', 'tripod 300 0x000000000', 0, 1, 1.7333, 'T6132', 7),
(345, 'tripod available', 'tripod available', 0, 1, 1.5333, 'T6131414', 7),
(346, 'tripod available equipment', 'tripod available equipment', 0, 1, 1.8667, 'T61314142153', 7),
(347, 'tripod yes', 'tripod yes', 0, 1, 1.3333, 'T6132', 7),
(348, 'tripod yes 5', 'tripod yes 5', 0, 1, 1.4, 'T6132', 7),
(349, 'type', 'type', 0, 0, 0.2667, 'T100', 8),
(350, 'type availability', 'type availability', 0, 1, 1.5667, 'T14143', 7),
(351, 'type availability 3', 'type availability 3', 0, 1, 1.6333, 'T14143', 7),
(352, 'type cannon', 'type cannon', 0, 1, 1.3667, 'T125', 7),
(353, 'type cannon x000', 'type cannon x000', 0, 1, 1.5333, 'T1252', 7),
(354, 'x000', 'x000', 0, 0, 0.2667, 'X000', 7),
(355, 'x000 0x000000000', 'x000 0x000000000', 0, 1, 1.5333, 'X000', 7),
(356, 'x000 0x000000000 camera', 'x000 0x000000000 camera', 0, 1, 1.7667, 'X560', 7),
(357, 'yes equipment status', 'yes equipment status', 0, 1, 1.6667, 'Y2153232', 7),
(414, '23', '23', 0, 0, 0.2, '', 3),
(415, 'complete equipment 2', 'complete equipment 2', 0, 1, 1.6667, 'C51432153', 3),
(416, 'equipment 2', 'equipment 2', 0, 1, 1.3667, 'E2153', 3),
(417, '09061234567', '09061234567', 0, 0, 1.1, '', 3),
(418, '09061234567 sugar', '09061234567 sugar', 0, 1, 1.5667, 'S600', 3),
(419, '09061234567 sugar kid', '09061234567 sugar kid', 0, 1, 1.7, 'S623', 3),
(420, '14', '14', 0, 0, 0.2, '', 3),
(421, 'address', 'address', 0, 0, 0.4667, 'A362', 3),
(422, 'address contact', 'address contact', 0, 1, 1.5, 'A3625323', 3),
(423, 'address contact number', 'address contact number', 0, 1, 1.7333, 'A3625323516', 3),
(424, 'castrodes', 'castrodes', 0, 0, 0.6, 'C3632', 3),
(425, 'castrodes paranaque', 'castrodes paranaque', 0, 1, 1.6333, 'C36321652', 3),
(426, 'castrodes paranaque city', 'castrodes paranaque city', 0, 1, 1.8, 'C363216523', 3),
(427, 'city', 'city', 0, 0, 0.2667, 'C300', 3),
(428, 'city 09061234567', 'city 09061234567', 0, 1, 1.5333, 'C300', 3),
(429, 'city 09061234567 sugar', 'city 09061234567 sugar', 0, 1, 1.7333, 'C326', 3),
(430, 'client', 'client', 0, 0, 0.4, 'C453', 9),
(431, 'client info', 'client info', 0, 1, 1.3667, 'C45351', 3),
(432, 'client info table', 'client info table', 0, 1, 1.5667, 'C45351314', 3),
(433, 'client name', 'client name', 0, 1, 1.3667, 'C4535', 3),
(434, 'client name address', 'client name address', 0, 1, 1.6333, 'C4535362', 3),
(435, 'co', 'co', 0, 0, 0.1333, 'C000', 4),
(436, 'co ivan', 'co ivan', 0, 1, 1.2333, 'C150', 3),
(437, 'co ivan castrodes', 'co ivan castrodes', 0, 1, 1.5667, 'C1523632', 3),
(438, 'co takeshi', 'co takeshi', 0, 1, 1.3333, 'C320', 3),
(439, 'co takeshi paranaque', 'co takeshi paranaque', 0, 1, 1.6667, 'C321652', 3),
(440, 'company', 'company', 0, 0, 0.4667, 'C515', 8),
(441, 'company name', 'company name', 0, 1, 1.4, 'C515', 8),
(442, 'company name company', 'company name company', 0, 1, 1.6667, 'C5152515', 3),
(443, 'company position', 'company position', 0, 1, 1.5333, 'C5151235', 3),
(444, 'company position ivan', 'company position ivan', 0, 1, 1.7, 'C515123515', 3),
(445, 'contact', 'contact', 0, 0, 0.4667, 'C5323', 3),
(446, 'contact number', 'contact number', 0, 1, 1.4667, 'C5323516', 3),
(447, 'contact number company', 'contact number company', 0, 1, 1.7333, 'C53235162515', 3),
(448, 'info', 'info', 0, 0, 0.2667, 'I510', 8),
(449, 'info table', 'info table', 0, 1, 1.3333, 'I51314', 3),
(450, 'info table client', 'info table client', 0, 1, 1.5667, 'I513142453', 3),
(451, 'info table jsmallfib', 'info table jsmallfib', 0, 1, 1.6667, 'I513142541', 1),
(452, 'ivan', 'ivan', 0, 0, 0.2667, 'I150', 3),
(453, 'ivan castrodes', 'ivan castrodes', 0, 1, 1.4667, 'I1523632', 3),
(454, 'ivan castrodes paranaque', 'ivan castrodes paranaque', 0, 1, 1.8, 'I15236321652', 3),
(455, 'jsmallfib', 'jsmallfib', 0, 0, 0.6, 'J541', 5),
(456, 'kid', 'kid', 0, 0, 0.2, 'K300', 4),
(457, 'kid co', 'kid co', 0, 1, 1.2, 'K320', 4),
(458, 'kid co ivan', 'kid co ivan', 0, 1, 1.3667, 'K3215', 3),
(459, 'kid co takeshi', 'kid co takeshi', 0, 1, 1.4667, 'K3232', 3),
(460, 'name address', 'name address', 0, 1, 1.4, 'N362', 3),
(461, 'name address contact', 'name address contact', 0, 1, 1.6667, 'N3625323', 3),
(462, 'name company', 'name company', 0, 1, 1.4, 'N2515', 3),
(463, 'name company position', 'name company position', 0, 1, 1.7, 'N25151235', 3),
(464, 'number', 'number', 0, 0, 0.4, 'N160', 3),
(465, 'number company', 'number company', 0, 1, 1.4667, 'N162515', 3),
(466, 'number company name', 'number company name', 0, 1, 1.6333, 'N162515', 3),
(467, 'paranaque', 'paranaque', 0, 0, 0.6, 'P652', 3),
(468, 'paranaque city', 'paranaque city', 0, 1, 1.4667, 'P6523', 3),
(469, 'paranaque city 09061234567', 'paranaque city 09061234567', 0, 1, 1.8667, 'P6523', 3),
(470, 'position', 'position', 0, 0, 0.5333, 'P235', 3),
(471, 'position ivan', 'position ivan', 0, 1, 1.4333, 'P23515', 3),
(472, 'position ivan castrodes', 'position ivan castrodes', 0, 1, 1.7667, 'P2351523632', 3),
(473, 'sugar', 'sugar', 0, 0, 0.3333, 'S600', 4),
(474, 'sugar kid', 'sugar kid', 0, 1, 1.3, 'S623', 4),
(475, 'sugar kid co', 'sugar kid co', 0, 1, 1.4, 'S6232', 4),
(476, 'table', 'table', 0, 0, 0.3333, 'T140', 3),
(477, 'table client', 'table client', 0, 1, 1.4, 'T142453', 3),
(478, 'table client name', 'table client name', 0, 1, 1.5667, 'T1424535', 3),
(479, 'table jsmallfib', 'table jsmallfib', 0, 1, 1.5, 'T142541', 1),
(480, 'takeshi', 'takeshi', 0, 0, 0.4667, 'T200', 3),
(481, 'takeshi paranaque', 'takeshi paranaque', 0, 1, 1.5667, 'T21652', 3),
(482, 'takeshi paranaque city', 'takeshi paranaque city', 0, 1, 1.7333, 'T216523', 3),
(544, 'a', 'a', 0, 0, 0.0667, 'A000', 11),
(545, 'a file', 'a file', 0, 1, 1.2, 'A140', 6),
(546, 'a file repository', 'a file repository', 0, 1, 1.5667, 'A1461236', 6),
(547, 'article is', 'article is', 0, 1, 1.3333, 'A63242', 6),
(548, 'article is viewed', 'article is viewed', 0, 1, 1.5667, 'A6324213', 6),
(549, 'by', 'by', 0, 0, 0.1333, 'B000', 6),
(550, 'by a', 'by a', 0, 1, 1.1333, 'B000', 6),
(551, 'by a file', 'by a file', 0, 1, 1.3, 'B400', 6),
(552, 'file', 'file', 0, 0, 0.2667, 'F400', 11),
(553, 'file repository', 'file repository', 0, 1, 1.5, 'F461236', 6),
(554, 'file repository when', 'file repository when', 0, 1, 1.6667, 'F4612365', 6),
(555, 'is', 'is', 0, 0, 0.1333, 'I200', 6),
(556, 'is replaced', 'is replaced', 0, 1, 1.3667, 'I261423', 6),
(557, 'is replaced by', 'is replaced by', 0, 1, 1.4667, 'I2614231', 6),
(558, 'is viewed', 'is viewed', 0, 1, 1.3, 'I213', 6),
(559, 'is viewed info', 'is viewed info', 0, 1, 1.4667, 'I21351', 1),
(560, 'line', 'line', 0, 0, 0.2667, 'L500', 6),
(561, 'line is', 'line is', 0, 1, 1.2333, 'L520', 6),
(562, 'line is replaced', 'line is replaced', 0, 1, 1.5333, 'L5261423', 6),
(563, 'replaced', 'replaced', 0, 0, 0.5333, 'R1423', 6),
(564, 'replaced by', 'replaced by', 0, 1, 1.3667, 'R14231', 6),
(565, 'replaced by a', 'replaced by a', 0, 1, 1.4333, 'R14231', 6),
(566, 'repository', 'repository', 0, 0, 0.6667, 'R1236', 6),
(567, 'repository when', 'repository when', 0, 1, 1.5, 'R12365', 6),
(568, 'repository when the', 'repository when the', 0, 1, 1.6333, 'R123653', 6),
(569, 'the', 'the', 0, 0, 0.2, 'T000', 8),
(570, 'the article', 'the article', 0, 1, 1.3667, 'T6324', 6),
(571, 'the article is', 'the article is', 0, 1, 1.4667, 'T63242', 6),
(572, 'this', 'this', 0, 0, 0.2667, 'T200', 6),
(573, 'this line', 'this line', 0, 1, 1.3, 'T245', 6),
(574, 'this line is', 'this line is', 0, 1, 1.4, 'T2452', 6),
(575, 'viewed', 'viewed', 0, 0, 0.4, 'V300', 6),
(576, 'viewed info', 'viewed info', 0, 1, 1.3667, 'V351', 1),
(577, 'viewed info table', 'viewed info table', 0, 1, 1.5667, 'V351314', 1),
(578, 'when', 'when', 0, 0, 0.2667, 'W500', 6),
(579, 'when the', 'when the', 0, 1, 1.2667, 'W530', 6),
(580, 'when the article', 'when the article', 0, 1, 1.5333, 'W536324', 6),
(607, '15', '15', 0, 0, 0.2, '', 4),
(608, '1st', '1st', 0, 0, 0.2, 'S300', 5),
(609, '1st project', '1st project', 0, 1, 1.3667, 'S31623', 5),
(610, '1st project atc', '1st project atc', 0, 1, 1.5, 'S316232', 5),
(611, '2nd', '2nd', 0, 0, 0.2, 'N300', 4),
(612, '2nd project', '2nd project', 0, 1, 1.3667, 'N31623', 4),
(613, '2nd project close', '2nd project close', 0, 1, 1.5667, 'N31623242', 4),
(614, '3rd', '3rd', 0, 0, 0.2, 'R300', 4),
(615, '3rd project', '3rd project', 0, 1, 1.3667, 'R31623', 4),
(616, '3rd project painting', '3rd project painting', 0, 1, 1.6667, 'R3162315352', 4),
(617, 'alabang', 'alabang', 0, 0, 0.4667, 'A4152', 5),
(618, 'alabang town', 'alabang town', 0, 1, 1.4, 'A415235', 5),
(619, 'alabang town center', 'alabang town center', 0, 1, 1.6333, 'A4152352536', 5),
(620, 'approved', 'approved', 0, 0, 0.5333, 'A1613', 5),
(621, 'approved exhibit', 'approved exhibit', 0, 1, 1.5333, 'A1613213', 5),
(622, 'approved exhibit document', 'approved exhibit document', 0, 1, 1.8333, 'A1613213253', 5),
(623, 'atc', 'atc', 0, 0, 0.2, 'A320', 5),
(624, 'atc alabang', 'atc alabang', 0, 1, 1.3667, 'A324152', 5),
(625, 'atc alabang town', 'atc alabang town', 0, 1, 1.5333, 'A32415235', 5),
(626, 'center', 'center', 0, 0, 0.4, 'C536', 5),
(627, 'center exhibit', 'center exhibit', 0, 1, 1.4667, 'C536213', 5),
(628, 'center exhibit client', 'center exhibit client', 0, 1, 1.7, 'C5362132453', 5),
(629, 'client company', 'client company', 0, 1, 1.4667, 'C4532515', 5),
(630, 'client company name', 'client company name', 0, 1, 1.6333, 'C4532515', 5),
(631, 'client project', 'client project', 0, 1, 1.4667, 'C4531623', 4),
(632, 'client project proposal', 'client project proposal', 0, 1, 1.7667, 'C453162316124', 4),
(633, 'client project proposal''s', 'client project proposal', 0, 1, 1.8333, 'C4531623161242', 4),
(634, 'close', 'close', 0, 0, 0.3333, 'C420', 4),
(635, 'close up', 'close up', 0, 1, 1.2667, 'C421', 4),
(636, 'close up models', 'close up models', 0, 1, 1.5, 'C4215342', 4),
(637, 'company name sample-company', 'company name sample-company', 0, 1, 1.9, 'C51525142515', 5),
(638, 'denied', 'denied', 0, 0, 0.4, 'D530', 4),
(639, 'denied painting', 'denied painting', 0, 1, 1.5, 'D5315352', 4),
(640, 'denied painting request', 'denied painting request', 0, 1, 1.7667, 'D5315352623', 4),
(641, 'document', 'document', 0, 0, 0.5333, 'D253', 6),
(642, 'document this', 'document this', 0, 1, 1.4333, 'D2532', 4),
(643, 'document this line', 'document this line', 0, 1, 1.6, 'D253245', 4),
(644, 'exhibit', 'exhibit', 0, 0, 0.4667, 'E213', 5),
(645, 'exhibit client', 'exhibit client', 0, 1, 1.4667, 'E2132453', 5),
(646, 'exhibit client company', 'exhibit client company', 0, 1, 1.7333, 'E21324532515', 5),
(647, 'exhibit document', 'exhibit document', 0, 1, 1.5333, 'E213253', 5),
(648, 'exhibit document this', 'exhibit document this', 0, 1, 1.7, 'E2132532', 2),
(649, 'is viewed 2nd', 'is viewed 2nd', 0, 1, 1.4333, 'I21353', 2),
(650, 'is viewed 3rd', 'is viewed 3rd', 0, 1, 1.4333, 'I21363', 2),
(651, 'list', 'list', 0, 0, 0.2667, 'L230', 9),
(652, 'models', 'models', 0, 0, 0.4, 'M342', 4),
(653, 'models photoshoot', 'models photoshoot', 0, 1, 1.5667, 'M3421323', 4),
(654, 'models photoshoot client', 'models photoshoot client', 0, 1, 1.8, 'M34213232453', 4),
(655, 'name sample-company', 'name sample-company', 0, 1, 1.6333, 'N25142515', 5),
(656, 'name sample-company status', 'name sample-company status', 0, 1, 1.8667, 'N25142515232', 5),
(657, 'painting', 'painting', 0, 0, 0.5333, 'P5352', 4),
(658, 'painting request', 'painting request', 0, 1, 1.5333, 'P5352623', 4),
(659, 'painting request client', 'painting request client', 0, 1, 1.7667, 'P53526232453', 4),
(660, 'painting request document', 'painting request document', 0, 1, 1.8333, 'P5352623253', 4),
(661, 'pending', 'pending', 0, 0, 0.4667, 'P5352', 4),
(662, 'pending photoshoot', 'pending photoshoot', 0, 1, 1.6, 'P53521323', 4),
(663, 'pending photoshoot document', 'pending photoshoot document', 0, 1, 1.9, 'P53521323253', 4),
(664, 'photoshoot', 'photoshoot', 0, 0, 0.6667, 'P323', 4),
(665, 'photoshoot client', 'photoshoot client', 0, 1, 1.5667, 'P3232453', 4),
(666, 'photoshoot client company', 'photoshoot client company', 0, 1, 1.8333, 'P32324532515', 4),
(667, 'photoshoot document', 'photoshoot document', 0, 1, 1.6333, 'P323253', 4),
(668, 'photoshoot document this', 'photoshoot document this', 0, 1, 1.8, 'P3232532', 2),
(669, 'project', 'project', 0, 0, 0.4667, 'P623', 6),
(670, 'project atc', 'project atc', 0, 1, 1.3667, 'P6232', 5),
(671, 'project atc alabang', 'project atc alabang', 0, 1, 1.6333, 'P62324152', 5),
(672, 'project close', 'project close', 0, 1, 1.4333, 'P623242', 4),
(673, 'project close up', 'project close up', 0, 1, 1.5333, 'P6232421', 4),
(674, 'project painting', 'project painting', 0, 1, 1.5333, 'P62315352', 4),
(675, 'project painting request', 'project painting request', 0, 1, 1.8, 'P62315352623', 4),
(676, 'project proposal', 'project proposal', 0, 1, 1.5333, 'P62316124', 4),
(677, 'project proposal s', 'project proposal s', 0, 1, 1.6, 'P623161242', 4),
(678, 'project proposal''s', 'project proposal', 0, 1, 1.6, 'P623161242', 4),
(679, 'project proposal''s list', 'project proposal list', 0, 1, 1.7667, 'P623161242423', 4),
(680, 'proposal', 'proposal', 0, 0, 0.5333, 'P6124', 4),
(681, 'proposal s', 'proposal s', 0, 1, 1.3333, 'P61242', 4),
(682, 'proposal s list', 'proposal s list', 0, 1, 1.5, 'P61242423', 4),
(683, 'proposal''s', 'proposal', 0, 0, 0.6667, 'P61242', 4),
(684, 'proposal''s list', 'proposal list', 0, 1, 1.5, 'P61242423', 4),
(685, 'request', 'request', 0, 0, 0.4667, 'R230', 4),
(686, 'request client', 'request client', 0, 1, 1.4667, 'R232453', 4),
(687, 'request client company', 'request client company', 0, 1, 1.7333, 'R2324532515', 4),
(688, 'request document', 'request document', 0, 1, 1.5333, 'R23253', 4),
(689, 'request document this', 'request document this', 0, 1, 1.7, 'R232532', 4),
(690, 's', 's', 0, 0, 0.0667, 'S000', 4),
(691, 's list', 's list', 0, 1, 1.2, 'S423', 4),
(692, 'sample-company', 'sample-company', 0, 0, 0.9333, 'S5142515', 5),
(693, 'sample-company status', 'sample-company status', 0, 1, 1.7, 'S5142515232', 5),
(694, 'sample-company status approved', 'sample-company status approved', 0, 1, 2, 'S51425152321613', 5),
(695, 'sample-company status denied', 'sample-company status denied', 0, 1, 1.9333, 'S5142515232353', 4),
(696, 'sample-company status pending', 'sample-company status pending', 0, 1, 1.9667, 'S514251523215352', 4),
(697, 'status approved', 'status approved', 0, 1, 1.5, 'S321613', 5),
(698, 'status approved exhibit', 'status approved exhibit', 0, 1, 1.7667, 'S321613213', 5),
(699, 'status denied', 'status denied', 0, 1, 1.4333, 'S32353', 4),
(700, 'status denied painting', 'status denied painting', 0, 1, 1.7333, 'S3235315352', 4),
(701, 'status pending', 'status pending', 0, 1, 1.4667, 'S3215352', 4),
(702, 'status pending photoshoot', 'status pending photoshoot', 0, 1, 1.8333, 'S32153521323', 4),
(703, 'town', 'town', 0, 0, 0.2667, 'T500', 5),
(704, 'town center', 'town center', 0, 1, 1.3667, 'T52536', 5),
(705, 'town center exhibit', 'town center exhibit', 0, 1, 1.6333, 'T52536213', 5),
(706, 'up', 'up', 0, 0, 0.1333, 'U100', 4),
(707, 'up models', 'up models', 0, 1, 1.3, 'U15342', 4),
(708, 'up models photoshoot', 'up models photoshoot', 0, 1, 1.6667, 'U153421323', 4),
(709, 'viewed 2nd', 'viewed 2nd', 0, 1, 1.3333, 'V353', 2),
(710, 'viewed 2nd project', 'viewed 2nd project', 0, 1, 1.6, 'V3531623', 2),
(711, 'viewed 3rd', 'viewed 3rd', 0, 1, 1.3333, 'V363', 2),
(712, 'viewed 3rd project', 'viewed 3rd project', 0, 1, 1.6, 'V3631623', 2),
(734, 'document 2nd', 'document 2nd', 0, 1, 1.4, 'D25353', 2),
(735, 'document 2nd project', 'document 2nd project', 0, 1, 1.6667, 'D253531623', 2),
(736, 'document 3rd', 'document 3rd', 0, 1, 1.4, 'D25363', 2),
(737, 'document 3rd project', 'document 3rd project', 0, 1, 1.6667, 'D253631623', 2),
(738, 'exhibit document 2nd', 'exhibit document 2nd', 0, 1, 1.6667, 'E21325353', 2),
(739, 'is viewed this', 'is viewed this', 0, 1, 1.4667, 'I2132', 1),
(740, 'photoshoot document 3rd', 'photoshoot document 3rd', 0, 1, 1.7667, 'P32325363', 2),
(741, 'viewed this', 'viewed this', 0, 1, 1.3667, 'V320', 1),
(742, 'viewed this line', 'viewed this line', 0, 1, 1.5333, 'V3245', 1),
(749, '1', '1', 0, 0, 0.1, '', 6),
(750, '1 this', '1 this', 0, 1, 1.2, 'T200', 1),
(751, '1 this line', '1 this line', 0, 1, 1.3667, 'T245', 1),
(752, '24', '24', 0, 0, 0.2, '', 5),
(753, 'doc', 'doc', 0, 0, 0.2, 'D200', 5),
(754, 'doc 1', 'doc 1', 0, 1, 1.1667, 'D200', 5),
(755, 'doc 1 this', 'doc 1 this', 0, 1, 1.3333, 'D232', 1),
(756, 'sample', 'sample', 0, 0, 0.4, 'S514', 7),
(757, 'sample doc', 'sample doc', 0, 1, 1.3333, 'S51432', 5),
(758, 'sample doc 1', 'sample doc 1', 0, 1, 1.4, 'S51432', 5),
(759, 'tls', 'tls', 0, 0, 0.2, 'T420', 5),
(760, 'tls doc', 'tls doc', 0, 1, 1.2333, 'T4232', 5),
(761, 'tls doc 1', 'tls doc 1', 0, 1, 1.3, 'T4232', 5),
(764, '''http', 'http', 0, 0, 0.3333, 'H310', 4),
(765, '''http localhost', 'http localhost', 0, 1, 1.5, 'H3142423', 4),
(766, '''http localhost lightswitch', 'http localhost lightswitch', 0, 1, 1.9, 'H3142423423232', 4),
(767, '1 current', '1 current', 0, 1, 1.3, 'C653', 1),
(768, '1 current folder', '1 current folder', 0, 1, 1.5333, 'C6531436', 1),
(769, '1 dir', '1 dir', 0, 1, 1.1667, 'D600', 4),
(770, '1 dir jsroot', '1 dir jsroot', 0, 1, 1.4, 'D6263', 4),
(771, '135', '135', 0, 0, 0.3, '', 3),
(772, '135 jsmallfib', '135 jsmallfib', 0, 1, 1.4333, 'J541', 3),
(773, '135 jsmallfib 1', '135 jsmallfib 1', 0, 1, 1.5, 'J541', 3),
(774, '24 itemid', '24 itemid', 0, 1, 1.3, 'I353', 3),
(775, '24 itemid 135', '24 itemid 135', 0, 1, 1.4333, 'I353', 3),
(776, 'a new', 'a new', 0, 1, 1.1667, 'A500', 5),
(777, 'a new file', 'a new file', 0, 1, 1.3333, 'A514', 5),
(778, 'add', 'add', 0, 0, 0.2, 'A300', 5),
(779, 'add folder', 'add folder', 0, 1, 1.3333, 'A31436', 5),
(780, 'add folder use', 'add folder use', 0, 1, 1.4667, 'A314362', 4),
(781, 'addfile', 'addfile', 0, 0, 0.4667, 'A314', 3),
(782, 'addfile png', 'addfile png', 0, 1, 1.3667, 'A314152', 3),
(783, 'addfile png title', 'addfile png title', 0, 1, 1.5667, 'A31415234', 3),
(784, 'article id', 'article id', 0, 1, 1.3333, 'A63243', 4),
(785, 'article id 24', 'article id 24', 0, 1, 1.4333, 'A63243', 3),
(786, 'com', 'com', 0, 0, 0.2, 'C500', 4),
(787, 'com content', 'com content', 0, 1, 1.3667, 'C525353', 4),
(788, 'com content view', 'com content view', 0, 1, 1.5333, 'C5253531', 4),
(789, 'content', 'content', 0, 0, 0.4667, 'C5353', 4),
(790, 'content jsmallfib', 'content jsmallfib', 0, 1, 1.5667, 'C53532541', 3),
(791, 'content jsmallfib media', 'content jsmallfib media', 0, 1, 1.7667, 'C5353254153', 3),
(792, 'content view', 'content view', 0, 1, 1.4, 'C53531', 4),
(793, 'content view article', 'content view article', 0, 1, 1.6667, 'C535316324', 4),
(794, 'current', 'current', 0, 0, 0.4667, 'C653', 5),
(795, 'current folder', 'current folder', 0, 1, 1.4667, 'C6531436', 5),
(796, 'current folder top', 'current folder top', 0, 1, 1.6, 'C653143631', 5),
(797, 'dir', 'dir', 0, 0, 0.2, 'D600', 4),
(798, 'dir jsroot', 'dir jsroot', 0, 1, 1.3333, 'D6263', 4),
(799, 'dir jsroot sample', 'dir jsroot sample', 0, 1, 1.5667, 'D62632514', 3),
(800, 'doc 1 current', 'doc 1 current', 0, 1, 1.4333, 'D2653', 1),
(801, 'file list', 'file list', 0, 1, 1.3, 'F423', 5),
(802, 'file list file', 'file list file', 0, 1, 1.4667, 'F42314', 5),
(803, 'file name', 'file name', 0, 1, 1.3, 'F450', 5),
(804, 'filter', 'filter', 0, 0, 0.4, 'F436', 5),
(805, 'filter file', 'filter file', 0, 1, 1.3667, 'F43614', 5),
(806, 'filter file list', 'filter file list', 0, 1, 1.5333, 'F4361423', 5),
(807, 'flash', 'flash', 0, 0, 0.3333, 'F420', 5),
(808, 'flash uploader', 'flash uploader', 0, 1, 1.4667, 'F421436', 5),
(809, 'flash uploader upload', 'flash uploader upload', 0, 1, 1.7, 'F421436143', 5),
(810, 'folder', 'folder', 0, 0, 0.4, 'F436', 5),
(811, 'folder add', 'folder add', 0, 1, 1.3333, 'F4363', 5),
(812, 'folder add folder', 'folder add folder', 0, 1, 1.5667, 'F43631436', 5),
(813, 'folder top', 'folder top', 0, 1, 1.3333, 'F43631', 5),
(814, 'folder top level', 'folder top level', 0, 1, 1.5333, 'F43631414', 5),
(815, 'folder use', 'folder use', 0, 1, 1.3333, 'F4362', 4),
(816, 'folder use flash', 'folder use flash', 0, 1, 1.5333, 'F4362142', 4),
(817, 'folder''', 'folder', 0, 0, 0.4667, 'F436', 3),
(818, 'folder'' sample', 'folder sample', 0, 1, 1.4667, 'F4362514', 3),
(819, 'folder'' sample folder', 'folder sample folder', 0, 1, 1.7, 'F43625141436', 3),
(820, 'href', 'href', 0, 0, 0.2667, 'H610', 4),
(821, 'href ''http', 'href http', 0, 1, 1.3333, 'H6131', 4),
(822, 'href ''http localhost', 'href http localhost', 0, 1, 1.6667, 'H613142423', 4),
(823, 'id', 'id', 0, 0, 0.1333, 'I300', 4),
(824, 'id 24', 'id 24', 0, 1, 1.1667, 'I300', 3),
(825, 'id 24 itemid', 'id 24 itemid', 0, 1, 1.4, 'I353', 3),
(826, 'index php', 'index php', 0, 1, 1.3, 'I5321', 4),
(827, 'index php option', 'index php option', 0, 1, 1.5333, 'I532135', 4),
(828, 'info filter', 'info filter', 0, 1, 1.3667, 'I51436', 5),
(829, 'info filter file', 'info filter file', 0, 1, 1.5333, 'I5143614', 5),
(830, 'itemid', 'itemid', 0, 0, 0.4, 'I353', 4),
(831, 'itemid 135', 'itemid 135', 0, 1, 1.3333, 'I353', 3),
(832, 'itemid 135 jsmallfib', 'itemid 135 jsmallfib', 0, 1, 1.6667, 'I3532541', 3),
(833, 'jsmallfib 1', 'jsmallfib 1', 0, 1, 1.3667, 'J541', 4),
(834, 'jsmallfib 1 dir', 'jsmallfib 1 dir', 0, 1, 1.5, 'J54136', 4),
(835, 'jsmallfib media', 'jsmallfib media', 0, 1, 1.5, 'J54153', 3),
(836, 'jsmallfib media smallerik', 'jsmallfib media smallerik', 0, 1, 1.8333, 'J5415325462', 3),
(837, 'jsroot', 'jsroot', 0, 0, 0.4, 'J630', 4),
(838, 'jsroot sample', 'jsroot sample', 0, 1, 1.4333, 'J632514', 3),
(839, 'jsroot sample folder''', 'jsroot sample folder', 0, 1, 1.7, 'J6325141436', 3),
(840, 'level', 'level', 0, 0, 0.3333, 'L140', 5),
(841, 'level info', 'level info', 0, 1, 1.3333, 'L1451', 5),
(842, 'level info filter', 'level info filter', 0, 1, 1.5667, 'L1451436', 5),
(843, 'lightswitch', 'lightswitch', 0, 0, 0.7333, 'L23232', 4),
(844, 'lightswitch index', 'lightswitch index', 0, 1, 1.5667, 'L23232532', 4),
(845, 'lightswitch index php', 'lightswitch index php', 0, 1, 1.7, 'L232325321', 4),
(846, 'list file', 'list file', 0, 1, 1.3, 'L2314', 5),
(847, 'list file name', 'list file name', 0, 1, 1.4667, 'L23145', 5),
(848, 'localhost', 'localhost', 0, 0, 0.6, 'L2423', 4),
(849, 'localhost lightswitch', 'localhost lightswitch', 0, 1, 1.7, 'L2423423232', 4),
(850, 'localhost lightswitch index', 'localhost lightswitch index', 0, 1, 1.9, 'L2423423232532', 4),
(851, 'media', 'media', 0, 0, 0.3333, 'M300', 3),
(852, 'media smallerik', 'media smallerik', 0, 1, 1.5, 'M325462', 3),
(853, 'media smallerik navigationicons', 'media smallerik navigationicons', 0, 1, 2, 'M32546251235252', 3),
(854, 'navigationicons', 'navigationicons', 0, 0, 1, 'N1235252', 3),
(855, 'navigationicons addfile', 'navigationicons addfile', 0, 1, 1.7667, 'N1235252314', 3),
(856, 'navigationicons addfile png', 'navigationicons addfile png', 0, 1, 1.9, 'N1235252314152', 3),
(857, 'new file', 'new file', 0, 1, 1.2667, 'N140', 5),
(858, 'option', 'option', 0, 0, 0.4, 'O135', 4),
(859, 'option com', 'option com', 0, 1, 1.3333, 'O13525', 4),
(860, 'option com content', 'option com content', 0, 1, 1.6, 'O1352525353', 4),
(861, 'php', 'php', 0, 0, 0.2, 'P000', 4),
(862, 'php option', 'php option', 0, 1, 1.3333, 'P350', 4),
(863, 'php option com', 'php option com', 0, 1, 1.4667, 'P3525', 4),
(864, 'plugins', 'plugins', 0, 0, 0.4667, 'P4252', 3),
(865, 'plugins content', 'plugins content', 0, 1, 1.5, 'P42525353', 3),
(866, 'plugins content jsmallfib', 'plugins content jsmallfib', 0, 1, 1.8333, 'P425253532541', 3),
(867, 'png', 'png', 0, 0, 0.2, 'P520', 3),
(868, 'png title', 'png title', 0, 1, 1.3, 'P5234', 3),
(869, 'png title upload', 'png title upload', 0, 1, 1.5333, 'P5234143', 3),
(870, 'sample folder', 'sample folder', 0, 1, 1.4333, 'S5141436', 5),
(871, 'sample folder add', 'sample folder add', 0, 1, 1.5667, 'S51414363', 5),
(872, 'sample folder''', 'sample folder', 0, 1, 1.4667, 'S5141436', 3),
(873, 'sample folder'' sample', 'sample folder sample', 0, 1, 1.7, 'S51414362514', 3),
(874, 'smallerik', 'smallerik', 0, 0, 0.6, 'S5462', 3),
(875, 'smallerik navigationicons', 'smallerik navigationicons', 0, 1, 1.8333, 'S546251235252', 3),
(876, 'smallerik navigationicons addfile', 'smallerik navigationicons addfile', 0, 1, 2, 'S546251235252314', 3),
(877, 'src', 'src', 0, 0, 0.2, 'S620', 3),
(878, 'src plugins', 'src plugins', 0, 1, 1.3667, 'S6214252', 3),
(879, 'src plugins content', 'src plugins content', 0, 1, 1.6333, 'S62142525353', 3),
(880, 'title', 'title', 0, 0, 0.3333, 'T400', 3),
(881, 'title upload', 'title upload', 0, 1, 1.4, 'T4143', 3),
(882, 'title upload a', 'title upload a', 0, 1, 1.4667, 'T4143', 3),
(883, 'top', 'top', 0, 0, 0.2, 'T100', 5),
(884, 'top level', 'top level', 0, 1, 1.3, 'T1414', 5),
(885, 'top level info', 'top level info', 0, 1, 1.4667, 'T141451', 5),
(886, 'upload', 'upload', 0, 0, 0.4, 'U143', 5),
(887, 'upload a', 'upload a', 0, 1, 1.2667, 'U143', 5),
(888, 'upload a new', 'upload a new', 0, 1, 1.4, 'U1435', 5),
(889, 'uploader', 'uploader', 0, 0, 0.5333, 'U1436', 5),
(890, 'uploader upload', 'uploader upload', 0, 1, 1.5, 'U1436143', 5),
(891, 'uploader upload a', 'uploader upload a', 0, 1, 1.5667, 'U1436143', 5),
(892, 'use', 'use', 0, 0, 0.2, 'U200', 5),
(893, 'use flash', 'use flash', 0, 1, 1.3, 'U2142', 5),
(894, 'use flash uploader', 'use flash uploader', 0, 1, 1.6, 'U21421436', 5),
(895, 'view', 'view', 0, 0, 0.2667, 'V000', 4),
(896, 'view article', 'view article', 0, 1, 1.4, 'V6324', 4),
(897, 'view article id', 'view article id', 0, 1, 1.5, 'V63243', 4),
(898, '109', '109', 0, 0, 0.3, '', 1),
(899, '109 jsmallfib', '109 jsmallfib', 0, 1, 1.4333, 'J541', 1),
(900, '109 jsmallfib 1', '109 jsmallfib 1', 0, 1, 1.5, 'J541', 1),
(901, '11', '11', 0, 0, 0.2, '', 1),
(902, '11 itemid', '11 itemid', 0, 1, 1.3, 'I353', 1),
(903, '11 itemid 109', '11 itemid 109', 0, 1, 1.4333, 'I353', 1),
(904, 'article id 11', 'article id 11', 0, 1, 1.4333, 'A63243', 1),
(905, 'id 11', 'id 11', 0, 1, 1.1667, 'I300', 1),
(906, 'id 11 itemid', 'id 11 itemid', 0, 1, 1.4, 'I353', 1),
(907, 'income', 'income', 0, 0, 0.4, 'I525', 1),
(908, 'income statement', 'income statement', 0, 1, 1.5333, 'I5252353', 1),
(909, 'itemid 109', 'itemid 109', 0, 1, 1.3333, 'I353', 1),
(910, 'itemid 109 jsmallfib', 'itemid 109 jsmallfib', 0, 1, 1.6667, 'I3532541', 1),
(911, 'statement', 'statement', 0, 0, 0.6, 'S353', 1),
(913, '1 for', '1 for', 0, 1, 1.1667, 'F600', 2),
(914, '1 for the', '1 for the', 0, 1, 1.3, 'F630', 2),
(915, 'doc 1 for', 'doc 1 for', 0, 1, 1.3, 'D216', 2),
(916, 'for', 'for', 0, 0, 0.2, 'F600', 2),
(917, 'for the', 'for the', 0, 1, 1.2333, 'F630', 2),
(918, 'for the month', 'for the month', 0, 1, 1.4333, 'F6353', 2),
(919, 'january', 'january', 0, 0, 0.4667, 'J560', 2),
(920, 'january current', 'january current', 0, 1, 1.5, 'J562653', 1),
(921, 'january current folder', 'january current folder', 0, 1, 1.7333, 'J5626531436', 1),
(922, 'month', 'month', 0, 0, 0.3333, 'M300', 2),
(923, 'month of', 'month of', 0, 1, 1.2667, 'M310', 2),
(924, 'month of january', 'month of january', 0, 1, 1.5333, 'M31256', 2),
(925, 'of', 'of', 0, 0, 0.1333, 'O100', 2),
(926, 'of january', 'of january', 0, 1, 1.3333, 'O1256', 2),
(927, 'of january current', 'of january current', 0, 1, 1.6, 'O12562653', 1),
(928, 'the month', 'the month', 0, 1, 1.3, 'T530', 2),
(929, 'the month of', 'the month of', 0, 1, 1.4, 'T531', 2),
(944, '''emptytd''', 'emptytd', 0, 0, 0.6, 'E513', 1),
(945, '''emptytd'' sample', 'emptytd sample', 0, 1, 1.5333, 'E5132514', 1),
(946, '''emptytd'' sample folder', 'emptytd sample folder', 0, 1, 1.7667, 'E51325141436', 1),
(947, 'class', 'class', 0, 0, 0.3333, 'C420', 2),
(948, 'class ''emptytd''', 'class emptytd', 0, 1, 1.5, 'C42513', 1),
(949, 'class ''emptytd'' sample', 'class emptytd sample', 0, 1, 1.7333, 'C425132514', 1),
(950, 'cookie', 'cookie', 0, 0, 0.4, 'C000', 1),
(951, 'cookie swfupload''', 'cookie swfupload', 0, 1, 1.5667, 'C143', 1),
(952, 'cookie swfupload'' use', 'cookie swfupload use', 0, 1, 1.7, 'C1432', 1),
(953, 'dir jsroot set', 'dir jsroot set', 0, 1, 1.4667, 'D626323', 1),
(954, 'document current', 'document current', 0, 1, 1.5333, 'D2532653', 2),
(955, 'document current folder', 'document current folder', 0, 1, 1.7667, 'D25326531436', 2),
(956, 'exhibit document current', 'exhibit document current', 0, 1, 1.8, 'E2132532653', 1),
(957, 'january 1st', 'january 1st', 0, 1, 1.3667, 'J5623', 1),
(958, 'january 1st project', 'january 1st project', 0, 1, 1.6333, 'J56231623', 1),
(959, 'jsroot set', 'jsroot set', 0, 1, 1.3333, 'J6323', 1),
(960, 'jsroot set upload', 'jsroot set upload', 0, 1, 1.5667, 'J6323143', 1),
(961, 'of january 1st', 'of january 1st', 0, 1, 1.4667, 'O125623', 1),
(962, 'set', 'set', 0, 0, 0.2, 'S300', 1),
(963, 'set upload', 'set upload', 0, 1, 1.3333, 'S3143', 1),
(964, 'set upload type', 'set upload type', 0, 1, 1.5, 'S31431', 1),
(965, 'swfupload''', 'swfupload', 0, 0, 0.6667, 'S143', 1),
(966, 'swfupload'' use', 'swfupload use', 0, 1, 1.4667, 'S1432', 1),
(967, 'swfupload'' use flash', 'swfupload use flash', 0, 1, 1.6667, 'S1432142', 1),
(968, 'type cookie', 'type cookie', 0, 1, 1.3667, 'T120', 1),
(969, 'type cookie swfupload''', 'type cookie swfupload', 0, 1, 1.7333, 'T12143', 1),
(970, 'upload type', 'upload type', 0, 1, 1.3667, 'U1431', 1),
(971, 'upload type cookie', 'upload type cookie', 0, 1, 1.6, 'U14312', 1),
(975, '''actionicon''', 'actionicon', 0, 0, 0.8, 'A23525', 1),
(976, '''this', 'this', 0, 0, 0.3333, 'T200', 1),
(977, '''this classname', 'this classname', 0, 1, 1.5, 'T2425', 1),
(978, '''this classname row', 'this classname row', 0, 1, 1.6333, 'T24256', 1),
(979, '01', '01', 0, 0, 0.2, '', 1),
(980, '01 01', '01 01', 0, 1, 1.1667, '', 1),
(981, '01 01 2010', '01 01 2010', 0, 1, 1.3333, '', 1),
(982, '01 2010', '01 2010', 0, 1, 1.2333, '', 1),
(983, '01 2010 client', '01 2010 client', 0, 1, 1.4667, 'C453', 1),
(984, '20', '20', 0, 0, 0.2, '', 1),
(985, '2010', '2010', 0, 0, 0.4, '', 1),
(986, '2010 client', '2010 client', 0, 1, 1.3667, 'C453', 1),
(987, '2010 client sugar', '2010 client sugar', 0, 1, 1.5667, 'C45326', 1),
(988, 'class ''actionicon''', 'class actionicon', 0, 1, 1.6, 'C423525', 1),
(989, 'classname', 'classname', 0, 0, 0.6, 'C425', 1),
(990, 'classname row', 'classname row', 0, 1, 1.4333, 'C4256', 1),
(991, 'classname row odd', 'classname row odd', 0, 1, 1.5667, 'C42563', 1),
(992, 'client sugar', 'client sugar', 0, 1, 1.4, 'C45326', 1),
(993, 'client sugar kid', 'client sugar kid', 0, 1, 1.5333, 'C4532623', 1),
(994, 'co sample1', 'co sample1', 0, 1, 1.3333, 'C514', 1),
(995, 'co sample1 document', 'co sample1 document', 0, 1, 1.6333, 'C5143253', 1),
(996, 'completed', 'completed', 0, 0, 0.6, 'C5143', 1),
(997, 'completed 01', 'completed 01', 0, 1, 1.4, 'C5143', 1),
(998, 'completed 01 01', 'completed 01 01', 0, 1, 1.5, 'C5143', 1),
(999, 'completed project', 'completed project', 0, 1, 1.5667, 'C51431623', 1),
(1000, 'date', 'date', 0, 0, 0.2667, 'D000', 1),
(1001, 'date completed', 'date completed', 0, 1, 1.4667, 'D25143', 1),
(1002, 'date completed 01', 'date completed 01', 0, 1, 1.5667, 'D25143', 1),
(1003, 'kid co sample1', 'kid co sample1', 0, 1, 1.4667, 'K32514', 1),
(1004, 'odd', 'odd', 0, 0, 0.2, 'O300', 1),
(1005, 'odd sample', 'odd sample', 0, 1, 1.3333, 'O32514', 1),
(1006, 'odd sample folder', 'odd sample folder', 0, 1, 1.5667, 'O325141436', 1),
(1007, 'onmouseout', 'onmouseout', 0, 0, 0.6667, 'O523', 1),
(1008, 'onmouseout ''this', 'onmouseout this', 0, 1, 1.5333, 'O5232', 1),
(1009, 'onmouseout ''this classname', 'onmouseout this classname', 0, 1, 1.8667, 'O5232425', 1),
(1010, 'row', 'row', 0, 0, 0.2, 'R000', 1),
(1011, 'row odd', 'row odd', 0, 1, 1.2333, 'R300', 1),
(1012, 'row odd sample', 'row odd sample', 0, 1, 1.4667, 'R32514', 1),
(1013, 'sample1', 'sample1', 0, 0, 0.4667, 'S514', 1),
(1014, 'sample1 document', 'sample1 document', 0, 1, 1.5333, 'S5143253', 1),
(1015, 'sample1 document current', 'sample1 document current', 0, 1, 1.8, 'S51432532653', 1);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_finder_terms_common`
--

INSERT INTO `na3pc_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_finder_types`
--

CREATE TABLE IF NOT EXISTS `na3pc_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `na3pc_finder_types`
--

INSERT INTO `na3pc_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Web Link', '');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_languages`
--

CREATE TABLE IF NOT EXISTS `na3pc_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `na3pc_languages`
--

INSERT INTO `na3pc_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_menu`
--

CREATE TABLE IF NOT EXISTS `na3pc_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=136 ;

--
-- Dumping data for table `na3pc_menu`
--

INSERT INTO `na3pc_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 113, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 43, 44, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 41, 42, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 1, '*', 0),
(102, 'mainmenu', 'Client', 'client', '', 'client', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 52, 0, '*', 0),
(103, 'mainmenu', 'Client Info', 'client-info', '', 'client/client-info', 'index.php?option=com_content&view=article&id=1', 'component', 1, 102, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 46, 49, 0, '*', 0),
(104, 'mainmenu', 'Client Project Proposal''s', 'client-project-proposal-s', '', 'client/client-project-proposal-s', 'index.php?option=com_content&view=article&id=1', 'component', 0, 102, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 50, 51, 0, '*', 0),
(105, 'mainmenu', 'Client Info Table', 'client-info-table', '', 'client/client-info/client-info-table', 'index.php?option=com_content&view=article&id=14', 'component', 1, 103, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(106, 'mainmenu', 'Client Project Proposal''s List', 'client-project-proposal-s-list', '', 'projects-archive/client-project-proposal-s-list', 'index.php?option=com_content&view=article&id=15', 'component', 1, 121, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 84, 87, 0, '*', 0),
(107, 'mainmenu', 'Financials', 'financials', '', 'financials', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 62, 0, '*', 0),
(108, 'mainmenu', 'Payment Records', 'payment-records', '', 'financials/payment-records', 'index.php?option=com_content&view=article&id=2', 'component', 1, 107, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 54, 61, 0, '*', 0),
(109, 'mainmenu', 'Income Statement', 'income-statement', '', 'financials/payment-records/income-statement', 'index.php?option=com_content&view=article&id=11', 'component', 1, 108, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(110, 'mainmenu', 'Contract Fee''s', 'contract-fee-s', '', 'financials/payment-records/contract-fee-s', 'index.php?option=com_content&view=article&id=12', 'component', 1, 108, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(111, 'mainmenu', 'Balance Sheet', 'balance-sheet', '', 'financials/payment-records/balance-sheet', 'index.php?option=com_content&view=article&id=13', 'component', 1, 108, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 60, 0, '*', 0),
(112, 'mainmenu', 'Inventory', 'inventory', '', 'inventory', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 72, 0, '*', 0),
(113, 'mainmenu', 'Equipments', 'equipments', '', 'inventory/equipments', 'index.php?option=com_content&view=article&id=22', 'component', 1, 112, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 64, 71, 0, '*', 0),
(114, 'mainmenu', 'New Equipment', 'new-equipment', '', 'inventory/equipments/new-equipment', 'index.php?option=com_content&view=article&id=6', 'component', 0, 113, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(115, 'mainmenu', 'Available Equipment', 'available-equipment', '', 'inventory/equipments/available-equipment', 'index.php?option=com_content&view=article&id=7', 'component', 0, 113, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 68, 0, '*', 0),
(116, 'mainmenu', 'Equipment Status', 'equipment-status', '', 'inventory/equipments/equipment-status', 'index.php?option=com_content&view=article&id=9', 'component', 0, 113, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(117, 'mainmenu', 'Members', 'members', '', 'members', 'index.php?option=com_content&view=article&id=4', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 73, 80, 0, '*', 0),
(118, 'mainmenu', 'Core Members', 'core-members', '', 'members/core-members', 'index.php?option=com_content&view=article&id=16', 'component', 1, 117, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 74, 75, 0, '*', 0),
(119, 'mainmenu', 'None Core Members', 'none-core-members', '', 'members/none-core-members', 'index.php?option=com_content&view=article&id=17', 'component', 1, 117, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 76, 77, 0, '*', 0),
(120, 'mainmenu', 'Hired Talent/Freelancers', 'hired-talent-freelancers', '', 'members/hired-talent-freelancers', 'index.php?option=com_content&view=article&id=18', 'component', 1, 117, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 78, 79, 0, '*', 0),
(121, 'mainmenu', 'Projects', 'projects-archive', '', 'projects-archive', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 88, 0, '*', 0),
(122, 'mainmenu', 'Proposed Projects', 'proposed-projects', '', 'projects-archive/proposed-projects', 'index.php?option=com_content&view=article&id=19', 'component', 1, 121, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 82, 83, 0, '*', 0),
(123, 'mainmenu', 'Completed Project', 'completed-project', '', 'archives/completed-project', 'index.php?option=com_content&view=article&id=20', 'component', 1, 125, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 8, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 92, 93, 0, '*', 0),
(124, 'main', 'COM_PROFILES', 'com-profiles', '', 'com-profiles', 'index.php?option=com_profiles', 'component', 0, 1, 1, 10008, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_profiles/filemanager/images/icons/folder.png', 0, '', 89, 90, 0, '', 1),
(125, 'mainmenu', 'Archives', 'archives', '', 'archives', 'index.php?option=com_content&view=article&id=21', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 94, 0, '*', 0),
(126, 'main', 'COM_DPCALENDAR', 'com-dpcalendar', '', 'com-dpcalendar', 'index.php?option=com_dpcalendar', 'component', 0, 1, 1, 10015, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 95, 108, 0, '', 1),
(127, 'main', 'COM_DPCALENDAR_SUBMENU_CPANEL', 'com-dpcalendar-submenu-cpanel', '', 'com-dpcalendar/com-dpcalendar-submenu-cpanel', 'index.php?option=com_dpcalendar&view=cpanel', 'component', 0, 126, 2, 10015, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 96, 97, 0, '', 1),
(128, 'main', 'COM_DPCALENDAR_SUBMENU_EVENTS', 'com-dpcalendar-submenu-events', '', 'com-dpcalendar/com-dpcalendar-submenu-events', 'index.php?option=com_dpcalendar&view=events', 'component', 0, 126, 2, 10015, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 98, 99, 0, '', 1),
(129, 'main', 'COM_DPCALENDAR_SUBMENU_CALENDARS', 'com-dpcalendar-submenu-calendars', '', 'com-dpcalendar/com-dpcalendar-submenu-calendars', 'index.php?option=com_categories&extension=com_dpcalendar', 'component', 0, 126, 2, 10015, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 100, 101, 0, '', 1),
(130, 'main', 'COM_DPCALENDAR_SUBMENU_LOCATIONS', 'com-dpcalendar-submenu-locations', '', 'com-dpcalendar/com-dpcalendar-submenu-locations', 'index.php?option=com_dpcalendar&view=locations', 'component', 0, 126, 2, 10015, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 102, 103, 0, '', 1),
(131, 'main', 'COM_DPCALENDAR_SUBMENU_TOOLS', 'com-dpcalendar-submenu-tools', '', 'com-dpcalendar/com-dpcalendar-submenu-tools', 'index.php?option=com_dpcalendar&view=tools', 'component', 0, 126, 2, 10015, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 104, 105, 0, '', 1),
(132, 'main', 'COM_DPCALENDAR_SUBMENU_SUPPORT', 'com-dpcalendar-submenu-support', '', 'com-dpcalendar/com-dpcalendar-submenu-support', 'index.php?option=com_dpcalendar&view=support', 'component', 0, 126, 2, 10015, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 106, 107, 0, '', 1),
(133, 'mainmenu', 'Search', 'search', '', 'search', 'index.php?option=com_finder&view=search&q=&f=', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_date_filters":"","show_advanced":"","expand_advanced":"","show_description":"","description_length":255,"show_url":"","show_pagination_limit":"","show_pagination":"","show_pagination_results":"","allow_empty_query":"0","sort_order":"","sort_direction":"","show_feed":"0","show_feed_text":"0","show_feed_link":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 109, 110, 0, '*', 0),
(134, 'main', 'ElasticSearch', 'elasticsearch', '', 'elasticsearch', 'index.php?option=com_elasticsearch', 'component', 0, 1, 1, 10018, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_elasticsearch/images/small_es.png', 0, '', 111, 112, 0, '', 1),
(135, 'mainmenu', 'January 2014 Projects', 'january-2014-projects', '', 'projects-archive/client-project-proposal-s-list/january-2014-projects', 'index.php?option=com_content&view=article&id=24', 'component', 1, 106, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_menu_types`
--

CREATE TABLE IF NOT EXISTS `na3pc_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `na3pc_menu_types`
--

INSERT INTO `na3pc_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(3, 'menu2', 'Financials', ''),
(4, 'menu1', 'Client', '');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_messages`
--

CREATE TABLE IF NOT EXISTS `na3pc_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `na3pc_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_modules`
--

CREATE TABLE IF NOT EXISTS `na3pc_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `na3pc_modules`
--

INSERT INTO `na3pc_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'top1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"102","logout":"101","greeting":"0","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"Home","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'JB DropDown Menu', '', '', 1, 'banner1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_jbmenu', 2, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(88, 'Za Trigger menu', '', '', 1, 'user3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_za_trigger_menu', 2, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","loadJQuery":"0","bgtrigger":"#000000","fontcolor":"#fff","tag_id":"","class_sfx":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(89, 'Client', '', '', 1, 'top2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 2, 0, '{"menutype":"menu1","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(90, 'SCLogin', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sclogin', 1, 0, '{"theme":"default.css","displayType":"inline","modalButtonStyle":"button","modalCloseButton":"1","socialButtonsLayout":"horizontal","showLoginForm":"1","showForgotUsername":"button_black","showForgotPassword":"button_black","showRegisterLink":"1","showRememberMe":"3","register_type":"joomla","jlogin":"101","usesecure":"0","enableProfilePic":"0","profileWidth":"50","profileHeight":"50","linkProfile":"0","greetingName":"1","showUserMenu":"","userMenuStyle":"0","showLogoutButton":"1","showConnectButton":"1","jlogout":"101","user_intro":"","loadJQuery":"1","showPoweredByLink":"2","moduleclass_sfx":"","cache":"1"}', 0, '*'),
(91, 'JoomBuilder Dropdown Menu FREE', '', '', 1, 'banner1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jb_free_dropdown', 2, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(92, 'Simple File Upload v1.3 (for J1.6)', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_simplefileuploadv1.3', 2, 0, '{"upload_location":".\\/images\\/","upload_maxsize":"100000","upload_capthca":"0","upload_capthcacase":"0","upload_capthcacasemsg":"0","upload_email":"","upload_emailmsg":"0","upload_emailhtml":"1","upload_fileexist":"2","upload_multi":"1","upload_maxmulti":"5","upload_startmulti":"","upload_fileextensions":".gif .jpg .jpeg .png","upload_filetypes":"image\\/gif;image\\/jpeg;image\\/pjpeg;image\\/png;image\\/x-png","upload_blacklist":".php .php3 .php4 .php5 .php6 .phtml .pl .py .jsp .asp .htm .html .shtml .sh .cgi .exe .bat .cmd","upload_doubleext":"1","upload_phpext":"1","upload_gifcomment":"1","upload_usernameddir":"0","upload_usernameddirdefault":"0","upload_userlocation":".\\/users\\/","upload_createdir":"0","upload_unzip":"0","upload_useformsfields":"0","upload_formfields":"Label;Date","upload_formfieldsfile":"","upload_formfieldsdiv":"|","upload_showdircontent":"0","upload_disablegdlib":"0","upload_disablegdthreshold":"0","upload_username":"","upload_password":"","upload_jqueryinclude":"0","upload_jquery":"0","upload_jqueryver":"1.7.2","upload_nohtmlencoding":"0","upload_replacetag":"0","upload_mailfrom":"noreply@simplefileupload.com","upload_redirect":"","upload_stdbrowse":"0","upload_filewidth":"12","upload_capthcaheight":"40","upload_capthcawidth":"120","upload_capthcabg":"120-192","upload_bgcolor":"#e8edf1","upload_popshowpath":"1","upload_popcaptchamsg":"1","upload_popshowbytes":"0","upload_showerrmsg":"1","upload_maximgwidth":"","upload_maximgheight":"","upload_compressimg":"","upload_thumbcreate":"0","upload_thumbsize":"40x40","upload_thumbname":"sfuthumb","sfu_autorefreshsfl":"0","moduleclass_sfx":"","upload_debug":"0"}', 0, '*'),
(93, 'Easy File Uploader', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_easyfileuploader', 2, 0, '{"efu_parent":"tmp","efu_folder":"","efu_maxsize":"1000000","efu_custom":"1","efu_label":"Choose a file to upload:","efu_button":"Upload File","efu_question":"Replace existing files with uploaded files?","efu_yes":"Yes","efu_no":"No","efu_filetypes":"image\\/gif;image\\/jpeg;image\\/pjpeg;image\\/png;application\\/pdf;application\\/msword;application\\/zip;application\\/x-compressed;application\\/x-zip-compressed;multipart\\/x-zip;application\\/excel;application\\/vnd.ms-excel;application\\/x-excel;application\\/x-msexcel","efu_replace":"0","efu_variable":"fileToUpload","efu_multiple":"2","efu_results_bgcolor":"#ddeeff","moduleclass_sfx":"","layout":"_:default","efu_user":"1"}', 0, '*'),
(94, 'DPCalendar Upcoming', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_dpcalendar_upcoming', 1, 1, '', 0, '*'),
(95, 'DPCalendar zCounter', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_dpcalendar_counter', 2, 0, '{"ids":["8"],"filter":"","layout":"_:default","moduleclass_sfx":""}', 0, '*'),
(96, 'DPCalendar Mini', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_dpcalendar_mini', 2, 0, '{"ids":["8"],"compact_events":"2","weekstart":"1","titleformat_month":"M Y","timeformat_month":"g:i a","show_event_as_popup":"2","popup_width":"","popup_height":"500","event_edit_popup":"2","calendar_height":"","event_color":"135CAE","layout":"_:default","moduleclass_sfx":""}', 0, '*'),
(97, 'mod_elasticsearch', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_elasticsearch', 1, 1, '', 0, '*'),
(98, 'TZ Search', '', '', 1, 'extra2', 825, '2014-09-04 05:54:03', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_tz_search', 2, 0, '{"label":"","width":"20","text":"","button":"1","button_pos":"bottom","imagebutton":"0","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"0","searchfor":"0","ordering":"0","searchonly":"0","loadjquery":"0","loadbootstrap":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_modules_menu`
--

CREATE TABLE IF NOT EXISTS `na3pc_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_modules_menu`
--

INSERT INTO `na3pc_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 105),
(93, 106),
(93, 109),
(93, 110),
(93, 111),
(93, 114),
(93, 115),
(93, 116),
(93, 118),
(93, 119),
(93, 120),
(93, 122),
(93, 123),
(94, 0),
(95, 0),
(96, 0),
(98, 0);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `na3pc_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_overrider`
--

CREATE TABLE IF NOT EXISTS `na3pc_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_redirect_links`
--

CREATE TABLE IF NOT EXISTS `na3pc_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `na3pc_redirect_links`
--

INSERT INTO `na3pc_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://localhost/lightswitch/index.php/client/client-info/plugins/content/jsmallfib/media/smallerik/navigationIcons/null.gif', '', 'http://localhost/lightswitch/index.php/client/client-info/client-info-table', '', 1, 0, '2014-09-04 04:52:24', '0000-00-00 00:00:00'),
(2, 'http://localhost/lightswitch/index.php/projects-archive/plugins/content/jsmallfib/media/smallerik/navigationIcons/null.gif', '', 'http://localhost/lightswitch/index.php/projects-archive/client-project-proposal-s-list', '', 6, 0, '2014-09-04 04:59:07', '0000-00-00 00:00:00'),
(3, 'http://localhost/lightswitch/index.php/search?q=takeshi', '', 'http://localhost/lightswitch/index.php/search?q=canon', '', 1, 0, '2014-09-04 05:11:50', '0000-00-00 00:00:00'),
(4, 'http://localhost/lightswitch/index.php/projects-archive/client-project-proposal-s-list/plugins/content/jsmallfib/media/smallerik/navigationIcons/null.gif', '', 'http://localhost/lightswitch/index.php/projects-archive/client-project-proposal-s-list/january-2014-projects', '', 7, 0, '2014-09-04 08:27:42', '0000-00-00 00:00:00'),
(5, 'http://localhost/lightswitch/index.php/financials/payment-records/plugins/content/jsmallfib/media/smallerik/navigationIcons/null.gif', '', 'http://localhost/lightswitch/index.php/financials/payment-records/income-statement', '', 1, 0, '2014-09-05 01:10:58', '0000-00-00 00:00:00'),
(6, 'http://localhost/lightswitch/index.php/archives/plugins/content/jsmallfib/media/smallerik/navigationIcons/null.gif', '', 'http://localhost/lightswitch/index.php/archives/completed-project', '', 1, 0, '2014-09-05 01:39:36', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_schemas`
--

CREATE TABLE IF NOT EXISTS `na3pc_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_schemas`
--

INSERT INTO `na3pc_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.16');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_session`
--

CREATE TABLE IF NOT EXISTS `na3pc_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_session`
--

INSERT INTO `na3pc_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('23a9f1559a2be726ace1fc4a2586039b', 0, 0, '1409881176', '__default|a:8:{s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:31.0) Gecko/20100101 Firefox/31.0";s:15:"session.counter";i:37;s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":1:{s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:1:{i:0;i:15;}s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:3:"825";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:21:"jrcastrodes@gmail.com";s:8:"password";s:65:"f9952f0fed6c7d94e387c5df3aad0ff9:2MCLxnx3cM10jOYIyyDQpOdgillccc7V";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2014-08-21 09:11:02";s:13:"lastvisitDate";s:19:"2014-09-05 01:08:59";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"a563cf97b4f39f7a7156f4e39d4b33fb";s:19:"session.timer.start";i:1409880822;s:18:"session.timer.last";i:1409881173;s:17:"session.timer.now";i:1409881176;}', 825, 'admin', ''),
('b7drfeb6abqftg0i43dfdv45l2', 1, 1, '1409888066', '__default|a:8:{s:15:"session.counter";i:5;s:19:"session.timer.start";i:1409884704;s:18:"session.timer.last";i:1409887226;s:17:"session.timer.now";i:1409888066;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:31.0) Gecko/20100101 Firefox/31.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";N;s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"290aa5e1a1ba3c0a75bd8b26d412103c";}', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_template_styles`
--

CREATE TABLE IF NOT EXISTS `na3pc_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `na3pc_template_styles`
--

INSERT INTO `na3pc_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(7, 'siteground-j16-22', 0, '0', 'siteground-j16-22 - Default', '{"sliding_background":"1"}'),
(8, 'click_new', 0, '1', 'click_new - Default', '{"siteTitle":"","siteSlogan":"","blogLayoutType":"default"}');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_updates`
--

CREATE TABLE IF NOT EXISTS `na3pc_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=81 ;

--
-- Dumping data for table `na3pc_updates`
--

INSERT INTO `na3pc_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(2, 3, 0, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(3, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(4, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(5, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.10.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(6, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.14.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(7, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(8, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(9, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(10, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(11, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(12, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(13, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(14, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.13.11', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(15, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(16, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(17, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(18, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(19, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(20, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.21.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(21, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.21.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(22, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(23, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(24, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(25, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(26, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(27, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(28, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.20.2', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(29, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(30, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(31, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(32, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(33, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(34, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.22.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(35, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(36, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(37, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(38, 3, 0, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/cs-CZ_details.xml', ''),
(39, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(40, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(41, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(42, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(43, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(44, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(45, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(46, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(47, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(48, 3, 0, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(49, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(50, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.21.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(51, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(52, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(53, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.16.1', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(54, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(55, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(56, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(57, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(58, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.20.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(59, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(60, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(61, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.19.1', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(62, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(63, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.9.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(64, 3, 0, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '2.5.0.1', '', 'http://update.joomla.org/language/details/bn-BD_details.xml', ''),
(65, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(66, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.13.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(67, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(68, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(69, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(70, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(71, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(72, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(73, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.23.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(74, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(75, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(76, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.11.1', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(77, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(78, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(79, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(80, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.24.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_update_categories`
--

CREATE TABLE IF NOT EXISTS `na3pc_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_update_sites`
--

CREATE TABLE IF NOT EXISTS `na3pc_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `na3pc_update_sites`
--

INSERT INTO `na3pc_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 1408612295),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1409152995),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 0, 1409172738),
(4, 'JB DropDown Menu Update Site', 'extension', 'http://www.extly.com/download/utilities/jbmenu_version.xml', 0, 1409219180),
(5, 'SCLogin Updates', 'extension', 'http://www.sourcecoast.com/updates/sclogin.xml', 0, 1409219180),
(6, 'SuperTable Free Updates', 'extension', 'http://www.abivia.net/jupdate/supertable-free_j25.xml', 0, 1409219180),
(7, 'DPCalendar Free Update Site', 'extension', 'http://joomla.digital-peak.com/index.php?option=com_ars&view=update&task=stream&format=xml&id=4&ext=extension.xml', 0, 1409818488);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `na3pc_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `na3pc_update_sites_extensions`
--

INSERT INTO `na3pc_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 10000),
(5, 10004),
(6, 10006),
(7, 10016);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_usergroups`
--

CREATE TABLE IF NOT EXISTS `na3pc_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `na3pc_usergroups`
--

INSERT INTO `na3pc_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_users`
--

CREATE TABLE IF NOT EXISTS `na3pc_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=827 ;

--
-- Dumping data for table `na3pc_users`
--

INSERT INTO `na3pc_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(825, 'Super User', 'admin', 'jrcastrodes@gmail.com', 'f9952f0fed6c7d94e387c5df3aad0ff9:2MCLxnx3cM10jOYIyyDQpOdgillccc7V', 'deprecated', 0, 1, '2014-08-21 09:11:02', '2014-09-05 01:33:40', '0', '', '0000-00-00 00:00:00', 0),
(826, 'ivan', 'sugarkid', 'karenlove@sampe.mail', '813f306b528a6234915303788d5ec9be:bbPsrtUUh5GwfnWTLqGL3sVY4ean0p4E', '', 0, 0, '2014-08-28 05:53:19', '2014-08-28 05:59:30', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_user_notes`
--

CREATE TABLE IF NOT EXISTS `na3pc_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_user_profiles`
--

CREATE TABLE IF NOT EXISTS `na3pc_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Dumping data for table `na3pc_user_profiles`
--

INSERT INTO `na3pc_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(826, 'profile.aboutme', '""', 10),
(826, 'profile.address1', '""', 1),
(826, 'profile.address2', '""', 2),
(826, 'profile.city', '""', 3),
(826, 'profile.country', '""', 5),
(826, 'profile.dob', '""', 11),
(826, 'profile.favoritebook', '""', 9),
(826, 'profile.phone', '""', 7),
(826, 'profile.postal_code', '""', 6),
(826, 'profile.region', '""', 4),
(826, 'profile.website', '""', 8);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `na3pc_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `na3pc_user_usergroup_map`
--

INSERT INTO `na3pc_user_usergroup_map` (`user_id`, `group_id`) VALUES
(825, 8),
(826, 1),
(826, 2);

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_viewlevels`
--

CREATE TABLE IF NOT EXISTS `na3pc_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `na3pc_viewlevels`
--

INSERT INTO `na3pc_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `na3pc_weblinks`
--

CREATE TABLE IF NOT EXISTS `na3pc_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
