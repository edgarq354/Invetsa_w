-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 24-03-2017 a las 16:56:35
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Invetsa`
--
CREATE DATABASE IF NOT EXISTS `Invetsa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Invetsa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion`
--

CREATE TABLE `accion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_hoja_verificacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compania`
--

CREATE TABLE `compania` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compania`
--

INSERT INTO `compania` (`id`, `nombre`) VALUES
(1, 'Jose Alfredo'),
(2, 'Nolberto Sanchez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_indice`
--

CREATE TABLE `control_indice` (
  `id` int(11) NOT NULL,
  `nro_pollos_vacunado` int(11) DEFAULT '0',
  `puntaje` int(11) DEFAULT '0',
  `nro_pollos_controlados` int(11) DEFAULT '0',
  `nro_pollos_no_vacunados` int(11) DEFAULT '0',
  `nro_heridos` int(11) DEFAULT '0',
  `nro_mojados` int(11) DEFAULT '0',
  `nro_mala_posicion` int(11) DEFAULT '0',
  `nro_pollos_vacunados_correctamente` int(11) DEFAULT '0',
  `id_hoja_verificacion` int(11) DEFAULT NULL,
  `id_vacunador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_acccion`
--

CREATE TABLE `detalle_acccion` (
  `id` int(11) NOT NULL,
  `esperado` varchar(50) DEFAULT NULL,
  `encontrado` varchar(50) DEFAULT NULL,
  `id_accion` int(11) DEFAULT NULL,
  `id_hoja_verificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_inspeccion_funcionamiento`
--

CREATE TABLE `detalle_inspeccion_funcionamiento` (
  `id` int(11) NOT NULL,
  `id_inspeccion` int(11) NOT NULL,
  `criterio_evaluacion` text,
  `estado` tinyint(4) DEFAULT NULL,
  `imei` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_inspeccion_funcionamiento`
--

INSERT INTO `detalle_inspeccion_funcionamiento` (`id`, `id_inspeccion`, `criterio_evaluacion`, `estado`, `imei`) VALUES
(1, 621, 'NIVELACION DE LA MAQUINA', 1, '000000000000000'),
(1, 622, 'MATERIALES UTILIZADOS', 1, '000000000000000'),
(1, 623, 'NIVELACION DE LA MAQUINA', 1, '000000000000000'),
(1, 624, 'MATERIALES UTILIZADOS', 1, '000000000000000'),
(1, 625, 'NIVELACION DE LA MAQUINA', 1, '000000000000000'),
(1, 626, 'MATERIALES UTILIZADOS', 1, '000000000000000'),
(1, 627, 'NIVELACION DE LA MAQUINA', 1, '000000000000000'),
(1, 628, 'MATERIALES UTILIZADOS', 1, '000000000000000'),
(2, 621, 'PRESION DE COMPRESORA', 1, '000000000000000'),
(2, 622, 'CAMBIO DE PIEZAS DESCARTABLES', 1, '000000000000000'),
(2, 623, 'PRESION DE COMPRESORA', 1, '000000000000000'),
(2, 624, 'CAMBIO DE PIEZAS DESCARTABLES', 1, '000000000000000'),
(2, 625, 'PRESION DE COMPRESORA', 1, '000000000000000'),
(2, 626, 'CAMBIO DE PIEZAS DESCARTABLES', 1, '000000000000000'),
(2, 627, 'PRESION DE COMPRESORA', 1, '000000000000000'),
(2, 628, 'CAMBIO DE PIEZAS DESCARTABLES', 1, '000000000000000'),
(3, 621, 'PRESION DE MAQUINA', 1, '000000000000000'),
(3, 622, 'ENJUAGUE DE TUBERIAS', 1, '000000000000000'),
(3, 623, 'PRESION DE MAQUINA', 1, '000000000000000'),
(3, 624, 'ENJUAGUE DE TUBERIAS', 1, '000000000000000'),
(3, 625, 'PRESION DE MAQUINA', 1, '000000000000000'),
(3, 626, 'ENJUAGUE DE TUBERIAS', 1, '000000000000000'),
(3, 627, 'PRESION DE MAQUINA', 1, '000000000000000'),
(3, 628, 'ENJUAGUE DE TUBERIAS', 1, '000000000000000'),
(4, 621, 'RETIRO DE CAJAS', 1, '000000000000000'),
(4, 622, 'ESTERILIZADO DE VALVULAS', 1, '000000000000000'),
(4, 623, 'RETIRO DE CAJAS', 1, '000000000000000'),
(4, 624, 'ESTERILIZADO DE VALVULAS', 1, '000000000000000'),
(4, 625, 'RETIRO DE CAJAS', 1, '000000000000000'),
(4, 626, 'ESTERILIZADO DE VALVULAS', 1, '000000000000000'),
(4, 627, 'RETIRO DE CAJAS', 1, '000000000000000'),
(4, 628, 'ESTERILIZADO DE VALVULAS', 1, '000000000000000'),
(5, 621, 'ACTIVACION DE FOSKI', 1, '000000000000000'),
(5, 622, 'ESTERILIZADO DE TUBERIAS', 1, '000000000000000'),
(5, 623, 'ACTIVACION DE FOSKI', 1, '000000000000000'),
(5, 624, 'ESTERILIZADO DE TUBERIAS', 1, '000000000000000'),
(5, 625, 'ACTIVACION DE FOSKI', 1, '000000000000000'),
(5, 626, 'ESTERILIZADO DE TUBERIAS', 1, '000000000000000'),
(5, 627, 'ACTIVACION DE FOSKI', 1, '000000000000000'),
(5, 628, 'ESTERILIZADO DE TUBERIAS', 1, '000000000000000'),
(6, 621, 'BOQUILLAS', 1, '000000000000000'),
(6, 622, 'ESTERILIZADO DE BOUILLAS', 1, '000000000000000'),
(6, 623, 'BOQUILLAS', 1, '000000000000000'),
(6, 624, 'ESTERILIZADO DE BOUILLAS', 1, '000000000000000'),
(6, 625, 'BOQUILLAS', 1, '000000000000000'),
(6, 626, 'ESTERILIZADO DE BOUILLAS', 1, '000000000000000'),
(6, 627, 'BOQUILLAS', 1, '000000000000000'),
(6, 628, 'ESTERILIZADO DE BOUILLAS', 1, '000000000000000'),
(7, 621, 'DISPERSION DE SOLUCION VACUNAL', 1, '000000000000000'),
(7, 622, 'SECADO', 1, '000000000000000'),
(7, 623, 'DISPERSION DE SOLUCION VACUNAL', 1, '000000000000000'),
(7, 624, 'SECADO', 1, '000000000000000'),
(7, 625, 'DISPERSION DE SOLUCION VACUNAL', 1, '000000000000000'),
(7, 626, 'SECADO', 1, '000000000000000'),
(7, 627, 'DISPERSION DE SOLUCION VACUNAL', 1, '000000000000000'),
(7, 628, 'SECADO', 1, '000000000000000'),
(8, 621, 'CALIBRACION', 1, '000000000000000'),
(8, 622, 'PROTECCION', 1, '000000000000000'),
(8, 623, 'CALIBRACION', 1, '000000000000000'),
(8, 624, 'PROTECCION', 1, '000000000000000'),
(8, 625, 'CALIBRACION', 1, '000000000000000'),
(8, 626, 'PROTECCION', 1, '000000000000000'),
(8, 627, 'CALIBRACION', 1, '000000000000000'),
(8, 628, 'PROTECCION', 1, '000000000000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_inspeccion_visual`
--

CREATE TABLE `detalle_inspeccion_visual` (
  `id` int(11) NOT NULL,
  `id_inspeccion` int(11) NOT NULL,
  `codigo` varchar(10) DEFAULT NULL,
  `descripcion` text,
  `estado` tinyint(4) DEFAULT NULL,
  `imei` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_inspeccion_visual`
--

INSERT INTO `detalle_inspeccion_visual` (`id`, `id_inspeccion`, `codigo`, `descripcion`, `estado`, `imei`) VALUES
(1, 1368, 'SV-2001', 'CUBIERTA DE ACRILICO', 1, '000000000000000'),
(1, 1369, 'SV-2001', 'CUBIERTA DE ACRILICO', 1, '000000000000000'),
(1, 1370, 'SV-2001', 'CUBIERTA DE ACRILICO', 1, '000000000000000'),
(1, 1371, 'SV-2001', 'CUBIERTA DE ACRILICO', 1, '000000000000000'),
(2, 1368, 'SV-602', 'MESA DE METAL', 1, '000000000000000'),
(2, 1369, 'SV-602', 'MESA DE METAL', 1, '000000000000000'),
(2, 1370, 'SV-602', 'MESA DE METAL', 1, '000000000000000'),
(2, 1371, 'SV-602', 'MESA DE METAL', 1, '000000000000000'),
(3, 1368, 'S/CODIGO', 'GARRUCHAS', 1, '000000000000000'),
(3, 1369, 'S/CODIGO', 'GARRUCHAS', 1, '000000000000000'),
(3, 1370, 'S/CODIGO', 'GARRUCHAS', 1, '000000000000000'),
(3, 1371, 'S/CODIGO', 'GARRUCHAS', 1, '000000000000000'),
(4, 1368, 'SV-100', 'ENSAMBLAJE DE JERINGA', 1, '000000000000000'),
(4, 1369, 'SV-100', 'ENSAMBLAJE DE JERINGA', 1, '000000000000000'),
(4, 1370, 'SV-100', 'ENSAMBLAJE DE JERINGA', 1, '000000000000000'),
(4, 1371, 'SV-100', 'ENSAMBLAJE DE JERINGA', 1, '000000000000000'),
(5, 1368, 'SV-101', 'BASE DE ALUMINIO', 1, '000000000000000'),
(5, 1369, 'SV-101', 'BASE DE ALUMINIO', 1, '000000000000000'),
(5, 1370, 'SV-101', 'BASE DE ALUMINIO', 1, '000000000000000'),
(5, 1371, 'SV-101', 'BASE DE ALUMINIO', 1, '000000000000000'),
(6, 1368, 'SV-106', 'VALVULA DE CONTROL', 1, '000000000000000'),
(6, 1369, 'SV-106', 'VALVULA DE CONTROL', 1, '000000000000000'),
(6, 1370, 'SV-106', 'VALVULA DE CONTROL', 1, '000000000000000'),
(6, 1371, 'SV-106', 'VALVULA DE CONTROL', 1, '000000000000000'),
(7, 1368, 'SV-1378', 'REPTS. DE VALVULA DE CONTROL', 1, '000000000000000'),
(7, 1369, 'SV-1378', 'REPTS. DE VALVULA DE CONTROL', 1, '000000000000000'),
(7, 1370, 'SV-1378', 'REPTS. DE VALVULA DE CONTROL', 1, '000000000000000'),
(7, 1371, 'SV-1378', 'REPTS. DE VALVULA DE CONTROL', 1, '000000000000000'),
(8, 1368, 'SV-934', 'ACOPLADURA RAPIDA DE VALVULA', 1, '000000000000000'),
(8, 1369, 'SV-934', 'ACOPLADURA RAPIDA DE VALVULA', 1, '000000000000000'),
(8, 1370, 'SV-934', 'ACOPLADURA RAPIDA DE VALVULA', 1, '000000000000000'),
(8, 1371, 'SV-934', 'ACOPLADURA RAPIDA DE VALVULA', 1, '000000000000000'),
(9, 1368, 'SV-104', 'SEGURO', 1, '000000000000000'),
(9, 1369, 'SV-104', 'SEGURO', 1, '000000000000000'),
(9, 1370, 'SV-104', 'SEGURO', 1, '000000000000000'),
(9, 1371, 'SV-104', 'SEGURO', 1, '000000000000000'),
(10, 1368, 'SV-1344', 'CILINDRO DE FUERZA', 1, '000000000000000'),
(10, 1369, 'SV-1344', 'CILINDRO DE FUERZA', 1, '000000000000000'),
(10, 1370, 'SV-1344', 'CILINDRO DE FUERZA', 1, '000000000000000'),
(10, 1371, 'SV-1344', 'CILINDRO DE FUERZA', 1, '000000000000000'),
(11, 1368, '5708', 'SUBPLACA ASOCIABLE', 1, '000000000000000'),
(11, 1369, '5708', 'SUBPLACA ASOCIABLE', 1, '000000000000000'),
(11, 1370, '5708', 'SUBPLACA ASOCIABLE', 1, '000000000000000'),
(11, 1371, '5708', 'SUBPLACA ASOCIABLE', 1, '000000000000000'),
(12, 1368, '5709', 'SUBPLACA SENCILLA', 1, '000000000000000'),
(12, 1369, '5709', 'SUBPLACA SENCILLA', 1, '000000000000000'),
(12, 1370, '5709', 'SUBPLACA SENCILLA', 1, '000000000000000'),
(12, 1371, '5709', 'SUBPLACA SENCILLA', 1, '000000000000000'),
(13, 1368, 'SV-2008', 'FRASCO NALGENE', 1, '000000000000000'),
(13, 1369, 'SV-2008', 'FRASCO NALGENE', 1, '000000000000000'),
(13, 1370, 'SV-2008', 'FRASCO NALGENE', 1, '000000000000000'),
(13, 1371, 'SV-2008', 'FRASCO NALGENE', 1, '000000000000000'),
(14, 1368, 'SV-607', 'ACRILICOS FIJADORES DE FRASCOS', 1, '000000000000000'),
(14, 1369, 'SV-607', 'ACRILICOS FIJADORES DE FRASCOS', 1, '000000000000000'),
(14, 1370, 'SV-607', 'ACRILICOS FIJADORES DE FRASCOS', 1, '000000000000000'),
(14, 1371, 'SV-607', 'ACRILICOS FIJADORES DE FRASCOS', 1, '000000000000000'),
(15, 1368, 'SV-2002', 'ENSAMBLAJE DE BOQUILLAS', 1, '000000000000000'),
(15, 1369, 'SV-2002', 'ENSAMBLAJE DE BOQUILLAS', 1, '000000000000000'),
(15, 1370, 'SV-2002', 'ENSAMBLAJE DE BOQUILLAS', 1, '000000000000000'),
(15, 1371, 'SV-2002', 'ENSAMBLAJE DE BOQUILLAS', 1, '000000000000000'),
(16, 1368, 'SV-1030', 'ACOPLADORA 90', 1, '000000000000000'),
(16, 1369, 'SV-1030', 'ACOPLADORA 90', 1, '000000000000000'),
(16, 1370, 'SV-1030', 'ACOPLADORA 90', 1, '000000000000000'),
(16, 1371, 'SV-1030', 'ACOPLADORA 90', 1, '000000000000000'),
(17, 1368, 'SV-933', 'ACOPLADORA TEE', 1, '000000000000000'),
(17, 1369, 'SV-933', 'ACOPLADORA TEE', 1, '000000000000000'),
(17, 1370, 'SV-933', 'ACOPLADORA TEE', 1, '000000000000000'),
(17, 1371, 'SV-933', 'ACOPLADORA TEE', 1, '000000000000000'),
(18, 1368, 'SV-936', 'BOQUILLAS', 1, '000000000000000'),
(18, 1369, 'SV-936', 'BOQUILLAS', 1, '000000000000000'),
(18, 1370, 'SV-936', 'BOQUILLAS', 1, '000000000000000'),
(18, 1371, 'SV-936', 'BOQUILLAS', 1, '000000000000000'),
(19, 1368, 'SV-611', 'SOSTENEDOR DE BOQUILLA', 1, '000000000000000'),
(19, 1369, 'SV-611', 'SOSTENEDOR DE BOQUILLA', 1, '000000000000000'),
(19, 1370, 'SV-611', 'SOSTENEDOR DE BOQUILLA', 1, '000000000000000'),
(19, 1371, 'SV-611', 'SOSTENEDOR DE BOQUILLA', 1, '000000000000000'),
(20, 1368, 'SV-608', 'CLAMP. ADHESIVOS DE 1/4', 1, '000000000000000'),
(20, 1369, 'SV-608', 'CLAMP. ADHESIVOS DE 1/4', 1, '000000000000000'),
(20, 1370, 'SV-608', 'CLAMP. ADHESIVOS DE 1/4', 1, '000000000000000'),
(20, 1371, 'SV-608', 'CLAMP. ADHESIVOS DE 1/4', 1, '000000000000000'),
(21, 1368, 'SV-609', 'LOGO DE SPRA-VAC', 1, '000000000000000'),
(21, 1369, 'SV-609', 'LOGO DE SPRA-VAC', 1, '000000000000000'),
(21, 1370, 'SV-609', 'LOGO DE SPRA-VAC', 1, '000000000000000'),
(21, 1371, 'SV-609', 'LOGO DE SPRA-VAC', 1, '000000000000000'),
(22, 1368, 'SV-605', 'CORTINAS', 1, '000000000000000'),
(22, 1369, 'SV-605', 'CORTINAS', 1, '000000000000000'),
(22, 1370, 'SV-605', 'CORTINAS', 1, '000000000000000'),
(22, 1371, 'SV-605', 'CORTINAS', 1, '000000000000000'),
(23, 1368, 'SV-606', 'VARILLAS', 1, '000000000000000'),
(23, 1369, 'SV-606', 'VARILLAS', 1, '000000000000000'),
(23, 1370, 'SV-606', 'VARILLAS', 1, '000000000000000'),
(23, 1371, 'SV-606', 'VARILLAS', 1, '000000000000000'),
(24, 1368, 'SV-2011', 'FOSKI SWITCH', 1, '000000000000000'),
(24, 1369, 'SV-2011', 'FOSKI SWITCH', 1, '000000000000000'),
(24, 1370, 'SV-2011', 'FOSKI SWITCH', 1, '000000000000000'),
(24, 1371, 'SV-2011', 'FOSKI SWITCH', 1, '000000000000000'),
(25, 1368, 'SV-1139', 'SEGURO DE FOSKI', 1, '000000000000000'),
(25, 1369, 'SV-1139', 'SEGURO DE FOSKI', 1, '000000000000000'),
(25, 1370, 'SV-1139', 'SEGURO DE FOSKI', 1, '000000000000000'),
(25, 1371, 'SV-1139', 'SEGURO DE FOSKI', 1, '000000000000000'),
(26, 1368, 'SV-2004', 'ENSAMBLAJE FILTRO REGULADOR', 1, '000000000000000'),
(26, 1369, 'SV-2004', 'ENSAMBLAJE FILTRO REGULADOR', 1, '000000000000000'),
(26, 1370, 'SV-2004', 'ENSAMBLAJE FILTRO REGULADOR', 1, '000000000000000'),
(26, 1371, 'SV-2004', 'ENSAMBLAJE FILTRO REGULADOR', 1, '000000000000000'),
(27, 1368, 'SV-809', 'REGULADOR DE AIRE', 1, '000000000000000'),
(27, 1369, 'SV-809', 'REGULADOR DE AIRE', 1, '000000000000000'),
(27, 1370, 'SV-809', 'REGULADOR DE AIRE', 1, '000000000000000'),
(27, 1371, 'SV-809', 'REGULADOR DE AIRE', 1, '000000000000000'),
(28, 1368, 'SV-810', 'MANOMETRO', 1, '000000000000000'),
(28, 1369, 'SV-810', 'MANOMETRO', 1, '000000000000000'),
(28, 1370, 'SV-810', 'MANOMETRO', 1, '000000000000000'),
(28, 1371, 'SV-810', 'MANOMETRO', 1, '000000000000000'),
(29, 1368, 'S720', 'CONECTOR RAPIDO 5/32', 1, '000000000000000'),
(29, 1369, 'S720', 'CONECTOR RAPIDO 5/32', 1, '000000000000000'),
(29, 1370, 'S720', 'CONECTOR RAPIDO 5/32', 1, '000000000000000'),
(29, 1371, 'S720', 'CONECTOR RAPIDO 5/32', 1, '000000000000000'),
(30, 1368, 'SV-817', 'CONECTOR RAPIDO HEMBRA', 1, '000000000000000'),
(30, 1369, 'SV-817', 'CONECTOR RAPIDO HEMBRA', 1, '000000000000000'),
(30, 1370, 'SV-817', 'CONECTOR RAPIDO HEMBRA', 1, '000000000000000'),
(30, 1371, 'SV-817', 'CONECTOR RAPIDO HEMBRA', 1, '000000000000000'),
(31, 1368, 'SV-818', 'CONECTOR RAPIDO MACHO', 1, '000000000000000'),
(31, 1369, 'SV-818', 'CONECTOR RAPIDO MACHO', 1, '000000000000000'),
(31, 1370, 'SV-818', 'CONECTOR RAPIDO MACHO', 1, '000000000000000'),
(31, 1371, 'SV-818', 'CONECTOR RAPIDO MACHO', 1, '000000000000000'),
(32, 1368, 'SV-1163', 'MENISCO CALIBRADOR', 1, '000000000000000'),
(32, 1369, 'SV-1163', 'MENISCO CALIBRADOR', 1, '000000000000000'),
(32, 1370, 'SV-1163', 'MENISCO CALIBRADOR', 1, '000000000000000'),
(32, 1371, 'SV-1163', 'MENISCO CALIBRADOR', 1, '000000000000000'),
(33, 1368, '5083', 'JERINGA DESCARTABLE', 1, '000000000000000'),
(33, 1369, '5083', 'JERINGA DESCARTABLE', 1, '000000000000000'),
(33, 1370, '5083', 'JERINGA DESCARTABLE', 1, '000000000000000'),
(33, 1371, '5083', 'JERINGA DESCARTABLE', 1, '000000000000000'),
(34, 1368, '5441', 'TUBERIA DE POLYVINILO', 1, '000000000000000'),
(34, 1369, '5441', 'TUBERIA DE POLYVINILO', 1, '000000000000000'),
(34, 1370, '5441', 'TUBERIA DE POLYVINILO', 1, '000000000000000'),
(34, 1371, '5441', 'TUBERIA DE POLYVINILO', 1, '000000000000000'),
(35, 1368, '3520', 'TUBERIA PEQUEÃ‘A', 1, '000000000000000'),
(35, 1369, '3520', 'TUBERIA PEQUEÃ‘A', 1, '000000000000000'),
(35, 1370, '3520', 'TUBERIA PEQUEÃ‘A', 1, '000000000000000'),
(35, 1371, '3520', 'TUBERIA PEQUEÃ‘A', 1, '000000000000000'),
(36, 1368, 'SV-1110', 'TUBERIA DE TEFLON', 1, '000000000000000'),
(36, 1369, 'SV-1110', 'TUBERIA DE TEFLON', 1, '000000000000000'),
(36, 1370, 'SV-1110', 'TUBERIA DE TEFLON', 1, '000000000000000'),
(36, 1371, 'SV-1110', 'TUBERIA DE TEFLON', 1, '000000000000000'),
(37, 1368, 'SV-1115', 'TUBERIA LATEX', 1, '000000000000000'),
(37, 1369, 'SV-1115', 'TUBERIA LATEX', 1, '000000000000000'),
(37, 1370, 'SV-1115', 'TUBERIA LATEX', 1, '000000000000000'),
(37, 1371, 'SV-1115', 'TUBERIA LATEX', 1, '000000000000000'),
(38, 1368, '', 'MOTOR', 3, '000000000000000'),
(38, 1369, '', 'MOTOR', 2, '000000000000000'),
(38, 1370, '', 'MOTOR', 2, '000000000000000'),
(38, 1371, '', 'MOTOR', 2, '000000000000000'),
(39, 1368, '', 'MANOMETRO', 1, '000000000000000'),
(39, 1369, '', 'MANOMETRO', 1, '000000000000000'),
(39, 1370, '', 'MANOMETRO', 1, '000000000000000'),
(39, 1371, '', 'MANOMETRO', 1, '000000000000000'),
(40, 1368, '', 'REGULADOR DE AIRE', 1, '000000000000000'),
(40, 1369, '', 'REGULADOR DE AIRE', 1, '000000000000000'),
(40, 1370, '', 'REGULADOR DE AIRE', 1, '000000000000000'),
(40, 1371, '', 'REGULADOR DE AIRE', 1, '000000000000000'),
(41, 1368, '', 'TANQUE DE COMPRESORA', 3, '000000000000000'),
(41, 1369, '', 'TANQUE DE COMPRESORA', 2, '000000000000000'),
(41, 1370, '', 'TANQUE DE COMPRESORA', 2, '000000000000000'),
(41, 1371, '', 'TANQUE DE COMPRESORA', 2, '000000000000000'),
(42, 1368, '', 'RUEDAS', 1, '000000000000000'),
(42, 1369, '', 'RUEDAS', 2, '000000000000000'),
(42, 1370, '', 'RUEDAS', 2, '000000000000000'),
(42, 1371, '', 'RUEDAS', 2, '000000000000000'),
(43, 1368, '', 'CABLES ELECTRICOS', 1, '000000000000000'),
(43, 1369, '', 'CABLES ELECTRICOS', 1, '000000000000000'),
(43, 1370, '', 'CABLES ELECTRICOS', 1, '000000000000000'),
(43, 1371, '', 'CABLES ELECTRICOS', 1, '000000000000000'),
(44, 1368, '', 'VALVULA DE PURGAR', 1, '000000000000000'),
(44, 1369, '', 'VALVULA DE PURGAR', 1, '000000000000000'),
(44, 1370, '', 'VALVULA DE PURGAR', 1, '000000000000000'),
(44, 1371, '', 'VALVULA DE PURGAR', 1, '000000000000000'),
(45, 1368, '', 'MANGUERA', 1, '000000000000000'),
(45, 1369, '', 'MANGUERA', 1, '000000000000000'),
(45, 1370, '', 'MANGUERA', 1, '000000000000000'),
(45, 1371, '', 'MANGUERA', 1, '000000000000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_limpieza`
--

CREATE TABLE `detalle_limpieza` (
  `id` int(11) NOT NULL,
  `id_inspeccion` int(11) NOT NULL,
  `criterio_evaluacion` text,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_puntuacion`
--

CREATE TABLE `detalle_puntuacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `id_puntuacion` int(11) NOT NULL,
  `id_sistema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`) VALUES
(1, 'grayhatcorp'),
(2, 'pollos Kiky'),
(3, 'Nano'),
(4, 'Norte Santines'),
(5, 'isolmedia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galpon`
--

CREATE TABLE `galpon` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `id_granja` int(11) NOT NULL,
  `cantidad_pollo` int(11) DEFAULT NULL,
  `codigo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `galpon`
--

INSERT INTO `galpon` (`id`, `id_empresa`, `id_granja`, `cantidad_pollo`, `codigo`) VALUES
(1, 1, 1, 100, 'A1'),
(8, 2, 2, 150, 'A1'),
(9, 2, 2, 156, 'A2'),
(10, 1, 1, 100, 'A2'),
(11, 1, 1, 100, 'A3'),
(12, 1, 1, 100, 'A4'),
(13, 1, 1, 100, 'A5'),
(14, 1, 1, 100, 'A6'),
(15, 1, 1, 100, 'A7'),
(16, 1, 1, 100, 'A8'),
(17, 1, 1, 100, 'A9'),
(18, 1, 1, 100, 'B1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `granja`
--

CREATE TABLE `granja` (
  `id` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `zona` text,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `granja`
--

INSERT INTO `granja` (`id`, `id_empresa`, `zona`, `nombre`) VALUES
(1, 1, 'Los MOntes.', 'TOk'),
(2, 2, 'Los mangales', 'Fane'),
(3, 1, 'Los Prado.', 'Tonki'),
(4, 1, 'El Tajibo.', 'Frame'),
(5, 1, 'El Brillante.', 'Brilan'),
(6, 2, 'Ciudad de Montero', 'SinBa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoja_verificacion`
--

CREATE TABLE `hoja_verificacion` (
  `id` int(11) NOT NULL,
  `hora_ingreso` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `revision` varchar(20) DEFAULT NULL,
  `firma_invetsa` text,
  `firma_empresa` text,
  `productividad` decimal(4,2) DEFAULT NULL,
  `sumatoria_manipulacion_vacuna` decimal(10,2) DEFAULT NULL,
  `promedio_mantenimiento` decimal(10,2) DEFAULT NULL,
  `puntaje_control_indice` decimal(10,2) DEFAULT NULL,
  `id_galpon` int(11) DEFAULT NULL,
  `id_granja` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `imei` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inspeccion_funcionamiento`
--

CREATE TABLE `inspeccion_funcionamiento` (
  `id` int(11) NOT NULL,
  `observaciones` text,
  `frecuencia_de_uso` text,
  `id_servicio` int(11) DEFAULT NULL,
  `id_sqlite` int(11) NOT NULL,
  `IMEI` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inspeccion_funcionamiento`
--

INSERT INTO `inspeccion_funcionamiento` (`id`, `observaciones`, `frecuencia_de_uso`, `id_servicio`, `id_sqlite`, `IMEI`) VALUES
(621, '', '', 206, 1, '000000000000000'),
(622, '', '', 206, 2, '000000000000000'),
(623, '', '', 207, 3, '000000000000000'),
(624, '', '', 207, 4, '000000000000000'),
(625, '', '', 208, 5, '000000000000000'),
(626, '', '', 208, 6, '000000000000000'),
(627, '', '', 209, 7, '000000000000000'),
(628, '', '', 209, 8, '000000000000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inspeccion_visual`
--

CREATE TABLE `inspeccion_visual` (
  `id` int(11) NOT NULL,
  `observaciones` text,
  `piesas_cambiadas` text,
  `id_servicio` int(11) DEFAULT NULL,
  `id_sqlite` int(11) NOT NULL,
  `imei` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inspeccion_visual`
--

INSERT INTO `inspeccion_visual` (`id`, `observaciones`, `piesas_cambiadas`, `id_servicio`, `id_sqlite`, `imei`) VALUES
(1368, '', '', 206, 1, '000000000000000'),
(1369, '', '', 207, 2, '000000000000000'),
(1370, '', '', 208, 3, '000000000000000'),
(1371, '', '', 209, 4, '000000000000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `limpieza`
--

CREATE TABLE `limpieza` (
  `id` int(11) NOT NULL,
  `observaciones` text,
  `cantidad_aves_vacunadas` text,
  `id_servicio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manipulacion_dilucion`
--

CREATE TABLE `manipulacion_dilucion` (
  `id` int(11) NOT NULL,
  `descripcion` text,
  `puntaje` decimal(2,2) DEFAULT NULL,
  `id_hoja_verificacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento_limpieza`
--

CREATE TABLE `mantenimiento_limpieza` (
  `id` int(11) NOT NULL,
  `nro_twin_shot_zootec` int(11) DEFAULT NULL,
  `irregularidades` int(11) DEFAULT NULL,
  `id_hoja_verificacion` int(11) DEFAULT NULL,
  `id_vacunador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquina`
--

CREATE TABLE `maquina` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maquina`
--

INSERT INTO `maquina` (`id`, `codigo`, `nombre`) VALUES
(1, 'A001', 'xyz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peso`
--

CREATE TABLE `peso` (
  `id` int(11) NOT NULL,
  `peso_corporal` decimal(2,2) DEFAULT NULL,
  `pedo_bursa` decimal(2,2) DEFAULT NULL,
  `peso_brazo` decimal(2,2) DEFAULT NULL,
  `peso_timo` decimal(2,2) DEFAULT NULL,
  `peso_higado` decimal(2,2) DEFAULT NULL,
  `indice_bursal` decimal(4,2) DEFAULT NULL,
  `indice_timico` decimal(4,2) DEFAULT NULL,
  `indice_hepatico` decimal(4,2) DEFAULT NULL,
  `bursometro` decimal(4,2) DEFAULT NULL,
  `id_sistema` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntuacion`
--

CREATE TABLE `puntuacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_sistema` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio_mantenimiento`
--

CREATE TABLE `servicio_mantenimiento` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hora_ingreso` time DEFAULT NULL,
  `hora_salidas` time DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `revision` varchar(20) DEFAULT NULL,
  `firma_jefe_planta` text,
  `firma_invetsa` text,
  `id_maquina` int(11) DEFAULT NULL,
  `id_tecnico` int(11) DEFAULT NULL,
  `id_compania` int(11) DEFAULT NULL,
  `id_sqlite` int(11) NOT NULL,
  `imei` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `servicio_mantenimiento`
--

INSERT INTO `servicio_mantenimiento` (`id`, `fecha`, `hora_ingreso`, `hora_salidas`, `codigo`, `revision`, `firma_jefe_planta`, `firma_invetsa`, `id_maquina`, `id_tecnico`, `id_compania`, `id_sqlite`, `imei`) VALUES
(206, '0000-00-00 00:00:00', '19:07:00', '13:07:00', 'R52', 'ninguna', 'firmas_jefe', 'firma_invetsa', 1, 1, 1, 1, '000000000000000'),
(207, '0000-00-00 00:00:00', '13:17:00', '13:17:00', 'R52', 'ninguna', 'firmas_jefe', 'firma_invetsa', 1, 1, 1, 2, '000000000000000'),
(208, '0000-00-00 00:00:00', '13:17:00', '13:17:00', 'R52', 'ninguna', 'firmas_jefe', 'firma_invetsa', 1, 1, 1, 3, '000000000000000'),
(209, '0000-00-00 00:00:00', '13:17:00', '13:17:00', 'R52', 'ninguna', 'firmas_jefe', 'firma_invetsa', 1, 1, 1, 4, '000000000000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_integral`
--

CREATE TABLE `sistema_integral` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `revision` varchar(20) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  `observaciones` text,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nro_pollos` int(11) NOT NULL,
  `imagen1` text,
  `imagen2` text,
  `imagen3` text,
  `imagen4` text,
  `imagen5` text,
  `id_galpon` int(11) DEFAULT NULL,
  `id_granja` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_sqlite` int(11) NOT NULL,
  `imei` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnico`
--

CREATE TABLE `tecnico` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tecnico`
--

INSERT INTO `tecnico` (`id`, `nombre`, `codigo`) VALUES
(1, 'edgar Elio', 1234),
(2, 'Fernando', 12345);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacunador`
--

CREATE TABLE `vacunador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vacunador`
--

INSERT INTO `vacunador` (`id`, `nombre`) VALUES
(1, 'Caleft'),
(2, 'Maria'),
(3, 'Efrain');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accion`
--
ALTER TABLE `accion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hoja_verificacion` (`id_hoja_verificacion`);

--
-- Indices de la tabla `compania`
--
ALTER TABLE `compania`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `control_indice`
--
ALTER TABLE `control_indice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hoja_verificacion` (`id_hoja_verificacion`),
  ADD KEY `id_vacunador` (`id_vacunador`);

--
-- Indices de la tabla `detalle_acccion`
--
ALTER TABLE `detalle_acccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_accion` (`id_accion`);

--
-- Indices de la tabla `detalle_inspeccion_funcionamiento`
--
ALTER TABLE `detalle_inspeccion_funcionamiento`
  ADD PRIMARY KEY (`id`,`id_inspeccion`),
  ADD KEY `id_inspeccion` (`id_inspeccion`);

--
-- Indices de la tabla `detalle_inspeccion_visual`
--
ALTER TABLE `detalle_inspeccion_visual`
  ADD PRIMARY KEY (`id`,`id_inspeccion`),
  ADD KEY `id_inspeccion` (`id_inspeccion`);

--
-- Indices de la tabla `detalle_limpieza`
--
ALTER TABLE `detalle_limpieza`
  ADD PRIMARY KEY (`id`,`id_inspeccion`),
  ADD KEY `id_inspeccion` (`id_inspeccion`);

--
-- Indices de la tabla `detalle_puntuacion`
--
ALTER TABLE `detalle_puntuacion`
  ADD PRIMARY KEY (`id`,`id_puntuacion`),
  ADD KEY `id_puntuacion` (`id_puntuacion`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galpon`
--
ALTER TABLE `galpon`
  ADD PRIMARY KEY (`id`,`id_granja`,`id_empresa`),
  ADD KEY `id_granja` (`id_granja`,`id_empresa`);

--
-- Indices de la tabla `granja`
--
ALTER TABLE `granja`
  ADD PRIMARY KEY (`id`,`id_empresa`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `hoja_verificacion`
--
ALTER TABLE `hoja_verificacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_galpon` (`id_galpon`,`id_granja`,`id_empresa`);

--
-- Indices de la tabla `inspeccion_funcionamiento`
--
ALTER TABLE `inspeccion_funcionamiento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `inspeccion_visual`
--
ALTER TABLE `inspeccion_visual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `limpieza`
--
ALTER TABLE `limpieza`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_servicio` (`id_servicio`);

--
-- Indices de la tabla `manipulacion_dilucion`
--
ALTER TABLE `manipulacion_dilucion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hoja_verificacion` (`id_hoja_verificacion`);

--
-- Indices de la tabla `mantenimiento_limpieza`
--
ALTER TABLE `mantenimiento_limpieza`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hoja_verificacion` (`id_hoja_verificacion`),
  ADD KEY `id_vacunador` (`id_vacunador`);

--
-- Indices de la tabla `maquina`
--
ALTER TABLE `maquina`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peso`
--
ALTER TABLE `peso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sistema` (`id_sistema`);

--
-- Indices de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sistema` (`id_sistema`);

--
-- Indices de la tabla `servicio_mantenimiento`
--
ALTER TABLE `servicio_mantenimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_maquina` (`id_maquina`),
  ADD KEY `id_tecnico` (`id_tecnico`),
  ADD KEY `id_compania` (`id_compania`);

--
-- Indices de la tabla `sistema_integral`
--
ALTER TABLE `sistema_integral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_galpon` (`id_galpon`,`id_granja`,`id_empresa`);

--
-- Indices de la tabla `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vacunador`
--
ALTER TABLE `vacunador`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accion`
--
ALTER TABLE `accion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `compania`
--
ALTER TABLE `compania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `control_indice`
--
ALTER TABLE `control_indice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_acccion`
--
ALTER TABLE `detalle_acccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_limpieza`
--
ALTER TABLE `detalle_limpieza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `detalle_puntuacion`
--
ALTER TABLE `detalle_puntuacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `galpon`
--
ALTER TABLE `galpon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `granja`
--
ALTER TABLE `granja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `hoja_verificacion`
--
ALTER TABLE `hoja_verificacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inspeccion_funcionamiento`
--
ALTER TABLE `inspeccion_funcionamiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=629;
--
-- AUTO_INCREMENT de la tabla `inspeccion_visual`
--
ALTER TABLE `inspeccion_visual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1372;
--
-- AUTO_INCREMENT de la tabla `limpieza`
--
ALTER TABLE `limpieza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `manipulacion_dilucion`
--
ALTER TABLE `manipulacion_dilucion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `mantenimiento_limpieza`
--
ALTER TABLE `mantenimiento_limpieza`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `maquina`
--
ALTER TABLE `maquina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `peso`
--
ALTER TABLE `peso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `servicio_mantenimiento`
--
ALTER TABLE `servicio_mantenimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
--
-- AUTO_INCREMENT de la tabla `sistema_integral`
--
ALTER TABLE `sistema_integral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tecnico`
--
ALTER TABLE `tecnico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `vacunador`
--
ALTER TABLE `vacunador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accion`
--
ALTER TABLE `accion`
  ADD CONSTRAINT `accion_ibfk_1` FOREIGN KEY (`id_hoja_verificacion`) REFERENCES `hoja_verificacion` (`id`);

--
-- Filtros para la tabla `control_indice`
--
ALTER TABLE `control_indice`
  ADD CONSTRAINT `control_indice_ibfk_1` FOREIGN KEY (`id_hoja_verificacion`) REFERENCES `hoja_verificacion` (`id`),
  ADD CONSTRAINT `control_indice_ibfk_2` FOREIGN KEY (`id_vacunador`) REFERENCES `vacunador` (`id`);

--
-- Filtros para la tabla `detalle_acccion`
--
ALTER TABLE `detalle_acccion`
  ADD CONSTRAINT `detalle_acccion_ibfk_1` FOREIGN KEY (`id_accion`) REFERENCES `accion` (`id`);

--
-- Filtros para la tabla `detalle_inspeccion_funcionamiento`
--
ALTER TABLE `detalle_inspeccion_funcionamiento`
  ADD CONSTRAINT `detalle_inspeccion_funcionamiento_ibfk_1` FOREIGN KEY (`id_inspeccion`) REFERENCES `inspeccion_funcionamiento` (`id`);

--
-- Filtros para la tabla `detalle_inspeccion_visual`
--
ALTER TABLE `detalle_inspeccion_visual`
  ADD CONSTRAINT `detalle_inspeccion_visual_ibfk_1` FOREIGN KEY (`id_inspeccion`) REFERENCES `inspeccion_visual` (`id`);

--
-- Filtros para la tabla `detalle_limpieza`
--
ALTER TABLE `detalle_limpieza`
  ADD CONSTRAINT `detalle_limpieza_ibfk_1` FOREIGN KEY (`id_inspeccion`) REFERENCES `limpieza` (`id`);

--
-- Filtros para la tabla `detalle_puntuacion`
--
ALTER TABLE `detalle_puntuacion`
  ADD CONSTRAINT `detalle_puntuacion_ibfk_1` FOREIGN KEY (`id_puntuacion`) REFERENCES `puntuacion` (`id`);

--
-- Filtros para la tabla `galpon`
--
ALTER TABLE `galpon`
  ADD CONSTRAINT `galpon_ibfk_1` FOREIGN KEY (`id_granja`,`id_empresa`) REFERENCES `granja` (`id`, `id_empresa`);

--
-- Filtros para la tabla `granja`
--
ALTER TABLE `granja`
  ADD CONSTRAINT `granja_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`);

--
-- Filtros para la tabla `hoja_verificacion`
--
ALTER TABLE `hoja_verificacion`
  ADD CONSTRAINT `hoja_verificacion_ibfk_1` FOREIGN KEY (`id_galpon`,`id_granja`,`id_empresa`) REFERENCES `galpon` (`id`, `id_granja`, `id_empresa`);

--
-- Filtros para la tabla `inspeccion_funcionamiento`
--
ALTER TABLE `inspeccion_funcionamiento`
  ADD CONSTRAINT `inspeccion_funcionamiento_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio_mantenimiento` (`id`);

--
-- Filtros para la tabla `inspeccion_visual`
--
ALTER TABLE `inspeccion_visual`
  ADD CONSTRAINT `inspeccion_visual_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio_mantenimiento` (`id`);

--
-- Filtros para la tabla `limpieza`
--
ALTER TABLE `limpieza`
  ADD CONSTRAINT `limpieza_ibfk_1` FOREIGN KEY (`id_servicio`) REFERENCES `servicio_mantenimiento` (`id`);

--
-- Filtros para la tabla `manipulacion_dilucion`
--
ALTER TABLE `manipulacion_dilucion`
  ADD CONSTRAINT `manipulacion_dilucion_ibfk_1` FOREIGN KEY (`id_hoja_verificacion`) REFERENCES `hoja_verificacion` (`id`);

--
-- Filtros para la tabla `mantenimiento_limpieza`
--
ALTER TABLE `mantenimiento_limpieza`
  ADD CONSTRAINT `mantenimiento_limpieza_ibfk_1` FOREIGN KEY (`id_hoja_verificacion`) REFERENCES `hoja_verificacion` (`id`),
  ADD CONSTRAINT `mantenimiento_limpieza_ibfk_2` FOREIGN KEY (`id_vacunador`) REFERENCES `vacunador` (`id`);

--
-- Filtros para la tabla `peso`
--
ALTER TABLE `peso`
  ADD CONSTRAINT `peso_ibfk_1` FOREIGN KEY (`id_sistema`) REFERENCES `sistema_integral` (`id`);

--
-- Filtros para la tabla `puntuacion`
--
ALTER TABLE `puntuacion`
  ADD CONSTRAINT `puntuacion_ibfk_1` FOREIGN KEY (`id_sistema`) REFERENCES `sistema_integral` (`id`);

--
-- Filtros para la tabla `servicio_mantenimiento`
--
ALTER TABLE `servicio_mantenimiento`
  ADD CONSTRAINT `servicio_mantenimiento_ibfk_1` FOREIGN KEY (`id_maquina`) REFERENCES `maquina` (`id`),
  ADD CONSTRAINT `servicio_mantenimiento_ibfk_2` FOREIGN KEY (`id_tecnico`) REFERENCES `tecnico` (`id`),
  ADD CONSTRAINT `servicio_mantenimiento_ibfk_3` FOREIGN KEY (`id_compania`) REFERENCES `compania` (`id`);

--
-- Filtros para la tabla `sistema_integral`
--
ALTER TABLE `sistema_integral`
  ADD CONSTRAINT `sistema_integral_ibfk_1` FOREIGN KEY (`id_galpon`,`id_granja`,`id_empresa`) REFERENCES `galpon` (`id`, `id_granja`, `id_empresa`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
