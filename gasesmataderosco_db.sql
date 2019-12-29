-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-04-2019 a las 20:35:44
-- Versión del servidor: 10.2.23-MariaDB-cll-lve
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gasesmataderosco_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_descargas`
--

CREATE TABLE `contenido_descargas` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contenido_descargas`
--

INSERT INTO `contenido_descargas` (`id`, `texto`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"font-size:18px\">Departamento de Atenci&oacute;n al Cliente<br />\r\n<span style=\"color:#DD1B20\">(011) 4635-3302 /4635-3402</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"font-size:18px\">Consultas Online a trav&eacute;s de nuestro e-mail<br />\r\n<span style=\"color:#DD1B20\">gasesmataderos@gmail.com</span></span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"font-size:18px\">En Gases Mataderos contamos con las siguientes certificaciones de Air Liquide Argentina:</span></span></p>\r\n\r\n<p><span style=\"font-size:18px\"><span style=\"font-size:18px\"><span style=\"color:#DD1B20\">&bull;</span> ISO 9001:2008 - Sistemas de gesti&oacute;n de Calidad<br />\r\n<span style=\"color:#DD1B20\">&bull;</span> ISO 14001:2004 - Sistemas de gesti&oacute;n Ambiental y<br />\r\n<span style=\"color:#DD1B20\">&bull;</span> FSSC 22000 de las plantas Luj&aacute;n de Cuyo, Campana y Acindar;<br />\r\n<span style=\"color:#DD1B20\">&bull; </span>Los certificados de Cuidado Responsable del Medio Ambiente PCRMA de las plantas de Campana, Ensenada, Llavallol, Luj&aacute;n de Cuyo, San Justo y Bah&iacute;a Blanca ENAC: Laboratorio de Calibraci&oacute;n acreditado ENAC</span></span></p>', NULL, '2019-02-27 14:42:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_empresas`
--

CREATE TABLE `contenido_empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contenido_empresas`
--

INSERT INTO `contenido_empresas` (`id`, `titulo`, `texto`, `imagen`, `created_at`, `updated_at`) VALUES
(1, 'Empresa', '<p style=\"font-weight:300\">Gases Mataderos es una empresa <span style=\"color:#E01613\">distribuidora oficial de Air Liquide.</span> Es una empresa que ha apoyado el desarrollo de la industria local y de los profesionales de la salud <span style=\"color:#E01613\">ofreciendo soluciones innovadoras, productos de alta calidad y servicios a trav&eacute;s de Argentina.</span> Gestionado 17 unidades de producci&oacute;n de gases del aire, la compa&ntilde;&iacute;a posee sucursales en todo el pa&iacute;s desde Jujuy hasta Ushuaia.</p>\r\n\r\n<p style=\"font-weight:300\">Air Liquide ofrece productos y servicios en mercados industriales como: miner&iacute;a, qu&iacute;mica, siderurgia, oil &amp; gas, petroqu&iacute;mica, refiner&iacute;a, automotriz, comidas y bebidas.</p>\r\n\r\n<p style=\"font-weight:300\">Respecto de la actividad medicinal, Air Liquide ofrece gases medicinales, equipamiento y servicios asociados para hospitales, cl&iacute;nicas y ambulancias.</p>\r\n\r\n<p style=\"font-weight:300\">La calidad de los productos, servicios y tecnolog&iacute;as que proporcionamos es un requisito imprescindible que forma parte de un objetivo global de mejora continua.</p>', 'imagenes/contenido_empresa/2_s01.jpg', NULL, '2019-02-26 21:45:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_homes`
--

CREATE TABLE `contenido_homes` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contenido_homes`
--

INSERT INTO `contenido_homes` (`id`, `titulo`, `texto`, `imagen`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Cilindros portátiles, livianos y libres de alquiler', '<p>Air Liquide posee un sistema de gesti&oacute;n integrado (Sistema Integral) en el que confluyen las &aacute;reas de Seguridad y Prevenci&oacute;n de Riesgos Laborales, Calidad y Medio Ambiente.</p>', 'imagenes/contenido_home/iconhome.png', '1/subfamilias', NULL, '2019-02-27 18:12:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_empresas`
--

CREATE TABLE `datos_empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `datos_empresas`
--

INSERT INTO `datos_empresas` (`id`, `tipo`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'direccion', 'Av. Eva Perón 5901 - C1439BSK C.A.B.A', NULL, '2019-02-24 00:38:18'),
(2, 'telefono', '011 4635 - 3302 <br> 011  4635 - 3402', NULL, '2019-02-27 23:27:09'),
(3, 'email', 'gasesmataderos@gmail.com', NULL, '2019-02-24 00:38:48'),
(4, 'whatsapp', '11 5562 - 1544', NULL, '2019-04-20 07:35:18'),
(5, 'horario', 'Horario de atención 9hs. a 13hs. y de 14hs. a 18hs.', NULL, '2019-04-20 05:55:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descargas`
--

CREATE TABLE `descargas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ficha` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `descargas`
--

INSERT INTO `descargas` (`id`, `nombre`, `ficha`, `orden`, `created_at`, `updated_at`) VALUES
(1, '<p>ISO 9001:2008</p>', 'imagenes/descarga/1_empresa.jpg', 'aa', '2019-02-24 21:20:43', '2019-02-24 21:20:43'),
(2, '<p>ISO 14001:2004</p>', 'imagenes/descarga/2_dest1.jpg', 'bb', '2019-02-24 21:21:21', '2019-02-27 14:43:40'),
(9, '<p>FSSC 22000</p>', NULL, 'cc', '2019-02-27 15:19:10', '2019-02-27 15:19:10'),
(10, '<p>PCRMA</p>', NULL, 'dd', '2019-02-27 15:19:38', '2019-02-27 15:19:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familias`
--

CREATE TABLE `familias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `familias`
--

INSERT INTO `familias` (`id`, `nombre`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Gases', 'imagenes/familia/3_gases.jpg', 'aa', '2019-02-25 20:29:37', '2019-02-26 21:32:48'),
(2, 'Equipos', 'imagenes/familia/3_equipos.jpg', 'bb', '2019-02-25 20:29:55', '2019-02-26 21:33:07'),
(3, 'Consumibles', 'imagenes/familia/3_consumibles.jpg', 'cc', '2019-02-26 21:33:42', '2019-02-26 21:33:42'),
(4, 'Seguridad Industrial', 'imagenes/familia/4_seguridad_industrial.jpg', 'dd', '2019-02-26 21:34:48', '2019-02-26 21:34:48'),
(5, 'Soldadura Oxicorte', 'imagenes/familia/5_soldadura_oxicorte.jpg', 'ee', '2019-02-26 21:35:47', '2019-02-26 21:35:47'),
(6, 'Refrigeración', 'imagenes/familia/6_refrigeracion.jpg', 'ff', '2019-02-26 21:36:12', '2019-02-26 21:36:12'),
(7, 'Accesorios', 'imagenes/familia/7_accesorios.jpg', 'gg', '2019-02-26 21:36:55', '2019-02-26 21:36:55'),
(8, 'PRUEBA', 'imagenes/familia/8_6b75b68dce4a404fad5a165304475thumbnail.jpg', 'ZZ', '2019-02-27 18:18:51', '2019-02-27 18:18:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_producto` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `imagen`, `orden`, `id_producto`, `created_at`, `updated_at`) VALUES
(1, 'imagenes/galeria/1_gale1.jpg', 'aa', '1', '2019-02-25 21:31:48', '2019-02-25 21:31:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `ruta` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('header','footer','favicon','header2') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `logos`
--

INSERT INTO `logos` (`id`, `ruta`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'imagenes/logos/1_logohead.png', 'header', NULL, '2019-02-24 00:29:51'),
(2, 'imagenes/logos/2_logofoot.png', 'footer', NULL, '2019-02-24 00:30:02'),
(3, 'imagenes/logos/favicon.png', 'favicon', NULL, '2019-02-24 00:31:43'),
(4, 'imagenes/logos/4_otrologo.png', 'header2', NULL, '2019-02-24 01:37:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metadatos`
--

CREATE TABLE `metadatos` (
  `id` int(10) UNSIGNED NOT NULL,
  `seccion` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `metadatos`
--

INSERT INTO `metadatos` (`id`, `seccion`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Home', 'Home', NULL, NULL),
(2, 'empresa', 'empresa,nosotros', 'empresa', NULL, NULL),
(3, 'contacto', 'gases mataderos,gases industriales, air liquide,caba,', 'Insumos, Equipos, Kits y Elementos para Soldar ¡Conocé nuestras Ofertas del Mes! Nos Especializamos en ProductosServicios de Soldadura Con más de 35 Años De Experiencia. Equipos de Marcas Líderes. Insumos para Corte Plasma. Insumos para la Soldadura. Entregas programadas.', NULL, '2019-02-27 18:30:55'),
(4, 'garantia', 'garantia', 'garantia', NULL, NULL),
(5, 'servicios', 'servicios', 'servicios', NULL, NULL),
(6, 'postventas', '', '', NULL, NULL),
(7, 'presupuesto', '', '', NULL, NULL),
(8, 'productos', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_21_120739_create_logos_table', 1),
(4, '2017_11_21_121250_create_dato_empresa_table', 1),
(5, '2017_11_21_121600_create_red_social_table', 1),
(6, '2017_11_21_121912_create_metadato_table', 1),
(7, '2017_11_23_170950_create_slider_homes_table', 1),
(8, '2017_11_27_174234_create_contenido_empresas_table', 1),
(9, '2017_12_29_151011_create_slider_empresas_table', 1),
(10, '2018_01_09_150609_create_galerias_table', 1),
(11, '2018_02_20_131300_create_contenido_homes_table', 1),
(12, '2018_05_27_003245_create_descargas_table', 1),
(13, '2018_08_18_194558_create_producto_destacados_table', 1),
(14, '2018_08_24_002805_create_contenido_descargas_table', 1),
(15, '2019_02_24_200240_create_servicios_table', 2),
(16, '2019_02_24_205550_create_postventas_table', 3),
(17, '2019_02_25_131215_create_productos_table', 4),
(18, '2019_02_25_131329_create_familias_table', 4),
(19, '2019_02_25_131353_create_subfamilias_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `postventas`
--

CREATE TABLE `postventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `postventas`
--

INSERT INTO `postventas` (`id`, `texto`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES
(1, '<h1>Asesoramiento Personalizado</h1>\r\n\r\n<h2>Para nuestros clientes</h2>\r\n\r\n<p style=\"font-weight:300\">Contamos con un equipo de profesionales capacitados, y brindamos asesoramiento Personalizado adecuado a las necesidades de nuestros clientes.</p>', 'imagenes/postventa/4_icon1.png', 'aa', NULL, '2019-02-26 22:03:43'),
(2, '<h1>Repuestos y Accesorios</h1>\r\n\r\n<h2>Asesoramiento a clientes</h2>\r\n\r\n<p style=\"font-weight:300\">Para m&aacute;s informaci&oacute;n consulte por nuestras piezas originales y accesorios para sus equipos.</p>', 'imagenes/postventa/4_icon2.png', 'ab', NULL, '2019-02-26 22:03:48'),
(3, '<h1>Servicio de Post-Venta</h1>\r\n\r\n<h2>Soluciones Integrales&nbsp;</h2>\r\n\r\n<p style=\"font-weight:300\">Brindamos un Servicio de Post-Venta para mantener y garantizar la satisfacci&oacute;n de nuestros clientes y la resoluci&oacute;n de &nbsp;problem&aacute;ticas.</p>', 'imagenes/postventa/4_icon3.png', 'ac', NULL, '2019-02-26 22:03:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texto2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relacionado1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relacionado2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relacionado3` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subfamilia` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `texto`, `imagen`, `pdf`, `texto2`, `relacionado1`, `relacionado2`, `relacionado3`, `subfamilia`, `orden`, `created_at`, `updated_at`) VALUES
(3, 'Acetileno', '<p>Air Liquide fabrica acetileno puro para diversas aplicaciones. El acetileno es un gas de combusti&oacute;n est&aacute;ndar que se utiliza con el ox&iacute;geno para soldar metales y cortar acero. Tambi&eacute;n se emplea en los procesos de aleaci&oacute;n de oxiacetileno empleados en el calentamiento, formado y tratamiento de metales. Air Liquide tambi&eacute;n ofrece diferentes tipos de acetileno seg&uacute;n las necesidades del cliente.</p>', 'imagenes/producto/1_Acetileno.png', NULL, '<p><span style=\"color:#26619D\">Equipos:</span><br />\r\nAir Liquide fabrica equipos de manipulaci&oacute;n de gas para suministrar acetileno gaseoso puro, de forma segura, hasta su punto de uso, incluyendo reguladores de gas.</p>\r\n\r\n<p><span style=\"color:#26619D\">Modos de Suministro:</span><br />\r\nAir Liquide envasa los gases de acetileno puro en cilindros y/o bater&iacute;as a baja presi&oacute;n. &nbsp;</p>', NULL, NULL, NULL, '1', 'aa', '2019-02-26 21:51:34', '2019-02-26 21:57:43'),
(4, 'ARCAL™', '<p>ARCAL&trade; es la marca l&iacute;der de Air Liquide en gases para soldadura. La oferta engloba una l&iacute;nea de referencia que incluye una innovadora gama premium de 4 productos listos para soldar (Arg&oacute;n y mezclas de Arg&oacute;n), espec&iacute;ficos para la soldadura por arco.</p>\r\n\r\n<p>Abarca pr&aacute;cticamente cualquier tipo de soldadura, incluyendo la soldadura MIG/MAG, la soldadura TIG/Plasma, el gas de respaldo y el corte por plasma. Estos 4 productos incluyen nuestra mejor y m&aacute;s innovadora soluci&oacute;n de suministro, disponible en cualquier lugar y en cualquier momento (envasado estandarizado de envases con v&aacute;lvulas TOP innovadoras, mezcla in situ para suministro l&iacute;quido) y que cumplen con las normas ISO14175 y AWS 5.32.</p>\r\n\r\n<p>Gracias a las reducidas tasas de oxidaci&oacute;n, salpicaduras y defectos, garantizamos que nuestras soluciones siempre le ofrecer&aacute;n la mayor productividad y una eficiencia superior.</p>\r\n\r\n<p>Con la gama de productos ARCAL&trade;, la soldadura por arco resulta m&aacute;s sencilla, m&aacute;s segura y de mayor calidad. Tambi&eacute;n existe una L&iacute;nea T&eacute;cnica que consta de 23 productos adicionales para deferentes situaciones de soldadura, que requieran una soluci&oacute;n para especificaciones de calidad superior.</p>', 'imagenes/producto/4_Arcal.png', NULL, NULL, NULL, NULL, NULL, '1', 'bb', '2019-02-26 22:00:19', '2019-02-26 22:00:19'),
(5, 'Argón', '<p>Air Liquide suministra arg&oacute;n y mezclas de arg&oacute;n en distintos vol&uacute;menes y niveles de pureza. El arg&oacute;n se utiliza como atm&oacute;sfera protectora en numerosos procesos industriales, incluyendo la fabricaci&oacute;n de acero, la soldadura y otros procesos metal&uacute;rgicos, la fabricaci&oacute;n de piezas electr&oacute;nicas, la conservaci&oacute;n de alimentos y la elaboraci&oacute;n de vino. El arg&oacute;n se utiliza tambi&eacute;n en aplicaciones de iluminaci&oacute;n fluorescente y sirve de protector t&eacute;rmico no reactivo en ventanas con doble cristal.</p>\r\n\r\n<p>El arg&oacute;n puro y las mezclas de arg&oacute;n se utilizan com&uacute;nmente en procesos de arco el&eacute;ctrico para soldar aluminio, acero inoxidable, bronce y cobre. Cuando se utiliza como gas de respaldo en aplicaciones de soldadura por arco, gas de respaldo o corte por plasma, el arg&oacute;n proporciona una atm&oacute;sfera inerte para impedir la oxidaci&oacute;n u otros cambios qu&iacute;micos que ser&iacute;an perjudiciales para la soldadura. En la fabricaci&oacute;n de acero, el arg&oacute;n impide la interacci&oacute;n entre el metal l&iacute;quido y la atm&oacute;sfera circundante. Air Liquide ofrece arg&oacute;n puro y mezclas de gases de la marca ARCAL&trade; con cuatro productos listos para soldar, que engloban pr&aacute;cticamente cualquier aplicaci&oacute;n de soldadura. Todos est&aacute;n dise&ntilde;ados para ser sencillos de utilizar, fiables y eficaces, en cualquier lugar y en cualquier momento.</p>', 'imagenes/producto/5_Argón.png', NULL, '<p><span style=\"color:#26619D\">Modos de Suministro:</span><br />\r\nAir Liquide suministra tanto arg&oacute;n puro como calidad industrial, en distintos formatos. &nbsp;Se puede realizar el suministro en cilindros individuales de gas comprimido a alta presi&oacute;n, baterias y SAC moviles.</p>\r\n\r\n<p><span style=\"color:#26619D\">Equipos:</span><br />\r\nAir Liquide fabrica equipos de manipulaci&oacute;n de gases para suministrar arg&oacute;n puro y mezclas de arg&oacute;n de forma segura a su punto de uso, incluyendo reguladores y manifolds de estaci&oacute;n &uacute;nica.</p>', NULL, NULL, NULL, '1', 'cc', '2019-02-26 22:02:52', '2019-02-26 22:02:52'),
(6, 'Dióxido de Carbono', '<p>El di&oacute;xido de carbono sirve para una serie de aplicaciones clave.&nbsp;En estado s&oacute;lido (-78&deg;C), el di&oacute;xido de carbono, tambi&eacute;n conocido como hielo seco, es una fuente de fr&iacute;o que se puede utilizar como fluido criog&eacute;nico para procesos como la ultra congelaci&oacute;n para conservaci&oacute;n de tejidos y la extinci&oacute;n de incendios. El di&oacute;xido de carbono emitido a la atm&oacute;sfera por las actividades qu&iacute;micas y, de petr&oacute;leo y gas, puede capturarse y purificarse para su uso en muchos sectores y aplicaciones distintas.</p>', 'imagenes/producto/6_Dioxido_de_Carbono.png', NULL, '<p><span style=\"color:#26609D\">Modos de Suministro:</span><br />\r\nEl di&oacute;xido de carbono est&aacute; disponible a granel, en cilindros individuales, y recipientes criog&eacute;nicos m&oacute;viles. Ofrecemos di&oacute;xido de carbono comprimido y di&oacute;xido de carbono l&iacute;quido con distintos niveles de pureza, y volumen.</p>\r\n\r\n<p><span style=\"color:#26609D\">Materiales:</span><br />\r\nAir Liquide fabrica equipos de manipulaci&oacute;n de gases para suministrar di&oacute;xido de carbono puro y mezclas de di&oacute;xido de carbono, de forma segura, a su punto de uso, incluyendo man&oacute;metros, y estaciones para puesto de trabajo.</p>\r\n\r\n<p><span style=\"color:#26609D\">Industrias relacionadas:</span><br />\r\nMetales,&nbsp;Construcci&oacute;n,&nbsp;Automotriz,&nbsp;Alimentaci&oacute;n,&nbsp;Petr&oacute;leo y Gas,&nbsp;Fabricaci&oacute;n Met&aacute;lica,&nbsp;Bebidas,&nbsp;Aeron&aacute;utica,&nbsp;Artesanos y Profesionales,&nbsp;Vidrio,&nbsp;Pasta y Papel.</p>', NULL, NULL, NULL, '1', 'dd', '2019-02-26 22:07:07', '2019-02-26 22:07:07'),
(7, 'Helio', '<p>El helio, un gas qu&iacute;micamente inerte, tiene un papel fundamental en un gran n&uacute;mero de sectores y aplicaciones, incluyendo los esc&aacute;neres de IRM, RMN, los semiconductores, los cables de fibra &oacute;ptica, la investigaci&oacute;n cient&iacute;fica, la fabricaci&oacute;n de airbags, la detecci&oacute;n de fugas y el tratamiento t&eacute;rmico de superficie, entre otros. Air Liquide suministra este gas especializado, dependiendo de cu&aacute;les sean sus necesidades, en distinto tipo de envases que van desde contenedores ISO hasta cilindros transportiles ALbee&trade;.</p>', 'imagenes/producto/7_Helio.png', NULL, '<p><span style=\"color:#26609D\">Imagen por Resonancia Magn&eacute;tica Nuclear:</span><br />\r\nLos esc&aacute;neres de IRM (Imagen por Resonancia Magn&eacute;tica Nuclear) , que se utilizan principalmente para detectar tumores y tejidos anormales, utilizan helio l&iacute;quido para refrigerar el im&aacute;n de gran tama&ntilde;o que mantiene las temperaturas extremadamente bajas necesarias para que el aparato funcione adecuadamente, as&iacute; como los RMN que se usan en el estudio cient&iacute;fico.</p>\r\n\r\n<p><span style=\"color:#26609D\">Fibra &oacute;ptica:</span><br />\r\nEl helio es esencial para el sector de la fibra &oacute;ptica. Se utiliza para crear la preforma de vidrio altamente purificado, a partir de la cual se realizan las fibras. El helio tambi&eacute;n es clave para el proceso de refrigeraci&oacute;n y permite una producci&oacute;n a alta velocidad y de gran volumen.</p>\r\n\r\n<p><span style=\"color:#26609D\">Aeroespacial:</span><br />\r\nEl helio se utiliza para presurizar tanques de combustible y tuber&iacute;as de cohetes y sat&eacute;lites. Las propiedades refrigerantes del helio garantizan que los complejos sistemas de medici&oacute;n de los sat&eacute;lites no se sobrecalienten.</p>\r\n\r\n<p><span style=\"color:#26609D\">Electr&oacute;nica:</span><br />\r\nEn el sector de la electr&oacute;nica, el helio se utiliza para aplicaciones de purga, recocido, pulverizaci&oacute;n, comprobaci&oacute;n de fugas y grabado. Tambi&eacute;n se utiliza para el control de temperatura, para mantener la temperatura del agua uniforme durante los procesos cr&iacute;ticos de deposici&oacute;n y refrigerar las herramientas despu&eacute;s de los ciclos de limpieza a alta temperatura.</p>\r\n\r\n<p><span style=\"color:#26609D\">Soldadura:</span><br />\r\nEl helio se utiliza de forma generalizada en los procesos de soldadura como un gas de protecci&oacute;n inerte para la soldadura por arco. Se utiliza tanto como gas puro o en mezclas con arg&oacute;n para soldadura TIG o MIG. En algunas aplicaciones, respecto a la soldadura por arco como gas de protecci&oacute;n, el helio tiene la ventaja frente al arg&oacute;n de que proporciona un calor superior del arco para las mismas corrientes de soldadura y longitudes de arco. Esto da lugar a una mayor penetraci&oacute;n, lo cual resulta preferible para soldar materiales de mayor espesor que requieren una mayor velocidad de soldadura o cuando hay que soldar metales de elevada conductividad t&eacute;rmica o aleaciones no ferrosas.</p>\r\n\r\n<p><span style=\"color:#26609D\">Investigaci&oacute;n y Analisis:</span><br />\r\nAir Liquide produce varias clases de helio puro dentro de la marca ALPHAGAZ&trade;. La clase de helio puro ALPHAGAZ&trade; 1 tiene una pureza del 99,999%. La clase ALPHAGAZ&trade; 2 es ultra pura, con un 99,9999%, perfecta para aplicaciones cr&iacute;ticas de laboratorio y anal&iacute;ticas. Las dos clases de helio de ALPHAGAZ&trade; se presentan en cilindros de gas comprimido equipadas con tulipas abiertas ergon&oacute;micas y v&aacute;lvulas SMARTOP&trade;. El helio tambi&eacute;n est&aacute; disponible en forma l&iacute;quida criog&eacute;nica con la opci&oacute;n ALPHAGAZ 1000. Tiene una pureza del 99,999% y se utiliza en aplicaciones como imanes de refrigeraci&oacute;n en espectr&oacute;metros de RMN. Hay disponibles mezclas de helio cuando su laboratorio requiere alta exactitud y precisi&oacute;n.</p>\r\n\r\n<p><span style=\"color:#26609D\">Helio para globos:</span><br />\r\nAir liquide garantiza un suministro estable de helio puro para su uso con globos en ocasiones festivas, meteorolog&iacute;a e investigaci&oacute;n.</p>\r\n\r\n<p>Los cilindros de Air Liquide est&aacute;n equipados con v&aacute;lvulas SMARTOP&trade;, con palancas r&aacute;pidas ON/OFF e indicadores de presi&oacute;n incorporados para minimizar la contracci&oacute;n del producto. Tambi&eacute;n existe equipo complementario dise&ntilde;ado para gestionar el helio con seguridad, incluyendo carritos y soportes para las cilindros. ALbee Fly es nuestra oferta de peque&ntilde;os cilindros de helio para inflar globos a nivel artesanal/casero.<br />\r\n<br />\r\n<span style=\"color:#26609D\">Buceo:</span><br />\r\nEl helio mezclado con ox&iacute;geno en los tanques para inmersi&oacute;n submarina impide el efecto narc&oacute;tico del nitr&oacute;geno en aguas profundas. Los sectores con operaciones mar adentro utilizan gases para inmersi&oacute;n y mezclas para respiraci&oacute;n asistida para las tareas submarinas.<br />\r\n<br />\r\n<span style=\"color:#26609D\">Modos de Suministro:</span><br />\r\nEl helio se transporta desde fuentes repartidas por todo el mundo en ISO contenedores en forma l&iacute;quida. Luego se traslada a una planta de trasvase, donde se transfiere a dewars de helio l&iacute;quido o se vaporiza y comprime para pasarlo a cilindros y baterias de acero de alta presi&oacute;n o remolques de tubo de helio.</p>\r\n\r\n<p><span style=\"color:#26609D\">Materiales:</span><br />\r\nAir Liquide fabrica equipos de manipulaci&oacute;n de gases para suministrar helio puro y mezclas de helio de forma segura, desde la planta hasta su punto de uso, incluyendo reguladores, centrales de gases, carritos y soportes para cilindros.</p>\r\n\r\n<p><span style=\"color:#26609D\">Industrias relacionadas:</span><br />\r\nAutomotriz,&nbsp;Petr&oacute;leo y Gas,&nbsp;Medio Ambiente,&nbsp;Farmac&eacute;utica y Biotecnol&oacute;gica.</p>', NULL, NULL, NULL, '1', 'ee', '2019-02-26 22:12:41', '2019-02-26 22:12:41'),
(8, 'Hidrógeno', '<p>Air Liquide suministra hidr&oacute;geno, un gas crucial para numerosos sectores en una amplia gama de aplicaciones como&nbsp;un portador de energ&iacute;a limpia,&nbsp;Hidr&oacute;geno para el refinado e&nbsp;Hidr&oacute;geno en cantidades menores</p>', 'imagenes/producto/8_Hidrogeno.png', NULL, '<p><span style=\"color:#26609D\">Materiales:</span><br />\r\nAir Liquide fabrica diferentes equipos de manipulaci&oacute;n de gases para entregar el hidr&oacute;geno puro y las mezclas de gases de hidr&oacute;geno de forma segura en su punto de uso, incluidos reguladores y centrales de estaci&oacute;n &uacute;nica.</p>\r\n\r\n<p><span style=\"color:#26609D\">Modos de Suministro:</span><br />\r\nSuministramos hidr&oacute;geno a trav&eacute;s de canalizaci&oacute;n, entregas a granel y tecnolog&iacute;as de producci&oacute;n in situ. Tambi&eacute;n envasamos hidr&oacute;geno puro y mezclas de gases de hidr&oacute;geno en diferentes cilindros a alta presi&oacute;n y baterias.</p>\r\n\r\n<p><span style=\"color:#26609D\">Industrias:</span><br />\r\nAutomotriz,&nbsp;Investigaci&oacute;n y an&aacute;lisis,&nbsp;Petr&oacute;leo y Gas,&nbsp;Fabricaci&oacute;n Met&aacute;lica,&nbsp;Aeron&aacute;utica,&nbsp;Energ&iacute;as Renovables.</p>', NULL, NULL, NULL, '1', 'ff', '2019-02-26 22:16:26', '2019-02-26 22:17:05'),
(9, 'Nitrógeno', '<p>Air Liquide suministra nitr&oacute;geno l&iacute;quido y gaseoso a cualquier sector. Por ejemplo, las refiner&iacute;as y plantas petroqu&iacute;micas requieren grandes vol&uacute;menes de nitr&oacute;geno gaseoso para la purga de ox&iacute;geno y la humectaci&oacute;n en operaciones de protecci&oacute;n. El sector de los alimentos y las bebidas requiere cantidades variables de nitr&oacute;geno tanto l&iacute;quido como gaseoso para aplicaciones de procesamiento y envasado alimentario y para ayudar a mantener temperaturas seguras cuando se almacenan y transportan los productos alimentarios.</p>\r\n\r\n<p>En muchos sectores, el nitr&oacute;geno se utiliza en cantidades m&aacute;s peque&ntilde;as para poner a cero y purgar instrumentos anal&iacute;ticos. Existen distintas clases de gases especializados de alta pureza disponibles para satisfacer muchos requisitos normativos y diluirlos para la realizaci&oacute;n de pruebas de emisiones de motores.</p>', 'imagenes/producto/9_Nitrogeno.png', NULL, '<p><span style=\"color:#26609D\">Equipos:</span><br />\r\nAir Liquide suministra una variedad de equipos de manipulaci&oacute;n de gases, incluyendo reguladores para reducir la presi&oacute;n y suministrar el nitr&oacute;geno de forma segura y eficiente para muchas aplicaciones.</p>\r\n\r\n<p><span style=\"color:#26609D\">Modo de Suministro:</span><br />\r\nAir Liquide ofrece muchas opciones de suministro para el nitr&oacute;geno en funci&oacute;n de la cantidad de gas que necesite: generaci&oacute;n ONSITE, gases licuados, gases comprimidos, canalizaci&oacute;n.</p>\r\n\r\n<p><span style=\"color:#26609D\">Industrias:</span><br />\r\nAeron&aacute;utica,&nbsp;Automotriz,&nbsp;Qu&iacute;mica,&nbsp;Medio Ambiente,&nbsp;Vidrio,&nbsp;Investigaci&oacute;n y an&aacute;lisis,&nbsp;Fabricaci&oacute;n,&nbsp;Met&aacute;lica,&nbsp;Metales,&nbsp;Petr&oacute;leo y Gas,&nbsp;Farmac&eacute;utica y Biotecnol&oacute;gica,&nbsp;Pasta y Papel.</p>', NULL, NULL, NULL, '1', 'gg', '2019-02-26 22:20:05', '2019-02-26 22:20:43'),
(10, 'Oxígeno', '<p>El ox&iacute;geno es esencial para muchos sectores. En el sector qu&iacute;mico, el ox&iacute;geno de clase industrial se utiliza para mejorar un gran n&uacute;mero de procesos petroqu&iacute;micos. El ox&iacute;geno se utiliza en aplicaciones metal&uacute;rgicas como la fundici&oacute;n, el corte y la soldadura. Aumenta la eficiencia en una serie de procesos reduciendo la cantidad de combustible utilizado, as&iacute; como las emisiones de di&oacute;xido de carbono.&nbsp;</p>\r\n\r\n<p>En laboratorios, el ox&iacute;geno ALPHAGAZ&trade; 1 proporciona una pureza del 99,999% y se utiliza como agente blanqueador, combustible para detectores de llama, agente oxidante y para la oxidaci&oacute;n de silicona en la fabricaci&oacute;n de semiconductores. Cuando su aplicaci&oacute;n anal&iacute;tica y de laboratorio es cr&iacute;tica y requiere un ox&iacute;geno de pureza ultra elevada, el ox&iacute;geno de ALPHAGAZ&trade; 2, con una pureza del 99,9995%, es perfecto. Ambas clases de ox&iacute;geno ALPHAGAZ&trade; vienen en cilindros de gas comprimido, equipados con tulipas abiertas y v&aacute;lvulas SMARTOP&trade;.</p>\r\n\r\n<p>El ox&iacute;geno en mezclas de gas nitr&oacute;geno se utiliza como mezcla de calibraci&oacute;n de gases patr&oacute;n en la prueba de emisiones de motores. Las mezclas de ox&iacute;geno tambi&eacute;n se utilizan en aplicaciones medioambientales, de higiene y seguridad industriales y de laboratorio.</p>', 'imagenes/producto/10_Oxigeno.png', NULL, '<p><span style=\"color:#26609D\">Modos de Suministro:</span><br />\r\nAir Liquide suministra ox&iacute;geno en distintos formatos para satisfacer las necesidades de muchos sectores. Se puede realizar el suministro en cilindros de gas comprimido a alta presi&oacute;n, baterias y cilindros transportables ALbee&trade;. Los cilindros de gas comprimido de ox&iacute;geno de la marca ALPHAGAZ&trade; vienen equipadas con un v&aacute;lvula SMARTOP&trade; y un dise&ntilde;o de tulipa abierta. Air Liquide tambi&eacute;n suministra ox&iacute;geno a granel en cisterna o mediante tecnolog&iacute;as de producci&oacute;n de ox&iacute;geno in situ. Para suministros de grandes vol&uacute;menes de ox&iacute;geno a clientes del sector qu&iacute;mico, de petr&oacute;leo y gas &oacute; de metalurgia, se puede realizar mediante canalizaciones de ox&iacute;geno.</p>\r\n\r\n<p><span style=\"color:#26609D\">Materiales:</span><br />\r\nAir Liquide dispone de equipos de manipulaci&oacute;n y suministro de ox&iacute;geno puro de forma segura, as&iacute; como para mezclas de ox&iacute;geno, incluyendo man&oacute;metros y centrales.</p>\r\n\r\n<p><span style=\"color:#26609D\">Industrias relacionadas:</span><br />\r\nAeron&aacute;utica,&nbsp;Qu&iacute;mica,&nbsp;Vidrio,&nbsp;Pasta y Papel.</p>', NULL, NULL, NULL, '1', 'hh', '2019-02-26 22:23:41', '2019-02-26 22:23:41'),
(11, 'ALbee™ Weld', '<p>La gama de cilindros port&aacute;tiles ALbee&trade; se ha desarrollado pensando en trabajadores del sector de la construcci&oacute;n, mec&aacute;nicos y otros profesionales dedicados a la soldadura por arco, con el objetivo de facilitar el trabajo diario.</p>\r\n\r\n<p>Dise&ntilde;ado para obtener la m&aacute;xima eficiencia y facilidad de uso, ALbee&trade; Weld le ofrece nuevos niveles de comodidad, eficiencia y utilidad, ya sea con el aluminio de la soldadura MIG, el acero inoxidable de la soldadura TIG o para cualquier otra aplicaci&oacute;n de soldadura por arco.</p>\r\n\r\n<p>La mezcla para la soldadura Albee est&aacute; formada por una proporci&oacute;n m&aacute;s rica en arg&oacute;n que las disponibles en el mercado local, lo que reduce los humos y crea una mejor soldadura.</p>\r\n\r\n<p>Las gamas ALbee&trade; Weld Arg&oacute;n para las aplicaciones de soldadura por arco TIG/MIG y ALbee&trade; Weld Arg&oacute;n mix para las aplicaciones MAG est&aacute;n disponibles en 5L y 11L a 200 bar, con un tiempo de soldadura por arco continua de hasta 2,5 horas.</p>\r\n\r\n<p>Los cilindros de gas tambi&eacute;n incluyen la v&aacute;lvula MINITOP&trade; con palanca on/off, volante para regular el caudal, indicador del contenido de gas y acople r&aacute;pido para facilitar el manejo al usuario final.</p>', 'imagenes/producto/11_ALbee™_Weld.png', NULL, NULL, NULL, NULL, NULL, '4', 'aa', '2019-02-26 22:27:01', '2019-02-26 22:27:01'),
(12, 'ALbee™ Flame', '<p>Las gamas ALbee&trade; Flame O2 y Flame Ace de cilindros de gas port&aacute;tiles son una marca y concepto creados por Air Liquide para facilitar el trabajo diario de los aut&oacute;nomos, en particular para artesanos implicados en trabajos con plata, cobre... y otros con necesidades de &ldquo;peque&ntilde;as llamas&rdquo;.</p>\r\n\r\n<p>La gama ALbee&trade; Flame es ideal para joyeros, plomeros, instaladores, reparadores de veh&iacute;culos, mec&aacute;nicos y otros profesionales a los que se ofrecen hasta 14 horas continuas de llama con nuestras botellas de formato B5 y B11, utilizacndo boquillas de 160 litros/hora de consumo de acetileno.</p>\r\n\r\n<p>Los cilindros ALbee&trade; Flame est&aacute;n disponibles en dos tama&ntilde;os: 5L y 11L, incluyendo la v&aacute;lvula MINITOP&trade;, con palanca on/off, volante para regular el caudal, indicador del contenido de gas y acople r&aacute;pido para facilitar el manejo al usuario final.</p>', 'imagenes/producto/12_ALbee™_Flame.png', NULL, NULL, NULL, NULL, NULL, '4', 'bb', '2019-02-26 22:28:07', '2019-02-26 22:29:46'),
(13, 'ALbee™ Cool', '<p>ALbee&trade; Cool es el cilindro de gas, port&aacute;til y sin alquiler de Air Liquide para profesionales que trabajan con aplicaciones HVAC (calefacci&oacute;n, ventilaci&oacute;n y aire acondicionado) y su mantenimiento.</p>\r\n\r\n<p>Al ser livianos y port&aacute;tiles, los mismos cilindros de nitr&oacute;geno gaseoso pueden usarse a alta presi&oacute;n para las pruebas de fugas y a baja presi&oacute;n, con una tasa de caudal alta, para el purgado y el inertizado. La botella tiene un rango de presi&oacute;n integrado de salida de 0 a 50 bars.</p>\r\n\r\n<p>El cilindro ALbee&trade; Cool est&aacute; disponible en cilindros de 5L y 11L, incluyendo tambi&eacute;n la v&aacute;lvula MINITOP&trade;, con palanca on/off, volante para regular el caudal, indicador del contenido de gas y acople r&aacute;pido para facilitar el manejo al usuario final.</p>', 'imagenes/producto/13_ALbee™_Cool.png', NULL, NULL, NULL, NULL, NULL, '4', 'cc', '2019-02-26 22:33:09', '2019-02-26 22:33:09'),
(14, 'ALbee™ Fly', '<p>ALbee&trade; Fly es el cilindro de gas, port&aacute;til y sin alquiler de Air Liquide para profesionales que trabajan decorando salones o eventos con globos.</p>\r\n\r\n<p>Al ser livianos y port&aacute;tiles, los mismos cilindros de helio gaseoso pueden usarse, moverse y transportarse facilmente y con la mayor seguridad.</p>\r\n\r\n<p>El cilindro ALbee&trade; Fly est&aacute; disponible en cilindros de 5L y 11L, incluyendo tambi&eacute;n la v&aacute;lvula MINITOP&trade;, con palanca on/off, volante para regular el caudal e inflar el globo, indicador del contenido de gas y pico de aplicaci&oacute;n para facilitar el manejo al usuario final.</p>', 'imagenes/producto/14_ALbee™_Fly.png', NULL, NULL, NULL, NULL, NULL, '4', 'dd', '2019-02-26 22:34:01', '2019-02-26 22:34:01'),
(15, 'Acetileno AP', '<p>Air Liquide fabrica acetileno puro para diversas aplicaciones. Air Liquide ofrece diferentes tipos de acetileno seg&uacute;n las necesidades del cliente. Por ejemplo, ALPHAGAZTM 1 tiene una pureza del 99,6% para utilizarlo como gas de instrumentaci&oacute;n en la espectrometria de absorci&oacute;n at&oacute;mica con llama (AAS). El Acetileno ALphagaz se presenta en cilindros equipados con tulipa abierta ergonomica y v&aacute;lvulas SMARTOPTM.</p>', 'imagenes/producto/15_Acetileno_AP.png', NULL, '<p><span style=\"color:#26609D\">Equipos:</span><br />\r\nAir Liquide fabrica equipos de manipulaci&oacute;n de gas para suministrar acetileno gaseoso puro, de forma segura, hasta su punto de uso, incluyendo reguladores de gas.</p>\r\n\r\n<p><span style=\"color:#26609D\">Modos de Suministro:</span><br />\r\nAir Liquide envasa los gases de acetileno puro en cilindros y/o bater&iacute;as a baja presi&oacute;n.&nbsp;Gases Comprimidos y gases licuados</p>\r\n\r\n<p><span style=\"color:#26609D\">Industrias relacionadas:</span><br />\r\nFarmac&eacute;utica y Biotecnol&oacute;gica,&nbsp;Investigaci&oacute;n y an&aacute;lisis,&nbsp;Petr&oacute;leo y Gas,&nbsp;Medio Ambiente,&nbsp;Energ&iacute;as,&nbsp;Renovables,&nbsp;Vidrio,&nbsp;Pasta y Papel.</p>', NULL, NULL, NULL, '2', 'aa', '2019-02-26 22:41:34', '2019-02-26 22:41:34'),
(16, 'ALPHAGAZ™ 1', '<p>Los gases puros ALPHAGAZTM superan las recomendaciones de pureza de la mayor&iacute;a de los fabricantes de instrumentos de laboratorio, lo que los convierte en una opci&oacute;n para el uso generalizado en laboratorio.</p>\r\n\r\n<p>Con la garant&iacute;a de unos niveles bajos de impurezas, los productos ALPHAGAZTM 1 son perfectos para la mayor&iacute;a de las aplicaciones anal&iacute;ticas y de control de procesos.</p>', 'imagenes/producto/16_Alphagaz_1.png', NULL, '<p>Modos de Suministro:<br />\r\nSea cual sea su consumo, suministramos nuestros gases con el modo de suministro m&aacute;s adecuado, garantizando la calidad, la consistencia y la facilidad de uso.</p>\r\n\r\n<p>Los productos ALPHAGAZTM se suministran en distintos formatos, incluyendo cilindros, baterias o SAC moviles (liquidos), seg&uacute;n sus necesidades.</p>\r\n\r\n<p>Los cilindros envasados est&aacute;n equipadas con nuestra innovadora v&aacute;lvula SMARTOPTM para garantizar la sencillez del manejo, ahorro de costos y con una mayor seguridad.</p>\r\n\r\n<p>Equipos para gases especiales:<br />\r\nDependiendo del modo de suministro que requiera, desarrollamos una oferta integral de equipamientos para el manejo del gas.&nbsp;Modulos de alimentacion, reguladores de presion, modulos de regulacion en el punto de uso, flexibles, elementos de seguridad</p>\r\n\r\n<p>Servicios:<br />\r\nOfrecemos una serie de servicios para lograr que la utilizaci&oacute;n de nuestros gases sea tan productiva, eficiente y rentable como sea posible.&nbsp;</p>\r\n\r\n<p>Industrias:<br />\r\nAutomotriz,&nbsp;Petr&oacute;leo y Gas,&nbsp;Investigaci&oacute;n y an&aacute;lisis,&nbsp;Medio Ambiente,&nbsp;Qu&iacute;mica,&nbsp;Alimentaci&oacute;n</p>', NULL, NULL, NULL, '2', 'bb', '2019-02-26 22:46:03', '2019-02-26 22:46:03'),
(17, 'ALPHAGAZ™ Mix', '<p>ALPHAGAZTM Mix le ofrece la m&aacute;xima flexibilidad a la hora de seleccionar la incertidumbre anal&iacute;tica y la tolerancia a la mezcla que necesita. Cada clase cuenta con unas caracter&iacute;sticas &uacute;nicas y unas especificaciones de rendimiento correspondientes. La gama ALPHAGAZTM Mix cuenta con mezclas de gas de instrumentaci&oacute;n y calibraci&oacute;n de alta pureza, lo cual se traduce en unos productos que combinan entre 2 y 12 componentes en concentraciones que van del % al ppm. Cubre una amplia gama de necesidades anal&iacute;ticas, particularmente para los sectores como: prueba de motores, investigaci&oacute;n, medio ambiente, combustion, energia, petr&oacute;leo y el gas.</p>', 'imagenes/producto/17_Alphagaz_Mix.png', NULL, '<p>Modos de Suministro:<br />\r\nLos productos ALPHAGAZTM Mix se suministran en cilindros de varios tama&ntilde;os y materiales.</p>\r\n\r\n<p>Servicios:<br />\r\nAir Liquide ofrece una amplia variedad de mezcla de gases estandar o especificos, con la combinacion de dos o mas componentes con extrema exactitud.</p>\r\n\r\n<p>Industrias:<br />\r\nAutomotriz,&nbsp;Investigaci&oacute;n y an&aacute;lisis,&nbsp;Alimentaci&oacute;n,&nbsp;Petr&oacute;leo y Gas,&nbsp;Medio Ambiente,&nbsp;Qu&iacute;mica.</p>', NULL, NULL, NULL, '2', 'cc', '2019-02-26 22:47:50', '2019-02-26 22:47:50'),
(18, 'ALPHAGAZ™', '<p>ALPHAGAZ&trade; es la marca premium de Air Liquide de gases especiales para aplicaciones anal&iacute;ticas, la cual incluye gases puros y mezclas.</p>\r\n\r\n<p>Se puede escoger entre dos categor&iacute;as de gases puros (ALPHAGAZ&trade; 1 y ALPHAGAZ&trade; 2 ) y para ALPHAGAZ&trade; 1 es sencillo de utilizar gracias a la v&aacute;lvula SMARTOP&trade;.</p>\r\n\r\n<p>En relaci&oacute;n con las mezclas, la gama ALPHAGAZ&trade; Mix cuenta con 2 categor&iacute;as distintas entre las que elegir, dependiendo de los requisitos necesarios de incertidumbre y tolerancia de la mezcla, e incluye las garant&iacute;as y acreditaciones m&aacute;s elevadas del sector.</p>', 'imagenes/producto/18_Alphagaz.png', NULL, '<p>Beneficios:<br />\r\nMayor sencillez en la elecci&oacute;n, servicio fiable y regular, calidad en la que puede confiar.</p>\r\n\r\n<p>&iquest;Qu&eacute; tipo de gases anal&iacute;ticos necesita?<br />\r\nGases puros para vectores, purga y cero : ALPHAGAZ&trade; 1, ALPHAGAZ&trade; 2<br />\r\nMezclas para calibraci&oacute;n y instrumentaci&oacute;n: ALPHAGAZ&trade; Mix</p>\r\n\r\n<p>Equipos:<br />\r\nAlmacenamiento de cilindros y accesorios, manorreductores para gases especiales, ingenieria y desarrollo para instalaciones de gases especiales, evaluacion de riesgo.</p>', NULL, NULL, NULL, '2', 'dd', '2019-02-26 22:49:57', '2019-02-26 22:49:57'),
(19, 'Argón AP', '<p>Air Liquide suministra arg&oacute;n y mezclas de arg&oacute;n en distintos vol&uacute;menes y niveles de pureza. En laboratorios, el arg&oacute;n de alta pureza de la marca ALPHAGAZ&trade; est&aacute; pensado principalmente para aplicaciones de cromatograf&iacute;a, puesta a cero y otras aplicaciones anal&iacute;ticas y de control de procesos. ALPHAGAZ&trade; 1000, que es arg&oacute;n en forma l&iacute;quida criog&eacute;nica con una pureza del 99,999%, resulta &uacute;til cuando se necesitan grandes vol&uacute;menes de gas para su uso con instrumentos ICP y FTIR.</p>', 'imagenes/producto/19_Argón_Alta_Pureza.png', NULL, '<p>Modos de Suministro:<br />\r\nLos cilindros de arg&oacute;n comprimido de la marca ALPHAGAZ&trade; vienen equipadas con un v&aacute;lvula SMARTOP&trade; y un dise&ntilde;o de tulipa abierta. Tambi&eacute;n est&aacute; disponible el suministro a granel (&gt; 15 tn / mes). Como parte de nuestras soluciones de suministro de arg&oacute;n a granel, instalamos recipientes de arg&oacute;n en su planta y tenemos la capacidad de supervisar los niveles de suministro para garantizar que las entregas se planifican con arreglo a sus necesidades.</p>\r\n\r\n<p>Equipos:<br />\r\nAir Liquide fabrica equipos de manipulaci&oacute;n de gases para suministrar arg&oacute;n puro y mezclas de arg&oacute;n de forma segura a su punto de uso, incluyendo reguladores y manifolds de estaci&oacute;n &uacute;nica.</p>\r\n\r\n<p>Industrias relacionadas:<br />\r\nConstrucci&oacute;n, Farmac&eacute;utica y Biotecnol&oacute;gica,&nbsp;Investigaci&oacute;n y an&aacute;lisis,&nbsp;Alimentaci&oacute;n,&nbsp;Petr&oacute;leo y Gas,&nbsp;Medio Ambiente,&nbsp;Pasta y Papel.</p>', NULL, NULL, NULL, '2', 'ee', '2019-02-26 22:52:47', '2019-02-26 22:52:47'),
(20, 'Protóxido de Nitrógeno', '<p>Air Liquide fabrica Prot&oacute;xido de Nitr&oacute;geno como gas puro calidad espectometrica o como parte de una mezcla de gases especiales de la marca AlphagazTM que incluye aire o nitr&oacute;geno. El Prot&oacute;xido de Nitr&oacute;geno se utiliza en un gran n&uacute;mero de aplicaciones, principalmente en el control medioambiental.</p>', 'imagenes/producto/20_Protóxido_de_Nitrógeno.png', NULL, '<p>Equipos:<br />\r\nAir Liquide fabrica equipos de manipulaci&oacute;n de gases dise&ntilde;ados para suministrar mezclas de gases y gas puro de Prot&oacute;xido de Nitr&oacute;geno de forma segura en su punto de uso, incluidos reguladores de presi&oacute;n, manifolds de gas y v&aacute;lvulas.</p>\r\n\r\n<p>Modos de Suministro:<br />\r\nAir Liquide envasa mezclas de gases y gases puros de Prot&oacute;xido de Nitr&oacute;geno en diferentes cilindros de gas comprimidos a alta presi&oacute;n, en funci&oacute;n de la calidad del gas puro o de la composici&oacute;n de la mezcla, y de su aplicaci&oacute;n.</p>\r\n\r\n<p>Industrias:<br />\r\nAutomotriz,&nbsp;Investigaci&oacute;n y an&aacute;lisis,&nbsp;Medio Ambiente</p>', NULL, NULL, NULL, '2', 'ff', '2019-02-26 22:55:26', '2019-02-26 22:55:26'),
(21, 'ALIGAL™', '<p>ALIGAL&trade; es una marca premium de aplicaciones para el procesamiento de alimentos y bebidas.</p>\r\n\r\n<p>ALIGAL&trade; cumple requisitos espec&iacute;ficos como la pureza, la trazabilidad y las normas HACCP, relativas a la atm&oacute;sfera protectora, el procesamiento de bebidas, y la criogenia. Tambi&eacute;n aplicable en el procesamiento de alimentos.</p>\r\n\r\n<p>La marca ALIGAL&trade; DRINK, especializada en la carbonataci&oacute;n de bebidas, cumple de forma &iacute;ntegra todas las normas ISBT (Sociedad Internacional de T&eacute;cnicos en Bebidas). Adem&aacute;s, cumple la norma internacional m&aacute;s exigente en relaci&oacute;n con los sistemas de seguridad alimentaria, que es la FSSC 22000 (Certificaci&oacute;n de Sistemas de Seguridad Alimentaria).</p>\r\n\r\n<p>Asimismo, los gases ALIGAL&trade; se suministran con nuestra oferta completa Nexelia para Refrigeraci&oacute;n y Congelaci&oacute;n. Adem&aacute;s de la gama de equipos vinculados a la misma, incluyendo Cryo Tunnel, Cryo Cabinet y Cryo Immersion Unit.</p>', 'imagenes/producto/21_Aligal.png', NULL, NULL, NULL, NULL, NULL, '5', 'aa', '2019-02-26 22:56:47', '2019-02-26 22:56:47'),
(22, 'FLAMAL™', '<p>FLAMAL&trade; es nuestra gama de gases combustibles estables y de elevada energ&iacute;a para aplicaciones de oxicombusti&oacute;n, incluyendo el corte, el calentamiento, la soldadura fuerte y el enderezado.</p>\r\n\r\n<p>Al utilizar FLAMAL&trade;, lograr&aacute; mayor rapidez en los cortes por llama, el templado por soplete y el metalizado.</p>', 'imagenes/producto/22_flamal.png', NULL, '<p>Beneficios:<br />\r\n&bull;&nbsp;La mayor rapidez de corte mejora la productividad<br />\r\n&bull;&nbsp;La resistencia al retroceso de la llama y la estabilidad mejora la seguridad<br />\r\n&bull;&nbsp;El dise&ntilde;o de los envases y su mayor ligereza mejoran su manipulaci&oacute;n y portabilidad.</p>', NULL, NULL, NULL, '6', 'aa', '2019-02-26 22:59:39', '2019-02-26 22:59:39'),
(23, 'LASAL™', '<p>Los gases de asistencia para l&aacute;ser LASAL&trade;, dise&ntilde;ados espec&iacute;ficamente por Air Liquide para el corte y la soldadura por l&aacute;ser, mejoran la productividad y la calidad, reducen los costos operativos y el mantenimiento, y alargan la vida &uacute;til del l&aacute;ser.</p>\r\n\r\n<p>Nuestros gases puros LASAL&trade;, que a&uacute;nan m&uacute;ltiples componentes, como di&oacute;xido de carbono, nitr&oacute;geno y helio, se han preparado de acuerdo a estrictos procedimientos de control de calidad. Gracias a ellos, se eliminan pr&aacute;cticamente todas las impurezas, tales como la humedad, los hidrocarburos y las part&iacute;culas.</p>\r\n\r\n<p>Cada cilindro LASAL&trade; est&aacute; equipado con una v&aacute;lvula de presi&oacute;n residual para preservar la pureza del gas y protegerlo de la contaminaci&oacute;n impidiendo el reflujo a el cilindro.</p>', 'imagenes/producto/23_lasal.png', NULL, '<p>&bull;&nbsp;El dise&ntilde;o de la tulipa mejora la seguridad y facilita el manejo del cilindro<br />\r\n&bull;&nbsp;La v&aacute;lvula de presi&oacute;n residual protege la pureza y evita el reflujo<br />\r\n&bull;&nbsp;Un flujo constante garantiza un corte limpio y sin rebabas a m&aacute;xima velocidad</p>', NULL, NULL, NULL, '6', 'bb', '2019-02-26 23:00:50', '2019-02-26 23:00:50'),
(24, 'Mag-Mig Aceros Inoxidables', '<p>Alambres macizos<br />\r\nMAG-MIG Aceros Inoxidables</p>', 'imagenes/producto/24_Mag-Mig_Aceros_Inoxidables.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 307 DE 0,9 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 307 DE 1,2 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 308L Si DE 0,8 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 308L Si DE 0,9 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 308L Si DE 1,0 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 308L Si DE 1,2 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 309L Si DE 0,9 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 309L Si DE 1,2 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 316L Si DE 0,8 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 316L Si DE 0,9 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 316L Si DE 1,2 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 310L Si DE 0,9 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 310L Si DE 1,2 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 347L Si DE 0,9 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE INOXIDABLE MIG ER 347L Si DE 1,2 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '24', '25', '26', '7', 'aa', '2019-02-27 15:28:52', '2019-02-27 15:49:04'),
(25, 'Mag-Mig Aleaciones de Acero de Carbono', NULL, 'imagenes/producto/25_Mag-Mig_Aleaciones_de_Acero_de_Carbono.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE ARISTOROD D. 0,9 MM 18,00 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A. ARISTOROD MARATHON PACK D. 0,9 MM 120,00 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A. ARISTOROD MARATHON PACK D. 0,9 MM 250,00 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE ARISTOROD D. 1,2 MM 18,00 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A. ARISTOROD MARATHON PACK D. 1,2 MM 120,00 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>A. ARISTOROD MARATHON PACK D. 1,2 MM 250,00 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: center;\">Aleaciones de Acero al Carbono</td>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE 70S6 D. 0,6 MM 5,00 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE 70S6 D. 0,8 MM 5,00 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE 70S6 D. 0,8 MM 15,00 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE 70S6 D. 0,9 MM 18,00 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE 70S6 D. 0,10 MM 18,00 KG&nbsp;&nbsp; &nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE 70S6 D. 1,20 MM 18,00 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE 70S6 D. 1,60 MM 18,00 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE MARATHON PAC 120 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE MARATHON PAC 250 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE MARATHON PAC 120 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE MARATHON PAC 250 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE MARATHON PAC 120 KG</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align: center;\">&nbsp;</td>\r\n			<td style=\"text-align: center;\">ALAMBRE MARATHON PAC 250 KG</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '7', 'bb', '2019-02-27 15:29:48', '2019-02-27 15:55:15'),
(26, 'Mag-Mig Aleaciones de Aluminio', NULL, 'imagenes/producto/26_Mag-Mig_Aleaciones_de_Aluminio.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE ALUMINIO MIG ER 4043 DE 0,9 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE ALUMINIO MIG ER 4043 DE 1,2 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE ALUMINIO MIG ER 4043 DE 1,6 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE ALUMINIO MIG ER 5356 DE 0,9 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE ALUMINIO MIG ER 5356 DE 1,2 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE ALUMINIO MIG ER 5356 DE 1,6 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '24', '25', '26', '7', 'cc', '2019-02-27 15:30:29', '2019-02-27 16:00:53'),
(27, 'Aleación de Cobre', NULL, 'imagenes/producto/27_Mag-Mig_Aleaciones_de_Cobre.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE MIG ER CUAL A1 DE 0,9 MM x 15 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE MIG ER CUAL A1 DE 1,2 MM x 15 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE MIG ER CUAL A1 DE 1,6 MM x 15 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE MIG ER CUAL A2 DE 1,2 MM x 15 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE MIG ER CUAL A2 DE 0,9 MM x 15 KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '24', '25', '26', '7', 'dd', '2019-02-27 15:30:57', '2019-02-27 15:58:32'),
(28, 'Para Arco Sumergido', NULL, 'imagenes/producto/28_Para_arco_sumergido.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE OK 12,10 AWSEL12 30 KG D. 2,40 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE OK 12,10 AWSEL12 30 KG D. 3,18 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE OK 12,10 AWSEL12 30 KG D. 4,00 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE OK 12,22 AWSEL12K 30 KG D. 2,50 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE OK 12,22 AWSEL12K 30 KG D. 3,20 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ALAMBRE OK 12,22 AWSEL12K 30 KG D. 4,00 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '24', '25', '26', '7', 'ee', '2019-02-27 15:31:37', '2019-02-27 16:00:23'),
(29, 'Soldadura para Aceros al carbono y baja aleación', NULL, 'imagenes/producto/29_Soldadura_para_Aceros_al_Carbon_y_baja_aleación.jpg', NULL, '<p><strong>Para alta temperatura</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Celul&oacute;sico - PIPEWELD 9010</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - Bajo hidr&oacute;geno CONARCO 18A1</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - CONARCO 18B2</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - CONARCO 18B3</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Para baja temperatura</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - CONARCO 18C1 2,5MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - CONARCO 18C1 4MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - CONARCO 18C2</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Extra bajo hidr&oacute;geno para alta resistencia</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CONARTEN 60</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CONARTEN 65</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CONARTEN 80</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Para aceros al carbono</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Celul&oacute;sico - CONARCO 10</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico - CONARCO 12D</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico - CONARCO 24</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico - CONARCO 13A</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - Bajo hidr&oacute;geno - CONARCO 15</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - Bajo hidr&oacute;geno - CONARCO 16</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - Bajo hidr&oacute;geno - CONARCO 18</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Para ca&ntilde;er&iacute;as de acero y gasoductos</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Celul&oacute;sico - PIPEWELD 8010</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '8', 'aa', '2019-02-27 15:35:07', '2019-02-27 16:14:43'),
(30, 'Soldadura para aceros disimiles y de baja soldabilidad', NULL, 'imagenes/producto/30_Soldadura_para_aceros_disimiles_y_de_baja_soldabilidad.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Productos</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - OK 67.45 AWSE307-15</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico - OK 67.61 AWSE309L-17</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico-B&aacute;sico OK 67.61 AWSE309</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico-B&aacute;sico OK 68.84 AWSE312</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '8', 'bb', '2019-02-27 15:37:29', '2019-02-27 16:16:03'),
(31, 'Soldaduras de aceros inoxidables y refractarios', NULL, 'imagenes/producto/31_Soldaduras_de_aceros_inoxidables_y_refractarios.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - CONARCROM 450 DIN8555E1-4</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico - CONARCROM 350 DIN8555E1-350</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico - OK 61.30 308L17 AWSE308L-17</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico - OK 63.30 316L17 AWSE316L-17</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico-B&aacute;sico OK 61.30 AWSE308</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico-B&aacute;sico OK 67.16 AWSE310</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico-B&aacute;sico OK 63.30 AWSE316</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '30', '34', '33', '8', 'cc', '2019-02-27 15:38:18', '2019-02-27 16:18:53'),
(32, 'Proteccion contra el desgaste', NULL, 'imagenes/producto/32_Proteccion_contra_el_desgaste.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelos</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - CONARCROM 1600 DIN8555E10 60-RZ</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - CONARCROM 1900 DIN855E10-65RZ</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico - CONARCROM 600 DIN8555E6-55R</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico - CONARCROM 600 DIN8555E6-55R</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico - CONARCROM 1400 DIN8555E10-60RZ</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Rut&iacute;lico-B&aacute;sico CONARCO NIMANG</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '8', 'dd', '2019-02-27 15:38:54', '2019-02-27 16:21:16');
INSERT INTO `productos` (`id`, `nombre`, `texto`, `imagen`, `pdf`, `texto2`, `relacionado1`, `relacionado2`, `relacionado3`, `subfamilia`, `orden`, `created_at`, `updated_at`) VALUES
(33, 'Soldadura de Hierro fundido', NULL, 'imagenes/producto/33_Soldadura_de_hierro_fundido.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelos</td>\r\n			<td>C&oacute;digos</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - OK 92.58 (Ni-55)</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>B&aacute;sico - OK 92.18 (Ni-100)</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '30', '31', '33', '8', 'ee', '2019-02-27 15:40:25', '2019-02-27 16:22:23'),
(34, 'Soldadura de Materiales no Ferrosos', NULL, 'imagenes/producto/34_Soldadura_de_materiales_no_ferrosos.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelos</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CONARBRONCE AWSECuSn-C</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CONARCO CONAL AWSE4043</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '32', '33', '29', '8', 'ff', '2019-02-27 15:41:17', '2019-02-27 16:27:59'),
(35, 'Electrodos para Corte', NULL, 'imagenes/producto/35_Electrodos_para_corte.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CONARCO C PUNTA MARR&Oacute;N</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ELECTRODOS CARBON COBREADO ARCAIR</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '32', '20', '33', '8', 'gg', '2019-02-27 15:41:47', '2019-02-27 16:29:48'),
(36, 'Aceros Aleados', NULL, 'imagenes/producto/36_Aceros_Aleados.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelos</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 70-S2 DE 1,6 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 70-S2 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 70-S3 DE 1,6 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 70-S3 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 80-S B2 DE 1,6 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 80-S B2 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 90-S B3 DE 1,6 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 90-S B3 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 80-S D2 DE 1,6 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 80-S D2 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 80-S Ni2 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 80-S Ni1 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 80-S B8 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 80-S B6 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA TIG ER 80-S B9 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '9', 'aa', '2019-02-27 15:45:03', '2019-02-27 16:33:01'),
(37, 'Aceros Inoxidables', NULL, 'imagenes/producto/37_Aceros_Inoxidables.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelos</td>\r\n			<td>C&oacute;digos</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA INOXIDABLE ER 308L Si DE 1,6 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA INOXIDABLE ER 308L Si DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA INOXIDABLE ER 309L Si DE 1,6 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA INOXIDABLE ER 310 DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA INOXIDABLE ER 316L Si DE 1,6 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA INOXIDABLE ER 316L Si DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA INOXIDABLE ER 347 Si DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA INOXIDABLE ER 312 Si DE 2,4 MM 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '9', 'bb', '2019-02-27 15:45:28', '2019-02-27 16:34:50'),
(38, 'Aleaciones de Aluminio', NULL, 'imagenes/producto/38_Aleaciones_de_Aluminio.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelos</td>\r\n			<td>C&oacute;digos</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 4043 DE 1,6 MM (ALSi) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 4043 DE 2,4 MM (ALSi) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 4043 DE 3,2 MM (ALSi) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 4043 DE 4,0 MM (ALSi) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 4047 DE 2,4 MM (ALSi 12) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 4047 DE 3,2 MM (ALSi 12) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 4047 DE 4,0 MM (ALSi 12) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 5356 DE 1,6 MM (ALMg 5) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 5356 DE 2,4 MM (ALMg 5) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 5356 DE 3,2 MM (ALMg 5) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ALUMINIO ER 5356 DE 4,0 MM (ALMg 5) 5,00KG</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '9', 'cc', '2019-02-27 15:46:00', '2019-02-27 16:36:20'),
(39, 'Aleaciones de Cobre', NULL, 'imagenes/producto/39_Aleaciones_de_cobre.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelos</td>\r\n			<td>C&oacute;digos</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA DE BRONCE DE 2,0 MM Aprox, 39v. 5 x kg</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA DE BRONCE DE 2,5 MM 25v. 5 x kg</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA DE BRONCE DE 3,2 MM 15v. 5 x kg</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA DE BRONCE DE 4,0 MM 10v. 5 x kg</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA DE BRONCE DE 5,0 MM 7v. 5 x kg</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ER Cu DE 2,4 MM 5 x kg</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ER CuSn DE 2,4 MM 5 x kg</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ER CuAl 1 DE 2,4 MM 5 x kg</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA ER CuAl 1 DE 4,0 MM 5 x kg</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '9', 'dd', '2019-02-27 15:46:37', '2019-02-27 16:38:04'),
(40, 'Estaño en Barra', NULL, 'imagenes/producto/40_estaño_en_barra.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ESTA&Ntilde;O 33%</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ESTA&Ntilde;O 50%</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', NULL, NULL, NULL, '9', 'ee', '2019-02-27 15:47:05', '2019-02-27 16:39:16'),
(41, 'Base Níquel', NULL, 'imagenes/producto/41_base_niquel.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelos</td>\r\n			<td>C&oacute;digos</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA 418 (ER NiCu 7) D. 2,4 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA 606 (ER NiCr - 3) D. 2,4 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA 625 (ER NiCrMo - 3) D. 2,4 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA STOODYTE 50 DE 4,0 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>VARILLA STOODYTE 60 DE 4,0 MM</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '9', 'ff', '2019-02-27 15:47:44', '2019-02-27 16:40:43'),
(42, 'Camperas', '<p>&nbsp;&nbsp;&nbsp; &nbsp;CAMPERA DESC. CON BROCHE Y CIERRE TALLE L&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;CAMPERA DESC. CON BROCHE Y CIERRE TALLE XL&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;CAMPERA DESC. CON BROCHE Y CIERRE TALLE XXL&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;CAMPERA DESC. CON BROCHE Y CIERRE TALLE XXXL</p>', 'imagenes/producto/42_camperas.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CAMPERA DESC. CON BROCHE Y CIERRE TALLE L&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CAMPERA DESC. CON BROCHE Y CIERRE TALLE XL&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CAMPERA DESC. CON BROCHE Y CIERRE TALLE XXL&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CAMPERA DESC. CON BROCHE Y CIERRE TALLE XXXL&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '10', 'aa', '2019-02-27 16:39:21', '2019-02-27 16:39:21'),
(43, 'Delantales de Descarne con/sin refuerzo', NULL, 'imagenes/producto/43_delantales.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>DELANTAL DESCARNE ENTERO SIMPLE 60x90</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>DELANTAL DESCARNE CON REFUERZO DE GOMAPLOM</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '10', 'bb', '2019-02-27 16:43:35', '2019-02-27 16:43:35'),
(44, 'Polaina Descarne con Velcro Larga', NULL, 'imagenes/producto/44_polainas.jpg', NULL, NULL, NULL, NULL, NULL, '10', 'cc', '2019-02-27 16:45:31', '2019-02-27 16:45:31'),
(45, 'Manga Larga Descarne', NULL, 'imagenes/producto/45_mangas.jpg', NULL, NULL, '43', '44', NULL, '10', 'dd', '2019-02-27 16:47:14', '2019-02-27 16:47:14'),
(46, 'Gorro para Soldador Dercarne', '<p>Modelo: Legionario</p>', 'imagenes/producto/46_gorros.jpg', NULL, NULL, '42', '44', '45', '10', 'ee', '2019-02-27 16:49:16', '2019-02-27 16:49:16'),
(47, 'Llama', NULL, 'imagenes/producto/47_categoria_productos__LOSARC.png', NULL, NULL, NULL, NULL, NULL, '18', 'aa', '2019-02-27 16:57:53', '2019-02-27 16:58:10'),
(48, 'Plasma Trafimet', NULL, 'imagenes/producto/48_categoria_productos__SAF-FRO.png', NULL, NULL, NULL, NULL, NULL, '18', 'ab', '2019-02-27 16:59:00', '2019-02-27 16:59:00'),
(49, 'Guante Descarne Americano Puño Corto', NULL, 'imagenes/producto/49_guante_descarne_americano_puño_corto.jpg', NULL, NULL, NULL, NULL, NULL, '10', 'ff', '2019-02-27 16:59:28', '2019-02-27 16:59:28'),
(50, 'Cebora', NULL, 'imagenes/producto/50_categoria_productos__marchio_saldatura.jpg', NULL, NULL, NULL, NULL, NULL, '18', 'ac', '2019-02-27 16:59:39', '2019-02-27 16:59:39'),
(51, 'Guante Descarne Americano Puño Largo', NULL, 'imagenes/producto/51_guante_descarne_americano_puño_largo.jpg', NULL, NULL, '49', NULL, NULL, '10', 'gg', '2019-02-27 17:00:04', '2019-02-27 17:00:20'),
(52, 'Discos Abrasivos', NULL, 'imagenes/producto/52_categoria_productos__Tyrolit-Logo.png', NULL, NULL, NULL, NULL, NULL, '18', 'ad', '2019-02-27 17:00:39', '2019-02-27 17:00:39'),
(53, 'Guante Forrado para Soldador Naranja Reforzado', NULL, 'imagenes/producto/53_guante_forrado_para_soldador_naranja_reforzado.jpg', NULL, NULL, '49', '51', NULL, '10', 'hh', '2019-02-27 17:01:40', '2019-02-27 17:01:40'),
(54, 'Guante Tejido con Palma de Goma', NULL, 'imagenes/producto/54_guante_tejido_con_palma_de_goma.jpg', NULL, NULL, NULL, NULL, NULL, '10', 'ii', '2019-02-27 17:03:17', '2019-02-27 17:03:17'),
(55, 'Trochas y repuestos Línea Kromo', NULL, 'imagenes/producto/55_kromo.jpg', NULL, NULL, NULL, NULL, NULL, '19', 'aa', '2019-02-27 17:04:35', '2019-02-27 17:04:35'),
(56, 'Torchas Línea Binzel', NULL, 'imagenes/producto/56_abircor binzel trochas.jpg', NULL, NULL, NULL, NULL, NULL, '19', 'ab', '2019-02-27 17:04:52', '2019-02-27 17:15:10'),
(57, 'Electrodos Tungsteno', NULL, 'imagenes/producto/57_electrodos tugsteno.png', NULL, NULL, NULL, NULL, NULL, '19', 'ac', '2019-02-27 17:05:16', '2019-02-27 17:05:16'),
(58, 'Guante Vaqueta Medio Paseo Puño Corto', NULL, 'imagenes/producto/58_guante_vaqueta_medio_paseo_puño_corto.jpg', NULL, NULL, '54', '43', '53', '10', 'jj', '2019-02-27 17:05:22', '2019-02-27 17:05:22'),
(59, 'Torchas Tig Kromo', NULL, 'imagenes/producto/59_torchas tig kromo.jpg', NULL, NULL, NULL, NULL, NULL, '19', 'ac', '2019-02-27 17:05:38', '2019-02-27 17:05:38'),
(60, 'Pinzas Kromo', NULL, 'imagenes/producto/60_pinzas kromos.jpg', NULL, NULL, NULL, NULL, NULL, '19', 'ae', '2019-02-27 17:05:52', '2019-02-27 17:05:52'),
(61, 'Accesorios Arcair', NULL, 'imagenes/producto/61_arcair.png', NULL, NULL, NULL, NULL, NULL, '19', 'af', '2019-02-27 17:06:14', '2019-02-27 17:06:14'),
(62, 'Guante Forrado para Soldador Rojo', NULL, 'imagenes/producto/62_guantes_forrado_para_soldador_rojo.jpg', NULL, NULL, '49', '58', '51', '10', 'kk', '2019-02-27 17:06:40', '2019-02-27 17:06:40'),
(63, 'Tubos de contacto Mig-Mag', NULL, 'imagenes/producto/63_categoria_productos__mig5.JPG', NULL, NULL, NULL, NULL, NULL, '19', 'aab', '2019-02-27 17:07:58', '2019-02-27 17:07:58'),
(64, 'Busas Cerámicas', NULL, 'imagenes/producto/64_busas ceramicas.jpg', NULL, NULL, NULL, NULL, NULL, '19', 'ag', '2019-02-27 17:08:25', '2019-02-27 17:08:25'),
(65, 'Pinzas Helictor', NULL, 'imagenes/producto/65_categoria_productos__HELICTOR.jpg', NULL, NULL, '63', '59', '56', '19', 'ah', '2019-02-27 17:08:59', '2019-02-27 17:10:22'),
(66, 'Protector Endoaural con cordel', '<p>El Pack incluye 1 unidad del producto descripto a continuaci&oacute;n :<br />\r\nProtecci&oacute;n Auditiva QUANTUM<br />\r\nNRR 26 dB- SNR 28 dB- Endoaural</p>', 'imagenes/producto/66_protector_endoaural.jpg', NULL, '<p>&nbsp;&bull;&nbsp;Tap&oacute;n que suministra protecci&oacute;n contra ruido por inserci&oacute;n en el canal auditivo.<br />\r\n&nbsp;&bull;&nbsp;Fabricado en pol&iacute;mero ultra-soft hipo-alerg&eacute;nico, brinda un confortable y efectivo sello. Reutilizable.<br />\r\n&nbsp;&bull;&nbsp;Resistente a la cera del o&iacute;do y lavable.<br />\r\n&nbsp;&bull;&nbsp;Dise&ntilde;o de tres aletas que permite su ajuste a todos los canales auditivos.<br />\r\n&nbsp;&bull;&nbsp;Grip resistente para facilitar el posicionamiento y la correcta inserci&oacute;n / remoci&oacute;n.<br />\r\n&nbsp;&bull;&nbsp;Color verde fluo. F&aacute;cil identificaci&oacute;n del personal que lo est&aacute; usando.<br />\r\n&nbsp;&bull;&nbsp;Provistos con cord&oacute;n textil de poli&eacute;ster.<br />\r\n&nbsp;&bull;&nbsp;Modelo detectable: incluyen un inserto met&aacute;lico que permite la detecci&oacute;n de presencia ante p&eacute;rdida&nbsp;(por ej.: industria alimenticia).<br />\r\n&nbsp;&bull;&nbsp;Recomendado para niveles moderados de ruido.</p>', NULL, NULL, NULL, '11', 'aa', '2019-02-27 17:11:05', '2019-02-27 17:15:52'),
(67, 'Protector Auditivo Tipo Copa', '<p>Protector auditivo de copa Fravida 4006</p>\r\n\r\n<p>El 4006 alta atenuaci&oacute;n, ofrece una centrada relaci&oacute;n costo/beneficio y un dise&ntilde;o confortable, permitiendo el correcto ajuste adapt&aacute;ndose a cada necesidad.<br />\r\nDise&ntilde;ado para ambientes donde el ruido sobrepase los 85 dB, este miembro de la familia tambi&eacute;n sigue pisando fuerte hace ya m&aacute;s de 20 a&ntilde;os.</p>', 'imagenes/producto/67_protector_auditivo_tipo_copa.jpg', NULL, NULL, '66', NULL, NULL, '11', 'bb', '2019-02-27 17:14:21', '2019-02-27 17:14:21'),
(68, 'Protector Facial Cristal con protección superior', '<p>Protector facial plano</p>\r\n\r\n<p>Pantalla fabricada en policarbonato para proteger la cara de golpes, impacto de part&iacute;culas, polvo, chispas y salpicadura qu&iacute;mica.</p>', 'imagenes/producto/68_facial_cristal.jpg', NULL, '<p>&nbsp;&bull;&nbsp;Dise&ntilde;o envolvente, suministra protecci&oacute;n frontal y lateral desde la frente al ment&oacute;n. Modelo Plano<br />\r\n&nbsp;&bull;&nbsp;Dise&ntilde;o econ&oacute;mico.<br />\r\n&nbsp;&bull;&nbsp;Plano y flexible, se adapta perfectamente a los accesorios de sujeci&oacute;n.<br />\r\n&nbsp;&bull;&nbsp;Fabricado en policarbonato.</p>', '66', '53', '42', '12', 'aa', '2019-02-27 17:18:38', '2019-02-27 17:18:38'),
(69, 'Thermal Dynamics', NULL, 'imagenes/producto/69_galeria__CUT MASTER 42.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelos</td>\r\n			<td>C&oacute;digos</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUT MASTER 42</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUT MASTER 52</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUT MASTER 60i</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUT MASTER 82</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUT MASTER 102</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUT MASTER 152</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUT MASTER A60 (para automaci&oacute;n)</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUT MASTER A80 (para automaci&oacute;n)</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CUT MASTER A120 (para automaci&oacute;n)</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '20', 'aa', '2019-02-27 17:20:45', '2019-02-27 17:20:45'),
(70, 'Soldadura y Corte Tauro', '<p>PAC 50 / Corte plasma (10mm)<br />\r\n​PAC 70 / Corte plasma (19mm)<br />\r\n​</p>', 'imagenes/producto/70_galeria__pac70.jpg', NULL, NULL, NULL, NULL, NULL, '20', 'ab', '2019-02-27 17:22:32', '2019-02-27 17:32:30'),
(71, 'Master pantógrafos', '<p>Start I<br />\r\nStart II</p>', 'imagenes/producto/71_categoria_productos__PANTOGRAFOS LOGO.jpg', NULL, NULL, NULL, NULL, NULL, '22', 'aa', '2019-02-27 17:24:22', '2019-02-27 17:24:22'),
(72, 'Proceso SMAW Electrodo Revestido', NULL, 'imagenes/producto/72_categoria_productos__Proceso-SMAW--Electrodo-Revestido.jpg', NULL, NULL, NULL, NULL, NULL, '21', 'aa', '2019-02-27 17:26:29', '2019-02-27 17:30:25'),
(73, 'Proceso MIG-MAG', NULL, 'imagenes/producto/73_categoria_productos__smashweld 450.jpg', NULL, NULL, NULL, NULL, NULL, '21', 'ab', '2019-02-27 17:26:49', '2019-02-27 17:30:21'),
(74, 'Proceso TIG', NULL, 'imagenes/producto/74_categoria_productos__ORIGO TIG 4300.jpg', NULL, NULL, NULL, NULL, NULL, '21', 'ac', '2019-02-27 17:27:30', '2019-02-27 17:30:18'),
(75, 'Equipos Inverter ESAB Soldadura', NULL, 'imagenes/producto/75_categoria_productos__buddy arc 400 xc.jpg', NULL, NULL, NULL, NULL, NULL, '21', 'ad', '2019-02-27 17:28:50', '2019-02-27 17:30:15'),
(76, 'Careta New Tech Tono', '<p>9-13 p/unidad de aire</p>', 'imagenes/producto/76_new_tech_tono.jpg', NULL, NULL, NULL, NULL, NULL, '13', 'aa', '2019-02-27 17:29:05', '2019-02-27 17:29:05'),
(77, 'Air Unit 160 Completo', NULL, 'imagenes/producto/77_s02.jpg', NULL, NULL, '76', NULL, NULL, '13', 'bb', '2019-02-27 17:30:58', '2019-02-27 17:30:58'),
(78, 'Equipos Multiproceso', NULL, 'imagenes/producto/78_categoria_productos__Equipos-multipcroceso.jpg', NULL, NULL, NULL, NULL, NULL, '21', 'af', '2019-02-27 17:31:12', '2019-02-27 17:31:12'),
(79, 'Alimentadores Universales', NULL, 'imagenes/producto/79_categoria_productos__Alimentadores-universales.jpg', NULL, NULL, NULL, NULL, NULL, '21', 'ag', '2019-02-27 17:31:33', '2019-02-27 17:31:33'),
(80, 'Línea Hobby y Hobby Premium', NULL, 'imagenes/producto/80_categoria_productos__Linea-Hobby-y-Hobby-Premium.jpg', NULL, NULL, NULL, NULL, NULL, '21', 'ag', '2019-02-27 17:31:51', '2019-02-27 17:31:51'),
(81, 'Equipo Aspiración de Humo IFESA HT1 / HT2 AHT1', '<p>Aspirador Humos de soldadura para torcha con conexi&oacute;n de aspiraci&oacute;n.</p>\r\n\r\n<p>El &eacute;xito de aplicar estos equipos se obtuvo a partir de la reciente evoluci&oacute;n tecnol&oacute;gica de las torchas de soldadura con conexi&oacute;n de aspiraci&oacute;n, que ha logrado que sean m&aacute;s livianas y ergon&oacute;micas.</p>\r\n\r\n<p>&nbsp;La aplicaci&oacute;n de estos equipos permite la efectiva captaci&oacute;n de los humos, sin necesidad de que el soldador deba manipular brazos o tomas de aspiraci&oacute;n.</p>\r\n\r\n<p>&nbsp;Los equipos INFESA &nbsp;AHT-1 son unidades de extracci&oacute;n de humos de soldadura aut&oacute;nomos que est&aacute;n dise&ntilde;ados espec&iacute;ficamente para conectarse a torchas MIG MAG con conexi&oacute;n de aspiraci&oacute;n prevista.</p>\r\n\r\n<p>Cuentan con un sistema de aspiraci&oacute;n de alta presi&oacute;n por medio de turbina de vac&iacute;o y un sistema de filtraci&oacute;n a cartucho de alta eficiencia que permite la recirculaci&oacute;n del aire filtrado al ambiente laboral de planta.</p>\r\n\r\n<p>&nbsp;Tambien dispone de un dispositivo que permite el sopleteo del cartucho filtrante para prolongar su vida &uacute;til sin necesidad de extraer el cartucho del equipo.</p>', 'imagenes/producto/81_aspiracion_de_humo.jpg', NULL, NULL, NULL, NULL, NULL, '14', 'aa', '2019-02-27 17:33:56', '2019-02-27 17:33:56'),
(82, 'Placas', NULL, 'imagenes/producto/82_Placas.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA RECTANGULAR NATURAL 105x50</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA REDONDA NATURAL D.50&nbsp;&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA PARA SOLDADURA HQ 105x50 mm TONO 6&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA PARA SOLDADURA HQ 105x50 mm TONO 9&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA PARA SOLDADURA HQ 105x50 mm TONO 10&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA PARA SOLDADURA HQ 105x50 mm TONO 11&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA PARA SOLDADURA HQ 105x50 mm TONO 12&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA PARA SOLDADURA HQ 105x50 mm TONO 13</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA PARA SOLDADURA HQ 105x50 mm TONO 14</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA REDONDA TONO 5</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA REDONDA TONO 6&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA POLICARBONATO INTERIOR 105x50 mm 10 UN.</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA POLICARBONATO EXTERIOR 114x75 mm (WGIII)</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>PLACA POLICARBONATO EXTERIOR 110x90 mm (AS1) 10 UN.</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '16', 'aa', '2019-02-27 17:39:43', '2019-02-27 17:39:43'),
(83, 'Anteojos', NULL, 'imagenes/producto/83_Anteojos.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ANTEOJOS PANORAMICO FUME ANTIRRAYA&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ANTEOJOS PANORAMICO CRISTAL ANTIRRAYA/ANTIEMPA&Ntilde;ANTE&nbsp;&nbsp; &nbsp;&nbsp;</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ANTEOJOS PANORAMICO CRISTAL ANTIRRAYA</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '82', NULL, NULL, '16', 'bb', '2019-02-27 17:45:47', '2019-02-27 17:45:47'),
(84, 'Antiparras', '<p><br />\r\n16-002-001270&nbsp;&nbsp; &nbsp;ANTIPARRA PLASTICA ART N&deg; 1270 C/VIDRIO NATURAL&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\n16-002-001702&nbsp;&nbsp; &nbsp;ANTIPARRA PVC MONOVISION&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\n16-002-001720&nbsp;&nbsp; &nbsp;ANTIPARRA RECTANGULAR VISOR MOVIL ART. 1720&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\n16-002-001745&nbsp;&nbsp; &nbsp;ANTIPARRA DOS OCULOS REBATIBLE&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\n16-003-000994&nbsp;&nbsp; &nbsp;ANTIPARRA AUTOGENA VISOR REBATIBLE REDONDA</p>', 'imagenes/producto/84_Antiparras.jpg', NULL, '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Modelo</td>\r\n			<td>C&oacute;digo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ANTIPARRA PLASTICA ART N&deg; 1270 C/VIDRIO NATURAL</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ANTIPARRA PVC MONOVISION</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ANTIPARRA RECTANGULAR VISOR MOVIL ART. 1720</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ANTIPARRA DOS OCULOS REBATIBLE</td>\r\n			<td>-</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ANTIPARRA AUTOGENA VISOR REBATIBLE REDONDA</td>\r\n			<td>-</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '82', '83', NULL, '16', 'cc', '2019-02-27 17:51:04', '2019-02-27 17:51:04'),
(85, 'Careta ESAB A-20', '<p>Extremadamente liviana en peso, pero fuerte en rendimiento. La careta A20 ofrece fiabilidad premiuma un precio razonable. La A20 utiliza un casettede oscurecimiento autom&aacute;tico de alto rendimiento con clase &oacute;ptica excepcional.<br />\r\nPuede utilizarse para la mayor&iacute;a de los procesos de soldadura por arco, tales como electrodo revestido (SMAW/MMA), MIG/ MAGy muchas aplicaciones TIG. La facilidad en el uso de la careta A20 es ideal como primer careta fotosensible para los soldadores aficionados, los granjeros, los entusiastas de &ldquo;h&aacute;galo Ud. mismo&rdquo;, y trabajadores del mantenimiento o construcci&oacute;n.</p>', 'imagenes/producto/85_ESAB_a-20.jpg', NULL, NULL, NULL, NULL, NULL, '17', 'aa', '2019-02-27 17:56:14', '2019-02-27 17:56:14'),
(86, 'Careta ESAB Warrior-Tech', '<p>La careta WARRIOR&trade; Tech ha sido dise&ntilde;ada para satisfacer las necesidades de los soldadores,<br />\r\nproporciona una cobertura de peso liviano de alta tecnolog&iacute;a para proteger del calor, las chispas y<br />\r\nlas salpicaduras. El protector externo brinda una alta claridad de visi&oacute;n, dando como resultado una<br />\r\ncalidad &oacute;ptica excelente con la utilizaci&oacute;n de la &uacute;ltima tecnolog&iacute;a.</p>', 'imagenes/producto/86_Esab_Warrior-Tec.jpg', NULL, NULL, '85', '76', NULL, '17', 'bb', '2019-02-27 17:58:38', '2019-02-27 17:58:38'),
(87, 'Careta ESAB SENTINEL A-50', '<p>Despu&eacute;s de a&ntilde;os de experiencia en soldadura,&nbsp;usted sabe exactamente lo que necesita de una&nbsp;careta: m&aacute;ximo confort, lente de gran tama&ntilde;o y&nbsp;tecnolog&iacute;a de &uacute;ltima generaci&oacute;n. Cada operaci&oacute;n&nbsp;especial necesita de equipos especiales para hacer&nbsp;el trabajo, y cuando se trata de su careta, los&nbsp;mejores usan SENTINEL&trade;.</p>', 'imagenes/producto/87_ESAB_SENTINEL_A-50.jpg', NULL, NULL, '85', '86', '76', '17', 'cc', '2019-02-27 18:00:08', '2019-02-27 18:00:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_destacados`
--

CREATE TABLE `producto_destacados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto_destacados`
--

INSERT INTO `producto_destacados` (`id`, `nombre`, `imagen`, `link`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'SMARTOP™', 'imagenes/destacados/5_dest1.jpg', '#', 'aa', NULL, '2019-02-24 00:54:14'),
(2, 'ALbee™ Weld', 'imagenes/destacados/5_ALbee™_Weld.png', '11/productoind', 'bb', NULL, '2019-02-27 18:14:41'),
(3, 'ALbee™ Flame', 'imagenes/destacados/5_ALbee™_Flame.png', '12/productoind', 'cc', NULL, '2019-02-27 14:33:00'),
(4, 'ALbee™ Cool', 'imagenes/destacados/5_ALbee™_Cool.png', '13/productoind', 'dd', NULL, '2019-02-27 14:34:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redes_socials`
--

CREATE TABLE `redes_socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubicacion` enum('header','footer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(10) UNSIGNED NOT NULL,
  `texto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `texto`, `imagen`, `orden`, `created_at`, `updated_at`) VALUES
(1, '<h1>Asesoramiento Integral a empresas</h1>\r\n\r\n<p><span style=\"font-size:18px; font-weight:300\">En Gases Mataderos contamos con un equipo de trabajo con profesionales capacitados, y especializados en brindar un servicio completo. Nos distingue un compromiso de excelencia en la calidad de nuestros productos y servicios. Encaramos los proyectos desarrollados teniendo en cuenta las necesidades y los requerimientos espec&iacute;ficos de nuestros clientes.</span></p>', 'imagenes/servicio/1_servi1.jpg', 'aa', '2019-02-24 23:26:39', '2019-02-26 21:50:20'),
(2, '<h1>Capacitaci&oacute;n de Seguridad</h1>\r\n\r\n<p style=\"font-size:18px; font-weight:300\">Nuestra compa&ntilde;&iacute;a brinda formaci&oacute;n en gases medicinales, servicios asociados y en equipamiento m&eacute;dico a los usuarios, clientes y pacientes. En las capacitaciones se desarrollan distintas metodolog&iacute;as de aprendizaje dependiendo de las necesidades y objetivos propuestos.</p>', 'imagenes/servicio/2_servi2.jpg', 'ab', '2019-02-24 23:28:41', '2019-02-26 21:50:24'),
(3, '<h1>Instalaciones para producci&oacute;n Indutrial, Alimentaci&oacute;n y Laboratorio</h1>\r\n\r\n<p><span style=\"font-size:18px; font-weight:300\">Trabajamos en la instalaci&oacute;n de poliductos para cl&iacute;nicas, hospitales o industrias. Ofrecemos tambi&eacute;n un servicio de reparaci&oacute;n de tableros de suministro y todo lo referente a la dosificaci&oacute;n de oxigeno, aire o aspiraci&oacute;n.</span></p>', 'imagenes/servicio/3_serv-03.jpg', 'cc', '2019-02-26 21:56:40', '2019-02-26 21:57:07'),
(4, '<h1>Reparaciones</h1>\r\n\r\n<p><span style=\"font-size:18px; font-weight:300\">Se reacondicionan a nuevo un sin n&uacute;mero de art&iacute;culos como reguladores de presi&oacute;n, sopletes soldadores y cortadores (oxiacetilenicos y oxigas), cabezales de pant&oacute;grafos, medicinales, tortugas de corte, nacionales e importados.</span></p>', 'imagenes/servicio/4_serv-04.jpg', 'dd', '2019-02-26 21:58:26', '2019-02-26 21:58:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_empresas`
--

CREATE TABLE `slider_empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `slider_empresas`
--

INSERT INTO `slider_empresas` (`id`, `imagen`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'imagenes/slider_empresa/1_Untitled-1.jpg', NULL, 'aa', '2019-02-24 19:51:45', '2019-02-24 19:51:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slider_homes`
--

CREATE TABLE `slider_homes` (
  `id` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `texto` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orden` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `slider_homes`
--

INSERT INTO `slider_homes` (`id`, `imagen`, `texto`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'imagenes/slider_home/1_home.jpg', '<h1>SMARTOP&trade;</h1>\r\n\r\n<p><span style=\"font-size:28px\">V&aacute;lvula de presi&oacute;n residual inteligente, &uacute;nica de <span style=\"color:#27629D\">Air Liquide</span> que simplifica la manipulaci&oacute;n de gases y mejora la seguridad.</span></p>', 'aa', '2019-02-24 00:41:41', '2019-02-26 21:38:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subfamilias`
--

CREATE TABLE `subfamilias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `familia` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orden` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `subfamilias`
--

INSERT INTO `subfamilias` (`id`, `nombre`, `imagen`, `familia`, `orden`, `created_at`, `updated_at`) VALUES
(1, 'Gases  Industriales', 'imagenes/subfamilia/5_gases-ind.png', '1', 'aa', '2019-02-25 20:59:04', '2019-02-26 21:43:16'),
(2, 'Gases para Análisis e Investigación', 'imagenes/subfamilia/5_gases-inves.png', '1', 'cc', '2019-02-25 21:05:34', '2019-02-26 21:43:59'),
(3, 'ARCAL™', 'imagenes/subfamilia/3_arcal.jpg', '2', 'aa', '2019-02-25 21:06:20', '2019-02-25 21:06:20'),
(4, 'ALbee™', 'imagenes/subfamilia/4_s01.png', '1', 'bb', '2019-02-26 21:41:28', '2019-02-26 21:41:28'),
(5, 'Gases para Alimentación', 'imagenes/subfamilia/5_gases-alim.png', '1', 'dd', '2019-02-26 21:44:41', '2019-02-26 21:44:41'),
(6, 'Gases para Soldadura', 'imagenes/subfamilia/6_gases-sold.png', '1', 'ee', '2019-02-26 21:45:42', '2019-02-26 21:45:42'),
(7, 'Alambres', 'imagenes/subfamilia/7_Alambres_.jpg', '3', 'aa', '2019-02-27 15:00:10', '2019-02-27 15:00:10'),
(8, 'Electrodos', 'imagenes/subfamilia/8_electrodos.jpg', '3', 'bb', '2019-02-27 15:00:32', '2019-02-27 15:00:32'),
(9, 'Varillas', 'imagenes/subfamilia/9_varillas.jpg', '3', 'cc', '2019-02-27 15:00:52', '2019-02-27 15:00:52'),
(10, 'Protección para el Cuerpo', 'imagenes/subfamilia/10_Proteccion_para_el_cuerpo.jpg', '4', 'aa', '2019-02-27 16:26:49', '2019-02-27 16:26:49'),
(11, 'Protección Auditiva', 'imagenes/subfamilia/11_proteccion_auditiva.jpg', '4', 'bb', '2019-02-27 16:28:01', '2019-02-27 16:28:01'),
(12, 'Protección Craneana / Facial', 'imagenes/subfamilia/12_proteccion_craneana_facial.jpg', '4', 'cc', '2019-02-27 16:29:22', '2019-02-27 16:29:22'),
(13, 'Equipos de Respiración Autónoma', 'imagenes/subfamilia/13_equipos_de_respiracion_autonoma.jpg', '4', 'cc', '2019-02-27 16:30:49', '2019-02-27 16:30:49'),
(14, 'Extractores de Humo', 'imagenes/subfamilia/14_extracto_de_humo.jpg', '4', 'ee', '2019-02-27 16:31:28', '2019-02-27 16:31:28'),
(15, 'Cortinas de Soldaduras', 'imagenes/subfamilia/15_cortinas_de_soldadura.jpg', '4', 'ff', '2019-02-27 16:32:33', '2019-02-27 16:33:03'),
(16, 'Protección Ocular', 'imagenes/subfamilia/16_proteccion_ocular.jpg', '4', 'gg', '2019-02-27 16:33:56', '2019-02-27 16:33:56'),
(17, 'Caretas Fotosensibles', 'imagenes/subfamilia/17_caretas_fotosensibles.jpg', '4', 'hh', '2019-02-27 16:34:49', '2019-02-27 16:34:49'),
(18, 'Corte', 'imagenes/subfamilia/18_coleccion__accesorio_corte.jpg', '7', 'aa', '2019-02-27 16:54:11', '2019-02-27 16:54:11'),
(19, 'Soldadura', 'imagenes/subfamilia/19_coleccion__accesorio_soldadura.jpg', '7', 'bb', '2019-02-27 16:54:29', '2019-02-27 16:54:29'),
(20, 'Corte por plasma', 'imagenes/subfamilia/20_coleccion__Corte por plasma.jpg', '2', 'aa', '2019-02-27 17:17:11', '2019-02-27 17:17:11'),
(21, 'Soldadura', 'imagenes/subfamilia/21_coleccion__Soldadura.jpg', '2', 'ab', '2019-02-27 17:17:23', '2019-02-27 17:17:23'),
(22, 'Pantógrafo de corte por plasma', 'imagenes/subfamilia/22_coleccion__Pantografo de corte por plasma.jpg', '2', 'ac', '2019-02-27 17:17:57', '2019-02-27 17:17:57'),
(23, 'Equipos de corte por Plasma', 'imagenes/subfamilia/23_coleccion__Logo_thermacut.jpg', '2', 'ad', '2019-02-27 17:18:11', '2019-02-27 17:18:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` enum('administrador','usuario') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usuario',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `usuario`, `password`, `nivel`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pablo', 'pablo', '$2y$10$tvH3VxxZjvHXLzcx5HEsS.qOq8ybroyRILRjCAVvpuyqhv9Qehe5G', 'administrador', 'pZhGExC97u2GJfqLBt71JsMbgvIjDjRp7imsPCJHWcfC4mkQswjDTriQUKP5', '2019-02-23 23:53:29', '2019-02-23 23:53:29'),
(2, 'Julían', 'julian', '$2y$10$FqBs8bOFwMswK71KkxYB.exhPgmXFZUDa9tVLwLo5RmyLfL.v88WO', 'administrador', 'UQ0zzM7lRiL6LcWRYAnXRNZF9udj1MuDGWALZ3ceqJnHzdUgKtqcu48zXTkV', '2019-02-27 18:32:14', '2019-02-27 18:32:14');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contenido_descargas`
--
ALTER TABLE `contenido_descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenido_empresas`
--
ALTER TABLE `contenido_empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contenido_homes`
--
ALTER TABLE `contenido_homes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datos_empresas`
--
ALTER TABLE `datos_empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descargas`
--
ALTER TABLE `descargas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `familias`
--
ALTER TABLE `familias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `postventas`
--
ALTER TABLE `postventas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto_destacados`
--
ALTER TABLE `producto_destacados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `redes_socials`
--
ALTER TABLE `redes_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slider_empresas`
--
ALTER TABLE `slider_empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slider_homes`
--
ALTER TABLE `slider_homes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_usuario_unique` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contenido_descargas`
--
ALTER TABLE `contenido_descargas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contenido_empresas`
--
ALTER TABLE `contenido_empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contenido_homes`
--
ALTER TABLE `contenido_homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `datos_empresas`
--
ALTER TABLE `datos_empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `descargas`
--
ALTER TABLE `descargas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `familias`
--
ALTER TABLE `familias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `metadatos`
--
ALTER TABLE `metadatos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `postventas`
--
ALTER TABLE `postventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `producto_destacados`
--
ALTER TABLE `producto_destacados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `redes_socials`
--
ALTER TABLE `redes_socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `slider_empresas`
--
ALTER TABLE `slider_empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `slider_homes`
--
ALTER TABLE `slider_homes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `subfamilias`
--
ALTER TABLE `subfamilias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
