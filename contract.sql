-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2015 �?12 �?22 �?17:21
-- 服务器版本: 5.6.11
-- PHP 版本: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `contract`
--
CREATE DATABASE IF NOT EXISTS `contract` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `contract`;

-- --------------------------------------------------------

--
-- 表的结构 `contracts`
--

CREATE TABLE IF NOT EXISTS `contracts` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `phone_number_1` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `groups` varchar(20) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `userauth`
--

CREATE TABLE IF NOT EXISTS `userauth` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `ex_phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
