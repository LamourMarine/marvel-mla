-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 30 oct. 2024 à 13:32
-- Version du serveur : 9.1.0
-- Version de PHP : 8.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Marvel`
-- 
CREATE DATABASE IF NOT EXISTS Marvel ;
USE Marvel ;

-- --------------------------------------------------------

--
-- Structure de la table `Actors`
--

CREATE TABLE `Actors` (
  `id_Actors` int NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name_Actors` varchar(50) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `created_at_Actors` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at_Actors` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Actors`
--

INSERT INTO `Actors` (`id_Actors`, `last_name`, `first_name_Actors`, `birth_date`, `created_at_Actors`, `update_at_Actors`) VALUES
(5, 'Downey Jr.', 'Robert', '1965-04-04', '2024-10-28 19:15:39', '2024-10-28 19:15:39'),
(6, 'Evans', 'Chris', '1981-06-13', '2024-10-28 19:15:39', '2024-10-28 19:15:39'),
(7, 'Johansson', 'Scarlett', '1984-11-22', '2024-10-28 19:15:39', '2024-10-28 19:15:39'),
(8, 'Hemsworth', 'Chris', '1983-08-11', '2024-10-28 19:15:39', '2024-10-28 19:15:39'),
(12, 'Boseman', 'Chadwick ', '1976-11-29', '2024-10-28 19:15:39', '2024-10-28 19:15:39'),
(13, 'Pratt', 'Chris', '1979-06-21', '2024-10-28 20:09:16', '2024-10-28 20:09:16'),
(14, 'Rudd', 'Paul', '1969-04-06', '2024-10-28 20:16:13', '2024-10-28 20:16:13'),
(15, 'Cumberbatch', 'Benedict', '1976-07-19', '2024-10-28 20:16:13', '2024-10-28 20:16:13'),
(16, 'Paltrow', 'Gwyneth', '1972-09-27', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(17, 'Bridges', 'Jeff ', '1949-12-04', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(18, 'Hiddleston	', 'Tom', '1981-02-09', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(19, 'Saldana', 'Zoe ', '1978-06-19', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(20, 'Bautista	', 'Dave ', '1969-01-18', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(22, 'Nyong\'o', 'Lupita ', '1983-03-01', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(23, 'Holland', 'Tom', '1996-06-01', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(24, 'Keaton', 'Michael ', '1951-09-05', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(25, 'Zendaya	', ' ', '1996-09-01', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(26, 'Blanchett', 'Cate ', '1969-05-14', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(27, 'Thompson', 'Tessa ', '1983-10-03', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(28, 'Goldblum	', 'Jeff ', '1952-10-22', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(29, 'Swinton	', 'Tilda ', '1960-11-05', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(30, 'Ejiofor', 'Chiwetel ', '1977-04-10', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(31, 'L. Jackson', 'Samuel ', '1948-12-21', '2024-10-28 20:47:27', '2024-10-28 20:47:27'),
(32, 'Law', 'Jude', '1972-12-29', '2024-10-30 09:01:57', '2024-10-30 09:01:57');

-- --------------------------------------------------------

--
-- Structure de la table `Acts_in`
--

CREATE TABLE `Acts_in` (
  `id_Movies` int NOT NULL,
  `id_Actors` int NOT NULL,
  `role_Acts_in` varchar(255) DEFAULT NULL,
  `actor_Acts_in` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Acts_in`
--

INSERT INTO `Acts_in` (`id_Movies`, `id_Actors`, `role_Acts_in`, `actor_Acts_in`) VALUES
(1, 5, 'Iron Man', 'Robert Downey Jr'),
(1, 16, 'Virginia \"Pepper\" Potts', 'Gwyneth Paltrow'),
(1, 17, 'Obadiah Stane / Iron Monger', 'Jeff Bridges'),
(2, 7, 'Natasha Romanoff / Black Widow', 'Scarlett Johansson	'),
(2, 31, 'Nick Fury', 'Samuel L. Jackson'),
(3, 13, 'Peter Quill / Star-Lord', 'Chris Pratt'),
(3, 19, 'Gamora', 'Zoe Saldana'),
(3, 20, 'Drax the Destroyer', 'Dave Bautista'),
(4, 8, 'Thor', 'Chris Hemsworth'),
(4, 18, 'Loki', 'Tom Hiddleston	'),
(4, 26, 'Hela', 'Cate Blanchett	'),
(4, 27, 'Valkyrie', 'Tessa Thompson	'),
(4, 28, 'Grandmaster', 'Jeff Goldblum	'),
(5, 12, 'Black Panther', 'Chadwick Boseman	'),
(5, 22, 'Nakia', 'Lupita Nyong\'o	'),
(6, 15, 'Docteur Stephen Strange', 'Benedict Cumberbatch	'),
(6, 29, 'The Ancient One', 'Tilda Swinton	'),
(6, 30, 'Karl Mordo', 'Chiwetel Ejiofor	'),
(7, 6, 'Steve Rogers', 'Chris Evans'),
(8, 14, 'Scott Lang', 'Paul Rudd'),
(9, 23, 'Spiderman', 'Tom Holland'),
(9, 24, 'Adrian Toomes / Vulture', 'Micheal Keaton'),
(9, 25, 'Michelle \"MJ\" Jones', 'Zendaya');

-- --------------------------------------------------------

--
-- Structure de la table `Directed_by`
--

CREATE TABLE `Directed_by` (
  `id_Movies` int NOT NULL,
  `id_Directors` int NOT NULL,
  `director_Directed_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Directed_by`
--

INSERT INTO `Directed_by` (`id_Movies`, `id_Directors`, `director_Directed_by`) VALUES
(1, 9, 'Jon Favreau'),
(2, 16, 'Joss Whedon '),
(3, 10, 'James Gunn'),
(4, 11, 'Taika Waititi'),
(5, 12, 'Ryan Coogler'),
(6, 13, 'Scott Derrickson'),
(7, 15, 'Anthony Russo '),
(8, 14, 'Peyton Reed '),
(9, 17, 'Jon Watts');

-- --------------------------------------------------------

--
-- Structure de la table `Directors`
--

CREATE TABLE `Directors` (
  `id_Directors` int NOT NULL,
  `last_name_Directors` varchar(50) DEFAULT NULL,
  `first_name_Directors` varchar(50) DEFAULT NULL,
  `created_at_Directors` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at_Directors` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Directors`
--

INSERT INTO `Directors` (`id_Directors`, `last_name_Directors`, `first_name_Directors`, `created_at_Directors`, `update_at_Directors`) VALUES
(9, 'Favreau', 'Jon ', NULL, NULL),
(10, 'Gunn', 'James ', NULL, NULL),
(11, 'Waititi', 'Taika ', NULL, NULL),
(12, 'Coogler', 'Ryan ', NULL, NULL),
(13, 'Derrickson', 'Scott ', NULL, NULL),
(14, 'Reed', 'Peyton ', NULL, NULL),
(15, 'Russo', 'Anthony ', NULL, NULL),
(16, 'Whedon', 'Joss ', NULL, NULL),
(17, 'Watts', 'Jon ', '2024-10-28 21:08:09', '2024-10-28 21:08:09');

-- --------------------------------------------------------

--
-- Structure de la table `Favorites`
--

CREATE TABLE `Favorites` (
  `id_Movies` int NOT NULL,
  `id_User` int NOT NULL,
  `favorite_movies_Favorites` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Favorites`
--

INSERT INTO `Favorites` (`id_Movies`, `id_User`, `favorite_movies_Favorites`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4),
(5, 4, 5);

-- --------------------------------------------------------

--
-- Structure de la table `Movies`
--

CREATE TABLE `Movies` (
  `id_Movies` int NOT NULL,
  `title_Movies` varchar(255) DEFAULT NULL,
  `release_year_Movies` int DEFAULT NULL,
  `length_Movies` int DEFAULT NULL,
  `update_at_Movies` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at_Movies` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Movies`
--

INSERT INTO `Movies` (`id_Movies`, `title_Movies`, `release_year_Movies`, `length_Movies`, `update_at_Movies`, `created_at_Movies`) VALUES
(1, 'Iron Man', 2008, 126, '2024-10-28 20:00:48', '2024-10-28 20:00:48'),
(2, 'The Avengers', 2012, 143, '2024-10-28 20:00:48', '2024-10-28 20:00:48'),
(3, 'Guardians of the Galaxy', 2014, 121, '2024-10-28 20:00:48', '2024-10-28 20:00:48'),
(4, 'Thor: Ragnarok', 2017, 130, '2024-10-28 20:00:48', '2024-10-28 20:00:48'),
(5, 'Black Panther', 2018, 134, '2024-10-28 20:00:48', '2024-10-28 20:00:48'),
(6, 'Doctor Strange', 2016, 115, '2024-10-28 20:00:48', '2024-10-28 20:00:48'),
(7, 'Captain America: The Winter Soldier', 2014, 136, '2024-10-28 20:00:48', '2024-10-28 20:00:48'),
(8, 'Ant-Man', 2015, 117, '2024-10-28 20:00:48', '2024-10-28 20:00:48'),
(9, 'Spider-Man : Les Retrouvailles', 2017, 133, '2024-10-30 11:13:47', '2024-10-28 20:48:57'),
(10, 'Black Widow', 2021, 134, '2024-10-30 08:48:28', '2024-10-30 08:48:28');

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `id_User` int NOT NULL,
  `last_name_User` varchar(50) DEFAULT NULL,
  `first_name_User` varchar(50) DEFAULT NULL,
  `email_User` varchar(50) DEFAULT NULL,
  `password_User` varchar(255) DEFAULT NULL,
  `created_at_User` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at_User` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Users`
--

INSERT INTO `Users` (`id_User`, `last_name_User`, `first_name_User`, `email_User`, `password_User`, `created_at_User`, `update_at_User`) VALUES
(1, 'Smith', 'John', 'john.smith@example.com', 'password123', '2024-10-30 13:15:39', '2024-10-30 13:15:39'),
(2, 'Doe', 'Jane', 'jane.doe@example.com', 'securePass456', '2024-10-30 13:15:39', '2024-10-30 13:15:39'),
(3, 'Brown', 'Michael', 'michael.brown@example.com', 'mikePass789', '2024-10-30 13:15:39', '2024-10-30 13:15:39'),
(4, 'Davis', 'Emily', 'emily.davis@example.com', 'emPass2468', '2024-10-30 13:15:39', '2024-10-30 13:15:39'),
(5, 'Wilson', 'Sarah', 'sarah.wilson@example.com', 'sarahSecure135', '2024-10-30 13:15:39', '2024-10-30 13:15:39');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Actors`
--
ALTER TABLE `Actors`
  ADD PRIMARY KEY (`id_Actors`);

--
-- Index pour la table `Acts_in`
--
ALTER TABLE `Acts_in`
  ADD PRIMARY KEY (`id_Movies`,`id_Actors`),
  ADD KEY `FK_Acts_in_id_Actors` (`id_Actors`);

--
-- Index pour la table `Directed_by`
--
ALTER TABLE `Directed_by`
  ADD PRIMARY KEY (`id_Movies`,`id_Directors`),
  ADD KEY `FK_Directed_by_id_Directors` (`id_Directors`);

--
-- Index pour la table `Directors`
--
ALTER TABLE `Directors`
  ADD PRIMARY KEY (`id_Directors`);

--
-- Index pour la table `Favorites`
--
ALTER TABLE `Favorites`
  ADD PRIMARY KEY (`id_Movies`,`id_User`),
  ADD KEY `FK_Favorites_id_User` (`id_User`);

--
-- Index pour la table `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`id_Movies`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id_User`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Actors`
--
ALTER TABLE `Actors`
  MODIFY `id_Actors` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `Acts_in`
--
ALTER TABLE `Acts_in`
  MODIFY `id_Movies` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `Directed_by`
--
ALTER TABLE `Directed_by`
  MODIFY `id_Movies` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `Directors`
--
ALTER TABLE `Directors`
  MODIFY `id_Directors` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `Favorites`
--
ALTER TABLE `Favorites`
  MODIFY `id_Movies` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `Movies`
--
ALTER TABLE `Movies`
  MODIFY `id_Movies` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `id_User` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Acts_in`
--
ALTER TABLE `Acts_in`
  ADD CONSTRAINT `FK_Acts_in_id_Actors` FOREIGN KEY (`id_Actors`) REFERENCES `Actors` (`id_Actors`),
  ADD CONSTRAINT `FK_Acts_in_id_Movies` FOREIGN KEY (`id_Movies`) REFERENCES `Movies` (`id_Movies`);

--
-- Contraintes pour la table `Directed_by`
--
ALTER TABLE `Directed_by`
  ADD CONSTRAINT `FK_Directed_by_id_Directors` FOREIGN KEY (`id_Directors`) REFERENCES `Directors` (`id_Directors`),
  ADD CONSTRAINT `FK_Directed_by_id_Movies` FOREIGN KEY (`id_Movies`) REFERENCES `Movies` (`id_Movies`);

--
-- Contraintes pour la table `Favorites`
--
ALTER TABLE `Favorites`
  ADD CONSTRAINT `FK_Favorites_id_Movies` FOREIGN KEY (`id_Movies`) REFERENCES `Movies` (`id_Movies`),
  ADD CONSTRAINT `FK_Favorites_id_User` FOREIGN KEY (`id_User`) REFERENCES `Users` (`id_User`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
