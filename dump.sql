-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : mysql:3306
-- Généré le :  jeu. 20 fév. 2020 à 20:22
-- Version du serveur :  8.0.18
-- Version de PHP :  7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `app_db`
--
CREATE DATABASE IF NOT EXISTS `app_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `app_db`;

-- --------------------------------------------------------

--
-- Structure de la table `element`
--

CREATE TABLE `element` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `element`
--

INSERT INTO `element` (`id`, `name`, `label`) VALUES
(1, 'Feu', 'Augmente les dégâts infligés.'),
(2, 'Foudre', 'Augmente les chances d\'infliger des coups critiques (x3).'),
(3, 'Eau', 'Augmente les points de vie.'),
(4, 'Terre', 'Augmente la résistance aux dégâts.'),
(5, 'Vent', 'Augmente les chances d\'esquiver les coups.');

-- --------------------------------------------------------

--
-- Structure de la table `hero`
--

CREATE TABLE `hero` (
  `id` int(11) NOT NULL,
  `appearance_id` int(11) NOT NULL,
  `weapon_id` int(11) DEFAULT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gold` int(11) NOT NULL,
  `cristal` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `upgrade_point` int(11) NOT NULL,
  `stats` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `password` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `helmet_id` int(11) DEFAULT NULL,
  `shoulders_id` int(11) DEFAULT NULL,
  `chest_id` int(11) DEFAULT NULL,
  `belt_id` int(11) DEFAULT NULL,
  `hands_id` int(11) DEFAULT NULL,
  `legs_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `hero`
--

INSERT INTO `hero` (`id`, `appearance_id`, `weapon_id`, `name`, `gold`, `cristal`, `level`, `experience`, `upgrade_point`, `stats`, `password`, `is_active`, `helmet_id`, `shoulders_id`, `chest_id`, `belt_id`, `hands_id`, `legs_id`) VALUES
(1, 1, NULL, 'le roux', 0, 0, 1, 0, 0, 'a:5:{i:0;i:4;i:1;i:3;i:2;i:5;i:3;i:3;i:4;i:5;}', '$2y$13$kONOj92PKk/057jlDAc8eOognF1DucgxRX7CurHijBFkRX71yGOCW', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, 'ttez', 0, 0, 1, 0, 0, 'a:5:{i:0;i:4;i:1;i:6;i:2;i:4;i:3;i:5;i:4;i:1;}', '$2y$13$w/l/23Vgo3DyRJRB0oHPEulyJrqMRx4F8bZagRrEAqScmSy9B6K1S', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, NULL, 'qdsq', 0, 0, 1, 0, 0, 'a:5:{i:0;i:5;i:1;i:3;i:2;i:6;i:3;i:4;i:4;i:2;}', '$2y$13$xuFnEfK.iIegrv/o9xmjZ.0eAsUkkwbgxgJ3PwVd3sokLTZyB9aCK', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, NULL, 'qsdaz', 0, 0, 1, 0, 0, 'a:5:{i:0;i:5;i:1;i:4;i:2;i:1;i:3;i:3;i:4;i:7;}', '$2y$13$DbTSMw9a/eHwXqLhO7iHRuRAvelhSMDXwhGkAojiDXaVZpnz.qEGm', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, NULL, 'mlkj', 0, 0, 1, 0, 0, 'a:5:{i:0;i:2;i:1;i:3;i:2;i:3;i:3;i:6;i:4;i:6;}', '$2y$13$vPbFemqXMQsH2l0k2lnEu.D9dh31tsLYMjUd0co/qi98bXnBLSI..', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, NULL, 'qsdqs', 0, 0, 1, 0, 0, 'a:5:{i:0;i:4;i:1;i:3;i:2;i:5;i:3;i:2;i:4;i:6;}', '$2y$13$dG7Io6TzRcz2D43J0J./oOL23A3LrXVb54JdTgzlAFx0hPFgFSgSO', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, NULL, 'qqqq', 0, 0, 1, 0, 0, 'a:5:{i:0;i:4;i:1;i:4;i:2;i:1;i:3;i:8;i:4;i:3;}', '$2y$13$wPfN0icFh3SBFJo5qwiUpufbTAii2ftCShCTr9Z.Mvvigt26qtFCu', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, NULL, 'hhhhg', 26, 0, 1, 72, 0, 'a:5:{i:0;i:7;i:1;i:3;i:2;i:2;i:3;i:5;i:4;i:3;}', '$2y$13$4HyrTDUTRmzcVo3qYKeKxe8yDIgHds0rwSIrLjuFQkhNRhnpHhb4a', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, NULL, 'bill', 0, 0, 1, 0, 0, 'a:5:{i:0;i:4;i:1;i:4;i:2;i:4;i:3;i:3;i:4;i:5;}', '$2y$13$fvDZdVCUK61evh6at6R4A.EISTxZ/pKDa1B2XrfmXZhwSNyqSyfoG', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, NULL, 'fffff', 0, 0, 1, 0, 0, 'a:5:{i:0;i:4;i:1;i:2;i:2;i:6;i:3;i:4;i:4;i:4;}', '$2y$13$DUgsilhD0PV7m62z65sV0.Dj8SxLosaWMDfgRe9hbs7Ei/e1s1.JO', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, NULL, 'azeqqw', 5, 0, 1, 22, 0, 'a:5:{i:0;i:6;i:1;i:7;i:2;i:2;i:3;i:3;i:4;i:2;}', '$2y$13$6TxsINU8v9oUacKWyuYoD.WgsMy0sBiUVcN.YzV1gt7NCm.PV81W2', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, NULL, 'ulsa', 10, 0, 1, 23, 0, 'a:5:{i:0;i:3;i:1;i:3;i:2;i:6;i:3;i:5;i:4;i:3;}', '$2y$13$doJotyEaGycIk7sUuHdESe7lQ2xAR20xowEk/n/o2ajS2AcL2w1TO', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, NULL, 'manu', 138, 0, 1, 443, 0, 'a:5:{i:0;i:3;i:1;i:2;i:2;i:8;i:3;i:4;i:4;i:3;}', '$2y$13$h0L4/byHxR8OtZ6mVUy5FuZIP2oDAPl4uykVD4RJjWJHpllIGNH8q', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, NULL, 'tyuj', 0, 0, 1, 0, 0, 'a:5:{i:0;i:4;i:1;i:3;i:2;i:3;i:3;i:7;i:4;i:3;}', '$2y$13$2Blfxpgx/gO15ImLlYtAGus02/6MyiMlqKBn4GeojbgbdH.PdxFP6', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 17, NULL, 'jjjjh', 17, 0, 1, 48, 0, 'a:5:{i:0;i:6;i:1;i:1;i:2;i:1;i:3;i:6;i:4;i:6;}', '$2y$13$3sZWUvFKvT0lpfOC0b0CBO2/cnB1t8zx5YrrAHs6f13yYosKyDoGG', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 18, NULL, 'bbbg', 6, 0, 1, 22, 0, 'a:5:{i:0;i:3;i:1;i:7;i:2;i:3;i:3;i:2;i:4;i:5;}', '$2y$13$fpUPcSEfFt/51cmaWiIQdeKS1/lsBCnMv70uKy2skV8IEZ/kYihoC', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, NULL, 'bgff', 33, 0, 11, 88, 0, 'a:5:{i:0;i:16;i:1;i:13;i:2;i:12;i:3;i:12;i:4;i:17;}', '$2y$13$muHOz8lAOLhHrMX1.IluNuXWucPx2VeCy20NESuzU/XNXNX9gBbou', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 20, NULL, 'krilin', 5, 0, 1, 25, 0, 'a:5:{i:0;i:8;i:1;i:4;i:2;i:1;i:3;i:5;i:4;i:2;}', '$2y$13$QcQUZ8I7lrd0NmFIyZq3uO1awDsvftemZ8m4xmRrDOQ19Jsn5zpAa', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 21, NULL, 'roukine', 21, 0, 1, 67, 0, 'a:5:{i:0;i:3;i:1;i:6;i:2;i:6;i:3;i:4;i:4;i:1;}', '$2y$13$4e0Q.rbU63FyFKCXe57X/u/./Vwq0RkzhwXyx3eHaIexhpIH8RL86', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 22, NULL, 'rokin', 6, 0, 1, 25, 0, 'a:5:{i:0;i:4;i:1;i:3;i:2;i:3;i:3;i:5;i:4;i:5;}', '$2y$13$RJRsFTpLMhMzq6YEujrGPO3hEWvlTTlHB314mwqjCH7Og/UdXfgXO', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 23, NULL, 'chauve', 0, 0, 1, 0, 0, 'a:5:{i:0;i:4;i:1;i:2;i:2;i:7;i:3;i:2;i:4;i:5;}', '$2y$13$.4VNOi9dElLXtHd9a.EzjeQoyZSbXsh4s0A0OA.CE4N/CUNJKBJr6', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 24, NULL, 'sdkljfdsj', 223, 0, 3, 164, 5, 'a:5:{i:0;i:9;i:1;i:3;i:2;i:2;i:3;i:7;i:4;i:4;}', '$2y$13$D4ENHLxihJLY/BXF2kEQLeE6QodTuLt9VdSgtklWsBnSgY6F0Q13q', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 25, NULL, 'boubou', 256, 0, 5, 94, 20, 'a:5:{i:0;i:10;i:1;i:3;i:2;i:3;i:3;i:6;i:4;i:3;}', '$2y$13$FsMHnTE4ILVts26cpPVtduv/2OCKtR0zEM5uuN4Ermhj2GT470Vt.', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 26, NULL, 'gandalf', 13, 0, 2, 20, 5, 'a:5:{i:0;i:3;i:1;i:6;i:2;i:3;i:3;i:6;i:4;i:2;}', '$2y$13$nGxIt4LAoxoX7adijLOs0uOQHC1DW4h9yGdWyfO/NSB7ybFcl0ZLm', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 27, NULL, 'vcv', 5, 0, 2, 1, 5, 'a:5:{i:0;i:4;i:1;i:3;i:2;i:3;i:3;i:6;i:4;i:4;}', '$2y$13$yF3NUAXNB2UunpSljLVR8OcP8U2cDE3t5XJwuKwTpZHslB2NDfJfu', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 28, NULL, 'vfdc', 0, 0, 1, 0, 0, 'a:5:{i:0;i:3;i:1;i:5;i:2;i:5;i:3;i:1;i:4;i:6;}', '$2y$13$.IJ.IAOpgPlkIVDWgcHnWeVwD8K9fzHzi9rpIGXop6N5wzoB6ugXa', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 29, NULL, 'azs', 36, 0, 3, 67, 10, 'a:5:{i:0;i:4;i:1;i:5;i:2;i:6;i:3;i:4;i:4;i:1;}', '$2y$13$aNSSZqK5.cXDirGg/WyRQ.REI0s.REWHt3X9q1sWNE2TAPy2ooGBa', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 30, NULL, 'roukin', 0, 0, 1, 0, 0, 'a:5:{i:0;i:6;i:1;i:2;i:2;i:6;i:3;i:3;i:4;i:3;}', '$2y$13$FwCd7nJT/gQo9Npb.R077OHCkYo4VKMDl4uGgE.3AptASYr7k6ZyC', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 31, NULL, 'hou', 17, 0, 2, 12, 2, 'a:5:{i:0;i:9;i:1;i:4;i:2;i:2;i:3;i:3;i:4;i:5;}', '$2y$13$PeUwOMIveYYZcQWvRSSEE.bOWfMB64RKKdxRfC7kUJWLtXvVMwSkS', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 32, NULL, 'sqdqq', 39, 0, 3, 20, 1, 'a:5:{i:0;i:14;i:1;i:3;i:2;i:3;i:3;i:5;i:4;i:4;}', '$2y$13$LIFkGqH91SqL4Rea0jU57u1/61adVU3iRGwMx5mitm/kVOX9MgoLa', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 33, NULL, 'eminem', 0, 0, 1, 0, 0, 'a:5:{i:0;i:5;i:1;i:1;i:2;i:3;i:3;i:5;i:4;i:6;}', '$2y$13$XN1IvMOryVGN8UVUa/d2o.DrivV4SEEsDxQLetTq9wCWa8owDBJrC', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 34, NULL, 'echtebese', 0, 0, 1, 0, 0, 'a:5:{i:0;i:5;i:1;i:7;i:2;i:4;i:3;i:1;i:4;i:3;}', '$2y$13$DMQdoDWwqKw/Bbf3plrSg.tx1XxeMVhbHeFLILh.Dq9n9gW8RJTZ.', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 35, NULL, 'moi', 520, 0, 8, 71, 9, 'a:5:{i:0;i:3;i:1;i:2;i:2;i:4;i:3;i:31;i:4;i:6;}', '$2y$13$MRHIkjPllh8ZPySjfTXv2uqySU/VKylIoJQkBg9eCbouKK26kKxvW', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 36, 3, 'frank', 13130, 0, 29, 1386, 0, 'a:5:{i:0;i:11;i:1;i:3;i:2;i:138;i:3;i:5;i:4;i:3;}', '$2y$13$yvwuEM8GI1aFOQ//sbWwCeggpEwKNuB7WctGFpFsdg4JpUle7q9iO', 1, 9, 2, 5, 4, 6, 7),
(37, 37, NULL, 'boussin', 754, 0, 10, 6, 0, 'a:5:{i:0;i:7;i:1;i:4;i:2;i:6;i:3;i:45;i:4;i:3;}', '$2y$13$WeA/FN/hKfY8BwFu2FT5z.01rg4b.PUy3GWBu/vSM170e.0AxYUom', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 38, NULL, 'weasmoche', 28, 0, 3, 20, 0, 'a:5:{i:0;i:2;i:1;i:4;i:2;i:6;i:3;i:15;i:4;i:3;}', '$2y$13$3GEKEJDfO64RnbGCSPyNAudEKJrDYxRwrv3PCdIdKcNQAqaJYdmnq', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 39, NULL, 'erwin', 274, 0, 6, 146, 5, 'a:5:{i:0;i:4;i:1;i:3;i:2;i:3;i:3;i:25;i:4;i:5;}', '$2y$13$xbkIJT..glhwI0nxOxZWH.KqzTsPODDy8xnRzPyHKqYl9M93JcRYu', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 40, NULL, 'ooop', 43, 0, 3, 32, 5, 'a:5:{i:0;i:7;i:1;i:6;i:2;i:2;i:3;i:0;i:4;i:10;}', '$2y$13$lzD6s8RZzGm9TsgvMLIsreEZTb6c3dfqOQv8S4cUVz6GRU7hOO/E6', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 41, NULL, 'louis', 28, 0, 2, 22, 5, 'a:5:{i:0;i:4;i:1;i:0;i:2;i:4;i:3;i:7;i:4;i:5;}', '$2y$13$2EpydTX3LJ9LEmAM3TEWSeJhsiK.DYOUqLbIFbcdjrqQ2pntWFddW', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 42, NULL, 'rez', 0, 0, 1, 0, 0, 'a:5:{i:0;i:3;i:1;i:3;i:2;i:5;i:3;i:4;i:4;i:5;}', '$2y$13$H6tiCNmRLyFcYwS/wDrQfu0cAJObXCkuaAT.ggNnBGh9OHnkCSitS', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 43, NULL, 'noel', 0, 0, 1, 0, 0, 'a:5:{i:0;i:1;i:1;i:3;i:2;i:5;i:3;i:6;i:4;i:5;}', '$2y$13$D7lGaF3OC7Dh.2IiAfVqQOtDNw68mdoQPDH3gTBhG.HWfzIpUNpvm', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 45, NULL, 'eeeeeee', 1421, 0, 12, 388, 0, 'a:5:{i:0;i:5;i:1;i:3;i:2;i:3;i:3;i:59;i:4;i:5;}', '$2y$13$5Jy2/2B11dSM9Ppk.dyMA.k97yQAlDh0iD3ZRpIK1t3bD669upamy', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 46, NULL, 'elfy', 7, 0, 2, 1, 0, 'a:5:{i:0;i:2;i:1;i:3;i:2;i:9;i:3;i:4;i:4;i:7;}', '$2y$13$7b3Miag9altiOaUrB7A1MOASYv7y6FV0gCSQ20pnFvfukhOn5h7GW', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 47, NULL, 'tetd', 0, 0, 1, 0, 0, 'a:5:{i:0;i:6;i:1;i:4;i:2;i:4;i:3;i:2;i:4;i:4;}', '$2y$13$CYbl3IImg89pXwAcPN/rne6ft646FfKk2BmazK6sQ1Be/KXt89X..', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 48, NULL, 'kdue', 54, 0, 3, 40, 5, 'a:5:{i:0;i:7;i:1;i:6;i:2;i:2;i:3;i:4;i:4;i:6;}', '$2y$13$Ivk9ofTmnIviXIeO9mN7S.y12LU39PDhl.FOYzgOMJe4/dYjfsVvi', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 49, NULL, 'jojo', 0, 0, 1, 0, 0, 'a:5:{i:0;i:3;i:1;i:6;i:2;i:6;i:3;i:2;i:4;i:3;}', '$2y$13$P85Mq3JxZBVK8dTqQ/wzD.CC1v3K4oh0Z7zVo1QGNHQyEAd.HGHyC', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 50, NULL, 'dsss', 0, 0, 1, 0, 0, 'a:5:{i:0;i:7;i:1;i:3;i:2;i:5;i:3;i:4;i:4;i:1;}', '$2y$13$YYPrvndp2edhuFMDL08c0eliRbnwa/zC.OlOJvFL5MKwTJk9Z.Yfm', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 51, NULL, 'hfgdfsqsfghjkl', 0, 0, 1, 0, 0, 'a:5:{i:0;i:8;i:1;i:2;i:2;i:6;i:3;i:4;i:4;i:0;}', '$2y$13$BaUPQHRNGly/GWvvpeI1cuBHpHMvYtT16t7UMCASjMNRphtyCvEym', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 52, NULL, 'lego', 0, 0, 1, 0, 0, 'a:5:{i:0;i:4;i:1;i:4;i:2;i:3;i:3;i:4;i:4;i:5;}', '$2y$13$xdOB0KX81Kr1RdbRd3clnurKez8gZMu/p2pzCau2R1fM9FZewsYu.', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 53, NULL, 'elfi', 39, 0, 3, 13, 0, 'a:5:{i:0;i:2;i:1;i:4;i:2;i:8;i:3;i:1;i:4;i:15;}', '$2y$13$OUlaAeawppuOgKxTuHwrwujTu5Qm.tLHKJmb.BWY7SSw2lJOQK3Sy', 1, NULL, NULL, NULL, NULL, 10, 11),
(54, 54, 19, 'maximeges', 378, 0, 7, 62, 5, 'a:5:{i:0;i:22;i:1;i:25;i:2;i:16;i:3;i:7;i:4;i:7;}', '$2y$13$ZOQRbG5G/4I.4C4eURhWketqMg2H/qfpOFKNBy2kf0w7vXubRE7Dq', 1, 14, 16, 13, NULL, 22, NULL),
(55, 55, NULL, 'aline', 41, 0, 3, 14, 5, 'a:5:{i:0;i:4;i:1;i:2;i:2;i:5;i:3;i:9;i:4;i:5;}', '$2y$13$O0blgJx3sVA5Vwv7sGCvzuVxM5O6oGr2Mct1/zH/XWYhtbVwh2Tlu', 1, NULL, 25, 23, NULL, NULL, NULL),
(56, 56, NULL, 'ronchon', 0, 0, 1, 0, 0, 'a:5:{i:0;i:2;i:1;i:6;i:2;i:2;i:3;i:4;i:4;i:6;}', '$2y$13$vK/C/PDAO1ncHwXl0xDeqeVrsCu8.RrOgUqkqXxQdRnNSCxSY6Q7e', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 57, 66, 'avatar', 3888, 0, 16, 453, 5, 'a:5:{i:0;i:74;i:1;i:5;i:2;i:4;i:3;i:5;i:4;i:2;}', '$2y$13$DfMNBTy6jOYrDoT/AxOZGOlXfQzhSedskQzCUSwtBjQ/ubhQ1XPF6', 1, 70, 72, 63, 62, 56, 47),
(58, 58, 35, 'monperso', 89, 0, 4, 25, 5, 'a:5:{i:0;i:12;i:1;i:5;i:2;i:4;i:3;i:4;i:4;i:5;}', '$2y$13$bzMjfba1bSBWK7HptqeNPOx.53kMkfeJZNy3eB5JX2xxFqcy9imWW', 1, NULL, 32, 33, 34, NULL, NULL),
(59, 59, NULL, 'albert kroustil', 0, 0, 1, 0, 0, 'a:5:{i:0;i:5;i:1;i:5;i:2;i:1;i:3;i:6;i:4;i:3;}', '$2y$13$EM/rQfLfkOjlq.orCF9FR.SZOvbhZBsvPaR/s5dak0onCuAH9.7cG', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 61, NULL, 'dgrr', 94, 0, 4, 24, 4, 'a:5:{i:0;i:8;i:1;i:2;i:2;i:4;i:3;i:15;i:4;i:2;}', '$2y$13$PJSxAKwalgmzySALQmCvGumB3mp6SpyRdAXjgwWB2ohw9l9URknFS', 1, NULL, 44, NULL, 42, 45, 41),
(62, 62, 93, 'mmmql', 6415, 0, 21, 950, 0, 'a:5:{i:0;i:2;i:1;i:6;i:2;i:131;i:3;i:3;i:4;i:9;}', '$2y$13$denWOGLgtXFRSU/Hgj/9KelKNmq9HUBTn/OVhY310MoJF2o5vvm2W', 1, 95, 91, 103, 92, 97, 87),
(63, 63, 123, 'legolas', 99, 0, 4, 73, 5, 'a:5:{i:0;i:4;i:1;i:6;i:2;i:5;i:3;i:12;i:4;i:3;}', '$2y$13$uaD6TTxNijyYMvw9J2OjterQHCiTJ5JlCcFNMD0Sq2dvoCh.u1m22', 1, 126, NULL, 128, 124, NULL, NULL),
(64, 64, NULL, 'lassedeg', 0, 0, 1, 0, 0, 'a:5:{i:0;i:1;i:1;i:3;i:2;i:5;i:3;i:4;i:4;i:7;}', '$2y$13$yHVM3PoittAykP9roJQfiOaqWUdZluIjzSl3yoJXcUxNQ8gSLBqKq', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 65, 133, 'ypo', 203, 0, 5, 89, 0, 'a:5:{i:0;i:10;i:1;i:4;i:2;i:18;i:3;i:3;i:4;i:5;}', '$2y$13$P0CGtGRqNQA2Wv6n67w80Of8es4fHClGGTzp.RDz.YJzonmvV3HZq', 1, 136, 135, 134, 137, 138, 139),
(66, 66, 168, 'papi papi', 180, 0, 5, 35, 0, 'a:5:{i:0;i:3;i:1;i:2;i:2;i:11;i:3;i:7;i:4;i:17;}', '$2y$13$1dbOjMXO4b6xh9WRJh5rA.SFySM5kSQSNm0DFzZhmbhcaSWFrNe8.', 1, 162, 163, 164, 165, 166, 167),
(67, 67, NULL, 'bamboula', 0, 0, 1, 0, 0, 'a:5:{i:0;i:6;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}', '$2y$13$V8ks9mV7z.BT3DiLrbmtKOmlcd83bLS7gP947LXnk5lnL8Ucwy/ZW', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 68, 253, 'orcola', 11484, 0, 25, 1682, 0, 'a:5:{i:0;i:4;i:1;i:6;i:2;i:124;i:3;i:3;i:4;i:3;}', '$2y$13$VEC9/ewR1BnEiFSmT8fmlO9Ts.55D20Zwtkf73Sdh81Yr1jhAMHga', 1, 233, 225, 217, 187, 200, 252),
(69, 69, 264, 'bob marley', 711, 0, 9, 73, 10, 'a:5:{i:0;i:1;i:1;i:19;i:2;i:20;i:3;i:6;i:4;i:4;}', '$2y$13$yco..wlLdYaBiGeF9QnjFOLulAJES94lTQ.oWPb2c.R1bCDM6WGS.', 1, 259, 263, 265, 260, 256, 258),
(70, 70, 280, 'assassin', 606, 0, 8, 108, 15, 'a:5:{i:0;i:6;i:1;i:3;i:2;i:17;i:3;i:9;i:4;i:5;}', '$2y$13$pLORxrIV3DEyxsiAbJmS3u43WWa73BDeE/5SsN3d487TG8h5aNbZ2', 1, 274, 275, 276, 277, 278, 279),
(71, 71, 304, 'arcofoule', 45, 0, 3, 13, 10, 'a:5:{i:0;i:1;i:1;i:6;i:2;i:4;i:3;i:4;i:4;i:5;}', '$2y$13$bMsr9HWWq.N4dH8cTD.eQe1qo/wl1AMUR9qmQYX8rW0/d5sbz1e96', 1, 295, 302, 303, 292, 293, 294);

-- --------------------------------------------------------

--
-- Structure de la table `hero_appearance`
--

CREATE TABLE `hero_appearance` (
  `id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `hair` int(11) NOT NULL,
  `hair_color` int(11) NOT NULL,
  `beard` int(11) NOT NULL,
  `eyebrows` int(11) NOT NULL,
  `mouth` int(11) NOT NULL,
  `eyes` int(11) NOT NULL,
  `eyes_color` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `hero_appearance`
--

INSERT INTO `hero_appearance` (`id`, `race_id`, `hair`, `hair_color`, `beard`, `eyebrows`, `mouth`, `eyes`, `eyes_color`) VALUES
(1, 1, 1, 4, 1, 1, 1, 1, 0),
(2, 1, 1, 0, 1, 1, 1, 1, 0),
(3, 1, 1, 0, 1, 1, 1, 1, 0),
(4, 1, 1, 0, 1, 1, 1, 1, 0),
(5, 1, 1, 0, 1, 1, 1, 1, 0),
(6, 1, 1, 0, 1, 1, 1, 1, 0),
(7, 1, 1, 0, 1, 1, 1, 1, 0),
(8, 1, 1, 0, 1, 1, 1, 1, 0),
(9, 1, 1, 0, 1, 1, 1, 1, 0),
(10, 1, 1, 0, 1, 1, 1, 1, 0),
(11, 1, 1, 0, 1, 1, 1, 1, 0),
(12, 5, 1, 0, 1, 1, 1, 1, 0),
(13, 3, 9, 1, 0, 1, 1, 1, 4),
(14, 2, 7, 2, 0, 1, 1, 1, 1),
(17, 5, 5, 2, 0, 1, 1, 1, 0),
(18, 2, 1, 2, 1, 1, 1, 1, 0),
(19, 1, 9, 3, 0, 1, 1, 1, 1),
(20, 3, 0, 2, 0, 1, 1, 1, 0),
(21, 5, 17, 4, 0, 3, 2, 4, 2),
(22, 5, 1, 4, 0, 1, 1, 1, 2),
(23, 5, 0, 0, 1, 1, 1, 1, 0),
(24, 1, 1, 0, 1, 1, 1, 1, 0),
(25, 5, 7, 0, 0, 1, 1, 1, 2),
(26, 1, 11, 3, 1, 1, 1, 1, 2),
(27, 1, 1, 0, 1, 1, 1, 1, 0),
(28, 5, 1, 0, 1, 1, 1, 1, 0),
(29, 5, 1, 0, 1, 1, 1, 1, 0),
(30, 1, 1, 4, 1, 1, 1, 1, 0),
(31, 4, 13, 4, 0, 1, 1, 1, 0),
(32, 5, 1, 4, 1, 1, 1, 2, 2),
(33, 1, 10, 1, 0, 1, 1, 1, 1),
(34, 1, 0, 1, 1, 1, 1, 1, 4),
(35, 1, 1, 0, 1, 1, 1, 1, 0),
(36, 3, 10, 1, 1, 1, 1, 1, 0),
(37, 1, 7, 1, 0, 1, 1, 1, 0),
(38, 1, 1, 4, 0, 1, 1, 2, 1),
(39, 1, 13, 1, 4, 1, 1, 1, 1),
(40, 4, 16, 0, 0, 6, 4, 5, 1),
(41, 1, 1, 0, 1, 2, 1, 1, 0),
(42, 1, 1, 0, 1, 1, 1, 1, 0),
(43, 1, 3, 2, 0, 1, 3, 1, 0),
(45, 1, 1, 0, 1, 1, 1, 1, 0),
(46, 4, 7, 3, 4, 1, 1, 1, 2),
(47, 5, 7, 4, 0, 1, 5, 2, 2),
(48, 5, 5, 4, 4, 1, 1, 1, 0),
(49, 1, 1, 4, 1, 1, 1, 1, 0),
(50, 1, 1, 0, 1, 1, 1, 1, 0),
(51, 1, 1, 0, 1, 1, 1, 1, 0),
(52, 4, 7, 4, 0, 1, 1, 1, 0),
(53, 4, 7, 4, 0, 3, 4, 6, 2),
(54, 2, 3, 2, 0, 1, 6, 1, 1),
(55, 1, 11, 4, 0, 6, 6, 4, 1),
(56, 5, 0, 0, 1, 1, 1, 2, 2),
(57, 5, 0, 0, 0, 1, 1, 1, 0),
(58, 5, 7, 0, 4, 1, 1, 2, 2),
(59, 5, 5, 4, 0, 4, 6, 1, 4),
(61, 1, 3, 0, 1, 1, 3, 4, 0),
(62, 2, 7, 4, 4, 3, 1, 6, 3),
(63, 1, 11, 0, 0, 4, 2, 1, 1),
(64, 3, 18, 1, 5, 2, 3, 2, 3),
(65, 5, 15, 0, 0, 1, 4, 4, 2),
(66, 4, 17, 3, 5, 1, 6, 1, 1),
(67, 2, 6, 2, 4, 3, 1, 1, 2),
(68, 3, 6, 2, 4, 3, 1, 1, 3),
(69, 2, 2, 2, 5, 1, 6, 1, 2),
(70, 1, 9, 4, 1, 1, 1, 1, 3),
(71, 3, 6, 2, 5, 4, 1, 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `monster`
--

CREATE TABLE `monster` (
  `id` int(11) NOT NULL,
  `appearance_id` int(11) NOT NULL,
  `weapon_id` int(11) DEFAULT NULL,
  `stats` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monster`
--

INSERT INTO `monster` (`id`, `appearance_id`, `weapon_id`, `stats`) VALUES
(2, 2, 2, 'a:5:{i:0;i:9;i:1;i:3;i:2;i:7;i:3;i:8;i:4;i:3;}'),
(5, 5, 5, 'a:5:{i:0;i:2;i:1;i:6;i:2;i:5;i:3;i:7;i:4;i:10;}'),
(7, 7, 7, 'a:5:{i:0;i:3;i:1;i:7;i:2;i:4;i:3;i:3;i:4;i:3;}'),
(10, 10, 10, 'a:5:{i:0;i:7;i:1;i:3;i:2;i:2;i:3;i:4;i:4;i:4;}'),
(14, 14, 14, 'a:5:{i:0;i:9;i:1;i:3;i:2;i:3;i:3;i:9;i:4;i:6;}'),
(16, 16, 16, 'a:5:{i:0;i:2;i:1;i:5;i:2;i:2;i:3;i:6;i:4;i:5;}'),
(20, 20, 20, 'a:5:{i:0;i:6;i:1;i:5;i:2;i:3;i:3;i:7;i:4;i:9;}'),
(25, 25, 25, 'a:5:{i:0;i:5;i:1;i:3;i:2;i:4;i:3;i:5;i:4;i:3;}'),
(28, 28, 28, 'a:5:{i:0;i:1;i:1;i:2;i:2;i:4;i:3;i:8;i:4;i:5;}'),
(29, 29, 29, 'a:5:{i:0;i:5;i:1;i:4;i:2;i:5;i:3;i:10;i:4;i:6;}'),
(30, 30, 30, 'a:5:{i:0;i:15;i:1;i:6;i:2;i:5;i:3;i:5;i:4;i:9;}'),
(32, 32, 32, 'a:5:{i:0;i:6;i:1;i:7;i:2;i:2;i:3;i:8;i:4;i:7;}'),
(33, 33, 33, 'a:5:{i:0;i:11;i:1;i:11;i:2;i:3;i:3;i:5;i:4;i:10;}'),
(34, 34, 34, 'a:5:{i:0;i:8;i:1;i:3;i:2;i:2;i:3;i:3;i:4;i:4;}'),
(35, 35, 35, 'a:5:{i:0;i:2;i:1;i:4;i:2;i:7;i:3;i:10;i:4;i:7;}'),
(36, 36, 36, 'a:5:{i:0;i:12;i:1;i:12;i:2;i:4;i:3;i:6;i:4;i:6;}'),
(40, 40, 40, 'a:5:{i:0;i:2;i:1;i:2;i:2;i:5;i:3;i:5;i:4;i:6;}'),
(41, 41, 41, 'a:5:{i:0;i:12;i:1;i:4;i:2;i:7;i:3;i:2;i:4;i:5;}'),
(42, 42, 42, 'a:5:{i:0;i:4;i:1;i:15;i:2;i:4;i:3;i:8;i:4;i:9;}'),
(46, 46, 46, 'a:5:{i:0;i:3;i:1;i:5;i:2;i:3;i:3;i:6;i:4;i:3;}'),
(47, 47, 47, 'a:5:{i:0;i:5;i:1;i:8;i:2;i:3;i:3;i:5;i:4;i:9;}'),
(48, 48, 48, 'a:5:{i:0;i:8;i:1;i:6;i:2;i:11;i:3;i:7;i:4;i:8;}'),
(70, 70, 70, 'a:5:{i:0;i:6;i:1;i:2;i:2;i:3;i:3;i:4;i:4;i:5;}'),
(71, 71, 71, 'a:5:{i:0;i:12;i:1;i:10;i:2;i:1;i:3;i:4;i:4;i:3;}'),
(72, 72, 72, 'a:5:{i:0;i:10;i:1;i:9;i:2;i:11;i:3;i:5;i:4;i:5;}'),
(104, 104, 104, 'a:5:{i:0;i:6;i:1;i:6;i:2;i:5;i:3;i:6;i:4;i:7;}'),
(105, 105, 105, 'a:5:{i:0;i:10;i:1;i:8;i:2;i:8;i:3;i:8;i:4;i:6;}'),
(106, 106, 106, 'a:5:{i:0;i:3;i:1;i:1;i:2;i:4;i:3;i:9;i:4;i:3;}'),
(107, 107, 107, 'a:5:{i:0;i:3;i:1;i:8;i:2;i:6;i:3;i:2;i:4;i:11;}'),
(108, 108, 108, 'a:5:{i:0;i:8;i:1;i:7;i:2;i:8;i:3;i:8;i:4;i:9;}'),
(109, 109, 109, 'a:5:{i:0;i:7;i:1;i:1;i:2;i:4;i:3;i:3;i:4;i:5;}'),
(110, 110, 110, 'a:5:{i:0;i:7;i:1;i:3;i:2;i:6;i:3;i:8;i:4;i:6;}'),
(111, 111, 111, 'a:5:{i:0;i:11;i:1;i:7;i:2;i:3;i:3;i:11;i:4;i:8;}'),
(112, 112, 112, 'a:5:{i:0;i:6;i:1;i:6;i:2;i:4;i:3;i:0;i:4;i:4;}'),
(113, 113, 113, 'a:5:{i:0;i:7;i:1;i:5;i:2;i:4;i:3;i:10;i:4;i:4;}'),
(114, 114, 114, 'a:5:{i:0;i:7;i:1;i:12;i:2;i:4;i:3;i:8;i:4;i:9;}'),
(124, 124, 124, 'a:5:{i:0;i:4;i:1;i:7;i:2;i:5;i:3;i:1;i:4;i:3;}'),
(125, 125, 125, 'a:5:{i:0;i:4;i:1;i:8;i:2;i:4;i:3;i:7;i:4;i:7;}'),
(126, 126, 126, 'a:5:{i:0;i:8;i:1;i:10;i:2;i:9;i:3;i:5;i:4;i:8;}'),
(139, 139, 139, 'a:5:{i:0;i:5;i:1;i:4;i:2;i:3;i:3;i:3;i:4;i:5;}'),
(140, 140, 140, 'a:5:{i:0;i:3;i:1;i:7;i:2;i:10;i:3;i:5;i:4;i:5;}'),
(141, 141, 141, 'a:5:{i:0;i:6;i:1;i:8;i:2;i:10;i:3;i:9;i:4;i:7;}'),
(172, 172, 172, 'a:5:{i:0;i:44;i:1;i:44;i:2;i:42;i:3;i:45;i:4;i:45;}'),
(173, 173, 173, 'a:5:{i:0;i:63;i:1;i:63;i:2;i:60;i:3;i:76;i:4;i:68;}'),
(174, 174, 174, 'a:5:{i:0;i:81;i:1;i:90;i:2;i:84;i:3;i:82;i:4;i:103;}'),
(187, 187, 187, 'a:5:{i:0;i:3;i:1;i:2;i:2;i:5;i:3;i:5;i:4;i:5;}'),
(188, 188, 188, 'a:5:{i:0;i:4;i:1;i:5;i:2;i:7;i:3;i:8;i:4;i:6;}'),
(189, 189, 189, 'a:5:{i:0;i:11;i:1;i:6;i:2;i:9;i:3;i:5;i:4;i:9;}'),
(196, 196, 196, 'a:5:{i:0;i:4;i:1;i:4;i:2;i:6;i:3;i:3;i:4;i:3;}'),
(197, 197, 197, 'a:5:{i:0;i:4;i:1;i:3;i:2;i:11;i:3;i:6;i:4;i:6;}'),
(198, 198, 198, 'a:5:{i:0;i:8;i:1;i:9;i:2;i:7;i:3;i:9;i:4;i:7;}'),
(202, 202, 202, 'a:5:{i:0;i:4;i:1;i:4;i:2;i:2;i:3;i:5;i:4;i:5;}'),
(203, 203, 203, 'a:5:{i:0;i:6;i:1;i:11;i:2;i:3;i:3;i:6;i:4;i:4;}'),
(204, 204, 204, 'a:5:{i:0;i:8;i:1;i:9;i:2;i:9;i:3;i:4;i:4;i:10;}'),
(208, 208, 208, 'a:5:{i:0;i:6;i:1;i:2;i:2;i:4;i:3;i:3;i:4;i:5;}'),
(209, 209, 209, 'a:5:{i:0;i:8;i:1;i:6;i:2;i:4;i:3;i:4;i:4;i:8;}'),
(210, 210, 210, 'a:5:{i:0;i:6;i:1;i:8;i:2;i:7;i:3;i:5;i:4;i:14;}'),
(334, 334, 334, 'a:5:{i:0;i:4;i:1;i:11;i:2;i:9;i:3;i:5;i:4;i:6;}'),
(335, 335, 335, 'a:5:{i:0;i:4;i:1;i:10;i:2;i:7;i:3;i:11;i:4;i:11;}'),
(336, 336, 336, 'a:5:{i:0;i:14;i:1;i:5;i:2;i:11;i:3;i:10;i:4;i:10;}'),
(415, 415, 415, 'a:5:{i:0;i:8;i:1;i:6;i:2;i:8;i:3;i:8;i:4;i:5;}'),
(416, 416, 416, 'a:5:{i:0;i:10;i:1;i:12;i:2;i:10;i:3;i:4;i:4;i:9;}'),
(417, 417, 417, 'a:5:{i:0;i:7;i:1;i:11;i:2;i:11;i:3;i:16;i:4;i:10;}'),
(424, 424, 424, 'a:5:{i:0;i:2;i:1;i:3;i:2;i:2;i:3;i:3;i:4;i:10;}'),
(425, 425, 425, 'a:5:{i:0;i:4;i:1;i:3;i:2;i:9;i:3;i:5;i:4;i:2;}'),
(426, 426, 426, 'a:5:{i:0;i:1;i:1;i:6;i:2;i:6;i:3;i:4;i:4;i:8;}'),
(430, 430, 430, 'a:5:{i:0;i:4;i:1;i:4;i:2;i:2;i:3;i:8;i:4;i:2;}'),
(431, 431, 431, 'a:5:{i:0;i:3;i:1;i:7;i:2;i:6;i:3;i:3;i:4;i:4;}'),
(432, 432, 432, 'a:5:{i:0;i:7;i:1;i:1;i:2;i:6;i:3;i:5;i:4;i:6;}'),
(433, 433, 433, 'a:5:{i:0;i:6;i:1;i:5;i:2;i:2;i:3;i:4;i:4;i:3;}'),
(434, 434, 434, 'a:5:{i:0;i:5;i:1;i:4;i:2;i:4;i:3;i:3;i:4;i:7;}'),
(435, 435, 435, 'a:5:{i:0;i:4;i:1;i:8;i:2;i:5;i:3;i:6;i:4;i:2;}'),
(448, 448, 448, 'a:5:{i:0;i:5;i:1;i:4;i:2;i:9;i:3;i:8;i:4;i:4;}'),
(449, 449, 449, 'a:5:{i:0;i:4;i:1;i:4;i:2;i:7;i:3;i:10;i:4;i:13;}'),
(450, 450, 450, 'a:5:{i:0;i:11;i:1;i:7;i:2;i:12;i:3;i:8;i:4;i:7;}'),
(454, 454, 454, 'a:5:{i:0;i:6;i:1;i:4;i:2;i:2;i:3;i:4;i:4;i:4;}'),
(455, 455, 455, 'a:5:{i:0;i:6;i:1;i:5;i:2;i:6;i:3;i:2;i:4;i:4;}'),
(456, 456, 456, 'a:5:{i:0;i:2;i:1;i:4;i:2;i:9;i:3;i:4;i:4;i:6;}'),
(475, 475, 475, 'a:5:{i:0;i:6;i:1;i:7;i:2;i:6;i:3;i:5;i:4;i:1;}'),
(476, 476, 476, 'a:5:{i:0;i:6;i:1;i:2;i:2;i:8;i:3;i:9;i:4;i:5;}'),
(477, 477, 477, 'a:5:{i:0;i:7;i:1;i:9;i:2;i:6;i:3;i:5;i:4;i:8;}'),
(490, 490, 490, 'a:5:{i:0;i:7;i:1;i:5;i:2;i:7;i:3;i:3;i:4;i:8;}'),
(491, 491, 491, 'a:5:{i:0;i:7;i:1;i:10;i:2;i:8;i:3;i:8;i:4;i:5;}'),
(492, 492, 492, 'a:5:{i:0;i:4;i:1;i:8;i:2;i:7;i:3;i:10;i:4;i:16;}'),
(493, 493, 493, 'a:5:{i:0;i:6;i:1;i:3;i:2;i:2;i:3;i:7;i:4;i:2;}'),
(494, 494, 494, 'a:5:{i:0;i:3;i:1;i:8;i:2;i:4;i:3;i:3;i:4;i:5;}'),
(495, 495, 495, 'a:5:{i:0;i:4;i:1;i:3;i:2;i:4;i:3;i:7;i:4;i:7;}'),
(496, 496, 496, 'a:5:{i:0;i:2;i:1;i:6;i:2;i:2;i:3;i:5;i:4;i:5;}'),
(497, 497, 497, 'a:5:{i:0;i:4;i:1;i:1;i:2;i:5;i:3;i:6;i:4;i:7;}'),
(498, 498, 498, 'a:5:{i:0;i:3;i:1;i:3;i:2;i:6;i:3;i:11;i:4;i:2;}'),
(586, 586, 586, 'a:5:{i:0;i:9;i:1;i:17;i:2;i:12;i:3;i:10;i:4;i:7;}'),
(587, 587, 587, 'a:5:{i:0;i:12;i:1;i:11;i:2;i:15;i:3;i:17;i:4;i:20;}'),
(588, 588, 588, 'a:5:{i:0;i:10;i:1;i:20;i:2;i:24;i:3;i:20;i:4;i:21;}'),
(712, 712, 718, 'a:5:{i:0;i:7;i:1;i:5;i:2;i:9;i:3;i:5;i:4;i:4;}'),
(713, 713, 719, 'a:5:{i:0;i:6;i:1;i:7;i:2;i:7;i:3;i:9;i:4;i:9;}'),
(714, 714, 720, 'a:5:{i:0;i:15;i:1;i:12;i:2;i:4;i:3;i:5;i:4;i:9;}'),
(739, 739, 745, 'a:5:{i:0;i:9;i:1;i:14;i:2;i:10;i:3;i:7;i:4;i:5;}'),
(740, 740, 746, 'a:5:{i:0;i:11;i:1;i:12;i:2;i:13;i:3;i:13;i:4;i:11;}'),
(741, 741, 747, 'a:5:{i:0;i:12;i:1;i:17;i:2;i:11;i:3;i:17;i:4;i:18;}'),
(754, 754, 760, 'a:5:{i:0;i:6;i:1;i:4;i:2;i:7;i:3;i:5;i:4;i:8;}'),
(755, 755, 761, 'a:5:{i:0;i:8;i:1;i:12;i:2;i:7;i:3;i:6;i:4;i:5;}'),
(756, 756, 762, 'a:5:{i:0;i:9;i:1;i:10;i:2;i:7;i:3;i:11;i:4;i:8;}'),
(766, 766, 772, 'a:5:{i:0;i:8;i:1;i:4;i:2;i:5;i:3;i:2;i:4;i:6;}'),
(767, 767, 773, 'a:5:{i:0;i:8;i:1;i:6;i:2;i:5;i:3;i:5;i:4;i:6;}'),
(768, 768, 774, 'a:5:{i:0;i:9;i:1;i:4;i:2;i:7;i:3;i:6;i:4;i:9;}'),
(781, 781, 788, 'a:5:{i:0;i:5;i:1;i:3;i:2;i:2;i:3;i:4;i:4;i:6;}'),
(782, 782, 789, 'a:5:{i:0;i:5;i:1;i:5;i:2;i:4;i:3;i:5;i:4;i:4;}'),
(783, 783, 790, 'a:5:{i:0;i:3;i:1;i:6;i:2;i:7;i:3;i:5;i:4;i:4;}'),
(862, 862, 869, 'a:5:{i:0;i:4;i:1;i:17;i:2;i:14;i:3;i:16;i:4;i:14;}'),
(863, 863, 870, 'a:5:{i:0;i:15;i:1;i:21;i:2;i:13;i:3;i:14;i:4;i:27;}'),
(864, 864, 871, 'a:5:{i:0;i:20;i:1;i:23;i:2;i:16;i:3;i:26;i:4;i:30;}'),
(925, 925, 933, 'a:5:{i:0;i:5;i:1;i:2;i:2;i:4;i:3;i:4;i:4;i:5;}'),
(926, 926, 934, 'a:5:{i:0;i:3;i:1;i:4;i:2;i:6;i:3;i:7;i:4;i:3;}'),
(927, 927, 935, 'a:5:{i:0;i:2;i:1;i:2;i:2;i:5;i:3;i:7;i:4;i:9;}'),
(985, 985, 992, 'a:5:{i:0;i:13;i:1;i:14;i:2;i:18;i:3;i:11;i:4;i:19;}'),
(986, 986, 993, 'a:5:{i:0;i:18;i:1;i:19;i:2;i:21;i:3;i:28;i:4;i:19;}'),
(987, 987, 994, 'a:5:{i:0;i:18;i:1;i:36;i:2;i:34;i:3;i:29;i:4;i:18;}'),
(1006, 1006, 1013, 'a:5:{i:0;i:5;i:1;i:3;i:2;i:3;i:3;i:10;i:4;i:4;}'),
(1007, 1007, 1014, 'a:5:{i:0;i:5;i:1;i:5;i:2;i:6;i:3;i:4;i:4;i:10;}'),
(1008, 1008, 1015, 'a:5:{i:0;i:5;i:1;i:5;i:2;i:11;i:3;i:8;i:4;i:6;}'),
(1009, 1009, 1016, 'a:5:{i:0;i:3;i:1;i:5;i:2;i:4;i:3;i:4;i:4;i:4;}'),
(1010, 1010, 1017, 'a:5:{i:0;i:1;i:1;i:2;i:2;i:6;i:3;i:7;i:4;i:7;}'),
(1011, 1011, 1018, 'a:5:{i:0;i:5;i:1;i:6;i:2;i:3;i:3;i:5;i:4;i:6;}'),
(1024, 1024, 1031, 'a:5:{i:0;i:5;i:1;i:6;i:2;i:3;i:3;i:8;i:4;i:8;}'),
(1025, 1025, 1032, 'a:5:{i:0;i:5;i:1;i:7;i:2;i:7;i:3;i:14;i:4;i:5;}'),
(1026, 1026, 1033, 'a:5:{i:0;i:8;i:1;i:10;i:2;i:5;i:3;i:10;i:4;i:12;}'),
(1036, 1036, 1043, 'a:5:{i:0;i:5;i:1;i:4;i:2;i:2;i:3;i:5;i:4;i:4;}'),
(1045, 1045, 1052, 'a:5:{i:0;i:5;i:1;i:5;i:2;i:3;i:3;i:4;i:4;i:3;}'),
(1046, 1046, 1053, 'a:5:{i:0;i:6;i:1;i:6;i:2;i:6;i:3;i:5;i:4;i:0;}'),
(1047, 1047, 1054, 'a:5:{i:0;i:6;i:1;i:0;i:2;i:8;i:3;i:7;i:4;i:4;}'),
(1061, 1061, 1068, 'a:5:{i:0;i:38;i:1;i:46;i:2;i:36;i:3;i:47;i:4;i:58;}'),
(1062, 1062, 1069, 'a:5:{i:0;i:63;i:1;i:72;i:2;i:55;i:3;i:54;i:4;i:51;}'),
(1063, 1063, 1070, 'a:5:{i:0;i:5;i:1;i:5;i:2;i:4;i:3;i:4;i:4;i:2;}'),
(1078, 1078, 1085, 'a:5:{i:0;i:40;i:1;i:40;i:2;i:33;i:3;i:21;i:4;i:26;}'),
(1079, 1079, 1086, 'a:5:{i:0;i:42;i:1;i:48;i:2;i:42;i:3;i:44;i:4;i:57;}'),
(1080, 1080, 1087, 'a:5:{i:0;i:56;i:1;i:51;i:2;i:70;i:3;i:70;i:4;i:58;}'),
(1081, 1081, 1088, 'a:5:{i:0;i:7;i:1;i:4;i:2;i:5;i:3;i:1;i:4;i:3;}'),
(1082, 1082, 1089, 'a:5:{i:0;i:6;i:1;i:4;i:2;i:5;i:3;i:5;i:4;i:3;}'),
(1083, 1083, 1090, 'a:5:{i:0;i:6;i:1;i:7;i:2;i:1;i:3;i:6;i:4;i:5;}'),
(1108, 1108, 1115, 'a:5:{i:0;i:6;i:1;i:10;i:2;i:2;i:3;i:8;i:4;i:4;}'),
(1109, 1109, 1116, 'a:5:{i:0;i:7;i:1;i:8;i:2;i:9;i:3;i:6;i:4;i:8;}'),
(1110, 1110, 1117, 'a:5:{i:0;i:7;i:1;i:10;i:2;i:10;i:3;i:7;i:4;i:11;}'),
(1147, 1147, 1154, 'a:5:{i:0;i:11;i:1;i:7;i:2;i:15;i:3;i:14;i:4;i:3;}'),
(1148, 1148, 1155, 'a:5:{i:0;i:11;i:1;i:14;i:2;i:19;i:3;i:14;i:4;i:10;}'),
(1149, 1149, 1156, 'a:5:{i:0;i:15;i:1;i:16;i:2;i:18;i:3;i:10;i:4;i:26;}'),
(1174, 1174, 1181, 'a:5:{i:0;i:3;i:1;i:9;i:2;i:7;i:3;i:6;i:4;i:5;}'),
(1175, 1175, 1182, 'a:5:{i:0;i:4;i:1;i:13;i:2;i:9;i:3;i:6;i:4;i:6;}'),
(1176, 1176, 1183, 'a:5:{i:0;i:4;i:1;i:8;i:2;i:15;i:3;i:8;i:4;i:10;}'),
(1186, 1186, 1193, 'a:5:{i:0;i:7;i:1;i:3;i:2;i:3;i:3;i:3;i:4;i:4;}'),
(1187, 1187, 1194, 'a:5:{i:0;i:8;i:1;i:2;i:2;i:6;i:3;i:6;i:4;i:1;}'),
(1188, 1188, 1195, 'a:5:{i:0;i:3;i:1;i:8;i:2;i:5;i:3;i:5;i:4;i:4;}'),
(1234, 1234, 1241, 'a:5:{i:0;i:9;i:1;i:7;i:2;i:7;i:3;i:6;i:4;i:6;}'),
(1235, 1235, 1242, 'a:5:{i:0;i:5;i:1;i:9;i:2;i:7;i:3;i:9;i:4;i:15;}'),
(1236, 1236, 1243, 'a:5:{i:0;i:12;i:1;i:9;i:2;i:15;i:3;i:7;i:4;i:12;}'),
(1252, 1252, 1260, 'a:5:{i:0;i:5;i:1;i:3;i:2;i:5;i:3;i:3;i:4;i:4;}'),
(1253, 1254, 1262, 'a:5:{i:0;i:6;i:1;i:1;i:2;i:6;i:3;i:5;i:4;i:5;}'),
(1254, 1255, 1264, 'a:5:{i:0;i:5;i:1;i:7;i:2;i:8;i:3;i:1;i:4;i:4;}'),
(1273, 1273, 1280, 'a:5:{i:0;i:7;i:1;i:7;i:2;i:6;i:3;i:9;i:4;i:6;}'),
(1274, 1274, 1281, 'a:5:{i:0;i:7;i:1;i:9;i:2;i:6;i:3;i:12;i:4;i:11;}'),
(1275, 1275, 1282, 'a:5:{i:0;i:8;i:1;i:16;i:2;i:10;i:3;i:10;i:4;i:11;}'),
(1375, 1375, 1382, 'a:5:{i:0;i:23;i:1;i:20;i:2;i:16;i:3;i:12;i:4;i:24;}'),
(1376, 1376, 1383, 'a:5:{i:0;i:14;i:1;i:31;i:2;i:22;i:3;i:38;i:4;i:30;}'),
(1377, 1377, 1384, 'a:5:{i:0;i:43;i:1;i:41;i:2;i:36;i:3;i:26;i:4;i:29;}'),
(1549, 1549, 1556, 'a:5:{i:0;i:4;i:1;i:4;i:2;i:4;i:3;i:5;i:4;i:3;}'),
(1550, 1550, 1557, 'a:5:{i:0;i:5;i:1;i:9;i:2;i:3;i:3;i:2;i:4;i:4;}'),
(1551, 1551, 1558, 'a:5:{i:0;i:5;i:1;i:6;i:2;i:5;i:3;i:4;i:4;i:5;}'),
(1576, 1576, 1583, 'a:5:{i:0;i:4;i:1;i:7;i:2;i:6;i:3;i:9;i:4;i:9;}'),
(1577, 1577, 1584, 'a:5:{i:0;i:9;i:1;i:8;i:2;i:11;i:3;i:9;i:4;i:8;}'),
(1578, 1578, 1585, 'a:5:{i:0;i:15;i:1;i:8;i:2;i:12;i:3;i:13;i:4;i:7;}'),
(1594, 1594, 1601, 'a:5:{i:0;i:26;i:1;i:19;i:2;i:30;i:3;i:19;i:4;i:26;}'),
(1595, 1595, 1602, 'a:5:{i:0;i:33;i:1;i:36;i:2;i:31;i:3;i:40;i:4;i:33;}'),
(1596, 1596, 1603, 'a:5:{i:0;i:33;i:1;i:54;i:2;i:50;i:3;i:42;i:4;i:46;}'),
(1639, 1639, 1646, 'a:5:{i:0;i:5;i:1;i:10;i:2;i:9;i:3;i:11;i:4;i:5;}'),
(1640, 1640, 1647, 'a:5:{i:0;i:14;i:1;i:10;i:2;i:9;i:3;i:12;i:4;i:8;}'),
(1641, 1641, 1648, 'a:5:{i:0;i:14;i:1;i:8;i:2;i:9;i:3;i:18;i:4;i:16;}'),
(1675, 1675, 1682, 'a:5:{i:0;i:10;i:1;i:8;i:2;i:8;i:3;i:8;i:4;i:6;}'),
(1676, 1676, 1683, 'a:5:{i:0;i:12;i:1;i:9;i:2;i:9;i:3;i:12;i:4;i:11;}'),
(1677, 1677, 1684, 'a:5:{i:0;i:8;i:1;i:20;i:2;i:10;i:3;i:9;i:4;i:18;}'),
(1678, 1678, 1685, 'a:5:{i:0;i:3;i:1;i:4;i:2;i:3;i:3;i:3;i:4;i:7;}'),
(1930, 1930, 1937, 'a:5:{i:0;i:33;i:1;i:29;i:2;i:26;i:3;i:28;i:4;i:24;}'),
(1931, 1931, 1938, 'a:5:{i:0;i:44;i:1;i:31;i:2;i:43;i:3;i:46;i:4;i:39;}'),
(1932, 1932, 1939, 'a:5:{i:0;i:48;i:1;i:49;i:2;i:56;i:3;i:58;i:4;i:54;}'),
(1993, 1993, 2000, 'a:5:{i:0;i:11;i:1;i:10;i:2;i:10;i:3;i:16;i:4;i:13;}'),
(1994, 1994, 2001, 'a:5:{i:0;i:10;i:1;i:13;i:2;i:24;i:3;i:19;i:4;i:17;}'),
(1995, 1995, 2002, 'a:5:{i:0;i:19;i:1;i:20;i:2;i:23;i:3;i:23;i:4;i:20;}'),
(2035, 2035, 2042, 'a:5:{i:0;i:15;i:1;i:7;i:2;i:9;i:3;i:20;i:4;i:4;}'),
(2036, 2036, 2043, 'a:5:{i:0;i:18;i:1;i:13;i:2;i:7;i:3;i:19;i:4;i:18;}'),
(2037, 2037, 2044, 'a:5:{i:0;i:21;i:1;i:15;i:2;i:21;i:3;i:22;i:4;i:16;}'),
(2053, 2053, 2060, 'a:5:{i:0;i:5;i:1;i:6;i:2;i:5;i:3;i:6;i:4;i:8;}'),
(2054, 2054, 2061, 'a:5:{i:0;i:9;i:1;i:9;i:2;i:9;i:3;i:3;i:4;i:8;}'),
(2055, 2055, 2062, 'a:5:{i:0;i:12;i:1;i:9;i:2;i:7;i:3;i:11;i:4;i:6;}');

-- --------------------------------------------------------

--
-- Structure de la table `monster_appearance`
--

CREATE TABLE `monster_appearance` (
  `id` int(11) NOT NULL,
  `race` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` int(11) NOT NULL,
  `ears` int(11) NOT NULL,
  `eyes` int(11) NOT NULL,
  `head` int(11) NOT NULL,
  `mouth` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `monster_appearance`
--

INSERT INTO `monster_appearance` (`id`, `race`, `body`, `ears`, `eyes`, `head`, `mouth`) VALUES
(2, '', 0, 0, 0, 0, 0),
(5, '', 0, 0, 0, 0, 0),
(7, '', 0, 0, 0, 0, 0),
(10, '', 0, 0, 0, 0, 0),
(14, '', 0, 0, 0, 0, 0),
(16, '', 0, 0, 0, 0, 0),
(20, '', 0, 0, 0, 0, 0),
(25, '', 0, 0, 0, 0, 0),
(28, '', 0, 0, 0, 0, 0),
(29, '', 0, 0, 0, 0, 0),
(30, '', 0, 0, 0, 0, 0),
(32, '', 0, 0, 0, 0, 0),
(33, '', 0, 0, 0, 0, 0),
(34, '', 0, 0, 0, 0, 0),
(35, '', 0, 0, 0, 0, 0),
(36, '', 0, 0, 0, 0, 0),
(40, '', 0, 0, 0, 0, 0),
(41, '', 0, 0, 0, 0, 0),
(42, '', 0, 0, 0, 0, 0),
(46, '', 0, 0, 0, 0, 0),
(47, '', 0, 0, 0, 0, 0),
(48, '', 0, 0, 0, 0, 0),
(70, '', 0, 0, 0, 0, 0),
(71, '', 0, 0, 0, 0, 0),
(72, '', 0, 0, 0, 0, 0),
(104, '', 0, 0, 0, 0, 0),
(105, '', 0, 0, 0, 0, 0),
(106, '', 0, 0, 0, 0, 0),
(107, '', 0, 0, 0, 0, 0),
(108, '', 0, 0, 0, 0, 0),
(109, '', 0, 0, 0, 0, 0),
(110, '', 0, 0, 0, 0, 0),
(111, '', 0, 0, 0, 0, 0),
(112, '', 0, 0, 0, 0, 0),
(113, '', 0, 0, 0, 0, 0),
(114, '', 0, 0, 0, 0, 0),
(124, '', 0, 0, 0, 0, 0),
(125, '', 0, 0, 0, 0, 0),
(126, '', 0, 0, 0, 0, 0),
(139, '', 0, 0, 0, 0, 0),
(140, '', 0, 0, 0, 0, 0),
(141, '', 0, 0, 0, 0, 0),
(172, '', 0, 0, 0, 0, 0),
(173, '', 0, 0, 0, 0, 0),
(174, '', 0, 0, 0, 0, 0),
(187, '', 0, 0, 0, 0, 0),
(188, '', 0, 0, 0, 0, 0),
(189, '', 0, 0, 0, 0, 0),
(196, '', 0, 0, 0, 0, 0),
(197, '', 0, 0, 0, 0, 0),
(198, '', 0, 0, 0, 0, 0),
(202, '', 0, 0, 0, 0, 0),
(203, '', 0, 0, 0, 0, 0),
(204, '', 0, 0, 0, 0, 0),
(208, '', 0, 0, 0, 0, 0),
(209, '', 0, 0, 0, 0, 0),
(210, '', 0, 0, 0, 0, 0),
(334, '', 0, 0, 0, 0, 0),
(335, '', 0, 0, 0, 0, 0),
(336, '', 0, 0, 0, 0, 0),
(415, '', 0, 0, 0, 0, 0),
(416, '', 0, 0, 0, 0, 0),
(417, '', 0, 0, 0, 0, 0),
(424, '', 0, 0, 0, 0, 0),
(425, '', 0, 0, 0, 0, 0),
(426, '', 0, 0, 0, 0, 0),
(430, '', 0, 0, 0, 0, 0),
(431, '', 0, 0, 0, 0, 0),
(432, '', 0, 0, 0, 0, 0),
(433, '', 0, 0, 0, 0, 0),
(434, '', 0, 0, 0, 0, 0),
(435, '', 0, 0, 0, 0, 0),
(448, '', 0, 0, 0, 0, 0),
(449, '', 0, 0, 0, 0, 0),
(450, '', 0, 0, 0, 0, 0),
(454, '', 0, 0, 0, 0, 0),
(455, '', 0, 0, 0, 0, 0),
(456, '', 0, 0, 0, 0, 0),
(475, '', 0, 0, 0, 0, 0),
(476, '', 0, 0, 0, 0, 0),
(477, '', 0, 0, 0, 0, 0),
(490, '', 0, 0, 0, 0, 0),
(491, '', 0, 0, 0, 0, 0),
(492, '', 0, 0, 0, 0, 0),
(493, '', 0, 0, 0, 0, 0),
(494, '', 0, 0, 0, 0, 0),
(495, '', 0, 0, 0, 0, 0),
(496, '', 0, 0, 0, 0, 0),
(497, '', 0, 0, 0, 0, 0),
(498, '', 0, 0, 0, 0, 0),
(586, '', 0, 0, 0, 0, 0),
(587, '', 0, 0, 0, 0, 0),
(588, '', 0, 0, 0, 0, 0),
(712, 'Demon', 1, 1, 2, 1, 2),
(713, 'Mummies', 3, 3, 0, 3, 3),
(714, 'Skeletons', 0, 0, 2, 0, 2),
(739, 'Zombies', 0, 0, 2, 0, 1),
(740, 'Skeletons', 1, 1, 2, 1, 0),
(741, 'Skeletons', 3, 3, 0, 3, 3),
(754, 'Demon', 3, 3, 3, 3, 2),
(755, 'Mummies', 0, 0, 3, 0, 2),
(756, 'Mummies', 1, 1, 1, 1, 1),
(766, 'Furry', 1, 1, 0, 1, 2),
(767, 'Skeletons', 0, 0, 2, 0, 1),
(768, 'Demon', 1, 1, 2, 1, 1),
(781, 'Demon', 1, 1, 1, 1, 3),
(782, 'Demon', 0, 0, 3, 0, 3),
(783, 'Mummies', 2, 2, 3, 2, 1),
(862, 'Skeletons', 1, 1, 3, 1, 2),
(863, 'Zombies', 2, 2, 1, 2, 1),
(864, 'Skeletons', 2, 2, 2, 2, 0),
(925, 'Skeletons', 1, 1, 0, 1, 1),
(926, 'Mummies', 1, 1, 0, 1, 3),
(927, 'Mummies', 1, 1, 1, 1, 3),
(985, 'Mummies', 3, 3, 1, 3, 0),
(986, 'Skeletons', 1, 1, 3, 1, 1),
(987, 'Furry', 2, 2, 0, 2, 0),
(1006, 'Furry', 0, 0, 0, 0, 3),
(1007, 'Furry', 0, 0, 2, 0, 3),
(1008, 'Mummies', 2, 2, 3, 2, 1),
(1009, 'Skeletons', 2, 2, 0, 2, 3),
(1010, 'Demon', 0, 0, 3, 0, 3),
(1011, 'Furry', 0, 0, 3, 0, 3),
(1024, 'Zombies', 0, 0, 3, 0, 0),
(1025, 'Furry', 3, 3, 2, 3, 1),
(1026, 'Zombies', 2, 2, 0, 2, 2),
(1036, 'Skeletons', 2, 2, 3, 2, 1),
(1045, 'Mummies', 0, 0, 0, 0, 3),
(1046, 'Mummies', 0, 0, 3, 0, 0),
(1047, 'Zombies', 3, 3, 3, 3, 1),
(1061, 'Skeletons', 2, 2, 0, 2, 1),
(1062, 'Skeletons', 2, 2, 0, 2, 1),
(1063, 'Demon', 3, 3, 3, 3, 2),
(1078, 'Furry', 0, 0, 2, 0, 2),
(1079, 'Demon', 2, 2, 1, 2, 3),
(1080, 'Mummies', 2, 2, 1, 2, 1),
(1081, 'Zombies', 3, 3, 0, 3, 1),
(1082, 'Mummies', 0, 0, 3, 0, 1),
(1083, 'Demon', 2, 2, 2, 2, 3),
(1108, 'Demon', 3, 3, 2, 3, 0),
(1109, 'Zombies', 3, 3, 2, 3, 3),
(1110, 'Skeletons', 2, 2, 3, 2, 2),
(1147, 'Zombies', 2, 2, 2, 2, 3),
(1148, 'Zombies', 3, 3, 2, 3, 3),
(1149, 'Furry', 0, 0, 1, 0, 3),
(1174, 'Demon', 2, 2, 3, 2, 1),
(1175, 'Demon', 0, 0, 2, 0, 0),
(1176, 'Skeletons', 3, 3, 2, 3, 3),
(1186, 'Demon', 1, 1, 1, 1, 2),
(1187, 'Furry', 2, 2, 1, 2, 3),
(1188, 'Skeletons', 2, 2, 2, 2, 2),
(1234, 'Mummies', 1, 1, 1, 1, 3),
(1235, 'Mummies', 2, 2, 0, 2, 1),
(1236, 'Mummies', 3, 3, 3, 3, 3),
(1252, 'Mummies', 3, 3, 2, 3, 0),
(1254, 'Mummies', 0, 0, 1, 0, 1),
(1255, 'Furry', 2, 2, 2, 2, 2),
(1273, 'Skeletons', 1, 1, 3, 1, 1),
(1274, 'Mummies', 0, 0, 3, 0, 3),
(1275, 'Demon', 3, 3, 2, 3, 3),
(1375, 'Zombies', 2, 2, 2, 2, 1),
(1376, 'Zombies', 1, 1, 3, 1, 0),
(1377, 'Furry', 0, 0, 1, 0, 0),
(1549, 'Mummies', 3, 3, 2, 3, 2),
(1550, 'Mummies', 2, 2, 2, 2, 2),
(1551, 'Furry', 2, 2, 0, 2, 0),
(1576, 'Mummies', 1, 1, 1, 1, 1),
(1577, 'Zombies', 2, 2, 2, 2, 2),
(1578, 'Furry', 0, 0, 2, 0, 3),
(1594, 'Zombies', 1, 1, 2, 1, 3),
(1595, 'Furry', 0, 0, 0, 0, 3),
(1596, 'Skeletons', 3, 3, 0, 3, 3),
(1639, 'Zombies', 1, 1, 0, 1, 1),
(1640, 'Furry', 3, 3, 1, 3, 2),
(1641, 'Demon', 0, 0, 2, 0, 2),
(1675, 'Mummies', 2, 2, 3, 2, 2),
(1676, 'Furry', 3, 3, 2, 3, 0),
(1677, 'Zombies', 3, 3, 2, 3, 1),
(1678, 'Skeletons', 0, 0, 0, 0, 2),
(1930, 'Mummies', 2, 2, 1, 2, 2),
(1931, 'Furry', 1, 1, 1, 1, 1),
(1932, 'Skeletons', 3, 3, 3, 3, 1),
(1993, 'Mummies', 1, 1, 3, 1, 3),
(1994, 'Furry', 2, 2, 3, 2, 3),
(1995, 'Skeletons', 0, 0, 0, 0, 2),
(2035, 'Furry', 1, 1, 1, 1, 3),
(2036, 'Skeletons', 1, 1, 1, 1, 2),
(2037, 'Zombies', 1, 1, 0, 1, 3),
(2053, 'Skeletons', 3, 3, 1, 3, 3),
(2054, 'Skeletons', 0, 0, 1, 0, 2),
(2055, 'Skeletons', 2, 2, 3, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `quest`
--

CREATE TABLE `quest` (
  `id` int(11) NOT NULL,
  `monster_id` int(11) NOT NULL,
  `hero_id` int(11) DEFAULT NULL,
  `gold` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `end_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `quest`
--

INSERT INTO `quest` (`id`, `monster_id`, `hero_id`, `gold`, `experience`, `duration`, `end_date`) VALUES
(2, 2, 1, 12, 37, 32, '2019-12-15 22:42:14'),
(5, 5, 2, 12, 33, 32, '2019-12-15 23:20:18'),
(7, 7, 3, 7, 23, 28, '2019-12-15 23:26:32'),
(10, 10, 4, 9, 22, 28, '2019-12-15 23:55:05'),
(14, 14, 5, 9, 37, 34, '2019-12-16 00:01:21'),
(16, 16, 6, 10, 25, 28, '2019-12-16 00:07:57'),
(20, 20, 7, 11, 34, 32, '2019-12-16 00:20:13'),
(25, 25, 9, 6, 25, 29, '2019-12-16 02:22:21'),
(28, 28, 10, 6, 23, 28, NULL),
(29, 29, 10, 13, 33, 34, NULL),
(30, 30, 10, 14, 46, 36, NULL),
(32, 32, 8, 12, 37, 32, NULL),
(33, 33, 8, 13, 50, 38, NULL),
(34, 34, 8, 5, 23, 28, NULL),
(35, 35, 8, 15, 34, 33, NULL),
(36, 36, 8, 19, 45, 38, NULL),
(40, 40, 11, 8, 25, 29, NULL),
(41, 41, 11, 9, 34, 34, NULL),
(42, 42, 11, 16, 47, 38, NULL),
(46, 46, 12, 6, 25, 28, NULL),
(47, 47, 12, 12, 36, 34, NULL),
(48, 48, 12, 17, 44, 38, NULL),
(70, 70, 14, 7, 25, 29, NULL),
(71, 71, 14, 10, 34, 34, NULL),
(72, 72, 14, 13, 44, 36, NULL),
(98, 104, 13, 11, 33, 32, NULL),
(99, 105, 13, 13, 48, 36, NULL),
(100, 106, 13, 6, 24, 28, NULL),
(101, 107, 13, 14, 37, 32, NULL),
(102, 108, 13, 15, 45, 36, NULL),
(103, 109, 13, 9, 25, 28, NULL),
(104, 110, 13, 9, 33, 32, NULL),
(105, 111, 13, 13, 45, 36, NULL),
(106, 112, 13, 9, 25, 28, NULL),
(107, 113, 13, 10, 35, 34, NULL),
(108, 114, 13, 13, 44, 36, NULL),
(118, 124, 17, 5, 24, 29, NULL),
(119, 125, 17, 10, 33, 33, NULL),
(120, 126, 17, 14, 44, 36, NULL),
(133, 139, 18, 9, 24, 29, NULL),
(134, 140, 18, 10, 34, 32, NULL),
(135, 141, 18, 19, 46, 37, NULL),
(166, 172, 19, 99, 246, 110, NULL),
(167, 173, 19, 116, 390, 167, NULL),
(168, 174, 19, 202, 497, 216, NULL),
(181, 187, 20, 7, 22, 29, NULL),
(182, 188, 20, 9, 37, 34, NULL),
(183, 189, 20, 15, 48, 38, NULL),
(190, 196, 21, 6, 23, 28, NULL),
(191, 197, 21, 10, 34, 34, NULL),
(192, 198, 21, 17, 50, 36, NULL),
(196, 202, 22, 5, 23, 28, NULL),
(197, 203, 22, 11, 37, 32, NULL),
(198, 204, 22, 16, 45, 37, NULL),
(202, 208, 23, 8, 23, 28, NULL),
(203, 209, 23, 11, 37, 32, NULL),
(204, 210, 23, 16, 46, 38, NULL),
(328, 334, 24, 19, 69, 47, NULL),
(329, 335, 24, 24, 107, 57, NULL),
(330, 336, 24, 39, 146, 73, NULL),
(409, 415, 25, 27, 182, 54, NULL),
(410, 416, 25, 46, 311, 69, NULL),
(411, 417, 25, 69, 453, 90, NULL),
(418, 424, 26, 5, 76, 29, NULL),
(419, 425, 26, 14, 138, 33, NULL),
(420, 426, 26, 11, 212, 37, NULL),
(424, 430, 27, 7, 101, 28, NULL),
(425, 431, 27, 8, 171, 33, NULL),
(426, 432, 27, 16, 253, 36, NULL),
(427, 433, 28, 7, 101, 29, NULL),
(428, 434, 28, 10, 171, 33, NULL),
(429, 435, 28, 11, 253, 36, NULL),
(442, 448, 29, 17, 432, 44, NULL),
(443, 449, 29, 32, 739, 56, NULL),
(444, 450, 29, 48, 1090, 73, NULL),
(448, 454, 30, 5, 100, 28, NULL),
(449, 455, 30, 15, 156, 32, NULL),
(450, 456, 30, 10, 216, 38, NULL),
(469, 475, 31, 18, 22, 38, NULL),
(470, 476, 31, 16, 33, 46, NULL),
(471, 477, 31, 25, 46, 54, NULL),
(484, 490, 32, 20, 36, 46, NULL),
(485, 491, 32, 25, 52, 58, NULL),
(486, 492, 32, 60, 73, 70, NULL),
(487, 493, 33, 9, 11, 29, NULL),
(488, 494, 33, 10, 16, 32, NULL),
(489, 495, 33, 17, 21, 37, NULL),
(490, 496, 34, 10, 11, 28, NULL),
(491, 497, 34, 10, 17, 33, NULL),
(492, 498, 34, 11, 22, 36, NULL),
(580, 586, 35, 57, 100, 89, NULL),
(581, 587, 35, 78, 165, 125, NULL),
(582, 588, 35, 130, 224, 159, NULL),
(706, 712, 38, 29, 34, 47, NULL),
(707, 713, 38, 23, 52, 60, NULL),
(708, 714, 38, 33, 78, 69, NULL),
(733, 739, 39, 57, 74, 69, NULL),
(734, 740, 39, 45, 112, 98, NULL),
(735, 741, 39, 76, 158, 127, NULL),
(748, 754, 40, 16, 35, 45, NULL),
(749, 755, 40, 37, 55, 60, NULL),
(750, 756, 40, 58, 72, 70, NULL),
(760, 766, 41, 16, 21, 38, NULL),
(761, 767, 41, 16, 34, 45, NULL),
(762, 768, 41, 40, 50, 52, NULL),
(775, 781, 42, 8, 11, 29, NULL),
(776, 782, 42, 9, 16, 33, NULL),
(777, 783, 42, 11, 21, 38, NULL),
(856, 862, 37, 74, 129, 104, NULL),
(857, 863, 37, 106, 206, 140, NULL),
(858, 864, 37, 155, 280, 195, NULL),
(919, 925, 43, 10, 10, 29, NULL),
(920, 926, 43, 13, 17, 32, NULL),
(921, 927, 43, 20, 22, 37, NULL),
(976, 985, 45, 117, 157, 119, NULL),
(977, 986, 45, 172, 246, 164, NULL),
(978, 987, 45, 223, 331, 229, NULL),
(997, 1006, 46, 11, 22, 36, NULL),
(998, 1007, 46, 22, 33, 47, NULL),
(999, 1008, 46, 30, 47, 56, NULL),
(1000, 1009, 47, 7, 11, 28, NULL),
(1001, 1010, 47, 14, 17, 32, NULL),
(1002, 1011, 47, 12, 21, 38, NULL),
(1015, 1024, 48, 24, 34, 46, NULL),
(1016, 1025, 48, 23, 53, 57, NULL),
(1017, 1026, 48, 49, 72, 74, NULL),
(1027, 1036, 49, 7, 11, 29, '2019-12-26 18:18:06'),
(1036, 1045, 50, 5, 10, 29, NULL),
(1037, 1046, 50, 13, 17, 32, NULL),
(1038, 1047, 50, 18, 23, 37, NULL),
(1054, 1063, 51, 7, 10, 29, '2019-12-27 01:48:50'),
(1069, 1078, 36, 263, 425, 263, NULL),
(1070, 1079, 36, 229, 670, 393, NULL),
(1071, 1080, 36, 471, 926, 518, NULL),
(1072, 1081, 52, 6, 10, 29, NULL),
(1073, 1082, 52, 10, 16, 33, NULL),
(1074, 1083, 52, 16, 23, 36, NULL),
(1099, 1108, 53, 29, 35, 44, NULL),
(1100, 1109, 53, 36, 56, 57, NULL),
(1101, 1110, 53, 47, 75, 73, NULL),
(1138, 1147, 54, 38, 85, 83, NULL),
(1139, 1148, 54, 69, 143, 115, NULL),
(1140, 1149, 54, 79, 185, 134, NULL),
(1165, 1174, 55, 18, 36, 44, NULL),
(1166, 1175, 55, 38, 54, 59, NULL),
(1167, 1176, 55, 51, 77, 69, NULL),
(1177, 1186, 56, 5, 11, 28, NULL),
(1178, 1187, 56, 8, 17, 34, NULL),
(1179, 1188, 56, 19, 22, 38, NULL),
(1225, 1234, 58, 25, 49, 56, NULL),
(1226, 1235, 58, 56, 76, 70, NULL),
(1227, 1236, 58, 48, 103, 87, NULL),
(1243, 1252, 59, 5, 11, 28, NULL),
(1244, 1253, 59, 13, 17, 33, NULL),
(1245, 1254, 59, 13, 22, 37, NULL),
(1261, 1273, 61, 30, 47, 55, NULL),
(1262, 1274, 61, 55, 76, 70, NULL),
(1263, 1275, 61, 74, 100, 87, NULL),
(1363, 1375, 57, 105, 227, 156, NULL),
(1364, 1376, 57, 198, 353, 231, NULL),
(1365, 1377, 57, 181, 464, 294, NULL),
(1537, 1549, 64, 6, 11, 29, NULL),
(1538, 1550, 64, 10, 16, 32, NULL),
(1539, 1551, 64, 11, 23, 36, NULL),
(1564, 1576, 63, 34, 47, 53, NULL),
(1565, 1577, 63, 50, 77, 72, NULL),
(1566, 1578, 63, 40, 106, 84, NULL),
(1582, 1594, 62, 113, 297, 202, NULL),
(1583, 1595, 62, 275, 449, 276, NULL),
(1584, 1596, 62, 400, 639, 371, NULL),
(1627, 1639, 65, 29, 62, 63, NULL),
(1628, 1640, 65, 41, 92, 80, NULL),
(1629, 1641, 65, 92, 128, 104, NULL),
(1663, 1675, 66, 50, 64, 62, NULL),
(1664, 1676, 66, 43, 98, 86, NULL),
(1665, 1677, 66, 94, 128, 102, NULL),
(1666, 1678, 67, 5, 10, 28, '2020-01-05 16:05:09'),
(1918, 1930, 68, 240, 357, 238, NULL),
(1919, 1931, 68, 245, 551, 345, NULL),
(1920, 1932, 68, 480, 745, 454, NULL),
(1981, 1993, 69, 83, 121, 100, NULL),
(1982, 1994, 69, 117, 186, 139, NULL),
(1983, 1995, 69, 144, 250, 170, NULL),
(2023, 2035, 70, 65, 99, 84, NULL),
(2024, 2036, 70, 120, 154, 117, NULL),
(2025, 2037, 70, 117, 223, 163, NULL),
(2041, 2053, 71, 20, 33, 47, NULL),
(2042, 2054, 71, 45, 55, 56, NULL),
(2043, 2055, 71, 39, 77, 70, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

CREATE TABLE `race` (
  `id` int(11) NOT NULL,
  `bonus_element_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`id`, `bonus_element_id`, `name`, `bonus_label`, `image`) VALUES
(1, 4, 'Viking', 'Les Vikings ont une meilleure rsistance aux dgresistence aux degats.', 'none'),
(2, 2, 'Rougeguarde', 'Les Rougegardes ont plus de chance d\'infliger des coups critiques.', 'none'),
(3, 3, 'Orc', 'Les Orcs ont plus de points de vie.', 'none'),
(4, 5, 'Elf', 'Les Elfs ont plus de chance d\'esquiver les coups.', 'none'),
(5, 1, 'Reptiliens', 'Les Reptiliens infligent plus de degats.', 'none');

-- --------------------------------------------------------

--
-- Structure de la table `stuff`
--

CREATE TABLE `stuff` (
  `id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `hero_id` int(11) DEFAULT NULL,
  `stats` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `element_id` int(11) DEFAULT NULL,
  `damages` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stuff`
--

INSERT INTO `stuff` (`id`, `template_id`, `hero_id`, `stats`, `element_id`, `damages`) VALUES
(1, 1, 36, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:5;i:3;i:3;i:4;i:0;}', NULL, NULL),
(2, 2, NULL, 'a:5:{i:0;i:0;i:1;i:8;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, NULL),
(3, 3, NULL, 'a:5:{i:0;i:6;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', 3, 'a:2:{i:0;d:5;i:1;d:9;}'),
(4, 4, NULL, 'a:5:{i:0;i:6;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, NULL),
(5, 5, NULL, 'a:5:{i:0;i:6;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, NULL),
(6, 6, NULL, 'a:5:{i:0;i:6;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, NULL),
(7, 7, NULL, 'a:5:{i:0;i:6;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, NULL),
(9, 8, NULL, 'a:5:{i:0;i:6;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, NULL),
(10, 11, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(11, 21, NULL, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:0;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(12, 13, 53, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:0;}', 1, 'a:2:{i:0;d:1;i:1;d:5;}'),
(13, 1, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(14, 8, NULL, 'a:5:{i:0;i:2;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(15, 9, 54, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(16, 14, NULL, 'a:5:{i:0;i:1;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:3;}', NULL, 'a:0:{}'),
(17, 11, 54, 'a:5:{i:0;i:2;i:1;i:1;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(18, 3, 54, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:0;i:3;i:1;i:4;i:0;}', 3, 'a:2:{i:0;d:2;i:1;d:4;}'),
(19, 3, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:3;i:3;i:2;i:4;i:0;}', 5, 'a:2:{i:0;d:5;i:1;d:7;}'),
(20, 6, 54, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:6;}', NULL, 'a:0:{}'),
(21, 11, 54, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:3;i:4;i:2;}', NULL, 'a:0:{}'),
(22, 6, NULL, 'a:5:{i:0;i:4;i:1;i:4;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(23, 5, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:2;}', NULL, 'a:0:{}'),
(24, 13, 55, 'a:5:{i:0;i:1;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:2;}', 3, 'a:2:{i:0;d:1;i:1;d:3;}'),
(25, 2, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:2;}', NULL, 'a:0:{}'),
(26, 5, NULL, 'a:5:{i:0;i:1;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(27, 2, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:2;i:4;i:0;}', NULL, 'a:0:{}'),
(28, 3, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:2;i:3;i:0;i:4;i:0;}', 2, 'a:2:{i:0;d:1;i:1;d:3;}'),
(29, 17, NULL, 'a:5:{i:0;i:1;i:1;i:1;i:2;i:0;i:3;i:3;i:4;i:0;}', 2, 'a:2:{i:0;d:1;i:1;d:5;}'),
(30, 6, NULL, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:0;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(31, 21, NULL, 'a:5:{i:0;i:5;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(32, 16, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(33, 5, NULL, 'a:5:{i:0;i:2;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(34, 4, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:3;i:4;i:0;}', NULL, 'a:0:{}'),
(35, 17, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:3;i:4;i:2;}', 5, 'a:2:{i:0;d:3;i:1;d:6;}'),
(36, 5, 58, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:4;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(37, 13, NULL, 'a:5:{i:0;i:1;i:1;i:2;i:2;i:0;i:3;i:0;i:4;i:2;}', 3, 'a:2:{i:0;d:4;i:1;d:6;}'),
(38, 20, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:5;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(39, 15, NULL, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:4;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(40, 16, NULL, 'a:5:{i:0;i:2;i:1;i:4;i:2;i:3;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(41, 28, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(42, 19, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:3;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(43, 23, 61, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(44, 23, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:5;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(45, 27, NULL, 'a:5:{i:0;i:2;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:4;}', NULL, 'a:0:{}'),
(46, 13, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:0;i:3;i:3;i:4;i:2;}', 2, 'a:2:{i:0;d:6;i:1;d:9;}'),
(47, 28, NULL, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:3;i:3;i:0;i:4;i:7;}', NULL, 'a:0:{}'),
(48, 8, NULL, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:2;i:3;i:0;i:4;i:4;}', NULL, 'a:0:{}'),
(49, 10, NULL, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:0;i:3;i:3;i:4;i:3;}', NULL, 'a:0:{}'),
(50, 8, NULL, 'a:5:{i:0;i:2;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:8;}', NULL, 'a:0:{}'),
(51, 1, NULL, 'a:5:{i:0;i:8;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(52, 9, NULL, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:6;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(53, 19, NULL, 'a:5:{i:0;i:4;i:1;i:0;i:2;i:0;i:3;i:10;i:4;i:0;}', NULL, 'a:0:{}'),
(54, 10, NULL, 'a:5:{i:0;i:8;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(55, 6, NULL, 'a:5:{i:0;i:2;i:1;i:0;i:2;i:11;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(56, 27, NULL, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:0;i:3;i:15;i:4;i:0;}', NULL, 'a:0:{}'),
(57, 15, NULL, 'a:5:{i:0;i:5;i:1;i:6;i:2;i:0;i:3;i:0;i:4;i:4;}', NULL, 'a:0:{}'),
(58, 18, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:5;i:3;i:6;i:4;i:6;}', NULL, 'a:0:{}'),
(59, 4, NULL, 'a:5:{i:0;i:0;i:1;i:9;i:2;i:0;i:3;i:0;i:4;i:5;}', NULL, 'a:0:{}'),
(60, 18, NULL, 'a:5:{i:0;i:8;i:1;i:0;i:2;i:3;i:3;i:0;i:4;i:6;}', NULL, 'a:0:{}'),
(61, 25, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:14;i:4;i:7;}', NULL, 'a:0:{}'),
(62, 26, NULL, 'a:5:{i:0;i:6;i:1;i:0;i:2;i:0;i:3;i:7;i:4;i:8;}', NULL, 'a:0:{}'),
(63, 15, NULL, 'a:5:{i:0;i:6;i:1;i:0;i:2;i:0;i:3;i:12;i:4;i:0;}', NULL, 'a:0:{}'),
(64, 16, NULL, 'a:5:{i:0;i:7;i:1;i:0;i:2;i:7;i:3;i:0;i:4;i:6;}', NULL, 'a:0:{}'),
(65, 21, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:3;i:3;i:0;i:4;i:17;}', NULL, 'a:0:{}'),
(66, 17, NULL, 'a:5:{i:0;i:4;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:16;}', 5, 'a:2:{i:0;d:15;i:1;d:17;}'),
(67, 19, NULL, 'a:5:{i:0;i:11;i:1;i:0;i:2;i:3;i:3;i:0;i:4;i:6;}', NULL, 'a:0:{}'),
(68, 18, NULL, 'a:5:{i:0;i:6;i:1;i:0;i:2;i:8;i:3;i:7;i:4;i:0;}', NULL, 'a:0:{}'),
(69, 23, NULL, 'a:5:{i:0;i:7;i:1;i:0;i:2;i:10;i:3;i:0;i:4;i:8;}', NULL, 'a:0:{}'),
(70, 25, NULL, 'a:5:{i:0;i:16;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:9;}', NULL, 'a:0:{}'),
(71, 20, NULL, 'a:5:{i:0;i:9;i:1;i:0;i:2;i:0;i:3;i:7;i:4;i:5;}', NULL, 'a:0:{}'),
(72, 23, NULL, 'a:5:{i:0;i:0;i:1;i:6;i:2;i:0;i:3;i:13;i:4;i:8;}', NULL, 'a:0:{}'),
(73, 21, 57, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:22;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(74, 56, NULL, 'a:5:{i:0;i:12;i:1;i:3;i:2;i:0;i:3;i:8;i:4;i:0;}', NULL, 'a:0:{}'),
(75, 54, 57, 'a:5:{i:0;i:15;i:1;i:0;i:2;i:0;i:3;i:9;i:4;i:0;}', NULL, 'a:0:{}'),
(76, 28, 57, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:4;i:3;i:9;i:4;i:11;}', NULL, 'a:0:{}'),
(77, 71, NULL, 'a:5:{i:0;i:1;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(78, 79, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:2;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(79, 84, NULL, 'a:5:{i:0;i:2;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(80, 79, NULL, 'a:5:{i:0;i:2;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(81, 100, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:2;i:4;i:0;}', NULL, 'a:0:{}'),
(82, 120, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:3;i:4;i:1;}', NULL, 'a:0:{}'),
(83, 128, NULL, 'a:5:{i:0;i:5;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(84, 7, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:4;i:4;i:2;}', NULL, 'a:0:{}'),
(85, 109, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:0;i:3;i:2;i:4;i:2;}', NULL, 'a:0:{}'),
(86, 104, NULL, 'a:5:{i:0;i:1;i:1;i:2;i:2;i:3;i:3;i:0;i:4;i:0;}', 2, 'a:2:{i:0;d:10;i:1;d:10;}'),
(87, 59, NULL, 'a:5:{i:0;i:0;i:1;i:8;i:2;i:0;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(88, 56, NULL, 'a:5:{i:0;i:1;i:1;i:4;i:2;i:0;i:3;i:0;i:4;i:3;}', NULL, 'a:0:{}'),
(89, 165, NULL, 'a:5:{i:0;i:0;i:1;i:4;i:2;i:0;i:3;i:0;i:4;i:3;}', NULL, 'a:0:{}'),
(90, 130, NULL, 'a:5:{i:0;i:8;i:1;i:0;i:2;i:0;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(91, 54, NULL, 'a:5:{i:0;i:0;i:1;i:7;i:2;i:0;i:3;i:3;i:4;i:2;}', NULL, 'a:0:{}'),
(92, 57, NULL, 'a:5:{i:0;i:0;i:1;i:10;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(93, 60, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:5;i:3;i:6;i:4;i:0;}', 2, 'a:2:{i:0;d:11;i:1;d:15;}'),
(94, 156, NULL, 'a:5:{i:0;i:0;i:1;i:5;i:2;i:0;i:3;i:7;i:4;i:0;}', NULL, 'a:0:{}'),
(95, 53, NULL, 'a:5:{i:0;i:7;i:1;i:2;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(96, 166, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:3;i:3;i:3;i:4;i:3;}', NULL, 'a:0:{}'),
(97, 58, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:12;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(98, 138, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:9;}', NULL, 'a:0:{}'),
(99, 138, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:3;i:3;i:7;i:4;i:0;}', NULL, 'a:0:{}'),
(100, 81, NULL, 'a:5:{i:0;i:0;i:1;i:5;i:2;i:4;i:3;i:0;i:4;i:2;}', NULL, 'a:0:{}'),
(101, 10, NULL, 'a:5:{i:0;i:10;i:1;i:0;i:2;i:0;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(102, 101, NULL, 'a:5:{i:0;i:4;i:1;i:4;i:2;i:0;i:3;i:3;i:4;i:0;}', NULL, 'a:0:{}'),
(103, 55, NULL, 'a:5:{i:0;i:11;i:1;i:0;i:2;i:0;i:3;i:4;i:4;i:0;}', NULL, 'a:0:{}'),
(104, 4, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:6;i:3;i:0;i:4;i:9;}', NULL, 'a:0:{}'),
(105, 10, NULL, 'a:5:{i:0;i:8;i:1;i:0;i:2;i:0;i:3;i:4;i:4;i:0;}', NULL, 'a:0:{}'),
(106, 108, NULL, 'a:5:{i:0;i:0;i:1;i:5;i:2;i:6;i:3;i:0;i:4;i:4;}', NULL, 'a:0:{}'),
(107, 9, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:0;i:3;i:0;i:4;i:10;}', NULL, 'a:0:{}'),
(108, 143, NULL, 'a:5:{i:0;i:0;i:1;i:14;i:2;i:0;i:3;i:0;i:4;i:3;}', NULL, 'a:0:{}'),
(109, 7, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:7;i:4;i:11;}', NULL, 'a:0:{}'),
(110, 124, NULL, 'a:5:{i:0;i:0;i:1;i:5;i:2;i:5;i:3;i:0;i:4;i:4;}', NULL, 'a:0:{}'),
(111, 47, 62, 'a:5:{i:0;i:9;i:1;i:8;i:2;i:0;i:3;i:6;i:4;i:0;}', NULL, 'a:0:{}'),
(112, 81, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:13;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(113, 124, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:16;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(114, 1, NULL, 'a:5:{i:0;i:0;i:1;i:16;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(115, 122, NULL, 'a:5:{i:0;i:0;i:1;i:7;i:2;i:0;i:3;i:10;i:4;i:0;}', NULL, 'a:0:{}'),
(116, 11, NULL, 'a:5:{i:0;i:0;i:1;i:12;i:2;i:5;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(117, 156, NULL, 'a:5:{i:0;i:15;i:1;i:8;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(118, 99, NULL, 'a:5:{i:0;i:5;i:1;i:0;i:2;i:0;i:3;i:13;i:4;i:0;}', NULL, 'a:0:{}'),
(119, 10, NULL, 'a:5:{i:0;i:17;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(120, 80, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:5;i:3;i:0;i:4;i:14;}', NULL, 'a:0:{}'),
(121, 107, 63, 'a:5:{i:0;i:1;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(122, 113, NULL, 'a:5:{i:0;i:6;i:1;i:9;i:2;i:0;i:3;i:0;i:4;i:9;}', NULL, 'a:0:{}'),
(123, 36, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:3;i:3;i:0;i:4;i:0;}', 3, 'a:2:{i:0;d:1;i:1;d:2;}'),
(124, 94, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:2;i:4;i:0;}', NULL, 'a:0:{}'),
(125, 74, 62, 'a:5:{i:0;i:22;i:1;i:7;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(126, 77, NULL, 'a:5:{i:0;i:2;i:1;i:0;i:2;i:0;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(127, 127, NULL, 'a:5:{i:0;i:0;i:1;i:16;i:2;i:0;i:3;i:0;i:4;i:9;}', NULL, 'a:0:{}'),
(128, 114, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:2;i:3;i:2;i:4;i:0;}', NULL, 'a:0:{}'),
(129, 117, 63, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:0;i:3;i:0;i:4;i:2;}', NULL, 'a:0:{}'),
(130, 168, NULL, 'a:5:{i:0;i:9;i:1;i:11;i:2;i:0;i:3;i:5;i:4;i:0;}', NULL, 'a:0:{}'),
(131, 151, 62, 'a:5:{i:0;i:6;i:1;i:13;i:2;i:0;i:3;i:8;i:4;i:0;}', NULL, 'a:0:{}'),
(132, 139, 62, 'a:5:{i:0;i:0;i:1;i:15;i:2;i:6;i:3;i:0;i:4;i:0;}', 1, 'a:2:{i:0;d:38;i:1;d:40;}'),
(133, 24, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', 1, 'a:2:{i:0;i:1;i:1;i:1;}'),
(134, 22, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(135, 23, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(136, 25, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(137, 26, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(138, 27, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(139, 28, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(140, 12, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(141, 9, NULL, 'a:5:{i:0;i:1;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(142, 132, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:1;i:3;i:0;i:4;i:2;}', 2, 'a:2:{i:0;d:3;i:1;d:6;}'),
(143, 125, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:1;i:4;i:2;}', 2, 'a:2:{i:0;d:4;i:1;d:7;}'),
(144, 89, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:4;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(145, 112, NULL, 'a:5:{i:0;i:2;i:1;i:3;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(146, 173, 65, 'a:5:{i:0;i:0;i:1;i:6;i:2;i:1;i:3;i:0;i:4;i:0;}', 2, 'a:2:{i:0;d:6;i:1;d:10;}'),
(147, 106, 66, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}'),
(162, 61, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', 1, 'a:2:{i:0;i:1;i:1;i:1;}'),
(163, 62, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(164, 63, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(165, 65, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(166, 66, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(167, 67, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(168, 68, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', 5, 'a:2:{i:0;i:1;i:1;i:1;}'),
(169, 139, NULL, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:0;i:3;i:0;i:4;i:0;}', 5, 'a:2:{i:0;d:1;i:1;d:2;}'),
(170, 136, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(171, 107, 66, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:3;}', NULL, 'a:0:{}'),
(172, 143, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:1;i:3;i:2;i:4;i:0;}', NULL, 'a:0:{}'),
(173, 171, NULL, 'a:5:{i:0;i:0;i:1;i:4;i:2;i:0;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(174, 3, NULL, 'a:5:{i:0;i:1;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;}', 2, 'a:2:{i:0;i:1;i:1;i:1;}'),
(175, 122, NULL, 'a:5:{i:0;i:2;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(176, 106, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:0;i:3;i:2;i:4;i:0;}', NULL, 'a:0:{}'),
(177, 140, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:4;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(178, 4, NULL, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(179, 125, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:2;i:4;i:2;}', 4, 'a:2:{i:0;d:2;i:1;d:4;}'),
(180, 140, NULL, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:5;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(181, 69, NULL, 'a:5:{i:0;i:0;i:1;i:4;i:2;i:1;i:3;i:3;i:4;i:0;}', NULL, 'a:0:{}'),
(182, 78, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:2;i:3;i:0;i:4;i:3;}', NULL, 'a:0:{}'),
(183, 120, NULL, 'a:5:{i:0;i:6;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(184, 156, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:7;}', NULL, 'a:0:{}'),
(185, 110, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:4;i:3;i:2;i:4;i:3;}', NULL, 'a:0:{}'),
(186, 162, NULL, 'a:5:{i:0;i:3;i:1;i:4;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(187, 41, NULL, 'a:5:{i:0;i:7;i:1;i:3;i:2;i:0;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(188, 140, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:10;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(189, 159, NULL, 'a:5:{i:0;i:9;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(190, 102, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:4;i:4;i:4;}', NULL, 'a:0:{}'),
(191, 25, NULL, 'a:5:{i:0;i:10;i:1;i:0;i:2;i:0;i:3;i:4;i:4;i:0;}', NULL, 'a:0:{}'),
(192, 126, NULL, 'a:5:{i:0;i:2;i:1;i:0;i:2;i:0;i:3;i:4;i:4;i:6;}', NULL, 'a:0:{}'),
(193, 126, NULL, 'a:5:{i:0;i:5;i:1;i:5;i:2;i:0;i:3;i:3;i:4;i:0;}', NULL, 'a:0:{}'),
(194, 18, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:8;i:3;i:0;i:4;i:7;}', NULL, 'a:0:{}'),
(195, 20, 68, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:2;i:3;i:7;i:4;i:6;}', NULL, 'a:0:{}'),
(196, 87, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:4;i:3;i:0;i:4;i:7;}', NULL, 'a:0:{}'),
(197, 143, NULL, 'a:5:{i:0;i:0;i:1;i:4;i:2;i:4;i:3;i:0;i:4;i:6;}', NULL, 'a:0:{}'),
(198, 76, NULL, 'a:5:{i:0;i:0;i:1;i:4;i:2;i:0;i:3;i:7;i:4;i:0;}', 4, 'a:2:{i:0;d:16;i:1;d:19;}'),
(199, 149, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:3;i:3;i:0;i:4;i:12;}', NULL, 'a:0:{}'),
(200, 58, NULL, 'a:5:{i:0;i:5;i:1;i:8;i:2;i:0;i:3;i:0;i:4;i:8;}', NULL, 'a:0:{}'),
(201, 121, NULL, 'a:5:{i:0;i:0;i:1;i:6;i:2;i:0;i:3;i:0;i:4;i:6;}', NULL, 'a:0:{}'),
(202, 2, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:13;}', NULL, 'a:0:{}'),
(203, 123, NULL, 'a:5:{i:0;i:2;i:1;i:0;i:2;i:7;i:3;i:0;i:4;i:4;}', NULL, 'a:0:{}'),
(204, 153, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:5;i:3;i:12;i:4;i:0;}', 2, 'a:2:{i:0;d:24;i:1;d:27;}'),
(205, 158, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:8;i:3;i:0;i:4;i:9;}', NULL, 'a:0:{}'),
(206, 137, NULL, 'a:5:{i:0;i:0;i:1;i:5;i:2;i:0;i:3;i:9;i:4;i:0;}', NULL, 'a:0:{}'),
(207, 112, NULL, 'a:5:{i:0;i:0;i:1;i:9;i:2;i:6;i:3;i:0;i:4;i:3;}', NULL, 'a:0:{}'),
(208, 12, NULL, 'a:5:{i:0;i:0;i:1;i:5;i:2;i:9;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(209, 26, 68, 'a:5:{i:0;i:0;i:1;i:11;i:2;i:0;i:3;i:10;i:4;i:0;}', NULL, 'a:0:{}'),
(210, 88, NULL, 'a:5:{i:0;i:0;i:1;i:9;i:2;i:0;i:3;i:0;i:4;i:6;}', NULL, 'a:0:{}'),
(211, 80, NULL, 'a:5:{i:0;i:9;i:1;i:0;i:2;i:0;i:3;i:1;i:4;i:5;}', NULL, 'a:0:{}'),
(212, 85, NULL, 'a:5:{i:0;i:8;i:1;i:0;i:2;i:3;i:3;i:4;i:4;i:0;}', NULL, 'a:0:{}'),
(213, 100, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:12;i:3;i:4;i:4;i:0;}', NULL, 'a:0:{}'),
(214, 90, NULL, 'a:5:{i:0;i:0;i:1;i:6;i:2;i:0;i:3;i:7;i:4;i:3;}', 2, 'a:2:{i:0;d:32;i:1;d:34;}'),
(215, 6, NULL, 'a:5:{i:0;i:10;i:1;i:6;i:2;i:4;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(216, 12, NULL, 'a:5:{i:0;i:0;i:1;i:11;i:2;i:0;i:3;i:5;i:4;i:0;}', NULL, 'a:0:{}'),
(217, 39, NULL, 'a:5:{i:0;i:17;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:9;}', NULL, 'a:0:{}'),
(218, 100, NULL, 'a:5:{i:0;i:0;i:1;i:13;i:2;i:0;i:3;i:4;i:4;i:0;}', NULL, 'a:0:{}'),
(219, 152, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:22;}', NULL, 'a:0:{}'),
(220, 160, NULL, 'a:5:{i:0;i:6;i:1;i:0;i:2;i:10;i:3;i:6;i:4;i:0;}', 4, 'a:2:{i:0;d:20;i:1;d:22;}'),
(221, 127, NULL, 'a:5:{i:0;i:6;i:1;i:0;i:2;i:11;i:3;i:6;i:4;i:0;}', NULL, 'a:0:{}'),
(222, 103, NULL, 'a:5:{i:0;i:7;i:1;i:0;i:2;i:11;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(223, 117, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:15;i:3;i:8;i:4;i:0;}', NULL, 'a:0:{}'),
(224, 169, NULL, 'a:5:{i:0;i:9;i:1;i:0;i:2;i:5;i:3;i:9;i:4;i:0;}', NULL, 'a:0:{}'),
(225, 155, NULL, 'a:5:{i:0;i:13;i:1;i:0;i:2;i:6;i:3;i:0;i:4;i:5;}', NULL, 'a:0:{}'),
(226, 79, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:8;i:4;i:11;}', NULL, 'a:0:{}'),
(227, 87, NULL, 'a:5:{i:0;i:7;i:1;i:4;i:2;i:0;i:3;i:0;i:4;i:8;}', NULL, 'a:0:{}'),
(228, 172, NULL, 'a:5:{i:0;i:13;i:1;i:0;i:2;i:3;i:3;i:0;i:4;i:8;}', NULL, 'a:0:{}'),
(229, 138, NULL, 'a:5:{i:0;i:0;i:1;i:5;i:2;i:8;i:3;i:0;i:4;i:7;}', NULL, 'a:0:{}'),
(230, 49, 68, 'a:5:{i:0;i:15;i:1;i:15;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(231, 158, NULL, 'a:5:{i:0;i:0;i:1;i:11;i:2;i:14;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(232, 4, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:8;i:4;i:17;}', NULL, 'a:0:{}'),
(233, 37, NULL, 'a:5:{i:0;i:19;i:1;i:13;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(234, 101, NULL, 'a:5:{i:0;i:7;i:1;i:5;i:2;i:0;i:3;i:9;i:4;i:0;}', NULL, 'a:0:{}'),
(235, 133, NULL, 'a:5:{i:0;i:16;i:1;i:0;i:2;i:0;i:3;i:5;i:4;i:0;}', NULL, 'a:0:{}'),
(236, 134, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:12;i:4;i:9;}', NULL, 'a:0:{}'),
(237, 149, NULL, 'a:5:{i:0;i:21;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:6;}', NULL, 'a:0:{}'),
(238, 114, NULL, 'a:5:{i:0;i:11;i:1;i:0;i:2;i:0;i:3;i:8;i:4;i:9;}', NULL, 'a:0:{}'),
(239, 161, NULL, 'a:5:{i:0;i:7;i:1;i:0;i:2;i:0;i:3;i:8;i:4;i:7;}', NULL, 'a:0:{}'),
(240, 100, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:14;i:3;i:8;i:4;i:0;}', NULL, 'a:0:{}'),
(241, 144, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:19;i:3;i:0;i:4;i:9;}', NULL, 'a:0:{}'),
(242, 89, NULL, 'a:5:{i:0;i:0;i:1;i:7;i:2;i:10;i:3;i:0;i:4;i:6;}', NULL, 'a:0:{}'),
(243, 92, NULL, 'a:5:{i:0;i:0;i:1;i:12;i:2;i:7;i:3;i:4;i:4;i:0;}', NULL, 'a:0:{}'),
(244, 144, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:11;i:3;i:8;i:4;i:10;}', NULL, 'a:0:{}'),
(245, 18, 68, 'a:5:{i:0;i:0;i:1;i:8;i:2;i:15;i:3;i:0;i:4;i:12;}', NULL, 'a:0:{}'),
(246, 124, NULL, 'a:5:{i:0;i:0;i:1;i:9;i:2;i:14;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(247, 87, NULL, 'a:5:{i:0;i:0;i:1;i:21;i:2;i:3;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(248, 88, NULL, 'a:5:{i:0;i:0;i:1;i:16;i:2;i:0;i:3;i:0;i:4;i:8;}', NULL, 'a:0:{}'),
(249, 78, NULL, 'a:5:{i:0;i:0;i:1;i:8;i:2;i:0;i:3;i:8;i:4;i:8;}', NULL, 'a:0:{}'),
(250, 115, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:11;i:3;i:11;i:4;i:8;}', NULL, 'a:0:{}'),
(251, 7, NULL, 'a:5:{i:0;i:8;i:1;i:0;i:2;i:10;i:3;i:0;i:4;i:12;}', NULL, 'a:0:{}'),
(252, 145, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:32;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(253, 111, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:32;i:3;i:0;i:4;i:0;}', 5, 'a:2:{i:0;d:49;i:1;d:51;}'),
(254, 124, NULL, 'a:5:{i:0;i:8;i:1;i:0;i:2;i:8;i:3;i:9;i:4;i:0;}', NULL, 'a:0:{}'),
(255, 144, 68, 'a:5:{i:0;i:0;i:1;i:10;i:2;i:0;i:3;i:22;i:4;i:0;}', NULL, 'a:0:{}'),
(256, 50, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:2;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(257, 12, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(258, 51, NULL, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(259, 45, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:5;}', NULL, 'a:0:{}'),
(260, 49, NULL, 'a:5:{i:0;i:1;i:1;i:2;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(261, 80, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:4;i:4;i:0;}', NULL, 'a:0:{}'),
(262, 154, NULL, 'a:5:{i:0;i:0;i:1;i:4;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(263, 46, NULL, 'a:5:{i:0;i:1;i:1;i:1;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(264, 52, NULL, 'a:5:{i:0;i:0;i:1;i:1;i:2;i:1;i:3;i:1;i:4;i:0;}', 2, 'a:2:{i:0;d:1;i:1;d:5;}'),
(265, 47, NULL, 'a:5:{i:0;i:0;i:1;i:4;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(266, 126, NULL, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:4;}', NULL, 'a:0:{}'),
(267, 4, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:2;i:4;i:5;}', NULL, 'a:0:{}'),
(268, 84, NULL, 'a:5:{i:0;i:3;i:1;i:3;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(269, 9, NULL, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:3;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(270, 24, 69, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:3;i:3;i:6;i:4;i:0;}', 1, 'a:2:{i:0;d:8;i:1;d:10;}'),
(271, 81, 69, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:5;i:3;i:2;i:4;i:0;}', NULL, 'a:0:{}'),
(272, 147, 69, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:2;i:3;i:0;i:4;i:5;}', NULL, 'a:0:{}'),
(273, 138, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(274, 37, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:2;i:3;i:0;i:4;i:5;}', NULL, 'a:0:{}'),
(275, 38, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:2;i:3;i:0;i:4;i:5;}', NULL, 'a:0:{}'),
(276, 39, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:2;i:3;i:0;i:4;i:5;}', NULL, 'a:0:{}'),
(277, 41, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:2;i:3;i:0;i:4;i:5;}', NULL, 'a:0:{}'),
(278, 42, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:2;i:3;i:0;i:4;i:5;}', NULL, 'a:0:{}'),
(279, 43, NULL, 'a:5:{i:0;i:0;i:1;i:3;i:2;i:2;i:3;i:0;i:4;i:5;}', NULL, 'a:0:{}'),
(280, 44, NULL, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:3;i:3;i:6;i:4;i:0;}', 4, 'a:2:{i:0;d:8;i:1;d:10;}'),
(281, 104, NULL, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:0;i:3;i:0;i:4;i:0;}', 5, 'a:2:{i:0;d:4;i:1;d:4;}'),
(282, 138, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:2;i:4;i:0;}', NULL, 'a:0:{}'),
(283, 169, NULL, 'a:5:{i:0;i:4;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(284, 96, NULL, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:2;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(285, 119, NULL, 'a:5:{i:0;i:1;i:1;i:4;i:2;i:0;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(286, 7, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:7;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(287, 170, NULL, 'a:5:{i:0;i:3;i:1;i:2;i:2;i:3;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(288, 97, NULL, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:1;i:3;i:3;i:4;i:0;}', 2, 'a:2:{i:0;d:12;i:1;d:13;}'),
(289, 18, NULL, 'a:5:{i:0;i:0;i:1;i:5;i:2;i:0;i:3;i:0;i:4;i:6;}', NULL, 'a:0:{}'),
(290, 81, NULL, 'a:5:{i:0;i:0;i:1;i:6;i:2;i:1;i:3;i:0;i:4;i:0;}', NULL, 'a:0:{}'),
(291, 121, NULL, 'a:5:{i:0;i:3;i:1;i:0;i:2;i:0;i:3;i:3;i:4;i:2;}', NULL, 'a:0:{}'),
(292, 73, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(293, 74, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(294, 75, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(295, 69, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(302, 70, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(303, 71, NULL, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:1;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(304, 76, NULL, 'a:5:{i:0;i:1;i:1;i:0;i:2;i:0;i:3;i:0;i:4;i:2;}', 3, 'a:2:{i:0;d:1;i:1;d:3;}'),
(305, 31, 71, 'a:5:{i:0;i:0;i:1;i:2;i:2;i:1;i:3;i:0;i:4;i:1;}', NULL, 'a:0:{}'),
(306, 58, 71, 'a:5:{i:0;i:0;i:1;i:0;i:2;i:3;i:3;i:1;i:4;i:0;}', NULL, 'a:0:{}');

-- --------------------------------------------------------

--
-- Structure de la table `stuff_template`
--

CREATE TABLE `stuff_template` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `rarity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stuff_template`
--

INSERT INTO `stuff_template` (`id`, `type_id`, `rarity`, `image`, `name`) VALUES
(1, 3, 0, 'IronArmor.png', 'Plastron de fer'),
(2, 2, 0, 'IronArmor.png', 'Spallières de fer'),
(3, 7, 0, 'IronSword.png', 'Épée de fer'),
(4, 4, 1, 'CrusaderChainmail.png', 'Ceinture des templiers'),
(5, 3, 1, 'CrusaderChainmail.png', 'Plastron des templiers'),
(6, 5, 1, 'CrusaderChainmail.png', 'Gants des templiers'),
(7, 6, 1, 'CrusaderChainmail.png', 'Bottes des templiers'),
(8, 1, 1, 'CrusaderHelm.png', 'Casque des templiers'),
(9, 1, 0, 'IronHelm.png', 'Casque de fer'),
(10, 4, 0, 'IronArmor.png', 'Ceinture de fer'),
(11, 5, 0, 'IronArmor.png', 'Gants de fer'),
(12, 6, 0, 'IronArmor.png', 'Bottes de fer'),
(13, 7, 1, 'CrusaderSword.png', 'Épée des templiers'),
(14, 2, 1, 'CrusaderChainmail.png', 'Spallières des templiers'),
(15, 3, 2, 'SamouraiArmor.png', 'Plastron du samouraï'),
(16, 2, 2, 'SamouraiArmor.png', 'Spallières du samouraï'),
(17, 7, 2, 'SamouraiSword.png', 'Épée du samouraï'),
(18, 1, 2, 'SamouraiHelm.png', 'Casque du samouraï'),
(19, 4, 2, 'SamouraiArmor.png', 'Ceinture du samouraï'),
(20, 5, 2, 'SamouraiArmor.png', 'Gants du samouraï'),
(21, 6, 2, 'SamouraiArmor.png', 'Jambières du samouraï'),
(22, 3, 2, 'BerserkerArmor.png', 'Plastron du berserker'),
(23, 2, 2, 'BerserkerArmor.png', 'Spallières du berserker'),
(24, 7, 2, 'BerserkerSword.png', 'Épée du berserker'),
(25, 1, 2, 'BerserkerHelm.png', 'Casque du berserker'),
(26, 4, 2, 'BerserkerArmor.png', 'Ceinture du berserker'),
(27, 5, 2, 'BerserkerArmor.png', 'Gants du berserker'),
(28, 6, 2, 'BerserkerArmor.png', 'Jambières du berserker'),
(29, 1, 3, 'AbjurerHelm.png', 'Couronne de l\'abjureur'),
(30, 2, 3, 'AbjurerArmor.png', 'Spallières de l\'abjureur'),
(31, 3, 3, 'AbjurerArmor.png', 'Plastron de l\'abjureur'),
(33, 4, 3, 'AbjurerArmor.png', 'Ceinture de l\'abjureur'),
(34, 5, 3, 'AbjurerArmor.png', 'Gants de l\'abjureur'),
(35, 6, 3, 'AbjurerArmor.png', 'Jambières de l\'abjureur'),
(36, 7, 3, 'AbjurerSword.png', 'Épée de l\'abjureur'),
(37, 1, 2, 'AssassinHelm.png', 'Masque de l\'assassin'),
(38, 2, 2, 'AssassinArmor.png', 'Spallières de l\'assassin'),
(39, 3, 2, 'AssassinArmor.png', 'Plastron de l\'assassin'),
(41, 4, 2, 'AssassinArmor.png', 'Ceinture de l\'assassin'),
(42, 5, 2, 'AssassinArmor.png', 'Gants de l\'assassin'),
(43, 6, 2, 'AssassinArmor.png', 'Jambières de l\'assassin'),
(44, 7, 2, 'AssassinSword.png', 'Épée de l\'assassin'),
(45, 1, 2, 'BardHelm.png', 'Casque du barde'),
(46, 2, 2, 'BardArmor.png', 'Spallières du barde'),
(47, 3, 2, 'BardArmor.png', 'Plastron du barde'),
(49, 4, 2, 'BardArmor.png', 'Ceinture du barde'),
(50, 5, 2, 'BardArmor.png', 'Gants du barde'),
(51, 6, 2, 'BardArmor.png', 'Jambières du barde'),
(52, 7, 2, 'BardSword.png', 'Épée du barde'),
(53, 1, 3, 'AlchemistHelm.png', 'Couronne de l\'alchimiste'),
(54, 2, 3, 'AlchemistArmor.png', 'Spallières de l\'alchimiste'),
(55, 3, 3, 'AlchemistArmor.png', 'Plastron de l\'alchimiste'),
(56, 3, 1, 'RenegateArmor.png', 'Chemise du renégat'),
(57, 4, 3, 'AlchemistArmor.png', 'Ceinture de l\'alchimiste'),
(58, 5, 3, 'AlchemistArmor.png', 'Gants de l\'alchimiste'),
(59, 6, 3, 'AlchemistArmor.png', 'Jambières de l\'alchimiste'),
(60, 7, 3, 'AlchemistSword.png', 'Épée de l\'alchimiste'),
(61, 1, 3, 'ElementalistHelm.png', 'Couronne de l\'élémentaliste'),
(62, 2, 3, 'ElementalistArmor.png', 'Spallières de l\'élémentaliste'),
(63, 3, 3, 'ElementalistArmor.png', 'Plastron de l\'élémentaliste'),
(65, 4, 3, 'ElementalistArmor.png', 'Ceinture de l\'élémentaliste'),
(66, 5, 3, 'ElementalistArmor.png', 'Gants de l\'élémentaliste'),
(67, 6, 3, 'ElementalistArmor.png', 'Jambières de l\'élémentaliste'),
(68, 7, 3, 'ElementalistSword.png', 'Épée de l\'élémentaliste'),
(69, 1, 2, 'PaladinHelm.png', 'Casque du paladin'),
(70, 2, 2, 'PaladinArmor.png', 'Spallières du paladin'),
(71, 3, 2, 'PaladinArmor.png', 'Plastron du paladin'),
(73, 4, 2, 'PaladinArmor.png', 'Ceinture du paladin'),
(74, 5, 2, 'PaladinArmor.png', 'Gants du paladin'),
(75, 6, 2, 'PaladinArmor.png', 'Jambières du paladin'),
(76, 7, 2, 'PaladinSword.png', 'Épée du paladin'),
(77, 1, 0, 'ClericHelm.png', 'Capuche du clerc'),
(78, 2, 0, 'partial/ClericArmor.png', 'Spallières du clerc'),
(79, 3, 0, 'partial/ClericArmor.png', 'Robe du clerc'),
(80, 4, 0, 'partial/ClericArmor.png', 'Ceinture du clerc'),
(81, 5, 0, 'partial/ClericArmor.png', 'Manches du clerc'),
(82, 6, 0, 'partial/ClericArmor.png', 'Bottes du clerc'),
(83, 7, 0, 'ClericSword.png', 'Sceptre du clerc'),
(84, 1, 0, 'DesertHelm.png', 'Capuche du désert'),
(85, 2, 0, 'partial/DesertArmor.png', 'Spallières du désert'),
(86, 3, 0, 'partial/DesertArmor.png', 'Plastron du désert'),
(87, 4, 0, 'partial/DesertArmor.png', 'Ceinture du désert'),
(88, 5, 0, 'partial/DesertArmor.png', 'Bracelets du désert'),
(89, 6, 0, 'partial/DesertArmor.png', 'Bottes du désert'),
(90, 7, 0, 'DesertSword.png', 'Sabre du désert'),
(91, 1, 0, 'GuardHelm.png', 'Casque du garde'),
(92, 2, 0, 'partial/GuardArmor.png', 'Spallières du garde'),
(93, 3, 0, 'partial/GuardArmor.png', 'Plastron du garde'),
(94, 4, 0, 'partial/GuardArmor.png', 'Ceinture du garde'),
(95, 5, 0, 'partial/GuardArmor.png', 'Bracelets du garde'),
(96, 6, 0, 'partial/GuardArmor.png', 'Bottes du garde'),
(97, 7, 0, 'GuardSword.png', 'Hache du garde'),
(98, 1, 0, 'HunterHelm.png', 'Chapeau du chasseur'),
(99, 2, 0, 'partial/HunterArmor.png', 'Épaulettes du chasseur'),
(100, 3, 0, 'partial/HunterArmor.png', 'Chemise du chasseur'),
(101, 4, 0, 'partial/HunterArmor.png', 'Ceinture du chasseur'),
(102, 5, 0, 'partial/HunterArmor.png', 'Bracelets du chasseur'),
(103, 6, 0, 'partial/HunterArmor.png', 'Bottes du chasseur'),
(104, 7, 0, 'HunterSword.png', 'Couteau du chasseur'),
(105, 1, 1, 'ManticoreHelm.png', 'Chapeau du manticore'),
(106, 2, 1, 'partial/ManticoreArmor.png', 'Spallières du manticore'),
(107, 3, 1, 'partial/ManticoreArmor.png', 'Plastron du manticore'),
(108, 4, 1, 'partial/ManticoreArmor.png', 'Ceinture du manticore'),
(109, 5, 1, 'partial/ManticoreArmor.png', 'Gants du manticore'),
(110, 6, 1, 'partial/ManticoreArmor.png', 'Bottes du manticore'),
(111, 7, 1, 'ManticoreSword.png', 'Épée du manticore'),
(112, 1, 1, 'RoyalHelm.png', 'Chapeau royal'),
(113, 2, 1, 'partial/RoyalArmor.png', 'Épaulettes royales'),
(114, 3, 1, 'partial/RoyalArmor.png', 'Plastron royale'),
(115, 4, 1, 'partial/RoyalArmor.png', 'Ceinture royale'),
(116, 5, 1, 'partial/RoyalArmor.png', 'Manches royales'),
(117, 6, 1, 'partial/RoyalArmor.png', 'Bottes royales'),
(118, 7, 1, 'RoyalSword.png', 'Épée royale'),
(119, 1, 0, 'VikingHelm.png', 'Casque du viking'),
(120, 2, 0, 'partial/VikingArmor.png', 'Spallières du viking'),
(121, 3, 0, 'partial/VikingArmor.png', 'Chemise du viking'),
(122, 4, 0, 'partial/VikingArmor.png', 'Ceinture du viking'),
(123, 5, 0, 'partial/VikingArmor.png', 'Gants du viking'),
(124, 6, 0, 'partial/VikingArmor.png', 'Bottes du viking'),
(125, 7, 0, 'VikingSword.png', 'Hache du viking'),
(126, 1, 1, 'GoldLionHelm.png', 'Casque du lion d\'or'),
(127, 2, 1, 'GoldLionArmor.png', 'Spallières du lion d\'or'),
(128, 3, 1, 'GoldLionArmor.png', 'Chemise du lion d\'or'),
(129, 4, 1, 'GoldLionArmor.png', 'Ceinture du lion d\'or'),
(130, 5, 1, 'GoldLionArmor.png', 'Gants du lion d\'or'),
(131, 6, 1, 'GoldLionArmor.png', 'Bottes du lion d\'or'),
(132, 7, 1, 'GoldLionSword.png', 'Hache du lion d\'or'),
(133, 1, 0, 'HalberdierHelm.png', 'Casque du hallebardier'),
(134, 2, 0, 'HalberdierArmor.png', 'Épaulettes du hallebardier'),
(135, 3, 0, 'HalberdierArmor.png', 'Plastron du hallebardier'),
(136, 4, 0, 'HalberdierArmor.png', 'Ceinture du hallebardier'),
(137, 5, 0, 'HalberdierArmor.png', 'Gants du hallebardier'),
(138, 6, 0, 'HalberdierArmor.png', 'Bottes du hallebardier'),
(139, 7, 0, 'HalberdierSword.png', 'Hallebarde'),
(140, 1, 1, 'LandsknechtHelm.png', 'Casque du lansquenet'),
(141, 2, 1, 'LandsknechtArmor.png', 'Spallières du lansquenet'),
(142, 3, 1, 'LandsknechtArmor.png', 'Plastron du lansquenet'),
(143, 4, 1, 'LandsknechtArmor.png', 'Ceinture du lansquenet'),
(144, 5, 1, 'LandsknechtArmor.png', 'Gants du lansquenet'),
(145, 6, 1, 'LandsknechtArmor.png', 'Bottes du lansquenet'),
(146, 7, 1, 'LandsknechtSword.png', 'Masse d\'arme du lansquenet'),
(147, 1, 1, 'MarauderHelm.png', 'Masque du maraudeur'),
(148, 2, 1, 'MarauderArmor.png', 'Épaulettes du maraudeur'),
(149, 3, 1, 'MarauderArmor.png', 'Veste du maraudeur'),
(150, 4, 1, 'MarauderArmor.png', 'Ceinture du maraudeur'),
(151, 5, 1, 'MarauderArmor.png', 'Gants du maraudeur'),
(152, 6, 1, 'MarauderArmor.png', 'Bottes du maraudeur'),
(153, 7, 1, 'MarauderSword.png', 'Épée du maraudeur'),
(154, 1, 1, 'MountainHelm.png', 'Casque de la montagne'),
(155, 2, 1, 'MountainArmor.png', 'Spallières de la montagne'),
(156, 3, 1, 'MountainArmor.png', 'Veste de la montagne'),
(157, 4, 1, 'MountainArmor.png', 'Ceinture de la montagne'),
(158, 5, 1, 'MountainArmor.png', 'Gants de la montagne'),
(159, 6, 1, 'MontainArmor.png', 'Bottes de la montagne'),
(160, 7, 1, 'MountainSword.png', 'Épée de la montagne'),
(161, 1, 0, 'PathfinderHelm.png', 'Capuche de l\'éclaireur'),
(162, 2, 0, 'PathfinderArmor.png', 'Épaulettes de l\'éclaireur'),
(163, 3, 0, 'PathfinderArmor.png', 'Veste de l\'éclaireur'),
(164, 4, 0, 'PathfinderArmor.png', 'Ceinture de l\'éclaireur'),
(165, 5, 0, 'PathfinderArmor.png', 'Gants de l\'éclaireur'),
(166, 6, 0, 'PathfinderArmor.png', 'Bottes de l\'éclaireur'),
(167, 7, 0, 'PathfinderSword.png', 'Bâton de l\'éclaireur'),
(168, 1, 1, 'RenegateHelm.png', 'Capuche du renégat'),
(169, 2, 1, 'RenegateArmor.png', 'Épaulettes du renégat'),
(170, 4, 1, 'RenegateArmor.png', 'Ceinture du renégat'),
(171, 5, 1, 'RenegateArmor.png', 'Gants du renégat'),
(172, 6, 1, 'RenegateArmor.png', 'Bottes du renégat'),
(173, 7, 1, 'RenegateSword.png', 'Dague du renégat');

-- --------------------------------------------------------

--
-- Structure de la table `stuff_type`
--

CREATE TABLE `stuff_type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `stuff_type`
--

INSERT INTO `stuff_type` (`id`, `name`) VALUES
(1, 'Helmet'),
(2, 'Shoulders'),
(3, 'Chest'),
(4, 'Belt'),
(5, 'Hands'),
(6, 'Legs'),
(7, 'Weapon');

-- --------------------------------------------------------

--
-- Structure de la table `weapon`
--

CREATE TABLE `weapon` (
  `id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `damages` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stats` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `weapon`
--

INSERT INTO `weapon` (`id`, `element_id`, `name`, `damages`, `image`, `stats`) VALUES
(2, 1, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:6;}', 'none', 'a:0:{}'),
(5, 5, 'monsterWeapon', 'a:2:{i:0;d:1;i:1;d:9;}', 'none', 'a:0:{}'),
(7, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(10, 5, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(14, 4, 'monsterWeapon', 'a:2:{i:0;d:1;i:1;d:6;}', 'none', 'a:0:{}'),
(16, 4, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(20, 4, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:6;}', 'none', 'a:0:{}'),
(25, 4, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(28, 5, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(29, 3, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:4;}', 'none', 'a:0:{}'),
(30, 5, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:8;}', 'none', 'a:0:{}'),
(32, 2, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:7;}', 'none', 'a:0:{}'),
(33, 2, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:8;}', 'none', 'a:0:{}'),
(34, 1, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(35, 2, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:8;}', 'none', 'a:0:{}'),
(36, 4, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:7;}', 'none', 'a:0:{}'),
(40, 1, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(41, 1, 'monsterWeapon', 'a:2:{i:0;d:0;i:1;d:6;}', 'none', 'a:0:{}'),
(42, 5, 'monsterWeapon', 'a:2:{i:0;d:8;i:1;d:9;}', 'none', 'a:0:{}'),
(46, 4, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(47, 5, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:5;}', 'none', 'a:0:{}'),
(48, 1, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:8;}', 'none', 'a:0:{}'),
(70, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(71, 5, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:7;}', 'none', 'a:0:{}'),
(72, 2, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:11;}', 'none', 'a:0:{}'),
(104, 1, 'monsterWeapon', 'a:2:{i:0;d:1;i:1;d:6;}', 'none', 'a:0:{}'),
(105, 4, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:8;}', 'none', 'a:0:{}'),
(106, 4, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(107, 1, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:8;}', 'none', 'a:0:{}'),
(108, 3, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:10;}', 'none', 'a:0:{}'),
(109, 4, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(110, 2, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:10;}', 'none', 'a:0:{}'),
(111, 3, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:8;}', 'none', 'a:0:{}'),
(112, 5, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(113, 3, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:8;}', 'none', 'a:0:{}'),
(114, 3, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:10;}', 'none', 'a:0:{}'),
(124, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(125, 1, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:8;}', 'none', 'a:0:{}'),
(126, 5, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:8;}', 'none', 'a:0:{}'),
(139, 5, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(140, 2, 'monsterWeapon', 'a:2:{i:0;d:1;i:1;d:7;}', 'none', 'a:0:{}'),
(141, 2, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:12;}', 'none', 'a:0:{}'),
(172, 5, 'monsterWeapon', 'a:2:{i:0;d:32;i:1;d:36;}', 'none', 'a:0:{}'),
(173, 2, 'monsterWeapon', 'a:2:{i:0;d:62;i:1;d:67;}', 'none', 'a:0:{}'),
(174, 4, 'monsterWeapon', 'a:2:{i:0;d:83;i:1;d:86;}', 'none', 'a:0:{}'),
(187, 5, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(188, 4, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:6;}', 'none', 'a:0:{}'),
(189, 2, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:8;}', 'none', 'a:0:{}'),
(196, 2, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(197, 2, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:10;}', 'none', 'a:0:{}'),
(198, 3, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:8;}', 'none', 'a:0:{}'),
(202, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(203, 4, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:6;}', 'none', 'a:0:{}'),
(204, 5, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:12;}', 'none', 'a:0:{}'),
(208, 1, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(209, 1, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:6;}', 'none', 'a:0:{}'),
(210, 3, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:9;}', 'none', 'a:0:{}'),
(334, 4, 'monsterWeapon', 'a:2:{i:0;d:10;i:1;d:15;}', 'none', 'a:0:{}'),
(335, 1, 'monsterWeapon', 'a:2:{i:0;d:15;i:1;d:16;}', 'none', 'a:0:{}'),
(336, 4, 'monsterWeapon', 'a:2:{i:0;d:22;i:1;d:25;}', 'none', 'a:0:{}'),
(415, 4, 'monsterWeapon', 'a:2:{i:0;d:12;i:1;d:18;}', 'none', 'a:0:{}'),
(416, 2, 'monsterWeapon', 'a:2:{i:0;d:21;i:1;d:24;}', 'none', 'a:0:{}'),
(417, 3, 'monsterWeapon', 'a:2:{i:0;d:25;i:1;d:29;}', 'none', 'a:0:{}'),
(424, 1, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(425, 1, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:9;}', 'none', 'a:0:{}'),
(426, 3, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:7;}', 'none', 'a:0:{}'),
(430, 4, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(431, 1, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:8;}', 'none', 'a:0:{}'),
(432, 4, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:8;}', 'none', 'a:0:{}'),
(433, 2, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(434, 4, 'monsterWeapon', 'a:2:{i:0;d:1;i:1;d:4;}', 'none', 'a:0:{}'),
(435, 2, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:9;}', 'none', 'a:0:{}'),
(448, 3, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:15;}', 'none', 'a:0:{}'),
(449, 1, 'monsterWeapon', 'a:2:{i:0;d:14;i:1;d:17;}', 'none', 'a:0:{}'),
(450, 3, 'monsterWeapon', 'a:2:{i:0;d:21;i:1;d:27;}', 'none', 'a:0:{}'),
(454, 5, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(455, 2, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:9;}', 'none', 'a:0:{}'),
(456, 4, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:8;}', 'none', 'a:0:{}'),
(475, 1, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:8;}', 'none', 'a:0:{}'),
(476, 2, 'monsterWeapon', 'a:2:{i:0;d:11;i:1;d:16;}', 'none', 'a:0:{}'),
(477, 1, 'monsterWeapon', 'a:2:{i:0;d:12;i:1;d:18;}', 'none', 'a:0:{}'),
(490, 2, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:13;}', 'none', 'a:0:{}'),
(491, 2, 'monsterWeapon', 'a:2:{i:0;d:13;i:1;d:16;}', 'none', 'a:0:{}'),
(492, 4, 'monsterWeapon', 'a:2:{i:0;d:20;i:1;d:26;}', 'none', 'a:0:{}'),
(493, 5, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(494, 1, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:8;}', 'none', 'a:0:{}'),
(495, 4, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:8;}', 'none', 'a:0:{}'),
(496, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(497, 4, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:7;}', 'none', 'a:0:{}'),
(498, 2, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:11;}', 'none', 'a:0:{}'),
(586, 3, 'monsterWeapon', 'a:2:{i:0;d:13;i:1;d:15;}', 'none', 'a:0:{}'),
(587, 4, 'monsterWeapon', 'a:2:{i:0;d:15;i:1;d:18;}', 'none', 'a:0:{}'),
(588, 5, 'monsterWeapon', 'a:2:{i:0;d:27;i:1;d:30;}', 'none', 'a:0:{}'),
(718, 4, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:5;}', 'none', 'a:0:{}'),
(719, 2, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:9;}', 'none', 'a:0:{}'),
(720, 3, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:9;}', 'none', 'a:0:{}'),
(745, 2, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:10;}', 'none', 'a:0:{}'),
(746, 4, 'monsterWeapon', 'a:2:{i:0;d:14;i:1;d:15;}', 'none', 'a:0:{}'),
(747, 3, 'monsterWeapon', 'a:2:{i:0;d:14;i:1;d:17;}', 'none', 'a:0:{}'),
(760, 3, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:6;}', 'none', 'a:0:{}'),
(761, 2, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:9;}', 'none', 'a:0:{}'),
(762, 3, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:9;}', 'none', 'a:0:{}'),
(772, 5, 'monsterWeapon', 'a:2:{i:0;d:2;i:1;d:5;}', 'none', 'a:0:{}'),
(773, 2, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:8;}', 'none', 'a:0:{}'),
(774, 1, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:9;}', 'none', 'a:0:{}'),
(778, 3, 'La super hache', 'a:2:{i:0;d:5;i:1;d:9;}', 'Stoccata.png', 'a:5:{i:0;i:0;i:1;i:0;i:2;i:5;i:3;i:3;i:4;i:0;}'),
(788, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(789, 4, 'monsterWeapon', 'a:2:{i:0;d:1;i:1;d:2;}', 'none', 'a:0:{}'),
(790, 4, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:4;}', 'none', 'a:0:{}'),
(869, 4, 'monsterWeapon', 'a:2:{i:0;d:11;i:1;d:13;}', 'none', 'a:0:{}'),
(870, 3, 'monsterWeapon', 'a:2:{i:0;d:24;i:1;d:24;}', 'none', 'a:0:{}'),
(871, 1, 'monsterWeapon', 'a:2:{i:0;d:34;i:1;d:35;}', 'none', 'a:0:{}'),
(933, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(934, 2, 'monsterWeapon', 'a:2:{i:0;d:2;i:1;d:5;}', 'none', 'a:0:{}'),
(935, 3, 'monsterWeapon', 'a:2:{i:0;d:1;i:1;d:5;}', 'none', 'a:0:{}'),
(992, 2, 'monsterWeapon', 'a:2:{i:0;d:14;i:1;d:14;}', 'none', 'a:0:{}'),
(993, 4, 'monsterWeapon', 'a:2:{i:0;d:21;i:1;d:22;}', 'none', 'a:0:{}'),
(994, 3, 'monsterWeapon', 'a:2:{i:0;d:35;i:1;d:38;}', 'none', 'a:0:{}'),
(1013, 1, 'monsterWeapon', 'a:2:{i:0;d:0;i:1;d:2;}', 'none', 'a:0:{}'),
(1014, 5, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:7;}', 'none', 'a:0:{}'),
(1015, 5, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:7;}', 'none', 'a:0:{}'),
(1016, 1, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(1017, 3, 'monsterWeapon', 'a:2:{i:0;d:0;i:1;d:1;}', 'none', 'a:0:{}'),
(1018, 5, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:6;}', 'none', 'a:0:{}'),
(1031, 5, 'monsterWeapon', 'a:2:{i:0;d:1;i:1;d:3;}', 'none', 'a:0:{}'),
(1032, 4, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:8;}', 'none', 'a:0:{}'),
(1033, 4, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:7;}', 'none', 'a:0:{}'),
(1043, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(1052, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(1053, 3, 'monsterWeapon', 'a:2:{i:0;d:1;i:1;d:3;}', 'none', 'a:0:{}'),
(1054, 4, 'monsterWeapon', 'a:2:{i:0;d:2;i:1;d:4;}', 'none', 'a:0:{}'),
(1068, 5, 'monsterWeapon', 'a:2:{i:0;d:51;i:1;d:55;}', 'none', 'a:0:{}'),
(1069, 1, 'monsterWeapon', 'a:2:{i:0;d:89;i:1;d:91;}', 'none', 'a:0:{}'),
(1070, 2, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(1085, 3, 'monsterWeapon', 'a:2:{i:0;d:57;i:1;d:59;}', 'none', 'a:0:{}'),
(1086, 4, 'monsterWeapon', 'a:2:{i:0;d:50;i:1;d:52;}', 'none', 'a:0:{}'),
(1087, 2, 'monsterWeapon', 'a:2:{i:0;d:109;i:1;d:112;}', 'none', 'a:0:{}'),
(1088, 5, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(1089, 4, 'monsterWeapon', 'a:2:{i:0;d:-1;i:1;d:3;}', 'none', 'a:0:{}'),
(1090, 4, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:5;}', 'none', 'a:0:{}'),
(1115, 2, 'monsterWeapon', 'a:2:{i:0;d:2;i:1;d:5;}', 'none', 'a:0:{}'),
(1116, 4, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:7;}', 'none', 'a:0:{}'),
(1117, 3, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:6;}', 'none', 'a:0:{}'),
(1154, 3, 'monsterWeapon', 'a:2:{i:0;d:10;i:1;d:12;}', 'none', 'a:0:{}'),
(1155, 5, 'monsterWeapon', 'a:2:{i:0;d:17;i:1;d:20;}', 'none', 'a:0:{}'),
(1156, 1, 'monsterWeapon', 'a:2:{i:0;d:24;i:1;d:26;}', 'none', 'a:0:{}'),
(1181, 2, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:6;}', 'none', 'a:0:{}'),
(1182, 3, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:8;}', 'none', 'a:0:{}'),
(1183, 2, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:8;}', 'none', 'a:0:{}'),
(1193, 4, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(1194, 1, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:3;}', 'none', 'a:0:{}'),
(1195, 4, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:4;}', 'none', 'a:0:{}'),
(1241, 2, 'monsterWeapon', 'a:2:{i:0;d:3;i:1;d:5;}', 'none', 'a:0:{}'),
(1242, 1, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:7;}', 'none', 'a:0:{}'),
(1243, 3, 'monsterWeapon', 'a:2:{i:0;d:12;i:1;d:13;}', 'none', 'a:0:{}'),
(1260, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(1262, 4, 'monsterWeapon', 'a:2:{i:0;d:0;i:1;d:2;}', 'none', 'a:0:{}'),
(1264, 1, 'monsterWeapon', 'a:2:{i:0;d:2;i:1;d:5;}', 'none', 'a:0:{}'),
(1280, 3, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:8;}', 'none', 'a:0:{}'),
(1281, 2, 'monsterWeapon', 'a:2:{i:0;d:9;i:1;d:10;}', 'none', 'a:0:{}'),
(1282, 2, 'monsterWeapon', 'a:2:{i:0;d:9;i:1;d:11;}', 'none', 'a:0:{}'),
(1382, 3, 'monsterWeapon', 'a:2:{i:0;d:22;i:1;d:22;}', 'none', 'a:0:{}'),
(1383, 3, 'monsterWeapon', 'a:2:{i:0;d:46;i:1;d:49;}', 'none', 'a:0:{}'),
(1384, 5, 'monsterWeapon', 'a:2:{i:0;d:48;i:1;d:52;}', 'none', 'a:0:{}'),
(1556, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(1557, 5, 'monsterWeapon', 'a:2:{i:0;d:1;i:1;d:2;}', 'none', 'a:0:{}'),
(1558, 1, 'monsterWeapon', 'a:2:{i:0;d:2;i:1;d:4;}', 'none', 'a:0:{}'),
(1583, 2, 'monsterWeapon', 'a:2:{i:0;d:4;i:1;d:7;}', 'none', 'a:0:{}'),
(1584, 1, 'monsterWeapon', 'a:2:{i:0;d:6;i:1;d:8;}', 'none', 'a:0:{}'),
(1585, 3, 'monsterWeapon', 'a:2:{i:0;d:12;i:1;d:15;}', 'none', 'a:0:{}'),
(1601, 4, 'monsterWeapon', 'a:2:{i:0;d:41;i:1;d:44;}', 'none', 'a:0:{}'),
(1602, 3, 'monsterWeapon', 'a:2:{i:0;d:37;i:1;d:39;}', 'none', 'a:0:{}'),
(1603, 1, 'monsterWeapon', 'a:2:{i:0;d:80;i:1;d:82;}', 'none', 'a:0:{}'),
(1646, 2, 'monsterWeapon', 'a:2:{i:0;d:5;i:1;d:5;}', 'none', 'a:0:{}'),
(1647, 1, 'monsterWeapon', 'a:2:{i:0;d:8;i:1;d:9;}', 'none', 'a:0:{}'),
(1648, 4, 'monsterWeapon', 'a:2:{i:0;d:10;i:1;d:12;}', 'none', 'a:0:{}'),
(1682, 1, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:7;}', 'none', 'a:0:{}'),
(1683, 4, 'monsterWeapon', 'a:2:{i:0;d:11;i:1;d:15;}', 'none', 'a:0:{}'),
(1684, 4, 'monsterWeapon', 'a:2:{i:0;d:11;i:1;d:13;}', 'none', 'a:0:{}'),
(1685, 3, 'monsterWeapon', 'a:2:{i:0;i:1;i:1;i:1;}', 'none', 'a:0:{}'),
(1937, 3, 'monsterWeapon', 'a:2:{i:0;d:43;i:1;d:44;}', 'none', 'a:0:{}'),
(1938, 3, 'monsterWeapon', 'a:2:{i:0;d:46;i:1;d:48;}', 'none', 'a:0:{}'),
(1939, 5, 'monsterWeapon', 'a:2:{i:0;d:50;i:1;d:52;}', 'none', 'a:0:{}'),
(2000, 2, 'monsterWeapon', 'a:2:{i:0;d:11;i:1;d:13;}', 'none', 'a:0:{}'),
(2001, 2, 'monsterWeapon', 'a:2:{i:0;d:15;i:1;d:17;}', 'none', 'a:0:{}'),
(2002, 5, 'monsterWeapon', 'a:2:{i:0;d:19;i:1;d:20;}', 'none', 'a:0:{}'),
(2042, 2, 'monsterWeapon', 'a:2:{i:0;d:7;i:1;d:9;}', 'none', 'a:0:{}'),
(2043, 1, 'monsterWeapon', 'a:2:{i:0;d:24;i:1;d:25;}', 'none', 'a:0:{}'),
(2044, 3, 'monsterWeapon', 'a:2:{i:0;d:21;i:1;d:24;}', 'none', 'a:0:{}'),
(2060, 2, 'monsterWeapon', 'a:2:{i:0;d:2;i:1;d:6;}', 'none', 'a:0:{}'),
(2061, 2, 'monsterWeapon', 'a:2:{i:0;d:2;i:1;d:5;}', 'none', 'a:0:{}'),
(2062, 1, 'monsterWeapon', 'a:2:{i:0;d:12;i:1;d:14;}', 'none', 'a:0:{}');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_51CE6E865E237E06` (`name`),
  ADD UNIQUE KEY `UNIQ_51CE6E86C08F6595` (`appearance_id`),
  ADD UNIQUE KEY `UNIQ_51CE6E8695B82273` (`weapon_id`),
  ADD UNIQUE KEY `UNIQ_51CE6E864D4A700C` (`helmet_id`),
  ADD UNIQUE KEY `UNIQ_51CE6E86180955AC` (`chest_id`),
  ADD UNIQUE KEY `UNIQ_51CE6E86F8E3ADFE` (`belt_id`),
  ADD UNIQUE KEY `UNIQ_51CE6E86F52B8FC1` (`hands_id`),
  ADD UNIQUE KEY `UNIQ_51CE6E8642DBDF0B` (`legs_id`),
  ADD UNIQUE KEY `UNIQ_51CE6E869BD2D865` (`shoulders_id`);

--
-- Index pour la table `hero_appearance`
--
ALTER TABLE `hero_appearance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_700B92756E59D40D` (`race_id`);

--
-- Index pour la table `monster`
--
ALTER TABLE `monster`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_245EC6F4C08F6595` (`appearance_id`),
  ADD UNIQUE KEY `UNIQ_245EC6F495B82273` (`weapon_id`);

--
-- Index pour la table `monster_appearance`
--
ALTER TABLE `monster_appearance`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4317F817C5FF1223` (`monster_id`),
  ADD KEY `IDX_4317F81745B0BCD` (`hero_id`);

--
-- Index pour la table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DA6FBBAFE0764845` (`bonus_element_id`);

--
-- Index pour la table `stuff`
--
ALTER TABLE `stuff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5941F83E5DA0FB8` (`template_id`),
  ADD KEY `IDX_5941F83E45B0BCD` (`hero_id`),
  ADD KEY `IDX_5941F83E1F1F2A24` (`element_id`);

--
-- Index pour la table `stuff_template`
--
ALTER TABLE `stuff_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BA2069AEC54C8C93` (`type_id`);

--
-- Index pour la table `stuff_type`
--
ALTER TABLE `stuff_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `weapon`
--
ALTER TABLE `weapon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6933A7E61F1F2A24` (`element_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `element`
--
ALTER TABLE `element`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `hero_appearance`
--
ALTER TABLE `hero_appearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT pour la table `monster`
--
ALTER TABLE `monster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2056;

--
-- AUTO_INCREMENT pour la table `monster_appearance`
--
ALTER TABLE `monster_appearance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2056;

--
-- AUTO_INCREMENT pour la table `quest`
--
ALTER TABLE `quest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2044;

--
-- AUTO_INCREMENT pour la table `race`
--
ALTER TABLE `race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `stuff`
--
ALTER TABLE `stuff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT pour la table `stuff_template`
--
ALTER TABLE `stuff_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT pour la table `stuff_type`
--
ALTER TABLE `stuff_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `weapon`
--
ALTER TABLE `weapon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2063;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `hero`
--
ALTER TABLE `hero`
  ADD CONSTRAINT `FK_51CE6E86180955AC` FOREIGN KEY (`chest_id`) REFERENCES `stuff` (`id`),
  ADD CONSTRAINT `FK_51CE6E8642DBDF0B` FOREIGN KEY (`legs_id`) REFERENCES `stuff` (`id`),
  ADD CONSTRAINT `FK_51CE6E864D4A700C` FOREIGN KEY (`helmet_id`) REFERENCES `stuff` (`id`),
  ADD CONSTRAINT `FK_51CE6E8695B82273` FOREIGN KEY (`weapon_id`) REFERENCES `stuff` (`id`),
  ADD CONSTRAINT `FK_51CE6E869BD2D865` FOREIGN KEY (`shoulders_id`) REFERENCES `stuff` (`id`),
  ADD CONSTRAINT `FK_51CE6E86C08F6595` FOREIGN KEY (`appearance_id`) REFERENCES `hero_appearance` (`id`),
  ADD CONSTRAINT `FK_51CE6E86F52B8FC1` FOREIGN KEY (`hands_id`) REFERENCES `stuff` (`id`),
  ADD CONSTRAINT `FK_51CE6E86F8E3ADFE` FOREIGN KEY (`belt_id`) REFERENCES `stuff` (`id`);

--
-- Contraintes pour la table `hero_appearance`
--
ALTER TABLE `hero_appearance`
  ADD CONSTRAINT `FK_700B92756E59D40D` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`);

--
-- Contraintes pour la table `monster`
--
ALTER TABLE `monster`
  ADD CONSTRAINT `FK_245EC6F495B82273` FOREIGN KEY (`weapon_id`) REFERENCES `weapon` (`id`),
  ADD CONSTRAINT `FK_245EC6F4C08F6595` FOREIGN KEY (`appearance_id`) REFERENCES `monster_appearance` (`id`);

--
-- Contraintes pour la table `quest`
--
ALTER TABLE `quest`
  ADD CONSTRAINT `FK_4317F81745B0BCD` FOREIGN KEY (`hero_id`) REFERENCES `hero` (`id`),
  ADD CONSTRAINT `FK_4317F817C5FF1223` FOREIGN KEY (`monster_id`) REFERENCES `monster` (`id`);

--
-- Contraintes pour la table `race`
--
ALTER TABLE `race`
  ADD CONSTRAINT `FK_DA6FBBAFE0764845` FOREIGN KEY (`bonus_element_id`) REFERENCES `element` (`id`);

--
-- Contraintes pour la table `stuff`
--
ALTER TABLE `stuff`
  ADD CONSTRAINT `FK_5941F83E1F1F2A24` FOREIGN KEY (`element_id`) REFERENCES `element` (`id`),
  ADD CONSTRAINT `FK_5941F83E45B0BCD` FOREIGN KEY (`hero_id`) REFERENCES `hero` (`id`),
  ADD CONSTRAINT `FK_5941F83E5DA0FB8` FOREIGN KEY (`template_id`) REFERENCES `stuff_template` (`id`);

--
-- Contraintes pour la table `stuff_template`
--
ALTER TABLE `stuff_template`
  ADD CONSTRAINT `FK_BA2069AEC54C8C93` FOREIGN KEY (`type_id`) REFERENCES `stuff_type` (`id`);

--
-- Contraintes pour la table `weapon`
--
ALTER TABLE `weapon`
  ADD CONSTRAINT `FK_6933A7E61F1F2A24` FOREIGN KEY (`element_id`) REFERENCES `element` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
