
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


CREATE TABLE IF NOT EXISTS `guitarra` (
  `NumSerie` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `Marca` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `Modelo` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `NumCuerdas` varchar(2) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `FechFab` date NOT NULL,
  PRIMARY KEY (`NumSerie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `guitarra` (`NumSerie`, `Marca`, `Modelo`, `NumCuerdas`, `FechFab`) VALUES
('10001', 'Fender', 'Stratocaster', '6', '1964-04-08'),
('10002', 'Gibson', 'SG', '6', '1962-06-15'),
('10003', 'Squier', 'Telecaster', '6', '2013-05-17'),
('10004', 'Epiphone', 'JB Firebird I', '6', '2017-01-10'),
('10005', 'Chapman', 'ML-1 PRO, 333', '7', '2017-08-08'),
('10006', 'Gibson', 'Les Paul', '6', '1959-06-06'),
('10008', 'Entwistle', 'Strat', '6', '2016-03-17');
('10009', 'Schecter', 'Diamond Owen', '7', '2014-08-15');
('10010', 'Strandberg', 'Orsbrog', '7', '2003-01-01');
('10011', 'Tokai', 'LP', '6', '1999-03-15');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
