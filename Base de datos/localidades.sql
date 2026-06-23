-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-06-2026 a las 21:50:45
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
