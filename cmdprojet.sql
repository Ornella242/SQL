-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 15 déc. 2021 à 15:11
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

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
(1, 1, 'Cr&eacute;er une base de donn&eacute;es', 'CREATE DATABASE &lt;nom de la base de donn&eacute;es&gt;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(2, 1, 'Cr&eacute;er une table dans une base de donn&eacute;es', 'CREATE TABLE nom_de_la_table (attributs &lt;type&gt; [&lt;taille&gt;], [&lt;contrainte d\\\'attribut&gt;], ..., [&lt;contrainte de tables&gt;] ) ;', 'a:3:{s:8:\"details1\";s:56:\"La taille se pr&eacute;cise uniquement pour le type CHAR\";s:8:\"details2\";s:318:\"Contraintes d\\\'attributs:\r\nCl&eacute; primaire-&gt; PRIMARY KEY\r\nCl&eacute; &eacute;trang&egrave;re -&gt; REFERENCES &lt;Table primaire&gt;[&lt;cl&eacute; primaire&gt;]\r\nNon nullit&eacute; -&gt; NOT NULL\r\nDomaine -&gt; CHECK (&lt;condition&gt;)\r\nValeur par d&eacute;faut -&gt; DEFAULT(&lt;valeur par d&eacute;faut&gt;)\";s:8:\"details3\";s:239:\"Contraintes de tables:\r\nPRIMARY KEY (liste des attributs)\r\nUNIQUE (liste des attributs)\r\nNOT NULL (liste des attributs)\r\nFOREIGN KEY &lt;attribut&gt; REFERENCES &lt;Table primaire&gt;[&lt;cl&eacute; primaire&gt;]\r\nCHECK (&lt;condition&gt;)\";}'),
(3, 1, 'Modifier la structure d\\\'une table', 'ALTER TABLE &lt;nom de la table&gt; +ADD COLUMN &lt;attribut&gt;&lt;type&gt; [&lt;taille&gt;] [&lt;contrainte d\\\'attributs&gt;] /+ DROP COLUMN &lt;attribut&gt;/+ ALTER COLUMN &lt;attribut&gt;&lt;type&gt; [&lt;taille&gt;] [&lt;contrainte d\\\'attributs&gt;]', 'a:3:{s:8:\"details1\";s:46:\"ADD COLUMN -&gt; ajouter un champ (ou colonne)\";s:8:\"details2\";s:49:\"DROP COLUMN -&gt; supprimer un champ (ou colonne)\";s:8:\"details3\";s:49:\"ALTER COLUMN -&gt; modifier un champ (ou colonne)\";}'),
(4, 1, 'Supprimer une table', 'DROP TABLE &lt;nom de la table&gt;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(5, 1, 'Cr&eacute;er un enregistrement dans une table', 'INSERT INTO &lt;nom de la table&gt; (&lt;attribut1,attribut2...&gt;) VALUES (&lt;val1,val2...&gt;) ;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(6, 1, 'Modifier la structure d\\\'une table', 'UPDATE &lt;nom de la table&gt; SET &lt;attribut1&gt;=&lt;val1&gt; [WHERE &lt;condition&gt;] ;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(7, 1, 'Supprimer un enregistrement d\\\'une table', 'DELETE FROM&lt;nom de la table&gt; [ WHERE &lt;condition&gt; ]', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(8, 1, 'Afficher les enregistrements ', 'SELECT [&lt;&eacute;tendue&gt;]&lt;attributs projet&eacute;s&gt; FROM &lt;liste des tables&gt; WHERE &lt;condition de jointure et de s&eacute;lection avant regroupement&gt; GROUP BY &lt;attributs de regroupement&gt; HAVING &lt;conditions de s&eacute;lection apr&egrave;s regroupement&gt; ORDER BY &lt;attribut&gt; [DESC/ASC]', 'a:3:{s:8:\"details1\";s:312:\"&lt;Etendue&gt;: ALL=&gt;tout; DISTINCT=&gt; sans doublon;  TOP &lt;n&gt;[PERCENT]/ LIMIT &lt;deb&gt;[&lt;fin&gt;]\r\n\r\n&lt;attributs projet&eacute;s&gt;\r\n* =&gt; tous les attributs des tables utilis&eacute;s\r\n&lt;table&gt;.* =&gt; tous les attributs de la table r&eacute;f&eacute;renc&eacute;e\r\n                  \";s:8:\"details2\";s:50:\"GROUP BY est utilis&eacute; pour les regroupements\";s:8:\"details3\";s:39:\"ORDER BY est utilis&eacute; pour le tri\";}'),
(9, 3, 'Trouver la version du git', 'git  --version', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(12, 3, 'Configurer le git', 'git config --global user.email \\\\\\&quot;email de l\\\\\\\'utilisateur\\\\\\&quot; &amp; git config --global user.name \\\\\\&quot;nom de l\\\\\\\'utilisateur\\\\\\&quot;', 'a:3:{s:8:\"details1\";s:30:\"global pour tous les projets\r\n\";s:8:\"details2\";s:42:\"local sp&eacute;cifique &agrave; un projet\";s:8:\"details3\";s:0:\"\";}'),
(13, 3, ' Initialiser un d&eacute;p&ocirc;t git', 'git init', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(14, 3, 'Ajouter des fichiers', 'git add', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(15, 3, 'Afficher l\\\'&eacute;tat du r&eacute;pertoire de travail', 'git status', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(16, 3, 'Afficher l\\\'historique des sauvegardes', 'git log', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(17, 3, 'Commenter et valider les modifications', 'git commit -m \\&quot;message\\&quot;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(18, 3, ' Cloner un d&eacute;p&ocirc;t distant', 'git clone &lt;lien du d&eacute;p&ocirc;t distant&gt;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(19, 3, 'Afficher les branches', 'git branch', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(20, 3, 'Cr&eacute;er une branche', 'git branch &lt;nom de la branche&gt;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(21, 3, 'Changer de branche', 'git checkout &lt;nom de la branche&gt;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(22, 3, 'Cr&eacute;er et se positionner sur une branche', 'git checkout -b &lt;nom de la branche&gt;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(23, 3, 'Fusionner des branches', 'git merge &lt;nom de la branche cible&gt;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(24, 3, 'Connecter le d&eacute;p&ocirc;t &agrave; un local', 'git remote add &lt;lien du d&eacute;p&ocirc;t&gt;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(25, 3, 'Fusionner les modifications du d&eacute;p&ocirc;t distant au local ', 'git pull ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(26, 3, 'R&eacute;cup&eacute;rer les informations depuis le serveur distant', 'git fetch', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(27, 3, 'Supprimer un fichier', 'git rm &lt;nom du fichier&gt;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(28, 3, 'Lister les conflits', 'git diff', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(29, 3, 'Lister les conflits entre branches avant fusion', 'git diff &lt;branche source&gt; &lt;branche cible&gt;', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(30, 2, 'Afficher des informations sur le projet en cours', 'about ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(31, 2, 'Afficher l\\\'aide d\\\'une commande', 'Help', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(32, 2, 'Lister les commandes', 'list', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(33, 2, 'Installer les ressources Web du bundle dans un r&eacute;pertoire public', 'assets:install', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(34, 2, 'Vider le cache', 'cache:clear', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(35, 2, 'Vider les pools de cache', 'cache:pool:clear', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(36, 2, 'Supprimer un &eacute;l&eacute;ment d\\\'un pool de cache', 'cache:pool:delete', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(37, 2, 'Lister les pools de cache disponibles', 'cache:pool:list', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(38, 2, 'Elaguer les pools de cache', 'cache:pool:prune', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(39, 2, 'R&eacute;chauffer un cache vide', 'cache:warmup', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(40, 2, 'Vider la configuration par d&eacute;faut d\\\'une extension', 'config:dump-reference', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(41, 2, 'Ex&eacute;cuter du SQL arbitraire directement &agrave; partir de la ligne de commande', 'dbal:run-sql', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(42, 2, 'liste les classes/interfaces que vous pouvez utiliser pour le c&acirc;blage automatique', 'debug:autowiring', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(43, 2, 'Vider la configuration actuelle pour une extension', 'debug:config', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(44, 2, 'Afficher les services actuels d\\\'une application', 'debug:container ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(45, 2, 'Afficher les &eacute;couteurs configur&eacute;s pour une application', 'debug:event-dispatcher ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(46, 2, 'Afficher des informations sur votre ou vos pare-feu de s&eacute;curit&eacute;', ' debug:firewall ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(47, 2, 'Afficher les informations sur le type de formulaire', ' debug:form', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(48, 2, 'Afficher les itin&eacute;raires actuels pour une application', 'debug:router  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(49, 2, 'Afficher les informations sur les messages de traduction', 'debug:translation', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(50, 2, 'Afficher une liste de fonctions de brindilles, de filtres, de globales et de tests', ' debug:twig      ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(51, 2, 'Afficher les contraintes de validation des classes', 'debug:validator ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(52, 2, 'Effacer une r&eacute;gion de collection de cache de deuxi&egrave;me niveau', 'doctrine:cache:clear-collection-region     ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(53, 2, 'Effacer tous les caches de m&eacute;tadonn&eacute;es pour un gestionnaire d\\\'entit&eacute;s', 'doctrine:cache:clear-metadata ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(54, 2, 'Efface tout le cache de requ&ecirc;tes pour un gestionnaire d\\\'entit&eacute;s', ' doctrine:cache:clear-query      ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(55, 2, 'Effacer une r&eacute;gion de requ&ecirc;te de cache de deuxi&egrave;me niveau', 'doctrine:cache:clear-query-region  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(56, 2, 'Efface le cache des r&eacute;sultats pour un gestionnaire d\\\'entit&eacute;s', 'doctrine:cache:clear-result  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(57, 2, 'Cr&eacute;er la base de donn&eacute;es configur&eacute;e', 'doctrine:database:create ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(58, 2, 'Supprimer la base de donn&eacute;es configur&eacute;e', 'doctrine:database:drop ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(59, 2, 'V&eacute;rifiez que Doctrine est correctement configur&eacute; pour un environnement de production', 'doctrine:ensure-production-settings ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(60, 2, 'Convertir les informations de mappage entre les formats pris en charge', 'doctrine:mapping:convert', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(61, 2, 'Importer des informations de mappage &agrave; partir d\\\'une base de donn&eacute;es existante', ' doctrine:mapping:import', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(62, 2, 'Afficher la version actuelle', 'doctrine:migrations:current ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(63, 2, 'G&eacute;n&eacute;rer une migration en comparant votre base de donn&eacute;es actuelle &agrave; vos informations cartographiques.', 'doctrine:migrations:diff    ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(64, 2, 'Vider le sch&eacute;ma de votre base de donn&eacute;es vers une migration', 'doctrine:migrations:dump-schema', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(65, 2, 'Ex&eacute;cuter une ou plusieurs versions de migration vers le haut ou vers le bas manuellement', 'doctrine:migrations:execute ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(66, 2, 'G&eacute;n&eacute;rer une classe de migration vide.', 'doctrine:migrations:generate ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(67, 2, 'Sort la derni&egrave;re version', 'doctrine:migrations:latest', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(68, 2, 'Afficher une liste de toutes les migrations disponibles et leur statut', 'doctrine:migrations:list', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(69, 2, 'Ex&eacute;cuter une migration vers une version sp&eacute;cifi&eacute;e ou la derni&egrave;re version disponible', ' doctrine:migrations:migrate ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(70, 2, 'Cumuler les migrations en supprimant toutes les versions suivies et en ins&eacute;rant la version existante', '  doctrine:migrations:rollup ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(71, 2, 'Visualiser l\\\'&eacute;tat d\\\'un ensemble de migrations', 'doctrine:migrations:status', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(72, 2, 'Assure que le stockage des m&eacute;tadonn&eacute;es est &agrave; la derni&egrave;re version', 'doctrine:migrations:sync-metadata-storage', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(73, 2, 'Vous indique si votre sch&eacute;ma est &agrave; jour', ' doctrine:migrations:up-to-date ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(74, 2, 'Ajouter et supprimer manuellement des versions de migration du tableau des versions', 'doctrine:migrations:version ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(75, 2, 'Ex&eacute;cute un DQL arbitraire directement &agrave; partir de la ligne de commande', 'doctrine:query:dql  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(76, 2, 'Ex&eacute;cute un SQL arbitraire directement &agrave; partir de la ligne de commande', 'doctrine:query:sql', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(77, 2, 'Ex&eacute;cute (ou vide) le SQL n&eacute;cessaire pour g&eacute;n&eacute;rer le sch&eacute;ma de la base de donn&eacute;es', ' doctrine:schema:create ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(78, 2, 'Ex&eacute;cute (ou vide) le SQL n&eacute;cessaire pour supprimer le sch&eacute;ma de base de donn&eacute;es actuel', ' doctrine:schema:drop ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(79, 2, 'Ex&eacute;cute (ou vide) le SQL n&eacute;cessaire pour mettre &agrave; jour le sch&eacute;ma de la base de donn&eacute;es pour qu\\\'il corresponde aux m&eacute;tadonn&eacute;es de mappage actuelles', 'doctrine:schema:update ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(80, 2, 'Valider les fichiers de mappage', 'doctrine:schema:validate', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(81, 2, 'S\\\'assurer que les arguments inject&eacute;s dans les services correspondent aux d&eacute;clarations de type', 'lint:container ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(82, 2, 'Lint a Twig template et g&eacute;n&egrave;re des erreurs rencontr&eacute;es', ' lint:twig', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(83, 2, 'Lint un fichier XLIFF et g&eacute;n&egrave;re les erreurs rencontr&eacute;es', 'lint:xliff ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(84, 2, 'Lint un fichier YAML et g&eacute;n&egrave;re des erreurs rencontr&eacute;es', 'lint:yaml', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(85, 2, 'Cr&eacute;e un authentificateur Guard de diff&eacute;rentes saveurs', 'make:auth', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(86, 2, 'Cr&eacute;e une nouvelle classe de commande de console', 'make:command ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(87, 2, 'Cr&eacute;e une nouvelle classe de contr&ocirc;leur', ' make:controller  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(88, 2, 'Cr&eacute;e le CRUD pour la classe d\\\'entit&eacute; Doctrine', 'make:crud ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(89, 2, 'Ajoute un conteneur de base de donn&eacute;es &agrave; votre fichier docker-compose.yaml', 'make:docker:database', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(90, 2, 'Cr&eacute;e ou met &agrave; jour une classe d\\\'entit&eacute; Doctrine et &eacute;ventuellement une ressource API Platform', 'make:entity ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(91, 2, 'Cr&eacute;e une nouvelle classe pour charger les appareils Doctrine', 'make:fixtures ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(92, 2, 'Cr&eacute;e une nouvelle classe de formulaire', ' make:form  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(93, 2, 'Cr&eacute;e un nouveau message et un nouveau gestionnaire', 'make:message ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(94, 2, 'Cr&eacute;e un nouveau middleware de messagerie', 'make:messenger-middleware', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(95, 2, 'Cr&eacute;e une nouvelle migration bas&eacute;e sur les modifications de la base de donn&eacute;es', 'make:migration    ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(96, 2, 'Cr&eacute;e un nouveau syst&egrave;me de formulaire d\\\'inscription', 'make:registration-form', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(97, 2, 'Cr&eacute;ez un contr&ocirc;leur, une entit&eacute; et des r&eacute;f&eacute;rentiels &agrave; utiliser avec symfonycasts/reset-password-bundle', 'make:reset-password  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(98, 2, 'Cr&eacute;e une nouvelle classe d\\\'encodeur de s&eacute;rialiseur', 'make:serializer:encoder', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(99, 2, 'Cr&eacute;e une nouvelle classe de normalisateur de s&eacute;rialiseur', 'make:serializer:normalizer', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(100, 2, 'Cr&eacute;e une nouvelle classe d\\\'abonn&eacute;s &agrave; l\\\'&eacute;v&eacute;nement', 'make:subscriber   ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(101, 2, 'Cr&eacute;e une nouvelle classe de test', 'make:test  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(102, 2, 'Cr&eacute;e une nouvelle classe d\\\'extension Twig', ' make:twig-extension', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(103, 2, 'Cr&eacute;e une nouvelle classe d\\\'utilisateurs de s&eacute;curit&eacute;', 'make:user     ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(104, 2, 'Cr&eacute;e un nouveau validateur et une classe de contraintes', 'make:validator  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(105, 2, 'Cr&eacute;e une nouvelle classe d\\\'&eacute;lecteurs de s&eacute;curit&eacute;', 'make:voter   ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(106, 2, 'Aider &agrave; d&eacute;boguer les routes en simulant une correspondance d\\\'informations de chemin', 'router:match ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(108, 2, 'Chiffrer tous les secrets locaux dans le coffre-fort', 'secrets:encrypt-from-local', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(109, 2, 'G&eacute;n&eacute;rer de nouvelles cl&eacute;s de chiffrement', 'secrets:generate-keys   ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(110, 2, 'Lister tous les secrets', 'secrets:list', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(111, 2, 'Supprimer un secret du coffre-fort', 'secrets:remove ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(112, 2, 'D&eacute;finir un secret dans le coffre-fort', ' secrets:set ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(113, 2, 'Encoder un mot de passe', 'security:encode-password ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(114, 2, 'Hacher un mot de passe utilisateur', 'security:hash-password ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(115, 2, 'D&eacute;marrer un serveur de vidage qui collecte et affiche les vidages en un seul endroit', 'server:dump ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(116, 2, 'D&eacute;marrer un serveur de journaux qui affiche les journaux en temps r&eacute;el', ' server:log ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(117, 2, 'Extraire les traductions d\\\'un fournisseur donn&eacute;.', ' translation:pull ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(118, 2, 'Envoyer les traductions &agrave; un fournisseur donn&eacute;.', 'translation:push  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(119, 2, 'Mettre &agrave; jour le fichier de traduction', 'translation:update  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(120, 2, 'D&eacute;crypter tous les secrets et stockez-les dans le coffre-fort local', 'secrets:decrypt-to-local  ', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(121, 4, 'Changer le mode d\\\'ex&eacute;cution et de configuration', 'Router&gt; enable', 'a:3:{s:8:\"details1\";s:47:\"Router# configure terminal\r\nRouter(config)#\r\n\r\n\";s:8:\"details2\";s:53:\"Router(config)# exit | end | _C | _Z\r\nRouter# disable\";s:8:\"details3\";s:23:\"Router&gt;\r\nRouter# ?\r\n\";}'),
(122, 4, 'Outils de diagnostic', 'Router# ping ip-address', 'a:3:{s:8:\"details1\";s:29:\"Router# traceroute ip-address\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(123, 4, 'Visualiser l\\\'&eacute;tat de l\\\'&eacute;quipement', 'Router# show version', 'a:3:{s:8:\"details1\";s:41:\"Router# show flash\r\nRouter# show memory\r\n\";s:8:\"details2\";s:45:\"Router# show interfaces\r\nSwitch# show history\";s:8:\"details3\";s:0:\"\";}'),
(124, 4, 'Visualiser et sauvegarder  la configuration', 'Router# show running-config', 'a:3:{s:8:\"details1\";s:71:\"Router# show startup-config\r\nRouter# copy running-config startup-config\";s:8:\"details2\";s:33:\"Router# copy running-config tftp:\";s:8:\"details3\";s:157:\"Switch# copy system:running-config tftp:[[[//location ]/directory ]/filename ]\r\nSwitch# copy nvram:startup-config tftp:[[[//location ]/directory ]/filename ]\";}'),
(125, 4, 'Suppression du fichier de configuration', 'Router# erase nvram:startup-config ', 'a:3:{s:8:\"details1\";s:28:\"Router# erase startup-config\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(126, 4, 'Configuration de base d\\\'un &eacute;quipement CISCO', 'Router(config)# hostname router-name', 'a:3:{s:8:\"details1\";s:82:\"Router(config)# enable password password\r\nRouter(config)# enable secret password\r\n\";s:8:\"details2\";s:81:\"Router(config)# banner motd # message #\r\nRouter(config)# banner login # message #\";s:8:\"details3\";s:0:\"\";}'),
(127, 4, 'Configuration de la console et du terminal virtuel', 'Router(config)# line console 0', 'a:3:{s:8:\"details1\";s:70:\"Router(config-line)# password password\r\nRouter(config-line)# login\r\n\r\n\";s:8:\"details2\";s:59:\"Router(config)# line vty 0 4\r\nSwitch(config)# line vty 0 15\";s:8:\"details3\";s:40:\"Router(config-line)# logging synchronous\";}'),
(128, 4, 'Configuration des interfaces sur un routeur', 'Router(config)# interface type port', 'a:3:{s:8:\"details1\";s:96:\"Router(config-if)# ip address ip-address subnet-mask\r\nRouter(config-if)# description description\";s:8:\"details2\";s:93:\"Router(config-if)# clock rate rate\r\nRouter(config-if)# no shutdown\r\nRouter(config-if)# exit\r\n\";s:8:\"details3\";s:58:\"Router# show ip interface brief\r\nRouter# show ip interface\";}'),
(129, 4, 'Configuration de routes statiques et route statique par d&eacute;faut', 'Router(config)# ip route network-address subnet-mask {ip-address | exit-interface }', 'a:3:{s:8:\"details1\";s:71:\"Router(config)# ip route 0.0.0.0 0.0.0.0 [exit-interface | ip-address ]\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(130, 4, 'Configuration de RIPv1', 'Router(config)# router rip', 'a:3:{s:8:\"details1\";s:36:\"Router(config-router)# version 1\r\n\r\n\";s:8:\"details2\";s:66:\"Router(config-router)# network directly-connected-classful-address\";s:8:\"details3\";s:72:\"Router(config-router)# passive-interface interface-type interface-number\";}'),
(131, 4, 'Redistribution de route statique et propagation de la route par d&eacute;faut', 'Router(config-router)# default-information originate', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(132, 4, 'D&eacute;pannage de RIP', 'Router# show ip route', 'a:3:{s:8:\"details1\";s:32:\"Router# show ip rip database\r\n\r\n\";s:8:\"details2\";s:25:\"Router# show ip protocols\";s:8:\"details3\";s:20:\"Router# debug ip rip\";}'),
(133, 4, 'Configuration d\\\'EIGRP', 'Router(config)# router eigrp autonomous-system', 'a:3:{s:8:\"details1\";s:65:\"Router(config-router)# network network-address [wildcard-mask ]\r\n\";s:8:\"details2\";s:74:\"Router(config-router)# passive-interface interface-type interface-number\r\n\";s:8:\"details3\";s:38:\"Router(config-router)# no auto-summary\";}'),
(134, 4, 'Propagation de la route par d&eacute;faut et r&eacute;sum&eacute; de r&eacute;seaux', 'Router(config)# ip route 0.0.0.0 0.0.0.0 [exit-interface | ip-address ]', 'a:3:{s:8:\"details1\";s:52:\"Router(config)# ip default-network network-address\r\n\";s:8:\"details2\";s:81:\"Router(config-if)# ip summary-address eigrp as-number network-address subnet-mask\";s:8:\"details3\";s:0:\"\";}'),
(135, 4, 'Visualisation et d&eacute;pannage d\\\'EIGRP', 'Router# show ip eigrp neighbors', 'a:3:{s:8:\"details1\";s:79:\"Router# show ip eigrp topology [network | all-links]\r\nRouter# show ip route\r\n\r\n\";s:8:\"details2\";s:89:\"Router# show ip interface brief\r\nRouter# show interface interface-type interface-number\r\n\";s:8:\"details3\";s:50:\"Router# show ip protocols\r\nRouter# debug eigrp fsm\";}'),
(136, 4, 'Configuration d\\\'OSPF', 'Router(config)# router ospf process-id', 'a:3:{s:8:\"details1\";s:72:\"Router(config-router)# passive-interface interface-type interface-number\";s:8:\"details2\";s:75:\"\r\nRouter(config-router)# network network-address wildcard-mask area area-id\";s:8:\"details3\";s:0:\"\";}'),
(137, 4, 'Configuration de la NAT statique', 'Router(config)# ip nat inside source static local-ip global-ip', 'a:3:{s:8:\"details1\";s:71:\"Router(config)# interface type number\r\nRouter(config-if)# ip nat inside\";s:8:\"details2\";s:72:\"Router(config)# interface type number\r\nRouter(config-if)# ip nat outside\";s:8:\"details3\";s:0:\"\";}'),
(138, 4, 'Configuration de la redirection de port', 'Router(config)# ip nat inside source static protocol local-ip port global-ip port', 'a:3:{s:8:\"details1\";s:0:\"\";s:8:\"details2\";s:0:\"\";s:8:\"details3\";s:0:\"\";}'),
(139, 4, 'Configuration de la NAT dynamique', 'Router(config)# ip nat pool NAME start-ip end-ip {netmask netmask | prefix-length prefix-length }', 'a:3:{s:8:\"details1\";s:151:\"Router(config)# access-list access-list-number permit source [source-wildcard ]\r\nRouter(config)# ip nat inside source list access-list-number pool NAME\";s:8:\"details2\";s:71:\"Router(config)# interface type number\r\nRouter(config-if)# ip nat inside\";s:8:\"details3\";s:72:\"Router(config)# interface type number\r\nRouter(config-if)# ip nat outside\";}'),
(140, 4, 'Configuration de la surcharge NAT (PAT) premi&egrave;re configuration possible', 'Router(config)# access-list access-list-number permit source [source-wildcard ]', 'a:3:{s:8:\"details1\";s:89:\"Router(config)# ip nat inside source list access-list-number interface interface overload\";s:8:\"details2\";s:71:\"Router(config)# interface type number\r\nRouter(config-if)# ip nat inside\";s:8:\"details3\";s:72:\"Router(config)# interface type number\r\nRouter(config-if)# ip nat outside\";}'),
(141, 4, 'Visualisation et d&eacute;pannage de NAT', 'Router# show ip nat translations [verbose]', 'a:3:{s:8:\"details1\";s:32:\"Router# show ip nat statistics\r\n\";s:8:\"details2\";s:36:\"Router# clear ip nat translation *\r\n\";s:8:\"details3\";s:31:\"Router# debug ip nat [detailed]\";}'),
(142, 4, 'Configuration de IPv6', 'RouterX(config)# ipv6 unicast-routing', 'a:3:{s:8:\"details1\";s:73:\"\r\nRouterX(config-if)# ipv6 address ipv6-address /prefix-length [eui-64]\r\n\";s:8:\"details2\";s:65:\"RouterX(config)# ipv6 host name [port ] ipv6addr [ipv6addr ...]\r\n\";s:8:\"details3\";s:39:\"RouterX(config)# ip name-server address\";}'),
(143, 4, 'Visualisation et d&eacute;pannage d\\\'IPv6', 'RouterX# show ipv6 interface', 'a:3:{s:8:\"details1\";s:274:\"\r\nRouterX# show ipv6 static interface interface\r\nRouterX# show ipv6 static detail\r\nRouterX# show ipv6 traffic\r\nRouterX# clear ipv6 rip\r\nRouterX# clear ipv6 route *\r\nRouterX# clear ipv6 traffic\r\nRouterX# debug ipv6 packet\r\nRouterX# debug ipv6 rip\r\nRouterX# debug ipv6 routing\";s:8:\"details2\";s:123:\"RouterX# show ipv6 interface brief\r\nRouterX# show ipv6 neighbors\r\nRouterX# show ipv6 protocols\r\n\r\nRouterX# show ipv6 static\";s:8:\"details3\";s:110:\"RouterX# show ipv6 rip\r\nRouterX# show ipv6 route\r\nRouterX# show ipv6 route summary\r\nRouterX# show ipv6 routers\";}');

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
(1, '1sql.jpg', 1),
(2, '2symfony.jpg', 2),
(3, '3git.jpeg', 3),
(4, '4cisco.jpg', 4);

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
(1, 'SQL', 'a:2:{s:13:\"signification\";s:408:\"SQL (sigle de Structured Query Language, en fran&ccedil;ais langage de requ&ecirc;te structur&eacute;e) est un langage informatique normalis&eacute; servant &agrave; exploiter des bases de donn&eacute;es relationnelles. La partie langage de manipulation des donn&eacute;es de SQL permet de rechercher, d\\\'ajouter, de modifier ou de supprimer des donn&eacute;es dans les bases de donn&eacute;es relationnelles\";s:3:\"why\";s:288:\"Il permet de fa&ccedil;on g&eacute;n&eacute;rale la d&eacute;finition, la manipulation et le contr&ocirc;le de s&eacute;curit&eacute; de donn&eacute;es... Il est bien support&eacute; par la tr&egrave;s grande majorit&eacute; des syst&egrave;mes de gestion de base de donn&eacute;es (SGBD)\";}'),
(2, 'SYMFONY', 'a:2:{s:13:\"signification\";s:261:\"Symfony est un ensemble de composants PHP ainsi qu\\\'un framework MVC libre &eacute;crit en PHP. Il fournit des fonctionnalit&eacute;s modulables et adaptables qui permettent de faciliter et d&rsquo;acc&eacute;l&eacute;rer le d&eacute;veloppement d\\\'un site web.\";s:3:\"why\";s:373:\"Symfony peut &ecirc;tre utilis&eacute; pour construire des applications robustes dans un contexte d\\\'entreprise, car il aide les d&eacute;veloppeurs web &agrave; tester, d&eacute;boguer et documenter des projets, leur offrant ainsi un contr&ocirc;le total sur la configuration et la personnalisation (de la structure des r&eacute;pertoires jusqu\\\'aux biblioth&egrave;ques .\";}'),
(3, 'git', 'a:2:{s:13:\"signification\";s:183:\"Git est de loin le syst&egrave;me de contr&ocirc;le de version le plus largement utilis&eacute; aujourd\\\'hui. Git est un projet open source avanc&eacute;, qui est activement maintenu.\";s:3:\"why\";s:341:\"Git permet &agrave; l\\\'aide des branches de facilement atteindre vos fins. Permet d\\\'annuler vos erreurs : dans votre &eacute;diteur de code, vous avez l\\\'habitude d\\\'annuler vos modifications (CTRL+Z, CTRL+Y, &hellip;). Mais d&egrave;s que vous fermez l\\\'&eacute;diteur, impossible d\\\'annuler ce que vous venez &agrave; peine de modifier.\r\n\";}'),
(4, 'Cisco', 'a:2:{s:13:\"signification\";s:301:\"Cisco IOS (Internetwork Operating System) est un syst&egrave;me d\\\'exploitation propri&eacute;taire qui s\\\'ex&eacute;cute sur les routeurs et commutateurs Cisco Systems . La fonction principale de Cisco IOS est de permettre les communications de donn&eacute;es entre les n&oelig;uds du r&eacute;seau .\";s:3:\"why\";s:619:\"Cisco IOS propose des dizaines de services suppl&eacute;mentaires qu\\\'un administrateur peut utiliser pour am&eacute;liorer les performances et la s&eacute;curit&eacute; du trafic r&eacute;seau. Ces services incluent le cryptage, authentification, pare-feucapacit&eacute;s, application des politiques, inspection approfondie des paquets , qualit&eacute; de service ( QoS ), routage intelligent et capacit&eacute; de proxy . Dans les routeurs &agrave; services int&eacute;gr&eacute;s (ISR) de Cisco, IOS peut &eacute;galement prendre en charge le traitement des appels et les services de communications unifi&eacute;es .\";}');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT pour la table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `listescmd`
--
ALTER TABLE `listescmd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
