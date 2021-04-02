-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 02 avr. 2021 à 14:09
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

--
-- Déchargement des données de la table `climbingsite`
--

INSERT INTO `climbingsite` (`id`, `description`, `difficulty`, `display_name`, `length`, `official`, `region`, `sector_amount`, `way_amount`) VALUES
(3, 'Ablon, c’est la falaise d’alpages, nichée à l’écart, dans un recoin sauvage et préservé en plein cœur du massif des Bornes. On est loin de la montagne à touristes, il n’y a plus aucun bruit de moteur... Là, sur le plateau des Glières, lieu célèbre pour la page d’histoire qui s’y est écrite au cours de la dernière guerre mondiale, où les résistants ont fui les occupants allemands, se trouve le Val d’Ablon, un joyau de falaise haut-savoyard encore inconnu il y a une vingtaine d’années. Sur ses fantastiques dalles grises très sculptées, où le rocher est beau partout, l’escalade présente une variété de styles avec prédominance de grandes envolées en 6b, 6c ou 7a, tout en continuité. On doit plus des deux tiers de ces fabuleuses lignes à Robert Durieux, équipeur motivé et amoureux des lieux depuis au moins trente ans. Autre atout de poids : le pied des voies s’ancre dans un alpage ombragé, moelleux et confortable, idéal pour un assurage serein ou des bambins remuants. Ablon, c’est le site majeur de Haute Savoie pour le cadre, la qualité des lignes et du rocher. Ambiance épicéas, oxygène, clarines et reblochon !', 2, 'Ablon', 4000, b'0', 6, 150, 400),
(4, 'Avec la commune de La Grave, Villar-d’Arêne est la seule commune du département des Hautes-Alpes située dans la vallée de la Romanche qui y prend d’ailleurs sa source. Les habitants, les Faranchins, en ayant racheté un certain nombre de libertés au Dauphiné, se sont eux-mêmes nommés les affranchis, un nom mué en Faranchins avec le temps.', 1, 'Arsine', 5740, b'1', 0, 180, 320),
(5, 'Cantobre est un village perché, petit détail qui est, à lui seul, de très bon augure. Ensuite, il est très beau, et même parmi les plus beaux de France, parfaitement restauré là-haut, sur son promontoire rocheux. Eh oui, vous avez bien lu, et qui dit promontoire rocheux dit falaise quelque part. Elle est là, juste en face, et c’est en la contemplant ainsi que son nom, la Brocante, prendra tout son sens. En effet, \"Brocante\" n’est autre que l’anagramme de Cantobre, et il est vrai que depuis le village, celle-ci ressemble à un étal de marché avec ses nombreuses lignes colorées. Comme dans toutes les brocantes, c’est en chinant dans les moindres recoins que l’on trouve son bonheur. Et ici, pour un grimpeur averti, il y a de quoi repartir satisfait de ses trouvailles. Le secteur principal, fut, on s’en doute avec un nom comme ça, le premier équipé, tellement agréable avec sa vire spacieuse et son point de vue sur Cantobre. Il resta secret pendant des années, terrain de jeu haut de gamme des grimpeurs locaux, non dénués de flair, il faut l’admettre, avec en particulier Yvan Sorro, le fin limier qui dénicha cette falaise. C’est plus tard, notamment avec le Roc Trip (2004), que de nouvelles voies ont vu le jour, permettant aujourd’hui de grimper à tous les étages. Et non à tous les niveaux... car celui de Cantobre est dans l’ensemble assez élevé.', 0, 'Cantobre', 1200, b'0', 11, 50, 116),
(6, 'Amis du Nord, vous qui pensez que l’escalade hivernale va nécessairement de pair avec vent glacial, humidité et onglet… Il existe bel un bien un lieu en France où l’on bronze en janvier en lézardant sur des faces sud idylliques !', 1, 'Chouchou Place', 2456, b'0', 12, 131, 254);

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

--
-- Déchargement des données de la table `commentary`
--

INSERT INTO `commentary` (`id`, `content`, `climbing_site_id`, `user_id`) VALUES
(11, 'Super site, simple de grimpe.', 5, 7),
(12, 'Encore un site trop grand...', 4, 7),
(13, 'Je ne recommande pas, aucun fast-food ni air de repos pour faire la sieste, j\'ai gacher mon weekend.', 5, 8),
(14, 'Je perdu un enfant sur ce site d\'escalade, au moins je suis plus tranquille maintenant.', 4, 8),
(15, 'Avec ou sans le beau temps c\'est toujours un plaisir de grimper ici.', 3, 9),
(16, 'Fait pour les grimpeur expérimentés.', 3, 9),
(17, 'Roche de qualité !', 6, 10),
(18, 'Une boutique de souvenir trop peut fournis.', 6, 10);

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
(23);

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

--
-- Déchargement des données de la table `topo`
--

INSERT INTO `topo` (`id`, `available`, `description`, `display_name`, `region`, `release_date`, `current_reservation_id`, `user_id`) VALUES
(19, b'1', 'Un topo ultime référencent tout les site de grimpe du sud de la france et leur spécificitées', 'Topo ultime du SUD !', 12, '2021-04-02 14:07:22', NULL, 7),
(20, b'1', 'Regroupe les différent site de bretagne', 'La bible de bretagne', 2, '2021-04-02 14:07:22', NULL, 8),
(21, b'0', 'Tout le nord d\'un seul topo de grimpe.', 'La grimpe nordique', 6, '2021-04-02 14:07:22', NULL, 9),
(22, b'1', 'C\'est bien un topo et non un frommage :D', 'Le mont d\'or', 3, '2021-04-02 14:07:22', NULL, 10);

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
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`, `username`) VALUES
(2, 'admin@', '$2a$10$4nenVhfreZZj9PpzYxDqQOu.3wlw426mHUkzhf.re55/bKrRV2ZYe', 0, 'admin'),
(7, 'JamesPSipes@jourrapide.com', '$2a$10$O8m1uLAtaFmYKwN93isdluFNxMXLyLTYzYfMcxBsu485ILoZ16swy', 1, 'James P.'),
(8, 'OrsonPatel@rhyta.com', '$2a$10$VQE0YsJ6VXP83.hSV/3IWOCQ5xiKU8n8tKvesXkyylstIg4Xkvlrq', 1, 'Orson'),
(9, 'MireillePlante@armyspy.com', '$2a$10$mY7y8sFxp8hDpUwQ9CVFye.YELjINwpKlxUIfYtXFMWrOPPCXQX5W', 1, 'Mireille P.'),
(10, 'VeroniqueGuertin@jourrapide.com', '$2a$10$5dxvqC4cz2ZuXyK3YHa6Te42LrcYXE28xdkFEhVpfLdQzbCm2K9AG', 1, 'Véronique');

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
