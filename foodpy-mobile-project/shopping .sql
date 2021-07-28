-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2021 a las 06:24:37
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

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
(3, 'Costa', 'Platos del norte del pais.', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, 'Sierra', 'Platos de la sierra del peru', '2017-01-24 19:19:32', ''),
(5, 'Selva', 'Platos exoticos de la selva peruana.', '2017-01-24 19:19:54', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL,
  `ingrediente` varchar(255) NOT NULL,
  `precio_1` int(11) NOT NULL,
  `precio_2` int(11) NOT NULL,
  `precio_3` int(11) NOT NULL,
  `products_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`id`, `ingrediente`, `precio_1`, `precio_2`, `precio_3`, `products_id`) VALUES
(1, 'Pechuga de gallina ', 23, 10, 16, 16),
(2, 'Laurel ', 2, 3, 2, 16),
(3, 'Apio ', 3, 3, 2, 16),
(4, 'Zanahoria ', 4, 4, 4, 16),
(5, 'Pan ', 2, 2, 3, 16),
(6, 'Leche ', 4, 4, 3, 16),
(7, 'Aceite ', 10, 10, 10, 16),
(8, 'Cebolla', 3, 3, 3, 16),
(9, 'Dientes de ajo ', 15, 16, 15, 16),
(10, 'Aji de amarillo ', 8, 6, 7, 16),
(11, 'Palillo ', 1, 3, 3, 16),
(12, 'Comino ', 4, 4, 4, 16),
(13, 'Pecanas ', 15, 14, 13, 16),
(14, 'Queso ', 36, 36, 38, 16),
(15, 'Papas ', 4, 4, 2, 16),
(16, 'Aceitunas ', 7, 9, 7, 16),
(17, 'Huevos ', 7, 9, 7, 16),
(18, 'Sal ', 2, 2, 2, 16),
(19, 'Pimienta', 3, 4, 3, 16),
(20, 'Cuy', 23, 28, 30, 1),
(21, 'Chicha de jora\r\n', 15, 19, 23, 1),
(22, 'Aji panca \r\n', 2, 2, 3, 1),
(23, 'Oregano ', 4, 4, 3, 1),
(24, 'Hierbabuena ', 1, 1, 1, 1),
(25, 'Limon ', 4, 3, 4, 1),
(26, 'Sal', 2, 2, 2, 1),
(27, 'Aceite', 10, 10, 10, 1),
(28, 'Gallina ', 16, 12, 14, 17),
(29, 'Bijao', 5, 4, 6, 17),
(30, 'Arroz blanco\r\n', 5, 4, 4, 17),
(31, 'Huevos ', 7, 9, 7, 17),
(32, 'Oregano', 1, 1, 1, 17),
(33, 'Palillo amarillo ', 2, 2, 2, 17),
(34, 'Dientes de ajo ', 15, 16, 15, 17),
(35, 'Aceite ', 10, 10, 10, 17),
(36, 'Sal ', 2, 2, 2, 17),
(37, 'Laurel ', 2, 3, 2, 17),
(38, 'Pimienta', 4, 4, 3, 17),
(39, 'Comino ', 4, 4, 4, 17),
(40, 'Culantro ', 1, 1, 1, 17),
(41, 'Aceitunas', 7, 7, 7, 17),
(42, 'Lomo ', 60, 68, 78, 15),
(43, 'Sal', 2, 2, 2, 15),
(44, 'Pimienta', 3, 3, 2, 15),
(45, 'Aceite', 10, 10, 10, 15),
(46, 'Dientes de ajo\r\n', 15, 15, 14, 15),
(47, 'Cebolla ', 3, 2, 2, 15),
(48, 'Tomates', 3, 3, 2, 15),
(49, 'Aji amarillo\r\n', 7, 5, 6, 15),
(50, 'Salsa de soya ', 7, 7, 6, 15),
(51, 'Vinagre tinto\r\n', 4, 4, 4, 15),
(52, 'Culantro', 1, 1, 1, 15),
(53, 'Papas', 3, 3, 2, 15),
(54, 'Arroz blanco\r\n', 4, 3, 3, 15),
(55, 'Huacatay', 1, 1, 1, 2),
(56, 'Culantro', 1, 1, 1, 2),
(57, 'Chincho', 1, 2, 3, 2),
(58, 'Dientes de ajo\r\n', 15, 15, 14, 2),
(59, 'Aceite', 10, 10, 10, 2),
(60, 'Aji verde\r\n', 2, 2, 2, 2),
(61, 'Pollo ', 15, 11, 13, 2),
(62, 'Cordero', 24, 22, 25, 2),
(63, 'Chancho ', 23, 24, 22, 2),
(64, 'Vinagre ', 4, 4, 4, 2),
(65, 'Papas ', 3, 3, 2, 2),
(66, 'Habas ', 6, 6, 6, 2),
(67, 'Chicha de jora\r\n', 15, 18, 22, 2),
(68, 'Camote ', 3, 3, 2, 2),
(69, 'Sal', 2, 2, 2, 2),
(70, 'Platanos verdes\r\n', 5, 6, 5, 18),
(71, 'Cecina de cerdo\r\n', 8, 10, 10, 18),
(72, 'Chorizo', 14, 15, 15, 18),
(73, 'Aceite ', 10, 10, 10, 18),
(74, 'Sal', 2, 2, 2, 18);

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
(1, 4, 3, 'CUY CHACTADO', 'Arequipa', 61, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Origen</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">El cuy chactao es un plato típico de la gastronomía del <br> Perú, concretamente de la región de Arequipa. Se trata de un cuy <br> frito en abundante aceite bajo una piedra que hace las veces de <br> tapa.</li>', 'cuy1.jpeg', 'cuy2.jpg', 'cuy3.jpg', 15, 'En Stock', '2021-01-30 16:54:35', ''),
(2, 4, 4, 'PACHAMANCA', 'Andino', 125, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Origen</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">La Pachamanca nace con los rituales de agradecimiento que <br> realizaba el hombre andino a la tierra por las cosechas producidas.</li>', 'pachamanca1.jpg', 'pachamanca2.jpg', 'pachamanca3.jpg', 0, 'In Stock', '2021-01-30 16:59:00', ''),
(15, 3, 8, 'LOMO SALTADO', 'Chorrillos', 122, 75, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Origen</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">El Lomo Saltado es un plato típico de la gastronomía del Perú cuyos<br>registros datan de fines del siglo XIX, donde se le conocía como<br>lomito de vaca, lomito saltado o lomito a la chorrillana.</li>', 'lomo1.jpg', 'lomo2.jpg', 'lomo3.jpg', 15, 'In Stock', '2021-02-04 04:35:13', ''),
(16, 3, 8, 'AJI DE GALLINA', 'Costeño', 153, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Origen</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">El ají de gallina es unplato típico de la gastronomía peruana,<br> concretamente de la costa, que consiste en un ají o crema espesa<br> con pechuga de gallina deshilachada</li>', 'ajigallina1.jpg', 'ajigallina2.jpg', 'ajigallina3.jpg', 15, 'In Stock', '2021-02-04 04:36:23', ''),
(17, 5, 9, 'JUANE', 'Moyobamba', 81, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Origen</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">Uno de los platos bandera es el Juane. Nacido en la ciudad de<br> Moyobamba, en la selva alta del Perú, este sabroso guiso de gallina,<br> sazonado con especias y cubierto por hojas de bijao, es un<br> verdadero manjar por su especial gusto, suave aroma y singular<br> presentación.</li>', 'juane1.jpg', 'juane2.jpg', 'juane3.jpg', 0, 'In Stock', '2021-02-04 04:40:37', ''),
(18, 5, 10, 'TACACHO CON CECINA Y CHORIZO', 'Selvático', 39, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Origen</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">El tacacho con cecina es un plato típico de la gastronomía del Perú<br>originario de la zona de la selva peruana y ampliamente difundido<br> en el resto del país.</li>', 'tacacho1.jpg', 'tacacho2.jpeg', 'tacacho3.jpg', 0, 'In Stock', '2021-02-04 04:42:27', '');

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
(6, 'harry', 'metal@gmail.com', 987654321, '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-01 05:09:49', NULL),
(7, 'cled', 'cled@gmail.com', 987654322, '25f9e794323b453885f5181f1b624d0b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-01 08:18:38', NULL),
(9, 'mass', 'mass@gmail.com', 999999999, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-02 03:36:04', NULL),
(10, 'bryan', 'bryan@gmail.com', 4444444444, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-05 01:26:58', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id` (`products_id`);

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
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

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
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
