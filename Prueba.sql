-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.6.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para Prueba
CREATE DATABASE IF NOT EXISTS `Prueba` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci */;
USE `Prueba`;

-- Volcando estructura para tabla Prueba.horario
CREATE TABLE IF NOT EXISTS `horario` (
  `idHorario` int(11) NOT NULL AUTO_INCREMENT,
  `Salon` varchar(45) DEFAULT NULL,
  `Horario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idHorario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla Prueba.horario: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` (`idHorario`, `Salon`, `Horario`) VALUES
	(1, '405', 'MARTES 2 - 4 PM'),
	(2, '202', 'MIERCOLES 3- 6PM'),
	(3, '101', 'LUNES 7 -9 AM'),
	(4, '503', 'JUEVES 2 - 5PM'),
	(5, '304', 'VIERNES 9 - 11AM');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;

-- Volcando estructura para tabla Prueba.materia
CREATE TABLE IF NOT EXISTS `materia` (
  `idMateria` int(11) NOT NULL AUTO_INCREMENT,
  `num_creditos` int(11) DEFAULT NULL,
  `docente` varchar(45) DEFAULT NULL,
  `nom_materia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla Prueba.materia: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` (`idMateria`, `num_creditos`, `docente`, `nom_materia`) VALUES
	(1, 4, 'Gineth Rios', 'Matematicas Discretas'),
	(2, 2, 'Francisco Obando', 'Calculo integral'),
	(3, 3, 'Fabian Volveras', 'Fisica 2'),
	(4, 4, 'Jimmy Diaz', 'Bodega de datos'),
	(5, 2, 'Amelia Ortiz', 'Ing. software 1');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;

-- Volcando estructura para tabla Prueba.materia_horario
CREATE TABLE IF NOT EXISTS `materia_horario` (
  `idMateria_horario` int(11) NOT NULL,
  `fk_idMateria` int(11) NOT NULL,
  `fk_idHorario` int(11) NOT NULL,
  PRIMARY KEY (`idMateria_horario`,`fk_idMateria`,`fk_idHorario`),
  KEY `fk_idMateria_idx` (`fk_idMateria`),
  KEY `fk_idHorario_idx` (`fk_idHorario`),
  CONSTRAINT `fk_idHorario` FOREIGN KEY (`fk_idHorario`) REFERENCES `horario` (`idHorario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idMateria` FOREIGN KEY (`fk_idMateria`) REFERENCES `materia` (`idMateria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla Prueba.materia_horario: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `materia_horario` DISABLE KEYS */;
INSERT INTO `materia_horario` (`idMateria_horario`, `fk_idMateria`, `fk_idHorario`) VALUES
	(2, 1, 2),
	(3, 5, 4),
	(4, 3, 3),
	(5, 2, 1),
	(6, 4, 5),
	(9, 2, 2);
/*!40000 ALTER TABLE `materia_horario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
