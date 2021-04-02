-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 02 avr. 2021 à 13:18
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lesamisdelescalade`
--

-- --------------------------------------------------------

--
-- Structure de la table `climbingsite`
--

CREATE TABLE `climbingsite` (
  `id` int(11) NOT NULL,
  `description` mediumtext,
  `difficulty` int(11) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `official` bit(1) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `sector_amount` int(11) DEFAULT NULL,
  `way_amount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commentary`
--

CREATE TABLE `commentary` (
  `id` int(11) NOT NULL,
  `content` mediumtext,
  `climbing_site_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `is_accepted` bit(1) NOT NULL,
  `topo_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `topo`
--

CREATE TABLE `topo` (
  `id` int(11) NOT NULL,
  `available` bit(1) DEFAULT NULL,
  `description` mediumtext,
  `display_name` varchar(255) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `release_date` datetime DEFAULT NULL,
  `current_reservation_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `climbingsite`
--
ALTER TABLE `climbingsite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentary`
--
ALTER TABLE `commentary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKh1j5ofmofyqt0ympoyqi7b942` (`climbing_site_id`),
  ADD KEY `FKmt8mfvt56l7jnhuhadgau7fpx` (`user_id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKs6rhp8bjbn9p9imq1k5fcpb6a` (`topo_id`),
  ADD KEY `FKm4oimk0l1757o9pwavorj6ljg` (`user_id`);

--
-- Index pour la table `topo`
--
ALTER TABLE `topo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdafeyyrj6l2l3vpfoy46fl2yq` (`current_reservation_id`),
  ADD KEY `FKpurggp4l82two9ekgr11hx2qk` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
