-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 28 Décembre 2017 à 20:45
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `reactive-football`
--

-- --------------------------------------------------------

--
-- Structure de la table `favoris`
--

CREATE TABLE `favoris` (
  `fav_id` int(11) NOT NULL,
  `fav_attaquant` int(11) DEFAULT NULL,
  `fav_milieu` int(11) DEFAULT NULL,
  `fav_defenseur` int(11) DEFAULT NULL,
  `fav_gardien` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `favoris`
--

INSERT INTO `favoris` (`fav_id`, `fav_attaquant`, `fav_milieu`, `fav_defenseur`, `fav_gardien`) VALUES
(1, 0, 0, 0, 0),
(2, 1, 2, 3, 4),
(3, 1, 2, 3, 4),
(56, 54, 32, 45, 5),
(7, 6, 5, 5, 5),
(57, 1, 1, 1, 1),
(58, 1, 1, 1, 1),
(59, 23, 3, 3, 3),
(60, 5, 5, 4, 4),
(61, 1, 2, 3, 4),
(70, 0, 0, 0, 0),
(71, 0, 0, 0, 0),
(72, 0, 0, 0, 0),
(73, 0, 0, 0, 0),
(74, 0, 0, 0, 0),
(75, 0, 0, 0, 0),
(76, 0, 0, 0, 0),
(77, 0, 0, 0, 0),
(100, 0, 0, 0, 0),
(101, 0, 0, 0, 0),
(102, 0, 0, 0, 0),
(103, 0, 0, 0, 0),
(104, 0, 0, 0, 0),
(105, 0, 0, 0, 0),
(106, 0, 0, 0, 0),
(107, 1, 1, 1, 1),
(108, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `jou_id` int(11) NOT NULL,
  `jou_nom` varchar(50) NOT NULL,
  `jou_nationalite` varchar(50) NOT NULL,
  `jou_club` varchar(50) NOT NULL,
  `jou_pays_club` varchar(50) NOT NULL,
  `jou_score` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `joueur`
--

INSERT INTO `joueur` (`jou_id`, `jou_nom`, `jou_nationalite`, `jou_club`, `jou_pays_club`, `jou_score`) VALUES
(1, 'Cristiano Ronaldo', 'Portugal', 'Real Madrid', 'Spain', 4789),
(2, 'Lionel Messi', 'Argentina', 'Barcelona', 'Spain', 4721),
(3, 'Luis Suarez', 'Uruguay', 'Barcelona', 'Spain', 4455),
(4, 'istiano Ronaldo', 'Portugal', 'Real Madrid', 'Spain', 4789),
(5, 'Lionel Messi', 'Argentina', 'Barcelona', 'Spain', 4721),
(6, 'Luis Suarez', 'Uruguay', 'Barcelona', 'Spain', 4455),
(7, 'Antoine Griezmann', 'France', 'Atletico Madrid', 'Spain', 4285),
(8, 'Neymar', 'Brazil', 'Barcelona', 'Spain', 4248),
(9, 'Gareth Bale', 'Wales', 'Real Madrid', 'Spain', 4056),
(10, 'Robert Lewandowski', 'Poland', 'Bayern Munich', 'Germany', 3119),
(11, 'Pierre-Emerick Aubameyang', 'Gabon', 'Borussia Dortmund', 'Germany', 2929),
(12, 'Alexis Sanchez', 'Chile', 'Arsenal', 'England', 2695),
(13, 'Riyad Mahrez', 'Algeria', 'Leicester City', 'England', 2582),
(14, 'Sergio Aguero', 'Argentina', 'Manchester City', 'England', 2531),
(15, 'Luka Modric', 'Croatia', 'Real Madrid', 'Spain', 2412),
(16, 'Kevin De Bruyne', 'Belgium', 'Manchester City', 'England', 2381),
(17, 'Gonzalo Higuain', 'Argentina', 'Juventus', 'Italy', 2148),
(18, 'Andres Iniesta', 'Spain', 'Barcelona', 'Spain', 2096),
(19, 'N\'Golo Kante', 'France', 'Chelsea', 'England', 2036),
(20, 'Paul Pogba', 'France', 'Manchester United', 'England', 1952),
(21, 'Manuel Neuer', 'Germany', 'Bayern Munich', 'Germany', 1904),
(22, 'Jamie Vardy', 'England', 'Leicester City', 'England', 1845),
(23, 'Zlatan Ibrahimovic', 'Sweden', 'Manchester United', 'England', 1809),
(24, 'Toni Kroos', 'Germany', 'Real Madrid', 'Spain', 1800),
(25, 'Gianluigi Buffon', 'Italy', 'Juventus', 'Italy', 1797),
(26, 'Mesut Ozil', 'Germany', 'Arsenal', 'England', 1694),
(27, 'Diego Godin', 'Uruguay', 'Atletico Madrid', 'Spain', 1686),
(28, 'Sergio Ramos', 'Spain', 'Real Madrid', 'Spain', 1663),
(29, 'Leonardo Bonucci', 'Italy', 'Juventus', 'Italy', 1583),
(30, 'Dimitri Payet', 'France', 'West Ham United', 'England', 1543),
(31, 'Philippe Coutinho', 'Brazil', 'Liverpool', 'England', 1507),
(32, 'David De Gea', 'Spain', 'Manchester United', 'England', 1169),
(33, 'Pepe', 'Portugal', 'Real Madrid', 'Spain', 1054),
(34, 'Thomas Muller', 'Germany', 'Bayern Munich', 'Germany', 1040),
(35, 'Arturo Vidal', 'Chile', 'Bayern Munich', 'Germany', 1020),
(36, 'Harry Kane', 'England', 'Tottenham Hotspur', 'England', 999),
(37, 'Ivan Rakiti?', 'Croatia', 'Barcelona', 'Spain', 978),
(38, 'Eden Hazard', 'Belgium', 'Chelsea', 'England', 948),
(39, 'Jerome Boateng', 'Germany', 'Bayern Munich', 'Germany', 828),
(40, 'Paulo Dybala', 'Argentina', 'Juventus', 'Italy', 765),
(41, 'Gerard Pique', 'Spain', 'Barcelona', 'Spain', 671),
(42, 'Sergio Busquets', 'Spain', 'Barcelona', 'Spain', 648),
(43, 'Hugo Lloris', 'France', 'Tottenham Hotspur', 'England', 518),
(44, 'Koke', 'Spain', 'Atletico Madrid', 'Spain', 491),
(45, 'Jan Oblak', 'Slovenia', 'Atletico Madrid', 'Spain', 440),
(46, 'Angel Di Maria', 'Argentina', 'PSG', 'France', 440),
(47, 'David Silva', 'Spain', 'Manchester City', 'England', 411),
(48, 'Marco Verratti', 'Italy', 'PSG', 'France', 407),
(49, 'Diego Costa', 'Brazil', 'Chelsea', 'England', 380),
(50, 'Edinson Cavani', 'Uruguay', 'PSG', 'France', 361),
(51, 'Marcelo', 'Brazil', 'Real Madrid', 'Spain', 355),
(52, 'Mauro Icardi', 'Argentina', 'Internazionale', 'Italy', 324),
(53, 'Karim Benzema', 'France', 'Real Madrid', 'Spain', 319),
(54, 'Mats Hummels', 'Germany', 'Bayern Munich', 'Germany', 310),
(55, 'Thiago Silva', 'Brazil', 'PSG', 'France', 295),
(56, 'Casemiro', 'Brazil', 'Real Madrid', 'Spain', 287),
(57, 'Renato Sanches', 'Portugal', 'Bayern Munich', 'Germany', 283),
(58, 'Keylor Navas', 'Costa Rica', 'Real Madrid', 'Spain', 266),
(59, 'Philipp Lahm', 'Germany', 'Bayern Munich', 'Germany', 257),
(60, 'Henrikh Mkhitaryan', 'Armenia', 'Manchester United', 'England', 247),
(61, 'Toby Alderweireld', 'Belgium', 'Tottenham Hotspur', 'England', 243),
(62, 'Kevin Gameiro', 'France', 'Atletico Madrid', 'Spain', 243),
(63, 'Joshua Kimmich', 'Germany', 'Bayern Munich', 'Germany', 238),
(64, 'David Alaba', 'Austria', 'Bayern Munich', 'Germany', 236),
(65, 'Javier Mascherano', 'Argentina', 'Barcelona', 'Spain', 225),
(66, 'Douglas Costa', 'Brazil', 'Bayern Munich', 'Germany', 223),
(67, 'Gabriel Jesus', 'Brazil', 'Palmeiras', 'Brazil', 222),
(68, 'Mohamed Salah', 'Egypt', 'Roma', 'Italy', 191),
(69, 'Giorgio Chiellini', 'Italy', 'Juventus', 'Italy', 190),
(70, 'Aritz Aduriz', 'Spain', 'Athletic Bilbao', 'Spain', 189),
(71, 'Laurent Koscielny', 'France', 'Arsenal', 'England', 181),
(72, 'Sadio Mane', 'Senegal', 'Liverpool', 'England', 175),
(73, 'Miralem Pjanic', 'Bosnia-Herzegovina', 'Juventus', 'Italy', 156),
(74, 'alvaro Morata', 'Spain', 'Real Madrid', 'Spain', 152),
(75, 'Kasper Schmeichel', 'Denmark', 'Leicester City', 'England', 149),
(76, 'Aaron Ramsey', 'Wales', 'Arsenal', 'England', 147),
(77, 'Raphael Guerreiro', 'Portugal', 'Borussia Dortmund', 'Germany', 145),
(78, 'Rui Patricio', 'Portugal', 'Sporting Lisbon', 'Portugal', 145),
(79, 'Roberto Firmino', 'Brazil', 'Liverpool', 'England', 136),
(80, 'Yannick Carrasco', 'Belgium', 'Atletico Madrid', 'Spain', 128),
(81, 'Dani Alves', 'Brazil', 'Juventus', 'Italy', 126),
(82, 'Nani', 'Portugal', 'Valencia', 'Spain', 125),
(83, 'Gianluigi Donnarumma', 'Italy', 'Milan', 'Italy', 120),
(84, 'Claudio Bravo', 'Chile', 'Manchester City', 'England', 106),
(85, 'Marek Hamsik', 'Slovakia', 'Napoli', 'Italy', 104),
(86, 'Miguel Borja', 'Colombia', 'Atletico Nacional', 'Colombia', 101),
(87, 'Blaise Matuidi', 'France', 'PSG', 'France', 98),
(88, 'Ilkay Gundogan', 'Germany', 'Manchester City', 'England', 95),
(89, 'Juan Mata', 'Spain', 'Manchester United', 'England', 95),
(90, 'James Rodriguez', 'Colombia', 'Real Madrid', 'Spain', 92),
(91, 'Raheem Sterling', 'England', 'Manchester City', 'England', 90),
(92, 'Arjen Robben', 'Netherlands', 'Bayern Munich', 'Germany', 82),
(93, 'Dele Alli', 'England', 'Tottenham Hotspur', 'England', 81),
(94, 'Adrien Silva', 'Portugal', 'Sporting Lisbon', 'Portugal', 77),
(95, 'Thibaut Courtois', 'Belgium', 'Chelsea', 'England', 74),
(96, 'Fernandinho', 'Brazil', 'Manchester City', 'England', 69),
(97, 'Alexandre Lacazette', 'France', 'Lyon', 'France', 67),
(98, 'ever Banega', 'Argentina', 'Internazionale', 'Italy', 67),
(99, 'Francesco Totti', 'Italy', 'Roma', 'Italy', 65),
(100, 'Santi Cazorla', 'Spain', 'Arsenal', 'England', 65),
(101, 'Thiago Alcantara', 'Spain', 'Bayern Munich', 'Germany', 63),
(102, 'Julian Weigl', 'Germany', 'Borussia Dortmund', 'Germany', 59),
(103, 'Ousmane Dembele', 'France', 'Borussia Dortmund', 'Germany', 57),
(104, 'Romelu Lukaku', 'Belgium', 'Everton', 'England', 57),
(105, 'Islam Slimani', 'Algeria', 'Leicester City', 'England', 56),
(106, 'Andrea Barzagli', 'Italy', 'Juventus', 'Italy', 55),
(107, 'Radja Nainggolan', 'Belgium', 'Roma', 'Italy', 55),
(108, 'Javier Hernandez', 'Mexico', 'Bayer Leverkusen', 'Germany', 52),
(109, 'Anthony Martial', 'France', 'Manchester United', 'England', 49),
(110, 'Vitolo', 'Spain', 'Sevilla', 'Spain', 47),
(111, 'Hector Bellerin', 'Spain', 'Arsenal', 'England', 46),
(112, 'Gylfi Sigurdsson', 'Iceland', 'Swansea City', 'England', 44),
(113, 'Marco Reus', 'Germany', 'Borussia Dortmund', 'Germany', 44),
(114, 'Gabi', 'Spain', 'Atletico Madrid', 'Spain', 43),
(115, 'Gary Medel', 'Chile', 'Internazionale', 'Italy', 42),
(116, 'Grzegorz Krychowiak', 'Poland', 'PSG', 'France', 40),
(117, 'Petr Cech', 'Czech Republic', 'Arsenal', 'England', 37),
(118, 'Andre Gomes', 'Portugal', 'Barcelona', 'Spain', 37),
(119, 'Joao Mario', 'Portugal', 'Internazionale', 'Italy', 36),
(120, 'Hatem Ben Arfa', 'France', 'PSG', 'France', 34),
(121, 'Raphael Varane', 'France', 'Real Madrid', 'Spain', 34),
(122, 'Serge Aurier', 'Ivory Coast', 'PSG', 'France', 34),
(123, 'Sebastian Giovinco', 'Italy', 'Toronto', 'USA', 33),
(124, 'Xabi Alonso', 'Spain', 'Bayern Munich', 'Germany', 31),
(125, 'Marquinhos', 'Brazil', 'PSG', 'France', 25),
(126, 'Kalidou Koulibaly', 'Senegal', 'Napoli', 'Italy', 21),
(127, 'Yacine Brahimi', 'Algeria', 'Porto', 'Portugal', 44),
(128, 'Yaya Toure', 'Ivory Coast', 'Manchester City', 'England', 41),
(129, 'Adam Lallana', 'England', 'Liverpool', 'England', 37),
(130, 'Carlos Bacca', 'Colombia', 'Milan', 'Italy', 27),
(131, 'Eduardo Vargas', 'Chile', 'Hoffenheim', 'Germany', 26),
(132, 'Willian', 'Brazil', 'Chelsea', 'England', 26),
(133, 'Franco Armani', 'Colombia', 'Atletico Nacional', 'Colombia', 25),
(134, 'Wayne Rooney', 'England', 'Manchester United', 'England', 25),
(135, 'Claudio Marchisio', 'Italy', 'Juventus', 'Italy', 22),
(136, 'Omar Abdulrahman', 'UAE', 'Al Ain', 'UAE', 21),
(137, 'William Carvalho', 'Portugal', 'Sporting', 'Portugal', 21),
(138, 'Son Heung-min', 'South Korea', 'Tottenham Hotspur', 'England', 21),
(139, 'Juan Cuadrado', 'Colombia', 'Juventus', 'Italy', 21),
(140, 'Andrea Pirlo', 'Italy', 'New York City FC', 'USA', 20),
(141, 'Christian Pulisic', 'USA', 'Borussia Dortmund', 'Germany', 15),
(142, 'Birkir Bjarnason', 'Iceland', 'Basel', 'Switzerland', 14),
(143, 'Christian Eriksen', 'Denmark', 'Tottenham Hotspur', 'England', 14),
(144, 'Arda Turan', 'Turkey', 'Barcelona', 'Spain', 14),
(145, 'Isco', 'Spain', 'Real Madrid', 'Spain', 13),
(146, 'Marc-Andre ter Stegen', 'Germany', 'Barcelona', 'Spain', 12),
(147, 'Carlos Tevez', 'Argentina', 'Boca Juniors', 'Argentina', 12),
(148, 'Edin Dzeko', 'Bosnia-Herzegovina', 'Roma', 'Italy', 12),
(149, 'Jonas Goncalves Oliveira', 'Brazil', 'Benfica', 'Portugal', 10),
(150, 'Sami Khedira', 'Germany', 'Juventus', 'Italy', 10),
(151, 'Lorenzo Insigne', 'Italy', 'Napoli', 'Italy', 10),
(152, 'Bernardo Silva', 'Portugal', 'Monaco', 'France', 9),
(153, 'Alessandro Florenzi', 'Italy', 'Roma', 'Italy', 9),
(154, 'Mario GOtze', 'Germany', 'Borussia Dortmund', 'Germany', 8),
(155, 'Francis Coquelin', 'France', 'Arsenal', 'England', 8),
(156, 'Marcus Rashford', 'England', 'Manchester United', 'England', 8),
(157, 'Andrea Belotti', 'Italy', 'Torino', 'Italy', 7),
(158, 'Jordi Alba', 'Spain', 'Barcelona', 'Spain', 6),
(159, 'Alex Teixeira', 'Brazil', 'Jiangsu Suning', 'China', 5),
(160, 'Anthony Modeste', 'France', 'FC Cologne', 'Germany', 5),
(161, 'Ivan Perisic', 'Croatia', 'Internazionale', 'Italy', 5),
(162, 'Marcelo Diaz', 'Chile', 'Celta Vigo', 'Spain', 5),
(163, 'Andre Ayew', 'Ghana', 'West Ham United', 'England', 4),
(164, 'Arkadiusz Milik', 'Poland', 'Napoli', 'Italy', 4),
(165, 'Fedor Smolov', 'Russia', 'Krasnodar', 'Russia', 4),
(166, 'Jose Fonte', 'Portugal', 'Southampton', 'England', 4),
(167, 'Walter Montoya', 'Argentina', 'Rosario Central', 'Argentina', 3),
(168, 'Mario Balotelli', 'Italy', 'Nice', 'France', 2),
(169, 'Paulinho', 'Brazil', 'Guangzhou', 'China', 2),
(170, 'Virgil van Dijk', 'Netherlands', 'Southampton', 'England', 2),
(171, 'Felipe Anderson', 'Brazil', 'Lazio', 'Italy', 2),
(172, 'John Stones', 'England', 'Manchester City', 'England', 2),
(173, 'Kelechi Iheanacho', 'Nigeria', 'Manchester City', 'England', 2),
(174, 'Andriy Yarmolenko', 'Ukraine', 'Dynamo Kyiv', 'Ukraine', 1),
(175, 'David Luiz', 'Brazil', 'Chelsea', 'England', 1),
(176, 'Hakim Ziyech', 'Netherlands', 'Ajax', 'Netherlands', 1),
(177, 'Hulk', 'Brazil', 'Shanghai IPG', 'China', 1),
(178, 'Macnelly Torres', 'Colombia', 'Atletico Nacional', 'Colombia', 1),
(179, 'Quincy Promes', 'Netherlands', 'Spartak Moscow', 'Russia', 1),
(180, 'Sardar Azmoun', 'Iran', 'Rostov', 'Russia', 1),
(181, 'Elseid Hysaj', 'Albania', 'Napoli', 'Italy', 0),
(182, 'Daniele De Rossi', 'Italy', 'Roma', 'Italy', 0),
(183, 'Davidson Sanchez', 'Colombia', 'Ajax', 'Netherlands', 0),
(184, 'Fred', 'Brazil', 'Atletico Mineiro', 'Brazil', 0),
(185, 'Bradley Wright-Phillips', 'England', 'New York Red Bulls', 'USA', 0),
(186, 'Robinho', 'Brazil', 'Atletico Mineiro', 'Brazil', 0),
(187, 'David Villa', 'Spain', 'New York CIty FC', 'USA', 0),
(188, 'Marcos Danilo Padilha', 'Brazil', 'Chapecoense', 'Brazil', 0),
(189, 'Ozan Tufan', 'Turkey', 'Fenerbahce', 'Turkey', 0),
(190, 'Xherdan Shaqiri', 'Switzerland', 'Stoke City', 'England', 0),
(191, 'Dirk Kuyt', 'Netherlands', 'Feyenoord', 'Netherlands', 0),
(192, 'Alfredo Morelos', 'Colombia', 'Independiente Medellin', 'Colombia', 0),
(193, 'Filipe Luis', 'Brazil', 'Atletico Madrid', 'Spain', 0),
(194, 'Karim El Ahmadi', 'Morocco', 'Feyenoord', 'Netherlands', 0),
(195, 'Jose Gimenez', 'Uruguay', 'Atletico Madrid', 'Spain', 0),
(196, 'Marlos Moreno', 'Colombia', 'Deportivo La Coruna', 'Spain', 0),
(197, 'Vincent Enyeama', 'Nigeria', 'Lille', 'France', 0),
(198, 'Nicolas Gaitan', 'Argentina', 'Atletico Madrid', 'Spain', 0),
(199, 'Lucas Biglia', 'Argentina', 'Lazio', 'Italy', 0),
(200, 'Vincent Kompany', 'Belgium', 'Manchester City', 'England', 0),
(201, 'Carlos Sanchez', 'Uruguay', 'Monterrey', 'Mexico', 0),
(202, 'Librado Azcona', 'Paraguay', 'Independiente del Valle', 'Ecuador', 0),
(203, 'Odion Ighalo', 'Nigeria', 'Watford', 'England', 0),
(204, 'Ricardo Quaresma', 'Portugal', 'Besiktas', 'Turkey', 0),
(205, 'Ahmed Khalil', 'UAE', 'Al-Ahli', 'UAE', 0),
(206, 'Luiz Gustavo', 'Brazil', 'Wolfsburg', 'Germany', 0),
(207, 'Yerry Mina', 'Colombia', 'Palmeiras', 'Brazil', 0),
(208, 'Bruno Fornaroli', 'Uruguay', 'Melbourne City', 'Australia', 0),
(209, 'Oguzhan Ozyakup', 'Turkey', 'Besiktas', 'Turkey', 0),
(210, 'Antonio Candreva', 'Italian', 'Internazionale', 'Italy', 0),
(211, 'Atiba Hutchinson', 'Canada', 'Besiktas', 'Turkey', 0),
(212, 'Danny Drinkwater', 'England', 'Leicester City', 'England', 0),
(213, 'Mathieu Valbuena', 'France', 'Lyon', 'France', 0),
(214, 'Ragnar Sigurdsson', 'Iceland', 'Fulham', 'England', 0),
(215, 'Eder', 'Italy', 'Internazionale', 'Italy', 0),
(216, 'Suso', 'Spain', 'Milan', 'Italy', 0),
(217, 'Borja Valero', 'Spain', 'Fiorentina', 'Italy', 0),
(218, 'Lucas Moura', 'Brazil', 'PSG', 'France', 0),
(219, 'Mauro Boselli', 'Argentina', 'Leon', 'Mexico', 0),
(220, 'Emil Forsberg', 'Sweden', 'RB Leipzig', 'Germany', 0),
(221, 'Granit Xhaka', 'Switzerland', 'Arsenal', 'Switzerland', 0),
(222, 'Iago Falque', 'Spain', 'Torino', 'Italy', 0),
(223, 'Michael Carrick', 'England', 'Manchester United', 'England', 0),
(224, 'Adrien Rabiot', 'France', 'PSG', 'France', 0),
(225, 'Iago Aspas', 'Spain', 'Celta de Vigo', 'Spain', 0),
(226, 'Kingsley Coman', 'France', 'Bayern Munich', 'Germany', 0),
(227, 'Paco Alcacer', 'Spain', 'Barcelona', 'Spain', 0),
(228, 'Dani Carvajal', 'Spain', 'Real Madrid', 'Spain', 0),
(229, 'Franck Ribery', 'France', 'Bayern Munich', 'Germany', 0),
(230, 'Juanfran', 'Spain', 'Atletico Madrid', 'Spain', 0),
(231, 'Samuel Umtiti', 'Cameroon', 'Barcelona', 'France', 0),
(232, 'Wes Morgan', 'Jamaica', 'Leicester City', 'England', 0),
(233, 'Antonio Valencia', 'Ecuador', 'Manchester United', 'England', 0),
(234, 'Julian Draxler', 'Germany', 'Wolfsburg', 'Germany', 0),
(235, 'Roman Eremenko', 'Finland', 'CSKA Moscow', 'Russia', 0),
(236, 'Daniel Sturridge', 'England', 'Liverpool', 'England', 0),
(237, 'Erik Lamela', 'Argentina', 'Tottenham Hotspur', 'England', 0),
(238, 'Fernando Belluschi', 'Argentina', 'San Lorenzo', 'Argentina', 0),
(239, 'Lukasz Piszczek', 'Poland', 'Borussia Dortmund', 'Germany', 0),
(240, 'Mbwana Samatta', 'Tanzania', 'Genk', 'Belgium', 0),
(241, 'Nolito', 'Spain', 'Manchester City', 'England', 0),
(242, 'Thiago Motta', 'Italy', 'Paris SG', 'France', 0),
(243, 'Artyom Dzyuba', 'Russia', 'Zenit St Petersburg', 'Russia', 0),
(244, 'Hakan Calhanoglu', 'Turkey', 'Bayer Leverkusen', 'Germany', 0),
(245, 'Alex Sandro', 'Brazil', 'Juventus', 'Italy', 0),
(246, 'Aron Gunarsson', 'Iceland', 'Cardiff City', 'England', 0),
(247, 'Corentin Tolisso', 'France', 'Lyon', 'France', 0),
(248, 'Radamel Falcao', 'Colombia', 'Monaco', 'France', 0),
(249, 'Ruben Neves', 'Portugal', 'Porto', 'Portugal', 0),
(250, 'Andreas Granqvist', 'Sweden', 'Krasnodar', 'Russia', 0),
(251, 'Darijo Srna', 'Croatia', 'Shakhtar Donetsk', 'Ukraine', 0),
(252, 'Hector Herrera', 'Mexico', 'Porto', 'Portugal', 0),
(253, 'John Terry', 'England', 'Chelsea', 'England', 0),
(254, 'Julian Brandt', 'Germany', 'Bayer Leverkusen', 'Germany', 0),
(255, 'Kasper Dolberg', 'Denmark', 'Ajax', 'Netherlands', 0),
(256, 'Timo Werner', 'Germany', 'Red Bull Leipzig', 'Germany', 0),
(257, 'Victor Nilsson Lindelof', 'Sweden', 'Benfica', 'Portugal', 0),
(258, 'Adriano', 'Brazil', 'FC Seoul', 'South Korea', 0),
(259, 'Alan Dzagoev', 'Russia', 'CSKA Moscow', 'Russia', 0),
(260, 'Aleksandr Samedov', 'Russia', 'Lokomotiv Moscow', 'Russia', 0),
(261, 'Alessio Romagnoli', 'Italy', 'Milan', 'Italy', 0),
(262, 'Allan', 'Brazil', 'Napoli', 'Italy', 0),
(263, 'Ander Herrera', 'Spain', 'Manchester United', 'England', 0),
(264, 'Andre Schurrle', 'Germany', 'Borussia Dortmund', 'Germany', 0),
(265, 'Bas Dost', 'Netherlands', 'Sporting Lisbon', 'Portugal', 0),
(266, 'Bastian Schweinsteiger', 'Germany', 'Manchester United', 'England', 0),
(267, 'Bernard', 'Brazil', 'Shakhtar Donetsk', 'Ukraine', 0),
(268, 'Branislav Ivanovic', 'Serbia', 'Chelsea', 'England', 0),
(269, 'Carlos Auzqui', 'Argentina', 'Estudiantes', 'Argentina', 0),
(270, 'Carlos Vela', 'Mexico', 'Real Sociedad', 'Spain', 0),
(271, 'Cesar Azpilicueta', 'Spain', 'Chelsea', 'England', 0),
(272, 'Cesc Fabregas', 'Spain', 'Chelsea', 'England', 0),
(273, 'Chanathip Songkrasin', 'Thailand', 'Muangthong United', 'Thailand', 0),
(274, 'Charles Aranguiz', 'Chile', 'Bayer Leverkusen', 'Germany', 0),
(275, 'Chris Smalling', 'England', 'Manchester United', 'England', 0),
(276, 'Christian Benteke', 'Belgium', 'Crystal Palace', 'England', 0),
(277, 'Daley Blind', 'Netherlands', 'Manchester United', 'England', 0),
(278, 'Danilo', 'Brazil', 'Real Madrid', 'Spain', 0),
(279, 'Danilo Pereira', 'Portugal', 'Porto', 'Portugal', 0),
(280, 'Dante', 'Brazil', 'Nice', 'France', 0),
(281, 'Dario \'Leonardo\' Conca', 'Argentina', 'Shanghai SIPG', 'China', 0),
(282, 'Dmitri Poloz', 'Russia', 'Rostov', 'Russia', 0),
(283, 'Ederson', 'Brazil', 'Benfica', 'Portugal', 0),
(284, 'Edwin Cardona', 'Colombia', 'Monterrey', 'Mexico', 0),
(285, 'Eric Bailly', 'Ivory Coast', 'Manchester United', 'England', 0),
(286, 'Ezequiel Garay', 'Argentina', 'Valencia', 'Spain', 0),
(287, 'Faouzi Ghoulam', 'Algeria', 'Napoli', 'Italy', 0),
(288, 'Fernando Muslera', 'Uruguay', 'Galatasaray', 'Turkey', 0),
(289, 'Geoffrey Kondogbia', 'France', 'Internazionale', 'Italy', 0),
(290, 'Gervinho', 'Ivory Coast', 'Hebei China Fortune', 'China', 0),
(291, 'Giuliano', 'Brazil', 'Zenit St Petersburg', 'Russia', 0),
(292, 'GOkhan TOre', 'Turkey', 'West Ham United', 'England', 0),
(293, 'Graziano Pelle', 'Italy', 'Shandong Luneng', 'China', 0),
(294, 'Grimaldo', 'Spain', 'Benfica', 'Portugal', 0),
(295, 'Guido Pizarro', 'Argentina', 'Tigres', 'Mexico', 0),
(296, 'Gustavo Scarpa', 'Brazil', 'Fluminense', 'Brazil', 0),
(297, 'Ibrahim Alma', 'Syria', 'Al-Ittihad', 'Syria', 0),
(298, 'Iker Casillas', 'Spain', 'Porto', 'Portugal', 0),
(299, 'Jack Wilshere', 'England', 'Bournemouth', 'England', 0),
(300, 'Jackson Martinez', 'Colombia', 'Guangzhou Evergrande', 'China', 0),
(301, 'Jadson', 'Brazil', 'Tianjin Quanjian', 'China', 0),
(302, 'Jan Vertonghen', 'Belgium', 'Tottenham Hotspur', 'England', 0),
(303, 'Javi Martinez', 'Spain', 'Bayern Munich', 'Germany', 0),
(304, 'Javier Pastore', 'Argentina', 'PSG', 'France', 0),
(305, 'Jay Bothroyd', 'England', 'Jubilo Iwata', 'Japan', 0),
(306, 'Jeremy Toulalan', 'France', 'Bordeaux', 'France', 0),
(307, 'Joe Hart', 'England', 'Torino', 'Italy', 0),
(308, 'Jonathan Soriano', 'Spain', 'Salzburg', 'Austria', 0),
(309, 'Jose Maria Callejon', 'Spain', 'Napoli', 'Italy', 0),
(310, 'Josip Ilicic', 'Slovenia', 'Fiorentina', 'Italy', 0),
(311, 'Julio Cesar', 'Brazil', 'Benfica', 'Portugal', 0),
(312, 'Kei Kamara', 'Sierra Leone', 'Columbus Crew', 'USA', 0),
(313, 'Kevin Strootman', 'Netherlands', 'Roma', 'Italy', 0),
(314, 'Kim Seung-gyu', 'South Korea', 'Vissel Kobe', 'Japan', 0),
(315, 'Kim Young-gown', 'South Korea', 'Guangzhou', 'China', 0),
(316, 'Klaas-Jan Huntelaar', 'Netherlands', 'Schalke', 'Germany', 0),
(317, 'Kostas Fortounis', 'Greece', 'Olympiacos', 'Greece', 0),
(318, 'Lasse SchOne', 'Denmark', 'Ajax', 'Netherlands', 0),
(319, 'Layvin Kurzawa', 'France', 'PSG', 'France', 0),
(320, 'Loic Perrin', 'France', 'St Etienne', 'France', 0),
(321, 'Lorenzo Melgarejo', 'Paraguay', 'Spartak Moscow', 'Russia', 0),
(322, 'Luan', 'Brazil', 'Gremio', 'Brazil', 0),
(323, 'Lucas Lima', 'Brazil', 'Santos', 'Brazil', 0),
(324, 'Luiz Adriano', 'Brazil', 'Milan', 'Italy', 0),
(325, '?ukasz Teodorczyk', 'Poland', 'Anderlecht', 'Belgium', 0),
(326, 'M\'Baye Niang', 'France', 'Milan', 'Italy', 0),
(327, 'Marcus Berg', 'Sweden', 'Panathinaikos', 'Greece', 0),
(328, 'Mario Mandzukic', 'Croatia', 'Juventus', 'Italy', 0),
(329, 'Marko Arnautovic', 'Austria', 'Stoke City', 'England', 0),
(330, 'Matias Kranevitter', 'Argentina', 'Sevilla', 'Spain', 0),
(331, 'Mattia Perin', 'Italy', 'Genoa', 'Italy', 0),
(332, 'Mauro Diaz', 'Argentina', 'FC Dallas', 'USA', 0),
(333, 'Mehdi Benatia', 'Morocco', 'Juventus', 'Italy', 0),
(334, 'Memphis Depay', 'Netherlands', 'Manchester United', 'England', 0),
(335, 'Miguel Almiron', 'Paraguay', 'Lanus', 'Argentina', 0),
(336, 'Miguel Layun', 'Mexico', 'Porto', 'Portugal', 0),
(337, 'Miranda', 'Brazil', 'Internazionale', 'Italy', 0),
(338, 'Morgan Schneiderlin', 'France', 'Manchester United', 'England', 0),
(339, 'Nabil Fekir', 'France', 'Lyon', 'France', 0),
(340, 'Nawaf Al Abed', 'Saudi Arabia', 'Al-Hilal', 'Saudi Arabia', 0),
(341, 'Nemanja Matic', 'Serbia', 'Chelsea', 'England', 0),
(342, 'Nicolas Otamendi', 'Argentina', 'Manchester City', 'England', 0),
(343, 'Nikola KalInic', 'Croatia', 'Fiorentina', 'Italy', 0),
(344, 'Obafemi Martins', 'Nigeria', 'Shanghai Greenland Shenhua', 'China', 0),
(345, 'Odil Ahmedov', 'Uzbekistan', 'Krasnodar', 'Russia', 0),
(346, 'Oleg Shatov', 'Russia', 'Zenit St Petersburg', 'Russia', 0),
(347, 'Oscar', 'Brazil', 'Chelsea', 'England', 0),
(348, 'Oscar Duarte', 'Costa Rica', 'Espanyol', 'Spain', 0),
(349, 'Pablo Zabaleta', 'Argentina', 'Manchester City', 'England', 0),
(350, 'Patrice Evra', 'France', 'Juventus', 'Italy', 0),
(351, 'Pedro', 'Spain', 'Chelsea', 'England', 0),
(352, 'Pizzi', 'Portugal', 'Benfica', 'Portugal', 0),
(353, 'Renato Augusto', 'Brazil', 'Beijing Guoan', 'China', 0),
(354, 'Ricardo Oliveira', 'Brazil', 'Santos', 'Brazil', 0),
(355, 'Robbie Keane', 'Republic of Ireland', 'LA Galaxy', 'USA', 0),
(356, 'Roberto', 'Spain', 'Espanyol', 'Spain', 0),
(357, 'Robin van Persie', 'Netherlands', 'Fenerbahce', 'Turkey', 0),
(358, 'Ross Barkley', 'England', 'Everton', 'England', 0),
(359, 'Sacha Kljestan', 'USA', 'New York Red Bulls', 'USA', 0),
(360, 'Samir Handanovic', 'Slovenia', 'Internazionale', 'Italy', 0),
(361, 'Seamus Coleman', 'Republic of Ireland', 'Everton', 'England', 0),
(362, 'Seydou Doumbia', 'Ivory Coast', 'Basel', 'Switzerland', 0),
(363, 'Shinji Kagawa', 'Japan', 'Borussia Dortmund', 'Germany', 0),
(364, 'Stefan De Vrij', 'Holland', 'Lazio', 'Italy', 0),
(365, 'Stephan Lichtsteiner', 'Switzerland', 'Juventus', 'Italy', 0),
(366, 'Stevan Jovetic', 'Montenegro', 'Internazionale', 'Italy', 0),
(367, 'Steve Mandanda', 'France', 'Crystal Palace', 'England', 0),
(368, 'Steven Gerrard', 'England', 'LA Galaxy', 'USA', 0),
(369, 'Taison', 'Brazil', 'Shakhtar Donetsk', 'Ukraine', 0),
(370, 'Takashi Usami', 'Japan', 'Augsburg', 'Germany', 0),
(371, 'Taras Stepanenko', 'Ukraine', 'Shakhtar Donetsk', 'Ukraine', 0),
(372, 'Thomas Meunier', 'Belgium', 'PSG', 'France', 0),
(373, 'Victor Wanyama', 'Kenya', 'Tottenham Hotspur', 'England', 0),
(374, 'Vincent Aboubakar', 'Cameroon', 'Besiktas', 'Turkey', 0),
(375, 'Wesley Sneijder', 'Netherlands', 'Galatasaray', 'Turkey', 0),
(376, 'Wilfried Bony', 'Ivory Coast', 'Stoke City', 'England', 0),
(377, 'Wu Lei', 'China', 'Shanghai SIPG', 'China', 0),
(378, 'Xavi', 'Spain', 'Al Sadd', 'Qatar', 0),
(379, 'Yannick Bolasie', 'Congo', 'Everton', 'England', 0),
(380, 'Yevhen Konoplyanka', 'Ukraine', 'Schalke', 'Germany', 0),
(381, 'Yoshito Okubo', 'Japan', 'Kawasaki Frontale', 'Japan', 0),
(382, 'Zhang Linpeng', 'China', 'Guangzhou', 'China', 0),
(0, 'Aucun joueur selectionne', 'Aucun joueur selectionne', 'Aucun joueur selectionne', 'Aucun joueur selectionne', 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `uti_id` int(11) NOT NULL,
  `uti_pseudo` varchar(50) NOT NULL,
  `uti_email` varchar(100) NOT NULL,
  `uti_photo` longblob,
  `uti_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`uti_id`, `uti_pseudo`, `uti_email`, `uti_photo`, `uti_password`) VALUES
(1, 'admin', 'admin@admin.ch', '', 'admin'),
(37, 'user', 'user@user.com', NULL, 'user'),
(39, 'abc', '', NULL, 'abc'),
(42, 'freebox', 'flavio_slb4@hotmail.com', NULL, 'abc'),
(61, 'user2', '', NULL, 'user2'),
(70, 'Flavio', 'flavio_slb4@hotmail.com', NULL, 'Barreiro'),
(73, 'lifjwebfkweb', 'kjwnbejgkrbwegkj', NULL, 'kjbkjb'),
(74, 'kjwngbkjngjernk', 'jn', NULL, 'kjnkj'),
(75, 'rtnjrentjrntj', 'jrentjnerjtenr', NULL, 'jtnrejntern'),
(76, 'jnrgjerngker', 'jerngkjegnerknj', NULL, 'kerngkgn'),
(77, 'ljggkerjgerkj', 'kljgerkljgerkljgeklj', NULL, 'lkjgeklrjgklerj'),
(79, 'riegioerjgierioj', 'ijoerijgioerjogijeriogjo', NULL, 'qijoigerjogjeriojgioerj'),
(80, 'kerlnjgjerj', 'ihreijgherighi', NULL, 'ihgeruihgeruih'),
(100, 'rjekjgergjerioji', 'owrijgerjgerjoij', NULL, 'ofgjweojgerojgioerj'),
(101, 'njergkjerhnjkh', 'jhfrwehgjerhgj', NULL, 'jhferkhgekr'),
(102, 'ofergerj', 'jgerge', NULL, 'jgerjghe'),
(103, 'rekgjnergjkern', 'kjnrgjengkjern', NULL, 'kjngkjenger'),
(104, 'kjnfkjeng', 'kjnekgnek', NULL, 'kjnkrng'),
(105, 'klnmkl', 'kmk', NULL, 'mk'),
(106, 'lngengjn', 'jnj', NULL, 'nj'),
(107, 'nn', 'mn', NULL, 'mnm'),
(108, 'mn', 'nj', NULL, 'jn');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`fav_id`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`jou_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`uti_id`),
  ADD UNIQUE KEY `uti_pseudo` (`uti_pseudo`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `fav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `jou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `uti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY','')) 
