-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 11 avr. 2023 à 11:09
-- Version du serveur : 8.0.32-0ubuntu0.22.04.2
-- Version de PHP : 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pokedex`
--

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `number` int NOT NULL,
  `type1` int NOT NULL,
  `type2` int DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `hp` int NOT NULL,
  `atk` int NOT NULL,
  `def` int NOT NULL,
  `atkspe` int NOT NULL,
  `defspe` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`, `image`, `number`, `type1`, `type2`, `description`, `height`, `weight`, `hp`, `atk`, `def`, `atkspe`, `defspe`, `created_at`) VALUES
(1, 'Bulbizarre', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png', 1, 40, 48, NULL, 3, 73, 45, 49, 49, 65, 65, NULL),
(2, 'Herbizarre', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png', 2, 40, 48, NULL, 60, 62, 60, 62, 63, 80, 80, NULL),
(3, 'Florizarre', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png', 3, 40, 48, NULL, 24, 9, 80, 82, 83, 100, 100, NULL),
(4, 'Salamèche', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png', 4, 46, NULL, NULL, 85, 18, 39, 52, 43, 60, 50, NULL),
(5, 'Reptincel', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png', 5, 46, NULL, NULL, 90, 41, 58, 64, 58, 80, 65, NULL),
(6, 'Dracaufeu', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png', 6, 39, 46, NULL, 24, 59, 78, 84, 78, 109, 85, NULL),
(7, 'Carapuce', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png', 7, 47, NULL, NULL, 72, 17, 44, 48, 65, 50, 64, NULL),
(8, 'Carabaffe', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png', 8, 47, NULL, NULL, 63, 94, 59, 63, 80, 65, 80, NULL),
(9, 'Tortank', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png', 9, 47, NULL, NULL, 51, 44, 79, 83, 100, 85, 105, NULL),
(10, 'Chenipan', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10.png', 10, 43, NULL, NULL, 3, 8, 45, 30, 35, 20, 20, NULL),
(11, 'Chrysacier', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/11.png', 11, 43, NULL, NULL, 16, 78, 50, 20, 55, 25, 25, NULL),
(12, 'Papilusion', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/12.png', 12, 39, 43, NULL, 77, 12, 60, 45, 50, 90, 80, NULL),
(13, 'Aspicot', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/13.png', 13, 40, 43, NULL, 28, 14, 40, 35, 30, 20, 20, NULL),
(14, 'Coconfort', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/14.png', 14, 40, 43, NULL, 24, 73, 45, 25, 50, 25, 25, NULL),
(15, 'Dardargnan', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/15.png', 15, 40, 43, NULL, 56, 75, 65, 90, 40, 45, 80, NULL),
(16, 'Roucool', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/16.png', 16, 37, 39, NULL, 5, 51, 40, 45, 40, 35, 35, NULL),
(17, 'Roucoups', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.png', 17, 37, 39, NULL, 32, 25, 63, 60, 55, 50, 50, NULL),
(18, 'Roucarnage', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/18.png', 18, 37, 39, NULL, 51, 3, 83, 80, 75, 70, 70, NULL),
(19, 'Rattata', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/19.png', 19, 37, NULL, NULL, 62, 22, 30, 56, 35, 25, 35, NULL),
(20, 'Rattatac', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/20.png', 20, 37, NULL, NULL, 82, 18, 55, 81, 60, 50, 70, NULL),
(21, 'Piafabec', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/21.png', 21, 37, 39, NULL, 44, 99, 40, 60, 30, 31, 31, NULL),
(22, 'Rapasdepic', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/22.png', 22, 37, 39, NULL, 70, 63, 65, 90, 65, 61, 61, NULL),
(23, 'Abo', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/23.png', 23, 40, NULL, NULL, 37, 37, 35, 60, 44, 40, 54, NULL),
(24, 'Arbok', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/24.png', 24, 40, NULL, NULL, 47, 97, 60, 95, 69, 65, 79, NULL),
(25, 'Pikachu', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png', 25, 49, NULL, NULL, 98, 81, 35, 55, 40, 50, 50, NULL),
(26, 'Raichu', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/26.png', 26, 49, NULL, NULL, 38, 60, 60, 90, 55, 90, 80, NULL),
(27, 'Sabelette', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/27.png', 27, 41, NULL, NULL, 90, 62, 50, 75, 85, 20, 30, NULL),
(28, 'Sablaireau', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/28.png', 28, 41, NULL, NULL, 73, 85, 75, 100, 110, 45, 55, NULL),
(29, 'Nidoran♀', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/29.png', 29, 40, NULL, NULL, 6, 18, 55, 47, 52, 40, 40, NULL),
(30, 'Nidorina', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/30.png', 30, 40, NULL, NULL, 85, 39, 70, 62, 67, 55, 55, NULL),
(31, 'Nidoqueen', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/31.png', 31, 40, 41, NULL, 99, 30, 90, 92, 87, 75, 85, NULL),
(32, 'Nidoran♂', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/32.png', 32, 40, NULL, NULL, 10, 40, 46, 57, 40, 40, 40, NULL),
(33, 'Nidorino', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/33.png', 33, 40, NULL, NULL, 35, 73, 61, 72, 57, 55, 55, NULL),
(34, 'Nidoking', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/34.png', 34, 40, 41, NULL, 1, 28, 81, 102, 77, 85, 75, NULL),
(35, 'Mélofée', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/35.png', 35, 54, NULL, NULL, 86, 34, 70, 45, 48, 60, 65, NULL),
(36, 'Mélodelfe', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/36.png', 36, 54, NULL, NULL, 35, 72, 95, 70, 73, 95, 90, NULL),
(37, 'Goupix', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/37.png', 37, 46, NULL, NULL, 93, 61, 38, 41, 40, 50, 65, NULL),
(38, 'Feunard', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/38.png', 38, 46, NULL, NULL, 92, 22, 73, 76, 75, 81, 100, NULL),
(39, 'Rondoudou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/39.png', 39, 37, 54, NULL, 98, 54, 115, 45, 20, 45, 25, NULL),
(40, 'Grodoudou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/40.png', 40, 37, 54, NULL, 4, 30, 140, 70, 45, 85, 50, NULL),
(41, 'Nosferapti', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/41.png', 41, 39, 40, NULL, 83, 4, 40, 45, 35, 30, 40, NULL),
(42, 'Nosferalto', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/42.png', 42, 39, 40, NULL, 63, 82, 75, 80, 70, 65, 75, NULL),
(43, 'Mystherbe', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/43.png', 43, 40, 48, NULL, 36, 74, 45, 50, 55, 75, 65, NULL),
(44, 'Ortide', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/44.png', 44, 40, 48, NULL, 13, 66, 60, 65, 70, 85, 75, NULL),
(45, 'Rafflesia', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/45.png', 45, 40, 48, NULL, 11, 4, 75, 80, 85, 110, 90, NULL),
(46, 'Paras', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/46.png', 46, 43, 48, NULL, 33, 60, 35, 70, 55, 45, 55, NULL),
(47, 'Parasect', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/47.png', 47, 43, 48, NULL, 83, 10, 60, 95, 80, 60, 80, NULL),
(48, 'Mimitoss', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/48.png', 48, 40, 43, NULL, 64, 75, 60, 55, 50, 40, 55, NULL),
(49, 'Aéromite', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/49.png', 49, 40, 43, NULL, 87, 18, 70, 65, 60, 90, 75, NULL),
(50, 'Taupiqueur', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/50.png', 50, 41, NULL, NULL, 92, 34, 10, 55, 25, 35, 45, NULL),
(51, 'Triopikeur', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/51.png', 51, 41, NULL, NULL, 29, 45, 35, 100, 50, 50, 70, NULL),
(52, 'Miaouss', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/52.png', 52, 37, NULL, NULL, 7, 72, 40, 45, 35, 40, 40, NULL),
(53, 'Persian', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/53.png', 53, 37, NULL, NULL, 16, 51, 65, 70, 60, 65, 65, NULL),
(54, 'Psykokwak', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/54.png', 54, 47, NULL, NULL, 60, 33, 50, 52, 48, 65, 50, NULL),
(55, 'Akwakwak', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/55.png', 55, 47, NULL, NULL, 51, 67, 80, 82, 78, 95, 80, NULL),
(56, 'Férosinge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/56.png', 56, 38, NULL, NULL, 66, 37, 40, 80, 35, 35, 45, NULL),
(57, 'Colossinge', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/57.png', 57, 38, NULL, NULL, 21, 98, 65, 105, 60, 60, 70, NULL),
(58, 'Caninos', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/58.png', 58, 46, NULL, NULL, 5, 34, 55, 70, 45, 70, 50, NULL),
(59, 'Arcanin', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/59.png', 59, 46, NULL, NULL, 82, 16, 90, 110, 80, 100, 80, NULL),
(60, 'Ptitard', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/60.png', 60, 47, NULL, NULL, 43, 56, 40, 50, 40, 40, 40, NULL),
(61, 'Têtarte', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/61.png', 61, 47, NULL, NULL, 77, 24, 65, 65, 65, 50, 50, NULL),
(62, 'Tartard', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/62.png', 62, 38, 47, NULL, 98, 14, 90, 95, 95, 70, 90, NULL),
(63, 'Abra', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/63.png', 63, 50, NULL, NULL, 29, 17, 25, 20, 15, 105, 55, NULL),
(64, 'Kadabra', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/64.png', 64, 50, NULL, NULL, 88, 39, 40, 35, 30, 120, 70, NULL),
(65, 'Alakazam', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/65.png', 65, 50, NULL, NULL, 5, 23, 55, 50, 45, 135, 95, NULL),
(66, 'Machoc', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/66.png', 66, 38, NULL, NULL, 93, 51, 70, 80, 50, 35, 35, NULL),
(67, 'Machopeur', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/67.png', 67, 38, NULL, NULL, 21, 11, 80, 100, 70, 50, 60, NULL),
(68, 'Mackogneur', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/68.png', 68, 38, NULL, NULL, 36, 94, 90, 130, 80, 65, 85, NULL),
(69, 'Chétiflor', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/69.png', 69, 40, 48, NULL, 63, 15, 50, 75, 35, 70, 30, NULL),
(70, 'Boustiflor', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/70.png', 70, 40, 48, NULL, 62, 88, 65, 90, 50, 85, 45, NULL),
(71, 'Empiflor', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/71.png', 71, 40, 48, NULL, 54, 53, 80, 105, 65, 100, 70, NULL),
(72, 'Tentacool', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/72.png', 72, 40, 47, NULL, 33, 49, 40, 40, 35, 50, 100, NULL),
(73, 'Tentacruel', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/73.png', 73, 40, 47, NULL, 46, 17, 80, 70, 65, 80, 120, NULL),
(74, 'Racaillou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/74.png', 74, 41, 42, NULL, 78, 35, 40, 80, 100, 30, 30, NULL),
(75, 'Gravalanch', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/75.png', 75, 41, 42, NULL, 36, 35, 55, 95, 115, 45, 45, NULL),
(76, 'Grolem', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/76.png', 76, 41, 42, NULL, 66, 90, 80, 120, 130, 55, 65, NULL),
(77, 'Ponyta', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/77.png', 77, 46, NULL, NULL, 89, 15, 50, 85, 55, 65, 65, NULL),
(78, 'Galopa', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/78.png', 78, 46, NULL, NULL, 2, 56, 65, 100, 70, 80, 80, NULL),
(79, 'Ramoloss', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/79.png', 79, 47, 50, NULL, 93, 28, 90, 65, 65, 40, 40, NULL),
(80, 'Flagadoss', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/80.png', 80, 47, 50, NULL, 33, 2, 95, 75, 110, 100, 80, NULL),
(81, 'Magnéti', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/81.png', 81, 45, 49, NULL, 60, 35, 25, 35, 70, 95, 55, NULL),
(82, 'Magnéton', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/82.png', 82, 45, 49, NULL, 90, 93, 50, 60, 95, 120, 70, NULL),
(83, 'Canarticho', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/83.png', 83, 37, 39, NULL, 14, 98, 52, 90, 55, 58, 62, NULL),
(84, 'Doduo', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/84.png', 84, 37, 39, NULL, 41, 3, 35, 85, 45, 35, 35, NULL),
(85, 'Dodrio', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/85.png', 85, 37, 39, NULL, 42, 60, 60, 110, 70, 60, 60, NULL),
(86, 'Otaria', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/86.png', 86, 47, NULL, NULL, 2, 15, 65, 45, 55, 45, 70, NULL),
(87, 'Lamantine', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/87.png', 87, 47, 51, NULL, 43, 34, 90, 70, 80, 70, 95, NULL),
(88, 'Tadmorv', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/88.png', 88, 40, NULL, NULL, 26, 63, 80, 80, 50, 40, 50, NULL),
(89, 'Grotadmorv', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/89.png', 89, 40, NULL, NULL, 74, 38, 105, 105, 75, 65, 100, NULL),
(90, 'Kokiyas', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/90.png', 90, 47, NULL, NULL, 59, 1, 30, 65, 100, 45, 25, NULL),
(91, 'Crustabri', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/91.png', 91, 47, 51, NULL, 69, 29, 50, 95, 180, 85, 45, NULL),
(92, 'Fantominus', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/92.png', 92, 40, 44, NULL, 49, 99, 30, 35, 30, 100, 35, NULL),
(93, 'Spectrum', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/93.png', 93, 40, 44, NULL, 31, 36, 45, 50, 45, 115, 55, NULL),
(94, 'Ectoplasma', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/94.png', 94, 40, 44, NULL, 64, 22, 60, 65, 60, 130, 75, NULL),
(95, 'Onix', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/95.png', 95, 41, 42, NULL, 55, 62, 35, 45, 160, 30, 45, NULL),
(96, 'Soporifik', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/96.png', 96, 50, NULL, NULL, 79, 39, 60, 48, 45, 43, 90, NULL),
(97, 'Hypnomade', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/97.png', 97, 50, NULL, NULL, 62, 36, 85, 73, 70, 73, 115, NULL),
(98, 'Krabby', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/98.png', 98, 47, NULL, NULL, 66, 97, 30, 105, 90, 25, 25, NULL),
(99, 'Krabboss', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/99.png', 99, 47, NULL, NULL, 30, 64, 55, 130, 115, 50, 50, NULL),
(100, 'Voltorbe', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/100.png', 100, 49, NULL, NULL, 95, 50, 40, 30, 50, 55, 55, NULL),
(101, 'Électrode', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/101.png', 101, 49, NULL, NULL, 52, 71, 60, 50, 70, 80, 80, NULL),
(102, 'Noeunoeuf', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/102.png', 102, 48, 50, NULL, 74, 97, 60, 40, 80, 60, 45, NULL),
(103, 'Noadkoko', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/103.png', 103, 48, 50, NULL, 99, 31, 95, 95, 85, 125, 75, NULL),
(104, 'Osselait', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/104.png', 104, 41, NULL, NULL, 44, 21, 50, 50, 95, 40, 50, NULL),
(105, 'Ossatueur', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/105.png', 105, 41, NULL, NULL, 48, 76, 60, 80, 110, 50, 80, NULL),
(106, 'Kicklee', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/106.png', 106, 38, NULL, NULL, 65, 85, 50, 120, 53, 35, 110, NULL),
(107, 'Tygnon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/107.png', 107, 38, NULL, NULL, 75, 83, 50, 105, 79, 35, 110, NULL),
(108, 'Excelangue', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/108.png', 108, 37, NULL, NULL, 84, 69, 90, 55, 75, 60, 75, NULL),
(109, 'Smogo', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/109.png', 109, 40, NULL, NULL, 90, 56, 40, 65, 95, 60, 45, NULL),
(110, 'Smogogo', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/110.png', 110, 40, NULL, NULL, 51, 48, 65, 90, 120, 85, 70, NULL),
(111, 'Rhinocorne', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/111.png', 111, 41, 42, NULL, 60, 46, 80, 85, 95, 30, 30, NULL),
(112, 'Rhinoféros', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/112.png', 112, 41, 42, NULL, 39, 9, 105, 130, 120, 45, 45, NULL),
(113, 'Leveinard', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/113.png', 113, 37, NULL, NULL, 44, 82, 250, 5, 5, 35, 105, NULL),
(114, 'Saquedeneu', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/114.png', 114, 48, NULL, NULL, 54, 11, 65, 55, 115, 100, 40, NULL),
(115, 'Kangourex', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/115.png', 115, 37, NULL, NULL, 4, 78, 105, 95, 80, 40, 80, NULL),
(116, 'Hypotrempe', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/116.png', 116, 47, NULL, NULL, 94, 29, 30, 40, 70, 70, 25, NULL),
(117, 'Hypocéan', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/117.png', 117, 47, NULL, NULL, 20, 59, 55, 65, 95, 95, 45, NULL),
(118, 'Poissirène', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/118.png', 118, 47, NULL, NULL, 49, 61, 45, 67, 60, 35, 50, NULL),
(119, 'Poissoroy', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/119.png', 119, 47, NULL, NULL, 65, 75, 80, 92, 65, 65, 80, NULL),
(120, 'Stari', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/120.png', 120, 47, NULL, NULL, 96, 42, 30, 45, 55, 70, 55, NULL),
(121, 'Staross', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/121.png', 121, 47, 50, NULL, 54, 87, 60, 75, 85, 100, 85, NULL),
(122, 'M. Mime', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/122.png', 122, 50, 54, NULL, 38, 77, 40, 45, 65, 100, 120, NULL),
(123, 'Insécateur', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/123.png', 123, 39, 43, NULL, 72, 10, 70, 110, 80, 55, 80, NULL),
(124, 'Lippoutou', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/124.png', 124, 50, 51, NULL, 53, 3, 65, 50, 35, 115, 95, NULL),
(125, 'Élektek', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/125.png', 125, 49, NULL, NULL, 22, 70, 65, 83, 57, 95, 85, NULL),
(126, 'Magmar', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/126.png', 126, 46, NULL, NULL, 24, 79, 65, 95, 57, 100, 85, NULL),
(127, 'Scarabrute', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/127.png', 127, 43, NULL, NULL, 44, 23, 65, 125, 100, 55, 70, NULL),
(128, 'Tauros', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/128.png', 128, 37, NULL, NULL, 20, 94, 75, 100, 95, 40, 70, NULL),
(129, 'Magicarpe', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/129.png', 129, 47, NULL, NULL, 77, 26, 20, 10, 55, 15, 20, NULL),
(130, 'Léviator', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/130.png', 130, 39, 47, NULL, 57, 91, 95, 125, 79, 60, 100, NULL),
(131, 'Lokhlass', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/131.png', 131, 47, 51, NULL, 19, 88, 130, 85, 80, 85, 95, NULL),
(132, 'Métamorph', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png', 132, 37, NULL, NULL, 45, 7, 48, 48, 48, 48, 48, NULL),
(133, 'Évoli', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/133.png', 133, 37, NULL, NULL, 47, 34, 55, 55, 50, 45, 65, NULL),
(134, 'Aquali', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/134.png', 134, 47, NULL, NULL, 96, 57, 130, 65, 60, 110, 95, NULL),
(135, 'Voltali', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/135.png', 135, 49, NULL, NULL, 33, 15, 65, 65, 60, 110, 95, NULL),
(136, 'Pyroli', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/136.png', 136, 46, NULL, NULL, 90, 51, 65, 130, 60, 95, 110, NULL),
(137, 'Porygon', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/137.png', 137, 37, NULL, NULL, 7, 65, 65, 60, 70, 85, 75, NULL),
(138, 'Amonita', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/138.png', 138, 42, 47, NULL, 59, 18, 35, 40, 100, 90, 55, NULL),
(139, 'Amonistar', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/139.png', 139, 42, 47, NULL, 26, 28, 70, 60, 125, 115, 70, NULL),
(140, 'Kabuto', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/140.png', 140, 42, 47, NULL, 60, 56, 30, 80, 90, 55, 45, NULL),
(141, 'Kabutops', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/141.png', 141, 42, 47, NULL, 94, 47, 60, 115, 105, 65, 70, NULL),
(142, 'Ptéra', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/142.png', 142, 39, 42, NULL, 17, 55, 80, 105, 65, 60, 75, NULL),
(143, 'Ronflex', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/143.png', 143, 37, NULL, NULL, 5, 4, 160, 110, 65, 65, 110, NULL),
(144, 'Artikodin', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/144.png', 144, 39, 51, NULL, 63, 69, 90, 85, 100, 95, 125, NULL),
(145, 'Électhor', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/145.png', 145, 39, 49, NULL, 10, 80, 90, 90, 85, 125, 90, NULL),
(146, 'Sulfura', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/146.png', 146, 39, 46, NULL, 47, 22, 90, 100, 90, 125, 85, NULL),
(147, 'Minidraco', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/147.png', 147, 52, NULL, NULL, 77, 32, 41, 64, 45, 50, 50, NULL),
(148, 'Draco', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/148.png', 148, 52, NULL, NULL, 16, 66, 61, 84, 65, 70, 70, NULL),
(149, 'Dracolosse', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/149.png', 149, 39, 52, NULL, 72, 36, 91, 134, 95, 100, 100, NULL),
(150, 'Mewtwo', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/150.png', 150, 50, NULL, NULL, 11, 97, 106, 110, 90, 154, 90, NULL),
(151, 'Mew', 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png', 151, 50, NULL, NULL, 59, 96, 100, 100, 100, 100, 100, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`id`, `name`, `created_at`) VALUES
(37, 'Normal', NULL),
(38, 'Combat', NULL),
(39, 'Vol', NULL),
(40, 'Poison', NULL),
(41, 'Sol', NULL),
(42, 'Roche', NULL),
(43, 'Insecte', NULL),
(44, 'Spectre', NULL),
(45, 'Acier', NULL),
(46, 'Feu', NULL),
(47, 'Eau', NULL),
(48, 'Plante', NULL),
(49, 'Électrik', NULL),
(50, 'Psy', NULL),
(51, 'Glace', NULL),
(52, 'Dragon', NULL),
(53, 'Ténèbres', NULL),
(54, 'Fée', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type1` (`type1`),
  ADD KEY `type2` (`type2`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`type1`) REFERENCES `type` (`id`),
  ADD CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`type2`) REFERENCES `type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
