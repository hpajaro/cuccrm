-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2015 a las 07:38:21
-- Versión del servidor: 5.5.36
-- Versión de PHP: 5.4.25

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `fact`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dir_cliente` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(4) DEFAULT NULL,
  `email_cliente` varchar(100) DEFAULT NULL,
  `id_estadocliente` bigint(20) DEFAULT NULL,
  `id_tipo_cliente` bigint(20) DEFAULT NULL,
  `identificacion` varchar(20) DEFAULT NULL,
  `nombre_cliente` varchar(150) DEFAULT NULL,
  `tel_cliente` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `dir_cliente`, `eliminado`, `email_cliente`, `id_estadocliente`, `id_tipo_cliente`, `identificacion`, `nombre_cliente`, `tel_cliente`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '72135240', 'Hernan Pajaro', NULL),
(2, NULL, NULL, NULL, NULL, NULL, '13458993', 'Pedro Paramo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_facturas`
--

CREATE TABLE IF NOT EXISTS `det_facturas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cantidad` float NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `encfactura_id` bigint(20) NOT NULL,
  `id_estado_det_factura` bigint(20) NOT NULL,
  `precio` float NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK94C93AA7EDA53F7B` (`encfactura_id`),
  KEY `FK94C93AA79528449B` (`producto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enc_facturas`
--

CREATE TABLE IF NOT EXISTS `enc_facturas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint(20) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_estado_enc_factura` bigint(20) DEFAULT NULL,
  `num_factura` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9FA4A5C0555A4879` (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cls` varchar(255) NOT NULL,
  `controlador` varchar(200) DEFAULT NULL,
  `desc_opcion` varchar(200) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_opcion` varchar(1) NOT NULL,
  `id_padre` bigint(20) DEFAULT NULL,
  `id_tipo_opcion` varchar(10) DEFAULT NULL,
  `nombre_opcion` varchar(100) NOT NULL,
  `orden` varchar(3) DEFAULT NULL,
  `tiene_hijos` tinyint(4) NOT NULL,
  `url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `cls`, `controlador`, `desc_opcion`, `eliminado`, `estado_opcion`, `id_padre`, `id_tipo_opcion`, `nombre_opcion`, `orden`, `tiene_hijos`, `url`) VALUES
(1, 'link', 'Parametro', 'Manejo de Parametros', 0, 'A', NULL, NULL, 'Parametros', NULL, 0, '/cuccrm/Parametro/index'),
(2, 'link', 'Usuario', 'Manejo de Usuarios', 0, 'A', NULL, NULL, 'Usuarios', NULL, 0, '/cucrm/Usuario/index'),
(3, 'link', 'Producto', 'Manejo de Productos', 0, 'A', NULL, NULL, 'Productos', NULL, 0, '/cuccrm/Producto/index');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE IF NOT EXISTS `operaciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `acciones` varchar(1000) NOT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_operacion` varchar(1) NOT NULL,
  `nombre_operacion` varchar(100) NOT NULL,
  `opcion_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKEAB8C1C68490B1B` (`opcion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `operaciones`
--

INSERT INTO `operaciones` (`id`, `acciones`, `eliminado`, `estado_operacion`, `nombre_operacion`, `opcion_id`) VALUES
(1, 'create,', 0, 'A', 'CREAR', NULL),
(2, 'index,show,', 0, 'A', 'VER', NULL),
(3, 'edit,update,', 0, 'A', 'MODIFICAR', NULL),
(4, 'borrar,', 0, 'A', 'BORRAR', NULL),
(5, 'delete,', 0, 'A', 'DESTRUIR', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE IF NOT EXISTS `parametros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `atributo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `estado_parametro` varchar(1) NOT NULL,
  `tipo_parametro` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `parametros`
--

INSERT INTO `parametros` (`id`, `atributo`, `descripcion`, `eliminado`, `estado_parametro`, `tipo_parametro`) VALUES
(1, 'idTipoProducto', 'Tipo de Producto.', 0, 'A', 'U'),
(2, 'idCategoriaProducto', 'Categoria del producto', 0, 'A', 'U'),
(3, 'idEstadoProducto', 'Estado del Producto', 0, 'A', 'U');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eliminado` tinyint(4) NOT NULL,
  `id_categoria_producto` bigint(20) DEFAULT NULL,
  `id_estado_producto` bigint(20) DEFAULT NULL,
  `id_tipo_producto` bigint(20) DEFAULT NULL,
  `nombre_producto` varchar(150) NOT NULL,
  `ref_producto` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `eliminado`, `id_categoria_producto`, `id_estado_producto`, `id_tipo_producto`, `nombre_producto`, `ref_producto`) VALUES
(1, 0, 2, 4, 1, 'Teclas USB', '123'),
(3, 0, 2, 4, 1, 'Mouse USb', '123459-R');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `desc_rol` varchar(200) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol` varchar(1) NOT NULL,
  `nombre_rol` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `desc_rol`, `eliminado`, `estado_rol`, `nombre_rol`) VALUES
(1, 'Administrador Funcional', 0, 'A', 'Admin Funcional'),
(2, 'Administrador del Sistema', 0, 'A', 'Admin Sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_usuarios`
--

CREATE TABLE IF NOT EXISTS `roles_usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol_usuario` varchar(1) NOT NULL,
  `rol_id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC9AC5A476E4093D9` (`rol_id`),
  KEY `FKC9AC5A47665ECBF9` (`usuario_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `roles_usuarios`
--

INSERT INTO `roles_usuarios` (`id`, `eliminado`, `estado_rol_usuario`, `rol_id`, `usuario_id`) VALUES
(1, 0, 'A', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_opcion_operacion`
--

CREATE TABLE IF NOT EXISTS `rol_opcion_operacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol_opcion_operacion` varchar(1) NOT NULL,
  `opcion_id` bigint(20) NOT NULL,
  `operacion_id` bigint(20) NOT NULL,
  `rol_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD4E68CAF6E4093D9` (`rol_id`),
  KEY `FKD4E68CAFE0B387F9` (`operacion_id`),
  KEY `FKD4E68CAF8490B1B` (`opcion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `rol_opcion_operacion`
--

INSERT INTO `rol_opcion_operacion` (`id`, `eliminado`, `estado_rol_opcion_operacion`, `opcion_id`, `operacion_id`, `rol_id`) VALUES
(1, 0, 'A', 1, 2, 1),
(2, 0, 'A', 2, 2, 1),
(3, 0, 'A', 1, 1, 1),
(4, 0, 'A', 1, 4, 1),
(5, 0, 'A', 1, 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contrasena` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `id_estado_usuario` varchar(10) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `contrasena`, `eliminado`, `id_estado_usuario`, `nombre`, `usuario`) VALUES
(1, '202cb962ac59075b964b07152d234b70', 0, 'A', 'Hernan Pajaro ', 'hpajaro ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor_parametros`
--

CREATE TABLE IF NOT EXISTS `valor_parametros` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `desc_val_parametro` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `estado_valor_parametro` varchar(1) NOT NULL,
  `orden` varchar(255) DEFAULT NULL,
  `parametro_id` bigint(20) NOT NULL,
  `valor` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK831254B52AE44859` (`parametro_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `valor_parametros`
--

INSERT INTO `valor_parametros` (`id`, `desc_val_parametro`, `eliminado`, `estado_valor_parametro`, `orden`, `parametro_id`, `valor`) VALUES
(1, 'gadget fisicos', 0, 'A', NULL, 1, 'Hardware'),
(3, NULL, 0, 'A', NULL, 1, 'Servicios'),
(4, NULL, 0, 'A', NULL, 3, 'Activo'),
(5, NULL, 0, 'A', NULL, 3, 'Inactivo'),
(6, NULL, 0, 'A', NULL, 3, 'Obsoleto'),
(7, NULL, 0, 'A', NULL, 2, 'Portatiles'),
(8, NULL, 0, 'A', NULL, 2, 'Accesorios');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `det_facturas`
--
ALTER TABLE `det_facturas`
  ADD CONSTRAINT `FK94C93AA79528449B` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `FK94C93AA7EDA53F7B` FOREIGN KEY (`encfactura_id`) REFERENCES `enc_facturas` (`id`);

--
-- Filtros para la tabla `enc_facturas`
--
ALTER TABLE `enc_facturas`
  ADD CONSTRAINT `FK9FA4A5C0555A4879` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD CONSTRAINT `FKEAB8C1C68490B1B` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`);

--
-- Filtros para la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
  ADD CONSTRAINT `FKC9AC5A47665ECBF9` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `FKC9AC5A476E4093D9` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `rol_opcion_operacion`
--
ALTER TABLE `rol_opcion_operacion`
  ADD CONSTRAINT `FKD4E68CAF6E4093D9` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKD4E68CAF8490B1B` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`),
  ADD CONSTRAINT `FKD4E68CAFE0B387F9` FOREIGN KEY (`operacion_id`) REFERENCES `operaciones` (`id`);

--
-- Filtros para la tabla `valor_parametros`
--
ALTER TABLE `valor_parametros`
  ADD CONSTRAINT `FK831254B52AE44859` FOREIGN KEY (`parametro_id`) REFERENCES `parametros` (`id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
