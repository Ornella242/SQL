-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 12 déc. 2021 à 19:48
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cmdprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `cmd`
--

CREATE TABLE `cmd` (
  `id` int(11) NOT NULL,
  `id_categorie_cmd` int(11) NOT NULL,
  `rolecmd` text NOT NULL,
  `commande` text NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cmd`
--

INSERT INTO `cmd` (`id`, `id_categorie_cmd`, `rolecmd`, `commande`, `details`) VALUES
(0, 11, 'La commande ls affiche le contenu d&rsquo;un r&eacute;pertoire. ', 'ls', 'a:3:{s:8:\"details1\";s:741:\"L&rsquo;option -l de la commande ls permet d&rsquo;afficher les informations suivantes :\r\n\r\nle type de fichier;\r\n&ndash; pour les fichiers ordinaires;\r\nd pour les r&eacute;pertoires (directory);\r\nb pour les fichiers sp&eacute;ciaux en mode bloc (la taille est remplac&eacute;e par le num&eacute;ro mineur et majeur du p&eacute;riph&eacute;rique);\r\nc pour les fichiers sp&eacute;ciaux en mode caract&egrave;re (idem que pr&eacute;c&eacute;dement concernant la taille);\r\nl pour les liens symboliques;\r\np pour les fifo (pipes);\r\ns pour les socket;\r\nles permissions d&rsquo;acc&egrave;s;\r\nle nombre de liens physiques;\r\nle nom du propri&eacute;taire et du groupe;\r\nla taille en octets;\r\nl&rsquo;horodatage (date de derni&egrave;re modification).\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(1, 1, 'Création d\'une base de données', 'CREATE DATABASE nom_de_la_base_de_données;', NULL),
(2, 1, 'Création de tables dans une base de données', 'CREATE TABLE nom_de_la_table (type [taille], attribut )', 'a:3:{s:8:\"details1\";s:8:\"details1\";s:8:\"details2\";s:8:\"details2\";s:8:\"details3\";s:0:\"\";}'),
(11, 11, 'Imprime le nom du r&eacute;pertoire courant de travail', '$ pwd', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Structure de la table `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `lien_img` text NOT NULL,
  `id_cmd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `img`
--

INSERT INTO `img` (`id`, `lien_img`, `id_cmd`) VALUES
(1, 'index2.jpg', 1),
(5, '11accueil.jpg', 11);

-- --------------------------------------------------------

--
-- Structure de la table `listescmd`
--

CREATE TABLE `listescmd` (
  `id` int(11) NOT NULL,
  `categorie` text NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `listescmd`
--

INSERT INTO `listescmd` (`id`, `categorie`, `details`) VALUES
(1, 'sql', 'a:2:{s:13:\"signification\";s:327:\"Le langage SQL (Structured Query Language) est un langage informatique utilisé pour exploiter des bases de données. Il permet de façon générale la définition, la manipulation et le contrôle de sécurité de données. Il est bien supporté par la très grande majorité des systèmes de gestion de base de données (SGBD)\";s:3:\"why\";s:164:\"On s\'en sert pour: fournir un contrôle des autorisations sur l\'enregistrement des données plus avancé que ne permet les commandes simples de la base de données.\";}'),
(2, 'symfony', 'a:2:{s:13:\"signification\";s:327:\"Le langage SQL (Structured Query Language) est un langage informatique utilisé pour exploiter des bases de données. Il permet de façon générale la définition, la manipulation et le contrôle de sécurité de données. Il est bien supporté par la très grande majorité des systèmes de gestion de base de données (SGBD)\";s:3:\"why\";s:164:\"On s\'en sert pour: fournir un contrôle des autorisations sur l\'enregistrement des données plus avancé que ne permet les commandes simples de la base de données.\";}'),
(11, 'Linux', 'a:2:{s:13:\"signification\";s:327:\"Le langage SQL (Structured Query Language) est un langage informatique utilisé pour exploiter des bases de données. Il permet de façon générale la définition, la manipulation et le contrôle de sécurité de données. Il est bien supporté par la très grande majorité des systèmes de gestion de base de données (SGBD)\";s:3:\"why\";s:164:\"On s\'en sert pour: fournir un contrôle des autorisations sur l\'enregistrement des données plus avancé que ne permet les commandes simples de la base de données.\";}');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cmd`
--
ALTER TABLE `cmd`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `commande` (`commande`) USING HASH,
  ADD KEY `id_categorie_cmd` (`id_categorie_cmd`);

--
-- Index pour la table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cmd` (`id_cmd`);

--
-- Index pour la table `listescmd`
--
ALTER TABLE `listescmd`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorie` (`categorie`) USING HASH;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cmd`
--
ALTER TABLE `cmd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `listescmd`
--
ALTER TABLE `listescmd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cmd`
--
ALTER TABLE `cmd`
  ADD CONSTRAINT `cmd_ibfk_1` FOREIGN KEY (`id_categorie_cmd`) REFERENCES `listescmd` (`id`);

--
-- Contraintes pour la table `img`
--
ALTER TABLE `img`
  ADD CONSTRAINT `img_ibfk_1` FOREIGN KEY (`id_cmd`) REFERENCES `listescmd` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
