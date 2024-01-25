-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-01-2024 a las 18:29:23
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
  `idAula` varchar(3) NOT NULL,
  `idUbicacion` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aula`
--

INSERT INTO `aula` (`idAula`, `idUbicacion`, `idDepartamento`) VALUES
('2T3', 2, 1),
('2T4', 2, 1);

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
(16, 'Juan', 'Juan Antonio', '1234', 1, 2);

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
  `idAula` varchar(3) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `idProveedor` int(11) NOT NULL,
  `idMarca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `idMateriales` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prov`
--
ALTER TABLE `prov`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT;

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
