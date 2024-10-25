-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-02-2024 a las 17:45:59
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `filtrar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'ELECTRONICA', '2023-10-25 14:34:44'),
(2, 'ELECTRODOMESTICOS', '2023-10-25 14:34:44'),
(3, 'HOGAR', '2023-10-25 14:35:01'),
(4, 'COMESTIBLES', '2024-01-21 16:24:10'),
(5, 'LIMPIEZA', '2024-01-21 21:45:19'),
(6, 'COMPUTACION', '2024-01-21 21:57:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `existencia` varchar(50) NOT NULL,
  `precioVenta` varchar(50) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `descripcion`, `existencia`, `precioVenta`, `id_cat`, `fecha`) VALUES
(1, '01', 'Computadora', '6', '250', 1, '2023-10-25 14:30:05'),
(2, '02', 'Audifonos', '2', '20', 1, '2023-10-25 14:31:02'),
(3, '03', 'Licuadora', '4', '100', 2, '2023-10-25 14:31:02'),
(4, '04', 'Comedor 4 sillas', '2', '1500', 3, '2023-10-25 14:32:23'),
(5, '05', 'Refrigerador', '4', '1000', 2, '2023-10-25 14:32:23'),
(14, '08', 'Galletas Chokis', '10', '17', 4, '2024-01-21 16:18:23'),
(21, '10', 'Jugo del Valle 2L', '9', '15', 4, '2024-01-21 21:43:39'),
(22, '1010', 'Gallates Marinelas', '12', '18', 4, '2024-01-21 21:56:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prod_vendidos`
--

CREATE TABLE `prod_vendidos` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` varchar(50) NOT NULL,
  `id_venta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prod_vendidos`
--

INSERT INTO `prod_vendidos` (`id`, `id_producto`, `cantidad`, `id_venta`) VALUES
(1, 1, '2', 3),
(2, 2, '2', 4),
(3, 14, '1', 4),
(4, 14, '1', 5),
(5, 14, '2', 6),
(6, 5, '1', 6),
(7, 14, '1', 7),
(8, 4, '1', 8),
(9, 14, '1', 9),
(10, 14, '1', 10),
(11, 14, '2', 11),
(12, 1, '1', 11),
(13, 3, '1', 11),
(14, 21, '2', 12),
(15, 2, '1', 12),
(16, 14, '1', 12),
(17, 21, '1', 13),
(18, 21, '7', 14),
(19, 22, '2', 15),
(20, 21, '1', 15),
(21, 22, '1', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendidos`
--

CREATE TABLE `vendidos` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vendidos`
--

INSERT INTO `vendidos` (`id`, `fecha`, `total`) VALUES
(3, '2024-01-21', '500'),
(4, '2024-01-21', '57'),
(5, '2024-01-21', '17'),
(6, '2024-01-21', '1034'),
(7, '2024-01-21', '17'),
(8, '2024-01-21', '1500'),
(9, '2024-01-21', '17'),
(10, '2024-01-21', '17'),
(11, '2024-01-21', '384'),
(12, '2024-01-21', '67'),
(13, '2024-01-21', '15'),
(14, '2024-01-21', '105'),
(15, '2024-01-21', '51'),
(16, '2024-01-21', '18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prod_vendidos`
--
ALTER TABLE `prod_vendidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vendidos`
--
ALTER TABLE `vendidos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `prod_vendidos`
--
ALTER TABLE `prod_vendidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `vendidos`
--
ALTER TABLE `vendidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
