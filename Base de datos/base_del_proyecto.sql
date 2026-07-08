-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2026 a las 21:10:04
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
-- Base de datos: `base_proyecto_wed`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `comentario` varchar(400) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_publicacion`, `nombre_usuario`, `comentario`, `fecha`) VALUES
(4, 50, 'tomas1234', 'eeeee', '2026-07-05'),
(5, 50, 'tomas1234', 'estuvo muy bueno y por el precio que pide la verdad supero mis expetativas.', '2026-07-05'),
(6, 50, 'tomas1234', 'hhh', '2026-07-05'),
(7, 50, 'tomas1234', 'ssdd', '2026-07-05'),
(8, 50, 'tomas1234', 'aaaaa', '2026-07-05'),
(9, 53, 'tomas1234', 'Es una persona muy confiable.', '2026-07-06'),
(10, 51, 'Pedro Perez', 'prueba comentarios', '2026-07-06'),
(11, 62, 'maria Gonzalez', 'prueba comentario', '2026-07-06'),
(12, 63, 'maria Gonzalez', 'comentario 1', '2026-07-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estrellas`
--

CREATE TABLE `estrellas` (
  `id_publicacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `estrellas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estrellas`
--

INSERT INTO `estrellas` (`id_publicacion`, `id_usuario`, `estrellas`) VALUES
(62, 3, 3),
(57, 3, 4),
(56, 3, 5),
(61, 3, 4),
(53, 3, 3),
(62, 2, 5),
(66, 3, 4),
(62, 4, 5),
(66, 5, 5),
(59, 3, 4),
(65, 3, 4),
(60, 3, 4),
(65, 4, 3),
(66, 4, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico_publicaciones`
--

CREATE TABLE `historico_publicaciones` (
  `id_publicacion` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `nombre_completo` varchar(60) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `zona` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `estado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historico_publicaciones`
--

INSERT INTO `historico_publicaciones` (`id_publicacion`, `id_usuario`, `id_cliente`, `nombre_completo`, `categoria`, `zona`, `descripcion`, `disponible`, `estado`) VALUES
(52, 4, 4, 'tomas21', 'Plomero', 'Bella Vista', 'llámame me muevo por la zona y alrededores', 0, 'Contratado en proceso'),
(53, 4, NULL, 'tomas21', 'Limpieza', 'Bella Vista', 'limpio a domicilio', 1, 'No Contratado'),
(54, 4, 4, 'tomas21', 'Jardinería', 'Bella Vista', 'conto pasto a domicilio', 0, 'Finalizado'),
(56, 4, NULL, 'tomas21', 'Jardinería', 'Bella Vista', 'conto pasto a domicilio', 1, 'No Contratado'),
(57, 7, NULL, 'Ramiro', 'Electricista', 'Bahía Blanca', 'Instalaciones eléctricas seguras y eficientes.', 1, 'No Contratado'),
(58, 7, NULL, 'Ramiro', 'Electricista', 'Castelar', 'Reparación de fallas eléctricas en el hogar.', 1, 'No Contratado'),
(59, 7, NULL, 'Ramiro', 'Electricista', 'Avellaneda', 'Mantenimiento de tableros y conexiones.', 1, 'No Contratado'),
(60, 8, NULL, 'Julian', 'Plomero', 'Bahía Blanca', 'Solución rápida para pérdidas de agua.', 1, 'No Contratado'),
(61, 8, NULL, 'Julian', 'Plomero', 'Bolívar', 'Instalación y reparación de cañerías.', 1, 'No Contratado'),
(62, 8, NULL, 'Julian', 'Plomero', 'Bragado', 'Destape de desagües y mantenimiento.', 1, 'No Contratado'),
(63, 5, NULL, 'Juan Perez', 'Electricista', 'Boulogne', 'Cuidado profesional de jardines y parques.', 1, 'No Contratado'),
(64, 5, NULL, 'Juan Perez', 'Jardinería', 'Bragado', 'Poda, riego y mantenimiento de espacios verdes.', 1, 'No Contratado'),
(65, 5, NULL, 'Juan Perez', 'Limpieza', 'Burzaco', 'Limpieza profunda para hogares y oficinas.', 1, 'No Contratado'),
(66, 5, NULL, 'Juan Perez', 'Limpieza', 'Merlo', 'Servicio de limpieza rápido y confiable.', 1, 'No Contratado'),
(67, 10, 10, 'Pedro Perez', 'Plomero', 'Escobar', 'Arreglo cañerias', 1, 'contratado en proceso'),
(68, 11, 11, 'maria Gonzalez', 'Electricista', 'Banfield', 'prueba1', 1, 'No Contratado'),
(71, 3, 3, 'tomas1234', 'Electricista', 'Beccar', 'Soy una persona confiable y perfeccionista.', 1, 'No Contratado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `id` int(11) NOT NULL,
  `localidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`id`, `localidad`) VALUES
(1, 'Acassuso'),
(2, 'Adrogué'),
(3, 'Alejandro Korn'),
(4, 'Avellaneda'),
(5, 'Azul'),
(6, 'Bahía Blanca'),
(7, 'Balcarce'),
(8, 'Banfield'),
(9, 'Beccar'),
(10, 'Bella Vista'),
(11, 'Benavídez'),
(12, 'Berazategui'),
(13, 'Berisso'),
(14, 'Bernal'),
(15, 'Bolívar'),
(16, 'Boulogne'),
(17, 'Bragado'),
(18, 'Burzaco'),
(19, 'Campana'),
(20, 'Cañuelas'),
(21, 'Carlos Casares'),
(22, 'Caseros'),
(23, 'Castelar'),
(24, 'Chascomús'),
(25, 'Chivilcoy'),
(26, 'Ciudadela'),
(27, 'Claypole'),
(28, 'Del Viso'),
(29, 'Dock Sud'),
(30, 'Don Torcuato'),
(31, 'El Jagüel'),
(32, 'El Palomar'),
(33, 'Ensenada'),
(34, 'Escobar'),
(35, 'Esteban Echeverría'),
(36, 'Ezeiza'),
(37, 'Ezpeleta'),
(38, 'Florencio Varela'),
(39, 'Florida'),
(40, 'General Pacheco'),
(41, 'General Rodríguez'),
(42, 'Gerli'),
(43, 'Glew'),
(44, 'Grand Bourg'),
(45, 'Haedo'),
(46, 'Hudson'),
(47, 'Hurlingham'),
(48, 'Ingeniero Maschwitz'),
(49, 'Ituzaingó'),
(50, 'José C. Paz'),
(51, 'Junín'),
(52, 'La Plata'),
(53, 'Lanús'),
(54, 'Llavallol'),
(55, 'Lomas de Zamora'),
(56, 'Luján'),
(57, 'Malvinas Argentinas'),
(58, 'Manuel Alberti'),
(59, 'Mar de Ajó'),
(60, 'Mar del Plata'),
(61, 'Marcos Paz'),
(62, 'Martínez'),
(63, 'Mercedes'),
(64, 'Merlo'),
(65, 'Miramar'),
(66, 'Monte Grande'),
(67, 'Moreno'),
(68, 'Morón'),
(69, 'Munro'),
(70, 'Necochea'),
(71, 'Nueve de Julio'),
(72, 'Olavarría'),
(73, 'Olivos'),
(74, 'Pergamino'),
(75, 'Pilar'),
(76, 'Pinamar'),
(77, 'Quilmes'),
(78, 'Rafael Calzada'),
(79, 'Ramos Mejía'),
(80, 'Remedios de Escalada'),
(81, 'San Andrés'),
(82, 'San Antonio de Padua'),
(83, 'San Clemente del Tuyú'),
(84, 'San Fernando'),
(85, 'San Francisco Solano'),
(86, 'San Isidro'),
(87, 'San Justo'),
(88, 'San Martín'),
(89, 'San Miguel'),
(90, 'San Miguel del Monte'),
(91, 'San Nicolás'),
(92, 'San Pedro'),
(93, 'San Vicente'),
(94, 'Santos Lugares'),
(95, 'Tandil'),
(96, 'Temperley'),
(97, 'Tigre'),
(98, 'Tortuguitas'),
(99, 'Trenque Lauquen'),
(100, 'Tres Arroyos'),
(101, 'Turdera'),
(102, 'Valentín Alsina'),
(103, 'Vicente López'),
(104, 'Victoria'),
(105, 'Villa Ballester'),
(106, 'Villa Bosch'),
(107, 'Villa Gesell'),
(108, 'Villa Tesei'),
(109, 'Virreyes'),
(110, 'Wilde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre_completo` varchar(60) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `zona` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `id_usuario`, `nombre_completo`, `categoria`, `zona`, `descripcion`, `disponible`, `id_cliente`) VALUES
(52, 4, 'tomas21', 'Plomero', 'Bella Vista', 'llámame me muevo por la zona y alrededores', 0, 4),
(53, 4, 'tomas21', 'Limpieza', 'Bella Vista', 'limpio a domicilio', 1, 0),
(56, 4, 'tomas21', 'Jardinería', 'Bella Vista', 'conto pasto a domicilio', 1, 0),
(57, 7, 'Ramiro', 'Electricista', 'Bahía Blanca', 'Instalaciones eléctricas seguras y eficientes.', 1, 0),
(59, 7, 'Ramiro', 'Electricista', 'Avellaneda', 'Mantenimiento de tableros y conexiones.', 1, 0),
(60, 8, 'Julian', 'Plomero', 'Bahía Blanca', 'Solución rápida para pérdidas de agua.', 1, 0),
(61, 8, 'Julian', 'Plomero', 'Bolívar', 'Instalación y reparación de cañerías.', 1, 0),
(62, 8, 'Julian', 'Plomero', 'Bragado', 'Destape de desagües y mantenimiento.', 1, 0),
(63, 5, 'Juan Perez', 'Electricista', 'Boulogne', 'Cuidado profesional de jardines y parques.', 1, 0),
(64, 5, 'Juan Perez', 'Jardinería', 'Bragado', 'Poda, riego y mantenimiento de espacios verdes.', 1, 0),
(65, 5, 'Juan Perez', 'Limpieza', 'Burzaco', 'Limpieza profunda para hogares y oficinas.', 1, 0),
(66, 5, 'Juan Perez', 'Limpieza', 'Merlo', 'Servicio de limpieza rápido y confiable.', 1, 0),
(67, 10, 'Pedro Perez', 'Plomero', 'Escobar', 'Arreglo cañerias', 1, 0),
(71, 3, 'tomas1234', 'Electricista', 'Beccar', 'Soy una persona confiable y perfeccionista.', 1, 0);

--
-- Disparadores `publicaciones`
--
DELIMITER $$
CREATE TRIGGER `despues_de_modificar_publicacion` AFTER UPDATE ON `publicaciones` FOR EACH ROW UPDATE historico_publicaciones 
    SET 
        id_cliente      = NEW.id_usuario, -- Usas id_cliente como me mostraste en tu código
        nombre_completo = NEW.nombre_completo,
        categoria       = NEW.categoria,
        zona            = NEW.zona,
        descripcion     = NEW.descripcion,
        disponible      = NEW.disponible
    WHERE id_publicacion = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_completo`, `email`, `contraseña`, `rol`) VALUES
(1, 'tomas', 'tomasmeneces170@gmail.com', '123456', 'administrador'),
(3, 'tomas1234', 'tomasmeneces111@gmail.com', '123456', 'usuario_premium'),
(4, 'tomas21', 'tomasmeneces1720@gmail.com', '123456', 'usuario_premium'),
(5, 'Juan Perez', 'juan@gmail.com', '654321', 'usuario_premium'),
(7, 'Ramiro', 'ramiro@gmail.com', '123456', 'usuario'),
(8, 'Julian', 'julian@gmail.com', '123456', 'usuario'),
(9, 'juanito', 'juanito@gmail.com', '1234456', 'usuario'),
(10, 'Pedro Perez', 'pedro@gmail.com', '123456', 'usuario_premium'),
(11, 'maria Gonzalez', 'maria@gmail.com', '123456', 'usuario_premium'),
(14, 'administrador', 'admin@gmail.com', '123456', 'administrador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
