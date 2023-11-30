-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2023 a las 23:15:34
-- Versión del servidor: 10.11.2-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdperegrinos_juaniagomartinezcorreia`
--
CREATE DATABASE IF NOT EXISTS `bdperegrinos_juaniagomartinezcorreia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdperegrinos_juaniagomartinezcorreia`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcarnet`
--

DROP TABLE IF EXISTS `tcarnet`;
CREATE TABLE IF NOT EXISTS `tcarnet` (
  `pkid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fkid_parada` int(10) UNSIGNED DEFAULT NULL,
  `fechaexp` date NOT NULL,
  `distancia` double NOT NULL DEFAULT 0,
  `nvips` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pkid`),
  KEY `fkid_parada` (`fkid_parada`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tcarnet`
--

INSERT INTO `tcarnet` (`pkid`, `fkid_parada`, `fechaexp`, `distancia`, `nvips`) VALUES
(1, 1, '2016-12-22', 0, 0),
(2, 3, '2020-11-27', 0, 0),
(3, 4, '2017-05-16', 0, 0),
(4, 2, '2019-01-24', 5, 0),
(5, 4, '2010-02-16', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testancia`
--

DROP TABLE IF EXISTS `testancia`;
CREATE TABLE IF NOT EXISTS `testancia` (
  `pkid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fkid_parada` int(10) UNSIGNED DEFAULT NULL,
  `fkid_peregrino` int(10) UNSIGNED DEFAULT NULL,
  `fecha` date NOT NULL,
  `vip` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`pkid`),
  KEY `fkid_parada` (`fkid_parada`),
  KEY `fkid_peregrino` (`fkid_peregrino`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `testancia`
--

INSERT INTO `testancia` (`pkid`, `fkid_parada`, `fkid_peregrino`, `fecha`, `vip`) VALUES
(1, 1, 1, '2023-06-01', 0),
(2, 2, 1, '2023-06-02', 0),
(3, 3, 1, '2023-11-03', 0),
(4, 4, 1, '2023-11-04', 0),
(5, 5, 1, '2023-11-05', 0),
(6, 1, 2, '2023-11-27', 0),
(7, 2, 2, '2023-08-17', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tparada`
--

DROP TABLE IF EXISTS `tparada`;
CREATE TABLE IF NOT EXISTS `tparada` (
  `pkid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cnombre` varchar(255) DEFAULT NULL,
  `cregion` char(2) DEFAULT NULL,
  PRIMARY KEY (`pkid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tparada`
--

INSERT INTO `tparada` (`pkid`, `cnombre`, `cregion`) VALUES
(1, 'Parada1', 'JP'),
(2, 'Parada2', 'TW'),
(3, 'Parada3', 'UK'),
(4, 'Parada4', 'NL'),
(5, 'Parada5', 'ES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tperegrino`
--

DROP TABLE IF EXISTS `tperegrino`;
CREATE TABLE IF NOT EXISTS `tperegrino` (
  `pkfkid` int(10) UNSIGNED NOT NULL,
  `cnombre` varchar(255) DEFAULT NULL,
  `cnacionalidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pkfkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tperegrino`
--

INSERT INTO `tperegrino` (`pkfkid`, `cnombre`, `cnacionalidad`) VALUES
(1, 'Juan', 'España'),
(2, 'Jennifer', 'Colombia'),
(3, 'Mario', 'Italia'),
(4, 'Luigi', 'Italia'),
(5, 'Zelda', 'Emiratos Árabes Unidos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tperegrino_parada`
--

DROP TABLE IF EXISTS `tperegrino_parada`;
CREATE TABLE IF NOT EXISTS `tperegrino_parada` (
  `pkfkid_parada` int(10) UNSIGNED NOT NULL,
  `pkfkid_peregrino` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`pkfkid_parada`,`pkfkid_peregrino`),
  KEY `pkfkid_peregrino` (`pkfkid_peregrino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tperegrino_parada`
--

INSERT INTO `tperegrino_parada` (`pkfkid_parada`, `pkfkid_peregrino`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tperfil`
--

DROP TABLE IF EXISTS `tperfil`;
CREATE TABLE IF NOT EXISTS `tperfil` (
  `pkid_usuario` varchar(255) DEFAULT NULL,
  `cpassword` varchar(255) DEFAULT NULL,
  `fkid_peregrino` int(10) UNSIGNED DEFAULT NULL,
  `fkid_parada` int(10) UNSIGNED DEFAULT NULL,
  KEY `fkid_parada` (`fkid_parada`),
  KEY `fkid_peregrino` (`fkid_peregrino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tperfil`
--

INSERT INTO `tperfil` (`pkid_usuario`, `cpassword`, `fkid_peregrino`, `fkid_parada`) VALUES
('JuanAdmin', '123', NULL, 1),
('JuanPeregrino', '123', 1, NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tcarnet`
--
ALTER TABLE `tcarnet`
  ADD CONSTRAINT `tcarnet_ibfk_1` FOREIGN KEY (`fkid_parada`) REFERENCES `tparada` (`pkid`);

--
-- Filtros para la tabla `testancia`
--
ALTER TABLE `testancia`
  ADD CONSTRAINT `testancia_ibfk_1` FOREIGN KEY (`fkid_parada`) REFERENCES `tparada` (`pkid`),
  ADD CONSTRAINT `testancia_ibfk_2` FOREIGN KEY (`fkid_peregrino`) REFERENCES `tperegrino` (`pkfkid`);

--
-- Filtros para la tabla `tperegrino`
--
ALTER TABLE `tperegrino`
  ADD CONSTRAINT `tperegrino_ibfk_1` FOREIGN KEY (`pkfkid`) REFERENCES `tcarnet` (`pkid`);

--
-- Filtros para la tabla `tperegrino_parada`
--
ALTER TABLE `tperegrino_parada`
  ADD CONSTRAINT `tperegrino_parada_ibfk_1` FOREIGN KEY (`pkfkid_parada`) REFERENCES `tparada` (`pkid`),
  ADD CONSTRAINT `tperegrino_parada_ibfk_2` FOREIGN KEY (`pkfkid_peregrino`) REFERENCES `tperegrino` (`pkfkid`);

--
-- Filtros para la tabla `tperfil`
--
ALTER TABLE `tperfil`
  ADD CONSTRAINT `tperfil_ibfk_1` FOREIGN KEY (`fkid_parada`) REFERENCES `tparada` (`pkid`),
  ADD CONSTRAINT `tperfil_ibfk_2` FOREIGN KEY (`fkid_peregrino`) REFERENCES `tperegrino` (`pkfkid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
