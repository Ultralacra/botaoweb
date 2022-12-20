-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-12-2022 a las 14:49:10
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `botaoweb`
--
CREATE DATABASE IF NOT EXISTS `botaoweb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `botaoweb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario`
--

CREATE TABLE `formulario` (
  `id` int(11) NOT NULL,
  `opcion` varchar(50) NOT NULL,
  `tipo_pagina` varchar(50) NOT NULL,
  `nombre_ecommerce` varchar(50) NOT NULL,
  `cant_ecommerce` varchar(50) NOT NULL,
  `foto_ecommerce` varchar(150) NOT NULL,
  `nombre_landingpage` varchar(50) NOT NULL,
  `info_landingpage` varchar(150) NOT NULL,
  `breve_informativa` varchar(150) NOT NULL,
  `home_informativa` varchar(150) NOT NULL,
  `nosotros_informativa` varchar(150) NOT NULL,
  `servicios_informativa` varchar(150) NOT NULL,
  `contacto_informativa` varchar(150) NOT NULL,
  `pago` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `formulario`
--

INSERT INTO `formulario` (`id`, `opcion`, `tipo_pagina`, `nombre_ecommerce`, `cant_ecommerce`, `foto_ecommerce`, `nombre_landingpage`, `info_landingpage`, `breve_informativa`, `home_informativa`, `nosotros_informativa`, `servicios_informativa`, `contacto_informativa`, `pago`) VALUES
(1, 'si', 'ecommerce', 'servicio card center', '10', 'productos1.png', 'informatica ', 'desarrollo y mantenimiento', 'programamos y mantenemos tu pc ', 'inicio', 'desarrollo sistema, arreglo de computadora y celulares', 'los mismo', 'no lo llames', 'flow');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
