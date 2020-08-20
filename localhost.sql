-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 17, 2020 at 01:04 PM
-- Server version: 10.3.23-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `root`
--
CREATE DATABASE IF NOT EXISTS `root` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `root`;

-- --------------------------------------------------------

--
-- Table structure for table `animations`
--

CREATE TABLE `animations` (
  `ID` int(11) NOT NULL,
  `ajax_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `published` tinyint(1) DEFAULT 1,
  `media` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `animations`
--

INSERT INTO `animations` (`ID`, `ajax_id`, `title`, `description`, `published`, `media`, `video_url`) VALUES
(579, 1, 'Combat à pied', '<p>Lors de ces combats, l\'objectif est de porter des touches franches sur le heaume de l\'adversaire. Les combattants sont équipés d\'une épée à 2 mains, ou d\'une épée et d\'un écu.</p>\r\n<p>Un arbitre impartial veille au bon déroulement du combat et compte les points.</p>', 1, 'picture', NULL),
(580, 2, 'Combat à la barrière', '<p>Il s\'agit d\'un entrainement qui se pratiquait jusqu\'au XVI&deg; si&egrave;cle. La barri&egrave;re repr&eacute;sente l\'entr&eacute;e d\'une place fortifi&eacute;e. Par &eacute;quipe, les opposants, munis de lances, d\'&eacute;p&eacute;es ou de basts, doivent franchir la barri&egrave;re en se repoussant mutuellement.</p>\r\n<p>L\'&eacute;quipe qui a franchi la barri&egrave;re le plus souvent remporte cette &eacute;preuve.</p>', 1, 'picture', NULL),
(581, 3, 'Joutes courtoises à cheval', '<p>Les cavaliers sont en lice !&nbsp;<br />Avec lances, &eacute;p&eacute;es et &eacute;pieux, ils vont tenter de heurter quintaine, de saisir les anneaux et de transpercer un sanglier en pleine course !</p>\r\n<p>Cette fois encore, les combattants s\'entrainent&nbsp;en mettant leur adresse &agrave; l\'&eacute;preuve.</p>', 1, 'picture', NULL),
(582, 4, 'Vie de camp', '<p>La vie de la Compagnie des Trois Rivi&egrave;res est centr&eacute;e sur son campement. Tentes, auvents et velums sont dress&eacute;s afin d\'abriter nos ateliers, notre cuisine de campagne et notre zone de repos.</p>\r\n<p>Le public est accueilli tout au long de la journ&eacute;e, et des activit&eacute;s permanentes sont propos&eacute;es. La vie quotidienne au moyen-&acirc;ge est pr&eacute;sent&eacute;e, et expliqu&eacute;es lors des &eacute;changes qui se tiennent avec le public.</p>', 1, 'picture', NULL),
(583, 5, 'Danses', '<p>La Compagnie des Trois Rivi&egrave;res, c\'est aussi un groupe de danseurs !&nbsp;<br />Bransle de Cassandre, des ours, des lavandi&egrave;res, des pois, ...&nbsp;<br />Ces danses traditionnelles de la fin de Moyen-&acirc;ge &eacute;taient courantes lors des f&ecirc;tes de village.<br />Le public est invit&eacute; &agrave; se joindre &agrave; nous et &agrave; agrandir la ronde.</p>', 1, 'picture', NULL),
(584, 6, 'Musiques et chants', '<p>Se taper sur le heaume &agrave; grands coups d\'&eacute;p&eacute;es n\'emp&ecirc;che pas d\'&ecirc;tre des <br />artistes !<br /><br /></p>\r\n<p>Fl&ucirc;tiaux, vi&egrave;les et tambourins &eacute;gayent r&eacute;guli&egrave;rment le campement d\'une douce m&eacute;lop&eacute;e.</p>\r\n<p>Le public, conquis, pourra m&ecirc;me profiter de chants m&eacute;di&eacute;vaux.</p>', 1, 'picture', NULL),
(585, 7, 'La cage', '<p>Elle pose le d&eacute;cor &agrave; l\'entr&eacute;e du campement !</p>\r\n<p>Si les h&eacute;r&eacute;tiques et les &eacute;nnemis d\'Etat avaient coutume d\'y s&eacute;journer auparavant, nous ouvrons aujourd\'hui la cage &agrave; toute personne d&eacute;sireuse de profiter, le temps d\'une visite, d\'un superbe \"Open Space\".&nbsp;</p>\r\n<p>Comme nous avons l\'habitude de le dire : l\'essayer, c\'est l\'adopter !</p>', 1, 'picture', NULL),
(586, 8, 'Le jeu du cimier', '<p>Si d\'autres troupes sont pr&eacute;sentes sur le site, la Compagnie des Trois Rivi&egrave;res peut se joindre &agrave; elles et proposer le jeu du cimier.</p>\r\n<p>Le principe est simple : un combattant est coiff&eacute; de son cimier et doit traverser la lice de combat. Son &eacute;quipe doit le prot&eacute;ger, l\'&eacute;quipe adverse l\'en emp&ecirc;cher.</p>\r\n<p>L&agrave; encore, cet entrainement suivi jusqu\'au milieu du XVI&deg; si&egrave;cle assurera un spectacle de choix au public !</p>', 1, 'slider', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `ID` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  `picture_alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`ID`, `title`, `description`, `picture_url`, `picture_alt`) VALUES
(17, '1', '<p><strong>1</strong></p>', 'img/uploads/245-17.jpg', '1'),
(18, '2', '<p>2</p>', 'img/uploads/323-18.jpg', '2'),
(19, '3', '<p>3</p>', 'img/uploads/448-19.jpg', '3'),
(20, '4', '<p>4</p>', 'img/uploads/32-20.jpg', '4'),
(21, '5', '<p>5</p>', 'img/uploads/739-21.jpg', '5'),
(22, '6', '<p>6</p>', 'img/uploads/741-22.jpg', '6');

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manage`
--

INSERT INTO `manage` (`ID`, `name`, `password`, `mail`) VALUES
(109, 'stephane', '$2y$10$w7qip.lnqBHxvU2FbqCBuudhc6MKKr7Fw18dLDWVIcNue.VNPks8i', 'kergoane@gmail.com'),
(125, 'PDP', '$2y$10$U/gDQNVrQL8kZrYcdIFH6./ATtmqZKa/uKt0GV8tRoU0JVdPBRhhS', 'jer.mat@aliceadsl.fr');

-- --------------------------------------------------------

--
-- Table structure for table `pictures_animations`
--

CREATE TABLE `pictures_animations` (
  `ID` int(11) NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures_animations`
--

INSERT INTO `pictures_animations` (`ID`, `src`, `alt`, `item_id`) VALUES
(579, 'img/uploads/434-579.jpg', 'animations', 579),
(580, 'img/uploads/753-580.jpg', 'animations', 580),
(581, 'img/uploads/47-581.jpg', 'animations', 581),
(582, 'img/uploads/38-582.jpg', 'animations', 582),
(583, 'img/uploads/899-583.jpg', 'animations', 583),
(584, 'img/uploads/375-584.jpg', 'animations', 584),
(585, 'img/uploads/327-585.jpg', 'animations', 585),
(586, 'img/uploads/428-586.jpg', 'animations', 586);

-- --------------------------------------------------------

--
-- Table structure for table `pictures_prejudices`
--

CREATE TABLE `pictures_prejudices` (
  `ID` int(11) NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures_prejudices`
--

INSERT INTO `pictures_prejudices` (`ID`, `src`, `alt`, `item_id`) VALUES
(42, 'img/uploads/328-42.jpg', 'prejudices', 42),
(43, 'img/uploads/568-43.jpg', 'prejudices', 43),
(44, 'img/uploads/871-44.jpg', 'prejudices', 44),
(45, 'img/uploads/284-45.jpg', 'prejudices', 45),
(46, 'img/uploads/695-46.jpg', 'prejudices', 46),
(47, 'img/uploads/640-47.jpg', 'prejudices', 47);

-- --------------------------------------------------------

--
-- Table structure for table `pictures_workshops`
--

CREATE TABLE `pictures_workshops` (
  `ID` int(11) NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures_workshops`
--

INSERT INTO `pictures_workshops` (`ID`, `src`, `alt`, `item_id`) VALUES
(86, 'img/uploads/99-86.jpg', 'workshops', 86),
(87, 'img/uploads/219-87.jpg', 'workshops', 87),
(88, 'img/uploads/799-88.jpg', 'workshops', 88),
(89, 'img/uploads/461-89.jpg', 'workshops', 89),
(90, 'img/uploads/476-90.jpg', 'workshops', 90),
(91, 'img/uploads/348-91.jpg', 'workshops', 91);

-- --------------------------------------------------------

--
-- Table structure for table `prejudices`
--

CREATE TABLE `prejudices` (
  `ID` int(11) NOT NULL,
  `ajax_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `media` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prejudices`
--

INSERT INTO `prejudices` (`ID`, `ajax_id`, `title`, `description`, `published`, `media`, `video_url`) VALUES
(42, 1, '1', '<p>1</p>', 1, 'picture', NULL),
(43, 2, '2', '<p>2</p>', 1, 'picture', NULL),
(44, 3, '3', '<p>3</p>', 1, 'picture', NULL),
(45, 4, '4', '<p>4</p>', 1, 'picture', NULL),
(46, 5, '5', '<p>5</p>', 1, 'picture', NULL),
(47, 6, '6', '<p>6</p>', 1, 'picture', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recover`
--

CREATE TABLE `recover` (
  `ID` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT current_timestamp(),
  `date_remove` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider_animations`
--

CREATE TABLE `slider_animations` (
  `ID` int(11) NOT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `nb_picture` int(11) DEFAULT NULL,
  `picture_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_animations`
--

INSERT INTO `slider_animations` (`ID`, `alt`, `src`, `item_id`, `nb_picture`, `picture_name`) VALUES
(5751, NULL, NULL, 579, 1, 'image 1'),
(5752, NULL, NULL, 579, 2, 'image 2'),
(5753, NULL, NULL, 579, 3, 'image 3'),
(5754, NULL, NULL, 579, 4, 'image 4'),
(5755, NULL, NULL, 579, 5, 'image 5'),
(5756, NULL, NULL, 579, 6, 'image 6'),
(5757, NULL, NULL, 579, 7, 'image 7'),
(5758, NULL, NULL, 579, 8, 'image 8'),
(5759, NULL, NULL, 579, 9, 'image 9'),
(5760, NULL, NULL, 579, 10, 'image 10'),
(5761, NULL, NULL, 580, 1, 'image 1'),
(5762, NULL, NULL, 580, 2, 'image 2'),
(5763, NULL, NULL, 580, 3, 'image 3'),
(5764, NULL, NULL, 580, 4, 'image 4'),
(5765, NULL, NULL, 580, 5, 'image 5'),
(5766, NULL, NULL, 580, 6, 'image 6'),
(5767, NULL, NULL, 580, 7, 'image 7'),
(5768, NULL, NULL, 580, 8, 'image 8'),
(5769, NULL, NULL, 580, 9, 'image 9'),
(5770, NULL, NULL, 580, 10, 'image 10'),
(5771, NULL, NULL, 581, 1, 'image 1'),
(5772, NULL, NULL, 581, 2, 'image 2'),
(5773, NULL, NULL, 581, 3, 'image 3'),
(5774, NULL, NULL, 581, 4, 'image 4'),
(5775, NULL, NULL, 581, 5, 'image 5'),
(5776, NULL, NULL, 581, 6, 'image 6'),
(5777, NULL, NULL, 581, 7, 'image 7'),
(5778, NULL, NULL, 581, 8, 'image 8'),
(5779, NULL, NULL, 581, 9, 'image 9'),
(5780, NULL, NULL, 581, 10, 'image 10'),
(5781, NULL, NULL, 582, 1, 'image 1'),
(5782, NULL, NULL, 582, 2, 'image 2'),
(5783, NULL, NULL, 582, 3, 'image 3'),
(5784, NULL, NULL, 582, 4, 'image 4'),
(5785, NULL, NULL, 582, 5, 'image 5'),
(5786, NULL, NULL, 582, 6, 'image 6'),
(5787, NULL, NULL, 582, 7, 'image 7'),
(5788, NULL, NULL, 582, 8, 'image 8'),
(5789, NULL, NULL, 582, 9, 'image 9'),
(5790, NULL, NULL, 582, 10, 'image 10'),
(5791, NULL, NULL, 583, 1, 'image 1'),
(5792, NULL, NULL, 583, 2, 'image 2'),
(5793, NULL, NULL, 583, 3, 'image 3'),
(5794, NULL, NULL, 583, 4, 'image 4'),
(5795, NULL, NULL, 583, 5, 'image 5'),
(5796, NULL, NULL, 583, 6, 'image 6'),
(5797, NULL, NULL, 583, 7, 'image 7'),
(5798, NULL, NULL, 583, 8, 'image 8'),
(5799, NULL, NULL, 583, 9, 'image 9'),
(5800, NULL, NULL, 583, 10, 'image 10'),
(5801, NULL, NULL, 584, 1, 'image 1'),
(5802, NULL, NULL, 584, 2, 'image 2'),
(5803, NULL, NULL, 584, 3, 'image 3'),
(5804, NULL, NULL, 584, 4, 'image 4'),
(5805, NULL, NULL, 584, 5, 'image 5'),
(5806, NULL, NULL, 584, 6, 'image 6'),
(5807, NULL, NULL, 584, 7, 'image 7'),
(5808, NULL, NULL, 584, 8, 'image 8'),
(5809, NULL, NULL, 584, 9, 'image 9'),
(5810, NULL, NULL, 584, 10, 'image 10'),
(5811, NULL, NULL, 585, 1, 'image 1'),
(5812, NULL, NULL, 585, 2, 'image 2'),
(5813, NULL, NULL, 585, 3, 'image 3'),
(5814, NULL, NULL, 585, 4, 'image 4'),
(5815, NULL, NULL, 585, 5, 'image 5'),
(5816, NULL, NULL, 585, 6, 'image 6'),
(5817, NULL, NULL, 585, 7, 'image 7'),
(5818, NULL, NULL, 585, 8, 'image 8'),
(5819, NULL, NULL, 585, 9, 'image 9'),
(5820, NULL, NULL, 585, 10, 'image 10'),
(5821, NULL, 'img/slider/264-586.jpg', 586, 1, 'image 1'),
(5822, NULL, 'img/slider/789-586.jpg', 586, 2, 'image 2'),
(5823, NULL, 'img/slider/303-586.jpg', 586, 3, 'image 3'),
(5824, NULL, NULL, 586, 4, 'image 4'),
(5825, NULL, NULL, 586, 5, 'image 5'),
(5826, NULL, NULL, 586, 6, 'image 6'),
(5827, NULL, NULL, 586, 7, 'image 7'),
(5828, NULL, NULL, 586, 8, 'image 8'),
(5829, NULL, NULL, 586, 9, 'image 9'),
(5830, NULL, NULL, 586, 10, 'image 10');

-- --------------------------------------------------------

--
-- Table structure for table `slider_prejudices`
--

CREATE TABLE `slider_prejudices` (
  `ID` int(11) NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `nb_picture` int(11) DEFAULT NULL,
  `picture_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_prejudices`
--

INSERT INTO `slider_prejudices` (`ID`, `src`, `alt`, `item_id`, `nb_picture`, `picture_name`) VALUES
(411, NULL, NULL, 42, 1, 'image 1'),
(412, NULL, NULL, 42, 2, 'image 2'),
(413, NULL, NULL, 42, 3, 'image 3'),
(414, NULL, NULL, 42, 4, 'image 4'),
(415, NULL, NULL, 42, 5, 'image 5'),
(416, NULL, NULL, 42, 6, 'image 6'),
(417, NULL, NULL, 42, 7, 'image 7'),
(418, NULL, NULL, 42, 8, 'image 8'),
(419, NULL, NULL, 42, 9, 'image 9'),
(420, NULL, NULL, 42, 10, 'image 10'),
(421, NULL, NULL, 43, 1, 'image 1'),
(422, NULL, NULL, 43, 2, 'image 2'),
(423, NULL, NULL, 43, 3, 'image 3'),
(424, NULL, NULL, 43, 4, 'image 4'),
(425, NULL, NULL, 43, 5, 'image 5'),
(426, NULL, NULL, 43, 6, 'image 6'),
(427, NULL, NULL, 43, 7, 'image 7'),
(428, NULL, NULL, 43, 8, 'image 8'),
(429, NULL, NULL, 43, 9, 'image 9'),
(430, NULL, NULL, 43, 10, 'image 10'),
(431, NULL, NULL, 44, 1, 'image 1'),
(432, NULL, NULL, 44, 2, 'image 2'),
(433, NULL, NULL, 44, 3, 'image 3'),
(434, NULL, NULL, 44, 4, 'image 4'),
(435, NULL, NULL, 44, 5, 'image 5'),
(436, NULL, NULL, 44, 6, 'image 6'),
(437, NULL, NULL, 44, 7, 'image 7'),
(438, NULL, NULL, 44, 8, 'image 8'),
(439, NULL, NULL, 44, 9, 'image 9'),
(440, NULL, NULL, 44, 10, 'image 10'),
(441, NULL, NULL, 45, 1, 'image 1'),
(442, NULL, NULL, 45, 2, 'image 2'),
(443, NULL, NULL, 45, 3, 'image 3'),
(444, NULL, NULL, 45, 4, 'image 4'),
(445, NULL, NULL, 45, 5, 'image 5'),
(446, NULL, NULL, 45, 6, 'image 6'),
(447, NULL, NULL, 45, 7, 'image 7'),
(448, NULL, NULL, 45, 8, 'image 8'),
(449, NULL, NULL, 45, 9, 'image 9'),
(450, NULL, NULL, 45, 10, 'image 10'),
(451, NULL, NULL, 46, 1, 'image 1'),
(452, NULL, NULL, 46, 2, 'image 2'),
(453, NULL, NULL, 46, 3, 'image 3'),
(454, NULL, NULL, 46, 4, 'image 4'),
(455, NULL, NULL, 46, 5, 'image 5'),
(456, NULL, NULL, 46, 6, 'image 6'),
(457, NULL, NULL, 46, 7, 'image 7'),
(458, NULL, NULL, 46, 8, 'image 8'),
(459, NULL, NULL, 46, 9, 'image 9'),
(460, NULL, NULL, 46, 10, 'image 10'),
(461, NULL, NULL, 47, 1, 'image 1'),
(462, NULL, NULL, 47, 2, 'image 2'),
(463, NULL, NULL, 47, 3, 'image 3'),
(464, NULL, NULL, 47, 4, 'image 4'),
(465, NULL, NULL, 47, 5, 'image 5'),
(466, NULL, NULL, 47, 6, 'image 6'),
(467, NULL, NULL, 47, 7, 'image 7'),
(468, NULL, NULL, 47, 8, 'image 8'),
(469, NULL, NULL, 47, 9, 'image 9'),
(470, NULL, NULL, 47, 10, 'image 10');

-- --------------------------------------------------------

--
-- Table structure for table `slider_workshops`
--

CREATE TABLE `slider_workshops` (
  `ID` int(11) NOT NULL,
  `src` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `nb_picture` int(11) DEFAULT NULL,
  `picture_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider_workshops`
--

INSERT INTO `slider_workshops` (`ID`, `src`, `alt`, `item_id`, `nb_picture`, `picture_name`) VALUES
(851, NULL, NULL, 86, 1, 'image 1'),
(852, NULL, NULL, 86, 2, 'image 2'),
(853, NULL, NULL, 86, 3, 'image 3'),
(854, NULL, NULL, 86, 4, 'image 4'),
(855, NULL, NULL, 86, 5, 'image 5'),
(856, NULL, NULL, 86, 6, 'image 6'),
(857, NULL, NULL, 86, 7, 'image 7'),
(858, NULL, NULL, 86, 8, 'image 8'),
(859, NULL, NULL, 86, 9, 'image 9'),
(860, NULL, NULL, 86, 10, 'image 10'),
(861, NULL, NULL, 87, 1, 'image 1'),
(862, NULL, NULL, 87, 2, 'image 2'),
(863, NULL, NULL, 87, 3, 'image 3'),
(864, NULL, NULL, 87, 4, 'image 4'),
(865, NULL, NULL, 87, 5, 'image 5'),
(866, NULL, NULL, 87, 6, 'image 6'),
(867, NULL, NULL, 87, 7, 'image 7'),
(868, NULL, NULL, 87, 8, 'image 8'),
(869, NULL, NULL, 87, 9, 'image 9'),
(870, NULL, NULL, 87, 10, 'image 10'),
(871, NULL, NULL, 88, 1, 'image 1'),
(872, NULL, NULL, 88, 2, 'image 2'),
(873, NULL, NULL, 88, 3, 'image 3'),
(874, NULL, NULL, 88, 4, 'image 4'),
(875, NULL, NULL, 88, 5, 'image 5'),
(876, NULL, NULL, 88, 6, 'image 6'),
(877, NULL, NULL, 88, 7, 'image 7'),
(878, NULL, NULL, 88, 8, 'image 8'),
(879, NULL, NULL, 88, 9, 'image 9'),
(880, NULL, NULL, 88, 10, 'image 10'),
(881, NULL, NULL, 89, 1, 'image 1'),
(882, NULL, NULL, 89, 2, 'image 2'),
(883, NULL, NULL, 89, 3, 'image 3'),
(884, NULL, NULL, 89, 4, 'image 4'),
(885, NULL, NULL, 89, 5, 'image 5'),
(886, NULL, NULL, 89, 6, 'image 6'),
(887, NULL, NULL, 89, 7, 'image 7'),
(888, NULL, NULL, 89, 8, 'image 8'),
(889, NULL, NULL, 89, 9, 'image 9'),
(890, NULL, NULL, 89, 10, 'image 10'),
(891, NULL, NULL, 90, 1, 'image 1'),
(892, NULL, NULL, 90, 2, 'image 2'),
(893, NULL, NULL, 90, 3, 'image 3'),
(894, NULL, NULL, 90, 4, 'image 4'),
(895, NULL, NULL, 90, 5, 'image 5'),
(896, NULL, NULL, 90, 6, 'image 6'),
(897, NULL, NULL, 90, 7, 'image 7'),
(898, NULL, NULL, 90, 8, 'image 8'),
(899, NULL, NULL, 90, 9, 'image 9'),
(900, NULL, NULL, 90, 10, 'image 10'),
(901, NULL, NULL, 91, 1, 'image 1'),
(902, NULL, NULL, 91, 2, 'image 2'),
(903, NULL, NULL, 91, 3, 'image 3'),
(904, NULL, NULL, 91, 4, 'image 4'),
(905, NULL, NULL, 91, 5, 'image 5'),
(906, NULL, NULL, 91, 6, 'image 6'),
(907, NULL, NULL, 91, 7, 'image 7'),
(908, NULL, NULL, 91, 8, 'image 8'),
(909, NULL, NULL, 91, 9, 'image 9'),
(910, NULL, NULL, 91, 10, 'image 10');

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `ID` int(11) NOT NULL,
  `ajax_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `published` tinyint(1) DEFAULT 1,
  `media` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`ID`, `ajax_id`, `title`, `description`, `published`, `media`, `video_url`) VALUES
(86, 1, '1', '<p>1</p>', 1, 'picture', NULL),
(87, 2, '2', '<p>2</p>', 1, 'picture', NULL),
(88, 3, '3', '<p>3</p>', 1, 'picture', NULL),
(89, 4, '4', '<p>4</p>', 1, 'picture', NULL),
(90, 5, '5', '<p>5</p>', 1, 'picture', NULL),
(91, 6, '6', '<p>6</p>', 1, 'picture', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animations`
--
ALTER TABLE `animations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pictures_animations`
--
ALTER TABLE `pictures_animations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pictures_prejudices`
--
ALTER TABLE `pictures_prejudices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pictures_workshops`
--
ALTER TABLE `pictures_workshops`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `prejudices`
--
ALTER TABLE `prejudices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `recover`
--
ALTER TABLE `recover`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `slider_animations`
--
ALTER TABLE `slider_animations`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `slider_prejudices`
--
ALTER TABLE `slider_prejudices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `slider_workshops`
--
ALTER TABLE `slider_workshops`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animations`
--
ALTER TABLE `animations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `manage`
--
ALTER TABLE `manage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `pictures_animations`
--
ALTER TABLE `pictures_animations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `pictures_prejudices`
--
ALTER TABLE `pictures_prejudices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `pictures_workshops`
--
ALTER TABLE `pictures_workshops`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `prejudices`
--
ALTER TABLE `prejudices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `recover`
--
ALTER TABLE `recover`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider_animations`
--
ALTER TABLE `slider_animations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5831;

--
-- AUTO_INCREMENT for table `slider_prejudices`
--
ALTER TABLE `slider_prejudices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `slider_workshops`
--
ALTER TABLE `slider_workshops`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=911;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
