-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 07-12-2023 a las 22:35:40
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `monster_trunk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Arma`
--

CREATE TABLE `Arma` (
  `idArma` int NOT NULL,
  `rareza` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb3_spanish_ci NOT NULL,
  `ataque` int NOT NULL,
  `afinidad` int NOT NULL,
  `tipoElem` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `dañoElem` int DEFAULT NULL,
  `sello` varchar(50) COLLATE utf8mb3_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Arma`
--

INSERT INTO `Arma` (`idArma`, `rareza`, `nombre`, `imagen`, `ataque`, `afinidad`, `tipoElem`, `dañoElem`, `sello`) VALUES
(1, 4, 'Espadón Abrasador I', '../imagenes/armas/granespada/espadon_abrasador_i.png', 672, 10, 'Fuego', 120, NULL),
(2, 5, 'Espadón Abrasador II', '../imagenes/armas/granespada/espadon_abrasador_i.png	', 720, 10, 'Fuego', 150, NULL),
(3, 6, 'Ala Roja', '../imagenes/armas/granespada/ala_roja.png', 768, 15, 'Fuego', 180, NULL),
(4, 2, 'Lanza Pistola Jagras I', '../imagenes/armas/lanzapistola/lanza_pistola_jagras_i.png', 253, 0, NULL, NULL, NULL),
(5, 3, 'Lanza Pistola Jagras II', '../imagenes/armas/lanzapistola/lanza_pistola_jagras_i.png', 276, 0, NULL, NULL, NULL),
(6, 4, 'Lanza Pistola Jagras III', '../imagenes/armas/lanzapistola/lanza_pistola_jagras_i.png', 322, 0, NULL, NULL, NULL),
(7, 4, 'Shotel Glacial I', '../imagenes/armas/espadalarga/shotel_glacial_i.png', 429, 0, 'Hielo', 210, NULL),
(8, 5, 'Shotel Glacial II', '../imagenes/armas/espadalarga/shotel_glacial_i.png', 495, 0, 'Hielo', 240, NULL),
(9, 6, 'Atracadora', '../imagenes/armas/espadalarga/atracadora.png', 495, 0, 'Hielo', 300, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ArmaCamarada`
--

CREATE TABLE `ArmaCamarada` (
  `idArma` int NOT NULL,
  `rareza` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagen` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `ataque` int NOT NULL,
  `afinidad` int NOT NULL,
  `tipoElem` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `dañoElem` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `ArmaCamarada`
--

INSERT INTO `ArmaCamarada` (`idArma`, `rareza`, `nombre`, `imagen`, `ataque`, `afinidad`, `tipoElem`, `dañoElem`) VALUES
(1, 4, 'Hoja Rathalos F', '../imagenes/armascamarada/hoja_rathalos_f.png', 16, 10, 'Fuego', 120),
(2, 1, 'Martillo pistola Jag F', '../imagenes/armascamarada/martillo_pistola_jag_f.png', 5, 0, NULL, NULL),
(3, 4, 'Espada Legiana F', '../imagenes/armascamarada/espada_legiana_f.png', 8, 0, 'Hielo', 180);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Bota`
--

CREATE TABLE `Bota` (
  `idBota` int NOT NULL,
  `rareza` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagenM` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagenH` varchar(255) COLLATE utf8mb3_spanish_ci NOT NULL,
  `defensa` int NOT NULL,
  `vsFue` int NOT NULL,
  `vsAgu` int NOT NULL,
  `vsRay` int NOT NULL,
  `vsHie` int NOT NULL,
  `vsDra` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Bota`
--

INSERT INTO `Bota` (`idBota`, `rareza`, `nombre`, `imagenM`, `imagenH`, `defensa`, `vsFue`, `vsAgu`, `vsRay`, `vsHie`, `vsDra`) VALUES
(1, 4, 'Grebas de Rathalos', '../imagenes/armaduras/botas/grebas_de_rathalos_mujer.png', '../imagenes/armaduras/boras/grebas_de_rathalos_hombre.png', 30, 3, 1, 1, -2, -3),
(2, 1, 'Grebas de Jagras', '../imagenes/armaduras/botas/grebas_de_jagras_mujer.png', '../imagenes/armaduras/botas/grebas_de_jagras_hombre.png', 16, -2, 2, -1, -1, 1),
(3, 4, 'Grebas de Legiana', '../imagenes/armaduras/botas/grebas_de_legiana_mujer.png', '../imagenes/armaduras/botas/grebas_de_legiana_hombre.png', 30, -1, 2, 3, -3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BotaHabilidad`
--

CREATE TABLE `BotaHabilidad` (
  `idBota` int NOT NULL,
  `idHabilidad` int NOT NULL,
  `nivel` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `BotaHabilidad`
--

INSERT INTO `BotaHabilidad` (`idBota`, `idHabilidad`, `nivel`) VALUES
(1, 6, 1),
(2, 11, 1),
(3, 17, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Camarada`
--

CREATE TABLE `Camarada` (
  `idCamarada` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `idArma` int NOT NULL,
  `idCasco` int NOT NULL,
  `idArmadura` int NOT NULL,
  `idCazador` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Casco`
--

CREATE TABLE `Casco` (
  `idCasco` int NOT NULL,
  `rareza` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagenM` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagenH` varchar(255) COLLATE utf8mb3_spanish_ci NOT NULL,
  `defensa` int NOT NULL,
  `vsFue` int NOT NULL,
  `vsAgu` int NOT NULL,
  `vsRay` int NOT NULL,
  `vsHie` int NOT NULL,
  `vsDra` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Casco`
--

INSERT INTO `Casco` (`idCasco`, `rareza`, `nombre`, `imagenM`, `imagenH`, `defensa`, `vsFue`, `vsAgu`, `vsRay`, `vsHie`, `vsDra`) VALUES
(1, 4, 'Yelmo de Rathalos', '../imagenes/armaduras/cascos/yelmo_rathalos_mujer.png', '../imagenes/armaduras/cascos/yelmo_rathalos_hombre.png', 30, 3, 1, 1, -2, -3),
(2, 1, 'Yelmo de Jagras', '../imagenes/armaduras/cascos/yelmo_de_jagras_mujer.png', '../imagenes/armaduras/cascos/yelmo_de_jagras_hombre.png', 8, -2, 2, -1, -1, 1),
(3, 4, 'Yelmo de Legiana', '../imagenes/armaduras/cascos/yelmo_de_legiana_mujer.png', '../imagenes/armaduras/cascos/yelmo_de_legiana_hombre.png', 30, -1, 2, 3, -3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CascoCamarada`
--

CREATE TABLE `CascoCamarada` (
  `idCasco` int NOT NULL,
  `rareza` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb3_spanish_ci NOT NULL,
  `defensa` int NOT NULL,
  `vsFue` int NOT NULL,
  `vsAgu` int NOT NULL,
  `vsRay` int NOT NULL,
  `vsHie` int NOT NULL,
  `vsDra` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `CascoCamarada`
--

INSERT INTO `CascoCamarada` (`idCasco`, `rareza`, `nombre`, `imagen`, `defensa`, `vsFue`, `vsAgu`, `vsRay`, `vsHie`, `vsDra`) VALUES
(1, 4, 'Yelmo de Rathalos F', '../imagenes/armadurascamarada/cascos/default.png', 16, 3, 1, -2, 1, -3),
(2, 1, 'Yelmo de Jagras F', '../imagenes/armadurascamarada/cascos/yelmo_de_jagras_f.png', 4, -2, 2, -1, -1, 1),
(3, 4, 'Yelmo de Legiana F', '../imagenes/armadurascamarada/cascos/yelmo_de_legiana_f.png', 14, -1, 2, -3, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CascoHabilidad`
--

CREATE TABLE `CascoHabilidad` (
  `idCasco` int NOT NULL,
  `idHabilidad` int NOT NULL,
  `nivel` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `CascoHabilidad`
--

INSERT INTO `CascoHabilidad` (`idCasco`, `idHabilidad`, `nivel`) VALUES
(1, 1, 1),
(2, 7, 1),
(3, 12, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cazador`
--

CREATE TABLE `Cazador` (
  `idCazador` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `idArma` int NOT NULL,
  `idCasco` int NOT NULL,
  `idPechera` int NOT NULL,
  `idGuante` int NOT NULL,
  `idFaja` int NOT NULL,
  `idBota` int NOT NULL,
  `idCigua` int NOT NULL,
  `idUsuario` int NOT NULL,
  `idCamarada` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cigua`
--

CREATE TABLE `Cigua` (
  `idCigua` int NOT NULL,
  `rareza` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `nivel` int NOT NULL,
  `idHabilidad` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Cigua`
--

INSERT INTO `Cigua` (`idCigua`, `rareza`, `nombre`, `imagen`, `nivel`, `idHabilidad`) VALUES
(1, 3, 'Cigua ataque I', '../imagenes/ciguas/cigua_ataque_i.png', 1, 1),
(2, 3, 'Cigua divina I', '../imagenes/ciguas/cigua_divina_i.png', 1, 12),
(3, 8, 'Cigua provecho II', '../imagenes/ciguas/cigua_provecho.png', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CorazaCamarada`
--

CREATE TABLE `CorazaCamarada` (
  `idCoraza` int NOT NULL,
  `rareza` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb3_spanish_ci NOT NULL,
  `defensa` int NOT NULL,
  `vsFue` int NOT NULL,
  `vsAgu` int NOT NULL,
  `vsRay` int NOT NULL,
  `vsHie` int NOT NULL,
  `vsDra` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `CorazaCamarada`
--

INSERT INTO `CorazaCamarada` (`idCoraza`, `rareza`, `nombre`, `imagen`, `defensa`, `vsFue`, `vsAgu`, `vsRay`, `vsHie`, `vsDra`) VALUES
(1, 4, 'Cota de Rathalos F', '../imagenes/armadurascompañero/coraza/cota_de_rathalos_f.png', 16, 3, 1, -2, 1, -3),
(2, 1, 'Cota de Jagras F', '../imagenes/armadurascamarada/coraza/cota_de_jagras_f.png', 4, -2, 2, -1, -1, 1),
(3, 4, 'Cota de Legiana F', '../imagenes/armadurascamarada/coraza/cota_de_legiana_f.png', 14, -1, 2, -3, 3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Faja`
--

CREATE TABLE `Faja` (
  `idFaja` int NOT NULL,
  `rareza` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagenM` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagenH` varchar(255) COLLATE utf8mb3_spanish_ci NOT NULL,
  `defensa` int NOT NULL,
  `vsFue` int NOT NULL,
  `vsAgu` int NOT NULL,
  `vsRay` int NOT NULL,
  `vsHie` int NOT NULL,
  `vsDra` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Faja`
--

INSERT INTO `Faja` (`idFaja`, `rareza`, `nombre`, `imagenM`, `imagenH`, `defensa`, `vsFue`, `vsAgu`, `vsRay`, `vsHie`, `vsDra`) VALUES
(1, 4, 'Faja de Rathalos', '../imagenes/armaduras/fajas/faja_de_rathalos_mujer.png', '../imagenes/armaduras/fajas/faja_de_rathalos_hombre.png', 30, 3, 1, 1, -2, -3),
(2, 1, 'Faja de Jagras', '../imagenes/armaduras/fajas/faja_de_jagras_mujer.png', '../imagenes/armaduras/fajas/faja_de_jagras_hombre.png', 8, -2, 2, -1, -1, 1),
(3, 4, 'Faja de Legiana', '../imagenes/armaduras/fajas/faja_de_legiana_mujer.png', '../imagenes/armaduras/fajas/faja_de_legiana_hombre.png', 30, -1, 2, 3, -3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `FajaHabilidad`
--

CREATE TABLE `FajaHabilidad` (
  `idFaja` int NOT NULL,
  `idHabilidad` int NOT NULL,
  `nivel` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `FajaHabilidad`
--

INSERT INTO `FajaHabilidad` (`idFaja`, `idHabilidad`, `nivel`) VALUES
(1, 5, 1),
(2, 10, 1),
(3, 16, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Guante`
--

CREATE TABLE `Guante` (
  `idGuante` int NOT NULL,
  `rareza` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagenM` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagenH` varchar(255) COLLATE utf8mb3_spanish_ci NOT NULL,
  `defensa` int NOT NULL,
  `vsFue` int NOT NULL,
  `vsAgu` int NOT NULL,
  `vsRay` int NOT NULL,
  `vsHie` int NOT NULL,
  `vsDra` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Guante`
--

INSERT INTO `Guante` (`idGuante`, `rareza`, `nombre`, `imagenM`, `imagenH`, `defensa`, `vsFue`, `vsAgu`, `vsRay`, `vsHie`, `vsDra`) VALUES
(1, 4, 'Brazales de Rathalos', '../imagenes/armaduras/guantes/brazales_de_rathalos_mujer.png', '../imagenes/armaduras/guantes/brazales_de_rathalos_hombre.png', 30, 3, 1, 1, -2, -3),
(2, 1, 'Brazales de Jagras', '../imagenes/armaduras/guantes/brazales_de_jagras_mujer.png', '../imagenes/armaduras/guantes/brazales_de_jagras_hombre.png', 8, -2, 2, -1, -1, 1),
(3, 4, 'Brazales de Legiana', '../imagenes/armaduras/guantes/brazales_de_legiana_mujer.png', '../imagenes/armaduras/guantes/brazales_de_legiana_hombre.png', 30, -1, 2, 3, -3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `GuanteHabilidad`
--

CREATE TABLE `GuanteHabilidad` (
  `idGuante` int NOT NULL,
  `idHabilidad` int NOT NULL,
  `nivel` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `GuanteHabilidad`
--

INSERT INTO `GuanteHabilidad` (`idGuante`, `idHabilidad`, `nivel`) VALUES
(1, 4, 1),
(2, 9, 1),
(3, 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Habilidad`
--

CREATE TABLE `Habilidad` (
  `idHabilidad` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `efecto` text COLLATE utf8mb3_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Habilidad`
--

INSERT INTO `Habilidad` (`idHabilidad`, `nombre`, `efecto`) VALUES
(1, 'Bonus ataque', 'Aumenta el ataque. En niveles altos también mejora la afinidad.\r\nNv. 1	Ataque +3\r\nNv. 2	Ataque +6\r\nNv. 3	Ataque +9\r\nNv. 4	Ataque +12 Afinidad +5%\r\nNv. 5	Ataque +15 Afinidad +5%\r\nNv. 6	Ataque +18 Afinidad +5%\r\nNv. 7	Ataque +21 Afinidad +5%'),
(2, 'Poder de Rathalos', 'Nv. 3	Aumenta el daño elemental (fuego, agua, rayo, hielo, draco) cuando es resultado de un crítico.'),
(3, 'Bonus punto débil', 'Aumenta la afinidad de ataques que aprovechan el punto débil de un monstruo.\r\nNv. 1	Los ataques en puntos débiles tienen afinidad +10%, más un 5% adicional sobre partes heridas.\r\nNv. 2	Los ataques en puntos débiles tienen afinidad +15%, más un 15% adicional sobre partes heridas.\r\nNv. 3	Los ataques en puntos débiles tienen afinidad +30%, más un 20% adicional sobre partes heridas.'),
(4, 'Anti fuego', 'Aumenta la resistencia al fuego. En niveles más altos también mejora la defensa.\r\nNv. 1	Resistencia al fuego +6\r\nNv. 2	Resistencia al fuego +12\r\nNv. 3	Resistencia al fuego +20 Defensa +10'),
(5, 'Ataque fuego', 'Potencia los ataques elementales de fuego. (El poder elemental tiene un máximo).\r\nNv. 1	Ataque de fuego +30\r\nNv. 2	Ataque de fuego +60\r\nNv. 3	Ataque de fuego +100\r\nNv. 4	Ataque de fuego +5% Bonus adicional +100\r\nNv. 5	Ataque de fuego +10% Bonus adicional +100\r\nNv. 6	Ataque de fuego +20% Bonus adicional +100'),
(6, 'Experto en salto', 'Evita que los ataques te interrumpan mientras saltas.\r\nNv. 1	Evita ser interrumpido en medio de un salto al ser atacado.'),
(7, 'Velocidad de comer', 'Aumenta la velocidad al comer carne y consumir objetos.\r\nNv. 1	Aumenta ligeramente la velocidad de uso de objetos.\r\nNv. 2	Aumenta notablemente la velocidad de uso de objetos.\r\nNv. 3	Aumenta mucho la velocidad de uso de objetos.'),
(8, 'Intimidador', 'Reduce las probabilidades de que los monstruos pequeños ataquen al verte. (No tiene efecto sobre ciertos monstruos).\r\nNv. 1	Disuade a los monstruos de atacarte, incluso si te han visto.\r\nNv. 2	Disuade mucho a los monstruos de atacarte, incluso si te han visto.\r\nNv. 3	Evita que los monstruos te ataquen, incluso si te han visto.'),
(9, 'Mejora de camarada', 'Fortalece a los camaradas.\r\nNv. 1	Aumenta la defensa y el ataque del camarada +5%.\r\nNv. 2	Aumenta la defensa y el ataque del camarada +10%.\r\nNv. 3	Aumenta la defensa y el ataque del camarada +15%.\r\nNv. 4	Aumenta la defensa y el ataque del camarada +20%.\r\nNv. 5	Aumenta la defensa y el ataque del camarada +25%.\r\n'),
(10, 'Bonus de desmayo', 'Aumenta temporalmente ataque y defensa cada vez que te desmayes (máx. 2 veces).\r\nNv. 1	Aumenta el ataque un 10% y la defensa un 15% con cada uso.\r\n'),
(11, 'Movimiento agachado', 'Aumenta la velocidad al moverte cuando lo hagas estando agachado.\r\nNv. 1	Aumenta la velocidad al moverte cuando lo hagas estando agachado.'),
(12, ' Protección divina', 'Posibilidad predeterminada de reducir el daño que recibes.\r\nNv. 1	Cuando se active, reducirá el daño recibido un 15%.\r\nNv. 2	Cuando se active, reducirá el daño recibido un 30%.\r\nNv. 3	Cuando se active, reducirá el daño recibido un 50%.\r\nNv. 4	Cuando se active, reducirá el daño recibido un 60%.\r\nNv. 5	Cuando se active, reducirá el daño recibido un 60%, y hace más fácil que se active la habilidad.'),
(13, 'Bendición de Legiana', 'Nv. 3	Buena probabilidad de recibir objetos extra en recompensas de misión. (No sirve si accedes a una misión a medias).'),
(14, 'Intervalo de evasión', 'Prolonga el momento de invulnerabilidad al esquivar.\r\nNv. 1	Alarga muy levemente el momento de invulnerabilidad al esquivar.\r\nNv. 2	Alarga levemente el momento de invulnerabilidad al esquivar.\r\nNv. 3	Alarga el momento de invulnerabilidad al esquivar.\r\nNv. 4	Alarga mucho el momento de invulnerabilidad al esquivar.\r\nNv. 5	Alarga muchísimo el momento de invulnerabilidad al esquivar.'),
(15, 'Bonus de ataque en salto', 'Aumenta el daño provocado por los ataques en salto.\r\nNv. 1	Ataque en salto +30%'),
(16, 'Ataque de hielo', 'Potencia los ataques elementales de hielo. (El poder elemental tiene un máximo).\r\nNv. 1	Ataque de hielo +30\r\nNv. 2	Ataque de hielo +60\r\nNv. 3	Ataque de hielo +100\r\nNv. 4	Ataque de hielo +5% Bonus adicional +100\r\nNv. 5	Ataque de hielo +10% Bonus adicional +100\r\nNv. 6	Ataque de hielo +20% Bonus adicional +100'),
(17, 'Anti hielo', 'Aumenta la resistencia al hielo. En niveles más altos también mejora la defensa.\r\nNv. 1	Resistencia al hielo +6\r\nNv. 2	Resistencia al hielo +12\r\nNv. 3	Resistencia al hielo +20 Defensa +10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pechera`
--

CREATE TABLE `Pechera` (
  `idPechera` int NOT NULL,
  `rareza` int NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagenM` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `imagenH` varchar(255) COLLATE utf8mb3_spanish_ci NOT NULL,
  `defensa` int NOT NULL,
  `vsFue` int NOT NULL,
  `vsAgu` int NOT NULL,
  `vsRay` int NOT NULL,
  `vsHie` int NOT NULL,
  `vsDra` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `Pechera`
--

INSERT INTO `Pechera` (`idPechera`, `rareza`, `nombre`, `imagenM`, `imagenH`, `defensa`, `vsFue`, `vsAgu`, `vsRay`, `vsHie`, `vsDra`) VALUES
(1, 4, 'Cota de Rathalos', '../imagenes/armaduras/pecheras/cota_de_rathalos_mujer.png', '../imagenes/armaduras/pecheras/cota_de_rathalos_hombre.png', 30, 3, 1, 1, -2, -3),
(2, 1, 'Cota de Jagras', '../imagenes/armaduras/pecheras/cota_de_jagras_mujer.png', '../imagenes/armaduras/pecheras/cota_de_jagras_hombre.png', 8, -2, 2, -1, -1, 1),
(3, 4, 'Cota de Legiana', '../imagenes/armaduras/pecheras/cota_de_legiana_mujer.png', '../imagenes/armaduras/pecheras/cota_de_legiana_hombre.png', 30, -1, 2, 3, -3, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PecheraHabilidad`
--

CREATE TABLE `PecheraHabilidad` (
  `idPechera` int NOT NULL,
  `idHabilidad` int NOT NULL,
  `nivel` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `PecheraHabilidad`
--

INSERT INTO `PecheraHabilidad` (`idPechera`, `idHabilidad`, `nivel`) VALUES
(1, 3, 1),
(2, 8, 1),
(3, 14, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `idUsuario` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8mb3_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb3_spanish_ci NOT NULL,
  `contraseña` char(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci NOT NULL,
  `fotoPerfil` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci DEFAULT NULL,
  `idCazador` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Arma`
--
ALTER TABLE `Arma`
  ADD PRIMARY KEY (`idArma`);

--
-- Indices de la tabla `ArmaCamarada`
--
ALTER TABLE `ArmaCamarada`
  ADD PRIMARY KEY (`idArma`);

--
-- Indices de la tabla `Bota`
--
ALTER TABLE `Bota`
  ADD PRIMARY KEY (`idBota`);

--
-- Indices de la tabla `BotaHabilidad`
--
ALTER TABLE `BotaHabilidad`
  ADD PRIMARY KEY (`idBota`,`idHabilidad`),
  ADD KEY `HabilidadBota` (`idHabilidad`);

--
-- Indices de la tabla `Camarada`
--
ALTER TABLE `Camarada`
  ADD PRIMARY KEY (`idCamarada`),
  ADD KEY `Arma` (`idArma`),
  ADD KEY `Casco` (`idCasco`),
  ADD KEY `idArmadura` (`idArmadura`),
  ADD KEY `Cazador` (`idCazador`);

--
-- Indices de la tabla `Casco`
--
ALTER TABLE `Casco`
  ADD PRIMARY KEY (`idCasco`);

--
-- Indices de la tabla `CascoCamarada`
--
ALTER TABLE `CascoCamarada`
  ADD PRIMARY KEY (`idCasco`);

--
-- Indices de la tabla `CascoHabilidad`
--
ALTER TABLE `CascoHabilidad`
  ADD PRIMARY KEY (`idCasco`,`idHabilidad`),
  ADD KEY `HabilidadCasco` (`idHabilidad`);

--
-- Indices de la tabla `Cazador`
--
ALTER TABLE `Cazador`
  ADD PRIMARY KEY (`idCazador`),
  ADD KEY `idArma` (`idArma`),
  ADD KEY `idCasco` (`idCasco`),
  ADD KEY `idPechera` (`idPechera`),
  ADD KEY `idGuante` (`idGuante`),
  ADD KEY `idFaja` (`idFaja`),
  ADD KEY `idBota` (`idBota`),
  ADD KEY `idCigua` (`idCigua`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idCamarada` (`idCamarada`);

--
-- Indices de la tabla `Cigua`
--
ALTER TABLE `Cigua`
  ADD PRIMARY KEY (`idCigua`),
  ADD KEY `CiguaHabilidad` (`idHabilidad`);

--
-- Indices de la tabla `CorazaCamarada`
--
ALTER TABLE `CorazaCamarada`
  ADD PRIMARY KEY (`idCoraza`);

--
-- Indices de la tabla `Faja`
--
ALTER TABLE `Faja`
  ADD PRIMARY KEY (`idFaja`);

--
-- Indices de la tabla `FajaHabilidad`
--
ALTER TABLE `FajaHabilidad`
  ADD PRIMARY KEY (`idFaja`,`idHabilidad`),
  ADD KEY `HabilidadFaja` (`idHabilidad`);

--
-- Indices de la tabla `Guante`
--
ALTER TABLE `Guante`
  ADD PRIMARY KEY (`idGuante`);

--
-- Indices de la tabla `GuanteHabilidad`
--
ALTER TABLE `GuanteHabilidad`
  ADD PRIMARY KEY (`idGuante`,`idHabilidad`),
  ADD KEY `HabilidadGuante` (`idHabilidad`);

--
-- Indices de la tabla `Habilidad`
--
ALTER TABLE `Habilidad`
  ADD PRIMARY KEY (`idHabilidad`);

--
-- Indices de la tabla `Pechera`
--
ALTER TABLE `Pechera`
  ADD PRIMARY KEY (`idPechera`);

--
-- Indices de la tabla `PecheraHabilidad`
--
ALTER TABLE `PecheraHabilidad`
  ADD PRIMARY KEY (`idPechera`,`idHabilidad`),
  ADD KEY `HabilidadPechera` (`idHabilidad`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `idCazador` (`idCazador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Arma`
--
ALTER TABLE `Arma`
  MODIFY `idArma` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `ArmaCamarada`
--
ALTER TABLE `ArmaCamarada`
  MODIFY `idArma` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Bota`
--
ALTER TABLE `Bota`
  MODIFY `idBota` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Camarada`
--
ALTER TABLE `Camarada`
  MODIFY `idCamarada` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Casco`
--
ALTER TABLE `Casco`
  MODIFY `idCasco` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `CascoCamarada`
--
ALTER TABLE `CascoCamarada`
  MODIFY `idCasco` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Cazador`
--
ALTER TABLE `Cazador`
  MODIFY `idCazador` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Cigua`
--
ALTER TABLE `Cigua`
  MODIFY `idCigua` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `CorazaCamarada`
--
ALTER TABLE `CorazaCamarada`
  MODIFY `idCoraza` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Faja`
--
ALTER TABLE `Faja`
  MODIFY `idFaja` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Guante`
--
ALTER TABLE `Guante`
  MODIFY `idGuante` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Habilidad`
--
ALTER TABLE `Habilidad`
  MODIFY `idHabilidad` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `Pechera`
--
ALTER TABLE `Pechera`
  MODIFY `idPechera` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `idUsuario` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `BotaHabilidad`
--
ALTER TABLE `BotaHabilidad`
  ADD CONSTRAINT `BotaPry` FOREIGN KEY (`idBota`) REFERENCES `Bota` (`idBota`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `HabilidadBota` FOREIGN KEY (`idHabilidad`) REFERENCES `Habilidad` (`idHabilidad`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Camarada`
--
ALTER TABLE `Camarada`
  ADD CONSTRAINT `Arma` FOREIGN KEY (`idArma`) REFERENCES `ArmaCamarada` (`idArma`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Casco` FOREIGN KEY (`idCasco`) REFERENCES `CascoCamarada` (`idCasco`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `Cazador` FOREIGN KEY (`idCazador`) REFERENCES `Cazador` (`idCazador`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idArmadura` FOREIGN KEY (`idArmadura`) REFERENCES `CorazaCamarada` (`idCoraza`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `CascoHabilidad`
--
ALTER TABLE `CascoHabilidad`
  ADD CONSTRAINT `CascoPry` FOREIGN KEY (`idCasco`) REFERENCES `Casco` (`idCasco`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `HabilidadCasco` FOREIGN KEY (`idHabilidad`) REFERENCES `Habilidad` (`idHabilidad`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Cazador`
--
ALTER TABLE `Cazador`
  ADD CONSTRAINT `idArma` FOREIGN KEY (`idArma`) REFERENCES `Arma` (`idArma`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idBota` FOREIGN KEY (`idBota`) REFERENCES `Bota` (`idBota`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idCamarada` FOREIGN KEY (`idCamarada`) REFERENCES `Camarada` (`idCamarada`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idCasco` FOREIGN KEY (`idCasco`) REFERENCES `Casco` (`idCasco`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idCigua` FOREIGN KEY (`idCigua`) REFERENCES `Cigua` (`idCigua`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idCompañero` FOREIGN KEY (`idCamarada`) REFERENCES `Camarada` (`idCamarada`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idFaja` FOREIGN KEY (`idFaja`) REFERENCES `Faja` (`idFaja`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idGuante` FOREIGN KEY (`idGuante`) REFERENCES `Guante` (`idGuante`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idPechera` FOREIGN KEY (`idPechera`) REFERENCES `Pechera` (`idPechera`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Cigua`
--
ALTER TABLE `Cigua`
  ADD CONSTRAINT `CiguaHabilidad` FOREIGN KEY (`idHabilidad`) REFERENCES `Habilidad` (`idHabilidad`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `FajaHabilidad`
--
ALTER TABLE `FajaHabilidad`
  ADD CONSTRAINT `FajaPry` FOREIGN KEY (`idFaja`) REFERENCES `Faja` (`idFaja`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `HabilidadFaja` FOREIGN KEY (`idHabilidad`) REFERENCES `Habilidad` (`idHabilidad`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `GuanteHabilidad`
--
ALTER TABLE `GuanteHabilidad`
  ADD CONSTRAINT `GuantePry` FOREIGN KEY (`idGuante`) REFERENCES `Guante` (`idGuante`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `HabilidadGuante` FOREIGN KEY (`idHabilidad`) REFERENCES `Habilidad` (`idHabilidad`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `PecheraHabilidad`
--
ALTER TABLE `PecheraHabilidad`
  ADD CONSTRAINT `HabilidadPechera` FOREIGN KEY (`idHabilidad`) REFERENCES `Habilidad` (`idHabilidad`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `PecheraPry` FOREIGN KEY (`idPechera`) REFERENCES `Pechera` (`idPechera`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD CONSTRAINT `idCazador` FOREIGN KEY (`idCazador`) REFERENCES `Cazador` (`idCazador`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
