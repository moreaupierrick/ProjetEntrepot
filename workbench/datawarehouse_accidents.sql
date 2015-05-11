-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 08 Mai 2015 à 14:32
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `datawarehouse_accidents`
--

-- --------------------------------------------------------

--
-- Structure de la table `accident`
--

CREATE TABLE IF NOT EXISTS `accident` (
  `numac` int(11) NOT NULL,
  `com` int(11) NOT NULL,
  `catr` int(11) NOT NULL,
  `catv` int(11) NOT NULL,
  `nbMort` int(11) NOT NULL,
  `nbBlesseGrave` int(11) NOT NULL,
  `nbBlesseLeger` int(11) NOT NULL,
  `nbIndemes` int(11) NOT NULL,
  PRIMARY KEY (`numac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cp`
--

CREATE TABLE IF NOT EXISTS `cp` (
  `cp` int(11) NOT NULL,
  `dep` int(11) NOT NULL,
  PRIMARY KEY (`cp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `route`
--

CREATE TABLE IF NOT EXISTS `route` (
  `catr` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`catr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `route`
--

INSERT INTO `route` (`catr`, `type`) VALUES
(1, 'Autoroute'),
(2, 'Route nationale'),
(3, 'Route Departementale'),
(4, 'Voie Communale'),
(5, 'Hors Reseau Public'),
(6, 'Parking'),
(9, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `catv` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`catv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`catv`, `type`) VALUES
(1, 'Bicyclette'),
(2, 'Cyclomoteur < 50cm3'),
(3, 'Voiturette'),
(4, 'Scooter Immatriculé'),
(5, 'Motocyclette'),
(6, 'Side-car'),
(7, 'VL Seul'),
(8, 'VL + Caravane'),
(9, 'VL + Remorque'),
(10, 'Vehicule Utilitaire'),
(11, 'Vehicule Utilitaire + Caravane'),
(12, 'Vehicule Utilitaire + Remorque'),
(13, 'Poids Lourd Seul'),
(14, 'Poids Lourds > 7,5T'),
(15, 'Poids Lourds + Remorque'),
(16, 'Tracteur'),
(17, 'Tracteur + Semi-remorque'),
(18, 'Transport en commun'),
(19, 'Tramway'),
(20, 'Engin special'),
(21, 'Tracteur agricole'),
(30, 'Scooter < 50cm3'),
(31, 'Moto < 125cm3'),
(32, 'Scooter < 125cm3'),
(33, 'Moto > 125cm3'),
(34, 'Scooter > 125cm3'),
(35, 'Quad leger'),
(36, 'Quad Lourd'),
(37, 'Autobus'),
(38, 'Autocar'),
(39, 'Train'),
(40, 'Tramway'),
(90, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE IF NOT EXISTS `ville` (
  `com` int(11) NOT NULL,
  `cp` int(11) NOT NULL,
  PRIMARY KEY (`com`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
