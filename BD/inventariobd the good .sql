-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.22-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para inventariobd
DROP DATABASE IF EXISTS `inventariobd`;
CREATE DATABASE IF NOT EXISTS `inventariobd` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `inventariobd`;

-- Volcando estructura para tabla inventariobd.aula
DROP TABLE IF EXISTS `aula`;
CREATE TABLE IF NOT EXISTS `aula` (
  `idUbicacion` int(11) NOT NULL,
  `idAula` varchar(5) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  PRIMARY KEY (`idAula`),
  KEY `idUbicacion` (`idUbicacion`),
  KEY `idDepartamento` (`idDepartamento`),
  CONSTRAINT `aula_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `departec` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aula_ibfk_2` FOREIGN KEY (`idUbicacion`) REFERENCES `ubi` (`idUbicacion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla inventariobd.aula: ~37 rows (aproximadamente)
DELETE FROM `aula`;
INSERT INTO `aula` (`idUbicacion`, `idAula`, `idDepartamento`) VALUES
	(2, '1T1', 6),
	(2, '1T2', 6),
	(2, '1T3', 6),
	(2, '1T4', 6),
	(2, '1T5', 4),
	(2, '1T6', 4),
	(2, '1T6.1', 4),
	(2, '1T7', 4),
	(2, '1T8', 4),
	(2, '1T9', 1),
	(2, '2T2', 1),
	(2, '2T3', 1),
	(2, '2T4', 1),
	(2, '2T5', 3),
	(2, '2T6', 3),
	(2, '2T7', 3),
	(2, '2T8', 3),
	(2, '2T9', 3),
	(2, 'BT.2', 6),
	(2, 'BT1.1', 6),
	(1, 'BT1.2', 6),
	(2, 'BT2', 1),
	(2, 'BT3', 1),
	(2, 'BT4', 1),
	(2, 'BT5', 1),
	(2, 'BT6', 6),
	(2, 'BT7', 5),
	(2, 'BT8', 5),
	(2, 'BT8.1', 5),
	(2, 'BT8.2', 5),
	(2, 'ST1', 2),
	(2, 'ST1.1', 2),
	(2, 'ST2', 2),
	(2, 'ST3', 2),
	(2, 'ST4', 2),
	(2, 'ST5', 2),
	(2, 'ST6', 2);

-- Volcando estructura para tabla inventariobd.departec
DROP TABLE IF EXISTS `departec`;
CREATE TABLE IF NOT EXISTS `departec` (
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `NombreDepar` varchar(50) NOT NULL,
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla inventariobd.departec: ~6 rows (aproximadamente)
DELETE FROM `departec`;
INSERT INTO `departec` (`idDepartamento`, `NombreDepar`) VALUES
	(1, 'Informatica'),
	(2, 'Mecanizado'),
	(3, 'Telecomunicaciones'),
	(4, 'Róbotica'),
	(5, 'Automoción'),
	(6, 'Electricidad');

-- Volcando estructura para tabla inventariobd.filtro_selec
DROP TABLE IF EXISTS `filtro_selec`;
CREATE TABLE IF NOT EXISTS `filtro_selec` (
  `idSelec` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Selec` varchar(30) NOT NULL,
  `value` varchar(50) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSelec`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla inventariobd.filtro_selec: ~5 rows (aproximadamente)
DELETE FROM `filtro_selec`;
INSERT INTO `filtro_selec` (`idSelec`, `Nombre_Selec`, `value`, `idDepartamento`) VALUES
	(1, 'Proveedor', 'prov', 0),
	(2, 'Aula', 'aula', 0),
	(4, 'Marca', 'marca', 0),
	(5, 'Tipo Producto', 'tipoprod', 0),
	(6, 'Ubicacion', 'ubi', 0);

-- Volcando estructura para tabla inventariobd.login
DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `NombreUser` varchar(30) NOT NULL,
  `NombreCompleto` varchar(50) NOT NULL,
  `Password` text NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `Nivel` int(11) NOT NULL,
  PRIMARY KEY (`idUser`),
  KEY `idDepartamento` (`idDepartamento`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `departec` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla inventariobd.login: ~4 rows (aproximadamente)
DELETE FROM `login`;
INSERT INTO `login` (`idUser`, `NombreUser`, `NombreCompleto`, `Password`, `idDepartamento`, `Nivel`) VALUES
	(13, 'Admin', 'Merche Lopez', '1234', 1, 1),
	(16, 'Juan', 'Juan Antonio', '1234', 6, 2),
	(17, 'Adri', 'Adrian Morer', '1234', 2, 2),
	(19, 'Javi', 'Javier Morer', '1234', 1, 3);

-- Volcando estructura para tabla inventariobd.marca
DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `NombreMarca` varchar(30) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  PRIMARY KEY (`idMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla inventariobd.marca: ~35 rows (aproximadamente)
DELETE FROM `marca`;
INSERT INTO `marca` (`idMarca`, `NombreMarca`, `idDepartamento`) VALUES
	(1, 'Dell', 1),
	(2, 'Fujitsu siemens', 1),
	(3, 'Fabricación propia', 3),
	(4, 'Logitech', 1),
	(5, 'Marca1', 1),
	(6, 'Marca2', 2),
	(7, 'Marca3', 3),
	(8, 'Marca4', 4),
	(9, 'Marca5', 5),
	(10, 'Marca6', 6),
	(11, 'Marca7', 1),
	(12, 'Marca8', 2),
	(13, 'Marca9', 3),
	(14, 'Marca10', 4),
	(15, 'Marca11', 5),
	(16, 'Marca12', 6),
	(17, 'Marca13', 1),
	(18, 'Marca14', 2),
	(19, 'Marca15', 3),
	(20, 'Marca16', 4),
	(21, 'Marca17', 5),
	(22, 'Marca18', 6),
	(23, 'Marca19', 1),
	(24, 'Marca20', 2),
	(25, 'Marca21', 3),
	(26, 'Marca22', 4),
	(27, 'Marca23', 5),
	(28, 'Marca24', 6),
	(29, 'Marca25', 1),
	(30, 'Marca26', 2),
	(31, 'Marca27', 3),
	(32, 'Marca28', 4),
	(33, 'Marca29', 5),
	(34, 'Marca30', 6),
	(35, 'Pinacho', 2);

-- Volcando estructura para tabla inventariobd.materiales
DROP TABLE IF EXISTS `materiales`;
CREATE TABLE IF NOT EXISTS `materiales` (
  `idMateriales` int(11) NOT NULL AUTO_INCREMENT,
  `NombreMat` varchar(30) NOT NULL,
  `idAula` varchar(5) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `idMarca` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  PRIMARY KEY (`idMateriales`),
  KEY `idAula` (`idAula`),
  KEY `idProveedor` (`idProveedor`),
  KEY `idMarca` (`idMarca`),
  CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `materiales_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `prov` (`idProveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `materiales_ibfk_3` FOREIGN KEY (`idAula`) REFERENCES `aula` (`idAula`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla inventariobd.materiales: ~3 rows (aproximadamente)
DELETE FROM `materiales`;
INSERT INTO `materiales` (`idMateriales`, `NombreMat`, `idAula`, `Cantidad`, `idProveedor`, `idMarca`, `idDepartamento`) VALUES
	(1, 'Mesa', '2T3', 30, 1, 3, 0),
	(2, 'Silla', 'ST5', 30, 1, 4, 0),
	(4, 'Alfombra', '2T3', 10, 1, 3, 0);

-- Volcando estructura para tabla inventariobd.prov
DROP TABLE IF EXISTS `prov`;
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla inventariobd.prov: ~31 rows (aproximadamente)
DELETE FROM `prov`;
INSERT INTO `prov` (`idProveedor`, `Nombre`, `Direccion`, `Municipio`, `Provincia`, `Telefono`, `idTipo`, `idDepartamento`) VALUES
	(1, 'Salesianos', 'Don Bosco', 'Zaragoza', 'Zaragoza', 12345, 3, 0),
	(2, 'Proveedor1', 'Dirección1 Zaragoza', 'Zaragoza', 'Zaragoza', 123456789, 1, 1),
	(3, 'Proveedor2', 'Dirección2 Zaragoza', 'Zaragoza', 'Zaragoza', 987654321, 2, 2),
	(4, 'Proveedor3', 'Dirección3 Zaragoza', 'Zaragoza', 'Zaragoza', 456789123, 3, 3),
	(5, 'Proveedor4', 'Dirección4 Zaragoza', 'Zaragoza', 'Zaragoza', 789123456, 4, 4),
	(6, 'Proveedor5', 'Dirección5 Zaragoza', 'Zaragoza', 'Zaragoza', 321654987, 5, 5),
	(7, 'Proveedor6', 'Dirección6 Zaragoza', 'Zaragoza', 'Zaragoza', 654987321, 6, 6),
	(9, 'Proveedor7', 'Dirección7 Zaragoza', 'Zaragoza', 'Zaragoza', 159357852, 7, 1),
	(10, 'Proveedor8', 'Dirección8 Zaragoza', 'Zaragoza', 'Zaragoza', 753951456, 8, 2),
	(11, 'Proveedor9', 'Dirección9 Zaragoza', 'Zaragoza', 'Zaragoza', 258147369, 9, 3),
	(12, 'Proveedor10', 'Dirección10 Zaragoza', 'Zaragoza', 'Zaragoza', 369258147, 10, 4),
	(13, 'Proveedor11', 'Dirección11 Zaragoza', 'Zaragoza', 'Zaragoza', 147369258, 11, 5),
	(14, 'Proveedor12', 'Dirección12 Zaragoza', 'Zaragoza', 'Zaragoza', 852963741, 12, 6),
	(15, 'Proveedor13', 'Dirección13 Zaragoza', 'Zaragoza', 'Zaragoza', 963741852, 13, 1),
	(16, 'Proveedor14', 'Dirección14 Zaragoza', 'Zaragoza', 'Zaragoza', 741852963, 14, 2),
	(17, 'Proveedor15', 'Dirección15 Zaragoza', 'Zaragoza', 'Zaragoza', 369147852, 15, 3),
	(18, 'Proveedor16', 'Dirección16 Zaragoza', 'Zaragoza', 'Zaragoza', 852741963, 16, 4),
	(19, 'Proveedor17', 'Dirección17 Zaragoza', 'Zaragoza', 'Zaragoza', 159852369, 17, 5),
	(20, 'Proveedor18', 'Dirección18 Zaragoza', 'Zaragoza', 'Zaragoza', 963258147, 18, 6),
	(21, 'Proveedor19', 'Dirección19 Zaragoza', 'Zaragoza', 'Zaragoza', 456123789, 19, 1),
	(22, 'Proveedor20', 'Dirección20 Zaragoza', 'Zaragoza', 'Zaragoza', 147852369, 20, 2),
	(23, 'Proveedor21', 'Dirección21 Zaragoza', 'Zaragoza', 'Zaragoza', 258369147, 21, 3),
	(24, 'Proveedor22', 'Dirección22 Zaragoza', 'Zaragoza', 'Zaragoza', 987321654, 22, 4),
	(25, 'Proveedor23', 'Dirección23 Zaragoza', 'Zaragoza', 'Zaragoza', 654321789, 23, 5),
	(26, 'Proveedor24', 'Dirección24 Zaragoza', 'Zaragoza', 'Zaragoza', 321789456, 24, 6),
	(27, 'Proveedor25', 'Dirección25 Zaragoza', 'Zaragoza', 'Zaragoza', 789456123, 25, 1),
	(28, 'Proveedor26', 'Dirección26 Zaragoza', 'Zaragoza', 'Zaragoza', 456789321, 26, 2),
	(29, 'Proveedor27', 'Dirección27 Zaragoza', 'Zaragoza', 'Zaragoza', 321456789, 27, 3),
	(30, 'Proveedor28', 'Dirección28 Zaragoza', 'Zaragoza', 'Zaragoza', 789321456, 28, 4),
	(31, 'Proveedor29', 'Dirección29 Zaragoza', 'Zaragoza', 'Zaragoza', 654789321, 29, 5),
	(32, 'Proveedor30', 'Dirección30 Zaragoza', 'Zaragoza', 'Zaragoza', 987456321, 30, 6);

-- Volcando estructura para tabla inventariobd.tipoprod
DROP TABLE IF EXISTS `tipoprod`;
CREATE TABLE IF NOT EXISTS `tipoprod` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `NombreTipo` varchar(40) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla inventariobd.tipoprod: ~31 rows (aproximadamente)
DELETE FROM `tipoprod`;
INSERT INTO `tipoprod` (`idTipo`, `NombreTipo`, `idDepartamento`) VALUES
	(1, 'Papeleria', 5),
	(2, 'Tecnología', 1),
	(3, 'Carpintería', 2),
	(4, 'Electrónica', 3),
	(5, 'Robótica', 4),
	(6, 'Automoción', 5),
	(7, 'Iluminación', 6),
	(8, 'Hardware', 1),
	(9, 'Mecanizado', 2),
	(10, 'Telecomunicaciones', 3),
	(11, 'Automatización', 4),
	(12, 'Motores', 5),
	(13, 'Circuitos eléctricos', 6),
	(14, 'Software', 1),
	(15, 'Metales', 2),
	(16, 'Redes', 3),
	(17, 'Inteligencia artificial', 4),
	(18, 'Carrocería', 5),
	(19, 'Energía renovable', 6),
	(20, 'Impresoras', 1),
	(21, 'Herramientas', 2),
	(22, 'Comunicaciones', 3),
	(23, 'Sensores', 4),
	(24, 'Neumáticos', 5),
	(25, 'Instalaciones eléctricas', 6),
	(26, 'Suministros de oficina', 1),
	(27, 'Materiales de construcción', 2),
	(28, 'Telefonía móvil', 3),
	(29, 'Drones', 4),
	(30, 'Aceites y lubricantes', 5),
	(31, 'Generadores', 6);

-- Volcando estructura para tabla inventariobd.ubi
DROP TABLE IF EXISTS `ubi`;
CREATE TABLE IF NOT EXISTS `ubi` (
  `idUbicacion` int(11) NOT NULL AUTO_INCREMENT,
  `NombreUbicacion` varchar(40) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUbicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla inventariobd.ubi: ~2 rows (aproximadamente)
DELETE FROM `ubi`;
INSERT INTO `ubi` (`idUbicacion`, `NombreUbicacion`, `idDepartamento`) VALUES
	(1, 'Pabellón', 0),
	(2, 'Edificio Talleres', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
