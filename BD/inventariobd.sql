-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2024 a las 10:48:49
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

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
  `idUbicacion` int(11) NOT NULL,
  `idAula` varchar(5) NOT NULL,
  `idDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aula`
--

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
(1, 'BT1.2', 6),
(2, 'BT2', 1),
(2, 'BT3', 1),
(2, 'BT4', 1),
(2, 'BT5', 1),
(2, 'BT6', 5),
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departec`
--

CREATE TABLE `departec` (
  `idDepartamento` int(11) NOT NULL,
  `NombreDepar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `Nombre_Selec` varchar(30) NOT NULL,
  `value` varchar(50) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `filtro_selec`
--

INSERT INTO `filtro_selec` (`idSelec`, `Nombre_Selec`, `value`, `idDepartamento`) VALUES
(1, 'Proveedor', 'prov', 0),
(2, 'Aula', 'aula', 0),
(4, 'Marca', 'marca', 0),
(5, 'Tipo Producto', 'tipoprod', 0),
(6, 'Ubicacion', 'ubi', 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`idUser`, `NombreUser`, `NombreCompleto`, `Password`, `idDepartamento`, `Nivel`) VALUES
(13, 'Admin', 'Merche Lopez', 'd322e6fd7b4d3383562b9dfdb918a62e07a634a8af68dea3e172034647d2f2c2', 1, 1),
(16, 'Juan', 'Juan Antonio', '6038f600d1af4bf6187cfdff90d7115f0b188410462fe77d00fd2d0ec7a13d21', 6, 2),
(17, 'Adri', 'Adrian Morer', '3c3f398e4c11803f63b22a6730fb1161a25f5fb299f078f6e96215d8ef1c4488', 1, 2),
(19, 'Javi', 'Javier Morer', '9c8d2a4dbf811a755f227cb804ebdc37e09ad76f2cd533c4a5bfe836c0570ad4', 1, 3),
(22, 'Merche', 'Merche Lopez', '9dd9c53282d281fb37bcacfea5509cbeda8b335a143f64f5b7d06ae1e3accc75', 1, 1),
(23, 'Rafa', 'Rafael Navarro', '34d544f5576628288f0ba151af8a8ec93326213ce6376688d1684f8a30fcf09f', 2, 3),
(27, 'Cristina', 'Crisitina Serrano', '0092350ac0d6648ec093543745bb9a0b7ec00394e01c536a5e61f71d86831855', 3, 3),
(28, 'Izan', 'Izan Ruiz', '2b6dd24f1f2ee61040b6ca1189ed8673f1bee19a8a91fe1a44663b6006814e8b', 3, 2),
(29, 'Diego', 'Diego Julian', 'd39a4946a35c7a1fd2f898d99a4218db343468e79a778814b1f7c064720ba203', 2, 2),
(30, 'Daniel', 'Daniel Planté', '73bdffa30be02fdd17eb3ed955058477007f39facd36c5af59282ea0abd077a2', 4, 2),
(31, 'Victor', 'Victor Archidona', 'e70e23df4a1c4b73f61bddd52328458ab6e4934b3126de4b7aded2ed412b259e', 4, 3),
(32, 'Asier', 'Asier Ezquerra', 'b75269ade25668a81d32aea042a22645580e4bb8c880f9f95738d964ef3772d0', 5, 2),
(33, 'Darius', 'Darius Rus', '487c4e64d9963d350d43a5c1fb9f941601d8653bf4c406ea6e67a53538449498', 5, 3),
(34, 'Geany', 'Geany Vlad', 'ead3b2c3c75c191df3fdff534c1ba9c437b5411423aba8e22219c55d3a253cc0', 6, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idMarca` int(11) NOT NULL,
  `NombreMarca` varchar(30) NOT NULL,
  `idDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idMarca`, `NombreMarca`, `idDepartamento`) VALUES
(1, 'Dell', 1),
(2, 'Fujitsu siemens', 1),
(3, 'Fabricación propia', 3),
(4, 'Logitech', 1),
(5, 'Sin marca', 0),
(6, 'ProFusion', 2),
(7, 'AVK', 2),
(8, 'Blueweld by Telwin.', 5),
(9, 'KINGBOLEN', 5),
(10, 'Brembo', 5),
(11, 'Renault', 5),
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
(36, 'Pinacho', 2),
(37, 'Makita', 2),
(38, 'Big red', 5),
(39, 'Hp', 1);

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
  `idMarca` int(11) NOT NULL,
  `idDepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`idMateriales`, `NombreMat`, `idAula`, `Cantidad`, `idProveedor`, `idMarca`, `idDepartamento`) VALUES
(5, 'Pantalla', '2T3', 30, 7, 1, 1),
(6, 'Ordenador', '2T3', 30, 7, 39, 1),
(7, 'Raton', '2T3', 30, 7, 4, 1),
(8, 'Teclado', '2T3', 30, 7, 4, 1),
(9, 'Silla', '2T3', 30, 1, 3, 1),
(12, 'Pantalla', '2T4', 30, 7, 2, 1),
(13, 'Ordenador', '2T4', 30, 7, 39, 1),
(14, 'Raton', '2T4', 30, 7, 4, 1),
(15, 'Teclado', '2T4', 30, 7, 4, 1),
(16, 'Silla', '2T4', 30, 1, 3, 1),
(19, 'Pantalla', '2T2', 15, 7, 2, 1),
(21, 'Raton', '2T2', 15, 7, 4, 1),
(22, 'Teclado', '2T2', 15, 7, 4, 1),
(23, 'Silla', '2T2', 15, 1, 3, 1),
(28, 'Mesa', 'ST1', 30, 1, 3, 2),
(29, 'Silla', 'ST1', 30, 1, 3, 2),
(30, 'Tornos', 'ST1', 15, 2, 36, 2),
(31, 'Fresadoras', 'ST1', 15, 2, 37, 2),
(32, 'Metales', 'ST1.1', 300, 34, 5, 2),
(33, 'Aluminios', 'ST1.1', 300, 34, 5, 2),
(34, 'Silla', 'ST2', 30, 1, 3, 2),
(35, 'Mesa', 'ST2', 30, 1, 3, 2),
(36, 'Fluidos Hidráulicos ', 'ST3', 300, 3, 6, 2),
(37, 'Válvulas ', 'ST4', 20, 4, 7, 2),
(38, 'Aceros', 'ST5', 500, 5, 5, 2),
(39, 'Cobre', 'BT1.2', 300, 6, 5, 6),
(40, 'Hierro', 'BT1.2', 300, 6, 5, 6),
(41, 'Hierro', '1T1', 300, 6, 5, 6),
(42, 'Cobre', '1T1', 300, 6, 5, 6),
(43, 'Gatos hidráulicos', 'BT8', 5, 35, 38, 5),
(44, 'Mesas', 'BT2', 20, 1, 3, 1),
(45, 'Ordenadores', 'BT2', 30, 7, 39, 1),
(46, 'Sillas', 'BT2', 30, 1, 3, 1),
(47, 'Mesas ', 'BT3', 20, 1, 3, 1),
(48, 'Sillas', 'BT3', 30, 1, 3, 1),
(49, 'Ordenadores', 'BT3', 1, 7, 39, 1),
(50, 'Mesas ', 'BT4', 20, 1, 3, 1),
(51, 'Sillas', 'BT4', 30, 1, 3, 1),
(52, 'Ordenadores', 'BT4', 1, 7, 39, 1),
(53, 'Mesas', 'BT5', 20, 1, 3, 1),
(54, 'Ordenadores', 'BT5', 30, 7, 39, 1),
(55, 'Sillas', 'BT5', 30, 1, 3, 1),
(56, 'Soldadores Eléctricos', 'BT6', 15, 36, 8, 5),
(57, 'Comprobador de baterías', 'BT6', 10, 37, 9, 5),
(58, 'Discos de freno', 'BT7', 50, 38, 10, 5),
(60, 'Motores', 'BT8.2', 10, 9, 11, 5);

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
  `idTipo` int(11) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prov`
--

INSERT INTO `prov` (`idProveedor`, `Nombre`, `Direccion`, `Municipio`, `Provincia`, `Telefono`, `idTipo`, `idDepartamento`) VALUES
(1, 'Salesianos', 'Don Bosco', 'Zaragoza', 'Zaragoza', 1234, 3, 0),
(2, 'Maquinaria Barruiso', 'Polígono Industrial de Barros, Parcela 12 Naves 2 y 3, 39408, Barros, Cantabria', 'Cantabria', 'Cantabria', 942555348, 9, 2),
(3, 'BOMBAS Y FLUIDOS, S.L', 'C. Alejandro Bell, 11, B, 50014 Zaragoza', 'Zaragoza', 'Zaragoza', 976574127, 9, 2),
(4, 'Grm ', 'Lugar Monte Perdido, 3, 50015 Zaragoza', 'Zaragoza', 'Zaragoza', 456789123, 9, 2),
(5, 'AUSA Special Steels | Aceros especiales y Aceros calibrados ', 'Polígono Malpica, Calle D, 19, 50016 Zaragoza', 'Zaragoza', 'Zaragoza', 976138122, 9, 2),
(6, 'Euroferrasa', 'C. Geranio, 57, 50171 La Puebla de Alfindén, Zaragoza', 'Zaragoza', 'Zaragoza', 628733751, 15, 6),
(7, 'Pcbox', 'C. de la Corona de Aragón, 14, 50009 Zaragoza', 'Zaragoza', 'Zaragoza', 976557473, 34, 1),
(9, 'Loma', 'Av. de Cataluña, 290, 50014 Zaragoza', 'Zaragoza', 'Zaragoza', 976574828, 12, 5),
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
(32, 'Proveedor30', 'Dirección30 Zaragoza', 'Zaragoza', 'Zaragoza', 987456321, 30, 6),
(34, 'Velca', 'C. de Monegros, 6, Local, 50003 Zaragoza', 'Zaragoza', 'Zaragoza', 633361705, 9, 2),
(35, 'Carretillas HC', 'C. Romero, 6, 50171 La Puebla de Alfindén, Zaragoza', 'Zaragoza', 'Zaragoza', 976455281, 6, 5),
(36, 'Fercas Soldadura SL', 'Av. de la Jota, 52, 50014 Zaragoza', 'Zaragoza', 'Zaragoza', 976474353, 6, 5),
(37, 'Baterias Litio', 'C. de Desiderio Escosura, 47, Delicias, 50005 Zaragoza', 'Zaragoza', 'Zaragoza', 629367697, 6, 5),
(38, 'Frenos Bolca', 'C. del Alcalde Burriel, 7, 50005 Zaragoza', 'Zaragoza', 'Zaragoza', 976550188, 6, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoprod`
--

CREATE TABLE `tipoprod` (
  `idTipo` int(11) NOT NULL,
  `NombreTipo` varchar(40) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipoprod`
--

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
(15, 'Metales', 6),
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
(31, 'Generadores', 6),
(34, 'Hardware', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubi`
--

CREATE TABLE `ubi` (
  `idUbicacion` int(11) NOT NULL,
  `NombreUbicacion` varchar(40) NOT NULL,
  `idDepartamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubi`
--

INSERT INTO `ubi` (`idUbicacion`, `NombreUbicacion`, `idDepartamento`) VALUES
(1, 'Pabellón', 0),
(2, 'Edificio Talleres', 0);

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
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idMarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `idMateriales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `prov`
--
ALTER TABLE `prov`
  MODIFY `idProveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `tipoprod`
--
ALTER TABLE `tipoprod`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
