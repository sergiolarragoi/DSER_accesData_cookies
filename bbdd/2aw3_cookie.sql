-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2018 a las 14:55:56
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `2aw3_cookie`
--
CREATE DATABASE IF NOT EXISTS `2aw3_cookie` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `2aw3_cookie`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertCookie` (IN `_idCookie` INT)  NO SQL
INSERT INTO cookie(idCookie)VALUES(_idCookie)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertLog` (IN `_dateTime` VARCHAR(30), IN `_ip` VARCHAR(30), IN `_browser` VARCHAR(30), IN `_lang` VARCHAR(30), IN `_search` VARCHAR(30), IN `_idCookie` INT(30))  NO SQL
INSERT INTO `log`( `_dateTime`, `ip`, `browser`, `lang`, `search`,`idCookie`) VALUES (_dateTime,_ip,_browser,_lang,_search_idCookie)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `spSelectCookie` ()  NO SQL
SELECT COUNT(idCookie) AS idCookie FROM cookie$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cookie`
--

CREATE TABLE `cookie` (
  `idCookie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cookie`
--

INSERT INTO `cookie` (`idCookie`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `img`
--

CREATE TABLE `img` (
  `idimg` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `palabrasClave` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `idLog` int(11) NOT NULL,
  `dateTime` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `browser` varchar(30) NOT NULL,
  `lang` varchar(30) NOT NULL,
  `search` varchar(30) NOT NULL,
  `idCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cookie`
--
ALTER TABLE `cookie`
  ADD PRIMARY KEY (`idCookie`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cookie`
--
ALTER TABLE `cookie`
  MODIFY `idCookie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
