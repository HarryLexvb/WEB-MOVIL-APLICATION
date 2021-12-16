-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2021 a las 18:47:19
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0e0ce2c32f1b101a0647eb616399272e', '2017-01-24 16:21:18', '22-06-2020 10:14:35 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Perú', 'Platos del Perú', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Argentina', 'Platos de Argentina', '2021-12-14 21:27:00', ''),
(5, 'Brasil', 'Platos de Brasil', '2021-12-14 21:27:00', ''),
(6, 'Mexico', 'Platos de Mexico', '2017-01-24 19:19:32', ''),
(7, 'Italia', 'Platos de Italia', '2021-12-14 21:27:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee_receipt`
--

CREATE TABLE `employee_receipt` (
  `id_employee` int(11) NOT NULL,
  `id_receipt` int(11) NOT NULL,
  `employee_receipt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `ingredient` varchar(255) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingredients`
--

INSERT INTO `ingredients` (`id`, `ingredient`, `products_id`) VALUES
(1, 'Pechuga de gallina ', 16),
(2, 'Laurel ', 16),
(3, 'Apio ', 16),
(4, 'Zanahoria ', 16),
(5, 'Pan ', 16),
(6, 'Leche ', 16),
(7, 'Aceite ', 16),
(8, 'Cebolla', 16),
(9, 'Dientes de ajo ', 16),
(10, 'Aji de amarillo ', 16),
(11, 'Palillo ', 16),
(12, 'Comino ', 16),
(13, 'Pecanas ', 16),
(14, 'Queso ', 16),
(15, 'Papas ', 16),
(16, 'Aceitunas ', 16),
(17, 'Huevos ', 16),
(18, 'Sal ', 16),
(19, 'Pimienta', 16),
(20, 'Cuy', 1),
(21, 'Chicha de jora\r\n', 1),
(22, 'Aji panca \r\n', 1),
(23, 'Oregano ', 1),
(24, 'Hierbabuena ', 1),
(25, 'Limon ', 1),
(26, 'Sal', 1),
(27, 'Aceite', 1),
(28, 'Aceite de oliva', 17),
(29, 'Cebolla morada ', 17),
(30, 'Pimiento rojo ', 17),
(31, 'Aceitunas negras', 17),
(32, 'Guisantes ', 17),
(33, 'Elote verde', 17),
(34, 'Salsa de tomate', 17),
(35, 'Perejil', 17),
(36, 'Caldo de verduras', 17),
(37, 'Laurel ', 17),
(38, 'Sal ', 17),
(39, 'Pimienta negra ', 17),
(40, 'Harina de maíz', 17),
(41, 'Huevos ', 17),
(42, 'Lomo ', 15),
(43, 'Sal', 15),
(44, 'Pimienta', 15),
(45, 'Aceite', 15),
(46, 'Dientes de ajo\r\n', 15),
(47, 'Cebolla ', 15),
(48, 'Tomates', 15),
(49, 'Aji amarillo\r\n', 15),
(50, 'Salsa de soya ', 15),
(51, 'Vinagre tinto\r\n', 15),
(52, 'Culantro', 15),
(53, 'Papas', 15),
(54, 'Arroz blanco\r\n', 15),
(55, 'Huacatay', 2),
(56, 'Culantro', 2),
(57, 'Chincho', 2),
(58, 'Dientes de ajo\r\n', 2),
(59, 'Aceite', 2),
(60, 'Aji verde\r\n', 2),
(61, 'Pollo ', 2),
(62, 'Cordero', 2),
(63, 'Chancho ', 2),
(64, 'Vinagre ', 2),
(65, 'Papas ', 2),
(66, 'Habas ', 2),
(67, 'Chicha de jora\r\n', 2),
(68, 'Camote ', 2),
(69, 'Sal', 2),
(70, 'Platanos verdes\r\n', 18),
(71, 'Cecina de cerdo\r\n', 18),
(72, 'Chorizo', 18),
(73, 'Aceite ', 18),
(74, 'Sal', 18),
(75, 'Camote', 7),
(76, 'Pollo ', 7),
(77, 'Ajo', 7),
(78, 'Cebolla', 7),
(79, 'Tomate ', 7),
(80, 'Sal', 7),
(81, 'Pimienta', 7),
(82, 'Aceite', 7),
(83, 'Cuajada Ligera', 7),
(84, 'Harina de Linaza', 7),
(85, 'Tortillas de Trigo ', 8),
(86, 'Lonchas Grandes de Jamón Cocido', 8),
(87, 'Cucharadas de Maíz Dulce', 8),
(88, 'Queso Mozzarella', 8),
(89, 'Queso Cheddar', 8),
(90, 'El zumo de 1/2 Lima', 8),
(91, 'Gotitas de Tabasco ', 8),
(92, 'Carne de Puerco Portada en Cubos', 9),
(93, 'Costilla de puerco cortada en trozos', 9),
(94, 'Maíz para pozole ', 9),
(95, 'Cebolla blanca ', 9),
(96, 'Dientes de ajo ', 9),
(97, 'Sal', 9),
(98, 'Chiles anchos', 9),
(99, 'Pulpa con grasa y pierna cerdo ', 10),
(100, 'manteca de cerdo', 10),
(101, 'Cucharada de sal', 10),
(102, 'Dientes de ajo ', 10),
(103, 'Carne de vacuno ', 11),
(104, 'Morcillas', 11),
(105, 'Chorizos o longanizas parrilleras', 11),
(106, 'Riñones', 11),
(107, 'Chinchulín o chinchurrias', 11),
(108, 'Pollo campestre', 11),
(109, 'Sal parrillera', 11),
(110, 'Limón', 11),
(111, 'Pescado blanco', 12),
(112, 'Limón', 12),
(113, 'Sal ', 12),
(114, 'Pimienta', 12),
(115, 'Aceite de oliva', 12),
(116, 'Cebolla', 12),
(117, 'Pimiento morrón rojo', 12),
(118, 'Ajo', 12),
(119, 'Vino blanco seco', 12),
(120, 'Tomates', 12),
(121, 'Caldo de pescado', 12),
(122, 'Pimentón', 12),
(123, 'Patatas', 12),
(124, 'Perejil', 12),
(125, 'Harina de Trigo', 13),
(126, 'Polvo para Hornear', 13),
(127, 'Sal', 13),
(128, 'Aceite', 13),
(129, 'Espaguetis', 14),
(130, 'Queso Pecorino Romano', 14),
(131, 'Pimienta negra en grano', 14),
(132, 'Goma de Mandioca', 18),
(133, 'Sal', 18),
(134, 'Camarón Salado ', 18),
(135, 'Hojas de chicória', 18),
(136, 'Maços de jambu', 18),
(137, 'Tucupi', 18),
(138, 'Chiles', 18),
(139, 'Dientes de ajo', 18),
(140, 'Queso Parmesano', 19),
(141, 'Queso pecorino', 19),
(142, 'Queso manchego', 19),
(143, 'Piñones', 19),
(144, 'Ajo', 19),
(145, 'Albahaca ', 19),
(146, 'Aceite de oliva virgen extra', 19),
(147, 'Patata ', 19),
(148, 'Judías verdes ', 19),
(149, 'Tallarines', 19),
(150, 'Sal', 19),
(151, 'Pan ciabatta', 20),
(152, 'Tomates grandes', 20),
(153, 'Cebolla roja ', 20),
(154, 'Pepino pelado ', 20),
(155, 'Dientes de ajo ', 20),
(156, 'Aceite de oliva', 20),
(157, 'Mantequilla', 20),
(158, 'Perejil fresco ', 20),
(159, 'Hojas de albahaca ', 20),
(160, 'Vinagre de vino tinto', 20),
(161, 'Sal', 20),
(162, 'Pimienta ', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredient_provider`
--

CREATE TABLE `ingredient_provider` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `id_provider` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingredient_provider`
--

INSERT INTO `ingredient_provider` (`id`, `price`, `amount`, `id_provider`, `id_ingredient`) VALUES
(1, 16, 6, 1, 1),
(2, 15, 6, 2, 1),
(3, 16, 6, 3, 1),
(4, 15, 6, 4, 1),
(5, 16, 6, 5, 1),
(6, 16, 6, 6, 1),
(7, 5, 1, 1, 2),
(8, 5, 1, 2, 2),
(9, 4, 1, 3, 2),
(10, 4, 1, 4, 2),
(11, 5, 1, 5, 2),
(12, 6, 1, 6, 2),
(13, 4, 1, 1, 3),
(14, 3, 1, 2, 3),
(15, 4, 1, 3, 3),
(16, 3, 1, 4, 3),
(17, 4, 1, 5, 3),
(18, 3, 1, 6, 3),
(19, 5, 3, 1, 4),
(20, 4, 2, 2, 4),
(21, 4, 3, 3, 4),
(22, 5, 3, 4, 4),
(23, 5, 3, 5, 4),
(24, 5, 3, 6, 4),
(25, 6, 2, 1, 5),
(26, 6, 3, 2, 5),
(27, 6, 3, 3, 5),
(28, 6, 3, 4, 5),
(29, 6, 2, 5, 5),
(30, 6, 2, 6, 5),
(31, 12, 6, 1, 6),
(32, 11, 6, 2, 6),
(33, 12, 6, 3, 6),
(34, 12, 6, 4, 6),
(35, 12, 6, 5, 6),
(36, 12, 6, 6, 6),
(37, 8, 1, 1, 7),
(38, 8, 1, 2, 7),
(39, 8, 1, 3, 7),
(40, 7, 1, 4, 7),
(41, 8, 1, 5, 7),
(42, 8, 1, 6, 7),
(43, 8, 5, 1, 8),
(44, 6, 5, 2, 8),
(45, 8, 5, 3, 8),
(46, 7, 5, 4, 8),
(47, 8, 5, 5, 8),
(48, 8, 5, 6, 8),
(49, 2, 5, 1, 9),
(50, 1, 5, 2, 9),
(51, 1, 5, 3, 9),
(52, 2, 5, 4, 9),
(53, 2, 5, 5, 9),
(54, 2, 5, 6, 9),
(55, 5, 4, 1, 10),
(56, 5, 4, 2, 10),
(57, 5, 4, 3, 10),
(58, 5, 4, 4, 10),
(59, 5, 4, 5, 10),
(60, 5, 4, 6, 10),
(61, 2, 1, 1, 11),
(62, 3, 1, 2, 11),
(63, 3, 1, 3, 11),
(64, 3, 1, 4, 11),
(65, 3, 1, 5, 11),
(66, 3, 1, 6, 11),
(67, 5, 7, 1, 12),
(68, 5, 7, 2, 12),
(69, 5, 7, 3, 12),
(70, 6, 7, 4, 12),
(71, 5, 7, 5, 12),
(72, 5, 7, 6, 12),
(73, 5, 20, 1, 13),
(74, 5, 20, 2, 13),
(75, 4, 20, 3, 13),
(76, 4, 20, 4, 13),
(77, 5, 20, 5, 13),
(78, 5, 20, 6, 13),
(79, 9, 1, 1, 14),
(80, 10, 1, 2, 14),
(81, 10, 1, 3, 14),
(82, 9, 1, 4, 14),
(83, 9, 1, 5, 14),
(84, 9, 1, 6, 14),
(85, 30, 10, 1, 15),
(86, 30, 10, 2, 15),
(87, 40, 10, 3, 15),
(88, 30, 10, 4, 15),
(89, 30, 10, 5, 15),
(90, 30, 10, 6, 15),
(91, 10, 20, 1, 16),
(92, 10, 20, 2, 16),
(93, 12, 20, 3, 16),
(94, 11, 20, 4, 16),
(95, 10, 20, 5, 16),
(96, 10, 20, 6, 16),
(97, 15, 12, 1, 17),
(98, 15, 12, 2, 17),
(99, 16, 12, 3, 17),
(100, 15, 12, 4, 17),
(101, 15, 12, 5, 17),
(102, 15, 12, 6, 17),
(103, 3, 1, 1, 18),
(104, 3, 1, 2, 18),
(105, 3, 1, 3, 18),
(106, 3, 1, 4, 18),
(107, 3, 1, 5, 18),
(108, 3, 1, 6, 18),
(109, 6, 1, 1, 19),
(110, 3, 1, 2, 19),
(111, 4, 1, 3, 19),
(112, 3, 1, 4, 19),
(113, 3, 1, 5, 19),
(114, 3, 1, 6, 19),
(115, 60, 1, 1, 20),
(116, 50, 1, 2, 20),
(117, 40, 1, 3, 20),
(118, 50, 1, 4, 20),
(119, 50, 1, 5, 20),
(120, 50, 1, 6, 20),
(121, 30, 1, 1, 21),
(122, 26, 1, 2, 21),
(123, 25, 1, 3, 21),
(124, 25, 1, 4, 21),
(125, 26, 1, 5, 21),
(126, 25, 1, 6, 21),
(127, 4, 3, 1, 22),
(128, 4, 3, 2, 22),
(129, 4, 3, 3, 22),
(130, 5, 3, 4, 22),
(131, 5, 3, 5, 22),
(132, 5, 3, 6, 22),
(133, 3, 1, 1, 23),
(134, 2, 1, 2, 23),
(135, 1, 1, 3, 23),
(136, 1, 1, 4, 23),
(137, 2, 1, 5, 23),
(138, 3, 1, 6, 23),
(139, 2, 1, 1, 24),
(140, 2, 1, 2, 24),
(141, 2, 1, 3, 24),
(142, 2, 1, 4, 24),
(143, 2, 1, 5, 24),
(144, 2, 1, 6, 24),
(145, 12, 6, 1, 25),
(146, 11, 6, 2, 25),
(147, 11, 6, 3, 25),
(148, 12, 6, 4, 25),
(149, 12, 6, 5, 25),
(150, 12, 6, 6, 25),
(151, 3, 1, 1, 26),
(152, 2, 1, 2, 26),
(153, 3, 1, 3, 26),
(154, 2, 1, 4, 26),
(155, 3, 1, 5, 26),
(156, 3, 1, 6, 26),
(157, 8, 1, 1, 27),
(158, 7, 1, 2, 27),
(159, 7, 1, 3, 27),
(160, 7, 1, 4, 27),
(161, 7, 1, 5, 27),
(162, 7, 1, 6, 27),
(163, 10, 1, 1, 28),
(164, 9, 1, 2, 28),
(165, 8, 1, 3, 28),
(166, 8, 1, 4, 28),
(167, 9, 1, 5, 28),
(168, 9, 1, 6, 28),
(169, 10, 5, 1, 29),
(170, 10, 5, 2, 29),
(171, 10, 5, 3, 29),
(172, 10, 5, 4, 29),
(173, 10, 5, 5, 29),
(174, 10, 5, 6, 29),
(175, 3, 1, 1, 30),
(176, 4, 1, 2, 30),
(177, 3, 1, 3, 30),
(178, 3, 1, 4, 30),
(179, 4, 1, 5, 30),
(180, 3, 1, 6, 30),
(181, 9, 5, 1, 31),
(182, 5, 5, 2, 31),
(183, 6, 5, 3, 31),
(184, 6, 5, 4, 31),
(185, 5, 5, 5, 31),
(186, 5, 5, 6, 31),
(187, 4, 10, 1, 32),
(188, 3, 10, 2, 32),
(189, 3, 10, 3, 32),
(190, 2, 10, 4, 32),
(191, 2, 10, 5, 32),
(192, 3, 10, 6, 32),
(193, 5, 1, 1, 33),
(194, 6, 1, 2, 33),
(195, 5, 1, 3, 33),
(196, 5, 1, 4, 33),
(197, 5, 1, 5, 33),
(198, 4, 1, 6, 33),
(199, 11, 1, 1, 34),
(200, 11, 1, 2, 34),
(201, 15, 1, 3, 34),
(202, 15, 1, 4, 34),
(203, 14, 1, 5, 34),
(204, 14, 1, 6, 34),
(205, 1, 1, 1, 35),
(206, 1, 1, 2, 35),
(207, 1, 1, 3, 35),
(208, 1, 1, 4, 35),
(209, 1, 1, 5, 35),
(210, 2, 1, 6, 35),
(211, 5, 1, 1, 36),
(212, 6, 1, 2, 36),
(213, 5, 1, 3, 36),
(214, 5, 1, 4, 36),
(215, 5, 1, 5, 36),
(216, 5, 1, 6, 36),
(217, 2, 1, 1, 37),
(218, 2, 1, 2, 37),
(219, 2, 1, 3, 37),
(220, 2, 1, 4, 37),
(221, 2, 1, 5, 37),
(222, 2, 1, 6, 37),
(223, 3, 1, 1, 38),
(224, 3, 1, 2, 38),
(225, 3, 1, 3, 38),
(226, 3, 1, 4, 38),
(227, 3, 1, 5, 38),
(228, 3, 1, 6, 38),
(229, 2, 1, 1, 39),
(230, 2, 1, 2, 39),
(231, 2, 1, 3, 39),
(232, 2, 1, 4, 39),
(233, 2, 1, 5, 39),
(234, 2, 1, 6, 39),
(235, 10, 1, 1, 40),
(236, 10, 1, 2, 40),
(237, 10, 1, 3, 40),
(238, 11, 1, 4, 40),
(239, 12, 1, 5, 40),
(240, 10, 1, 6, 40),
(241, 12, 6, 1, 41),
(242, 12, 6, 2, 41),
(243, 11, 6, 3, 41),
(244, 12, 6, 4, 41),
(245, 12, 6, 5, 41),
(246, 12, 6, 6, 41),
(247, 60, 5, 1, 42),
(248, 50, 5, 2, 42),
(249, 50, 5, 3, 42),
(250, 50, 5, 4, 42),
(251, 40, 5, 5, 42),
(252, 50, 5, 6, 42),
(253, 2, 1, 1, 43),
(254, 2, 1, 2, 43),
(255, 2, 1, 3, 43),
(256, 2, 1, 4, 43),
(257, 2, 1, 5, 43),
(258, 2, 1, 6, 43),
(259, 3, 1, 1, 44),
(260, 2, 1, 2, 44),
(261, 2, 1, 3, 44),
(262, 2, 1, 4, 44),
(263, 2, 1, 5, 44),
(264, 2, 1, 6, 44),
(265, 9, 1, 1, 45),
(266, 9, 1, 2, 45),
(267, 7, 1, 3, 45),
(268, 8, 1, 4, 45),
(269, 9, 1, 5, 45),
(270, 9, 1, 6, 45),
(271, 5, 5, 1, 46),
(272, 4, 5, 2, 46),
(273, 5, 5, 3, 46),
(274, 4, 5, 4, 46),
(275, 5, 5, 5, 46),
(276, 5, 5, 6, 46),
(277, 7, 3, 1, 47),
(278, 6, 3, 2, 47),
(279, 7, 3, 3, 47),
(280, 7, 3, 4, 47),
(281, 7, 3, 5, 47),
(282, 7, 3, 6, 47),
(283, 5, 3, 1, 48),
(284, 6, 3, 2, 48),
(285, 6, 3, 3, 48),
(286, 5, 3, 4, 48),
(287, 6, 3, 5, 48),
(288, 5, 3, 6, 48),
(289, 3, 3, 1, 49),
(290, 3, 3, 2, 49),
(291, 3, 3, 3, 49),
(292, 3, 3, 4, 49),
(293, 3, 3, 5, 49),
(294, 3, 3, 6, 49),
(295, 7, 1, 1, 50),
(296, 8, 1, 2, 50),
(297, 7, 1, 3, 50),
(298, 6, 1, 4, 50),
(299, 6, 1, 5, 50),
(300, 7, 1, 6, 50),
(301, 25, 1, 1, 51),
(302, 20, 1, 2, 51),
(303, 20, 1, 3, 51),
(304, 20, 1, 4, 51),
(305, 20, 1, 5, 51),
(306, 20, 1, 6, 51),
(307, 3, 1, 1, 52),
(308, 3, 1, 2, 52),
(309, 3, 1, 3, 52),
(310, 2, 1, 4, 52),
(311, 2, 1, 5, 52),
(312, 2, 1, 6, 52),
(313, 10, 5, 1, 53),
(314, 20, 5, 2, 53),
(315, 15, 5, 3, 53),
(316, 12, 5, 4, 53),
(317, 10, 5, 5, 53),
(318, 10, 5, 6, 53),
(319, 7, 2, 1, 54),
(320, 7, 2, 2, 54),
(321, 7, 2, 3, 54),
(322, 7, 2, 4, 54),
(323, 7, 2, 5, 54),
(324, 7, 2, 6, 54),
(325, 2, 1, 2, 55),
(326, 3, 1, 2, 55),
(327, 2, 1, 3, 55),
(328, 3, 1, 4, 55),
(329, 2, 1, 5, 55),
(330, 2, 1, 6, 55),
(331, 2, 1, 1, 56),
(332, 4, 1, 2, 56),
(333, 3, 1, 3, 56),
(334, 3, 1, 4, 56),
(335, 2, 1, 5, 56),
(336, 2, 1, 6, 56),
(337, 3, 1, 1, 57),
(338, 1, 1, 2, 57),
(339, 3, 1, 3, 57),
(340, 3, 1, 4, 57),
(341, 3, 1, 5, 57),
(342, 3, 1, 6, 57),
(343, 2, 5, 1, 58),
(344, 2, 5, 2, 58),
(345, 2, 5, 3, 58),
(346, 1, 5, 4, 58),
(347, 1, 5, 5, 58),
(348, 1, 5, 6, 58),
(349, 6, 1, 1, 59),
(350, 7, 1, 2, 59),
(351, 8, 1, 3, 59),
(352, 8, 1, 4, 59),
(353, 9, 1, 5, 59),
(354, 9, 1, 6, 59),
(355, 2, 3, 1, 60),
(356, 6, 3, 2, 60),
(357, 5, 3, 3, 60),
(358, 4, 3, 4, 60),
(359, 4, 3, 5, 60),
(360, 4, 3, 6, 60),
(361, 15, 1, 1, 61),
(362, 15, 1, 2, 61),
(363, 14, 1, 3, 61),
(364, 16, 1, 4, 61),
(365, 15, 1, 5, 61),
(366, 15, 1, 6, 61),
(367, 31, 1, 1, 62),
(368, 30, 1, 2, 62),
(369, 30, 1, 3, 62),
(370, 30, 1, 4, 62),
(371, 30, 1, 5, 62),
(372, 30, 1, 6, 62),
(373, 9, 1, 1, 63),
(374, 8, 1, 2, 63),
(375, 7, 1, 3, 63),
(376, 6, 1, 4, 63),
(377, 6, 1, 5, 63),
(378, 6, 1, 6, 63),
(379, 20, 1, 1, 64),
(380, 15, 1, 2, 64),
(381, 15, 1, 3, 64),
(382, 15, 1, 4, 64),
(383, 15, 1, 5, 64),
(384, 15, 1, 6, 64),
(385, 150, 10, 1, 65),
(386, 90, 10, 2, 65),
(387, 110, 10, 3, 65),
(388, 120, 10, 4, 65),
(389, 100, 10, 5, 65),
(390, 100, 10, 6, 65),
(391, 5, 5, 1, 66),
(392, 4, 5, 2, 66),
(393, 3, 5, 3, 66),
(394, 4, 5, 4, 66),
(395, 4, 5, 5, 66),
(396, 4, 5, 6, 66),
(397, 7, 1, 1, 67),
(398, 5, 1, 2, 67),
(399, 8, 1, 3, 67),
(400, 8, 1, 4, 67),
(401, 7, 1, 5, 67),
(402, 7, 1, 6, 67),
(403, 3, 1, 1, 68),
(404, 5, 1, 2, 68),
(405, 3, 1, 3, 68),
(406, 4, 1, 4, 68),
(407, 3, 1, 5, 68),
(408, 3, 1, 6, 68),
(409, 3, 1, 1, 69),
(410, 3, 1, 2, 69),
(411, 2, 1, 3, 69),
(412, 3, 1, 4, 69),
(413, 3, 1, 5, 69),
(414, 3, 1, 6, 69),
(415, 6, 6, 1, 70),
(416, 5, 6, 2, 70),
(417, 4, 6, 3, 70),
(418, 5, 6, 4, 70),
(419, 5, 6, 5, 70),
(420, 5, 6, 6, 70),
(421, 6, 1, 2, 71),
(422, 8, 1, 3, 71),
(423, 7, 1, 3, 71),
(424, 6, 1, 4, 71),
(425, 6, 1, 5, 71),
(426, 6, 1, 6, 71),
(427, 5, 5, 1, 72),
(428, 5, 5, 2, 72),
(429, 7, 5, 3, 72),
(430, 8, 5, 4, 72),
(431, 8, 5, 5, 72),
(432, 7, 5, 6, 72),
(433, 8, 1, 1, 73),
(434, 7, 1, 2, 73),
(435, 9, 1, 3, 73),
(436, 8, 1, 4, 73),
(437, 7, 1, 5, 73),
(438, 8, 1, 6, 73),
(439, 2, 1, 1, 74),
(440, 3, 1, 2, 74),
(441, 2, 1, 3, 74),
(442, 3, 1, 4, 74),
(443, 2, 1, 5, 74),
(444, 3, 1, 6, 74),
(445, 6, 1, 1, 75),
(446, 6, 1, 2, 75),
(447, 5, 1, 3, 75),
(448, 5, 1, 4, 75),
(449, 6, 1, 5, 75),
(450, 6, 1, 6, 75),
(451, 14, 1, 1, 76),
(452, 14, 1, 2, 76),
(453, 15, 1, 3, 76),
(454, 15, 1, 4, 76),
(455, 15, 1, 5, 76),
(456, 15, 1, 6, 76);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(17, 6, '1', 1, '2021-12-15 17:05:59', 'COD', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 3, 1, 'CUY CHACTADO', 'Arequipa', 61, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; --darkreader-inline-color:#d3cfca;\" data-darkreader-inline-color=\"\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: justify; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top;\"><font color=\"#bdb7ae\" face=\"arial, sans-serif\" data-darkreader-inline-color=\"\" style=\"--darkreader-inline-color:#bab4ab;\"><span style=\"font-size: 16px;\">Según su etimología, la palabra chactado hace referencia a la forma de cocción del alimento.&nbsp; Este plato de origen andino, fue la comida preferida de los incas.&nbsp; &nbsp; &nbsp;</span></font></div></li></ul>', 'cuy1.jpeg', 'cuy2.jpg', 'cuy3.jpg', 15, 'En Stock', '2017-01-30 16:54:35', ''),
(2, 3, 1, 'PACHAMANCA', 'Andino', 125, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; --darkreader-inline-color:#d3cfca;\" data-darkreader-inline-color=\"\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; --darkreader-inline-color:#d3cfca;\" data-darkreader-inline-color=\"\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135); --darkreader-inline-color:#9c9487;\" data-darkreader-inline-color=\"\">La pachamanca hace referencia a una forma tradicional de preparar alimentos y a un plato típico de la gastronomía del Perú.</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">La Pachamanca nace con los rituales&nbsp;</li><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">de agradecimiento que realizaba el&nbsp;</li><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">hombre andino a la tierra por las&nbsp;</li><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">cosechas producidas.</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135); --darkreader-inline-color:#9c9487;\" data-darkreader-inline-color=\"\"><br></div></li></ul>', 'pachamanca1.jpg', 'pachamanca2.jpg', 'pachamanca3.jpg', 15, 'En Stock', '2017-01-30 16:59:00', ''),
(7, 5, 12, 'COXINHA DE GALINHA', 'Limeria', 41, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'Coxinha_Galinha1.jpg', 'Coxinha_Galinha2.jpg', 'Coxinha_Galinha3.jpg', 15, 'En Stock', '2021-12-14 22:56:50', '0'),
(8, 6, 4, 'QUESADILLA', 'Costa', 20, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'quesadilla-1.jpg', 'quesadilla-2.jpg', 'quesadilla-3.jpg', 15, 'En Stock', '2021-12-14 22:56:50', '0'),
(9, 6, 5, 'POZOLE', 'La Perla Tapatía', 35, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'pozole-1.jpg', 'pozole-2.jpg', 'pozole-3.jpg', 15, 'En Stock', '2021-12-14 22:56:50', '0'),
(10, 6, 6, 'CARNITA ASADA', 'Estilo Michoacán', 15, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'carnitas-1.jpg', 'carnitas-2.jpg', 'carnitas-3.jpg', 15, 'En Stock', '2021-12-14 22:56:50', '0'),
(11, 4, 9, 'ASADO ARGENTINO', 'Tradición Añeja de los Gauchos Argentinos', 50, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'asado-1.png', 'asado-2.jpg', 'asado-3.jpg', 15, 'En Stock', '2021-12-14 22:56:50', '0'),
(12, 4, 7, 'CHUPIN DE PESCADO', 'Al Borde del Río', 43, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'chupin_pescado1.jpeg', 'chupin_pescado2.jpg', 'chupin_pescado3.jpg', 15, 'En Stock', '2021-12-14 22:56:50', '0'),
(13, 0, 8, 'TORTAS FRITAS', 'Gastronomía Rioplatense', 39, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Origen</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Uno de los platos bandera es el Juane. Nacido en la ciudad de<br> Moyobamba, en la selva alta del Perú, este sabroso guiso de gallina,<br> sazonado con especias y cubierto por hojas de bijao, es un<br> verdadero manjar por su especial gusto, suave aroma y singular<br> presentación.</li>', 'tortas_fritas1.jpg', 'tortas_fritas2.jpg', 'tortas_fritas3.jpg', 15, 'En Stock', '2021-12-14 22:56:50', '0'),
(14, 7, 13, 'CACIO E PEPE', 'Tradicionalmente Tonnarelli', 70, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'cacio-1.jpg', 'cacio-2.jpg', 'cacio-3.jpg', 15, 'En Stock', '2021-12-14 23:09:59', ''),
(15, 3, 2, 'LOMO SALTADO', 'Chorrillos', 122, 75, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; --darkreader-inline-color:#d3cfca;\" data-darkreader-inline-color=\"\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px; --darkreader-inline-color:#d3cfca;\" data-darkreader-inline-color=\"\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135); --darkreader-inline-color:#9c9487;\" data-darkreader-inline-color=\"\">El lomo saltado es un plato típico de la gastronomía del Perú y uno de los mas populares.</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><span style=\"color: rgb(211, 207, 201); font-family: Roboto, arial, sans-serif; font-size: 13px; white-space: pre-wrap; --darkreader-inline-color:#c9c4bd;\" data-darkreader-inline-color=\"\">Cabe resaltar que el Inca Garcilaso de la Vega relata que las</span></li><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><span style=\"color: rgb(211, 207, 201); font-family: Roboto, arial, sans-serif; font-size: 13px; white-space: pre-wrap; --darkreader-inline-color:#c9c4bd;\" data-darkreader-inline-color=\"\">primeras reses llegaron al Perú en 1538 y cuando empezó a </span></li><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><span style=\"color: rgb(211, 207, 201); font-family: Roboto, arial, sans-serif; font-size: 13px; white-space: pre-wrap; --darkreader-inline-color:#c9c4bd;\" data-darkreader-inline-color=\"\">venderse la carne era demasiado cara.</span><br></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135); --darkreader-inline-color:#9c9487;\" data-darkreader-inline-color=\"\"><br></div></li></ul>', 'lomo1.jpg', 'lomo2.jpg', 'lomo3.jpg', 15, 'En Stock', '2021-12-14 23:12:58', ''),
(16, 3, 2, 'AJI DE GALLINA', 'Costeño', 153, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'ajigallina1.jpg', 'ajigallina2.jpg', 'ajigallina3.jpg', 15, 'En Stock', '2021-12-14 23:16:02', ''),
(17, 5, 10, 'CUSCUZ A LA PAULISTA', 'Tropical', 81, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'cuscuz-paulista1.jpg', 'cuscuz-paulista2.jpg', 'cuscuz-paulista3.jpg', 15, 'En Stock', '2021-12-14 23:22:30', ''),
(18, 5, 11, 'TACACÁ', 'Amazonas', 39, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'tacaca-1.jpg', 'tacaca-2.jpEg', 'tacaca-3.jpg', 15, 'En Stock', '2021-12-14 23:22:30', '');
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(19, 7, 14, 'TRENETTE AL PESTO', 'Gastronomía de Liguria', 50, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'trenette_pesto1.jpg', 'trenette_pesto2.jpg', 'trenette_pesto3.jpg', 15, 'En Stock', '2021-12-14 23:22:30', ''),
(20, 7, 15, 'PANZANELLA', 'Tradicional de la Región de Toscana', 31, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'panzanella-1.jpg', 'panzanella-2.jpg', 'panzanella-3.jpg', 15, 'En Stock', '2021-12-14 23:22:30', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `providers`
--

CREATE TABLE `providers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `providers`
--

INSERT INTO `providers` (`id`, `name`) VALUES
(1, 'PlazaVea'),
(2, 'Metro'),
(3, 'Tottus'),
(4, 'Franco'),
(5, 'Walmart'),
(6, 'Oxxo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receipt`
--

CREATE TABLE `receipt` (
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 3, 'Arequipa', '2017-01-26 16:29:09', ''),
(2, 3, 'Lima', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 3, 'Ilo', '2017-01-30 16:55:48', ''),
(4, 6, 'CDMX', '2021-12-14 21:43:42', ''),
(5, 6, 'Guadalajara', '2021-12-14 21:43:42', ''),
(6, 6, 'Cancún', '2021-12-14 21:43:42', ''),
(7, 4, 'Santa Fe', '2021-12-14 21:43:42', ''),
(8, 4, 'Rio de la Plata', '2021-12-14 21:43:42', ''),
(9, 4, 'Buenos Aires', '2021-12-14 21:43:42', ''),
(10, 5, 'Sao Paulo', '2021-12-14 21:43:42', ''),
(11, 5, 'Brasilia', '2021-12-14 21:43:42', ''),
(12, 5, 'Rio de Janeiro', '2021-12-14 21:43:42', ''),
(13, 7, 'Roma', '2021-12-14 21:43:42', ''),
(14, 7, 'Savona', '2021-12-14 21:43:42', ''),
(15, 7, 'Florencia', '2021-12-14 21:43:42', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(31, 'admin@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-14 18:51:24', NULL, 0),
(32, 'alejandro@gmail.com', 0x3132372e302e302e3100000000000000, '2021-12-15 16:58:34', '15-12-2021 12:00:28 PM', 1),
(33, 'harry@gmail.com', 0x3132372e302e302e3100000000000000, '2021-12-15 17:03:50', '15-12-2021 12:07:09 PM', 1),
(34, 'sergio@gmail.com', 0x3132372e302e302e3100000000000000, '2021-12-15 17:37:51', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'alejandro', 'alejandro@gmail.com', 987654321, 'f6fdffe48c908deb0f4c3bd36c032e72', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-15 16:58:20', NULL),
(6, 'harry', 'harry@gmail.com', 987654321, '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-15 17:03:36', NULL),
(7, 'sergio', 'sergio@gmail.com', 123456789, '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-15 17:37:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `employee_receipt`
--
ALTER TABLE `employee_receipt`
  ADD PRIMARY KEY (`employee_receipt`),
  ADD KEY `id_trabajador` (`id_employee`),
  ADD KEY `id_recibo` (`id_receipt`);

--
-- Indices de la tabla `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indices de la tabla `ingredient_provider`
--
ALTER TABLE `ingredient_provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_proveedor` (`id_provider`),
  ADD KEY `id_ingrediente` (`id_ingredient`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_carrito` (`id_cart`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `employee_receipt`
--
ALTER TABLE `employee_receipt`
  MODIFY `employee_receipt` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT de la tabla `ingredient_provider`
--
ALTER TABLE `ingredient_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
