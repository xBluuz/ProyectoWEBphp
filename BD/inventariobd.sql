<<<<<<< HEAD:BD/inventariobd (1).sql
-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.28-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------
=======
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2024 a las 20:03:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

>>>>>>> 6953557bf3aa20b7e17d06965783a9f627d56352:BD/inventariobd.sql

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para inventariobd
CREATE DATABASE IF NOT EXISTS `inventariobd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `inventariobd`;

-- Volcando estructura para tabla inventariobd.aula
CREATE TABLE IF NOT EXISTS `aula` (
  `idUbicacion` int(11) NOT NULL,
  `idAula` varchar(5) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  PRIMARY KEY (`idAula`),
  KEY `idUbicacion` (`idUbicacion`),
  KEY `idDepartamento` (`idDepartamento`),
  CONSTRAINT `aula_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `departec` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aula_ibfk_2` FOREIGN KEY (`idUbicacion`) REFERENCES `ubi` (`idUbicacion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla inventariobd.aula: ~37 rows (aproximadamente)
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T1', 6);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T2', 6);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T3', 6);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T4', 6);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T5', 4);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T6', 4);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T6.1', 4);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T7', 4);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T8', 4);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T9', 1);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '2T2', 1);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '2T3', 1);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '2T4', 1);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '2T5', 3);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '2T6', 3);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '2T7', 3);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '2T8', 3);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '2T9', 3);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT.2', 6);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT1.1', 6);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(1, 'BT1.2', 6);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT2', 1);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT3', 1);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT4', 1);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT5', 1);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT6', 6);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT7', 5);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT8', 5);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT8.1', 5);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'BT8.2', 5);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'ST1', 2);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'ST1.1', 2);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'ST2', 2);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'ST3', 2);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'ST4', 2);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'ST5', 2);
INSERT IGNORE INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, 'ST6', 2);

-- Volcando estructura para tabla inventariobd.departec
CREATE TABLE IF NOT EXISTS `departec` (
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `NombreDepar` varchar(50) NOT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla inventariobd.departec: ~6 rows (aproximadamente)
INSERT IGNORE INTO `departec` (`idDepartamento`, `NombreDepar`) VALUES
	(1, 'Informatica');
INSERT IGNORE INTO `departec` (`idDepartamento`, `NombreDepar`) VALUES
	(2, 'Mecanizado');
INSERT IGNORE INTO `departec` (`idDepartamento`, `NombreDepar`) VALUES
	(3, 'Telecomunicaciones');
INSERT IGNORE INTO `departec` (`idDepartamento`, `NombreDepar`) VALUES
	(4, 'Róbotica');
INSERT IGNORE INTO `departec` (`idDepartamento`, `NombreDepar`) VALUES
	(5, 'Automoción');
INSERT IGNORE INTO `departec` (`idDepartamento`, `NombreDepar`) VALUES
	(6, 'Electricidad');

-- Volcando estructura para tabla inventariobd.filtro_selec
CREATE TABLE IF NOT EXISTS `filtro_selec` (
  `idSelec` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Selec` varchar(30) NOT NULL,
  `value` varchar(50) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSelec`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla inventariobd.filtro_selec: ~5 rows (aproximadamente)
INSERT IGNORE INTO `filtro_selec` (`idSelec`, `Nombre_Selec`, `value`, `idDepartamento`) VALUES
	(1, 'Proveedor', 'prov', 0);
INSERT IGNORE INTO `filtro_selec` (`idSelec`, `Nombre_Selec`, `value`, `idDepartamento`) VALUES
	(2, 'Aula', 'aula', 0);
INSERT IGNORE INTO `filtro_selec` (`idSelec`, `Nombre_Selec`, `value`, `idDepartamento`) VALUES
	(4, 'Marca', 'marca', 0);
INSERT IGNORE INTO `filtro_selec` (`idSelec`, `Nombre_Selec`, `value`, `idDepartamento`) VALUES
	(5, 'Tipo Producto', 'tipoprod', 0);
INSERT IGNORE INTO `filtro_selec` (`idSelec`, `Nombre_Selec`, `value`, `idDepartamento`) VALUES
	(6, 'Ubicacion', 'ubi', 0);

<<<<<<< HEAD:BD/inventariobd (1).sql
-- Volcando estructura para tabla inventariobd.login
CREATE TABLE IF NOT EXISTS `login` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
=======
--
-- Volcado de datos para la tabla `filtro_selec`
--

INSERT INTO `filtro_selec` (`idSelec`, `Nombre_Selec`) VALUES
(1, 'Proveedor'),
(2, 'Aula'),
(3, 'Departamento'),
(4, 'Marca'),
(5, 'TipoProducto'),
(6, 'Ubicacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `idUser` int(11) NOT NULL,
>>>>>>> 6953557bf3aa20b7e17d06965783a9f627d56352:BD/inventariobd.sql
  `NombreUser` varchar(30) NOT NULL,
  `NombreCompleto` varchar(50) NOT NULL,
  `Password` text NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `Nivel` int(11) NOT NULL,
  PRIMARY KEY (`idUser`),
  KEY `idDepartamento` (`idDepartamento`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `departec` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla inventariobd.login: ~4 rows (aproximadamente)
INSERT IGNORE INTO `login` (`idUser`, `NombreUser`, `NombreCompleto`, `Password`, `idDepartamento`, `Nivel`) VALUES
	(13, 'Admin', 'Merche Lopez', '1234', 1, 1);
INSERT IGNORE INTO `login` (`idUser`, `NombreUser`, `NombreCompleto`, `Password`, `idDepartamento`, `Nivel`) VALUES
	(16, 'Juan', 'Juan Antonio', '1234', 6, 2);
INSERT IGNORE INTO `login` (`idUser`, `NombreUser`, `NombreCompleto`, `Password`, `idDepartamento`, `Nivel`) VALUES
	(17, 'Adri', 'Adrian Morer', '1234', 2, 2);
INSERT IGNORE INTO `login` (`idUser`, `NombreUser`, `NombreCompleto`, `Password`, `idDepartamento`, `Nivel`) VALUES
	(19, 'Javi', 'Javier Morer', '1234', 1, 3);

-- Volcando estructura para tabla inventariobd.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `NombreMarca` varchar(30) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla inventariobd.marca: ~4 rows (aproximadamente)
INSERT IGNORE INTO `marca` (`idMarca`, `NombreMarca`, `idDepartamento`) VALUES
	(1, 'Dell', 0);
INSERT IGNORE INTO `marca` (`idMarca`, `NombreMarca`, `idDepartamento`) VALUES
	(2, 'Fujitsu siemens', 0);
INSERT IGNORE INTO `marca` (`idMarca`, `NombreMarca`, `idDepartamento`) VALUES
	(3, 'Fabricación propia', 0);
INSERT IGNORE INTO `marca` (`idMarca`, `NombreMarca`, `idDepartamento`) VALUES
	(4, 'Logitech', 0);

-- Volcando estructura para tabla inventariobd.materiales
CREATE TABLE IF NOT EXISTS `materiales` (
  `idMateriales` int(11) NOT NULL AUTO_INCREMENT,
  `NombreMat` varchar(30) NOT NULL,
  `idAula` varchar(5) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `idMarca` int(11) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMateriales`),
  KEY `idAula` (`idAula`),
  KEY `idProveedor` (`idProveedor`),
  KEY `idMarca` (`idMarca`),
  CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `materiales_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `prov` (`idProveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `materiales_ibfk_3` FOREIGN KEY (`idAula`) REFERENCES `aula` (`idAula`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla inventariobd.materiales: ~3 rows (aproximadamente)
INSERT IGNORE INTO `materiales` (`idMateriales`, `NombreMat`, `idAula`, `Cantidad`, `idProveedor`, `idMarca`, `idDepartamento`) VALUES
	(1, 'Mesa', '2T3', 30, 3, 3, 0);
INSERT IGNORE INTO `materiales` (`idMateriales`, `NombreMat`, `idAula`, `Cantidad`, `idProveedor`, `idMarca`, `idDepartamento`) VALUES
	(2, 'Silla', 'ST5', 30, 3, 4, 0);
INSERT IGNORE INTO `materiales` (`idMateriales`, `NombreMat`, `idAula`, `Cantidad`, `idProveedor`, `idMarca`, `idDepartamento`) VALUES
	(4, 'Alfombra', '2T3', 10, 3, 3, 0);

-- Volcando estructura para tabla inventariobd.prov
CREATE TABLE IF NOT EXISTS `prov` (
  `idProveedor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(60) NOT NULL,
  `Direccion` varchar(80) NOT NULL,
  `Municipio` varchar(30) NOT NULL,
  `Provincia` varchar(30) NOT NULL,
  `Telefono` int(9) NOT NULL,
  `idTipo` int(11) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProveedor`),
  KEY `idTipo` (`idTipo`),
  CONSTRAINT `prov_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tipoprod` (`idTipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla inventariobd.prov: ~0 rows (aproximadamente)
INSERT IGNORE INTO `prov` (`idProveedor`, `Nombre`, `Direccion`, `Municipio`, `Provincia`, `Telefono`, `idTipo`, `idDepartamento`) VALUES
	(3, 'Salesianos', 'Don Bosco', 'Zaragoza', 'Zaragoza', 12345, 3, 0);

-- Volcando estructura para tabla inventariobd.tipoprod
CREATE TABLE IF NOT EXISTS `tipoprod` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `NombreTipo` varchar(40) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla inventariobd.tipoprod: ~3 rows (aproximadamente)
INSERT IGNORE INTO `tipoprod` (`idTipo`, `NombreTipo`, `idDepartamento`) VALUES
	(1, 'Papeleria', 0);
INSERT IGNORE INTO `tipoprod` (`idTipo`, `NombreTipo`, `idDepartamento`) VALUES
	(2, 'Tecnología', 0);
INSERT IGNORE INTO `tipoprod` (`idTipo`, `NombreTipo`, `idDepartamento`) VALUES
	(3, 'Carpintería', 0);

-- Volcando estructura para tabla inventariobd.ubi
CREATE TABLE IF NOT EXISTS `ubi` (
  `idUbicacion` int(11) NOT NULL AUTO_INCREMENT,
  `NombreUbicacion` varchar(40) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUbicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla inventariobd.ubi: ~2 rows (aproximadamente)
INSERT IGNORE INTO `ubi` (`idUbicacion`, `NombreUbicacion`, `idDepartamento`) VALUES
	(1, 'Pabellón', 0);
INSERT IGNORE INTO `ubi` (`idUbicacion`, `NombreUbicacion`, `idDepartamento`) VALUES
	(2, 'Edificio Talleres', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
