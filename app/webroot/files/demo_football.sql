-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2014 at 06:38 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `demo_football`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL,
  `email` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `role`, `created`, `modified`, `updated_at`, `created_at`, `email`) VALUES
(8, 'wayne', '9b5a91efc94983457ca689a8a701794dcbd8ab82', 'admin', '2014-04-23 01:32:04', '2014-04-23 01:32:04', '0000-00-00', '0000-00-00', ''),
(9, 'zinko', '27e95b27c436025c9542a0d0bdec655d34f2ece9', 'admin', '2014-04-23 01:32:21', '2014-04-23 01:32:21', '0000-00-00', '0000-00-00', ''),
(10, 'thida', 'e58587eb347172b8a0414ee0e41ea51f44d28e61', NULL, '2014-04-24 14:57:48', '2014-04-24 14:57:48', '0000-00-00', '0000-00-00', 'thida@gmail.com'),
(11, 'kothet', '7ae0a6a7f7aeeccee689b04a116e2cc4083e2b51', NULL, '2014-04-25 15:51:04', '2014-04-25 15:51:04', '0000-00-00', '0000-00-00', 'kothet@gmail.com'),
(12, 'wpn', '69b0143769645a3be9cf3ea319f5f08780b09dfe', NULL, '2014-04-26 09:49:53', '2014-04-26 09:49:53', '0000-00-00', '0000-00-00', 'waiphonenaing@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `biography` text,
  `email` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `biography`, `email`) VALUES
(1, 'á€”á€®á€€á€­á€¯á€›á€²', 'á€”á€®á€€á€­á€¯á€›á€²á€žá€Šá€¹ á€á€€á á€žá€­á€¯á€œá€¹á€á€á€¹á€±á€›á€¬á€€á€¹á€…á€¥á€¹á€€á€á€Šá€¹á€¸á€€ á€…á€¬á€±á€•á€™á€ºá€¬á€¸á€€á€­á€¯ á€…á€á€„á€¹á€±á€›á€¸á€žá€¬á€¸á€á€²á€·á¿á€•á€®á€¸á‹ á€žá€°á á€•á€‘á€™á€†á€¶á€¯á€¸á€±á€¡á€¬á€„á€¹á¿á€™á€„á€¹á€±á€€á€ºá€¬á€¹á¾á€€á€¬á€¸á€á€²á€·á€žá€Šá€¹á€· á€á€á±á€³á€™á€½á€¬ ''á‚á€½á€œá€¶á€¯á€¸á€žá€¬á€¸á€‘á€²á€á€¼á€„á€¹ á¾á€€á€¼á€€á€¹á€á€„á€¹á€±á€”á€žá€Šá€¹ " á€†á€­á€¯á€±á€žá€¬ á€Ÿá€¬á€žá€á€á±á€³á¿á€–á€…á€¹á€žá€Šá€¹á‹', 'niko@gmail.com'),
(2, 'á€á€€á á€žá€­á€¯á€œá€¹á€˜á€¯á€”á€¹á€¸á€”á€­á€„á€¹', '<p>á€á€€á á€žá€­á€¯á€œá€¹á€˜á€¯á€”á€¹á€¸á€”á€­á€„á€¹á€žá€Šá€¹ á¿á€™á€”á€¹á€™á€¬á¿á€•á€Šá€¹á á€¡á€‘á€„á€¹á€€á€› á€…á€¬á€±á€›á€¸á€†á€›á€¬á€á€…á€¹á€¥á€®á€¸á¿á€–á€…á€¹á¿á€•á€®á€¸ á‹ á€žá€°á &quot; <strong><em>á€žá€°á€„á€šá€¹á€á€ºá€„á€¹á€¸á€œá€­á€¯á€•á€² á€†á€€á€¹á€±á€ášá€›á€³á€¹á€±á€ášá€™á€Šá€¹ á€á€­á€¯á€„á€¹</em></strong>&quot; á€™á€½á€¬ á€šá€±á€” á€·á€‘á€€á€¹á€á€­á€¯á€„á€¹ á€œá€°á€„á€šá€¹á€™á€ºá€¬á€¸ á€œá€°á¾á€€á€®á€¸á€™á€ºá€¬á€¸ á€…á€¬á€–á€á€¹á€•á€›á€­á€žá€á€¹á€™á€ºá€¬á€¸á á€›á€„á€¹á€‘á€²á€á€¼á€„á€¹ á€…á€²á€¼á€‘á€„á€¹á€€á€ºá€”á€¹á€±á€”á€œá€½á€ºá€€á€¹á€›á€½á€­á€žá€Šá€¹ á‹</p>', ''),
(3, 'á€•á€«á€›á€‚á€°', '<p>á€†á€›á€¬á€•á€«á€›á€‚á€°á€žá€Šá€¹ á€…á€¬á€±á€•á€†á€¯á€™á€ºá€¬á€¸á€…á€¼á€¬ á€€á€­á€¯ á‡á€›á€½á€­á€á€²á€·á€žá€°á¿á€–á€…á€¹á¿á€•á€®á‹ á€˜á€¬á€žá€¬á€±á€›á€¸á€…á€¬á€±á€•á€™á€ºá€¬á€¸ áŠ á€˜á€¬á€žá€¬á¿á€•á€”á€¹á€…á€¬á€¡á€¯á€•á€¹á€±á¿á€™á€¬á€€á€¹á€™á€ºá€¬á€¸á€…á€¼á€¬á€€á€­á€¯ á€±á€›á€¸á€žá€¬á€¸á€á€²á€·á€•á€«á€žá€Šá€¹á‹</p>', ''),
(4, 'á€á€„á€¹á€±á€™á€¬á€„á€¹á€»á€™á€„á€¹á€·', '', ''),
(5, 'á€™á€„á€¹á€¸á€€á€­á€¯á€”á€­á€„á€¹', '<p>á€™á€„á€¹á€¸á€€á€­á€¯á€”á€­á€„á€¹á€žá€Šá€¹ áˆáˆ á€™á€ºá€­á€³á€¸á€†á€€á€¹ á€±á€€á€ºá€¬á€„á€¹á€¸á€žá€¬á€¸ á¿á€–á€…á€¹á¿á€•á€®á€¸ á€”á€­á€„á€¹á€„á€¶á€±á€›á€¸á€œá€¯á€•á€¹á€›á€½á€¬á€¸á€á€á€¹á¾á€€á€¼á€žá€°á€á€…á€¹á€¥á€®á€¸á¿á€–á€…á€¹á€•á€«á€žá€Šá€¹<br />&nbsp;</p>', ''),
(6, 'á¾á€€á€Šá€¹á€™á€„á€¹á€¸', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `description` text,
  `author_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `book_cover` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `author_id`, `price`, `book_cover`) VALUES
(1, 'á€žá€°á€„á€šá€¹á€á€ºá€„á€¹á€¸á€œá€­á€¯á€•á€² á€†á€€á€¹á€±á€ášá€›á€³á€¹á€±á€ášá€™á€Šá€¹ á€á€­á€¯á€„á€¹', '', 2, 15000, 'uploads/images-3.jpg'),
(2, 'á€”á€½á€œá€¶á€¯á€¸á€žá€¬á€¸á€‘á€²á€á€¼á€„á€¹ á¾á€€á€¼á€€á€¹á€á€„á€¹á€±á€”á€žá€Šá€¹', '', 1, 5000, 'uploads/iMac.jpg'),
(3, 'á€á€ºá€…á€¹á€žá€™á€®á€¸á€‘á€¶á€žá€­á€¯.', '', 3, 6000, 'uploads/url.jpg'),
(4, 'á€±á‚á€¼á€€á‚á±á€¬', '', 4, 4500, 'uploads/gty_computer_phone_ll_130204_wg.jpg'),
(5, 'Â á€±á€”á€¬á€€á€¹á¾á€€á€Šá€¹á€·á€™á€½á€”á€¹', '', 5, 9000, 'uploads/computers.jpg'),
(6, 'á€€á€¼á€ºá€”á€¹á€±á€á€¬á€¹á€”á€„á€¹á€·á€á€±á€”á€·á€…á€¬á€¡á€œá€²á€¼á€™á€ºá€¬á€¸', '', 1, 4000, 'uploads/compaq-laptop-computers.jpg'),
(7, 'á€•á€Šá€¬á€á€›á€®á€¸á‚á€½á€„á€¹á€· á€•á€Šá€¬á€™á€ºá€€á€¹á€…á€­ ', '', 6, 5000, 'uploads/images-1.jpg'),
(8, 'sadas', 'dasasddas', 1, 123123, 'uploads/images-2.jpg'),
(9, 'á€¡á€™á€­á€±á¿á€™á€™á€½á€žá€¬á€¸á€±á€€á€¬á€„á€¹á€¸á€™á€ºá€¬á€¸', '', 1, 2000, 'uploads/imgres.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Phone'),
(2, 'Car'),
(3, 'Camera & Accessories'),
(4, 'Pets');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `leagues`
--

CREATE TABLE IF NOT EXISTS `leagues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `leagues`
--

INSERT INTO `leagues` (`id`, `title`, `logo`) VALUES
(1, 'English Premier League', NULL),
(2, 'UEFA Champions League', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE IF NOT EXISTS `matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `play_date` date DEFAULT NULL,
  `play_time` time DEFAULT NULL,
  `pm_am` int(11) DEFAULT NULL,
  `play_field` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `side_a` int(11) DEFAULT NULL,
  `side_b` int(11) DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `content_type` int(11) DEFAULT NULL,
  `league_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created`, `modified`) VALUES
(1, 0, 'The title', 'This is the post body.', '2014-04-23 06:30:12', NULL),
(2, 0, 'A title once again', 'And the post body follows.', '2014-04-23 06:30:12', NULL),
(3, 0, 'Title strikes back', 'This is really exciting! Not.', '2014-04-23 06:30:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE IF NOT EXISTS `publications` (
  `publication_id` int(11) NOT NULL AUTO_INCREMENT,
  `publication_name` varchar(255) NOT NULL,
  PRIMARY KEY (`publication_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`publication_id`, `publication_name`) VALUES
(1, 'Mother House'),
(2, 'Zinyaw Publishing House'),
(3, 'Father Mother Publishing');

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE IF NOT EXISTS `specialization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`id`, `name`) VALUES
(1, 'OG'),
(2, 'Dentist\r\n'),
(3, 'Cardiac'),
(4, 'Kidney\r\n'),
(5, 'Brain');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL,
  `email` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`, `updated_at`, `created_at`, `email`) VALUES
(8, 'wayne', '9b5a91efc94983457ca689a8a701794dcbd8ab82', 'admin', '2014-04-23 01:32:04', '2014-04-23 01:32:04', '0000-00-00', '0000-00-00', ''),
(9, 'zinko', '27e95b27c436025c9542a0d0bdec655d34f2ece9', 'admin', '2014-04-23 01:32:21', '2014-04-23 01:32:21', '0000-00-00', '0000-00-00', ''),
(10, 'thida', 'e58587eb347172b8a0414ee0e41ea51f44d28e61', NULL, '2014-04-24 14:57:48', '2014-04-24 14:57:48', '0000-00-00', '0000-00-00', 'thida@gmail.com'),
(11, 'kothet', '7ae0a6a7f7aeeccee689b04a116e2cc4083e2b51', NULL, '2014-04-25 15:51:04', '2014-04-25 15:51:04', '0000-00-00', '0000-00-00', 'kothet@gmail.com'),
(12, 'wpn', '69b0143769645a3be9cf3ea319f5f08780b09dfe', NULL, '2014-04-26 09:49:53', '2014-04-26 09:49:53', '0000-00-00', '0000-00-00', 'waiphonenaing@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
