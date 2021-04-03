-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2021 at 07:36 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(40, 'Sport', 2),
(37, 'Health', 0),
(38, 'Politics', 2),
(39, 'Entertainment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(38, 'IPL', 'The Indian Premier League is a professional Twenty20 cricket league in India contested during March or April and May of every year by eight teams representing eight different cities or states in India. The league was founded by the Board of Control for Cricket in India in 2008. ', '40', '20 Oct, 2020', 29, '917968-ipl.jpg'),
(39, 'KKR', 'The Kolkata Knight Riders are a franchise cricket team representing the city of Kolkata in the Indian Premier League. The franchise is owned by Bollywood actor Shah Rukh Khan, actress Juhi Chawla and her spouse Jay Mehta. The home of the Knight Riders is the iconic Eden Gardens stadium.', '40', '20 Oct, 2020', 29, '1200px-Kolkata_Knight_Riders_Logo.svg.png'),
(40, 'TMC', '                    All India Trinamool Congress is an Indian national political party mostly active in West Bengal. The party is led by its founder and current chief minister of West Bengal Mamata Banerjee. Following the 2019 general election, it is currently the fifth-largest party in the Lok Sabha with 22 seats.                                                                                ', '38', '20 Oct, 2020', 29, 'tmc.png'),
(44, 'Random', '                                                                                                                        Folly was these three and songs arose whose. Of in vicinity contempt together in possible branched. Assured company hastily looking garrets in oh. Most have love my gone to this so. Discovered interested prosperous the our affronting insipidity day. Missed lovers way one vanity wishes nay but. Use shy seemed within twenty wished old few regret passed. Absolute one hastened mrs any sensible. \r\n\r\nAm terminated it excellence invitation projection as. She graceful shy believed distance use nay. Lively is people so basket ladies window expect. Supply as so period it enough income he genius. Themselves acceptance bed sympathize get dissimilar way admiration son. Design for are edward regret met lovers. This are calm case roof and.                                                                                                 ', '39', '22 Oct, 2020', 30, '1.jpg'),
(43, 'India', 'India, officially the Republic of India, is a country in South Asia. It is the second-most populous country, the seventh-largest country by land area, and the most populous democracy in the world.\r\nPrime Minister : Narendra Modi\r\nRuling Party : Bharatiya Janta Party', '38', '22 Oct, 2020', 29, 'INDIA.jpg'),
(45, 'Science', 'Science is the pursuit and application of knowledge and understanding of the natural and social world following a systematic methodology based on evidence. Scientific methodology includes the following: Objective observation: Measurement and data (possibly although not necessarily using mathematics as a tool) Evidence.', '45', '25 Oct, 2020', 29, 'download.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(24, 'subhra', 'saha', 'subhrasaha', '21232f297a57a5a743894a0e4a801fc3', 1),
(25, 'SUSMITA', 'DAS', 'bobborani', '0a87126d8bcfa2dcb8bc2d75e1d2b62c', 0),
(27, 'debjani', 'saha', 'payel', '202cb962ac59075b964b07152d234b70', 0),
(28, 'subrata kumar', 'saha', 's.k.saha', '202cb962ac59075b964b07152d234b70', 0),
(29, 'Subhratanu', 'Saha', 'subhratanu', '21232f297a57a5a743894a0e4a801fc3', 1),
(30, 'bobbo', 'rani', 'sona', 'd1f46729f4b0b32fde0778ee79c02acc', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
