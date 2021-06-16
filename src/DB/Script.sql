-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2021 a las 01:38:41
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotel`
--
DROP DATABASE IF EXISTS `hotel`;
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credenciales`
--

CREATE TABLE `credenciales` (
  `Usr` varchar(10) DEFAULT NULL,
  `Pass` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `credenciales`
--

INSERT INTO `credenciales` (`Usr`, `Pass`) VALUES
('root', '21232f297a57a5a743894a0e4a801fc3'),
('xJuairo', 'e10adc3949ba59abbe56e057f20f883e'),
('Sebai', 'e10adc3949ba59abbe56e057f20f883e'),
('sergio', '619ac44a2da678e8a7fc0e776250df6c'),
('Aram', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `Nombre` varchar(50) DEFAULT NULL,
  `NumTel` varchar(15) DEFAULT NULL,
  `Correo` varchar(30) DEFAULT NULL,
  `MetodoP` varchar(40) DEFAULT NULL,
  `NumH` int(2) NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `CiudaddeOrigen` varchar(50) DEFAULT NULL,
  `dias` int(3) DEFAULT NULL,
  `Tpersonas` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`Nombre`, `NumTel`, `Correo`, `MetodoP`, `NumH`, `Sexo`, `CiudaddeOrigen`, `dias`, `Tpersonas`) VALUES
('Juan', '4491234567', 'juanperez@hotmail.com', 'Tarjeta', 101, 'Masculino', 'Aguascalientes', 5, 1),
('Javier ', '4499876543', 'JavierLopez@hotmail.com', 'Efectivo', 111, 'Masculino', 'Tamaulipas', 6, 1),
('Miriam Juarez', '4497628462', 'miriamjuarez@hotmail.com', 'Tarjeta', 112, 'Femenino', 'Ciudad Juarez', 4, 1),
('Aram Lopez', '4495628534', 'Aramlopez@hotmail.com', 'Efectivo', 121, 'Masculino', 'Guadalajara', 5, 1),
('Anderson Armas', '4493333336', 'AndersonArmas@hotmail.com', 'Tarjeta', 131, 'Masculino', 'Chihuahua', 6, 1),
('Gabriel Ochoa', '4492467356', 'GabrielOchoa@hotmail.com', 'Tarjeta', 141, 'Masculino', 'Sonora', 4, 1),
('Jose Duarte', '4498835576', 'JoseDuarte@gmail.com ', 'Efectivo', 151, 'Masculino', 'Yucatan', 8, 1),
('Erick Benitez', '4491334876', 'ErickBenitez@gmail.com', 'Tarjeta', 161, 'Masculino', 'Ixmiquilpan', 7, 1),
('David Esparza', '4493784576', 'DavidEsparza@hotmail.com', 'Efectivo', 181, 'Masculino', 'Aguascalientes', 6, 2),
('Vicente Juarez', '4495573456', 'VicenteJuarez@gmail.com', 'Tarjeta', 191, 'Masculino', 'Zacatecas', 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeria`
--

CREATE TABLE `galeria` (
  `RutaImagen` varchar(20) DEFAULT NULL,
  `Id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `galeria`
--

INSERT INTO `galeria` (`RutaImagen`, `Id`) VALUES
('H1.jpg', 1),
('H2.jpg', 2),
('H3.jpg', 3),
('H4.jpg', 4),
('H5.jpg', 5),
('H6.jpg', 6),
('H7.jpg', 7),
('H8.jpg', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `THab` int(1) NOT NULL,
  `FInic` date DEFAULT NULL,
  `Cupo` int(1) DEFAULT NULL,
  `NumH` int(3) NOT NULL,
  `Piso` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`THab`, `FInic`, `Cupo`, `NumH`, `Piso`) VALUES
(1, '2021-06-16', 1, 101, 1),
(1, '2021-06-16', 1, 111, 1),
(1, '2021-06-16', 1, 112, 1),
(1, '2021-06-16', 1, 121, 1),
(1, '2021-06-16', 1, 131, 1),
(1, '2021-06-16', 1, 141, 1),
(1, '2021-06-16', 1, 151, 1),
(1, '2021-06-16', 1, 161, 2),
(2, '2021-06-16', 1, 181, 2),
(2, '2021-06-16', 1, 191, 2),
(3, NULL, 0, 201, 2),
(1, NULL, 0, 212, 1),
(1, NULL, 0, 221, 2),
(2, NULL, 0, 224, 2),
(1, NULL, 0, 231, 2),
(1, NULL, 0, 241, 2),
(1, NULL, 0, 251, 2),
(2, NULL, 0, 257, 2),
(1, NULL, 0, 261, 2),
(1, NULL, 0, 271, 2),
(1, NULL, 0, 281, 2),
(1, NULL, 0, 291, 2),
(1, NULL, 0, 301, 2),
(3, NULL, 0, 311, 1),
(3, NULL, 0, 411, 1),
(2, NULL, 0, 511, 1),
(2, NULL, 0, 611, 1),
(1, NULL, 0, 711, 1),
(3, NULL, 0, 811, 1),
(1, NULL, 0, 911, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `info`
--

CREATE TABLE `info` (
  `Nombre` varchar(10) DEFAULT NULL,
  `TipoHotel` varchar(20) DEFAULT NULL,
  `Lema` varchar(20) DEFAULT NULL,
  `Logotipo` varchar(20) DEFAULT NULL,
  `Ubicacion` varchar(50) DEFAULT NULL,
  `dineros` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `info`
--

INSERT INTO `info` (`Nombre`, `TipoHotel`, `Lema`, `Logotipo`, `Ubicacion`, `dineros`) VALUES
('Hotel', '5 Estrellas', 'Tu hotel ideal', 'Logotipo.png', 'Mexico, Guerrero, Acapulco', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipohab`
--

CREATE TABLE `tipohab` (
  `Precio` int(4) DEFAULT NULL,
  `THab` int(1) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `Personas` int(2) DEFAULT NULL,
  `Ruta` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipohab`
--

INSERT INTO `tipohab` (`Precio`, `THab`, `nombre`, `Personas`, `Ruta`) VALUES
(2000, 1, 'Sencilla', 1, 'H6.jpg'),
(2500, 2, 'Doble', 2, 'H5.jpg'),
(3000, 3, 'Triple', 3, 'H7.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`NumH`);

--
-- Indices de la tabla `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`NumH`,`THab`);

--
-- Indices de la tabla `tipohab`
--
ALTER TABLE `tipohab`
  ADD PRIMARY KEY (`THab`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
