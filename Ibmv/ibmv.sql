-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-11-2024 a las 21:12:45
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ibmv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE `administrativos` (
  `Id` int(40) NOT NULL,
  `Nombres` varchar(30) NOT NULL,
  `Apellidop` varchar(30) NOT NULL,
  `Apellidom` varchar(25) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrativos`
--

INSERT INTO `administrativos` (`Id`, `Nombres`, `Apellidop`, `Apellidom`, `Cargo`, `correo`) VALUES
(1, 'talia', 'martines', 'torres', 'Directora', 'talia678776@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras_ibm`
--

CREATE TABLE `carreras_ibm` (
  `id` int(30) NOT NULL,
  `Nomcarrera` varchar(30) NOT NULL,
  `Duracion` int(30) NOT NULL,
  `Numaterias` int(100) NOT NULL,
  `Coordinadorc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras_ibm`
--

INSERT INTO `carreras_ibm` (`id`, `Nomcarrera`, `Duracion`, `Numaterias`, `Coordinadorc`) VALUES
(1, 'sistemas', 3, 50, 'Ale pinedo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroaula`
--

CREATE TABLE `registroaula` (
  `id` int(40) NOT NULL,
  `Numaulas` int(50) NOT NULL,
  `Capacidad` int(50) NOT NULL,
  `Ubicacion` varchar(80) NOT NULL,
  `Equipamiento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registroaula`
--

INSERT INTO `registroaula` (`id`, `Numaulas`, `Capacidad`, `Ubicacion`, `Equipamiento`) VALUES
(1, 7, 45, 'los andes', 'Pizarra digital');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrodocentes`
--

CREATE TABLE `registrodocentes` (
  `id` int(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidop` varchar(50) NOT NULL,
  `Apellidom` varchar(30) NOT NULL,
  `Asignatura` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `Telefono` int(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrodocentes`
--

INSERT INTO `registrodocentes` (`id`, `Nombre`, `Apellidop`, `Apellidom`, `Asignatura`, `correo`, `Telefono`) VALUES
(2, 'Pedro', 'Martines', 'gimenez', 'psicologia', 'gimenes678@gmail.com', 789065878);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrostudy`
--

CREATE TABLE `registrostudy` (
  `id` int(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellidop` varchar(50) NOT NULL,
  `Apellidom` varchar(30) NOT NULL,
  `Carrera` varchar(50) NOT NULL,
  `correo` varchar(25) NOT NULL,
  `Nfecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrostudy`
--

INSERT INTO `registrostudy` (`id`, `Nombre`, `Apellidop`, `Apellidom`, `Carrera`, `correo`, `Nfecha`) VALUES
(1, 'Maria', 'flores', 'torres', 'Contabilidad', 'maria678776@gmail.com', '1920-08-07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `carreras_ibm`
--
ALTER TABLE `carreras_ibm`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registroaula`
--
ALTER TABLE `registroaula`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registrodocentes`
--
ALTER TABLE `registrodocentes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registrostudy`
--
ALTER TABLE `registrostudy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  MODIFY `Id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carreras_ibm`
--
ALTER TABLE `carreras_ibm`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registroaula`
--
ALTER TABLE `registroaula`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registrodocentes`
--
ALTER TABLE `registrodocentes`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `registrostudy`
--
ALTER TABLE `registrostudy`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
