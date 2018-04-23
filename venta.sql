-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2018 a las 14:08:13
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `venta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coleccionista`
--

CREATE TABLE `coleccionista` (
  `codigo` varchar(10) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(255) COLLATE utf8_bin NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_bin NOT NULL,
  `numSerie` varchar(40) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `coleccionista`
--

INSERT INTO `coleccionista` (`codigo`, `nombre`, `apellidos`, `numSerie`) VALUES
('10', 'Juan', 'juan', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guitarra`
--

CREATE TABLE `guitarra` (
  `numSerie` varchar(40) COLLATE utf8_bin NOT NULL,
  `marca` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `modelo` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `anyo` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `guitarra`
--

INSERT INTO `guitarra` (`numSerie`, `marca`, `modelo`, `anyo`) VALUES
('1', 'Fender', 'Telecaster', 1953),
('12', 'Adri', 'Villalba', 1998),
('123', 'Fender', 'Strat', 1960);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `coleccionista`
--
ALTER TABLE `coleccionista`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `numSerie` (`numSerie`);

--
-- Indices de la tabla `guitarra`
--
ALTER TABLE `guitarra`
  ADD PRIMARY KEY (`numSerie`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `coleccionista`
--
ALTER TABLE `coleccionista`
  ADD CONSTRAINT `coleccionista_ibfk_1` FOREIGN KEY (`numSerie`) REFERENCES `guitarra` (`numSerie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
