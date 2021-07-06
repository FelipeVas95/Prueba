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


-- Volcando estructura de base de datos para bd
CREATE DATABASE IF NOT EXISTS `BD` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci */;
USE `BD`;

-- Volcando estructura para tabla BD.unic_department
CREATE TABLE IF NOT EXISTS `unic_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla BD.unic_department: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `unic_department` DISABLE KEYS */;
INSERT INTO `unic_department` (`id`, `department_name`, `city`) VALUES
	(1, 'mercadeo', 'cali'),
	(4, 'ventas', 'pereira'),
	(5, 'drogueria', 'pasto'),
	(6, 'almacen', 'mocoa');
/*!40000 ALTER TABLE `unic_department` ENABLE KEYS */;

-- Volcando estructura para tabla BD.unic_educationlevel
CREATE TABLE IF NOT EXISTS `unic_educationlevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla BD.unic_educationlevel: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `unic_educationlevel` DISABLE KEYS */;
INSERT INTO `unic_educationlevel` (`id`, `description`) VALUES
	(1, 'pregrado'),
	(2, 'postgrado'),
	(3, 'pregrado'),
	(4, 'postgrado');
/*!40000 ALTER TABLE `unic_educationlevel` ENABLE KEYS */;

-- Volcando estructura para tabla BD.unic_employee
CREATE TABLE IF NOT EXISTS `unic_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `department_id` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `educationlevel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  KEY `educationlevel_id` (`educationlevel_id`),
  CONSTRAINT `department_id` FOREIGN KEY (`department_id`) REFERENCES `unic_department` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `educationlevel_id` FOREIGN KEY (`educationlevel_id`) REFERENCES `unic_educationlevel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla BD.unic_employee: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `unic_employee` DISABLE KEYS */;
INSERT INTO `unic_employee` (`id`, `firstname`, `lastname`, `department_id`, `salary`, `educationlevel_id`) VALUES
	(1, 'Juan', 'Vivas', 1, 56484, 2),
	(2, 'felipe', 'Trujillo', 1, 56465, 2),
	(3, 'Laura', 'Tamayo', 5, 1651, 3),
	(4, 'Pepe', 'Mujica', 1, 45465, 2),
	(5, 'Daniela', 'Camargo', 5, 56465, 2);
/*!40000 ALTER TABLE `unic_employee` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
