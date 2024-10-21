-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2024 a las 18:32:11
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
-- Base de datos: `dba_rescue_link`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambulancias`
--

CREATE TABLE `ambulancias` (
  `Ambulancias_id` int(5) NOT NULL,
  `Placa_Ambulancia` varchar(100) NOT NULL,
  `Hora_Salida_Ambulancia` varchar(50) NOT NULL,
  `Hora_Entrada_Ambulancia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `Conductores_id` int(5) NOT NULL,
  `Nombre_Conductor_1` varchar(50) NOT NULL,
  `Nombre_Conductor_2` varchar(50) NOT NULL,
  `Apellido_Conductor_1` varchar(50) NOT NULL,
  `Apellido_Conductor_2` varchar(50) NOT NULL,
  `Radicado_Licencia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emergencias`
--

CREATE TABLE `emergencias` (
  `Usuario` int(5) NOT NULL,
  `Emergencias_Alto_Riesgo` varchar(50) NOT NULL,
  `Emergencias_Riesgo_Medio` varchar(50) NOT NULL,
  `Emergencias_Bajo_Riesgo` varchar(50) NOT NULL,
  `Emergencias_Enfermedad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emergencias_alto_riesgo`
--

CREATE TABLE `emergencias_alto_riesgo` (
  `Emergencia_id` int(5) NOT NULL,
  `Paramedicos` varchar(100) NOT NULL,
  `Direccion_Emergencia` varchar(50) NOT NULL,
  `Conductor` varchar(50) NOT NULL,
  `Ambulancia_Placa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emergencias_bajo_riesgo`
--

CREATE TABLE `emergencias_bajo_riesgo` (
  `Emergencia_id` int(5) NOT NULL,
  `Especificaciones_Emergencia` int(5) NOT NULL,
  `Dirección_Emergencia` varchar(50) NOT NULL,
  `Paramedico` varchar(50) NOT NULL,
  `Conductor` varchar(50) NOT NULL,
  `Ambulancia_Placa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emergencias_enfermedad`
--

CREATE TABLE `emergencias_enfermedad` (
  `Emergencia_id` int(5) NOT NULL,
  `Enfermedad` varchar(50) NOT NULL,
  `Dirección_Emergencia` varchar(50) NOT NULL,
  `Paramedicos` varchar(50) NOT NULL,
  `Conductor` varchar(50) NOT NULL,
  `Ambulancia_Placa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emergencias_riesgo_medio`
--

CREATE TABLE `emergencias_riesgo_medio` (
  `Emergencia_id` int(5) NOT NULL,
  `Dirección_Emergencia` varchar(50) NOT NULL,
  `Paramedicos` varchar(50) NOT NULL,
  `Especificaciones_Emergencia` varchar(50) NOT NULL,
  `Conductor` varchar(50) NOT NULL,
  `Ambulancia_Placa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Usuario_id` int(5) NOT NULL,
  `Documento_id` varchar(50) NOT NULL,
  `Nombre Completo_id` varchar(50) NOT NULL,
  `Correo Electronico_id` varchar(50) NOT NULL,
  `Dirección Vivienda_id` varchar(50) NOT NULL,
  `Enfermedades_id` varchar(50) NOT NULL,
  `Clave Acceso_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Usuario_id`, `Documento_id`, `Nombre Completo_id`, `Correo Electronico_id`, `Dirección Vivienda_id`, `Enfermedades_id`, `Clave Acceso_id`) VALUES
(1, '1024353769', 'Luis David Yate Pulido', 'luis.yate@uniminuto.edu.co', 'Carrera 30 #56B Costado Norte', 'Ninguna', '102455AA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambulancias`
--
ALTER TABLE `ambulancias`
  ADD PRIMARY KEY (`Ambulancias_id`);

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`Conductores_id`);

--
-- Indices de la tabla `emergencias`
--
ALTER TABLE `emergencias`
  ADD PRIMARY KEY (`Usuario`);

--
-- Indices de la tabla `emergencias_alto_riesgo`
--
ALTER TABLE `emergencias_alto_riesgo`
  ADD PRIMARY KEY (`Emergencia_id`);

--
-- Indices de la tabla `emergencias_bajo_riesgo`
--
ALTER TABLE `emergencias_bajo_riesgo`
  ADD PRIMARY KEY (`Emergencia_id`);

--
-- Indices de la tabla `emergencias_enfermedad`
--
ALTER TABLE `emergencias_enfermedad`
  ADD PRIMARY KEY (`Emergencia_id`);

--
-- Indices de la tabla `emergencias_riesgo_medio`
--
ALTER TABLE `emergencias_riesgo_medio`
  ADD PRIMARY KEY (`Emergencia_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Usuario_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ambulancias`
--
ALTER TABLE `ambulancias`
  ADD CONSTRAINT `ambulancias_ibfk_1` FOREIGN KEY (`Ambulancias_id`) REFERENCES `emergencias` (`Usuario`);

--
-- Filtros para la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD CONSTRAINT `conductores_ibfk_1` FOREIGN KEY (`Conductores_id`) REFERENCES `ambulancias` (`Ambulancias_id`);

--
-- Filtros para la tabla `emergencias`
--
ALTER TABLE `emergencias`
  ADD CONSTRAINT `emergencias_ibfk_1` FOREIGN KEY (`Usuario`) REFERENCES `usuarios` (`Usuario_id`);

--
-- Filtros para la tabla `emergencias_alto_riesgo`
--
ALTER TABLE `emergencias_alto_riesgo`
  ADD CONSTRAINT `emergencias_alto_riesgo_ibfk_1` FOREIGN KEY (`Emergencia_id`) REFERENCES `emergencias` (`Usuario`);

--
-- Filtros para la tabla `emergencias_bajo_riesgo`
--
ALTER TABLE `emergencias_bajo_riesgo`
  ADD CONSTRAINT `emergencias_bajo_riesgo_ibfk_1` FOREIGN KEY (`Emergencia_id`) REFERENCES `emergencias` (`Usuario`);

--
-- Filtros para la tabla `emergencias_enfermedad`
--
ALTER TABLE `emergencias_enfermedad`
  ADD CONSTRAINT `emergencias_enfermedad_ibfk_1` FOREIGN KEY (`Emergencia_id`) REFERENCES `emergencias` (`Usuario`);

--
-- Filtros para la tabla `emergencias_riesgo_medio`
--
ALTER TABLE `emergencias_riesgo_medio`
  ADD CONSTRAINT `emergencias_riesgo_medio_ibfk_1` FOREIGN KEY (`Emergencia_id`) REFERENCES `emergencias` (`Usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
