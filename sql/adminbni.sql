-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-01-2018 a las 00:16:35
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `adminbni`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulos`
--

CREATE TABLE `capitulos` (
  `idcapitulos` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_region` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `capitulos`
--

INSERT INTO `capitulos` (`idcapitulos`, `nombre`, `id_region`) VALUES
(1, 'Capítulo 1', 1),
(2, 'Capítulo 2', 1),
(3, 'Capítulo 3', 1),
(4, 'Capítulo 4', 1),
(5, 'Capítulo 5', 1),
(6, 'Capítulo 6', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `empresa` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `giro` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `giro_real` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `invito` int(11) DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `id_capitulo` int(11) DEFAULT NULL,
  `img_solicitud` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `logo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `carta` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cometarios` varchar(545) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comprobante_pago` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `celular` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `page_web` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ventaja` varchar(545) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ref_ideal` varchar(445) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ref_semanal` varchar(445) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `datos`
--

INSERT INTO `datos` (`id`, `nombre`, `empresa`, `giro`, `giro_real`, `invito`, `email`, `fecha_alta`, `id_capitulo`, `img_solicitud`, `logo`, `carta`, `cometarios`, `comprobante_pago`, `telefono`, `celular`, `page_web`, `ventaja`, `ref_ideal`, `ref_semanal`) VALUES
(1, 'Miembro1', 'EmpresaA', 'Giro1', 'GiroReal1', NULL, 'miembro1@email.com', '2017-01-01', 1, NULL, NULL, NULL, NULL, NULL, '0', '01', NULL, NULL, NULL, NULL),
(2, 'Miembro2', 'EmpresaB', 'Giro2', 'GiroReal2', NULL, 'miembro2@email.com', '2016-07-06', 2, NULL, NULL, NULL, NULL, NULL, '2', '02', NULL, NULL, NULL, NULL),
(3, 'MIembro3', 'EmpresaC', 'Giro3', 'GiroReal3', NULL, 'miembro3@email.com', '2017-04-11', 1, NULL, NULL, NULL, NULL, NULL, '3', '03', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(1, '127.0.0.1', 'administrator', 1516216535);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miembros`
--

CREATE TABLE `miembros` (
  `idmiembros` int(11) NOT NULL,
  `id_datos` int(11) NOT NULL,
  `ed` int(11) DEFAULT NULL,
  `dc` int(11) DEFAULT NULL,
  `pw` int(11) DEFAULT NULL,
  `user` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `miembros`
--

INSERT INTO `miembros` (`idmiembros`, `id_datos`, `ed`, `dc`, `pw`, `user`) VALUES
(1, 1, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `region`
--

CREATE TABLE `region` (
  `idregion` int(11) NOT NULL,
  `nombre_region` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `region`
--

INSERT INTO `region` (`idregion`, `nombre_region`) VALUES
(1, 'Toluca'),
(2, 'Ciudad de México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `idsolicitudes` int(11) NOT NULL,
  `folio` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_user` int(11) UNSIGNED DEFAULT NULL,
  `id_datos` int(11) NOT NULL,
  `status` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`idsolicitudes`, `folio`, `id_user`, `id_datos`, `status`) VALUES
(1, 'AAAA0000A0', NULL, 3, 'PROCESO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fecha_alta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(4) NOT NULL,
  `verification_token` varchar(15) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `id_capitulo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `fecha_alta`, `verified`, `verification_token`, `admin`, `id_capitulo`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'kN6tqJ70XYEQVRSRXfrPQO', 1268889823, 1516224491, 1, 'Admin', 'istrator', 'ADMIN', '0', '2018-01-17 21:28:11', 0, '', 0, 1),
(2, '127.0.0.1', 'usuario1', '$2y$08$j25CR3i549gIRFl6dIk11O5HGj1YAbdAnE/NsCR2SvqysrKx3Gbwm', NULL, 'usuario1@usuario.com', NULL, NULL, NULL, NULL, 1515625989, 1516224455, 1, 'Usuario1', 'General', 'USERS', '1', '2018-01-17 21:27:35', 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD PRIMARY KEY (`idcapitulos`),
  ADD KEY `fk_capitulos_1_idx` (`id_region`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_datos_capitulos_idx` (`id_capitulo`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `miembros`
--
ALTER TABLE `miembros`
  ADD PRIMARY KEY (`idmiembros`,`id_datos`),
  ADD KEY `fk_miembros_datos_idx` (`id_datos`);

--
-- Indices de la tabla `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`idregion`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`idsolicitudes`,`id_datos`),
  ADD KEY `fk_solicitudes_users_idx` (`id_user`),
  ADD KEY `fk_solicitudes_datos_idx` (`id_datos`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_capitulo` (`id_capitulo`);

--
-- Indices de la tabla `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `capitulos`
--
ALTER TABLE `capitulos`
  MODIFY `idcapitulos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `miembros`
--
ALTER TABLE `miembros`
  MODIFY `idmiembros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `region`
--
ALTER TABLE `region`
  MODIFY `idregion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `idsolicitudes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `capitulos`
--
ALTER TABLE `capitulos`
  ADD CONSTRAINT `fk_capitulos_region` FOREIGN KEY (`id_region`) REFERENCES `region` (`idregion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `datos`
--
ALTER TABLE `datos`
  ADD CONSTRAINT `fk_datos_capitulos` FOREIGN KEY (`id_capitulo`) REFERENCES `capitulos` (`idcapitulos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `miembros`
--
ALTER TABLE `miembros`
  ADD CONSTRAINT `fk_miembros_datos` FOREIGN KEY (`id_datos`) REFERENCES `datos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `fk_solicitudes_datos` FOREIGN KEY (`id_datos`) REFERENCES `datos` (`id`),
  ADD CONSTRAINT `fk_solicitudes_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
