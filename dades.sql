-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Temps de generació: 27-03-2023 a les 08:43:00
-- Versió del servidor: 10.6.12-MariaDB-1:10.6.12+maria~ubu2004
-- Versió de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de dades: `a21rublormar_INCIDENCIES`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `ACTUACIO`
--

CREATE TABLE `ACTUACIO` (
  `idAct` int(10) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcio` varchar(500) DEFAULT NULL,
  `visible` int(1) DEFAULT NULL,
  `incidencia` int(10) DEFAULT NULL,
  `temps` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Estructura de la taula `DEPARTAMENT`
--

CREATE TABLE `DEPARTAMENT` (
  `idDep` varchar(5) NOT NULL,
  `nom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Bolcament de dades per a la taula `DEPARTAMENT`
--

INSERT INTO `DEPARTAMENT` (`idDep`, `nom`) VALUES
('CAT', 'Catalan'),
('CIE', 'Ciencias'),
('HIS', 'Historia'),
('MAT', 'Matematiques');

-- --------------------------------------------------------

--
-- Estructura de la taula `INCIDENCIA`
--

CREATE TABLE `INCIDENCIA` (
  `idInc` int(10) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `prioritat` enum('Alta','Baixa','Mitja') DEFAULT NULL,
  `descripcio` varchar(500) DEFAULT NULL,
  `dataFi` date DEFAULT NULL,
  `tipus` int(10) DEFAULT NULL,
  `tecnic` int(10) DEFAULT NULL,
  `departament` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Bolcament de dades per a la taula `INCIDENCIA`
--

INSERT INTO `INCIDENCIA` (`idInc`, `data`, `prioritat`, `descripcio`, `dataFi`, `tipus`, `tecnic`, `departament`) VALUES
(90, '2023-03-22 11:54:28', 'Baixa', 'dada da', NULL, 2, 3, 'HIS'),
(96, '2023-03-16 09:46:04', 'Alta', 'dada', NULL, 1, 1, 'CIE'),
(99, '2023-03-20 12:08:12', NULL, 'j', NULL, NULL, NULL, 'CAT'),
(100, '2023-03-23 11:12:51', NULL, 'ndkad', NULL, NULL, NULL, 'CIE'),
(101, '2023-03-23 11:14:32', NULL, 'aaa', NULL, NULL, NULL, 'CIE'),
(102, '2023-03-23 11:17:13', NULL, 'a ver si va', NULL, NULL, NULL, 'HIS'),
(103, '2023-03-23 11:19:19', NULL, 'a ver si va', NULL, NULL, NULL, 'HIS'),
(104, '2023-03-23 11:19:21', NULL, 'a ver si va', NULL, NULL, NULL, 'HIS'),
(105, '2023-03-23 11:19:25', NULL, 'a ver si va', NULL, NULL, NULL, 'CIE'),
(106, '2023-03-23 11:21:24', NULL, 'a ver si va', NULL, NULL, NULL, 'CIE'),
(107, '2023-03-23 11:21:45', NULL, 'a ver si va', NULL, NULL, NULL, 'CIE'),
(108, '2023-03-23 11:23:21', NULL, 'a ver si va', NULL, NULL, NULL, 'CIE'),
(109, '2023-03-23 11:24:43', NULL, 'a ver si va', NULL, NULL, NULL, 'CIE'),
(110, '2023-03-23 11:27:06', NULL, 'a ver si va', NULL, NULL, NULL, 'CIE'),
(111, '2023-03-23 11:27:18', NULL, 'a ver si va', NULL, NULL, NULL, 'CIE'),
(112, '2023-03-23 11:28:02', NULL, 'a ver si va', NULL, NULL, NULL, 'CIE'),
(113, '2023-03-23 11:29:00', NULL, 'a ver si va', NULL, NULL, NULL, 'CIE');

-- --------------------------------------------------------

--
-- Estructura de la taula `TECNIC`
--

CREATE TABLE `TECNIC` (
  `idTec` int(10) NOT NULL,
  `nom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Bolcament de dades per a la taula `TECNIC`
--

INSERT INTO `TECNIC` (`idTec`, `nom`) VALUES
(1, 'Toni Diaz'),
(2, 'Alvaro Perez'),
(3, 'Ermengol Ebotà');

-- --------------------------------------------------------

--
-- Estructura de la taula `TIPOLOGIA`
--

CREATE TABLE `TIPOLOGIA` (
  `idTip` int(10) NOT NULL,
  `nom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Bolcament de dades per a la taula `TIPOLOGIA`
--

INSERT INTO `TIPOLOGIA` (`idTip`, `nom`) VALUES
(1, 'hardware'),
(2, 'Electric'),
(3, 'software');

-- --------------------------------------------------------

--
-- Estructura de la taula `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Bolcament de dades per a la taula `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'a21rublormar', '$2y$10$.Nk4tl1HFaasFAtVYHNpwOrVvMar3xazu2qjVzapcFkRIcFknzXiG', 'a21rublormar@inspedralbes.cat');

--
-- Índexs per a les taules bolcades
--

--
-- Índexs per a la taula `ACTUACIO`
--
ALTER TABLE `ACTUACIO`
  ADD PRIMARY KEY (`idAct`),
  ADD KEY `incidencia` (`incidencia`);

--
-- Índexs per a la taula `DEPARTAMENT`
--
ALTER TABLE `DEPARTAMENT`
  ADD PRIMARY KEY (`idDep`);

--
-- Índexs per a la taula `INCIDENCIA`
--
ALTER TABLE `INCIDENCIA`
  ADD PRIMARY KEY (`idInc`),
  ADD KEY `tipus` (`tipus`),
  ADD KEY `tecnic` (`tecnic`),
  ADD KEY `departament` (`departament`);

--
-- Índexs per a la taula `TECNIC`
--
ALTER TABLE `TECNIC`
  ADD PRIMARY KEY (`idTec`);

--
-- Índexs per a la taula `TIPOLOGIA`
--
ALTER TABLE `TIPOLOGIA`
  ADD PRIMARY KEY (`idTip`);

--
-- Índexs per a la taula `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT per les taules bolcades
--

--
-- AUTO_INCREMENT per la taula `ACTUACIO`
--
ALTER TABLE `ACTUACIO`
  MODIFY `idAct` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la taula `INCIDENCIA`
--
ALTER TABLE `INCIDENCIA`
  MODIFY `idInc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT per la taula `TECNIC`
--
ALTER TABLE `TECNIC`
  MODIFY `idTec` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la taula `TIPOLOGIA`
--
ALTER TABLE `TIPOLOGIA`
  MODIFY `idTip` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la taula `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restriccions per a les taules bolcades
--

--
-- Restriccions per a la taula `ACTUACIO`
--
ALTER TABLE `ACTUACIO`
  ADD CONSTRAINT `ACTUACIO_ibfk_1` FOREIGN KEY (`incidencia`) REFERENCES `INCIDENCIA` (`idInc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restriccions per a la taula `INCIDENCIA`
--
ALTER TABLE `INCIDENCIA`
  ADD CONSTRAINT `INCIDENCIA_ibfk_1` FOREIGN KEY (`tipus`) REFERENCES `TIPOLOGIA` (`idTip`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `INCIDENCIA_ibfk_2` FOREIGN KEY (`tecnic`) REFERENCES `TECNIC` (`idTec`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `INCIDENCIA_ibfk_3` FOREIGN KEY (`departament`) REFERENCES `DEPARTAMENT` (`idDep`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
