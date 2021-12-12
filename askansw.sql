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
-- Base de données : `askansw`
--

-- --------------------------------------------------------

--
-- Structure de la table `cv`
--

CREATE TABLE `cv` (
  `id_cv` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `tel` int(11) NOT NULL,
  `date_nais` date NOT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `langue` text NOT NULL,
  `profil` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `competences` text DEFAULT NULL,
  `diplome` text DEFAULT NULL,
  `qualites` text DEFAULT NULL,
  `loisirs` text DEFAULT NULL,
  `id_author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `img`
--

CREATE TABLE `img` (
  `id_img` int(11) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `id_post` int(11) DEFAULT NULL,
  `id_cv` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `inscris`
--

CREATE TABLE `inscris` (
  `id_author` int(11) NOT NULL,
  `nom_author` varchar(30) DEFAULT NULL,
  `prenom_author` varchar(30) DEFAULT NULL,
  `email_author` varchar(255) DEFAULT NULL,
  `password_author` varchar(50) DEFAULT NULL,
  `id_niveau` int(11) DEFAULT NULL,
  `tmp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `inscris`
--

INSERT INTO `inscris` (`id_author`, `nom_author`, `prenom_author`, `email_author`, `password_author`, `id_niveau`, `tmp`) VALUES
(29, 'TOTOP', 'Samuel', 'gg@gmail.com', '8843028fefce50a6de50acdf064ded27', 1, -1);

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `id_niveau` int(11) NOT NULL,
  `lib_niveau` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`id_niveau`, `lib_niveau`) VALUES
(1, 'Admin'),
(2, 'Membre'),
(3, 'Visiteur');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `contenu_q_r` text DEFAULT NULL,
  `date_send` date NOT NULL,
  `type_post` varchar(20) NOT NULL,
  `id_author` int(11) DEFAULT NULL,
  `id_post_question` int(11) DEFAULT NULL,
  `fermer` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id_post`, `post_title`, `contenu_q_r`, `date_send`, `type_post`, `id_author`, `id_post_question`, `fermer`) VALUES
(66, '', 'cc', '2021-12-02', '_chat_general', 28, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cv`
--
ALTER TABLE `cv`
  ADD PRIMARY KEY (`id_cv`),
  ADD KEY `id_author` (`id_author`);

--
-- Index pour la table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_cv` (`id_cv`);

--
-- Index pour la table `inscris`
--
ALTER TABLE `inscris`
  ADD PRIMARY KEY (`id_author`),
  ADD KEY `id_niveau` (`id_niveau`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`id_niveau`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_author` (`id_author`),
  ADD KEY `post_id_post_question` (`id_post_question`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cv`
--
ALTER TABLE `cv`
  MODIFY `id_cv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `img`
--
ALTER TABLE `img`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `inscris`
--
ALTER TABLE `inscris`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `id_niveau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cv`
--
ALTER TABLE `cv`
  ADD CONSTRAINT `cv_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `inscris` (`id_author`);

--
-- Contraintes pour la table `img`
--
ALTER TABLE `img`
  ADD CONSTRAINT `img_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`),
  ADD CONSTRAINT `img_ibfk_2` FOREIGN KEY (`id_cv`) REFERENCES `cv` (`id_cv`);

--
-- Contraintes pour la table `inscris`
--
ALTER TABLE `inscris`
  ADD CONSTRAINT `inscris_ibfk_1` FOREIGN KEY (`id_niveau`) REFERENCES `niveau` (`id_niveau`);

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `inscris` (`id_author`),
  ADD CONSTRAINT `post_id_post_question` FOREIGN KEY (`id_post_question`) REFERENCES `post` (`id_post`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
