-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2014 at 09:04 PM
-- Server version: 5.6.17
-- PHP Version: 5.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ajs-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
`id` int(11) NOT NULL,
  `teamID` int(11) NOT NULL,
  `firstName` varchar(256) NOT NULL,
  `lastName` varchar(256) NOT NULL,
  `imageUri` varchar(256) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `teamID`, `firstName`, `lastName`, `imageUri`, `created`) VALUES
(1, 1, 'Joshua', 'Lessard', 'img/players/1-Joshua-Lessard.jpg', '0000-00-00 00:00:00'),
(2, 1, 'Poul', 'Eriksen', 'img/players/1-Poul-Eriksen.jpg', '0000-00-00 00:00:00'),
(3, 2, 'Alex', 'McCauley', 'img/players/2-Alex-McCauley.jpeg', '0000-00-00 00:00:00'),
(4, 2, 'Amir', 'Cherif', 'img/players/2-Amir-Cherif.jpg', '0000-00-00 00:00:00'),
(5, 3, 'Maxime', 'MOREAU', 'img/players/3-Maxime-MOREAU.jpg', '0000-00-00 00:00:00'),
(6, 3, 'Randy', 'Keisler', 'img/players/3-Randy-Keisler.jpg', '0000-00-00 00:00:00'),
(7, 4, 'Mark', 'Zuckerberg', 'img/players/4-Mark-Zuckerberg.jpeg', '0000-00-00 00:00:00'),
(8, 5, 'Firas', 'Kittaneh', 'img/players/5-Firas-Kittaneh.jpg', '0000-00-00 00:00:00'),
(9, 6, 'Joe', 'Hart', 'img/players/6-joe-hart.jpeg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
`id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `logoUri` varchar(256) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `logoUri`, `created`) VALUES
(1, 'Germany', 'img/teams/German.png', '2014-10-01 00:00:00'),
(2, 'Malaysia', 'img/teams/Malaysia.png', '2014-10-01 00:00:00'),
(3, 'Mexico', 'img/teams/Mexican.png', '2014-10-01 00:00:00'),
(4, 'Australia', 'img/teams/Australian.png', '2014-10-01 00:00:00'),
(5, 'Venezuela', 'img/teams/Venezuelan.png', '2014-10-01 00:00:00'),
(6, 'England', 'img/teams/British.png', '2014-10-09 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
