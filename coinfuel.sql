-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2021 a las 12:18:05
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coinfuel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gasolineras`
--

CREATE TABLE `gasolineras` (
  `id` int(11) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dirección` varchar(50) NOT NULL,
  `coordenadas` varchar(100) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  `gasolina95` int(10) NOT NULL,
  `gsolina98` int(10) NOT NULL,
  `diesel` int(10) NOT NULL,
  `diesel_premium` int(10) NOT NULL,
  `horario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gasolinera_fav`
--

CREATE TABLE `gasolinera_fav` (
  `id_gasolinera` int(10) NOT NULL,
  `id_usuario` int(250) NOT NULL,
  `conf` int(250) NOT NULL,
  `id_gasolinera_fav` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `fecha/hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(11) NOT NULL,
  `id_municipio` int(250) NOT NULL,
  `municipio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `register_user`
--

CREATE TABLE `register_user` (
  `id` int(11) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cp` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gasolineras`
--
ALTER TABLE `gasolineras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indice_idMunicipio` (`id_municipio`);

--
-- Indices de la tabla `gasolinera_fav`
--
ALTER TABLE `gasolinera_fav`
  ADD PRIMARY KEY (`id_gasolinera_fav`),
  ADD KEY `indice_gasolinera` (`id_gasolinera`),
  ADD KEY `indice_usuario` (`id_usuario`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indice_user` (`id_user`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `register_user`
--
ALTER TABLE `register_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gasolineras`
--
ALTER TABLE `gasolineras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gasolinera_fav`
--
ALTER TABLE `gasolinera_fav`
  MODIFY `id_gasolinera_fav` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `register_user`
--
ALTER TABLE `register_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gasolineras`
--
ALTER TABLE `gasolineras`
  ADD CONSTRAINT `gasolineras_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id`);

--
-- Filtros para la tabla `gasolinera_fav`
--
ALTER TABLE `gasolinera_fav`
  ADD CONSTRAINT `gasolinera_fav_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `register_user` (`id`),
  ADD CONSTRAINT `gasolinera_fav_ibfk_2` FOREIGN KEY (`id_gasolinera`) REFERENCES `gasolineras` (`id`);

--
-- Filtros para la tabla `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `register_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
