-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2021 a las 05:40:44
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_autoscolombia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_automoviles`
--

CREATE TABLE `tb_automoviles` (
  `id` int(255) NOT NULL,
  `placa` varchar(5) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `documento` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_automoviles`
--

INSERT INTO `tb_automoviles` (`id`, `placa`, `tipo`, `documento`, `nombre`, `fecha`, `hora`) VALUES
(120, 'AA123', 'moto', 41414141, 'astrid milena pulgarin', '2021-11-12', '19:46:00'),
(121, 'ekv71', 'moto', 98645082, 'juan guillermo roldan', '2021-11-12', '19:47:00'),
(134, 'avb00', 'carro', 43105114, 'astrid milena pulgarin', '2021-11-25', '16:13:00'),
(136, 'jprol', 'carro', 1020489108, 'pablo cordoba', '2021-11-27', '17:21:00'),
(137, 'ccc01', 'carro', 43225776, 'andres castro', '2021-11-25', '18:08:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id` int(255) NOT NULL,
  `user` varchar(18) NOT NULL,
  `password` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id`, `user`, `password`) VALUES
(2, 'admin', 'admin'),
(53, 'jproldanpulgarin', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_automoviles`
--
ALTER TABLE `tb_automoviles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_automoviles`
--
ALTER TABLE `tb_automoviles`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
