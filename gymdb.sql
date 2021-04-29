-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  Dim 28 juin 2020 à 05:45
-- Version du serveur :  8.0.18
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
-- Base de données :  `gymdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('BOUJRAF', 'BOUJRAF');

-- --------------------------------------------------------

--
-- Structure de la table `checkout`
--

DROP TABLE IF EXISTS `checkout`;
CREATE TABLE IF NOT EXISTS `checkout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `VAT` varchar(40) NOT NULL,
  `Repair` varchar(40) NOT NULL,
  `RecepCash` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `checkout`
--

INSERT INTO `checkout` (`id`, `date`, `VAT`, `Repair`, `RecepCash`) VALUES
(1, '2020-03-01', '50 DH', '200 DH', '2000 DH '),
(2, '2020-04-01', '50 DH', '100 DH', '2000 DH '),
(3, '2020-05-01', '50 DH', '150 DH', '2000 DH ');

-- --------------------------------------------------------

--
-- Structure de la table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
CREATE TABLE IF NOT EXISTS `receptionist` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `id` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `status` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `receptionist`
--

INSERT INTO `receptionist` (`count`, `date`, `id`, `name`, `address`, `gender`, `age`, `phone`, `status`, `username`, `password`) VALUES
(1, '2020-06-25', '20-001', 'ali farhat', 'Av. hassan 2, Nador', 'Male', 27, '+212 66543 2187', 'Single', 'ali', 'ali');

-- --------------------------------------------------------

--
-- Structure de la table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE IF NOT EXISTS `subscriber` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `id` varchar(20) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(5) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `cni` varchar(15) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `amount` varchar(30) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `subscriber`
--

INSERT INTO `subscriber` (`count`, `date`, `id`, `firstname`, `lastname`, `gender`, `age`, `phone`, `cni`, `duration`, `amount`) VALUES
(1, '2020-06-25', '20-0001', 'yassin', 'zarouk', 'Male', 29, '+212 65432 1678', 'S488222', '2 Month', '800 DH'),
(2, '2020-06-27', '20-0002', 'sara', 'hakim', 'Female', 30, '+212656658931', 'S424515', '1 month', '200 DH');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
