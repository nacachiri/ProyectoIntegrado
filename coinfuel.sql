-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-05-2021 a las 11:37:50
-- Versión del servidor: 8.0.25-0ubuntu0.20.04.1
-- Versión de PHP: 7.4.3

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
CREATE DATABASE IF NOT EXISTS `coinfuel` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `coinfuel`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gasolineras`
--

DROP TABLE IF EXISTS `gasolineras`;
CREATE TABLE `gasolineras` (
  `id` int NOT NULL,
  `logo` varchar(200) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `id_municipio` int NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `gasolina95` float NOT NULL,
  `gasolina98` float NOT NULL,
  `diesel` float NOT NULL,
  `diesel_premium` float NOT NULL,
  `horario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `gasolineras`
--

INSERT INTO `gasolineras` (`id`, `logo`, `nombre`, `direccion`, `id_municipio`, `latitud`, `longitud`, `gasolina95`, `gasolina98`, `diesel`, `diesel_premium`, `horario`) VALUES
(1, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA VALENCIA, S/N', 6966, 40.06325, -1.285139, 1.399, 1.549, 1.219, 1.279, 'L-S: 07:30-21:00'),
(2, 'logosGasolineras/logoAgullent.png', 'GASOLINERA AGULLENT', 'CARRETERA ONTINYENT KM. 1', 6968, 38.828, -0.560556, 1.209, 0, 1.099, 0, 'L-D: 24H'),
(3, 'logosGasolineras/logoBP.png', 'BP', 'AUTOVIA VALENCIA/ ALCOY CV 40 KM. 14', 6969, 38.885667, -0.58, 1.419, 0, 1.279, 1.339, 'L-D: 24H'),
(4, 'logosGasolineras/logoGasexpress.png', 'GASEXPRESS ', 'AVENIDA BLASCO IBAÑEZ, 69', 6971, 39.459, -0.4485, 1.247, 0, 1.097, 0, 'L-D: 24H'),
(5, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE CUENCA, 65', 6971, 39.456694, -0.468472, 1.267, 0, 1.117, 0, 'L-D: 24H'),
(6, 'logosGasolineras/logoMolgas.png', 'MOLGAS', 'CALLE MARIANA PINEDA, 7', 6971, 39.445944, -0.487417, 0, 0, 0, 0, 'L-D: 24H'),
(7, 'logosGasolineras/logoGalp.png', 'GALP - AMERICAN PETROL ', 'CL. ALADRERS, 16 POLIGONO INDUSTRIAL ELS MOLLONS', 6971, 39.448583, -0.472917, 1.379, 0, 1.269, 0, 'L-D: 24H'),
(8, 'logosGasolineras/logoGalp.png', 'GALP', 'CALLE CUENCA, 59', 6971, 39.456833, -0.467583, 1.399, 1.529, 1.229, 0, 'L-D: 06:00-22:00'),
(9, 'logosGasolineras/logoBP.png', 'BP', 'AVENIDA PABLO IGLESIAS, 69', 6971, 39.449028, -0.460361, 1.409, 1.559, 1.219, 1.319, 'L-D: 24H'),
(10, 'logosGasolineras/logoDefault.png', 'ECOIL LEVANTE', 'CALLE CUENCA, 95', 6971, 39.455861, -0.472, 1.269, 0, 1.129, 0, 'L-D: 24H'),
(11, 'logosGasolineras/logoBenzina.png', 'BENZINA ALAQUAS', 'TRAVESSERA BOVALAR, 82', 6971, 39.447861, -0.469278, 1.259, 0, 1.119, 0, 'L-D: 24H'),
(12, 'logosGasolineras/logoGasolben.png', 'GASOLBEN', 'AVENIDA JOSEP GINER I MARCO DE, 2', 6972, 38.836833, -0.524056, 0, 0, 0, 1.269, 'L-D: 24H'),
(13, 'logosGasolineras/logoDefault.png', 'CEPSA', 'N-340 km 818', 6972, 38.836222, -0.518056, 1.429, 1.569, 1.269, 1.329, 'L-D: 06:00-22:00'),
(14, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE UE3-SECTOR2.A3, 1', 6973, 39.389, -0.409583, 1.267, 0, 1.097, 0, 'L-D: 24H'),
(15, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AVENIDA PADRE CARLOS FERRIS, 109', 6973, 39.392333, -0.407306, 1.377, 1.434, 1.239, 1.295, 'L-D: 06:30-21:30'),
(16, 'logosGasolineras/logoBiomar.png', 'BIOMAR OIL SL', 'CALLE OCHO, 7', 6973, 39.390417, -0.406389, 1.266, 0, 1.106, 0, 'L-D: 24H'),
(17, 'logosGasolineras/logoDefault.png', 'LOWCOST24H', 'AVENIDA PADRE CARLOS FERRIS, 11', 6973, 39.392111, -0.40775, 1.269, 0, 1.099, 0, 'L-D: 24H'),
(18, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CR N-221, 7,3', 6975, 39.530194, -0.313083, 1.379, 1.529, 1.209, 1.259, 'L-D: 06:00-22:00'),
(19, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CARRETERA A-35 KM. 670,9', 6977, 39.131444, -0.522278, 1.389, 0, 1.259, 1.325, 'L-D: 06:00-22:00'),
(20, 'logosGasolineras/logoDefault.png', 'PETROMAR', 'CARRETERA CARCAGENTE KM. 12', 6977, 39.121278, -0.517667, 1.339, 0, 1.199, 1.339, 'L-D: 06:00-22:00'),
(21, 'logosGasolineras/logoBP.png', 'BP BERTA', 'CARRETERA CR N-340 BARCELONA-CADIZ KM 861 KM. 841', 6977, 39.106722, -0.526167, 1.429, 1.499, 1.249, 1.369, 'L-D: 24H'),
(22, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA CV.550 CTRA. ALBERIC-ALZIRA KM. 1,4', 6977, 39.129667, -0.508139, 1.399, 1.542, 1.249, 1.328, 'L-D: 06:00-22:00'),
(23, 'logosGasolineras/logoExoil.png', 'EXOIL ALBERIC', 'CALLE TOUS, S/N', 6977, 39.119222, -0.528528, 1.349, 1.449, 1.189, 0, 'L-D: 06:00-22:00'),
(24, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA BUÑOL-CORTE DE PALLAS KM 4.9 KM. 490', 6978, 39.394194, -0.782861, 1.399, 0, 1.229, 1.319, 'L-D: 06:00-22:00'),
(25, 'logosGasolineras/logoAlcampo.png', 'ALCAMPO S.A.', 'C.C.ALCAMPO km A-7 SAL 2', 6979, 39.504528, -0.324472, 1.241, 1.429, 1.094, 1.121, 'L-D: 24H'),
(26, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CARRETERA VV-7002 KM. 4,2', 6979, 39.510167, -0.332389, 1.377, 0, 1.239, 1.295, 'L-D: 06:30-21:30'),
(27, 'logosGasolineras/logoBZ.png', 'BZ ALBORAYA', 'CALLE CERAMISTES, 1', 6979, 39.502056, -0.345333, 1.259, 0, 1.099, 0, 'L-D: 24H'),
(28, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CL PARTIDA DE VERA,98', 6979, 39.485222, -0.329472, 1.399, 1.549, 1.219, 1.309, 'L-D: 06:00-22:00'),
(29, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA ALBORAYA - TAVERNES KM. 1,7', 6979, 39.501778, -0.356611, 1.409, 1.539, 1.219, 1.269, 'L-D: 06:00-22:00'),
(30, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE 7, S/N', 6979, 39.500222, -0.346, 1.409, 1.539, 1.219, 1.269, 'L-D: 06:00-22:00'),
(31, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA MEDITERRANEO, 12', 6980, 39.536889, -0.309556, 1.379, 0, 1.209, 1.259, 'L-D: 24H'),
(32, 'logosGasolineras/logoShell.png', 'SHELL', 'AVINGUDA MEDITERRÁNEO, 8', 6980, 39.539472, -0.306528, 1.289, 1.439, 1.129, 1.219, 'L-S: 08:00-21:00'),
(33, 'logosGasolineras/logoDefault.png', 'AGRICOLA SAN JOSE ALCASSER COOP.V.', 'AVENIDA TORRENT, S/N', 6982, 39.374, -0.446583, 1.269, 0, 1.149, 0, 'L-D: 24H'),
(34, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CARRER DELS FUSTERS, 8', 6982, 39.364056, -0.439, 1.289, 0, 1.149, 0, 'L-D: 24H'),
(35, 'logosGasolineras/logoDefault.png', 'E.S-TALLER CABANES SANZ S.L ', 'RONDA 4 - ZONA FEDIGUERIAS, POLIGONO, 1', 6983, 39.799972, -0.703278, 1.399, 0, 1.249, 0, 'L-D: 07:20-22:00'),
(36, 'logosGasolineras/logoDefault.png', 'FACE PETROLEUM', 'CALLE TEIXIDORS, S/N', 6984, 39.185889, -0.509083, 1.245, 0, 1.079, 1.129, 'L-D: 24H'),
(37, 'logosGasolineras/logoCampsa.png', 'CAMPSA EXPRESS', 'CALLE REPUBLICA ARGENTINA, S/N', 6984, 39.196111, -0.498889, 1.299, 0, 1.109, 0, 'L-D: 24H'),
(38, 'logosGasolineras/logoPetromax.png', 'PETROMAX', 'AVENIDA COMTE SERRALLO, 26', 6984, 39.203333, -0.501944, 1.269, 0, 1.099, 1.189, 'L-D: 24H'),
(39, 'logosGasolineras/logoDefault.png', 'E.S. EL SERRALLO', 'AVENIDA ANTONIO ALMELA, 1', 6984, 39.198889, -0.504278, 1.299, 1.329, 1.109, 1.219, 'L-D: 24H'),
(40, 'logosGasolineras/logoBuranEnergy.png', 'CANSO+CARBURANTS', 'AVDA. COOP. AGRÍCOLA VIRGEN DEL ORETO, 2', 6984, 39.192198, -0.511581, 1.269, 1.316, 1.089, 0, 'L-D: 06:00-22:00'),
(41, 'logosGasolineras/logoDefault.png', 'EL CANARI', 'VIAL LA COSTERA, 20', 6985, 38.968556, -0.613278, 1.229, 0, 1.099, 0, 'L-D: 24H'),
(42, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA CASTILLA, 6', 6985, 38.974333, -0.592528, 1.389, 1.499, 1.209, 1.259, 'L-D: 06:00-22:00'),
(43, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CL COLAORS - SAN ONOFRE, S.N.', 6986, 39.469528, -0.458472, 1.439, 1.569, 1.269, 1.339, 'L-D: 06:00-22:00'),
(44, 'logosGasolineras/logoDefault.png', 'ECOIL LEVANTE', 'CAMI DE LA LLOMA, 2', 6986, 39.465972, -0.469472, 1.269, 1.399, 1.119, 1.129, 'L-D: 24H'),
(45, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE MIGUEL HERNANDEZ, 35', 6986, 39.470389, -0.463583, 1.267, 0, 1.117, 0, 'L-D: 24H'),
(46, 'logosGasolineras/logoShell.png', 'SHELL', 'CALLE PARTIDA DE ZAMARRA, 13', 6986, 39.463917, -0.440944, 1.268, 0, 1.138, 0, 'L-D: 24H'),
(47, 'logosGasolineras/logoDefault.png', 'BIOENER', 'CALLE RIU XUQUER, 58', 6986, 39.464472, -0.441139, 1.207, 0, 1.067, 0, 'L-D: 24H'),
(48, 'logosGasolineras/logoBP.png', 'BP OIL ESPAÑA, S.A.', 'CALLE SOLIDARITAT, 28', 6986, 39.475306, -0.454444, 1.439, 1.569, 1.269, 1.339, 'L-D: 06:00-22:00'),
(49, 'logosGasolineras/logoBP.png', 'BP', 'AVENIDA REYES CATOLICOS, 72', 6987, 39.417306, -0.379, 1.419, 0, 1.249, 0, 'L-S: 09:00-21:00'),
(50, 'logosGasolineras/logoCarrefour.png', 'CARREFOUR', 'AVENIDA DE LA ALBUFERA, S/N', 6987, 39.420361, -0.378917, 1.399, 1.529, 1.229, 1.259, 'L-D: 24H'),
(51, 'logosGasolineras/logoDefault.png', 'VCC ALFAFAR', 'CALLE DOCTOR VENTURA ALABAU, 1', 6987, 39.417556, -0.382056, 1.229, 0, 1.053, 0, 'L-D: 24H'),
(52, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA ALBUFERA, 9', 6987, 39.423222, -0.388056, 1.419, 1.569, 1.249, 1.339, 'L-D: 06:00-22:00'),
(53, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CR N-332, 282', 6987, 39.410389, -0.380917, 1.405, 1.515, 1.249, 1.329, 'L-D: 06:00-22:00'),
(54, 'logosGasolineras/logoDefault.png', 'GASOLINERA ALFAFAR', 'Pgno. nº 3 - Parcela H-11', 6987, 39.415528, -0.398056, 1.199, 0, 1.064, 0, 'L-D: 06:00-22:00'),
(55, 'logosGasolineras/logoDefault.png', 'DUROIL', 'CALLE CRUILLES, 4', 6989, 39.54975, -0.384944, 1.259, 0, 1.119, 0, 'L-D: 24H'),
(56, 'logosGasolineras/logoDefault.png', 'AUTOLLAVAT EL PLA', 'CARRER L\'ALBOTAINA, ', 6994, 39.198444, -0.432972, 0, 0, 1.109, 0, 'L-D: 08:00-21:00'),
(57, 'logosGasolineras/logoBP.png', 'BP ALGEMESI II - LA CALANDRIA', 'AVENIDA PAIS VALENCIA, 144', 6994, 39.19275, -0.429611, 1.419, 1.561, 1.239, 1.329, 'L-D: 06:00-00:00'),
(58, 'logosGasolineras/logoDefault.png', 'OIL CITY', 'CALLE RONDA DEL CALVARI, 73', 6994, 39.199028, -0.434528, 1.259, 0, 1.109, 0, 'L-D: 24H'),
(59, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CR CV-42, 7', 6994, 39.220694, -0.421806, 1.385, 1.515, 1.209, 1.259, 'L-S: 06:00-22:00'),
(60, 'logosGasolineras/logoBP.png', 'BP ALGEMESI I - SAN CRISTOBAL', 'CALLE RONDA DE ALZIRA, 15', 6994, 39.19125, -0.441056, 1.419, 1.561, 1.239, 1.329, 'L-D: 06:00-22:00'),
(61, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE VALENCIA, 206', 6994, 39.198333, -0.433583, 1.257, 0, 1.105, 0, 'L-D: 24H'),
(62, 'logosGasolineras/logoDefault.png', 'COOP EL PORVENIR', 'AVENIDA VALENCIA, 10', 6995, 39.74892, -0.365998, 1.354, 0, 1.204, 0, 'L-D: 24H'),
(63, 'logosGasolineras/logoDefault.png', 'COAGRI', 'CALLE TRULLAS, S/N', 6996, 39.261944, -0.464556, 1.259, 0, 1.109, 0, 'L-D: 06:00-23:00'),
(64, 'logosGasolineras/logoDefault.png', 'CRIEL', 'POLIGONO NORTE, 1', 6996, 39.267306, -0.451583, 1.269, 0, 1.109, 1.169, 'L-D: 24H'),
(65, 'logosGasolineras/logoDefault.png', 'PETROLEOS CN-340', 'TRULLAS, S/N', 6996, 39.261222, -0.460972, 1.297, 1.357, 1.157, 0, 'L-D: 06:00-22:00'),
(66, 'logosGasolineras/logoDefault.png', 'VCC ALGINET', 'CALLE CENSAL DEL, 17', 6996, 39.271389, -0.464639, 1.239, 0, 1.079, 0, 'L-D: 24H'),
(67, 'logosGasolineras/logoDefault.png', 'S2', 'AVDA. BLASCO IBAÑEZ, S/N', 6997, 39.510472, -0.359528, 1.269, 1.439, 1.129, 0, 'L-D: 24H'),
(68, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE DELS PINTORS, 5', 6999, 38.949389, -0.180333, 1.299, 0, 1.137, 0, 'L-D: 24H'),
(69, 'logosGasolineras/logoDefault.png', 'COAGAL', 'POLIGONO PG I. JUAN CARLOS I, C/TRAMUNTANA, 7', 7000, 39.307778, -0.418611, 1.269, 0, 1.115, 1.169, 'L-D: 24H'),
(70, 'logosGasolineras/logoDefault.png', 'CCOOPERATIVA DE ALPUENTE', 'POLIGONO PARCELAS 281 Y 283, 281/283', 7001, 39.887889, -1.02, 0, 0, 1.069, 0, 'L-D: 24H'),
(72, 'logosGasolineras/logoBuranEnergy.png', 'ALZICOOP CARBURANTS', 'ALZIRA/CARCAIXENT km 0.400', 7003, 39.141611, -0.439472, 1.238, 0, 1.098, 0, 'L-D: 24H'),
(73, 'logosGasolineras/logoDefault.png', 'BDMED', 'AVENIDA VICENTE VIDAL, S/N', 7003, 39.14475, -0.427528, 1.259, 0, 1.119, 0, 'L-D: 24H'),
(74, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA CC-3322 KM. 19,65', 7003, 39.140778, -0.424806, 1.329, 1.409, 1.199, 1.219, 'L-D: 06:00-22:00'),
(75, 'logosGasolineras/logoCampsa.png', 'CAMPSA EXPRESS', 'PLAZA ALICANTE, S/N', 7003, 39.149139, -0.432028, 1.319, 0, 1.199, 0, 'L-D: 24H'),
(76, 'logosGasolineras/logoDefault.png', 'LOW COST ALZIRA', 'POLIGONO CARRETERA ALBALAT, 93', 7003, 39.165222, -0.424583, 1.208, 0, 1.047, 0, 'L-D: 24H'),
(77, 'logosGasolineras/logoDefault.png', 'CEPSA', 'BENITO PEREZ GALDOS, 68', 7003, 39.149139, -0.432778, 1.429, 1.584, 1.289, 1.389, 'L-D: 24H'),
(78, 'logosGasolineras/logoDefault.png', 'MASOIL', 'CALLE GANDIA, 24', 7003, 39.1445, -0.427889, 1.279, 0, 1.149, 0, 'L-D: 24H'),
(79, 'logosGasolineras/logoDefault.png', 'CEPSA', 'PLAZA PARROCO VILAR, S/N', 7003, 39.15875, -0.429667, 1.429, 1.584, 1.289, 1.389, 'L-D: 06:00-22:00'),
(80, 'logosGasolineras/logoCarrefour.png', 'CARREFOUR', 'CARRETERA DE ALBALAT, SN KM. ', 7003, 39.162306, -0.429861, 1.319, 1.509, 1.149, 1.179, 'L-D: 24H'),
(81, 'logosGasolineras/logoBP.png', 'BP', 'Ronda Pryca, 1', 7003, 39.161528, -0.430167, 1.424, 1.579, 1.284, 1.384, 'L-D: 06:00-22:00'),
(82, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE PROYECTO, 14', 7003, 39.160389, -0.431167, 1.208, 0, 1.047, 0, 'L-D: 24H'),
(83, 'logosGasolineras/logoDefault.png', 'COOP. SANT BERNAT', 'POLIGONO CALLE SOGUERS, 9', 7003, 39.16025, -0.446722, 0, 0, 1.089, 0, 'L-D: 24H'),
(84, 'logosGasolineras/logoDefault.png', 'ES HIGUERUELAS', 'CARRETERA VILLAR- LA YESA KM. 9,1', 7004, 39.789194, -0.857944, 1.309, 1.419, 1.149, 0, 'L-D: 24H'),
(85, 'logosGasolineras/logoDefault.png', 'ANNA', 'CARRETERA 580 KM. 2', 7005, 39.013556, -0.646083, 1.319, 1.409, 1.179, 1.259, 'L-D: 06:00-21:30'),
(86, 'logosGasolineras/logoBuranEnergy.png', 'CARBURANTES Y SERVICIOS AYORA SL', 'CALLE III POL.IND. SAN ANTON', 7009, 39.05125, -1.046806, 1.259, 1.359, 1.119, 0, 'L-D: 24H'),
(87, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'TRAVESÍA VIRGEN DEL ROSARIO, S/N', 7009, 39.059722, -1.053306, 1.415, 1.525, 1.259, 1.329, 'L: 06:00-22:00'),
(88, 'logosGasolineras/logoBuranEnergy.png', 'LA AYORENSE CARBURANTES', 'CALLE FUENTEZUELA, 45', 7009, 39.055556, -1.056167, 1.259, 0, 1.107, 0, 'L-D: 24H'),
(89, 'logosGasolineras/logoDefault.png', 'LOWCOST BENAGUACIL', 'CALLE FRAY LUIS AMIGO, 38', 7016, 39.600389, -0.5815, 1.249, 0, 1.099, 0, 'L-D: 24H'),
(90, 'logosGasolineras/logoDefault.png', 'RURAL SAN VICENTE FERRER', 'CRUCE CALLES COOPERATIVA Y JUAN SUBIELA', 7016, 39.586667, -0.588889, 1.219, 0, 1.079, 0, 'L-D: 24H'),
(91, 'logosGasolineras/logoDefault.png', 'DUROIL', 'CALLE FRAY LUIS AMIGÓ, 37', 7016, 39.599639, -0.582833, 1.249, 0, 1.099, 0, 'L-D: 24H'),
(92, 'logosGasolineras/logoGalp.png', 'GALP', 'AUTOVIA A7 KM. 389,80', 7018, 39.059528, -0.5445, 1.269, 0, 1.131, 1.299, 'L-D: 06:00-22:00'),
(93, 'logosGasolineras/logoDefault.png', 'E.S. BENETUSER', 'AVENIDA CAMI NOU, 110', 7019, 39.421389, -0.396389, 1.328, 1.498, 1.178, 0, 'L-D: 06:00-22:00'),
(94, 'logosGasolineras/logoDefault.png', 'BENIARJO', 'CARRETERA VP-1012 KM. 4,05', 7020, 38.934083, -0.183389, 1.279, 1.415, 1.139, 1.187, 'L-S: 06:00-21:30'),
(95, 'logosGasolineras/logoGalp.png', 'GALP', 'CARRETERA CV-42 KM. 14,50', 7024, 39.280639, -0.415028, 0, 0, 1.189, 0, 'L-D: 24H'),
(96, 'logosGasolineras/logoBP.png', 'BP', 'CALLE ALMUSSAFES, 15', 7024, 39.288806, -0.420694, 1.429, 1.571, 1.239, 1.329, 'L-D: 06:00-23:00'),
(97, 'logosGasolineras/logoDefault.png', 'MUZA', 'AV JAIME I  S/N', 7024, 39.288, -0.432, 1.349, 0, 1.169, 1.279, 'L-S: 06:00-22:00'),
(98, 'logosGasolineras/logoGalp.png', 'GALP', 'CARRETERA CV 40 KM. 36,35', 7024, 39.280444, -0.415306, 1.429, 0, 1.239, 1.309, 'L-D: 06:00-22:00'),
(99, 'logosGasolineras/logoDefault.png', 'FONT DE MUSSA', 'CARRETERA CRTA CV 520 KM. 0.36 KM. 0,36', 7024, 39.288778, -0.450278, 1.349, 1.429, 1.169, 1.279, 'L-D: 06:00-22:00'),
(100, 'logosGasolineras/logoDefault.png', 'SAT BEATA INES', 'AVENIDA ALBAIDA, S/N', 7028, 38.940389, -0.445306, 1.197, 0, 1.039, 0, 'L-D: 24H'),
(101, 'logosGasolineras/logoCampsa.png', 'CAMPSA EXPRESS', 'CARRETERA VP-1022 KM. 2,2', 7028, 38.952, -0.439556, 1.269, 1.379, 1.109, 1.159, 'L-D: 24H'),
(102, 'logosGasolineras/logoGasolben.png', 'GASOLBEN', 'CALLE CREMADES, 17', 7028, 38.938861, -0.447, 0, 0, 0, 1.269, 'L-D: 24H'),
(103, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA REAL DE MADRID SUR KM. 18', 7031, 39.378389, -0.414056, 1.409, 1.539, 1.259, 1.329, 'L: 06:00-22:00'),
(104, 'logosGasolineras/logoShell.png', 'SHELL', 'CARRETERA V: 302 KM. 233,84', 7031, 39.386694, -0.410583, 1.419, 1.559, 1.239, 1.319, 'L-S: 05:00-23:00'),
(105, 'logosGasolineras/logoDefault.png', 'MULTIMARCA COMBUSTIBLES', 'CARRETERA VALENCIA - ADEMUZ KM. 22', 7033, 39.611222, -0.572583, 1.259, 0, 1.129, 1.159, 'L-D: 24H'),
(106, 'logosGasolineras/logoDefault.png', 'COOPERATIVA DE BENISANO', 'POLIGONO ELS PEDREGALS, S/N', 7033, 39.60875, -0.575583, 1.219, 0, 1.075, 0, 'L-D: 24H'),
(107, 'logosGasolineras/logoBP.png', 'BP BETERA', 'CARRETERA CV-336 KM. 4', 7036, 39.584833, -0.468861, 1.429, 1.571, 1.219, 1.309, 'L-D: 06:00-22:00'),
(108, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CARRETERA BURJASOT-TORRES TORRES KM. 10,4', 7036, 39.587722, -0.450056, 1.367, 1.504, 1.229, 1.295, 'L-D: 06:00-22:00'),
(109, 'logosGasolineras/logoGasexpress.png', 'GASEXPRESS', 'CALLE TITETA, 1', 7036, 39.574389, -0.484083, 1.299, 0, 1.139, 0, 'L-D: 24H'),
(110, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CARRETERA CV-81 KM. 14,3', 7038, 38.761667, -0.612972, 1.399, 0, 1.249, 1.319, 'L-D: 06:00-22:00'),
(111, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AT A-3, 322', 7043, 39.444778, -0.754528, 1.439, 1.549, 1.269, 1.319, 'L-D: 06:00-22:00'),
(112, 'logosGasolineras/logoBenzina.png', 'BENZINA', 'CALLE ISLAS BALEARES, 2', 7043, 39.429056, -0.781944, 1.279, 0, 1.145, 0, 'L-D: 24H'),
(113, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA VV-2041 KM. 0,80', 7047, 38.975861, -0.578806, 1.389, 0, 1.209, 1.259, 'L-D: 07:00-21:00'),
(114, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CL AVDA. CORTES VALENCIANAS, S.N.', 7047, 38.959, -0.588222, 1.389, 1.499, 1.209, 1.259, 'L-D: 07:00-21:00'),
(115, 'logosGasolineras/logoDefault.png', 'BDMED', 'AV JAIME I 6', 7048, 39.679778, -0.207611, 1.259, 0, 1.149, 0, 'L-D: 07:00-22:00'),
(116, 'logosGasolineras/logoAvia.png', 'AVIA', 'AVENIDA DEL MEDITERRANEO, S/N', 7048, 39.678972, -0.216972, 1.389, 1.531, 1.209, 1.299, 'L-D: 06:00-00:00'),
(117, 'logosGasolineras/logoAgricar.png', ' AGRICAR', 'CALLE EMILIO DONAT, S/N', 7049, 39.115528, -0.455028, 1.255, 0, 1.095, 0, 'L-D: 24H'),
(118, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE VICTOR OROVAL I TOMAS, 7', 7049, 39.127056, -0.442472, 1.189, 0, 0.997, 0, 'L-D: 24H'),
(119, 'logosGasolineras/logoPetroprix.png', 'PETROPRIX', 'CARRETERA ALZIRA-CARCAIXENT CV-41 KM. 1,930', 7049, 39.130389, -0.448944, 1.199, 0, 1.007, 0, 'L-D: 24H'),
(120, 'logosGasolineras/logoDefault.png', 'VALCARCE', 'CALLE TRAMUNTANA, 11', 7051, 39.233472, -0.489417, 0, 0, 1.259, 0, 'L-D: 06:00-02:00'),
(121, 'logosGasolineras/logoDefault.png', 'VCC CARLET', 'CARRETERA CREU NEGRA KM. 3', 7051, 39.234889, -0.493278, 1.246, 0, 1.077, 0, 'L-D: 24H'),
(122, 'logosGasolineras/logoDefault.png', 'COOPCARLET', 'CARRETERA CREU NEGRA KM. 10', 7051, 39.228, -0.512806, 1.245, 1.275, 1.095, 1.12, 'L-D: 06:00-22:00'),
(123, 'logosGasolineras/logoDefault.png', 'E.S. LA PONDEROSA', 'CARRETERA CRUZ NEGRA S/N KM. 0', 7051, 39.228, -0.514278, 1.265, 1.329, 1.095, 1.169, 'L-D: 06:00-22:00'),
(124, 'logosGasolineras/logoGalp.png', 'GALP', 'N-340 P.I. La Reina km 875,700', 7051, 39.227528, -0.487639, 1.379, 1.519, 0, 0, 'L-D: 24H'),
(125, 'logosGasolineras/logoCampsa.png', 'CAMPSA EXPRESS', 'CARRETERA CREU NEGRA KM. 8,000', 7051, 39.227611, -0.514306, 1.265, 0, 1.099, 0, 'L-D: 24H'),
(126, 'logosGasolineras/logoDefault.png', 'COOPERATIVA AGRICOLA DE CASINOS', 'CL PELAYO Nº8', 7055, 39.7005, -0.710722, 0, 0, 1.098, 0, 'L-D: 24H'),
(127, 'logosGasolineras/logoBP.png', ' BP BENICADELL', 'CL  CAÑI REAL 83', 7056, 38.874139, -0.376333, 1.405, 1.539, 1.239, 1.329, 'L-D: 06:00-22:00'),
(128, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CR N-330, 272', 7058, 40.127028, -1.249028, 1.395, 0, 1.205, 1.255, 'L-D: 08:00-20:00'),
(129, 'logosGasolineras/logoCampsa.png', 'E.S.SANTA BARBARA CAMPSA', 'CARRETERA TAVERNES LLIRIA KM.40 KM. ', 7059, 39.272056, -0.57425, 1.379, 1.395, 1.209, 1.269, 'L-D: 24H'),
(130, 'logosGasolineras/logoDefault.png', 'ESTACIO DE SERVICI EL REGAIXO', 'CARRETERA CV-5202 KM. 1', 7059, 39.279111, -0.567194, 1.281, 0, 1.213, 1.255, 'L-D: 24H'),
(131, 'logosGasolineras/logoDefault.png', 'BDMED', 'CAMINO VIEJO DE RUZAFA, 418', 7060, 39.395306, -0.399694, 1.249, 0, 1.109, 0, 'L-D: 24H'),
(132, 'logosGasolineras/logoBP.png', 'BP VILLANUEVA', 'AUTOPISTA V31 KM. 253', 7060, 39.397083, -0.389861, 1.389, 1.549, 1.219, 1.319, 'L-D: 24H'),
(133, 'logosGasolineras/logoBiomar.png', 'BIOMAR OIL', 'RONDA NORTE INDUSTRIAL, 212', 7060, 39.402556, -0.392528, 1.266, 0, 1.126, 1.106, 'L-D: 06:00-22:00'),
(134, 'logosGasolineras/logoBiomar.png', 'BIOMAR OIL', 'AVENIDA RAMON Y CAJAL,97, ', 7060, 39.407917, -0.401806, 1.266, 1.356, 1.126, 1.106, 'L-D: 24H'),
(135, 'logosGasolineras/logoDefault.png', 'VCC CATARROJA ', 'CALLE CAMI DEL PORT, 201', 7060, 39.398333, -0.394389, 1.237, 0, 1.077, 0, 'L-D: 24H'),
(136, 'logosGasolineras/logoDefault.png', 'STAROIL', 'AUTOVIA A-3 KM. 270', 7061, 39.550083, -1.283556, 1.398, 1.499, 1.228, 1.298, 'L-D: 24H'),
(137, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CR  A-3 P.K. 266,1 M.D.', 7061, 39.539694, -1.311667, 1.435, 0, 1.279, 1.369, 'L-D: 24H'),
(138, 'logosGasolineras/logoDefault.png', 'HNOS. FRIGOLS LILA, S.L.', 'CR CV-580. P.KM.4.300 (CV-580 km 4,3)', 7063, 39.031444, -0.65575, 1.369, 1.479, 1.229, 1.269, 'L-D: 06:00-22:00'),
(139, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA CV-35 KM. 67,5', 7064, 39.749694, -0.992167, 1.369, 1.459, 1.209, 1.259, 'L-D: 24H'),
(140, 'logosGasolineras/logoDefault.png', 'CHESTE AGRARIA COOP.V.', 'PARTIDA EL BUITRIN, 11', 7066, 39.488861, -0.687056, 1.26, 1.32, 1.13, 1.17, 'L-D: 06:00-22:00'),
(141, 'logosGasolineras/logoGalp.png', 'GALP', 'CARRETERA CARRETERA N III KM. 322,2', 7067, 39.4745, -0.613222, 0, 1.559, 1.279, 1.349, 'L-D: 06:00-22:00'),
(142, 'logosGasolineras/logoBP.png', 'BP CHIVA', 'CALLE PROYECTO, 4', 7067, 39.469889, -0.7085, 1.429, 1.571, 1.249, 1.339, 'L-D: 06:00-22:00'),
(143, 'logosGasolineras/logoExoil.png', 'EXOIL CHIVA', 'CALLE RAMON Y CAJAL, 53', 7067, 39.466722, -0.723806, 1.349, 0, 1.189, 0, 'L-D: 06:00-22:00'),
(144, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AT A-3, 337', 7067, 39.475222, -0.588833, 1.439, 1.559, 1.279, 1.369, 'L-D: 24H'),
(145, 'logosGasolineras/logoGalp.png', 'GALP', 'CAMINO REAL, 16', 7067, 39.472444, -0.644833, 1.439, 1.559, 1.279, 1.349, 'L-D: 06:00-22:00'),
(146, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA VALENCIA-GODELLETA KM. 4,1', 7067, 39.445917, -0.61075, 1.439, 1.589, 1.249, 1.299, 'L-D: 06:00-22:00'),
(147, 'logosGasolineras/logoDefault.png', 'LA UNION CHIVANA', 'PLAZA ANICETO BLASCO, S/N', 7067, 39.472056, -0.722583, 1.26, 0, 1.19, 0, 'L-D: 24H'),
(148, 'logosGasolineras/logoDefault.png', 'COOPERATIVA AGRICOLA SANTA BARBARA', 'AVENIDA BALNEARIO, S/N', 7068, 39.647194, -0.885389, 1.229, 0, 1.109, 0, 'L-D: 24H'),
(149, 'logosGasolineras/logoDefault.png', 'COOPERATIVA DE CORBERA', 'POLIGONO GREGAL, 13', 7070, 39.155972, -0.342917, 1.288, 0, 1.148, 0, 'L-D: 06:00-22:00'),
(150, 'logosGasolineras/logoDefault.png', 'SAN ISIDRO COOP. V.', 'AVENIDA DR. SANCHEZ URZAIS, 28', 7071, 39.242278, -0.938861, 1.149, 0, 1.047, 0, 'L-D: 24H'),
(151, 'logosGasolineras/logoDefault.png', 'PEGASOLINA STAR', 'CALLE AR PRM-3C/TERCIARIO, 14', 7073, 39.176389, -0.262583, 1.289, 0, 1.139, 0, 'L-D: 24H'),
(152, 'logosGasolineras/logoCarrefour.png', 'CARREFOUR', 'CARRETERA CULLERA SUECA KM. 1', 7073, 39.178167, -0.261583, 1.349, 1.519, 1.199, 1.229, 'L-D: 24H'),
(153, 'logosGasolineras/logoGalp.png', 'GALP', 'CARRETERA N-332 KM. 246', 7073, 39.142806, -0.277556, 1.319, 0, 1.129, 1.219, 'L-D: 24H'),
(154, 'logosGasolineras/logoBP.png', 'BP', 'C/ SUECA, 34', 7073, 39.173056, -0.261361, 1.399, 1.541, 1.209, 1.299, 'L-D: 06:00-22:00'),
(155, 'logosGasolineras/logoGalp.png', 'GALP', 'CARRETERA N-332 KM. 246', 7073, 39.143528, -0.278194, 1.369, 0, 1.179, 1.269, 'L-D: 06:00-22:00'),
(156, 'logosGasolineras/logoDefault.png', 'STARMA', 'CL SUECA, 42 (N-332)', 7073, 39.174611, -0.2615, 1.349, 0, 1.189, 1.259, 'L-D: 06:00-22:00'),
(157, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE SUECA, 5', 7073, 39.167444, -0.258833, 1.399, 1.519, 1.209, 1.289, 'L-D: 06:00-22:00'),
(158, 'logosGasolineras/logoGasexpress.png', 'GASEXPRESS', 'CALLE TURIA DEL, 2', 7073, 39.177833, -0.261639, 1.289, 0, 1.139, 0, 'L-D: 24H'),
(159, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRER CORBERA, S/N', 7073, 39.156111, -0.254167, 1.415, 1.565, 1.209, 1.299, 'L-D: 06:00-22:00'),
(160, 'logosGasolineras/logoDefault.png', 'E.S. DAIMUS', 'CARRETERA CALLE OLIVA KM. 2', 7074, 38.970556, -0.157222, 1.419, 1.539, 1.249, 0, 'L-D: 06:00-22:00'),
(161, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE CAMP.DEL TURIA, S/N', 7077, 39.572278, -0.52025, 1.445, 1.585, 1.259, 1.349, 'L-D: 06:30-22:30'),
(162, 'logosGasolineras/logoPlenoil.png', 'PLENOIL', 'CARRETERA DE RIBARROJA KM. 55', 7077, 39.5565, -0.513472, 1.197, 0, 1.067, 0, 'L-D: 24H'),
(163, 'logosGasolineras/logoGasexpress.png', 'GASEXPRESS', 'CALLE TUEJAR, S/N', 7077, 39.574583, -0.520444, 1.239, 0, 1.109, 0, 'L-D: 24H'),
(164, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CR VV-6104, 6', 7077, 39.559222, -0.505333, 1.425, 1.535, 1.209, 1.299, 'L-D: 24H'),
(165, 'logosGasolineras/logoDefault.png', 'OPTYME SELF SYSTEM', 'CALLE TUEJAR, 22', 7077, 39.576306, -0.523972, 1.239, 0, 1.109, 0, 'L-D: 24H'),
(166, 'logosGasolineras/logoBP.png', 'BP VEGA JUNCAL', 'CARRETERA RIBARROJA-S.ANTONIO BENAGEBVER KM. 6', 7077, 39.556639, -0.512917, 1.429, 1.571, 1.219, 1.309, 'L-D: 06:00-22:00'),
(167, 'logosGasolineras/logoCarrefour.png', 'CARREFOUR', 'CALLE TUEJAR, 39', 7077, 39.576917, -0.530861, 1.319, 1.519, 1.189, 1.219, 'L-D: 24H'),
(168, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA CONSTITUCION, 20', 7079, 38.982, -0.687639, 1.379, 0, 1.229, 1.289, 'L-D: 06:00-22:00'),
(169, 'logosGasolineras/logoDefault.png', 'CAMPOENGUERA COOP V', 'AVENIDA DIPUTACION, S/N', 7079, 38.978417, -0.690694, 1.235, 0, 1.108, 0, 'L-D: 06:00-22:00'),
(170, 'logosGasolineras/logoDefault.png', 'PETROMAR', 'CALLE HUGO BACHARACH, 10', 7085, 39.536472, -0.353389, 1.309, 1.469, 1.169, 1.229, 'L-D: 06:00-22:00'),
(171, 'logosGasolineras/logoBuranEnergy.png', 'BURAN ENERGY', 'AVENIDA DEL CID, 10', 7085, 39.539194, -0.349, 1.269, 0, 1.109, 0, 'L-V: 06:00-22:00'),
(172, 'logosGasolineras/logoBP.png', 'BP A35 FUENTE LA HIGUERA', 'AUTOVIA A-35 KM. 14,1', 7086, 38.837528, -0.856583, 1.409, 1.551, 1.269, 1.359, 'L-D: 24H'),
(173, 'logosGasolineras/logoGalp.png', 'GALP ', 'AUTOVIA A35 KM. 11,000', 7086, 38.827139, -0.890667, 1.349, 1.449, 1.249, 0, 'L-D: 24H'),
(174, 'logosGasolineras/logoGalp.png', 'GALP', 'AUTOVIA A-35 KM. 11,000', 7086, 38.827917, -0.890583, 1.349, 1.449, 1.249, 0, 'L-D: 24H'),
(175, 'logosGasolineras/logoDefault.png', 'COOP LA VIÑA', 'CALLE BARRANCO, S/N', 7086, 38.809417, -0.883778, 1.299, 0, 1.169, 0, 'L-D: 24H'),
(176, 'logosGasolineras/logoDefault.png', 'LIBRE', 'ZONA PARCELA 95, POLIGONO 2, SN', 7087, 38.919306, -0.167611, 1.304, 1.399, 1.155, 1.197, 'L-D: 06:00-22:00'),
(177, 'logosGasolineras/logoDefault.png', 'GRUPO CIRUGEDA COLOM SL ', 'CV660 km 8', 7088, 38.779222, -0.801361, 1.199, 0, 1.079, 0, 'L-D: 24H'),
(178, 'logosGasolineras/logoDefault.png', '(SIN RÓTULO)', 'CALLE PATROCINIO, 27', 7090, 39.583417, -1.363111, 1.439, 0, 1.269, 0, 'L-D: 24H'),
(179, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AVENIDA ALCODAR, SN', 7091, 38.983611, -0.185583, 1.409, 1.541, 1.244, 1.319, 'L-D: 06:00-22:00'),
(180, 'logosGasolineras/logoGalp.png', 'GALP', 'CALLE TETUAN, S/N', 7091, 38.960667, -0.177556, 1.349, 0, 1.179, 1.239, 'L-D: 06:00-22:00'),
(181, 'logosGasolineras/logoCarrefour.png', 'CARREFOUR', 'CARRETERA DE DAIMUZ S/N KM. ', 7091, 38.970611, -0.16925, 1.349, 1.489, 1.149, 1.179, 'L-D: 24H'),
(182, 'logosGasolineras/logoDefault.png', 'VCC GANDIA', 'AVENIDA DE LES PLATJETES, 1', 7091, 38.984, -0.164278, 1.222, 0, 1.089, 0, 'L-D: 24H'),
(183, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CTRA. DE ALICANTE, 109 (N-332 km 221,6)', 7091, 38.964167, -0.173972, 1.349, 1.481, 1.184, 1.259, 'L-D: 06:00-22:00'),
(184, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVINGUDA LA VALL D\'ALBAIDA, 55', 7091, 38.957556, -0.189333, 1.419, 1.529, 1.239, 1.329, 'L-D: 24H'),
(185, 'logosGasolineras/logoDefault.png', 'GASOLWIN', 'AVENIDA ALACANT, 126', 7091, 38.962278, -0.173056, 1.209, 0, 0.999, 0, 'L-D: 24H'),
(186, 'logosGasolineras/logoDefault.png', 'SAFOROIL', 'AVENIDA BENIETO DE, 8', 7091, 38.958167, -0.171111, 1.229, 0, 1.069, 0, 'L-D: 24H'),
(187, 'logosGasolineras/logoDefault.png', 'AUTONET&OIL', 'CAMINO VELL DE DAIMUS, 12', 7091, 38.96975, -0.169333, 1.269, 0, 1.029, 1.051, 'L-D: 24H'),
(188, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CAMINO VELL DE DAIMUS, 1', 7091, 38.965778, -0.174278, 1.279, 0, 0.997, 0, 'L-D: 24H'),
(189, 'logosGasolineras/logoDefault.png', 'MOSCARDÓ', ' AVENIDA DEL GRAO, 164, ', 7091, 38.989389, -0.161917, 1.419, 1.539, 1.249, 1.339, 'L-D: 07:00-20:00'),
(190, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CR VP-1056, 7', 7091, 38.995833, -0.166778, 1.419, 1.529, 1.239, 1.329, 'L-D: 06:00-22:00'),
(191, 'logosGasolineras/logoBP.png', 'BP GRAU ', 'AVENIDA DEL GRAU S/N, S/N', 7091, 38.984139, -0.164194, 1.419, 1.569, 1.249, 1.339, 'L: 24H'),
(192, 'logosGasolineras/logoDefault.png', 'GASOLWIN', 'POLIGONO POLIGONO INDUSTRIAL, S/N', 7094, 38.987667, -0.473194, 1.189, 0, 1.035, 0, 'L-D: 24H'),
(193, 'logosGasolineras/logoShell.png', 'SHELL', 'CALLE FUSTERS, 26', 7097, 39.526722, -0.412361, 1.415, 1.555, 1.205, 1.285, 'L-D: 06:00-00:00'),
(194, 'logosGasolineras/logoBP.png', 'BP OIL GODELLA', 'CAMINO CAMARENA PARALELA, 1', 7097, 39.525028, -0.424667, 1.415, 1.557, 1.236, 1.325, 'L-D: 07:00-22:00'),
(195, 'logosGasolineras/logoDefault.png', 'V.C.', 'AVENIDA ESCULTOR ANDRE ALFARO, 2', 7097, 39.526139, -0.415361, 1.279, 0, 1.139, 0, 'L-D: 24H'),
(196, 'logosGasolineras/logoDefault.png', '(SIN RÓTULO)', 'CAMINO CHIVA, S/N', 7098, 39.427556, -0.682944, 1.28, 0, 1.13, 0, 'L-D: 24H'),
(197, 'logosGasolineras/logoDefault.png', 'SERVICOOP +', 'AVENIDA DE LA DIPUTACIÓN, 2, ', 7101, 39.18775, -0.485028, 1.239, 0, 1.089, 0, 'L-D: 24H'),
(198, 'logosGasolineras/logoDefault.png', 'SERVICOOP', 'CALLE TABERNES-CHIVA, 13', 7101, 39.180833, -0.476389, 1.239, 0, 1.089, 0, 'L-D: 24H'),
(199, 'logosGasolineras/logoDefault.png', 'EL VALLE', 'POLIGONO POLIGONO INDUSTRIAL EL CERRO, 1', 7104, 39.186194, -1.076917, 1.288, 1.368, 1.139, 1.199, 'L-D: 06:00-22:00'),
(200, 'logosGasolineras/logoDefault.png', 'ATUNOIL', 'CALLE UE SECTOR ST-1, 13', 7108, 39.620639, -0.585806, 1.248, 0, 1.088, 0, 'L-D: 24H'),
(201, 'logosGasolineras/logoDefault.png', 'E.S. MONTECOLLADO S.L.', 'CARRETERA VALENCIA-ADEMUZ KM. 26,200', 7108, 39.633528, -0.610972, 1.247, 0, 1.087, 0, 'L-D: 24H'),
(202, 'logosGasolineras/logoGalp.png', 'GALP', 'AUTOVIA CV35 KM. 32,5', 7108, 39.656361, -0.650806, 1.419, 0, 1.239, 1.309, 'L-D: 06:00-22:00'),
(203, 'logosGasolineras/logoGalp.png', 'GALP', 'AUTOVIA CV35 KM. 32,5', 7108, 39.656917, -0.650361, 1.419, 0, 1.239, 1.309, 'L-D: 24H'),
(204, 'logosGasolineras/logoDefault.png', 'COOPERATIVA DE LLIRIA', 'CARRETERA ALCUBLAS , KM 2.6', 7108, 39.649, -0.608111, 1.245, 0, 1.124, 0, 'L-D: 24H'),
(205, 'logosGasolineras/logoDefault.png', 'EDETAGAS', 'CALLE VALENCIA, ', 7108, 39.621806, -0.588444, 1.259, 1.429, 1.119, 1.199, 'L-D: 24H'),
(206, 'logosGasolineras/logoPetronor.png', 'PETRONOR', 'CALLE DUQUE DE LIRIA, 132', 7108, 39.630167, -0.602528, 1.415, 1.525, 1.239, 1.319, 'L-D: 06:00-22:00'),
(207, 'logosGasolineras/logoDefault.png', 'BENZINERA VIDAGANY', 'POLIGONO PLA DE RASCANYA, 12', 7108, 39.635722, -0.586944, 1.249, 0, 1.089, 0, 'L-D: 24H'),
(208, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA VALENCIA-ADEMUZ KM. 23,3', 7108, 39.61975, -0.585361, 1.415, 0, 1.239, 1.319, 'L-D: 24H'),
(209, 'logosGasolineras/logoBP.png', 'BP', 'AUTOVIA CV-60 KM. 25,5', 7110, 38.909667, -0.302778, 1.405, 1.539, 1.239, 1.329, 'D: 07:00-21:00'),
(210, 'logosGasolineras/logoPetromax.png', 'PETROMAX', 'CARRETERA ROTGLA KM. S/N', 7113, 39.017167, -0.542056, 1.269, 1.419, 1.109, 1.209, 'L-D: 06:00-22:00'),
(211, 'logosGasolineras/logoDefault.png', 'HAM', 'AVENIDA DELS FUSTERS, 42', 7115, 39.481056, -0.5665, 0, 0, 0, 0, 'L-D: 24H'),
(212, 'logosGasolineras/logoDefault.png', 'GRUPO LARATRANS', 'CAMI MASIA DEL CONDE, S/N', 7115, 39.494306, -0.5635, 1.32, 0, 1.217, 0, 'L-D: 24H'),
(213, 'logosGasolineras/logoDefault.png', 'PLUS-24', 'POLIGONO FINCA EQ SECTOR, 9', 7115, 39.494306, -0.563472, 1.349, 0, 1.249, 0, 'L-D: 24H'),
(214, 'logosGasolineras/logoDefault.png', 'BÚHO GAS', 'CARRER DEL MAESTRAT, 7', 7118, 39.500194, -0.495889, 1.209, 0, 1.069, 0, 'L-D: 24H'),
(215, 'logosGasolineras/logoPetroprix.png', 'PETROPRIX', 'AVENIDA MAS DE L\'OLI, 8', 7118, 39.496444, -0.47825, 1.259, 0, 1.119, 0, 'L-D: 24H'),
(216, 'logosGasolineras/logoExoil.png', 'EXOIL MANISES', 'AVENIDA MAS DEL OLI, 62', 7118, 39.498167, -0.485056, 1.349, 1.449, 1.189, 0, 'L-D: 06:00-22:00'),
(217, 'logosGasolineras/logoBP.png', 'BP', 'AVINGUDA MAS DEL OLI, 180', 7118, 39.505111, -0.500194, 1.429, 1.579, 1.259, 1.349, 'L-D: 06:00-22:00'),
(218, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA MANISES RIBARROJA KM. 6,7', 7118, 39.51125, -0.51475, 1.425, 1.555, 1.259, 1.309, 'L-S: 07:00-21:00'),
(219, 'logosGasolineras/logoPetromax.png', 'PETROMAX', 'CARRETERA LLIRIA-OLOCAU, KM 6 KM. 6', 7120, 39.673722, -0.559417, 1.259, 1.459, 1.109, 1.179, 'L: 06:00-22:00'),
(220, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AUTOPISTA A-7 KM. 659,8', 7121, 39.154583, -0.529361, 1.409, 1.549, 1.269, 1.359, 'L-D: 24H'),
(221, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AUTOPISTA A-7 KM. 659,8', 7121, 39.153972, -0.527806, 1.409, 1.549, 1.269, 1.359, 'L-D: 24H'),
(222, 'logosGasolineras/logoDefault.png', 'RIBERCOST', 'N-340 km 867.50000', 7121, 39.162806, -0.518806, 1.25, 0, 1.135, 0, 'L-D: 24H'),
(223, 'logosGasolineras/logoCarrefour.png', 'CARREFOUR', 'CARRETERA DE GOMBALDA, CV32 KM. 0,5', 7122, 39.553583, -0.303722, 1.349, 0, 1.189, 1.219, 'L-D: 24H'),
(224, 'logosGasolineras/logoDefault.png', 'HAM', 'CALLE CID, 1', 7122, 39.548583, -0.305028, 0, 0, 0, 0, 'L-D: 24H'),
(225, 'logosGasolineras/logoShell.png', 'SHELL', 'CARRETERA GOMBALDA KM. S/N', 7122, 39.552444, -0.29925, 1.389, 0, 1.229, 1.309, 'L-D: 06:00-22:00'),
(226, 'logosGasolineras/logoPetromax.png', 'PETROMAX LEVANTE', 'CALLE MITGERA, 1', 7122, 39.549583, -0.306389, 1.249, 1.389, 1.109, 1.159, 'L-D: 06:00-22:00'),
(227, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE CAMINO LLARI, S/N', 7123, 39.57425, -0.327778, 1.379, 1.519, 1.209, 1.269, 'L-S: 07:00-22:00'),
(228, 'logosGasolineras/logoDefault.png', 'COOP.+SAN+PEDRO', 'CALLE SEQUIA, SEGON BRAC PARCELA, 52', 7124, 39.410444, -0.388, 1.218, 1.318, 1.078, 0, 'L-D: 24H'),
(229, 'logosGasolineras/logoDefault.png', 'LOW GAS PLUS', 'CARRER CAMI VELL DE L\'AZAGADOR, 54', 7124, 39.409556, -0.385306, 1.185, 0, 0.989, 0, 'L-D: 24H'),
(230, 'logosGasolineras/logoDefault.png', 'BDMED', 'AVENIDA GENERALITAT VALENCIANA, 14', 7124, 39.412861, -0.387111, 1.249, 0, 1.109, 0, 'L-D: 24H'),
(231, 'logosGasolineras/logoBP.png', 'BP CARY 1', 'AVENIDA PISTA LA, 2', 7124, 39.409944, -0.381306, 1.409, 1.551, 1.239, 1.329, 'L-D: 24H'),
(232, 'logosGasolineras/logoBP.png', 'BP CARY II', 'AUTOVIA CV-31 KM. 9', 7124, 39.409944, -0.380306, 1.419, 1.561, 1.249, 1.339, 'L-D: 24H'),
(233, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE POLIESPORTIU, 5', 7124, 39.410306, -0.390722, 1.227, 0, 1.057, 0, 'L-D: 24H'),
(234, 'logosGasolineras/logoDefault.png', 'AGRICOLA SAN ISIDRO', 'CAMINO CEMENTERIO, S/N', 7125, 39.524167, -0.350417, 1.299, 0, 1.139, 0, 'L-D: 06:00-22:00'),
(235, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE SAN ANTONIO, 14', 7128, 39.474278, -0.412528, 1.409, 0, 1.219, 1.299, 'L-D: 06:00-22:00'),
(236, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE DOCTOR MORA SANZ, 1', 7128, 39.472083, -0.429722, 1.439, 1.559, 1.279, 1.369, 'L-D: 06:00-22:00'),
(237, 'logosGasolineras/logoDefault.png', 'AUROSERVICIO CIRUGEDA 24 H', 'AVENIDA HIJAS DE LA CARIDAD, 69', 7129, 38.87375, -0.765, 1.219, 0, 1.089, 0, 'L-D: 24H'),
(238, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA N-430 KM. 625', 7129, 38.878611, -0.754167, 1.399, 1.509, 1.209, 1.259, 'L-D: 06:30-21:30'),
(239, 'logosGasolineras/logoDefault.png', 'TRANSFRIGO PACO BALLESTER SL', 'CALLE QUINS, 1', 7130, 39.583806, -0.391194, 0, 0, 1.07, 0, 'L: 24H'),
(240, 'logosGasolineras/logoDefault.png', 'E.S.METROARTE MONCADA', 'CALLE QUART, 72', 7130, 39.551389, -0.392361, 1.259, 0, 1.119, 0, 'L-D: 24H'),
(241, 'logosGasolineras/logoDefault.png', 'BON SERVICI', 'CARRETERA VP-405  KILOMETRO 10,10 KM. 10,10', 7135, 39.348278, -0.611194, 1.309, 0, 1.139, 1.239, 'L-D: 07:00-22:00'),
(242, 'logosGasolineras/logoBP.png', 'BP CHASAN CAMPOS MONTSERRAT', 'AVENIDA BLASCO IBAÑEZ, 75', 7135, 39.358556, -0.594389, 1.369, 1.449, 1.199, 1.299, 'L-D: 24H'),
(243, 'logosGasolineras/logoBuranEnergy.png', 'COARVAL CARBURANTS', 'CAMINO COLATA, S/N', 7131, 38.891083, -0.494361, 1.289, 0, 1.149, 0, 'L-D: 06:00-22:00'),
(244, 'logosGasolineras/logoDefault.png', 'RED OIL', 'CAMI REIAL DE GANDIA, S/N', 7131, 38.893944, -0.47775, 1.379, 1.479, 1.239, 1.359, 'L-D: 24H'),
(245, 'logosGasolineras/logoShell.png', 'SHELL', 'A-35 km 39', 7132, 38.954306, -0.629028, 1.399, 0, 1.269, 1.349, 'L-D: 07:00-23:00'),
(246, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA N-430 KM. 630,8', 7132, 38.929444, -0.662611, 1.409, 0, 1.269, 1.349, 'L-D: 06:00-22:00'),
(247, 'logosGasolineras/logoDefault.png', 'CENTRE LA ALQUERIA', 'CARRETERA MONSERRAT-MONTROY CV-405 KM. 1,8', 7134, 39.3425, -0.611806, 1.309, 0, 1.139, 1.239, 'L-D: 06:00-22:00'),
(248, 'logosGasolineras/logoDefault.png', 'SLH LOW-COST MUSEROS', 'AVENIDA BARCELONA, 49', 7136, 39.558778, -0.337833, 1.239, 0, 0, 1.079, 'L-D: 24H'),
(249, 'logosGasolineras/logoDefault.png', 'AUTOIL LOW COST MUSEROS', 'AVENIDA CONSTITUCIO, 36', 7136, 39.56025, -0.333778, 1.249, 0, 1.089, 0, 'L-D: 24H'),
(250, 'logosGasolineras/logoRepsol.png', 'SLH-REPSOL-MUSEROS', 'AVENIDA BARCELONA, 49', 7136, 39.558389, -0.338083, 1.379, 0, 1.209, 1.269, 'L-D: 24H'),
(251, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'POLIGONO POL.IND. LA LLOMA S/N, S/N', 7137, 39.647194, -0.429306, 1.419, 1.569, 1.219, 1.299, 'L-D: 06:00-22:00'),
(252, 'logosGasolineras/logoDefault.png', 'GASOLWIN', 'CALLE BOREAS, 1', 7137, 39.600333, -0.398722, 1.179, 0, 1.039, 0, 'L-D: 24H'),
(253, 'logosGasolineras/logoDefault.png', 'ROS', 'CARRETERA V-580 KM. 13', 7138, 39.101361, -0.695528, 1.339, 1.449, 1.199, 1.239, 'L-D: 06:00-22:00'),
(254, 'logosGasolineras/logoBP.png', 'BP', 'CARRETERA VV-2081 KM. 1,62', 7139, 38.977694, -0.552667, 1.399, 0, 1.239, 1.299, 'L-D: 06:00-22:00'),
(255, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA N-332 KM. 182,1', 7140, 38.895194, -0.072694, 1.389, 1.519, 1.209, 1.259, 'L-D: 06:00-22:00'),
(256, 'logosGasolineras/logoGalp.png', 'GALP', 'CARRETERA N-332 KM. 191', 7140, 38.922778, -0.124667, 1.389, 0, 1.209, 1.279, 'L-D: 07:00-22:00'),
(257, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA N-332 KM. 182,1', 7140, 38.895194, -0.072722, 1.389, 1.519, 1.209, 1.259, 'L-D: 07:00-21:00'),
(258, 'logosGasolineras/logoGalp.png', 'GALP', 'CARRETERA N-332 KM. 193', 7140, 38.913111, -0.111806, 1.389, 1.499, 1.209, 1.279, 'L-D: 24H'),
(259, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA V-40 KM. 14', 7141, 38.88525, -0.576583, 1.395, 1.505, 1.279, 1.329, 'L-D: 06:00-22:00'),
(260, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA DIPUTACION, 2', 7141, 38.915667, -0.556944, 1.415, 1.525, 1.209, 1.259, 'L-D: 07:00-22:00'),
(261, 'logosGasolineras/logoDefault.png', 'LILA ENERGY', 'CALLE RAVALET-CHAFLAN AV.DIPUTACION, ', 7141, 38.909222, -0.542833, 1.299, 1.459, 1.129, 1.149, 'L-D: 24H'),
(262, 'logosGasolineras/logoDefault.png', 'MAS DEL PI', 'POLIGONO EL CARRASCOT, S/N', 7141, 38.905778, -0.530222, 1.253, 0, 0, 1.103, 'L-D: 24H'),
(263, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA TEXTIL, 42', 7143, 38.827194, -0.588056, 1.445, 1.595, 1.269, 1.319, 'L-D: 06:00-22:00'),
(264, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AVENIDA DEL TEXTIL, S/N', 7143, 38.827194, -0.607, 1.439, 1.579, 1.259, 1.329, 'L-D: 06:00-22:00'),
(265, 'logosGasolineras/logoGalp.png', 'GALP', 'AVENIDA RAMON Y CAJAL, 88', 7143, 38.825778, -0.5955, 1.424, 1.579, 1.244, 1.274, 'L-D: 06:00-22:00'),
(266, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA VALENCIA, 3', 7143, 38.828, -0.605667, 1.445, 1.595, 1.269, 1.319, 'L-D: 05:00-23:00'),
(267, 'logosGasolineras/logoDefault.png', 'FAMILY ENERGY, S.L', 'AVENIDA TEXTIL DEL, 58', 7143, 38.829111, -0.582028, 1.199, 1.309, 0.979, 1.039, 'L-D: 24H'),
(268, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA ALMANSA, 25', 7143, 38.820861, -0.617083, 1.445, 1.595, 1.269, 1.319, 'L-D: 06:00-22:00'),
(269, 'logosGasolineras/logoDefault.png', 'VCC ONTINYENT', 'AVENIDA DEL TEXTIL, 79', 7143, 38.831194, -0.573444, 1.177, 0, 0.964, 0, 'L-D: 24H'),
(270, 'logosGasolineras/logoDefault.png', 'GASOLWIN', 'AVENIDA TEXTIL DEL, 78', 7143, 38.83025, -0.575694, 1.177, 0, 0.967, 0, 'L-D: 24H'),
(271, 'logosGasolineras/logoDefault.png', 'COOP V ONTENIENSE', 'AVENIDA ALMANSA, 17', 7143, 38.820944, -0.616111, 0, 0, 1.072, 0, 'L: 24H'),
(272, 'logosGasolineras/logoDefault.png', 'GASOLWIN', 'POLIGONO SECTOR CASA BALONES 1, 3', 7143, 38.809306, -0.609278, 1.177, 0, 0.967, 0, 'L-D: 24H'),
(273, 'logosGasolineras/logoDefault.png', 'COOP. LLUTXENT-OTOS', 'CALLE SAN ROQUE, 29', 7144, 38.855583, -0.445667, 1.329, 0, 1.164, 0, 'L-D: 06:00-22:00'),
(274, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CARRETERA BENETÚSSER KM. 57', 7145, 39.426694, -0.404889, 1.279, 0, 1.139, 0, 'L-D: 24H'),
(275, 'logosGasolineras/logoBP.png', 'BP ALFAFAR COTELES', 'VÍA PARTIDA DEL DE OŽCOTELES PLG.5, 5', 7145, 39.418556, -0.403861, 1.409, 1.551, 1.249, 1.339, 'L-D: 05:00-23:00'),
(276, 'logosGasolineras/logoDefault.png', 'NITROIL', 'CALLE ACEQUIA DE ROBELLA, 11', 7145, 39.428417, -0.404306, 1.299, 1.419, 1.169, 1.249, 'L-D: 24H'),
(277, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE ACEQUIA FAVARA, 5', 7145, 39.43475, -0.406139, 1.279, 0, 1.139, 0, 'L-D: 24H'),
(278, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA BENETUSER  S/N KM. ', 7145, 39.427194, -0.410556, 1.389, 1.529, 1.219, 1.299, 'L-D: 06:00-22:00'),
(279, 'logosGasolineras/logoCampsa.png', 'CAMPSA EXPRESS', 'CARRETERA BENETUSSER KM. 80', 7145, 39.426361, -0.404806, 1.289, 0, 1.149, 0, 'L-D: 24H'),
(280, 'logosGasolineras/logoDefault.png', 'E.S. PAIPORTA', 'CALLE ACEQUIA DE QUART, 40', 7145, 39.430722, -0.403, 0, 0, 0, 1.098, 'L: 24H'),
(281, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA ALBAIDA KM. 3,1', 7146, 38.934278, -0.211583, 1.419, 0, 1.239, 1.329, 'L-D: 06:00-22:00'),
(282, 'logosGasolineras/logoShell.png', 'SHELL', 'CALLE CRISTO DE LA FE, 43', 7149, 39.501528, -0.446361, 1.319, 1.469, 1.195, 1.285, 'L-D: 05:00-23:00'),
(283, 'logosGasolineras/logoDefault.png', 'TRES CAMINOS SL-DIV.LA CAÑADA', 'CR PATERNA-LIRIA km 3,9', 7149, 39.531556, -0.472944, 1.429, 1.582, 1.22, 1.32, 'L-D: 24H'),
(284, 'logosGasolineras/logoGasexpress.png', 'GASEXPRESS', 'CALLE CHARLES ROBERT DARWIN, 2', 7149, 39.549917, -0.459694, 1.259, 0, 1.119, 0, 'L-D: 24H'),
(285, 'logosGasolineras/logoBP.png', 'BP SANTA RITA', 'AVENIDA VICENTE MORTES, 99', 7149, 39.509861, -0.452333, 1.449, 1.589, 1.269, 1.359, 'L-D: 06:00-23:00'),
(286, 'logosGasolineras/logoDefault.png', 'MIGUEL PI', 'CARRETERA VALENCIA-ADEMUZ KM. 9700', 7149, 39.54175, -0.462056, 1.209, 0, 1.069, 1.099, 'L-D: 24H'),
(287, 'logosGasolineras/logoGalp.png', 'GALP-3 CAMINOS', 'CL MAYOR  57', 7149, 39.503722, -0.444278, 1.239, 1.399, 1.125, 1.225, 'L-D: 24H'),
(288, 'logosGasolineras/logoBZ.png', 'BZ ESTACION DE SERVICIO', 'POLIGONO P.IND L\'ANDANA; C/ NUEVAS TECNOLOGIAS, 4', 7149, 39.539472, -0.455583, 1.209, 0, 1.069, 0, 'L-D: 24H'),
(289, 'logosGasolineras/logoDefault.png', 'BDMED', 'CARRETERA PATERNA - LA CAÑADA KM. 2,2', 7149, 39.518306, -0.460306, 1.249, 0, 1.109, 0, 'L-D: 24H'),
(290, 'logosGasolineras/logoCarrefour.png', 'CARREFOUR', 'PARQUE TÁCTICA URBANIZACIÓN NORTE, S/N', 7149, 39.513722, -0.440694, 1.329, 1.499, 1.189, 1.219, 'L-D: 24H'),
(291, 'logosGasolineras/logoDefault.png', 'VCC PATERNA ', 'CALLE ALGESPER, 2', 7149, 39.512694, -0.443944, 1.259, 0, 1.109, 0, 'L-D: 24H'),
(292, 'logosGasolineras/logoEldisser.png', 'ELDISSER', 'CALLE ALGEPSER, 68', 7149, 39.520194, -0.456583, 0, 0, 1.083, 0, 'L-D: 24H'),
(293, 'logosGasolineras/logoDefault.png', 'E.S. METROARTE', 'CARRETERA VALENCIA-ADEMUZ-PEIXADOR KM. 10,200', 7149, 39.543361, -0.466667, 1.259, 0, 1.119, 0, 'L-D: 24H'),
(294, 'logosGasolineras/logoPetromax.png', 'PETROMAX ', 'CALLE 29, 90', 7149, 39.530694, -0.474306, 1.269, 1.459, 1.139, 1.239, 'L-D: 06:00-22:00'),
(295, 'logosGasolineras/logoDefault.png', 'ESTACION INTER PATTY', 'CALLE OLLER, 5', 7149, 39.515889, -0.456083, 0, 0, 1.147, 0, 'L-D: 24H'),
(296, 'logosGasolineras/logoDefault.png', 'TC CAMPILLO', 'CALLE VILLA DE MADRID, 61', 7149, 39.520028, -0.468278, 0, 0, 1.085, 0, 'L-D: 24H'),
(297, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CR CV-36  VALENCIA -TORRENTE ,P.K.', 7152, 39.440806, -0.42725, 1.435, 1.585, 1.269, 1.329, 'L-D: 06:00-22:00'),
(298, 'logosGasolineras/logoDefault.png', 'DIESELF', 'CALLE CAMI FAITANAR, 6', 7152, 39.441972, -0.429333, 1.258, 0, 1.125, 0, 'L-D: 24H'),
(299, 'logosGasolineras/logoTamoil.png', 'TAMOIL', 'CARRETERA VP-3065 KM. 18,4', 7153, 39.368778, -0.505639, 1.299, 1.359, 1.159, 0, 'L-D: 24H'),
(300, 'logosGasolineras/logoDefault.png', 'COOPIC', 'CV-4140 km 1', 7153, 39.354417, -0.466861, 1.26, 0, 1.139, 0, 'L-D: 24H'),
(301, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'PLAZA ABADIA, 13', 7153, 39.361833, -0.456472, 1.435, 0, 1.259, 1.319, 'L-D: 06:00-22:00'),
(302, 'logosGasolineras/logoBP.png', 'BP PICASSENT', 'CALLE PARIDERA, 2', 7153, 39.360556, -0.455556, 1.429, 1.571, 1.249, 1.339, 'L-D: 24H'),
(303, 'logosGasolineras/logoQ8.png', 'Q8', 'AVENIDA ARAGON, 3', 7156, 39.584389, -0.321861, 1.319, 1.349, 1.169, 1.219, 'L-D: 24H'),
(304, 'logosGasolineras/logoDefault.png', 'RED OIL TEC', 'CALLE POETA LLORENTE, 202', 7157, 39.588528, -0.542417, 1.209, 0, 1.079, 0, 'L-D: 24H'),
(305, 'logosGasolineras/logoPetropass.png', 'PETROPASS', 'CALLE POETA LLORENTE, 172', 7157, 39.589306, -0.544528, 1.207, 0, 1.067, 0, 'L-D: 24H'),
(306, 'logosGasolineras/logoDefault.png', 'LOW COST VALLBONA', 'CARRETERA CRTA ELIANA-BENAGUACILL KM6 KM. 6', 7157, 39.585611, -0.551639, 1.249, 0, 1.099, 0, 'L-D: 06:00-22:00'),
(307, 'logosGasolineras/logoDefault.png', 'S2', 'CALLE AUGUSTO DANVILA, 181', 7157, 39.589389, -0.543222, 1.209, 1.399, 1.079, 1.209, 'L-D: 24H'),
(308, 'logosGasolineras/logoDefault.png', 'GASOLEOS LA ELIANA', 'CALLE BRUSELAS, 13', 7157, 39.591556, -0.538056, 1.249, 0, 1.099, 0, 'L-D: 24H'),
(309, 'logosGasolineras/logoDefault.png', 'GASOLEOS LA ELIANA', 'CRTA VALENCIA-ADEMUZ km 20,600', 7157, 39.6005, -0.561611, 1.249, 0, 1.099, 0, 'L-D: 24H'),
(310, 'logosGasolineras/logoDefault.png', 'COOPERATIVA AGRICOLA LA POBLA S.C.V.', 'CON. CASABLANCA S/N (COOPERATIVA AGRÍCOLA)', 7157, 39.59875, -0.545944, 1.229, 0, 1.089, 1.219, 'L-D: 06:00-22:00'),
(311, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AUTOVIA CV-35 KM. 17', 7157, 39.583167, -0.532028, 1.424, 1.556, 1.259, 1.325, 'L-D: 06:00-22:00'),
(312, 'logosGasolineras/logoDefault.png', 'REPOSTA EXPRESS', 'CALLE ARTESANS, 1', 7159, 39.093306, -0.476083, 1.224, 0, 1.084, 0, 'L-D: 24H'),
(313, 'logosGasolineras/logoGalp.png', 'GALP', 'POLIGONO RONDA NOU DŽOCTUBRE, S/N', 7160, 39.197833, -0.374444, 1.398, 1.519, 1.238, 0, 'L-D: 06:00-22:00'),
(314, 'logosGasolineras/logoDefault.png', 'PUZOL', 'CARRETERA N-340 KM. 18', 7162, 39.622417, -0.305, 1.389, 1.509, 1.249, 1.325, 'L-D: 24H'),
(315, 'logosGasolineras/logoDefault.png', 'PUÇOIL', 'CALLE SALZES, ESQUINA A CALLE LLIMERES, 1', 7162, 39.626389, -0.30525, 1.249, 0, 1.153, 0, 'L-D: 24H'),
(316, 'logosGasolineras/logoGest.png', 'GEST', 'CAMI DEL MAR, S/N', 7162, 39.612972, -0.285722, 1.349, 1.499, 1.199, 1.279, 'L-D: 07:00-21:30'),
(317, 'logosGasolineras/logoDefault.png', 'GASPUIG', 'CALLE CAMINO DEL MAR, SN', 7164, 39.585194, -0.286944, 1.309, 0, 1.139, 1.209, 'L-D: 06:00-22:00'),
(318, 'logosGasolineras/logoDefault.png', 'BDMED', 'CAMI DEL MAR, S/N', 7164, 39.583583, -0.286389, 1.249, 0, 1.109, 0, 'L-D: 24H'),
(319, 'logosGasolineras/logoBP.png', 'BP EL PUIG', 'AVENIDA VIRGEN DEL PUIG, 1', 7164, 39.587389, -0.299083, 1.419, 1.561, 1.209, 1.299, 'L-D: 06:00-23:00'),
(320, 'logosGasolineras/logoGalp.png', 'GALP', 'AUTOVIA A7 KM 311 KM. 311', 7164, 39.607444, -0.343944, 0, 1.519, 1.209, 1.239, 'L-D: 24H'),
(321, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AUTOVIA A-3 MADRID-VALENCIA KM. 345', 7166, 39.473778, -0.491083, 1.429, 1.561, 1.245, 1.311, 'L-D: 05:00-23:00'),
(322, 'logosGasolineras/logoBP.png', 'BP A3', 'AVENIDA REAL MONASTERIO, 6, ', 7166, 39.473472, -0.433833, 1.429, 1.571, 1.249, 1.339, 'L-D: 06:00-22:00'),
(323, 'logosGasolineras/logoBP.png', 'BP', 'CALLE CONDE DE RODEZNO, 13', 7166, 39.480194, -0.447194, 1.409, 1.551, 1.229, 1.319, 'L-D: 06:00-00:00'),
(324, 'logosGasolineras/logoGalp.png', 'GALP - AMERICAN PETROL ', 'AVINGUDA COMARQUES DEL PAIS VALENCIA, 103', 7166, 39.471861, -0.505333, 1.379, 0, 1.269, 0, 'L-D: 24H'),
(325, 'logosGasolineras/logoDefault.png', 'VCC QUART ', 'AVENIDA DE LA SALETA S/N, 1', 7166, 39.474833, -0.482583, 1.246, 0, 1.084, 0, 'L-D: 24H'),
(326, 'logosGasolineras/logoBP.png', 'BP AMAYVI - II', 'AVENIDA COMARQUES DEL PAIS VALENCIA, 241', 7166, 39.4725, -0.51525, 1.429, 1.571, 1.249, 1.339, 'L-D: 05:00-23:00'),
(327, 'logosGasolineras/logoBP.png', 'BP RIU TURIA', 'CALLE ALITRA, 2', 7166, 39.478917, -0.426833, 1.409, 1.551, 1.229, 1.319, 'L-D: 24H'),
(328, 'logosGasolineras/logoBP.png', 'BP AMAYVI I', 'AVENIDA COMARQUES DEL PAIS VALENCIA, 156', 7166, 39.473444, -0.514889, 1.429, 1.571, 1.249, 1.339, 'L-D: 24H'),
(329, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CAMINO CEBOLLA, 45', 7170, 39.587417, -0.323722, 1.379, 1.519, 1.209, 1.269, 'L-D: 06:00-22:00'),
(330, 'logosGasolineras/logoExoil.png', 'EXOIL EXPRESS', 'CALLE TRAVESSERA D\'ALBAIDA, 62', 7174, 38.944583, -0.19925, 1.309, 0, 1.149, 0, 'L-D: 06:00-22:00'),
(331, 'logosGasolineras/logoExoil.png', 'EXOIL REAL DE GANDIA', 'TRAVESSERA ALBAIDA, 62', 7174, 38.94475, -0.199861, 1.399, 1.499, 1.239, 0, 'L-D: 06:00-22:00'),
(332, 'logosGasolineras/logoBP.png', 'BP', 'CALLE TRAVESERA DE ALBAIDA, 14', 7174, 38.953389, -0.193139, 1.429, 1.539, 1.239, 1.329, 'L-D: 06:00-22:00'),
(333, 'logosGasolineras/logoBP.png', 'BP', 'CARRETERA MADRID VALENCIA KM 276 KM. ', 7176, 39.483861, -1.095056, 1.369, 0, 1.238, 1.315, 'L-D: 06:00-23:00');
INSERT INTO `gasolineras` (`id`, `logo`, `nombre`, `direccion`, `id_municipio`, `latitud`, `longitud`, `gasolina95`, `gasolina98`, `diesel`, `diesel_premium`, `horario`) VALUES
(334, 'logosGasolineras/logoGalp.png', 'GALP - AMERICAN PETROL ', 'CALLE TRANSPORTE, 9', 7176, 39.505417, -1.124583, 1.379, 0, 1.269, 0, 'L-D: 24H'),
(335, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AUTOVIA A-3 (MRG.IZDO.) KM. 283', 7176, 39.5265, -1.14325, 1.434, 1.566, 1.264, 1.33, 'L-D: 06:00-23:00'),
(336, 'logosGasolineras/logoBP.png', 'BP ', 'AT A-3, 281', 7176, 39.530556, -1.165306, 1.379, 1.509, 1.239, 1.319, 'L-D: 24H'),
(337, 'logosGasolineras/logoGasexpress.png', 'GASEXPRESS', 'CALLE CONSTITUCIÓN, 77', 7176, 39.486306, -1.093361, 1.269, 0, 1.129, 0, 'L-D: 06:00-22:00'),
(338, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA N-322 KM. 454,100', 7176, 39.474639, -1.1245, 1.379, 0, 1.239, 1.309, 'L-D: 06:00-22:00'),
(339, 'logosGasolineras/logoNaturgy.png', 'NATURGY', 'CARRETERA DELS PEDRAPIQUERS KM. S/N', 7177, 39.475861, -0.54825, 0, 0, 0, 0, 'L-D: 24H'),
(340, 'logosGasolineras/logoDefault.png', 'INDUSTRIAL GIL FOLGADO SL', 'CARRETERA DE VALENCIA KM. 107', 7177, 39.544111, -0.558389, 1.339, 0, 1.199, 1.239, 'L-D: 06:00-22:00'),
(341, 'logosGasolineras/logoDefault.png', 'CHEMABALLESTER', 'PARTIDA VALENCIA LA VELLA PARCELA 7 POLIGONO 40, 7', 7177, 39.520833, -0.529611, 1.27, 0, 1.099, 0, 'L-D: 06:00-22:00'),
(342, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CALLE VALENCIA, 75', 7177, 39.545167, -0.562972, 1.429, 0, 1.245, 1.311, 'L-D: 06:00-22:00'),
(343, 'logosGasolineras/logoDefault.png', 'INERZIS MOBILITY', 'CALLE MAS DEL PENYOT, 5', 7177, 39.4835, -0.5825, 0, 0, 1.244, 0, 'L-D: 24H'),
(344, 'logosGasolineras/logoDefault.png', 'VIROSQUE', 'AVENIDA PUERTO DE ALICANTE, 6', 7177, 39.486278, -0.532722, 0, 0, 1.05, 0, 'L-V: 08:00-20:00'),
(345, 'logosGasolineras/logoDefault.png', 'IDS', 'CALLE PICAPEDRERS, DELS, S/N', 7177, 39.476389, -0.534444, 0, 0, 1.294, 0, 'L-D: 24H'),
(346, 'logosGasolineras/logoGalp.png', 'GALP', 'POLG.IND.ENTREVIAS PARC.3 km 11', 7177, 39.542333, -0.556083, 1.439, 1.569, 1.269, 1.299, 'L-D: 06:00-22:00'),
(347, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE MALLORCA, S,N', 7177, 39.478722, -0.569667, 1.419, 1.549, 1.279, 1.339, 'L-D: 24H'),
(348, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'POLIGONO EL OLIVERAL, 2', 7177, 39.472111, -0.534667, 1.439, 0, 1.279, 1.369, 'L-D: 24H'),
(349, 'logosGasolineras/logoDefault.png', 'U.S. ASG SL', 'POLIGONO POYO DE REVA S12, S/N', 7177, 39.478833, -0.57025, 0, 0, 1.078, 0, 'L-D: 24H'),
(350, 'logosGasolineras/logoDefault.png', 'SERVITRANSPORT LA VALL', 'AVENIDA DEL TRANSPORT, 8', 7177, 39.483972, -0.562222, 0, 0, 1.094, 0, 'L-D: 24H'),
(351, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CR VV-7014, 3,8', 7183, 39.64125, -0.265444, 1.369, 0, 1.209, 0, 'L-V: 07:00-21:00'),
(352, 'logosGasolineras/logoDefault.png', 'RAPIDFUEL', 'AVENIDA DEL PUERTO, 36', 7183, 39.654861, -0.226056, 1.245, 0, 1.095, 0, 'L-D: 24H'),
(353, 'logosGasolineras/logoDefault.png', 'OPTYME', 'CALLE VALENCIA, 110', 7183, 39.672806, -0.275639, 1.249, 0, 1.109, 0, 'L-D: 24H'),
(354, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CARRETERA FAURA-CANET S/N KM. S/N', 7183, 39.721, -0.245194, 1.379, 0, 1.239, 0, 'L-D: 24H'),
(355, 'logosGasolineras/logoDefault.png', 'SAGUNTO GAS ', 'N-237 km 1,50', 7183, 39.672972, -0.255694, 1.229, 1.439, 1.079, 1.209, 'L-D: 24H'),
(356, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CARRETERA N-234A KM. 3,2', 7183, 39.672194, -0.310278, 1.379, 0, 1.239, 1.305, 'L-D: 06:00-22:00'),
(357, 'logosGasolineras/logoPetroprix.png', 'PETROPRIX', 'AVENIDA FAUSTO CARUANA, 59', 7183, 39.672306, -0.253, 1.224, 0, 1.075, 0, 'L-D: 24H'),
(358, 'logosGasolineras/logoRepsol.png', 'REPSOL CARBURANTES SAGUNTO', 'CARRETERA V-23 KM. 3,700', 7183, 39.6555, -0.282833, 1.384, 1.529, 1.239, 1.311, 'L-D: 24H'),
(359, 'logosGasolineras/logoOctaplus.png', ' OCTAPLUS', 'AVENIDA DE LA VILA, SN', 7183, 39.678333, -0.265361, 1.245, 1.389, 1.095, 1.145, 'L-D: 07:00-22:00'),
(360, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AVENIDA PAIS VALENCIANO, 27', 7183, 39.676306, -0.271833, 1.379, 1.511, 1.239, 1.305, 'L-D: 24H'),
(361, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AUTOPISTA AP-7 (MRG. IZDO.) KM. 479,5', 7183, 39.651444, -0.301389, 1.399, 1.531, 1.235, 1.301, 'L-D: 24H'),
(362, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'POLIGONO PARCELA 37 POLIGONO 69, 37', 7183, 39.662306, -0.239333, 1.358, 0, 1.198, 1.278, 'L-D: 24H'),
(363, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CALLE VALENCIA, 106', 7183, 39.673194, -0.275333, 1.379, 1.511, 1.239, 1.305, 'L-D: 24H'),
(364, 'logosGasolineras/logoCarrefour.png', 'CARREFOUR', 'CARRETERA SAGUNTO-PUERTO SAGUNTO KM. 2', 7183, 39.672611, -0.249056, 1.319, 1.469, 1.179, 1.209, 'L-D: 24H'),
(365, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AUTOPISTA AP-7 (MRG.DCHO.) KM. 479,5', 7183, 39.649528, -0.30225, 1.399, 1.531, 1.239, 1.305, 'L-D: 24H'),
(366, 'logosGasolineras/logoBP.png', 'BP PUERTO DE SAGUNTO', 'AVENIDA PERIODISTA AZZATI, ', 7183, 39.66825, -0.224972, 1.389, 1.531, 1.209, 1.299, 'L-D: 06:00-22:00'),
(367, 'logosGasolineras/logoBuranEnergy.png', 'BURAN ENERGY', 'AVENIDA DE LES MORERES, S/N', 7183, 39.671556, -0.264583, 1.255, 0, 1.105, 0, 'L-D: 24H'),
(368, 'logosGasolineras/logoBuranEnergy.png', 'CARBURANTES SAGUNTO', 'CTRA V-23 km 3,700', 7183, 39.656694, -0.281972, 1.275, 1.399, 1.125, 1.22, 'L-D: 24H'),
(369, 'logosGasolineras/logoBenzina.png', 'BENZINA CARBURANTES', 'AVENIDA JAUME ROIG, 8', 7183, 39.667528, -0.238028, 1.245, 0, 1.105, 0, 'L-D: 24H'),
(370, 'logosGasolineras/logoDefault.png', 'GASOPRIX', 'CALLE PADRE CLARET, 97', 7183, 39.662417, -0.240167, 1.255, 0, 1.105, 0, 'L-D: 24H'),
(371, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA HISPANIDAD, SN', 7183, 39.668056, -0.236472, 1.369, 1.519, 1.209, 0, 'L-D: 24H'),
(372, 'logosGasolineras/logoGalp.png', 'GALP', 'POLIGONO POLIGONO 4, SN', 7185, 39.555611, -0.486917, 1.429, 1.569, 1.229, 1.299, 'L-D: 06:00-22:00'),
(373, 'logosGasolineras/logoDefault.png', 'SAN ANTONIO OIL', 'POLIGONO ISAAC PERAL, 2', 7185, 39.551139, -0.482556, 1.219, 0, 1.089, 0, 'L-D: 24H'),
(374, 'logosGasolineras/logoPetromax.png', 'PETROMAX', 'CARRETERA VV-6042 KM. 0,6', 7185, 39.567028, -0.493333, 1.239, 1.349, 1.139, 1.279, 'L-D: 24H'),
(375, 'logosGasolineras/logoBP.png', 'BP  MARIOLA', 'CARRETERA VALENCIA ADEMUZ KM. 13,1', 7185, 39.559972, -0.495917, 1.429, 1.571, 1.219, 1.309, 'L-D: 05:00-00:00'),
(376, 'logosGasolineras/logoExoil.png', 'EXOIL PISTA DE SILLA', 'CAMI PONT DE PEDRA, 3', 7187, 39.420778, -0.37375, 1.399, 1.499, 1.239, 0, 'L-D: 24H'),
(377, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AVENIDA DEL MEDITERRANEO, 10', 7187, 39.424778, -0.373833, 1.399, 0, 1.239, 1.305, 'L-D: 06:00-22:00'),
(378, 'logosGasolineras/logoRepsol.png', 'REPSOL ', 'AUTOVIA V-31 (PISTA DE SILLA) km 11,275', 7187, 39.424333, -0.374, 1.389, 1.529, 1.219, 1.299, 'L-D: 06:00-22:00'),
(379, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AUTOVIA AUTOVIA A-3 KM. 306,5', 7193, 39.456, -0.904528, 1.439, 1.549, 1.269, 1.319, 'L-D: 24H'),
(380, 'logosGasolineras/logoDefault.png', 'COOP SILLA', 'AVENIDA ALICANTE, 26', 7194, 39.37125, -0.408306, 1.23, 0, 1.08, 0, 'L-D: 24H'),
(381, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CL AVENIDA ALICANTE, 70', 7194, 39.364167, -0.407611, 1.409, 1.539, 1.259, 1.329, 'L-D: 06:00-22:00'),
(382, 'logosGasolineras/logoDefault.png', 'GLOBAL TANK SILLA', 'AVENIDA L\'AMET, 32', 7194, 39.355306, -0.420667, 1.199, 0, 1.059, 0, 'L-D: 24H'),
(383, 'logosGasolineras/logoDefault.png', '+OIL', 'AVENIDA PICASSENT, 17', 7194, 39.363694, -0.418472, 1.299, 0, 1.169, 0, 'L-D: 06:00-22:00'),
(384, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CL POLIGONO VII-C PARCELA 29 S.N.', 7194, 39.362944, -0.42125, 1.419, 0, 1.259, 1.339, 'L-D: 24H'),
(385, 'logosGasolineras/logoDefault.png', 'GASOPOTENZ', 'CTRA. BARX KM-20,9 km 20.9', 7195, 39.045972, -0.310944, 1.259, 1.419, 1.109, 0, 'L-D: 24H'),
(386, 'logosGasolineras/logoDefault.png', 'E.S. MIDES, S.L.', 'CARRETERA NACIONAL 332 KM. 264,86', 7197, 39.273778, -0.374694, 1.349, 1.479, 1.229, 0, 'L-D: 24H'),
(387, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE CIUTAT DE PAMPLONA, 40', 7199, 39.200472, -0.302139, 1.277, 0, 1.137, 0, 'L-D: 24H'),
(388, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CARRETERA N-332 KM. 254,5', 7199, 39.197583, -0.302528, 1.389, 1.521, 1.239, 1.305, 'L: 06:00-21:00'),
(389, 'logosGasolineras/logoBP.png', 'BP EL SEQUIAL', 'AVENIDA DEL MAR, 5, ', 7199, 39.209056, -0.3095, 1.349, 0, 1.199, 1.299, 'L-D: 06:00-22:00'),
(390, 'logosGasolineras/logoDefault.png', 'FUTURGASOIL', 'AVENIDA DEL MAR, 44', 7199, 39.214056, -0.306361, 1.279, 0, 1.139, 0, 'L-D: 24H'),
(391, 'logosGasolineras/logoBP.png', 'BP SUECA', 'RONDA CABANYAL, 6', 7199, 39.19875, -0.312306, 1.409, 1.551, 1.239, 1.329, 'L-D: 06:00-22:00'),
(392, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CR N-332, 256,1', 7199, 39.204722, -0.317694, 1.409, 1.539, 1.239, 1.289, 'L-D: 06:00-22:00'),
(393, 'logosGasolineras/logoDefault.png', 'ECONOMY CASH 24H', 'CAMI VELL VALENCIA, S/N', 7199, 39.20725, -0.31925, 1.349, 0, 1.199, 0, 'L-D: 24H'),
(394, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA NAZARET-OLIVA KM. 21', 7199, 39.276389, -0.278889, 1.439, 1.559, 1.209, 1.279, 'L-D: 07:00-23:00'),
(395, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA NAZARET-OLIVA KM. 21', 7199, 39.275972, -0.278194, 1.439, 1.559, 1.209, 1.279, 'L-D: 06:00-22:00'),
(396, 'logosGasolineras/logoPetroenergy.png', 'PETROENERGY', 'CARRETERA CV-50, Nº 3 KM. 3', 7202, 39.07725, -0.251472, 1.279, 0, 1.129, 0, 'L-D: 24H'),
(397, 'logosGasolineras/logoDefault.png', 'LANDETE GIMENO', 'AVENIDA DE LA VALLDGNA, 69', 7202, 39.068556, -0.273361, 1.359, 1.499, 1.199, 0, 'L-D: 05:30-22:00'),
(398, 'logosGasolineras/logoBP.png', 'BP VALLDIGNA', 'CARRETERA CTRA N 332 KM. 236', 7202, 39.078028, -0.242667, 1.429, 1.579, 1.249, 1.339, 'L-D: 24H'),
(399, 'logosGasolineras/logoGalp.png', 'GALP', 'CALLE COSTERA DE LA, 19', 7202, 39.067028, -0.274583, 1.239, 0, 1.089, 0, 'L-D: 24H'),
(400, 'logosGasolineras/logoGalp.png', 'GALP', 'AUTOVIA A-7 KM. 519,3', 7208, 39.400278, -0.491417, 1.409, 1.539, 1.269, 1.339, 'L-D: 24H'),
(401, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE MAS DEL JUTGE, 2', 7208, 39.436306, -0.487028, 1.297, 0, 1.159, 0, 'L-D: 24H'),
(402, 'logosGasolineras/logoDefault.png', 'E.S. COMB3', 'CALLE MAS DEL JUTGE, 149', 7208, 39.439028, -0.502861, 1.279, 0, 1.119, 0, 'L-D: 24H'),
(403, 'logosGasolineras/logoShell.png', 'SHELL', 'CARRER TOLL L\'ALBERCA (CV405), S/N', 7208, 39.420667, -0.502972, 1.319, 0, 1.149, 0, 'L-D: 24H'),
(404, 'logosGasolineras/logoBenzina.png', 'BENZINA', 'CALLE MAUROS, 20', 7208, 39.441167, -0.456028, 1.269, 0, 1.129, 0, 'L-D: 24H'),
(405, 'logosGasolineras/logoDefault.png', 'GAS DEL MAS', 'CALLE DELS LLIBRERS, 7', 7208, 39.442778, -0.498667, 1.299, 0, 1.159, 0, 'L-D: 24H'),
(406, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'PARTIDA TOLL L\'ALBERCA, 19', 7208, 39.4215, -0.504583, 1.429, 1.569, 1.249, 1.339, 'L-D: 24H'),
(407, 'logosGasolineras/logoBP.png', 'BP', 'CALLE MASIA DEL JUEZ, 12', 7208, 39.438694, -0.479806, 1.409, 0, 1.229, 1.319, 'L-D: 06:00-22:00'),
(408, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE FERNANDO FURIO R, 4', 7208, 39.426944, -0.483444, 1.425, 1.575, 1.259, 1.349, 'L-D: 07:00-22:00'),
(409, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CALLE CAMI REIAL, 4', 7208, 39.436917, -0.472389, 1.384, 1.516, 1.239, 1.31, 'L-D: 24H'),
(410, 'logosGasolineras/logoGalp.png', 'GALP', 'CR VV-3014, 1,2', 7208, 39.436806, -0.446528, 1.399, 1.559, 1.229, 1.259, 'L-D: 06:00-22:00'),
(411, 'logosGasolineras/logoBP.png', 'BP BERNABE MARI', 'CARRETERA CV-405 KM. 3', 7208, 39.416417, -0.509778, 1.409, 1.532, 1.239, 1.319, 'L-D: 24H'),
(412, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA CARRETERA DE PICANYA KM. 24', 7208, 39.439028, -0.456389, 1.425, 1.575, 1.259, 1.349, 'L-D: 06:00-22:00'),
(413, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE PICANYA, 49', 7208, 39.440694, -0.457028, 1.279, 0, 1.139, 0, 'L-D: 24H'),
(414, 'logosGasolineras/logoGalp.png', 'GALP', 'AUTOVIA A-7 KM. 519,3', 7208, 39.399722, -0.492361, 1.409, 1.539, 1.269, 1.339, 'L-D: 24H'),
(415, 'logosGasolineras/logoTamoil.png', 'TAMOIL', 'CALLE MAUROS, 8', 7208, 39.442111, -0.457917, 1.269, 0, 1.129, 0, 'L-D: 24H'),
(416, 'logosGasolineras/logoDefault.png', 'AS TURÍS', 'CARRETERA ALBORACHE-SILLA KM. 9,4', 7212, 39.38925, -0.696694, 1.289, 1.389, 1.159, 0, 'L-D: 24H'),
(417, 'logosGasolineras/logoDefault.png', 'LA BARONIA DE TURIS COOP V', 'POLIGONO PROYECTO, 1', 7212, 39.390528, -0.698972, 1.252, 0, 1.111, 0, 'L-D: 24H'),
(418, 'logosGasolineras/logoCampsa.png', 'CAMPSA', 'CALLE SAN ILDEFONSO, 95', 7213, 39.56375, -1.196889, 1.435, 1.545, 1.279, 1.369, 'L-D: 06:00-22:00'),
(419, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA N-3 KM. 262', 7213, 39.563, -1.213667, 1.439, 1.559, 1.279, 1.369, 'L-V: 06:00-22:00'),
(420, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA N-3 KM. 262', 7213, 39.563583, -1.212861, 1.439, 1.559, 1.279, 1.369, 'L-D: 24H'),
(421, 'logosGasolineras/logoCampsa.png', 'CAMPSA', 'CARRETERA N-III KM. 263,1', 7213, 39.563306, -1.197333, 1.435, 1.545, 1.279, 1.369, 'L-D: 24H'),
(422, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE JATIVA, 5', 7214, 39.468, -0.377944, 0, 0, 1.109, 0, 'L-D: 00:00-00:01'),
(423, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CALLE LLUIS PEIXO, 50', 7214, 39.474917, -0.333389, 1.297, 0, 1.147, 1.159, 'L-D: 24H'),
(424, 'logosGasolineras/logoGalp.png', 'GALP', 'C/SERRERÍA, 14', 7214, 39.464528, -0.335667, 1.349, 1.529, 1.179, 1.209, 'L-D: 06:00-22:00'),
(425, 'logosGasolineras/logoBP.png', 'BP', 'AVENIDA PUERTO DEL, 263', 7214, 39.461194, -0.336222, 1.389, 1.539, 1.209, 1.299, 'L-D: 06:00-22:00'),
(426, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE CADIZ, 98', 7214, 39.458917, -0.371722, 1.405, 1.525, 1.209, 1.299, 'L-D: 06:00-22:00'),
(427, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AVENIDA REINO DE VALENCIA, 83', 7214, 39.462778, -0.362417, 1.384, 0, 1.244, 1.31, 'L-D: 07:00-22:00'),
(428, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA AUSIAS MARCH, 118', 7214, 39.445111, -0.369806, 1.403, 1.533, 1.216, 1.306, 'L-D: 24H'),
(429, 'logosGasolineras/logoDefault.png', ' E.S. SUR', 'AVENIDA AUSIAS MARCH, 44', 7214, 39.452639, -0.373222, 1.389, 1.529, 1.209, 1.279, 'L-D: 24H'),
(430, 'logosGasolineras/logoDefault.png', 'E.S. FORN D\'ALCEDO S.L.', 'CALLE GUADALQUIVIR, 75', 7214, 39.428472, -0.377333, 1.409, 1.469, 1.239, 0, 'L-S: 06:30-21:30'),
(431, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CL MAESTRO RODRIGO, S.N.', 7214, 39.487694, -0.404472, 1.409, 1.539, 1.219, 1.299, 'L-D: 24H'),
(432, 'logosGasolineras/logoDefault.png', 'LION ENERGY', 'CALLE VALLE DE LA BALLESTERA, 73', 7214, 39.478417, -0.404833, 1.368, 0, 1.189, 0, 'L-D: 24H'),
(433, 'logosGasolineras/logoBP.png', 'BP CAMPANAR', 'AVENIDA MAESTRO RODRIGO, 31', 7214, 39.481278, -0.399972, 1.409, 1.551, 1.229, 1.319, 'L-D: 06:00-00:00'),
(434, 'logosGasolineras/logoBP.png', 'BP ARNAU', 'AVENIDA MAESTRO RODRIGO, 76', 7214, 39.4885, -0.405139, 1.409, 1.551, 1.229, 1.319, 'L-D: 06:00-22:00'),
(435, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE VALLE DE LA BALLESTERA, 44', 7214, 39.478611, -0.401167, 1.399, 1.529, 1.219, 1.299, 'L-D: 06:00-22:00'),
(436, 'logosGasolineras/logoCarrefour.png', 'CARREFOUR', 'AVENIDA MANUEL DE FALLA, 13', 7214, 39.475611, -0.403806, 1.389, 1.519, 1.209, 1.239, 'L-D: 24H'),
(437, 'logosGasolineras/logoDefault.png', ' E.S. LA TORRETA', 'CALLE LLANO DE LA ZAIDIA, 6', 7214, 39.483056, -0.3785, 1.389, 1.529, 1.209, 1.279, 'L-D: 24H'),
(438, 'logosGasolineras/logoGalp.png', 'GALP', 'AVENIDA PRIMADO REIG, 10', 7214, 39.490306, -0.372028, 0, 1.539, 1.189, 1.259, 'L-D: 24H'),
(439, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA PIO XII, S/N', 7214, 39.481417, -0.392083, 1.399, 1.529, 1.219, 1.299, 'L-D: 06:00-22:00'),
(440, 'logosGasolineras/logoGalp.png', 'GALP/3CAMINOS-VALENCIA', 'CALLE MILAGROSA, 15', 7214, 39.484722, -0.373778, 1.249, 1.375, 1.125, 1.165, 'L-D: 24H'),
(441, 'logosGasolineras/logoRepsol.png', 'REPSOL ', 'AVENIDA CONSTITUCION, 137', 7214, 39.492694, -0.373833, 1.399, 1.529, 1.209, 1.289, 'L-D: 06:00-22:00'),
(442, 'logosGasolineras/logoGalp.png', 'GALP', 'CALLE EMILIO BARO, 69', 7214, 39.489278, -0.360389, 1.389, 0, 1.199, 1.229, 'L-D: 06:00-22:00'),
(443, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE DOLORES MARQUES, 50', 7214, 39.489583, -0.361194, 1.409, 1.539, 1.219, 1.309, 'L-D: 07:00-21:00'),
(444, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA PRIMADO REIG, 76', 7214, 39.483306, -0.362472, 1.405, 1.551, 1.229, 1.309, 'L-D: 24H'),
(445, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE CLARIANO, 3', 7214, 39.47625, -0.352306, 1.409, 1.539, 1.219, 1.309, 'L-D: 06:00-22:00'),
(446, 'logosGasolineras/logoBP.png', 'BP', 'AV DE ARAGON, 6', 7214, 39.468722, -0.359417, 1.409, 1.529, 1.209, 1.309, 'L-D: 24H'),
(447, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CL BALEARES, 20', 7214, 39.462944, -0.354472, 1.375, 1.525, 1.219, 1.309, 'L-D: 24H'),
(448, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AVENIDA DEL CID, 5', 7214, 39.467, -0.390806, 1.354, 1.486, 1.204, 1.27, 'L-D: 24H'),
(449, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CL ARCHIDUQUE CARLOS, 70', 7214, 39.460972, -0.399417, 1.405, 1.535, 1.219, 1.299, 'L-D: 06:30-22:30'),
(450, 'logosGasolineras/logoNaturgy.png', 'NATURGY', 'CALLE GREMIS DELS, 10', 7214, 39.458028, -0.409417, 0, 0, 0, 0, 'L-D: 24H'),
(451, 'logosGasolineras/logoBP.png', 'BP FUSA', 'AVENIDA TRES CRUCES, 48', 7214, 39.459333, -0.403639, 1.409, 1.551, 1.229, 1.319, 'L: 06:00-22:00'),
(452, 'logosGasolineras/logoShell.png', 'SHELL', 'CM.CAMINO NUEVO DE PICAÑA', 7214, 39.458056, -0.403194, 1.419, 1.559, 1.219, 1.299, 'L-D: 05:00-23:00'),
(453, 'logosGasolineras/logoBP.png', 'BP', 'CALLE FOGAINERS DELS, S/N', 7214, 39.459083, -0.406111, 1.429, 1.559, 1.229, 1.299, 'L-D: 06:00-22:00'),
(454, 'logosGasolineras/logoBP.png', 'BP CASTILVIEJO', 'CALLE DELS COETERS, 14', 7214, 39.457, -0.404306, 1.409, 1.554, 1.219, 1.309, 'L-D: 06:00-22:00'),
(455, 'logosGasolineras/logoPlenoil.png', 'PLENOIL', 'CALLE CAMPO CRESPO, 40', 7214, 39.455778, -0.397194, 1.207, 0, 1.067, 0, 'L-D: 24H'),
(456, 'logosGasolineras/logoPetropass.png', 'PETROPASS', 'CALLE DELS GREMIS, 8', 7214, 39.45775, -0.409306, 1.207, 1.49, 1.067, 1.49, 'L-D: 24H'),
(457, 'logosGasolineras/logoCarrefour.png', 'CARREFOUR', 'PLAZA DE EUROPA, 1', 7214, 39.46475, -0.416444, 1.389, 0, 1.209, 1.239, 'L-S: 09:00-22:00'),
(458, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE TRAGINERS DELS, 2', 7214, 39.462639, -0.406444, 1.405, 1.535, 1.219, 1.299, 'L-D: 06:00-22:00'),
(459, 'logosGasolineras/logoGalp.png', 'GALP', 'C/ Pedrapriquers, 9 (Esq. Archiduque Carlos)', 7214, 39.456361, -0.405417, 1.409, 1.544, 1.219, 1.289, 'L-D: 06:00-22:00'),
(460, 'logosGasolineras/logoDefault.png', 'TAXCO', 'CL DELS GREMITS, 10 (POLIG.VARA DE QUART)', 7214, 39.457833, -0.409278, 1.28, 0, 1.145, 1.175, 'L-D: 24H'),
(461, 'logosGasolineras/logoGasexpress.png', 'GASEXPRESS', 'CALLE PIO XI, 41', 7214, 39.457194, -0.394944, 1.207, 0, 1.067, 0, 'L-D: 24H'),
(462, 'logosGasolineras/logoBP.png', 'BP LA CRUZ', 'CALLE SAN VICENTE MARTIR, 297', 7214, 39.448556, -0.385306, 1.409, 1.551, 1.229, 1.319, 'L-D: 24H'),
(463, 'logosGasolineras/logoQ8.png', 'Q8', 'AVENIDA GASPAR AGUILAR, 96', 7214, 39.451306, -0.394194, 1.219, 0, 1.079, 0, 'L-D: 07:00-22:00'),
(464, 'logosGasolineras/logoDefault.png', 'CARRREFOUR', 'AVENIDA PROFESOR LÓPEZ PIÑERO, 16', 7214, 39.452472, -0.35775, 1.399, 1.539, 1.219, 1.249, 'L-D: 24H'),
(465, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CAMI DE ENCORTS, 231', 7214, 39.435944, -0.350611, 1.405, 1.515, 1.219, 0, 'L-V: 06:00-14:00'),
(466, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE IBIZA, 31', 7214, 39.458944, -0.340306, 1.389, 1.529, 1.209, 1.299, 'L-D: 06:00-22:00'),
(467, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CAMINO MORERAS, 58', 7214, 39.452417, -0.334139, 1.389, 1.529, 1.209, 1.299, 'L-D: 06:00-22:00'),
(468, 'logosGasolineras/logoShell.png', 'SHELL', 'AV DEL PUERTO 147', 7214, 39.463972, -0.345361, 1.308, 1.418, 1.158, 1.218, 'L-D: 24H'),
(469, 'logosGasolineras/logoDefault.png', 'FULL & GO', 'AV DEL PUERTO 150', 7214, 39.464194, -0.347778, 1.298, 1.398, 1.148, 1.178, 'L-D: 24H'),
(470, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CAMINO CABAÑAL, 25', 7214, 39.473694, -0.336528, 1.389, 1.529, 1.209, 1.299, 'L-D: 06:00-22:00'),
(471, 'logosGasolineras/logoShell.png', 'SHELL', 'CALLE SERRERIA, 19', 7214, 39.463556, -0.337222, 1.308, 1.448, 1.158, 1.238, 'L-D: 24H'),
(472, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AVENIDA HERMANOS MACHADO, 139', 7214, 39.497833, -0.383278, 1.429, 1.561, 1.255, 1.321, 'L-D: 00:00-23:59'),
(473, 'logosGasolineras/logoBP.png', 'BP CAMINO MONCADA', 'CL CAMINO MONCADA 85', 7214, 39.493472, -0.380667, 1.415, 1.557, 1.235, 1.325, 'L-S: 07:00-20:00'),
(474, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CL AVDA  EL ECUADOR (ESQ. GRAL.LLOR', 7214, 39.492976, -0.38672, 1.419, 1.549, 1.239, 1.289, 'L-D: 06:00-22:00'),
(475, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'LUGAR CASAS BARCENA, 2', 7214, 39.516778, -0.360083, 1.404, 1.529, 1.214, 1.279, 'L-D: 24H'),
(476, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CARRETERA V-6044 KM. 6,3', 7214, 39.561306, -0.431972, 1.409, 0, 1.245, 1.311, 'L-D: 06:00-22:00'),
(477, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA CORTS VALENCIANES DE LES, 57', 7214, 39.494611, -0.403278, 1.409, 1.529, 1.219, 1.299, 'L-D: 24H'),
(478, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'AVENIDA CORTES VALENCIANAS, 3', 7214, 39.487917, -0.398528, 1.409, 1.539, 1.219, 1.299, 'L-D: 06:00-22:00'),
(479, 'logosGasolineras/logoBP.png', 'BP PINEDO', 'CARRERA DEL RIU, 317', 7214, 39.420722, -0.339917, 1.419, 1.559, 1.249, 1.339, 'L-D: 07:00-22:00'),
(480, 'logosGasolineras/logoBP.png', 'BP LA DEHESA', 'CALLE CARRER DEL RIU, 513', 7214, 39.392972, -0.330806, 1.419, 1.559, 1.249, 1.339, 'L-D: 07:00-22:00'),
(481, 'logosGasolineras/logoDefault.png', 'ESTACION DE SERVICIO SORIANO S.L.', 'CAMINO MONCADA, 343', 7214, 39.513194, -0.386861, 1.339, 1.489, 1.179, 0, 'L-D: 07:00-22:00'),
(482, 'logosGasolineras/logoPetronor.png', 'PETRONOR', 'CARRETERA ESTACION KM. S/N', 7215, 38.900611, -0.688111, 1.395, 0, 1.209, 1.259, 'L-S: 06:00-22:00'),
(483, 'logosGasolineras/logoDefault.png', 'MLC', 'AUTOVIA A-35 KM. 26', 7215, 38.894556, -0.724833, 1.399, 0, 1.226, 1.286, 'L-D: 24H'),
(484, 'logosGasolineras/logoDefault.png', 'RURAL SAN VICENTE FERRER', 'POLIGONO ENCHIGALAN DEL RULLO PARCELA 72, 72', 7219, 39.561667, -0.633306, 1.219, 1.289, 1.079, 1.129, 'L-D: 24H'),
(485, 'logosGasolineras/logoDefault.png', 'BENZINERA VILAMARXANT', 'POLIGONO ENCHILAGAR DEL RULLO, CALLE 12,, 9', 7219, 39.562694, -0.635, 1.259, 0, 1.109, 0, 'L-D: 24H'),
(486, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CARRETERA CV-50 KM. 89,9', 7219, 39.572167, -0.624333, 1.389, 1.449, 1.249, 1.309, 'L-S: 07:00-15:00'),
(487, 'logosGasolineras/logoDefault.png', 'MASIP', 'CALLE DIPUTACION, 22', 7221, 39.076806, -0.507083, 1.249, 0, 1.094, 0, 'L-D: 24H'),
(488, 'logosGasolineras/logoDefault.png', 'CEPSA CANONCHE', 'AUTOVIA A7 KM. 855,600', 7221, 39.061444, -0.543, 1.377, 1.434, 1.239, 1.295, 'L: 06:00-22:00'),
(489, 'logosGasolineras/logoRepsol.png', 'REPSOL', 'CALLE DIPUTACION, 16', 7221, 39.076389, -0.508222, 1.375, 1.485, 1.209, 1.259, 'L-D: 00:00-00:01'),
(490, 'logosGasolineras/logoGasexpress.png', 'GASEXPRESS', 'AREA, ARRABAL EL PLA, 2', 7221, 39.064694, -0.538222, 1.244, 0, 1.094, 0, 'L-D: 24H'),
(491, 'logosGasolineras/logoDefault.png', 'TOSCANA LOW COST', 'CARRETERA CV 560 KM. 1,61', 7221, 39.069167, -0.522056, 1.259, 0, 1.109, 1.129, 'L-D: 24H'),
(492, 'logosGasolineras/logoDefault.png', 'JEISER OIL', 'POLIGONO LA LOMA PARCELA 10, 10', 7222, 39.736167, -0.81875, 1.239, 0, 1.129, 0, 'L-D: 24H'),
(493, 'logosGasolineras/logoGalp.png', 'GALP', 'CARRETERA N III KM. 255,27', 7223, 39.526028, -1.43725, 1.394, 1.529, 1.269, 1.339, 'L-D: 06:00-22:00'),
(494, 'logosGasolineras/logoGalp.png', 'GALP', 'CARRETERA N III KM. 255,08', 7223, 39.525889, -1.437167, 1.394, 1.529, 1.269, 1.339, 'L-D: 24H'),
(495, 'logosGasolineras/logoDefault.png', 'FAMILY ENERGY,SL', 'CARRETERA LLOSA DE RANES S/N KM. S/N', 7225, 39.000083, -0.526778, 1.189, 1.309, 1.019, 1.069, 'L-D: 24H'),
(496, 'logosGasolineras/logoDefault.png', 'CEPSA', 'PLAZA ESPAÑA, 1', 7225, 38.990583, -0.513389, 1.349, 1.481, 1.205, 1.271, 'L-D: 24H'),
(497, 'logosGasolineras/logoDefault.png', 'PETROVAL', 'CALLE VIA SERVICIO POLIGONO IND. F, 18', 7225, 38.996361, -0.521528, 1.349, 1.449, 1.199, 1.239, 'L-D: 06:00-23:00'),
(498, 'logosGasolineras/logoDefault.png', '+B ENERGIAS', 'CALLE PROYECTO MOLA 3, 6', 7225, 38.99725, -0.512611, 1.217, 0, 1.097, 0, 'L-D: 24H'),
(499, 'logosGasolineras/logoDefault.png', 'LOW COST CIRUGEDA', 'CAMI CEMENTERI, 5', 7225, 38.9985, -0.526889, 1.193, 0, 1.073, 0, 'L-D: 24H'),
(500, 'logosGasolineras/logoBallenoil.png', 'BALLENOIL', 'CARRETERA ALZIRA KM. 13', 7225, 38.996222, -0.513389, 1.215, 0, 1.095, 0, 'L-D: 24H'),
(501, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AUTOPISTA AP-7 (MRG.DCHO.) KM. 570', 7226, 39.040833, -0.228139, 1.419, 1.551, 1.285, 1.355, 'L-D: 24H'),
(502, 'logosGasolineras/logoDefault.png', 'MEROIL', 'CARRETERA LA PLAYA KM. 1,5', 7226, 39.040556, -0.215528, 1.399, 1.509, 1.239, 0, 'L: 06:00-22:00'),
(503, 'logosGasolineras/logoDefault.png', 'CEPSA', 'CARRETERA N-332 KM. 204,6', 7226, 39.046917, -0.225639, 1.409, 1.541, 1.244, 1.319, 'L-D: 06:00-22:00'),
(504, 'logosGasolineras/logoDefault.png', 'CEPSA', 'AUTOPISTA AP-7 (MRG.IZDO.) KM. 570', 7226, 39.039056, -0.226417, 1.419, 1.551, 1.285, 1.355, 'L-D: 24H'),
(505, 'logosGasolineras/logoDefault.png', 'GAX', 'CALLE LES MORERES, 39', 7228, 39.459944, -0.435333, 1.269, 1.399, 1.138, 0, 'L-D: 24H'),
(506, 'logosGasolineras/logoShell.png', 'SHELL', 'AV  CAMI NOU, 180', 7228, 39.46425, -0.43475, 1.268, 0, 1.138, 0, 'L-D: 24H'),
(507, 'logosGasolineras/logoDefault.png', 'SCVA VIRGEN DESAMPARADOS', 'AVENIDA DIPUTACIÓN, 74', 7229, 39.385444, -0.814667, 1.379, 0, 1.209, 0, 'L-D: 24H');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gasolinera_fav`
--

DROP TABLE IF EXISTS `gasolinera_fav`;
CREATE TABLE `gasolinera_fav` (
  `id_gasolinera` int NOT NULL,
  `id_usuario` int NOT NULL,
  `conf` tinyint(1) NOT NULL,
  `id_gasolinera_fav` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `gasolinera_fav`
--

INSERT INTO `gasolinera_fav` (`id_gasolinera`, `id_usuario`, `conf`, `id_gasolinera_fav`) VALUES
(336, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `fechaHora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `id_user`, `fechaHora`) VALUES
(1, 70, '2021-05-15 09:04:32'),
(2, 1, '2021-05-18 09:54:53'),
(3, 1, '2021-05-18 10:09:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios` (
  `id_municipio` int NOT NULL,
  `municipio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id_municipio`, `municipio`) VALUES
(6966, 'Ademuz'),
(6968, 'Agullent'),
(6969, 'Aielo de Malferit'),
(6971, 'Alaquàs'),
(6972, 'Albaida'),
(6973, 'Albal'),
(6974, 'Albalat de la Ribera'),
(6975, 'Albalat dels Sorells'),
(6977, 'Alberic'),
(6978, 'Alborache'),
(6979, 'Alboraya'),
(6980, 'Albuixech'),
(6982, 'Alcàsser'),
(6983, 'Alcublas'),
(6984, 'Alcúdia (l\')'),
(6985, 'Alcúdia de Crespins (l\')'),
(6986, 'Aldaia'),
(6987, 'Alfafar'),
(6989, 'Alfara del Patriarca'),
(6990, 'Alfarp'),
(6994, 'Algemesí'),
(6995, 'Algimia de Alfara'),
(6996, 'Alginet'),
(6997, 'Almàssera'),
(6998, 'Almiserà'),
(6999, 'Almoines'),
(7000, 'Almussafes'),
(7001, 'Alpuente'),
(7003, 'Alzira'),
(7004, 'Andilla'),
(7005, 'Anna'),
(7009, 'Ayora'),
(7011, 'Barxeta'),
(7013, 'Bellreguard'),
(7016, 'Benaguasil'),
(7018, 'Beneixida'),
(7019, 'Benetússer'),
(7020, 'Beniarjó'),
(7024, 'Benifaió'),
(7028, 'Benigánim'),
(7029, 'Benimodo'),
(7031, 'Beniparrell'),
(7033, 'Benisanó'),
(7036, 'Bétera'),
(7038, 'Bocairent'),
(7043, 'Buñol'),
(7044, 'Burjassot'),
(7046, 'Camporrobles'),
(7047, 'Canals'),
(7048, 'Canet d\'En Berenguer'),
(7049, 'Carcaixent'),
(7051, 'Carlet'),
(7055, 'Casinos'),
(7056, 'Castelló de Rugat'),
(7058, 'Castielfabib'),
(7059, 'Catadau'),
(7060, 'Catarroja'),
(7061, 'Caudete de las Fuentes'),
(7063, 'Chella'),
(7064, 'Chelva'),
(7066, 'Cheste'),
(7067, 'Chiva'),
(7068, 'Chulilla'),
(7070, 'Corbera'),
(7071, 'Cortes de Pallás'),
(7073, 'Cullera'),
(7074, 'Daimús'),
(7077, 'Eliana (l\')'),
(7079, 'Enguera'),
(7081, 'Estivella'),
(7085, 'Foios'),
(7086, 'Font de la Figuera (la)'),
(7087, 'Font d\'En Carròs (la)'),
(7088, 'Fontanars dels Alforins'),
(7090, 'Fuenterrobles'),
(7091, 'Gandia'),
(7094, 'Genovés'),
(7097, 'Godella'),
(7098, 'Godelleta'),
(7100, 'Guadasequies'),
(7101, 'Guadassuar'),
(7104, 'Jalance'),
(7105, 'Jarafuel'),
(7108, 'Llíria'),
(7110, 'Llocnou de Sant Jeroni'),
(7113, 'Llosa de Ranes (la)'),
(7115, 'Loriguilla'),
(7116, 'Losa del Obispo'),
(7118, 'Manises'),
(7120, 'Marines'),
(7121, 'Masalavés'),
(7122, 'Massalfassar'),
(7123, 'Massamagrell'),
(7124, 'Massanassa'),
(7125, 'Meliana'),
(7128, 'Mislata'),
(7129, 'Mogente/Moixent'),
(7130, 'Moncada'),
(7131, 'Montaverner'),
(7132, 'Montesa'),
(7134, 'Montroy'),
(7135, 'Monserrat'),
(7136, 'Museros'),
(7137, 'Náquera'),
(7138, 'Navarrés'),
(7139, 'Novelé/Novetlè'),
(7140, 'Oliva'),
(7141, 'Olleria (l\')'),
(7142, 'Olocau'),
(7143, 'Ontinyent'),
(7144, 'Otos'),
(7145, 'Paiporta'),
(7146, 'Palma de Gandía'),
(7149, 'Paterna'),
(7150, 'Pedralba'),
(7152, 'Picanya'),
(7153, 'Picassent'),
(7156, 'Pobla de Farnals (la)'),
(7157, 'Pobla de Vallbona (la)'),
(7158, 'Pobla del Duc (la)'),
(7159, 'Pobla Llarga (la)'),
(7160, 'Polinyà de Xúquer'),
(7162, 'Puçol'),
(7164, 'Puig'),
(7166, 'Quart de Poblet'),
(7168, 'Quatretonda'),
(7170, 'Rafelbuñol/Rafelbunyol'),
(7174, 'Real de Gandía'),
(7176, 'Requena'),
(7177, 'Riba-roja de Túria'),
(7183, 'Sagunto/Sagunt'),
(7185, 'San Antonio de Benagéber'),
(7187, 'Sedaví'),
(7193, 'Siete Aguas'),
(7194, 'Silla'),
(7195, 'Simat de la Valldigna'),
(7196, 'Sinarcas'),
(7197, 'Sollana'),
(7199, 'Sueca'),
(7202, 'Tavernes de la Valldigna'),
(7205, 'Titaguas'),
(7208, 'Torrent'),
(7211, 'Tuéjar'),
(7212, 'Turís'),
(7213, 'Utiel'),
(7214, 'Valencia'),
(7215, 'Vallada'),
(7219, 'Vilamarxant'),
(7220, 'Villalonga'),
(7221, 'Villanueva de Castellón'),
(7222, 'Villar del Arzobispo'),
(7223, 'Villargordo del Cabriel'),
(7224, 'Vinalesa'),
(7225, 'Xàtiva'),
(7226, 'Xeraco'),
(7228, 'Xirivella'),
(7229, 'Yátova');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `register_user`
--

DROP TABLE IF EXISTS `register_user`;
CREATE TABLE `register_user` (
  `id` int NOT NULL,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellidos` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `register_user`
--

INSERT INTO `register_user` (`id`, `dni`, `nombre`, `apellidos`, `email`, `password`, `cp`) VALUES
(1, '53890477M', 'Nacho', 'Calomarde Chirivella', 'nacho@proyectoalfa.es', '$2y$04$l.z2FgWvuEQloo1mwXcJ3OkqXPm3G.KzwgUsQXRW9azSiHl57kWpe', 46470),
(70, '89329856O', 'Javier', 'Perez Sanchez', 'javier@proyectoalfa.es', '$2y$04$qe7k92LeCb/Bq9O9/2EpQOPxoTqa0Xll5L3S1c8KKLrFDe8sH6s02', 78567);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gasolineras`
--
ALTER TABLE `gasolineras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_municipio_Index` (`id_municipio`);

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
  ADD PRIMARY KEY (`id_municipio`);

--
-- Indices de la tabla `register_user`
--
ALTER TABLE `register_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gasolineras`
--
ALTER TABLE `gasolineras`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT de la tabla `gasolinera_fav`
--
ALTER TABLE `gasolinera_fav`
  MODIFY `id_gasolinera_fav` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `register_user`
--
ALTER TABLE `register_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `gasolineras`
--
ALTER TABLE `gasolineras`
  ADD CONSTRAINT `gasolineras_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipios` (`id_municipio`) ON DELETE CASCADE ON UPDATE CASCADE;

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
