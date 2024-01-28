-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2024 a las 18:52:49
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventariobd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--

CREATE TABLE `aula` (
  `idAula` varchar(5) NOT NULL,
  `idUbicacion` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aula`
--

INSERT INTO `aula` (`idAula`, `idUbicacion`, `idDepartamento`) VALUES
('1T1', 2, 6),
('1T2', 2, 6),
('1T3', 2, 6),
('1T4', 2, 6),
('1T5', 2, 4),
('1T6', 2, 4),
('1T6.1', 2, 4),
('1T7', 2, 4),
('1T8', 2, 4),
('1T9', 2, 1),
('2T2', 2, 1),
('2T3', 2, 1),
('2T4', 2, 1),
('2T5', 2, 3),
('2T6', 2, 3),
('2T7', 2, 3),
('2T8', 2, 3),
('2T9', 2, 3),
('BT.2', 2, 6),
('BT1.1', 2, 6),
('BT1.2', 1, 6),
('BT2', 2, 1),
('BT3', 2, 1),
('BT4', 2, 1),
('BT5', 2, 1),
('BT6', 2, 6),
('BT7', 2, 5),
('BT8', 2, 5),
('BT8.1', 2, 5),
('BT8.2', 2, 5),
('ST1', 2, 2),
('ST1.1', 2, 2),
('ST2', 2, 2),
('ST3', 2, 2),
('ST4', 2, 2),
('ST5', 2, 2),
('ST6', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departec`
--

CREATE TABLE `departec` (
  `idDepartamento` int(11) NOT NULL,
  `NombreDepar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departec`
--

INSERT INTO `departec` (`idDepartamento`, `NombreDepar`) VALUES
(1, 'Informatica'),
(2, 'Mecanizado'),
(3, 'Telecomunicaciones'),
(4, 'Róbotica'),
(5, 'Automoción'),
(6, 'Electricidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `filtro_selec`
--

CREATE TABLE `filtro_selec` (
  `idSelec` int(11) NOT NULL,
  `Nombre_Selec` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `filtro_selec`
--

INSERT INTO `filtro_selec` (`idSelec`, `Nombre_Selec`) VALUES
(1, 'Proveedor'),
(2, 'Aula'),
(3, 'Departamento'),
(4, 'Marca'),
(5, 'Tipo Producto'),
(6, 'Ubicacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `idUser` int(11) NOT NULL,
  `NombreUser` varchar(30) NOT NULL,
  `NombreCompleto` varchar(50) NOT NULL,
  `Password` text NOT NULL,
  `idDepartamento` int(11) NOT NULL,
  `Nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`idUser`, `NombreUser`, `NombreCompleto`, `Password`, `idDepartamento`, `Nivel`) VALUES
(13, 'Admin', 'Merche Lopez', '1234', 1, 1),
(16, 'Juan', 'Juan Antonio', '1234', 6, 2),
(17, 'Adri', 'Adrian Morer', '1234', 2, 2),
(19, 'Javi', 'Javier Morer', '1234', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idMarca` int(11) NOT NULL,
  `NombreMarca` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idMarca`, `NombreMarca`) VALUES
(1, 'Dell'),
(2, 'Fujitsu siemens'),
(3, 'Fabricación propia'),
(4, 'Logitech');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `idMateriales` int(11) NOT NULL,
  `NombreMat` varchar(30) NOT NULL,
  `idAula` varchar(5) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `idMarca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`idMateriales`, `NombreMat`, `idAula`, `Cantidad`, `idProveedor`, `idMarca`) VALUES
(1, 'Mesa', '2T3', 30, 3, 3),
(2, 'Silla', 'ST5', 30, 3, 4),
(4, 'Alfombra', '2T3', 10, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prov`
--

CREATE TABLE `prov` (
  `idProveedor` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Direccion` varchar(80) NOT NULL,
  `Municipio` varchar(30) NOT NULL,
  `Provincia` varchar(30) NOT NULL,
  `Telefono` int(9) NOT NULL,
  `idTipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prov`
--

INSERT INTO `prov` (`idProveedor`, `Nombre`, `Direccion`, `Municipio`, `Provincia`, `Telefono`, `idTipo`) VALUES
(3, 'Salesianos', 'Don Bosco', 'Zaragoza', 'Zaragoza', 12345, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoprod`
--

CREATE TABLE `tipoprod` (
  `idTipo` int(11) NOT NULL,
  `NombreTipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoprod`
--

INSERT INTO `tipoprod` (`idTipo`, `NombreTipo`) VALUES
(1, 'Papeleria'),
(2, 'Tecnología'),
(3, 'Carpintería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubi`
--

CREATE TABLE `ubi` (
  `idUbicacion` int(11) NOT NULL,
  `NombreUbicacion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ubi`
--

INSERT INTO `ubi` (`idUbicacion`, `NombreUbicacion`) VALUES
(1, 'Pabellón'),
(2, 'Edificio Talleres');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`idAula`),
  ADD KEY `idUbicacion` (`idUbicacion`),
  ADD KEY `idDepartamento` (`idDepartamento`);

--
-- Indices de la tabla `departec`
--
ALTER TABLE `departec`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `filtro_selec`
--
ALTER TABLE `filtro_selec`
  ADD PRIMARY KEY (`idSelec`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `idDepartamento` (`idDepartamento`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idMarca`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`idMateriales`),
  ADD KEY `idAula` (`idAula`),
  ADD KEY `idProveedor` (`idProveedor`),
  ADD KEY `idMarca` (`idMarca`);

--
-- Indices de la tabla `prov`
--
ALTER TABLE `prov`
  ADD PRIMARY KEY (`idProveedor`),
  ADD KEY `idTipo` (`idTipo`);

--
-- Indices de la tabla `tipoprod`
--
ALTER TABLE `tipoprod`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `ubi`
--
ALTER TABLE `ubi`
  ADD PRIMARY KEY (`idUbicacion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departec`
--
ALTER TABLE `departec`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `filtro_selec`
--
ALTER TABLE `filtro_selec`
  MODIFY `idSelec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `idMateriales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `prov`
--
ALTER TABLE `prov`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipoprod`
--
ALTER TABLE `tipoprod`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ubi`
--
ALTER TABLE `ubi`
  MODIFY `idUbicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aula`
--
ALTER TABLE `aula`
  ADD CONSTRAINT `aula_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `departec` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aula_ibfk_2` FOREIGN KEY (`idUbicacion`) REFERENCES `ubi` (`idUbicacion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`idDepartamento`) REFERENCES `departec` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD CONSTRAINT `materiales_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materiales_ibfk_2` FOREIGN KEY (`idProveedor`) REFERENCES `prov` (`idProveedor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materiales_ibfk_3` FOREIGN KEY (`idAula`) REFERENCES `aula` (`idAula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `prov`
--
ALTER TABLE `prov`
  ADD CONSTRAINT `prov_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tipoprod` (`idTipo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
