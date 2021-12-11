-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 11 déc. 2021 à 04:07
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
(1, 1, 'Création d\'une base de données', 'CREATE DATABASE nom_de_la_base_de_données;', NULL),
(2, 1, 'Création de tables dans une base de données', 'CREATE TABLE nom_de_la_table (type [taille], attribut )', NULL),
(8, 1, 'Selection dans une table', 'SELECT column1, column2....columnN\r\nFROM   table_name;', NULL);

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
(2, 'index2.jpg', 1);

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
(1, 'sql', 'a:2:{s:13:\"signification\";s:327:\"Le langage SQL (Structured Query Language) est un langage informatique utilisé pour exploiter des bases de données. Il permet de façon générale la définition, la manipulation et le contrôle de sécurité de données. Il est bien supporté par la très grande majorité des systèmes de gestion de base de données (SGBD)\";s:3:\"why\";s:164:\"On s\'en sert pour: fournir un contrôle des autorisations sur l\'enregistrement des données plus avancé que ne permet les commandes simples de la base de données.\";}');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cmd`
--
ALTER TABLE `cmd`
  ADD PRIMARY KEY (`id`),
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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cmd`
--
ALTER TABLE `cmd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `listescmd`
--
ALTER TABLE `listescmd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
