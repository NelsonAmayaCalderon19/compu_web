-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2020 a las 21:42:43
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `compugamer`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cedula` varchar(25) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cedula`, `nombre`, `telefono`, `email`) VALUES
('189232389', 'Jaider Amaya', '217366273', 'jaider@gmail.com'),
('234783478', 'Jaimito Perez', '3182738264', 'nelsoneduardoac@ufps.edu.co'),
('26737467', 'Pedro Quiñonez', '423352366', 'nelsoneduardoac@ufps.edu.co'),
('3474738', 'Eduardo Calderon', '217366273', 'jaider@gmail.com'),
('348989434', 'Jaider Amaya', '312534363', 'nelsoneduardoac@ufps.edu.co'),
('366737623', 'Rene Angarita', '242536364', 'nelsoneduardoac@ufps.edu.co'),
('3787347834', 'Estela Calderon', '3157876185', 'josearias@gmail.com'),
('67346743', 'Luis Andrade', '3467346734', 'nelsonamayacalderon@gmail.com'),
('743783478', 'Amparo Barreto', '3202337468', 'joseruiznn012345@gmail.com'),
('909034984', 'Amparo', '13142425273', 'nelsoneduardoac@ufps.edu.co'),
('93847847', 'Trino Primo', '66625535364', 'nelsoneduardoac@ufps.edu.co'),
('9488343', 'Juan aldana', '3314142325', 'nelsonamayacalderon@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computador`
--

CREATE TABLE `computador` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `marca` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `precio` double NOT NULL,
  `imagen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `computador`
--

INSERT INTO `computador` (`id`, `descripcion`, `marca`, `tipo`, `precio`, `imagen`) VALUES
(1, 'Ahorra Energia', 2, 3, 1200000, 'https://media.aws.alkosto.com/media/catalog/product/cache/6/image/69ace863370f34bdf190e4e164b6e123/1/9/190151565036-lenovo-c20-1_1.jpg'),
(2, 'Ahorra Energia Al Maximo', 1, 1, 2300000, 'https://media.aws.alkosto.com/media/catalog/product/cache/6/image/69ace863370f34bdf190e4e164b6e123/a/s/as_es1-331_white_win10_01.jpg'),
(3, 'Familiar', 3, 2, 1560000, 'https://media.aws.alkosto.com/media/catalog/product/cache/6/image/69ace863370f34bdf190e4e164b6e123/1/9/191628179022_4.jpg'),
(4, 'hcxjhxchxcxck', 1, 3, 17843783, 'https://d500.epimg.net/cincodias/imagenes/2015/10/25/lifestyle/1445789373_404272_1445789529_noticia_normal.jpg'),
(5, 'urery575uuyr', 3, 1, 1747834, 'https://www.adslzone.net/app/uploads/2018/02/android-pc.jpg'),
(6, 'yughgh', 1, 2, 143343674, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Desktop_computer_clipart_-_Yellow_theme.svg/220px-Desktop_computer_clipart_-_Yellow_theme.svg.png'),
(7, 'Nueva PC', 1, 1, 1276327, 'https://sites.google.com/site/origenpcmolin/_/rsrc/1490818214926/home/defina-computador-de-escritorio-computador-portatil-cuales-son-las-ventajas-y-diferencias-entre-un-computador-de-escritorio-y-un-portatil-que-caracteriza-un-computador-de-portatil/HHJV.png'),
(8, 'Otra PC Nueva', 3, 2, 1263635, 'https://aprendelibvrefiles.blob.core.windows.net/aprendelibvre-container/course/informatica_basica/image/compescritorio-01_xl.png'),
(9, 'Descripcion corta', 2, 2, 17363654, 'https://as.com/betech/imagenes/2018/02/16/portada/1518812634_028586_1518820727_noticia_normal.jpg'),
(10, 'Computador de mesa para gamer', 2, 2, 20393484, 'https://pcware.com.co/wp-content/uploads/2018/07/pc-gamer-i5-8400-intel-octava-generacion_g_700x700.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `cargo` varchar(150) NOT NULL,
  `telefono` varchar(25) NOT NULL,
  `clave` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`cedula`, `nombre`, `cargo`, `telefono`, `clave`) VALUES
(32672672, 'Nelson Calderon', 'Vendedor', '2452451451', '$2a$04$GQHDp5fhNYpZCjfJGSi2NO8vGtIq36yM/c4Z6ICJkvQlTs4oAvE3e'),
(45845459, 'Oscar de la Hoz', 'Administrador', '334347834', '$2a$04$LJ9qWho9CTMGumiBOPImF.2WZfP1pX/UtjdrbPWjI1wOFRfn4hlmq\r\n\r\n'),
(377834823, 'Cristobal Colón', 'Tecnico', '3162736253', '$2a$04$xG6N7zZCtjemIVEsaJmGvOACcTrBbicGzRtBTixgLeo63NR94DnE6'),
(783239834, 'Carlos Blanco', 'Administrador', '3612732636', '$2a$04$Dsl4o/oNqQGoAl7OU1EI6eh.kmOl0o1T8N8NbzEZj8s20Z56myGUK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_computador` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_computador`, `cantidad`) VALUES
(1, 3),
(2, 8),
(3, 8),
(7, 120),
(8, 4),
(9, 10),
(10, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `descripcion`) VALUES
(1, 'Acer'),
(2, 'Lenovo'),
(3, 'Hp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocomp`
--

CREATE TABLE `tipocomp` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipocomp`
--

INSERT INTO `tipocomp` (`id`, `descripcion`) VALUES
(1, 'Portatil'),
(2, 'Escritorio'),
(3, 'Todo en Uno');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `computador`
--
ALTER TABLE `computador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marca` (`marca`),
  ADD KEY `tipo` (`tipo`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`cedula`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_computador`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipocomp`
--
ALTER TABLE `tipocomp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `computador`
--
ALTER TABLE `computador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipocomp`
--
ALTER TABLE `tipocomp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `computador`
--
ALTER TABLE `computador`
  ADD CONSTRAINT `computador_ibfk_1` FOREIGN KEY (`marca`) REFERENCES `marca` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `computador_ibfk_2` FOREIGN KEY (`tipo`) REFERENCES `tipocomp` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_computador`) REFERENCES `computador` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
