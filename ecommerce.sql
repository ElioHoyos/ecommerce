-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2020 a las 03:07:08
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `fecha`) VALUES
(1, 'ROPA', 'ropa', '0000-00-00 00:00:00'),
(2, 'CALZADO', 'calzado', '0000-00-00 00:00:00'),
(3, 'ACCESORIOS', 'accesorios', '0000-00-00 00:00:00'),
(4, 'TECNOLOGÍA', 'tecnologia', '0000-00-00 00:00:00'),
(5, 'CURSOS', 'cursos', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#000000', '#ffffff', '#47bac1', '#ffffff', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.png', '[\r\n\r\n	{\r\n		\"red\": \"fa-facebook\",\r\n		\"estilo\": \"facebookBlanco\",\r\n		\"url\": \"http://facebook.com/\"\r\n	}, {\r\n		\"red\": \"fa-youtube\",\r\n		\"estilo\": \"yotutubeBlanco\",\r\n		\"url\": \"http://youtube.com/\"\r\n	}, {\r\n		\"red\": \"fa-twitter\",\r\n		\"estilo\": \"twitterBlanco\",\r\n		\"url\": \"http://twitter.com/\"\r\n	}, {\r\n		\"red\": \"fa-google-plus\",\r\n		\"estilo\": \"googleBlanco\",\r\n		\"url\": \"http://google.com/\"\r\n	}, {\r\n		\"red\": \"fa-instagram\",\r\n		\"estilo\": \"instagramBlanco\",\r\n		\"url\": \"http://instagram.com/\"\r\n	}\r\n\r\n]', '2020-06-05 03:44:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `fecha`) VALUES
(1, 'Ropa para dama', 1, 'ropa-para-dama', '0000-00-00 00:00:00'),
(2, 'Ropa para hombre', 1, 'ropa-para-hombre', '0000-00-00 00:00:00'),
(3, 'Ropa deportiva', 1, 'ropa-deportiva', '0000-00-00 00:00:00'),
(4, 'Ropa infantil', 1, 'ropa-infantil', '0000-00-00 00:00:00'),
(5, 'Calzado para dama', 2, 'calzado-para-dama', '0000-00-00 00:00:00'),
(6, 'Calzado para hombre', 2, 'calzado-para-hombre', '0000-00-00 00:00:00'),
(7, 'Calzado deportivo', 2, 'calzado-deportivo', '0000-00-00 00:00:00'),
(8, 'Calzado infantil', 2, 'calzado-infantil', '0000-00-00 00:00:00'),
(9, 'Bolsos', 3, 'bolsos', '0000-00-00 00:00:00'),
(10, 'Relojes', 3, 'relojes', '0000-00-00 00:00:00'),
(11, 'Pulseras', 3, 'pulseras', '0000-00-00 00:00:00'),
(12, 'Collares', 3, 'collares', '0000-00-00 00:00:00'),
(13, 'Gafas de sol', 3, 'gafas-de-sol', '0000-00-00 00:00:00'),
(14, 'Teléfonos Móvil', 4, 'telefonos-movil', '0000-00-00 00:00:00'),
(15, 'Tabletas Electrónicas', 4, 'tabletas-electronicas', '0000-00-00 00:00:00'),
(16, 'Computadoras', 4, 'computadoras', '0000-00-00 00:00:00'),
(17, 'Auriculares', 4, 'auriculares', '0000-00-00 00:00:00'),
(18, 'Desarrollo Web', 5, 'desarrollo-web', '0000-00-00 00:00:00'),
(19, 'Aplicaciones Móviles', 5, 'aplicaciones-moviles', '0000-00-00 00:00:00'),
(20, 'Diseño Gráfico', 5, 'diseno-grafico', '0000-00-00 00:00:00'),
(21, 'Marketing Digital', 5, 'marketing-digital', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
