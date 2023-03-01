-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 01, 2023 at 12:02 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salt_startup`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
CREATE TABLE IF NOT EXISTS `campaigns` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `user_id` int(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `goal_amount` int(30) NOT NULL,
  `current_amount` int(30) NOT NULL,
  `perk` text NOT NULL,
  `backer_count` int(30) NOT NULL,
  `slug` int(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_images`
--

DROP TABLE IF EXISTS `campaign_images`;
CREATE TABLE IF NOT EXISTS `campaign_images` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(30) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `is_primary` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `campaign_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `amount` int(30) NOT NULL,
  `status` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password_hash` varchar(200) NOT NULL,
  `avatar_file_name` varchar(255) NOT NULL,
  `role` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `occupation`, `email`, `password_hash`, `avatar_file_name`, `role`, `created_at`, `update_at`) VALUES
(3, 'Tes nama aja', 'Peogrammer 2023', 'kanezashop77@gmail.com', '$2a$04$DlRWmCei4c/8G6mCiZdWseafKVwneBI1.AiHHvMt9u/GD2sDWUYN.', '', 'user', '2023-01-12 10:24:37', '2023-01-12 00:00:00'),
(4, 'Tes nama aja', 'Peogrammer 2025', 'kanezashop77@gmail.com', '$2a$04$Sj.SVXjT7vySf7YpN/Mg9u8w/r.Vi9vpLkG4SPu0C6FqSuUNVnLOK', '', 'user', '2023-01-12 10:43:01', ''),
(5, 'Tes nama aja', 'Peogrammer 2025', 'kanezashop77@gmail.com', '$2a$04$.OMqCvqezkH83BXQu8/n2.fk2jC01x56PR1KPZgIwLkdoQ4jMbST.', '', 'user', '2023-01-12 10:51:21', '0'),
(6, 'Tes simpan Nama', 'Programmer Zaman Sekarang', 'Contoh Email Adress', '$2a$04$1iAd4q7JabfE31IqNS1PneLp7V3Jo1p0UgOkO6CI/r3phKFmEASgq', '', 'user', '2023-02-07 00:38:26', '0'),
(7, 'Siti Tayamumm', 'Programmer', 'mochfauzi56@gmail.com', '$2a$04$BMBIs8vQSfFSnCQJOsZuwe1lQ8XIn/zxthVovpcpIT2SCcF3trbYe', '', 'user', '2023-02-07 01:49:55', '0'),
(8, 'Tamando Tanjiro', 'Chairman', 'mochfauzi56@gmail.com', '$2a$04$zMKMJlViBnUJfhSADQSzQOQcEOkvPbXazvGSzjbhyPTp751uirlMe', '', 'user', '2023-02-08 11:22:35', '0'),
(9, 'Tamando Tanjiro', 'Chairman', 'mochfauzi56@gmail.com', '$2a$04$volNOu9KeXNf5wUOXdF.m.Izwmi/F40ICX3rlPt6ueUBPwAHrFCJO', '', 'user', '2023-02-08 11:34:31', '0'),
(10, 'muslim', 'Chairman', 'muslim56@gmail.com', '$2a$04$ORhgunxJHyDIVNzWwkiZs.abS5XdTjlUHGxgnURPteQlY70Boghda', '', 'user', '2023-02-08 12:03:05', '0'),
(11, 'Tenten', 'Artis', 'Tenten@gmail.com', '$2a$04$NozOZ1ol1vwu0MyFfnMH1OrhV/S21hnLWM5XWUEQ0e2GPRoKllioe', '', 'user', '2023-02-08 12:11:51', '0000-00-00'),
(12, 'Chairul Chaniago', 'Gojek', 'Chaniago@gmail.com', '$2a$04$Vn6e4T6CWWOWJHLd1vyjZ.Uu6BXyMn5SHZhEPC6SYkD7Q2RSqz2Ia', '', 'user', '2023-02-08 13:55:34', '0000-00-00'),
(13, 'tobi', 'Gojek', 'Chaniago@gmail.com', '$2a$04$Z4YtnmnoKzTDT/XFt7djz.V7VMYn1LP4U2CmU1.VGzGPoxVksaqBi', '', 'user', '2023-02-08 14:36:09', '0000-00-00'),
(14, 'madara1', 'petani', 'mochfauzi56@gmail.com', '$2a$04$AHGplQQN87GUnFF6WtRcZeMXI54Chr8EMaZDoYkGEoitioJ8LcHH.', '', 'user', '2023-03-01 07:00:44', '0000-00-00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
