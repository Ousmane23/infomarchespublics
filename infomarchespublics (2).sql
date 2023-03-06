-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 21 juin 2022 à 09:58
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `infomarchespublics`
--

-- --------------------------------------------------------

--
-- Structure de la table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', '$2y$12$bp2VPp7MdVMnzeabbv/ltuQWI2uvBiE/JMkoTrRwHTY8z.SuTrosy', 'info@phpscriptsonline.com', 1, '2018-05-27 17:51:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE IF NOT EXISTS `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(2, 'APPEL OFFRE (AO)', 'APPEL OFFRE (AO)', '2018-06-06 10:28:09', '2018-06-30 18:41:07', 1),
(3, 'CONSULTATION (consultation)', 'CONSULTATION (consultation)', '2018-06-06 10:35:09', '2018-06-14 11:11:55', 1),
(5, 'PRESTATION DE SERVICE (PS)', 'PRESTATION DE SERVICE (PS)', '2018-06-14 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'Appel Ã  manifestation intÃ©rÃªt', 'Appel Ã  manifestation intÃ©rÃªt', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'DIVERS', 'AUTRES FORMATIONS ', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblcomments`
--

DROP TABLE IF EXISTS `tblcomments`;
CREATE TABLE IF NOT EXISTS `tblcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblpages`
--

DROP TABLE IF EXISTS `tblpages`;
CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'A Propos', '<h2 style=\"margin-left:25.5pt;text-align:justify;line-height:\r\nnormal\"><b><i><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,serif;mso-fareast-font-family:&quot;Times New Roman&quot;\">&nbsp; &nbsp; &nbsp; </span><span style=\"font-size: 12pt;\"><font face=\"Times New Roman\">&nbsp;</font></span></i></b><b><i><span style=\"font-size: 12pt;\"><font face=\"Times New Roman\">Notre\r\nplateforme ABCD Formation est un site web dâ€™annonce dâ€™offre de formation\r\nmultidisciplinaire. Cette plateforme web aura pour but dâ€™informer les jeunes\r\ndiplÃ´mÃ©s, Ã©tudiants, Ã©lÃ¨ves, chÃ´meurs et les travailleurs de la publication en ligne&nbsp; des offres de formation spÃ©cialisÃ©es, continues\r\net certifiÃ©es&nbsp; dans&nbsp; tous les domaines, en vue de saisir les\r\nopportunitÃ©s de emploi Ã  temps plein lancÃ©es par les entreprises, cabinets de formation,\r\ninstitutions privÃ©es et parapubliques. Cette plateforme servira de pont dâ€™une\r\npart pour les internautes qui pourront postuler en ligne leurs candidatures et\r\ndâ€™autre part pour les formateurs de dÃ©poser leurs offres de formation via\r\nlâ€™application web.</font></span></i></b></h2><p class=\"MsoNormal\" style=\"margin-left:25.5pt;text-align:justify;line-height:\r\nnormal\"><o:p></o:p></p>', '2018-06-30 18:01:03', '2022-06-19 20:31:56'),
(2, 'contactus', 'Contacts', '<p><br></p><h1><b>Adresse :&nbsp; </b>Niamey - NIGER<br><b>TÃ©lÃ©phone : </b>+227 96 58 41 55<br><b>Email&nbsp; : </b>assamad87@gmail.com</h1>', '2018-06-30 18:01:36', '2021-12-14 15:08:56');

-- --------------------------------------------------------

--
-- Structure de la table `tblposts`
--

DROP TABLE IF EXISTS `tblposts`;
CREATE TABLE IF NOT EXISTS `tblposts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` date DEFAULT current_timestamp(),
  `PostEndDate` date DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `PostEndDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(7, 'Formation pour Ã©lÃ©ver des poules ', 3, 4, '<p>Une collaboration entre 10 &eacute;tablissements port&eacute;e par AgroCampus Ouest, un institut de formation dans les sciences agronomiques, agroalimentaires, horticoles et environnementales propose un cours en ligne gratuit sur l&rsquo;aviculture.</p>\r\n\r\n<p>Sous forme de MOOC, la formation est destin&eacute;e aux &eacute;tudiants de niveau bac+3 &agrave; bac+5, aux professionnels, et autres personnes int&eacute;ress&eacute;es par les sciences et productions animales et plus particuli&egrave;rement par l&rsquo;aviculture. Les participants doivent &ecirc;tre des ressortissants d&rsquo;un pays francophone.</p>\r\n\r\n<p>Le MOOC est compos&eacute; de 6 chapitres de 4 le&ccedil;ons.&nbsp;Il aborde de multiples dimensions de l&rsquo;aviculture, &agrave; savoir&nbsp;: l&rsquo;organisation des fili&egrave;res, la physiologie de l&rsquo;animal, le mode d&rsquo;&eacute;levage, la transformation des produits, les enjeux techniques, sanitaires et soci&eacute;taux.</p>\r\n\r\n<p>L&rsquo;objectif de ce cours est d&rsquo;am&eacute;liorer les pratiques li&eacute;es &agrave; l&rsquo;&eacute;levage de volaille en proposant des outils de formation innovants et attractifs. Il s&rsquo;agit &eacute;galement de faire conna&icirc;tre aux jeunes&nbsp;ce secteur en pleine croissance et porteur d&rsquo;emplois.</p>\r\n\r\n<p>La formation d&eacute;butera le 19 octobre et va s&rsquo;achever le 21 d&eacute;cembre 202</p>\r\n', '2018-06-30', '2022-06-01', '2022-06-19', 1, 'Formation-pour-Ã©lÃ©ver-des-poules-', 'ddc74d8b200b93c62f7ccfd4f22af761.png'),
(16, 'Illustrator ADOBE', 2, 10, '<p><B>Bienvenue</B> BNNN</p>', '2021-12-11', '2022-07-12', '2022-06-19', 1, 'Illustrator-ADOBE', '2de8e01abeb72c07c361438b30a3c508.jpg'),
(17, 'PROMO  FIN 2021 BONFEREY AUTO-ECOLE', 7, 13, '<p>Du 15 Janvier au 31 Janvier 2022 profitez de la promo pour la formation de permis de conduire cat&eacute;gorie B &agrave; prix forfaitaire de quarante-cinq mille (45 000) FCFA pour les le&ccedil;ons de code conduite.</p>\r\n\r\n<p><strong>NB </strong>: 400 places offertes</p>\r\n\r\n<p>Les inscriptions ont d&eacute;j&agrave; commenc&eacute;. Nous sommes situ&eacute;s au quartier DAR-ES-SALAM SUR LE GOUDRON NIAMEY NYALA A 100M DES FEUX OPTIQUES ET A BOBIEL 1erePOMPE</p>\r\n\r\n<p>Pi&egrave;ces &agrave; fournir:</p>\r\n\r\n<ul>\r\n	<li>Extrait l&#39;acte de naissance l&eacute;galis&eacute; ou Copie de la carte identit&eacute;</li>\r\n	<li>Certificat de r&eacute;sidence</li>\r\n	<li>04 photos identit&eacute;</li>\r\n</ul>\r\n\r\n<p>C&#39;est une bonne partie de&nbsp;</p>\r\n', '2021-12-17', '2022-01-31', '2022-06-19', 1, 'PROMO--FIN-2021-BONFEREY-AUTO-ECOLE', '05c027ca3135e8b8a61f63fbbbd8e85d.png'),
(18, 'ABC', 3, 5, '<p>l&#39;inscription&nbsp;</p>\r\n', '2021-12-18', '2022-06-22', NULL, 1, 'ABC', '2fa809dd1bb25f66525889abbfe37888.png'),
(19, 'DEF', 7, 13, '<p>L&#39;&eacute;cole&nbsp;</p>\r\n', '2021-12-18', '2022-06-21', NULL, 1, 'DEF', '218cd857646fc5ca3ff56d30a8e14950.gif'),
(20, 'Formation infographie', 2, 12, '<p>Dur&eacute;e: 07 au 16 Janvier 2022</p>\r\n\r\n<p>Vous &ecirc;tes &agrave; Niamey, vous voulez d&eacute;velopper vos comp&eacute;tences en technologie et augmenter vos chances de gagner un emploi, rendez vous &agrave; MAGAMA.</p>\r\n\r\n<p>Nous&nbsp; vous avons organis&eacute; des formations en:</p>\r\n\r\n<ol>\r\n	<li>En Infographie&nbsp;</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Cr&eacute;ation des affiches publicitaires</li>\r\n	<li>Conception de carte de voeux</li>\r\n	<li>Cr&eacute;ation de logo</li>\r\n	<li>De banderole et manipulation</li>\r\n</ul>\r\n', '2021-12-21', '2022-06-29', '2022-06-19', 1, 'Formation-infographie', '13269032c37a81d38881ddccf88212e0.jpg'),
(22, 'XYZ', 3, 4, 'FGHJJamadass', '2022-06-19', '2022-06-24', NULL, 1, 'XYZ', 'd715995f5d11bb8f486cb96cc5b1ea1e.png');

-- --------------------------------------------------------

--
-- Structure de la table `tblsubcategory`
--

DROP TABLE IF EXISTS `tblsubcategory`;
CREATE TABLE IF NOT EXISTS `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL,
  PRIMARY KEY (`SubCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Gestion', 'Gestion ', '2018-06-22 15:45:38', '0000-00-00 00:00:00', 1),
(4, 3, 'Elevages des poulets', 'Elevages des poulets\r\n\r\n', '2018-06-30 09:00:43', '0000-00-00 00:00:00', 1),
(5, 3, 'Pisiculture ', 'Pisiculture ', '2018-06-30 09:00:58', '0000-00-00 00:00:00', 1),
(6, 5, 'Gestion', 'Gestion', '2018-06-30 18:59:22', '0000-00-00 00:00:00', 0),
(7, 6, 'National', 'National', '2018-06-30 19:04:29', '0000-00-00 00:00:00', 1),
(8, 6, 'International', 'International', '2018-06-30 19:04:43', '0000-00-00 00:00:00', 1),
(9, 7, 'India', 'India', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1),
(10, 2, 'OUTILS BUREAUTIQUE MS OFFICE', 'Formation sur les logiciels bureautiques (MS Word, MS Excel & MS Publisher)', '2021-11-26 12:09:52', NULL, 1),
(11, 3, 'Pisciculture ', 'Pisciculture ', '2021-12-01 12:46:52', NULL, 0),
(12, 2, 'Programmation Web', 'Programmation Web', '2021-12-15 05:44:39', NULL, 1),
(13, 7, 'Auto Ã©cole', 'Auto Ã©cole', '2021-12-17 08:27:13', NULL, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
