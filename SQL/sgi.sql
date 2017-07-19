-- phpMyAdmin SQL Dump
-- version 4.4.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-07-2017 a las 23:27:28
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sgi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `computadoras`
--

CREATE TABLE IF NOT EXISTS `computadoras` (
  `id` int(10) unsigned NOT NULL,
  `hostname` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `capacidad_disco` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `memoria_ram` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `tcomputadora_id` int(10) unsigned NOT NULL,
  `marca_id` int(10) unsigned NOT NULL,
  `modelo_id` int(10) unsigned NOT NULL,
  `Procesador_id` int(10) unsigned NOT NULL,
  `sistema_operativo_id` int(10) unsigned NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `serial` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(30) CHARACTER SET utf8 NOT NULL,
  `observacion` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `descripcion`, `observacion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'System', 'Grupo de Sistemas', '2017-06-14 00:58:38', '2017-06-13 20:58:38', 1, 0),
(2, 'Gestion de Disponibilidad', 'Coordinador Juan Carlos Ramos', '2017-06-15 02:14:04', '0000-00-00 00:00:00', 1, 0),
(3, 'Gestión de Capacidad', 'Gestión de Capacidad', '2017-07-03 16:11:07', '0000-00-00 00:00:00', 3, 0),
(4, 'Gestión de Procesos', 'Gestión de Procesos', '2017-07-03 16:11:20', '0000-00-00 00:00:00', 3, 0),
(5, 'Administración', 'Administración', '2017-07-03 16:11:29', '0000-00-00 00:00:00', 3, 0),
(6, 'Mercadeo', 'Mercadeo', '2017-07-03 16:14:23', '0000-00-00 00:00:00', 3, 0),
(7, 'Talento Humano', 'Talento Humano', '2017-07-03 16:14:34', '0000-00-00 00:00:00', 3, 0),
(8, 'Servicios Generales', 'Servicios Generales', '2017-07-03 16:14:49', '0000-00-00 00:00:00', 3, 0),
(9, 'Gestion de Bigdata', 'Gestion de Bigdata', '2017-07-03 16:15:27', '0000-00-00 00:00:00', 3, 0),
(10, 'Gestión de ITSM', 'Gestión de ITSM', '2017-07-03 16:15:39', '0000-00-00 00:00:00', 3, 0),
(11, 'Servicios', 'Servicios', '2017-07-03 16:15:51', '0000-00-00 00:00:00', 3, 0),
(12, 'Ventas', 'Ventas', '2017-07-03 16:15:57', '0000-00-00 00:00:00', 3, 0),
(13, 'Gestión de Mainframe', 'Gestión de Mainframe', '2017-07-03 17:39:04', '0000-00-00 00:00:00', 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_ip`
--

CREATE TABLE IF NOT EXISTS `direccion_ip` (
  `id` int(10) unsigned NOT NULL,
  `computadoras_id` int(10) unsigned NOT NULL,
  `direccion_ip` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `observaciones` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `esolicitud`
--

CREATE TABLE IF NOT EXISTS `esolicitud` (
  `id` int(11) NOT NULL,
  `estado` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'Estado de la Solicitud',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_at` datetime NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `created_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `esolicitud`
--

INSERT INTO `esolicitud` (`id`, `estado`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(0, 'Abierta', '2017-07-06 18:11:22', '0000-00-00 00:00:00', 0, 0),
(1, 'En Curso', '2017-07-06 18:11:22', '0000-00-00 00:00:00', 0, 0),
(2, 'Cerrada', '2017-07-06 18:11:53', '0000-00-00 00:00:00', 0, 0),
(3, 'Resuelta', '2017-07-06 18:11:53', '0000-00-00 00:00:00', 0, 0),
(4, 'Cancelada', '2017-07-06 18:12:16', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Asignado', '2017-06-21 22:33:34', '0000-00-00 00:00:00', 1, 0),
(2, 'Prestamo', '2017-06-21 22:33:44', '0000-00-00 00:00:00', 1, 0),
(3, 'Depósito', '2017-07-12 19:08:51', '0000-00-00 00:00:00', 0, 0),
(4, 'Disponible', '2017-07-12 19:08:51', '0000-00-00 00:00:00', 0, 0),
(5, 'En Stock', '2017-07-12 19:09:48', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE IF NOT EXISTS `marca` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'DELL', '2017-06-21 21:56:22', '0000-00-00 00:00:00', 1, 0),
(2, 'Hewlett-Packard', '2017-06-21 21:56:52', '0000-00-00 00:00:00', 1, 0),
(3, 'Intell', '2017-06-22 01:44:25', '0000-00-00 00:00:00', 1, 0),
(8, 'TOSHIBA', '2017-07-12 17:19:42', '0000-00-00 00:00:00', 6, 0),
(9, 'Microsoft', '2017-07-13 15:10:20', '0000-00-00 00:00:00', 6, 0),
(10, 'Targus', '2017-07-13 15:14:53', '0000-00-00 00:00:00', 6, 0),
(11, 'Delux', '2017-07-13 15:15:07', '0000-00-00 00:00:00', 6, 0),
(12, 'Logitech', '2017-07-13 15:15:19', '0000-00-00 00:00:00', 6, 0),
(13, 'Masell', '2017-07-13 15:15:30', '0000-00-00 00:00:00', 6, 0),
(14, 'Lenovo', '2017-07-13 15:15:43', '0000-00-00 00:00:00', 6, 0),
(15, 'Inalambrico', '2017-07-13 18:10:43', '0000-00-00 00:00:00', 6, 0),
(16, 'Alambrico', '2017-07-13 18:11:19', '0000-00-00 00:00:00', 6, 0),
(17, 'Genius', '2017-07-13 18:49:40', '0000-00-00 00:00:00', 6, 0),
(18, 'Samsung', '2017-07-13 20:21:34', '0000-00-00 00:00:00', 6, 0),
(19, 'Hp', '2017-07-13 20:21:38', '0000-00-00 00:00:00', 6, 0),
(20, 'Sandisk', '2017-07-13 20:24:06', '0000-00-00 00:00:00', 6, 0),
(21, 'Seagate', '2017-07-13 20:30:22', '0000-00-00 00:00:00', 6, 0),
(22, 'Usa-net', '2017-07-14 19:27:09', '0000-00-00 00:00:00', 6, 0),
(23, 'DVDwriter', '2017-07-14 19:27:20', '0000-00-00 00:00:00', 6, 0),
(24, 'SUN microsystem', '2017-07-14 19:34:04', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `tipo_menu_id` int(10) unsigned NOT NULL,
  `etiqueta` varchar(25) CHARACTER SET utf8 NOT NULL,
  `url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `posicion` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `icono` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `menu_id`, `tipo_menu_id`, `etiqueta`, `url`, `posicion`, `icono`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, NULL, 1, 'Registros', 'http://sgi.sti.com.ve/', 1, 'fa fa-exchange', '2017-06-21 22:52:36', '2017-07-13 14:01:11', 1, 1),
(2, NULL, 1, 'Navegacion', 'http://sgi.sti.com.ve/', 3, 'fa fa-bars', '2017-06-21 22:52:57', '0000-00-00 00:00:00', 1, 0),
(3, NULL, 1, 'Inventario', 'http://sgi.sti.com.ve/', 4, 'fa fa-desktop', '2017-06-21 22:56:04', '2017-06-21 18:56:23', 1, 1),
(4, NULL, 1, 'Seguridad', 'http://sgi.sti.com.ve/', 5, 'fa fa-lock', '2017-06-21 22:58:43', '0000-00-00 00:00:00', 1, 0),
(5, 1, 1, 'Estados', 'admin/generales/estado', 1, 'fa fa-tags', '2017-06-21 23:00:52', '2017-06-21 19:46:14', 1, 1),
(6, 1, 1, 'Sistema Operativo', 'admin/generales/sistema_operativo', 2, 'fa fa-windows', '2017-06-21 23:02:41', '2017-06-21 19:46:23', 1, 1),
(7, 2, 1, 'Lista Menu', 'admin/navegacion/menu/ ', 2, 'fa fa-maxcdn', '2017-06-21 23:04:11', '2017-06-21 19:46:38', 1, 1),
(8, 2, 1, 'Tipo Menu', 'admin/navegacion/tipo-menu/', 1, 'fa fa-maxcdn', '2017-06-21 23:04:58', '2017-06-21 19:46:31', 1, 1),
(9, 1, 1, 'Marcas', 'admin/inventario/marca', 4, 'fa  fa-registered', '2017-06-21 23:09:04', '2017-06-21 19:46:46', 1, 1),
(10, 1, 1, 'Modelos', 'admin/inventario/modelo', 5, 'fa  fa-registered', '2017-06-21 23:09:37', '2017-06-21 19:46:55', 1, 1),
(11, 1, 1, 'Tipos de Perifericos', 'admin/inventario/tperiferico', 7, 'fa fa-plug', '2017-06-21 23:11:11', '2017-06-21 19:47:03', 1, 1),
(12, 1, 1, 'Dispositivos de Red', 'admin/inventario/tred', 8, 'fa fa-sitemap', '2017-06-21 23:14:03', '2017-06-21 19:47:12', 1, 1),
(13, 1, 1, 'Tipos de Computadoras', 'admin/inventario/tcomputadora', 6, 'fa fa-server', '2017-06-21 23:15:16', '2017-06-21 19:47:21', 1, 1),
(14, 4, 1, 'Departamentos', 'admin/seguridad/departamento', 1, 'fa fa-institution', '2017-06-21 23:17:00', '2017-06-21 19:47:29', 1, 1),
(15, 4, 1, 'Usuarios', 'admin/seguridad/usuario', 2, 'fa fa-user-plus', '2017-06-21 23:17:46', '2017-06-21 19:47:37', 1, 1),
(16, 4, 1, 'Permisos', 'admin/seguridad/permiso', 3, 'fa fa-user-secret', '2017-06-21 23:18:38', '2017-06-21 19:47:47', 1, 1),
(17, 4, 1, 'Roles', 'admin/seguridad/rol', 4, 'fa fa-users', '2017-06-21 23:19:22', '2017-06-21 19:47:55', 1, 1),
(18, 4, 1, 'Asignar Permisos', 'admin/seguridad/permiso_rol', 5, 'fa fa-user-secret', '2017-06-21 23:20:11', '2017-06-21 19:48:04', 1, 1),
(19, 4, 1, 'Asignar Menu', 'admin/navegacion/menu_rol', 6, 'fa fa-user-plus', '2017-06-21 23:20:55', '2017-06-21 19:48:12', 1, 1),
(20, 4, 1, 'Crear Menu', 'admin/navegacion/menu/crear-archivos', 7, 'fa fa-history', '2017-06-21 23:21:59', '2017-06-21 19:48:20', 1, 1),
(21, 4, 1, 'Crear Permisos', 'admin/seguridad/permiso/crear_archivos', 8, 'fa  fa-unlock', '2017-06-21 23:27:08', '2017-06-21 19:48:29', 1, 1),
(22, 1, 1, 'Procesador', 'admin/generales/Procesador', 3, 'fa  fa-cube', '2017-06-22 01:55:59', '2017-07-13 14:02:17', 1, 1),
(23, 3, 1, 'Computadoras', 'dashboard/computadoras', 1, 'fa fa-desktop', '2017-06-22 21:40:46', '0000-00-00 00:00:00', 1, 0),
(24, 3, 1, 'Perifericos', 'dashboard/periferico/', 2, 'fa fa-plug', '2017-06-23 01:12:24', '2017-06-22 21:12:33', 1, 1),
(25, 3, 1, 'Dispositivo de Red', 'dashboard/red', 3, 'fa fa-exchange', '2017-06-23 17:25:33', '0000-00-00 00:00:00', 1, 0),
(26, NULL, 1, 'Solicitudes', 'dashboard/solicitudes', 2, 'fa fa-clipboard', '2017-07-06 17:54:00', '0000-00-00 00:00:00', 1, 0),
(27, 26, 1, 'Crear Solicitud', 'dashboard/solicitudes/crear', 1, 'fa fa-check-square-o', '2017-07-06 17:55:25', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_rol`
--

CREATE TABLE IF NOT EXISTS `menu_rol` (
  `id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `estado` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `menu_rol`
--

INSERT INTO `menu_rol` (`id`, `menu_id`, `rol_id`, `estado`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 1, 1, '2017-06-21 23:23:08', '0000-00-00 00:00:00', 1, 0),
(2, 5, 1, 1, '2017-06-21 23:23:09', '0000-00-00 00:00:00', 1, 0),
(3, 6, 1, 1, '2017-06-21 23:23:12', '0000-00-00 00:00:00', 1, 0),
(4, 2, 1, 1, '2017-06-21 23:23:13', '0000-00-00 00:00:00', 1, 0),
(5, 8, 1, 1, '2017-06-21 23:23:14', '0000-00-00 00:00:00', 1, 0),
(6, 7, 1, 1, '2017-06-21 23:23:15', '0000-00-00 00:00:00', 1, 0),
(7, 3, 1, 1, '2017-06-21 23:23:16', '0000-00-00 00:00:00', 1, 0),
(8, 9, 1, 1, '2017-06-21 23:23:17', '0000-00-00 00:00:00', 1, 0),
(9, 10, 1, 1, '2017-06-21 23:23:20', '0000-00-00 00:00:00', 1, 0),
(10, 11, 1, 1, '2017-06-21 23:23:22', '0000-00-00 00:00:00', 1, 0),
(11, 12, 1, 1, '2017-06-21 23:23:23', '0000-00-00 00:00:00', 1, 0),
(12, 13, 1, 1, '2017-06-21 23:23:25', '0000-00-00 00:00:00', 1, 0),
(13, 4, 1, 1, '2017-06-21 23:23:26', '0000-00-00 00:00:00', 1, 0),
(14, 14, 1, 1, '2017-06-21 23:23:26', '0000-00-00 00:00:00', 1, 0),
(15, 15, 1, 1, '2017-06-21 23:23:27', '0000-00-00 00:00:00', 1, 0),
(16, 16, 1, 1, '2017-06-21 23:23:28', '0000-00-00 00:00:00', 1, 0),
(17, 17, 1, 1, '2017-06-21 23:23:29', '0000-00-00 00:00:00', 1, 0),
(18, 18, 1, 1, '2017-06-21 23:23:30', '0000-00-00 00:00:00', 1, 0),
(19, 19, 1, 1, '2017-06-21 23:23:31', '0000-00-00 00:00:00', 1, 0),
(20, 20, 1, 1, '2017-06-21 23:23:32', '0000-00-00 00:00:00', 1, 0),
(21, 21, 1, 1, '2017-06-22 01:56:27', '0000-00-00 00:00:00', 1, 0),
(22, 22, 1, 1, '2017-06-22 01:58:45', '0000-00-00 00:00:00', 1, 0),
(23, 23, 1, 1, '2017-06-22 21:41:22', '0000-00-00 00:00:00', 1, 0),
(24, 24, 1, 1, '2017-06-23 01:12:46', '0000-00-00 00:00:00', 1, 0),
(25, 25, 1, 1, '2017-06-23 17:26:28', '0000-00-00 00:00:00', 1, 0),
(26, 1, 2, 0, '2017-06-30 21:03:23', '2017-06-30 17:03:23', 1, 1),
(27, 3, 2, 0, '2017-06-30 21:03:28', '2017-07-06 13:59:19', 1, 1),
(28, 23, 2, 0, '2017-06-30 21:03:28', '2017-07-06 13:59:20', 1, 1),
(29, 24, 2, 0, '2017-06-30 21:03:30', '2017-07-06 13:59:21', 1, 1),
(30, 25, 2, 1, '2017-06-30 21:03:31', '0000-00-00 00:00:00', 1, 0),
(31, 26, 1, 1, '2017-07-06 17:55:49', '0000-00-00 00:00:00', 1, 0),
(32, 26, 2, 1, '2017-07-06 17:55:50', '0000-00-00 00:00:00', 1, 0),
(33, 27, 2, 1, '2017-07-06 17:56:03', '0000-00-00 00:00:00', 1, 0),
(34, 27, 1, 1, '2017-07-06 17:56:04', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE IF NOT EXISTS `modelo` (
  `id` int(10) unsigned NOT NULL,
  `marca_id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`id`, `marca_id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 'Inspiron', '2017-06-21 22:04:20', '0000-00-00 00:00:00', 1, 0),
(2, 3, 'Celeron', '2017-06-22 01:44:38', '0000-00-00 00:00:00', 1, 0),
(4, 15, 'inalambrico', '2017-07-13 18:12:54', '0000-00-00 00:00:00', 6, 0),
(5, 16, 'Alambrico', '2017-07-13 18:13:04', '0000-00-00 00:00:00', 6, 0),
(6, 19, '8 Gb', '2017-07-13 20:23:22', '0000-00-00 00:00:00', 6, 0),
(7, 18, '128 Gb', '2017-07-13 20:23:50', '0000-00-00 00:00:00', 6, 0),
(8, 20, '16 Gb', '2017-07-13 20:24:24', '0000-00-00 00:00:00', 6, 0),
(9, 8, '1 Tb', '2017-07-13 20:30:05', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periferico`
--

CREATE TABLE IF NOT EXISTS `periferico` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_periferico_id` int(10) unsigned NOT NULL,
  `marca_id` int(10) unsigned NOT NULL,
  `modelo_id` int(10) unsigned NOT NULL,
  `serial` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `estado_id` int(10) unsigned NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `periferico`
--

INSERT INTO `periferico` (`id`, `nombre`, `tipo_periferico_id`, `marca_id`, `modelo_id`, `serial`, `estado_id`, `usuario_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(4, 'Mouse', 1, 9, 4, '1204004652', 1, 33, '2017-07-13 15:11:13', '2017-07-13 14:16:01', 6, 6),
(5, 'Mouse', 1, 9, 5, 'X822087', 1, 38, '2017-07-13 15:14:39', '2017-07-13 14:15:52', 6, 6),
(6, 'Mouse', 1, 9, 4, '610300537395/X874958-009', 1, 32, '2017-07-13 15:18:10', '2017-07-13 14:15:38', 6, 6),
(7, 'Mouse', 1, 11, 5, 'WZ8DLFAM800', 1, 35, '2017-07-13 15:19:16', '2017-07-13 14:15:26', 6, 6),
(8, 'Mouse', 1, 12, 4, '810-001550', 1, 36, '2017-07-13 15:20:53', '2017-07-13 14:13:49', 6, 6),
(9, 'Mouse', 1, 9, 4, 'X874958-002 061035233523353679201334', 1, 31, '2017-07-13 15:21:38', '2017-07-13 14:16:08', 6, 6),
(10, 'Mouse', 1, 9, 4, 'X73040300961', 1, 34, '2017-07-13 18:18:04', '0000-00-00 00:00:00', 6, 0),
(11, 'Mouse', 1, 13, 4, '3200261256967', 1, 11, '2017-07-13 18:25:42', '0000-00-00 00:00:00', 6, 0),
(12, 'Mouse', 1, 10, 4, '3760A-00030', 1, 17, '2017-07-13 18:26:18', '0000-00-00 00:00:00', 6, 0),
(13, 'Mouse', 1, 9, 5, 'sin comentarios', 1, 15, '2017-07-13 18:26:55', '0000-00-00 00:00:00', 6, 0),
(14, 'Mouse', 1, 9, 5, '204606561900.', 5, 48, '2017-07-13 18:46:22', '2017-07-13 16:19:24', 6, 6),
(15, 'Mouse', 1, 9, 5, '264648656190361000', 1, 16, '2017-07-13 18:47:12', '2017-07-13 16:19:39', 6, 6),
(16, 'Mouse', 1, 9, 5, '204606561889', 1, 13, '2017-07-13 18:48:10', '0000-00-00 00:00:00', 6, 0),
(17, 'Mouse', 1, 10, 4, '3760A-00030.', 1, 14, '2017-07-13 18:49:05', '0000-00-00 00:00:00', 6, 0),
(18, 'Mouse', 1, 17, 5, 'AX80529204814', 1, 12, '2017-07-13 18:50:19', '0000-00-00 00:00:00', 6, 0),
(19, 'Mouse', 1, 9, 4, 'X821325-002', 5, 48, '2017-07-13 18:53:33', '2017-07-13 16:20:47', 6, 6),
(20, 'Mouse', 1, 9, 4, 'X874968-009', 1, 39, '2017-07-13 18:54:52', '0000-00-00 00:00:00', 6, 0),
(21, 'Mouse', 1, 9, 4, 'X874958009', 1, 3, '2017-07-13 18:55:15', '0000-00-00 00:00:00', 6, 0),
(22, 'Mouse', 1, 14, 5, '440222', 1, 23, '2017-07-13 18:55:55', '0000-00-00 00:00:00', 6, 0),
(23, 'Mouse', 1, 9, 5, '204606127890', 1, 24, '2017-07-13 18:56:22', '0000-00-00 00:00:00', 6, 0),
(24, 'Mouse', 1, 9, 5, '204606561902', 1, 25, '2017-07-13 18:56:49', '0000-00-00 00:00:00', 6, 0),
(25, 'Mouse', 1, 12, 4, 'L2040A9', 1, 7, '2017-07-13 18:58:22', '0000-00-00 00:00:00', 6, 0),
(26, 'Mouse', 1, 9, 5, 'X822087-001/modelo 1484', 1, 8, '2017-07-13 18:58:58', '0000-00-00 00:00:00', 6, 0),
(27, 'Mouse', 1, 17, 5, 'YB17C1040517', 1, 9, '2017-07-13 19:00:02', '0000-00-00 00:00:00', 6, 0),
(28, 'Mouse', 1, 9, 5, '352701145286', 1, 20, '2017-07-13 19:00:42', '0000-00-00 00:00:00', 6, 0),
(29, 'Mouse', 1, 9, 5, '204606561901', 1, 21, '2017-07-13 19:01:18', '0000-00-00 00:00:00', 6, 0),
(30, 'Mouse', 1, 9, 5, 'X821909-003', 1, 30, '2017-07-13 19:01:51', '2017-07-13 16:13:34', 6, 6),
(31, 'Mouse', 1, 9, 4, 'X874958-002/06103-523-3536961-01334', 1, 29, '2017-07-13 20:08:47', '0000-00-00 00:00:00', 6, 0),
(32, 'Mouse', 1, 9, 5, '03527-486-1452896-11319', 1, 27, '2017-07-13 20:09:27', '0000-00-00 00:00:00', 6, 0),
(33, 'Mouse', 1, 9, 5, '822087/03527', 1, 28, '2017-07-13 20:09:58', '0000-00-00 00:00:00', 6, 0),
(34, 'Mouse', 1, 10, 5, '1204004750', 4, 40, '2017-07-13 20:10:32', '2017-07-14 15:25:19', 6, 6),
(35, 'Mouse', 1, 10, 5, '1301007988', 1, 22, '2017-07-13 20:10:58', '0000-00-00 00:00:00', 6, 0),
(36, 'Mouse', 1, 9, 5, '352701145282', 1, 6, '2017-07-13 20:11:17', '0000-00-00 00:00:00', 6, 0),
(37, 'Mouse', 1, 14, 5, '4439062', 1, 45, '2017-07-13 20:12:05', '0000-00-00 00:00:00', 6, 0),
(38, 'Mouse', 1, 17, 5, '161263102510', 1, 43, '2017-07-13 20:12:47', '0000-00-00 00:00:00', 6, 0),
(39, 'Mouse', 1, 9, 5, '1405', 1, 44, '2017-07-13 20:13:13', '0000-00-00 00:00:00', 6, 0),
(40, 'Mouse', 1, 9, 5, 'X821909-003.', 1, 46, '2017-07-13 20:14:37', '0000-00-00 00:00:00', 6, 0),
(41, 'Mouse', 1, 9, 5, 'X821909-001', 1, 48, '2017-07-13 20:15:24', '0000-00-00 00:00:00', 6, 0),
(42, 'Mouse', 1, 9, 5, 'X821909-004', 5, 48, '2017-07-13 20:15:57', '2017-07-13 16:19:46', 6, 6),
(43, 'Mouse', 1, 9, 5, 'X821909-005', 1, 48, '2017-07-13 20:16:26', '0000-00-00 00:00:00', 6, 0),
(44, 'Mouse', 1, 9, 5, 'X821909-006', 5, 48, '2017-07-13 20:16:55', '2017-07-13 16:19:57', 6, 6),
(45, 'Mouse', 1, 9, 5, 'X821909-007', 5, 48, '2017-07-13 20:17:27', '2017-07-13 16:20:06', 6, 6),
(46, 'Mouse', 1, 9, 5, 'X821909-008', 1, 48, '2017-07-13 20:17:49', '0000-00-00 00:00:00', 6, 0),
(47, 'Mouse', 1, 9, 5, 'X821909-009', 5, 48, '2017-07-13 20:18:05', '2017-07-13 16:20:31', 6, 6),
(48, 'Mouse', 1, 9, 5, 'X821909-0010', 5, 48, '2017-07-13 20:18:31', '0000-00-00 00:00:00', 6, 0),
(49, 'Mouse', 1, 9, 5, '352701145286.', 1, 10, '2017-07-13 20:19:00', '0000-00-00 00:00:00', 6, 0),
(50, 'Pendrive', 3, 20, 8, '01', 4, 48, '2017-07-13 20:25:17', '2017-07-13 16:25:59', 6, 6),
(51, 'Pendrive', 3, 19, 6, '02', 4, 48, '2017-07-13 20:25:48', '0000-00-00 00:00:00', 6, 0),
(52, 'Pendrive', 3, 18, 7, '03', 4, 48, '2017-07-13 20:26:20', '0000-00-00 00:00:00', 6, 0),
(53, 'Seagate', 5, 21, 9, 'NA52MAWWJ', 4, 48, '2017-07-13 20:31:16', '2017-07-13 16:33:15', 6, 6),
(54, 'Toshiba', 5, 8, 9, 'Z2ANPAIETTV2', 4, 48, '2017-07-13 20:34:18', '0000-00-00 00:00:00', 6, 0),
(55, 'Mouse', 1, 10, 4, '1204004745', 1, 48, '2017-07-14 19:25:06', '0000-00-00 00:00:00', 6, 0),
(56, 'Mouse', 1, 10, 4, '1208000843', 4, 48, '2017-07-14 19:26:02', '0000-00-00 00:00:00', 6, 0),
(57, 'Mouse', 1, 10, 4, '1208000815', 4, 48, '2017-07-14 19:26:37', '2017-07-14 15:26:52', 6, 6),
(58, 'Mouse', 1, 22, 5, 'NA', 4, 48, '2017-07-14 19:27:53', '0000-00-00 00:00:00', 6, 0),
(59, 'DVDwriter', 6, 23, 5, 'SE-208DB/TSBS', 4, 48, '2017-07-14 19:29:12', '2017-07-14 15:29:22', 6, 6),
(60, 'Teclado', 2, 9, 5, '0200704841815', 4, 48, '2017-07-14 19:32:42', '0000-00-00 00:00:00', 6, 0),
(61, 'Teclado', 2, 14, 5, '0353036', 4, 48, '2017-07-14 19:33:27', '0000-00-00 00:00:00', 6, 0),
(62, 'Teclado', 2, 24, 5, '3201271-01', 4, 48, '2017-07-14 19:34:44', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE IF NOT EXISTS `permiso` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nombre_a_mostrar` varchar(45) CHARACTER SET utf8 NOT NULL,
  `observacion` varchar(200) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `permiso`
--

INSERT INTO `permiso` (`id`, `nombre`, `nombre_a_mostrar`, `observacion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'dashboard/computadoras@index', 'Mostrar Computadora', 'Mostrar Computadora', '2017-06-30 21:11:53', '2017-06-30 17:47:22', 1, 1),
(2, 'dashboard/computadoras@crear', 'Crear Computadora', 'Crear Computadora', '2017-06-30 21:12:19', '2017-07-06 15:36:03', 1, 2),
(3, 'solicitudes@index', 'Mostrar Solicitudes', 'Mostrar Solicitudes', '2017-07-06 17:46:15', '2017-07-06 15:36:19', 1, 2),
(4, 'solicitudes@crear', 'Crear Solicitudes', 'Crear Solicitudes', '2017-07-06 17:51:01', '2017-07-06 15:36:12', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso_rol`
--

CREATE TABLE IF NOT EXISTS `permiso_rol` (
  `id` int(10) unsigned NOT NULL,
  `permiso_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `estado` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `permiso_rol`
--

INSERT INTO `permiso_rol` (`id`, `permiso_id`, `rol_id`, `estado`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 2, 1, 1, '2017-06-30 21:12:30', '2017-06-30 17:47:30', 1, 1),
(2, 2, 2, 1, '2017-06-30 21:12:31', '0000-00-00 00:00:00', 1, 0),
(3, 1, 2, 1, '2017-06-30 21:12:32', '0000-00-00 00:00:00', 1, 0),
(4, 1, 1, 1, '2017-06-30 21:47:31', '0000-00-00 00:00:00', 1, 0),
(5, 4, 2, 1, '2017-07-06 17:51:12', '2017-07-06 14:04:28', 1, 1),
(6, 3, 2, 1, '2017-07-06 17:51:15', '2017-07-06 14:04:30', 1, 1),
(7, 3, 1, 1, '2017-07-06 17:51:15', '0000-00-00 00:00:00', 1, 0),
(8, 4, 1, 1, '2017-07-06 17:51:16', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Procesador`
--

CREATE TABLE IF NOT EXISTS `Procesador` (
  `id` int(10) unsigned NOT NULL,
  `marca_id` int(10) unsigned NOT NULL,
  `descripcion` varchar(35) CHARACTER SET armscii8 DEFAULT NULL,
  `procesadores_logicos` int(11) NOT NULL,
  `cores` int(11) NOT NULL,
  `velocidad` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `Procesador`
--

INSERT INTO `Procesador` (`id`, `marca_id`, `descripcion`, `procesadores_logicos`, `cores`, `velocidad`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 3, 'Celeron', 4, 2, '2.6 GHz', '2017-06-22 01:51:34', '2017-06-21 21:53:30', 1, 1),
(14, 3, 'Intel(R) Xeon(R) CPU E3110', 2, 2, '3.0 GHz', '2017-07-11 20:43:58', '0000-00-00 00:00:00', 6, 0),
(16, 3, 'Intel(R) Xeon(R) CPU X3470', 1, 1, '2.93 GHz', '2017-07-12 14:38:08', '0000-00-00 00:00:00', 6, 0),
(17, 3, 'Intel(R) Xeon(TM) CPU', 2, 1, '2.80 GHz', '2017-07-12 14:39:09', '0000-00-00 00:00:00', 6, 0),
(18, 3, 'Intel(R) Pentium(R) Dual-Core', 2, 2, '2.70 GHz', '2017-07-12 14:40:34', '0000-00-00 00:00:00', 6, 0),
(19, 3, 'Intel(R) Core(TM) i7', 4, 2, '1.80 GHz', '2017-07-12 14:41:34', '2017-07-12 13:28:37', 6, 6),
(20, 3, 'Intel(R) Core(TM) i7', 8, 4, '2.10 GHz', '2017-07-12 14:42:18', '2017-07-12 13:28:30', 6, 6),
(21, 3, 'Intel(R) Core(TM) i7', 8, 4, '2.60 GHz', '2017-07-12 14:43:01', '2017-07-12 13:28:50', 6, 6),
(22, 3, 'Intel(R) Core(TM) i7', 8, 4, '2.20 GHz', '2017-07-12 14:43:36', '2017-07-12 13:24:47', 6, 6),
(23, 3, 'intel(R) Xeon(R) CPU X3430', 2, 2, '2.40 GHz', '2017-07-12 14:44:51', '0000-00-00 00:00:00', 6, 0),
(24, 3, 'Intel(R) Pentium(R) Dual ', 2, 2, '2.0 GHz', '2017-07-12 14:46:00', '2017-07-12 13:28:58', 6, 6),
(25, 3, 'Intel(R) Core(TM) i3', 4, 2, '2.53 GHz', '2017-07-12 14:48:20', '0000-00-00 00:00:00', 6, 0),
(26, 3, 'Intel(R) Core(TM) i5', 4, 2, '2.67 GHz', '2017-07-12 14:49:01', '0000-00-00 00:00:00', 6, 0),
(27, 3, 'Intel(R) Core(TM) i5', 4, 2, '2.30 GHz', '2017-07-12 14:50:14', '0000-00-00 00:00:00', 6, 0),
(28, 3, 'Intel(R) Core(TM) i5', 4, 2, '2.40 GHz', '2017-07-12 14:56:17', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `red`
--

CREATE TABLE IF NOT EXISTS `red` (
  `id` int(10) unsigned NOT NULL,
  `hostname` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `tred_id` int(10) unsigned NOT NULL,
  `serial` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `marca_id_marca` int(10) unsigned NOT NULL,
  `modelo_id` int(10) unsigned NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `estado_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE IF NOT EXISTS `rol` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(20) CHARACTER SET utf8 NOT NULL,
  `observacion` varchar(200) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `descripcion`, `observacion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'SuperAdministrador', 'Rol Con todos los privilegios de la plataforma y admin/*.', '2017-06-02 16:10:06', '2017-06-12 11:50:03', 1, 0),
(2, 'Operador', 'Permite a los usuarios Manipular las acciones de Operador', '2017-06-02 16:10:06', '2017-06-13 20:35:45', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sgi_session`
--

CREATE TABLE IF NOT EXISTS `sgi_session` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sgi_session`
--

INSERT INTO `sgi_session` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('009okdof1tj0g5k05t1qsmfjudboosmu', '127.0.0.1', 1500264133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303236333838393b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('00sfnhv2kbvrcsjhvdoh806uu3tsrarb', '10.0.3.72', 1500062362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303036323039303b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b6d656e73616a657c733a3139303a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e456c20726567697374726f206675652061637475616c697a61646f20657869746f73616d656e74652e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('0b0ob4gu60h2vg53kilpcqfjoa6fdpqi', '10.0.3.71', 1500491632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303439313535323b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a323a223330223b7573756172696f7c733a31303a22726665726e616e64657a223b726f6c5f69647c733a313a2232223b726f6c7c733a383a224f70657261646f72223b6e6f6d6272657c733a363a2252696d736b79223b6170656c6c69646f7c733a31303a224665726ec3a16e64657a223b63726561646f7c733a31393a22323031372d30372d31322031363a30363a3231223b6176617461727c733a31323a226f70657261646f722e6a7067223b),
('0rjhpv0cllu1v53isp245qh6gquh9m84', '10.0.3.71', 1499979623, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937393439363b),
('0s05m4tu1161v65s2275iculpgg4o1mn', '10.0.3.72', 1500490868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303439303539333b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b6d656e73616a657c733a3138383a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e456c20726567697374726f2066756520656c696d696e61646f20657869746f73616d656e74652e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('17iu9mtb3g6henquki1m0djlpcckbm31', '10.0.3.71', 1499982673, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393938323338343b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('1ms749cpese4b4bt3r81t3upht51bjv5', '10.0.3.71', 1500493688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303439333634373b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('37qq5a462q0g3nc7eqib7kgonclgk6n2', '10.0.3.72', 1499978890, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937383539333b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('3im9fb0muma67maehkh5k5djn5gi1c7p', '10.0.3.71', 1499979361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937393132333b),
('3k14kceq28db0h4af0q76kjg2srf5f20', '10.0.3.71', 1499980533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393938303434383b),
('3vs0bnga1nlginppfufmsi9ic11ao4jo', '10.0.3.72', 1500052351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303035323331313b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('4mdqluf3925a3tb46cd4e7a8irbvqvqr', '10.0.3.71', 1499979868, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937393836383b),
('5006apecdqu8jaajiu8o09k7kfrnnp8o', '10.0.3.72', 1499979483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937393233303b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('51q3gc84k7q8aoo1cdoa4finur98ubu9', '127.0.0.1', 1500038899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303033383835353b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a323a223330223b7573756172696f7c733a31303a22726665726e616e64657a223b726f6c5f69647c733a313a2232223b726f6c7c733a383a224f70657261646f72223b6e6f6d6272657c733a363a2252696d736b79223b6170656c6c69646f7c733a31303a224665726ec3a16e64657a223b63726561646f7c733a31393a22323031372d30372d31322031363a30363a3231223b6176617461727c733a31323a226f70657261646f722e6a7067223b),
('74fclbdkpl2puuvs1ss3c9ujs831u0ss', '10.0.3.72', 1500064427, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303036343330303b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('dsot87g58ohsq9dj34jk4ak4r9o4nlck', '127.0.0.1', 1500506785, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303530363738343b7065746963696f6e5f75726c7c733a34343a22687474703a2f2f7367692e7374692e636f6d2e76652f61646d696e2f696e76656e746172696f2f6d61726361223b),
('e03nmts72fcjvmicvlf9turlq14a37n1', '10.0.3.72', 1499978569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937383239313b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('e8bg0dg6p82ce6qm1hlhotningecb7e4', '127.0.0.1', 1500037809, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303033373639313b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b),
('eo1uk20i903vgmlv91bnjle9hn7gck95', '10.0.3.71', 1500489515, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303438393438363b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('evh7u0fiql6bvn91fb0a51kcbgciaefp', '127.0.0.1', 1500263710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303236333432383b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('f09se9u66b319t8tdukjs4l57mpjh5pp', '10.0.3.71', 1499982348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393938323038333b),
('fjrmk2a4pv5vu2fjc88dmjfsm99vplgc', '10.0.3.72', 1500062684, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303036323438363b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b6d656e73616a657c733a3138353a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e456c20726567697374726f206675652063726561646f20657869746f73616d656e74652e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('fqbvria12a5fp00mibgf4edp313l6ill', '10.0.3.72', 1499974011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937333731373b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('gd6t6mvm81983r4smq3leclj9djrbusa', '127.0.0.1', 1500262965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303236323636373b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('ho8rjrfib50bh7fs4j40fm7m7uf9t7di', '10.0.3.71', 1500303411, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303330333233383b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('igadeq9f2bj4lh335776fi5g0ku8erk1', '10.0.3.72', 1499979858, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937393734393b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b6d656e73616a657c733a3138353a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e456c20726567697374726f206675652063726561646f20657869746f73616d656e74652e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('jp2dtpv7q1oesneadrg172e21pvvdfb4', '10.0.3.72', 1499973645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937333334363b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('knult9uiers7tc1c3p39qakiq3e7p8rh', '10.0.3.71', 1500048181, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303034383133373b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('ld1e4l0j2s8ibeuq7qrct3g0c8l0obcp', '10.0.3.71', 1499981729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393938313438313b),
('nrfu6gvhmi90p9l10ita7ems70albqri', '127.0.0.1', 1500263355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303236333039333b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('o3u59uiagt03u1h5nlg9qfoputkgh915', '127.0.0.1', 1500037995, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303033373939353b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b),
('o8jktrem0jsin3qhp1rgek6di8vdse3f', '10.0.3.72', 1500493521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303439333439363b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('odq8342dog65f73cllr6ih249mvoo09a', '10.0.3.72', 1500491000, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303439313030303b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('oiavu4aatehonjp859r24j8n3ajmljmf', '10.0.3.71', 1499982924, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393938323730353b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('qeq2jbqj2r3fmvotqkh4lcnimc2jrgt4', '127.0.0.1', 1500264532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303236343339373b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a323a223330223b7573756172696f7c733a31303a22726665726e616e64657a223b726f6c5f69647c733a313a2232223b726f6c7c733a383a224f70657261646f72223b6e6f6d6272657c733a363a2252696d736b79223b6170656c6c69646f7c733a31303a224665726ec3a16e64657a223b63726561646f7c733a31393a22323031372d30372d31322031363a30363a3231223b6176617461727c733a31323a226f70657261646f722e6a7067223b),
('rb9iraubad5uch60dtbnpnahsde47er9', '127.0.0.1', 1500346780, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303334363732363b7065746963696f6e5f75726c7c733a33353a22687474703a2f2f7367692e7374692e636f6d2e76652f64617368626f6172642f726564223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('s1gbsjpalte8ptnhnv02r90l8vue36i7', '127.0.0.1', 1500467256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303436373235353b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b),
('s27l29tmfj4l9uean68ed2kv7jmcve5e', '10.0.3.72', 1499979204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937383931313b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('s8dghumdjrrl2h98ph8p9n2bf2tduko2', '10.0.3.72', 1500303848, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303330333738393b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('spo1fts219orurmrkgtnk11rtlk6orf6', '10.0.3.71', 1499984399, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393938343234343b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('tifiea6tmclj79kr6c76mor0u0g00pkv', '10.0.3.71', 1499978680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937383338333b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('tt4n2tl8ke96iibrs5j89hua62aqr088', '10.0.3.71', 1499977522, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937373532323b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('ujo8p0331of8ts1uqobbc9can8j6ue1r', '10.0.3.71', 1499981366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393938313036373b),
('uks5jtut6s8jqu36qn24tbfranprn129', '10.0.3.71', 1499978842, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937383730313b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2231223b7573756172696f7c733a353a2261646d696e223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a353a225375706572223b6170656c6c69646f7c733a31333a2241646d696e6973747261646f72223b63726561646f7c733a31393a22323031372d30362d30322031323a31303a3036223b6176617461727c733a31303a226176617461722e706e67223b),
('utvdmidjon1g8e8idjv1lhiei739advj', '127.0.0.1', 1500264748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303236343734383b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a323a223330223b7573756172696f7c733a31303a22726665726e616e64657a223b726f6c5f69647c733a313a2232223b726f6c7c733a383a224f70657261646f72223b6e6f6d6272657c733a363a2252696d736b79223b6170656c6c69646f7c733a31303a224665726ec3a16e64657a223b63726561646f7c733a31393a22323031372d30372d31322031363a30363a3231223b6176617461727c733a31323a226f70657261646f722e6a7067223b),
('v85l9cdh1dhbehtqvc9qqjknr4gicsiv', '10.0.3.72', 1499974311, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439393937343130323b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b6d656e73616a657c733a3138353a223c64697620636c6173733d22616c65727420616c6572742d7375636365737320616c6572742d6469736d69737361626c65223e3c627574746f6e20747970653d22627574746f6e2220636c6173733d22636c6f73652220646174612d6469736d6973733d22616c6572742220617269612d68696464656e3d2274727565223e2674696d65733b3c2f627574746f6e3e456c20726567697374726f206675652063726561646f20657869746f73616d656e74652e3c2f6469763e223b5f5f63695f766172737c613a313a7b733a373a226d656e73616a65223b733a333a226f6c64223b7d),
('vcbdds2ve0a1nsqa67s3nr9p85ht2mqj', '10.0.3.72', 1500055778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303035353737383b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b),
('vvidr2e2u4k3ck6sapr4rljk92ar2431', '10.0.3.72', 1500047055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303034373032313b7065746963696f6e5f75726c7c733a32323a22687474703a2f2f7367692e7374692e636f6d2e76652f223b757365725f6c6f67696e7c623a313b7573756172696f5f69647c733a313a2236223b7573756172696f7c733a353a226372696f73223b726f6c5f69647c733a313a2231223b726f6c7c733a31383a22537570657241646d696e6973747261646f72223b6e6f6d6272657c733a363a224361726c6f73223b6170656c6c69646f7c733a343a2252696f73223b63726561646f7c733a31393a22323031372d30372d30332031323a31303a3335223b6176617461727c733a393a2261646d696e2e6a7067223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_operativo`
--

CREATE TABLE IF NOT EXISTS `sistema_operativo` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `sistema_operativo`
--

INSERT INTO `sistema_operativo` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Linux RedHat 6.0', '2017-06-21 22:28:51', '0000-00-00 00:00:00', 1, 0),
(2, 'Windows Server 2012 R2', '2017-06-21 22:29:02', '0000-00-00 00:00:00', 1, 0),
(3, 'Windows 10 ', '2017-06-21 22:29:08', '0000-00-00 00:00:00', 1, 0),
(4, 'Windows 8', '2017-07-06 19:57:22', '0000-00-00 00:00:00', 6, 0),
(5, 'Windows 8.1', '2017-07-06 19:57:34', '0000-00-00 00:00:00', 6, 0),
(6, 'Windows 7', '2017-07-06 19:57:47', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE IF NOT EXISTS `solicitudes` (
  `id` int(11) NOT NULL COMMENT 'Campo clave de la tabla solicitud, Indice principal que no puede ser nulo y sin asignar.\n',
  `tsolicitud_id` int(11) NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'Descripción de la solicitud',
  `Esolicitud_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_at` datetime NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `created_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcomputadora`
--

CREATE TABLE IF NOT EXISTS `tcomputadora` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tcomputadora`
--

INSERT INTO `tcomputadora` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Servidor', '2017-06-21 22:12:52', '0000-00-00 00:00:00', 1, 0),
(2, 'Laptop', '2017-06-21 22:13:02', '0000-00-00 00:00:00', 1, 0),
(3, 'Desktop', '2017-06-21 22:13:10', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_menu`
--

CREATE TABLE IF NOT EXISTS `tipo_menu` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(30) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_menu`
--

INSERT INTO `tipo_menu` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Principal', '2017-06-21 22:42:50', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tperiferico`
--

CREATE TABLE IF NOT EXISTS `tperiferico` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tperiferico`
--

INSERT INTO `tperiferico` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Mouse', '2017-06-21 22:14:34', '0000-00-00 00:00:00', 1, 0),
(2, 'Teclado', '2017-06-21 22:14:42', '0000-00-00 00:00:00', 1, 0),
(3, 'Pendrive', '2017-06-21 22:14:49', '0000-00-00 00:00:00', 1, 0),
(4, 'Monitor', '2017-07-11 19:22:33', '0000-00-00 00:00:00', 1, 0),
(5, 'Disco duro externo', '2017-07-13 20:27:50', '0000-00-00 00:00:00', 6, 0),
(6, 'Lector externo', '2017-07-14 19:28:12', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tred`
--

CREATE TABLE IF NOT EXISTS `tred` (
  `id` int(10) unsigned NOT NULL,
  `descripcion` varchar(45) COLLATE utf8_spanish2_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tred`
--

INSERT INTO `tred` (`id`, `descripcion`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Router', '2017-06-21 22:15:03', '0000-00-00 00:00:00', 1, 0),
(2, 'switch', '2017-06-21 22:15:16', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tsolicitud`
--

CREATE TABLE IF NOT EXISTS `tsolicitud` (
  `id` int(11) NOT NULL COMMENT 'Campo clave de la tabla tsolicitud, Indice principal que no puede ser nulo y sin asignar.\n',
  `nombre` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'nombre del tipo de solicitud',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_at` datetime NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `created_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros',
  `updated_by` int(10) unsigned NOT NULL COMMENT 'Campo de auditoria que permite realizar el seguimiento de los registros'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tsolicitud`
--

INSERT INTO `tsolicitud` (`id`, `nombre`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(0, 'Incidencia', '2017-07-06 18:08:09', '0000-00-00 00:00:00', 0, 0),
(1, 'Requerimiento', '2017-07-06 18:10:29', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(10) unsigned NOT NULL,
  `departamento_id` int(10) unsigned NOT NULL,
  `avatar` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `usuario` varchar(20) CHARACTER SET utf8 NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellido` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `estado` tinyint(3) unsigned NOT NULL,
  `email` varchar(45) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `departamento_id`, `avatar`, `usuario`, `nombre`, `apellido`, `password`, `estado`, `email`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 'avatar.png', 'admin', 'Super', 'Administrador', '5125c356c48ae203a45ae894443f9d323f040de96910f9dc1b973c35e09f2dfb', 1, 'tebasde@gmail.com', '2017-06-02 16:10:06', '2017-06-07 10:13:11', 1, 1),
(2, 2, 'gde_lv.jpg', 'lvillegas', 'Luis', 'Villegas', '5a4a3b5d38b8a42928e9e46e849083a2383b7421c9c57411b38e8c1a9af267c7', 1, 'lvillegas@sti.com.ve', '2017-06-15 02:14:46', '2017-06-15 15:00:40', 1, 1),
(3, 2, 'admin.jpg', 'jcramos', 'Juan Carlos', 'Ramos', '54971b18f16c09cc84540ac00f310f66e820c784a9af5ed5de1c3c84c5beb49b', 1, 'jcramos@sti.com.ve', '2017-06-22 23:40:13', '2017-07-03 12:02:25', 1, 3),
(6, 2, 'admin.jpg', 'crios', 'Carlos', 'Rios', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'crios@sti.com.ve', '2017-07-03 16:10:35', '0000-00-00 00:00:00', 3, 0),
(7, 7, 'operador.jpg', 'amaiuetia', 'Anamir', 'Maiquetia', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'amaiquetia@sti.com.ve', '2017-07-12 19:32:22', '0000-00-00 00:00:00', 6, 0),
(8, 7, 'operador.jpg', 'aguzman', 'Andrea', 'Guzman', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'aguzman@sti.com.ve', '2017-07-12 19:37:00', '0000-00-00 00:00:00', 6, 0),
(9, 7, 'operador.jpg', 'vrios', 'Valentina', 'Rios', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'vrios@sti.com.ve', '2017-07-12 19:37:55', '0000-00-00 00:00:00', 6, 0),
(10, 7, 'operador.jpg', 'fmendoza', 'Florangel', 'Mendoza', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'fmendoza@sti.com.ve', '2017-07-12 19:38:32', '0000-00-00 00:00:00', 6, 0),
(11, 5, 'operador.jpg', 'jlara', 'Jose', 'Lara', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jlara@sti.com.ve', '2017-07-12 19:45:02', '2017-07-12 15:46:00', 6, 6),
(12, 5, 'operador.jpg', 'jramirez', 'Jesus', 'Ramirez', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jramirez@sti.com.ve', '2017-07-12 19:45:45', '2017-07-12 16:07:48', 6, 6),
(13, 5, 'operador.jpg', 'lescobar', 'Lisgreiby', 'Escobar', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'lescobar@sti.com.ve', '2017-07-12 19:46:41', '0000-00-00 00:00:00', 6, 0),
(14, 5, 'operador.jpg', 'aseijas', 'Alejandra', 'Seijas', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'aseijas@sti.com.ve', '2017-07-12 19:47:44', '0000-00-00 00:00:00', 6, 0),
(15, 5, 'operador.jpg', 'rguerrero', 'Ruben', 'Guerrero', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rguerrero@sti.com.ve', '2017-07-12 19:48:22', '2017-07-12 16:07:57', 6, 6),
(16, 5, 'operador.jpg', 'aluquez', 'Anabel', 'Luquez', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'aluquez@sti.com.ve', '2017-07-12 19:48:58', '0000-00-00 00:00:00', 6, 0),
(17, 5, 'operador.jpg', 'dcampelo', 'Diana', 'Campelo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'dcampelo@sti.com.ve', '2017-07-12 19:50:13', '0000-00-00 00:00:00', 6, 0),
(18, 12, 'operador.jpg', 'malvarez', 'Manuel', 'Alvarez', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'malvarez@sti.com.ve', '2017-07-12 19:54:05', '0000-00-00 00:00:00', 6, 0),
(19, 12, 'operador.jpg', 'asalazar', 'Alicia', 'Salazar', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'asalazar@sti.com.ve', '2017-07-12 19:54:38', '0000-00-00 00:00:00', 6, 0),
(20, 11, 'operador.jpg', 'rmontoya', 'Ronny', 'Montoya', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rmontoya@sti.com.ve', '2017-07-12 19:55:23', '0000-00-00 00:00:00', 6, 0),
(21, 11, 'operador.jpg', 'ddiaz', 'Danayeli', 'Diaz', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'ddiaz@sti.com.ve', '2017-07-12 19:58:28', '0000-00-00 00:00:00', 6, 0),
(22, 6, 'operador.jpg', 'vcavallo', 'Vivian', 'Cavallo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'vcavallo@sti.com.ve', '2017-07-12 20:00:26', '0000-00-00 00:00:00', 6, 0),
(23, 6, 'operador.jpg', 'dsosa', 'Daniela', 'Sosa', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'dsosa@sti.com.ve', '2017-07-12 20:00:54', '0000-00-00 00:00:00', 6, 0),
(24, 6, 'operador.jpg', 'gramos', 'Gabriela', 'Ramos', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'gramos@sti.com.ve', '2017-07-12 20:01:36', '0000-00-00 00:00:00', 6, 0),
(25, 6, 'operador.jpg', 'mgramos', 'Maria', 'Ramos', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'mramos@sti.com.ve', '2017-07-12 20:02:12', '0000-00-00 00:00:00', 6, 0),
(26, 2, 'operador.jpg', 'jmedina', 'Jose Luis', 'Medina', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jmedina@sti.com.ve', '2017-07-12 20:03:01', '0000-00-00 00:00:00', 6, 0),
(27, 4, 'operador.jpg', 'emedina', 'Eva', 'Medina', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'emedina@sti.com.ve', '2017-07-12 20:03:41', '0000-00-00 00:00:00', 6, 0),
(28, 4, 'operador.jpg', 'ctovar', 'Carlos', 'Tovar', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'ctovar@sti.com.ve', '2017-07-12 20:04:13', '0000-00-00 00:00:00', 6, 0),
(29, 13, 'operador.jpg', 'rortega', 'Raul', 'Ortega', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rortega@sti.com.ve', '2017-07-12 20:05:31', '0000-00-00 00:00:00', 6, 0),
(30, 13, 'operador.jpg', 'rfernandez', 'Rimsky', 'Fernández', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rfernandez@sti.com.ve', '2017-07-12 20:06:21', '0000-00-00 00:00:00', 6, 0),
(31, 10, 'operador.jpg', 'yviloria', 'Yelitza', 'Viloria', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'yviloria@sti.com.ve', '2017-07-12 20:07:39', '0000-00-00 00:00:00', 6, 0),
(32, 10, 'operador.jpg', 'epabon', 'Evelin', 'Pavon', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'epabon@sti.com.ve', '2017-07-12 20:09:01', '0000-00-00 00:00:00', 6, 0),
(33, 10, 'operador.jpg', 'rsanoja', 'Roxenis', 'Sanoja', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'rsanoja@sti.com.ve', '2017-07-12 20:09:50', '0000-00-00 00:00:00', 6, 0),
(34, 10, 'operador.jpg', 'robregon', 'Rafael', 'Obregon', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'robregon@sti.com.ve', '2017-07-12 20:10:24', '0000-00-00 00:00:00', 6, 0),
(35, 10, 'operador.jpg', 'darias', 'Deiry', 'Arias', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'darias@sti.com.ve', '2017-07-12 20:11:14', '0000-00-00 00:00:00', 6, 0),
(36, 10, 'operador.jpg', 'prequena', 'Pedro', 'Requena', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'prequena@sti.com.ve', '2017-07-12 20:11:48', '0000-00-00 00:00:00', 6, 0),
(38, 10, 'operador.jpg', 'ngarcia', 'Naylin', 'García', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'ngarcia@sti.com.ve', '2017-07-12 20:13:15', '0000-00-00 00:00:00', 6, 0),
(39, 2, 'operador.jpg', 'jgavidia', 'Jesus', 'Gavidia', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jgavidia@sti.com.ve', '2017-07-12 20:13:50', '0000-00-00 00:00:00', 6, 0),
(40, 9, 'operador.jpg', 'hnaranjo', 'Hector', 'Naranjo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'hnaranjo@sti.com.ve', '2017-07-12 20:14:29', '0000-00-00 00:00:00', 6, 0),
(41, 9, 'operador.jpg', 'jparada', 'Jesus', 'Parada', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jparada@sti.com.ve', '2017-07-12 20:15:00', '0000-00-00 00:00:00', 6, 0),
(42, 11, 'operador.jpg', 'asandoval', 'Alexis', 'Sandoval', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'asandoval@sti.com.ve', '2017-07-12 20:15:38', '0000-00-00 00:00:00', 6, 0),
(43, 4, 'operador.jpg', 'imarcano', 'Iben', 'Marcano', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'imarcano@sti.com.ve', '2017-07-12 20:16:05', '2017-07-12 16:17:34', 6, 6),
(44, 4, 'operador.jpg', 'cruiz', 'Cristiel', 'Ruiz', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'cruiz@sti.com.ve', '2017-07-12 20:16:39', '2017-07-12 16:17:25', 6, 6),
(45, 3, 'operador.jpg', 'jperozo', 'Jackeline', 'Perozo', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jperozo@sti.com.ve', '2017-07-12 20:17:11', '0000-00-00 00:00:00', 6, 0),
(46, 3, 'operador.jpg', 'jadan', 'Jesus', 'Adan', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jadan@sti.com.ve', '2017-07-12 20:18:00', '0000-00-00 00:00:00', 6, 0),
(47, 3, 'operador.jpg', 'jcolina', 'Julio', 'Colina', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'jcolina@sti.com.ve', '2017-07-12 20:19:31', '0000-00-00 00:00:00', 6, 0),
(48, 2, 'operador.jpg', 'Disponibilidad', 'Gestión', 'Disponibilidad', '3e0dd6ee485c14d40ac85644173592cdefe4e93fe1513f31ca26e32c8a55c903', 1, 'gdisponibilidad@sti.com.ve', '2017-07-13 18:52:54', '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE IF NOT EXISTS `usuario_rol` (
  `id` int(10) unsigned NOT NULL,
  `usuario_id` int(10) unsigned NOT NULL,
  `rol_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id`, `usuario_id`, `rol_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 1, '2017-06-02 16:10:06', '2017-06-12 11:50:03', 1, 0),
(2, 2, 1, '2017-06-15 02:14:46', '2017-06-15 15:00:40', 1, 1),
(3, 3, 1, '2017-06-22 23:40:13', '2017-07-03 12:02:25', 1, 3),
(6, 6, 1, '2017-07-03 16:10:35', '0000-00-00 00:00:00', 3, 0),
(7, 7, 2, '2017-07-12 19:32:22', '0000-00-00 00:00:00', 6, 0),
(8, 8, 2, '2017-07-12 19:37:00', '0000-00-00 00:00:00', 6, 0),
(9, 9, 2, '2017-07-12 19:37:55', '0000-00-00 00:00:00', 6, 0),
(10, 10, 2, '2017-07-12 19:38:32', '0000-00-00 00:00:00', 6, 0),
(11, 11, 2, '2017-07-12 19:45:02', '2017-07-12 15:46:00', 6, 6),
(12, 12, 2, '2017-07-12 19:45:45', '2017-07-12 16:07:48', 6, 6),
(13, 13, 2, '2017-07-12 19:46:41', '0000-00-00 00:00:00', 6, 0),
(14, 14, 2, '2017-07-12 19:47:44', '0000-00-00 00:00:00', 6, 0),
(15, 15, 2, '2017-07-12 19:48:22', '2017-07-12 16:07:57', 6, 6),
(16, 16, 2, '2017-07-12 19:48:58', '0000-00-00 00:00:00', 6, 0),
(17, 17, 2, '2017-07-12 19:50:13', '0000-00-00 00:00:00', 6, 0),
(18, 18, 2, '2017-07-12 19:54:05', '0000-00-00 00:00:00', 6, 0),
(19, 19, 2, '2017-07-12 19:54:38', '0000-00-00 00:00:00', 6, 0),
(20, 20, 2, '2017-07-12 19:55:23', '0000-00-00 00:00:00', 6, 0),
(21, 21, 2, '2017-07-12 19:58:28', '0000-00-00 00:00:00', 6, 0),
(22, 22, 2, '2017-07-12 20:00:26', '0000-00-00 00:00:00', 6, 0),
(23, 23, 2, '2017-07-12 20:00:54', '0000-00-00 00:00:00', 6, 0),
(24, 24, 2, '2017-07-12 20:01:36', '0000-00-00 00:00:00', 6, 0),
(25, 25, 2, '2017-07-12 20:02:12', '0000-00-00 00:00:00', 6, 0),
(26, 26, 2, '2017-07-12 20:03:01', '0000-00-00 00:00:00', 6, 0),
(27, 27, 2, '2017-07-12 20:03:41', '0000-00-00 00:00:00', 6, 0),
(28, 28, 2, '2017-07-12 20:04:13', '0000-00-00 00:00:00', 6, 0),
(29, 29, 2, '2017-07-12 20:05:31', '0000-00-00 00:00:00', 6, 0),
(30, 30, 2, '2017-07-12 20:06:21', '0000-00-00 00:00:00', 6, 0),
(31, 31, 2, '2017-07-12 20:07:40', '0000-00-00 00:00:00', 6, 0),
(32, 32, 2, '2017-07-12 20:09:01', '0000-00-00 00:00:00', 6, 0),
(33, 33, 2, '2017-07-12 20:09:50', '0000-00-00 00:00:00', 6, 0),
(34, 34, 2, '2017-07-12 20:10:24', '0000-00-00 00:00:00', 6, 0),
(35, 35, 2, '2017-07-12 20:11:14', '0000-00-00 00:00:00', 6, 0),
(36, 36, 2, '2017-07-12 20:11:48', '0000-00-00 00:00:00', 6, 0),
(38, 38, 2, '2017-07-12 20:13:15', '0000-00-00 00:00:00', 6, 0),
(39, 39, 2, '2017-07-12 20:13:50', '0000-00-00 00:00:00', 6, 0),
(40, 40, 2, '2017-07-12 20:14:29', '0000-00-00 00:00:00', 6, 0),
(41, 41, 2, '2017-07-12 20:15:00', '0000-00-00 00:00:00', 6, 0),
(42, 42, 2, '2017-07-12 20:15:38', '0000-00-00 00:00:00', 6, 0),
(43, 43, 2, '2017-07-12 20:16:06', '2017-07-12 16:17:34', 6, 6),
(44, 44, 2, '2017-07-12 20:16:39', '2017-07-12 16:17:25', 6, 6),
(45, 45, 2, '2017-07-12 20:17:11', '0000-00-00 00:00:00', 6, 0),
(46, 46, 2, '2017-07-12 20:18:00', '0000-00-00 00:00:00', 6, 0),
(47, 47, 2, '2017-07-12 20:19:31', '0000-00-00 00:00:00', 6, 0),
(48, 48, 2, '2017-07-13 18:52:54', '0000-00-00 00:00:00', 6, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `computadoras`
--
ALTER TABLE `computadoras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_dispositvo_Procesador1` (`Procesador_id`),
  ADD KEY `fk_computadoras_sistema_operativo1` (`sistema_operativo_id`),
  ADD KEY `fk_computadoras_marca1` (`marca_id`),
  ADD KEY `fk_computadoras_estado1` (`estado_id`),
  ADD KEY `fk_computadoras_tcomputadora1` (`tcomputadora_id`),
  ADD KEY `fk_computadoras_usuario1_idx` (`usuario_id`),
  ADD KEY `fk_computadoras_modelo1_idx` (`modelo_id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indices de la tabla `direccion_ip`
--
ALTER TABLE `direccion_ip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_direccion_ip_computadoras1` (`computadoras_id`);

--
-- Indices de la tabla `esolicitud`
--
ALTER TABLE `esolicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_menu1` (`menu_id`),
  ADD KEY `fk_menu_tipo_menu1` (`tipo_menu_id`);

--
-- Indices de la tabla `menu_rol`
--
ALTER TABLE `menu_rol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_rol_rol1` (`rol_id`),
  ADD KEY `fk_menu_rol_menu1_idx` (`menu_id`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`),
  ADD KEY `fk_modelo_marca2_idx` (`marca_id`);

--
-- Indices de la tabla `periferico`
--
ALTER TABLE `periferico`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serial_UNIQUE` (`serial`),
  ADD KEY `fk_periferico_tipo_periferico1` (`tipo_periferico_id`),
  ADD KEY `fk_periferico_marca1` (`marca_id`),
  ADD KEY `fk_periferico_estado1` (`estado_id`),
  ADD KEY `fk_periferico_usuario1_idx` (`usuario_id`),
  ADD KEY `fk_periferico_modelo1` (`modelo_id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  ADD UNIQUE KEY `nombre_a_mostrar_UNIQUE` (`nombre_a_mostrar`);

--
-- Indices de la tabla `permiso_rol`
--
ALTER TABLE `permiso_rol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_permiso_rol_rol1` (`rol_id`),
  ADD KEY `fk_rolo_permiso_permisos1_idx` (`permiso_id`);

--
-- Indices de la tabla `Procesador`
--
ALTER TABLE `Procesador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Procesador_marca1_idx` (`marca_id`);

--
-- Indices de la tabla `red`
--
ALTER TABLE `red`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `serial_UNIQUE` (`serial`),
  ADD KEY `fk_Redes_marca1` (`marca_id_marca`),
  ADD KEY `fk_Red_tred1` (`tred_id`),
  ADD KEY `fk_Red_estado1` (`estado_id`),
  ADD KEY `fk_Red_usuario1_idx` (`usuario_id`),
  ADD KEY `fk_Red_modelo1_idx` (`modelo_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indices de la tabla `sgi_session`
--
ALTER TABLE `sgi_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgi_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `sistema_operativo`
--
ALTER TABLE `sistema_operativo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_solicitud_usuario1_idx` (`usuario_id`),
  ADD KEY `fk_esolicitud_solicitudes1_idx` (`Esolicitud_id`),
  ADD KEY `fk_tsolicitud_solicitudes1_idx` (`tsolicitud_id`);

--
-- Indices de la tabla `tcomputadora`
--
ALTER TABLE `tcomputadora`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_menu`
--
ALTER TABLE `tipo_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descripcion_UNIQUE` (`descripcion`);

--
-- Indices de la tabla `tperiferico`
--
ALTER TABLE `tperiferico`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tred`
--
ALTER TABLE `tred`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tsolicitud`
--
ALTER TABLE `tsolicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  ADD KEY `fk_usuario_departamento1` (`departamento_id`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_rol_usuario` (`usuario_id`),
  ADD KEY `fk_usuario_rol_rol_idx` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `computadoras`
--
ALTER TABLE `computadoras`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `direccion_ip`
--
ALTER TABLE `direccion_ip`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `menu_rol`
--
ALTER TABLE `menu_rol`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `periferico`
--
ALTER TABLE `periferico`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `permiso_rol`
--
ALTER TABLE `permiso_rol`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `Procesador`
--
ALTER TABLE `Procesador`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `red`
--
ALTER TABLE `red`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `sistema_operativo`
--
ALTER TABLE `sistema_operativo`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tcomputadora`
--
ALTER TABLE `tcomputadora`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipo_menu`
--
ALTER TABLE `tipo_menu`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tperiferico`
--
ALTER TABLE `tperiferico`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tred`
--
ALTER TABLE `tred`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `computadoras`
--
ALTER TABLE `computadoras`
  ADD CONSTRAINT `fk_computadoras_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_computadoras_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_computadoras_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_computadoras_sistema_operativo1` FOREIGN KEY (`sistema_operativo_id`) REFERENCES `sistema_operativo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_computadoras_tcomputadora1` FOREIGN KEY (`tcomputadora_id`) REFERENCES `tcomputadora` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_computadoras_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_dispositvo_Procesador1` FOREIGN KEY (`Procesador_id`) REFERENCES `Procesador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `direccion_ip`
--
ALTER TABLE `direccion_ip`
  ADD CONSTRAINT `fk_direccion_ip_computadoras1` FOREIGN KEY (`computadoras_id`) REFERENCES `computadoras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `fk_menu_tipo_menu1` FOREIGN KEY (`tipo_menu_id`) REFERENCES `tipo_menu` (`id`);

--
-- Filtros para la tabla `menu_rol`
--
ALTER TABLE `menu_rol`
  ADD CONSTRAINT `fk_menu_rol_menu1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  ADD CONSTRAINT `fk_menu_rol_rol1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);

--
-- Filtros para la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD CONSTRAINT `fk_modelo_marca2` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `periferico`
--
ALTER TABLE `periferico`
  ADD CONSTRAINT `fk_periferico_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_periferico_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_periferico_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_periferico_tipo_periferico1` FOREIGN KEY (`tipo_periferico_id`) REFERENCES `tperiferico` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_periferico_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permiso_rol`
--
ALTER TABLE `permiso_rol`
  ADD CONSTRAINT `fk_permiso_rol_rol1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rolo_permiso_permisos1` FOREIGN KEY (`permiso_id`) REFERENCES `permiso` (`id`);

--
-- Filtros para la tabla `Procesador`
--
ALTER TABLE `Procesador`
  ADD CONSTRAINT `fk_Procesador_marca1` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `red`
--
ALTER TABLE `red`
  ADD CONSTRAINT `fk_Red_estado1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Red_modelo1` FOREIGN KEY (`modelo_id`) REFERENCES `modelo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Red_tred1` FOREIGN KEY (`tred_id`) REFERENCES `tred` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Red_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Redes_marca1` FOREIGN KEY (`marca_id_marca`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `fk_esolicitud_solicitudes1` FOREIGN KEY (`Esolicitud_id`) REFERENCES `esolicitud` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_solicitud_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tsolicitud_solicitudes1` FOREIGN KEY (`tsolicitud_id`) REFERENCES `tsolicitud` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_departamento1` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `fk_usuario_rol_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_usuario_rol_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
