-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: irps_tec_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Chat`
--
CREATE DATABASE IF NOT EXISTS `irps_tec_db`;
USE irps_tec_db;
DROP TABLE IF EXISTS `Chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Chat` (
  `id_usuario` int(11) DEFAULT NULL,
  `pregunta` varchar(1000) DEFAULT NULL,
  `respuesta` varchar(1000) DEFAULT NULL,
  `contestada` tinyint(1) DEFAULT NULL,
  `id_pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `asunto` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_pregunta`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Condicion`
--

DROP TABLE IF EXISTS `Condicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Condicion` (
  `Nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `id_Condicion` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_Condicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Consulta`
--

DROP TABLE IF EXISTS `Consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Consulta` (
  `id_Consulta` int(10) NOT NULL AUTO_INCREMENT,
  `Contenido` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `Respuesta` varchar(1000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `Usuarioid_Usuario` int(10) NOT NULL,
  PRIMARY KEY (`id_Consulta`),
  KEY `Usuarioid_Usuario_idx` (`Usuarioid_Usuario`),
  CONSTRAINT `Consulta_Usuario` FOREIGN KEY (`Usuarioid_Usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CuestionarioAsma`
--

DROP TABLE IF EXISTS `CuestionarioAsma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `CuestionarioAsma` (
  `id_cuestionario_asma` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `actividadesAireLibre` varchar(100) DEFAULT NULL,
  `aireLibreMasDeTreintaMin` varchar(100) DEFAULT NULL,
  `horarioAlAireLibre` varchar(100) DEFAULT NULL,
  `sintomas` varchar(100) DEFAULT NULL,
  `otro` varchar(500) DEFAULT NULL,
  `tiempoImpedido` varchar(100) DEFAULT NULL,
  `FrecuenciaFaltaDeAire` varchar(100) DEFAULT NULL,
  `FrecuenciaInhalador` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cuestionario_asma`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `cuestionarioasma_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CuestionarioAsmaNinos`
--

DROP TABLE IF EXISTS `CuestionarioAsmaNinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `CuestionarioAsmaNinos` (
  `id_cuestionario_asma_ninos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `actividadesAireLibre` varchar(100) DEFAULT NULL,
  `aireLibreMasDeTreintaMin` varchar(100) DEFAULT NULL,
  `horarioAlAireLibre` varchar(100) DEFAULT NULL,
  `sintomas` varchar(100) DEFAULT NULL,
  `otro` varchar(500) DEFAULT NULL,
  `sensacionDeAsma` varchar(100) DEFAULT NULL,
  `respiracionAfectada` varchar(100) DEFAULT NULL,
  `tos` varchar(100) DEFAULT NULL,
  `nocheAsma` varchar(100) DEFAULT NULL,
  `sintomasDeAsma` varchar(100) DEFAULT NULL,
  `queDias` varchar(100) DEFAULT NULL,
  `despertarseEnLaNoche` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cuestionario_asma_ninos`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `cuestionarioasmaninos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CuestionarioEpoc`
--

DROP TABLE IF EXISTS `CuestionarioEpoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `CuestionarioEpoc` (
  `id_cuestionario_epoc` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `actividadesAireLibreHoy` varchar(100) DEFAULT NULL,
  `aireLibreMasDeTreintaMinHoy` varchar(100) DEFAULT NULL,
  `horarioAlAireLibreHoy` varchar(100) DEFAULT NULL,
  `sintomas` varchar(100) DEFAULT NULL,
  `otra` varchar(500) DEFAULT NULL,
  `tos` varchar(10) DEFAULT NULL,
  `flemas` varchar(10) DEFAULT NULL,
  `opresionEnPecho` varchar(10) DEFAULT NULL,
  `faltaDeAireEscaleras` varchar(10) DEFAULT NULL,
  `actividadesDomesticas` varchar(10) DEFAULT NULL,
  `seguridadSalirDeCasa` varchar(10) DEFAULT NULL,
  `duermoSinProblemas` varchar(10) DEFAULT NULL,
  `energia` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_cuestionario_epoc`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `cuestionarioepoc_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CuestionarioInicial`
--

DROP TABLE IF EXISTS `CuestionarioInicial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `CuestionarioInicial` (
  `id_cuestionario` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `encuestaPorLlenar` varchar(100) DEFAULT NULL,
  `nivelEstudios` varchar(100) DEFAULT NULL,
  `fuma` varchar(100) DEFAULT NULL,
  `cantidadCigarros` varchar(100) DEFAULT NULL,
  `tiempoSinFumar` varchar(100) DEFAULT NULL,
  `conviveConFumadores` varchar(100) DEFAULT NULL,
  `dondeConvive` varchar(500) DEFAULT NULL,
  `otroTipoDeHumo` varchar(500) DEFAULT NULL,
  `otraEnfermedadDiag` text,
  `tipoCancer` varchar(500) DEFAULT NULL,
  `otraEnfermedadLibre` varchar(500) DEFAULT NULL,
  `realizaEjercicio` varchar(100) DEFAULT NULL,
  `dondeEjercicio` varchar(500) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cuestionario`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `cuestionarioinicial_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CuestionarioSanos`
--

DROP TABLE IF EXISTS `CuestionarioSanos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `CuestionarioSanos` (
  `id_cuestionario_sanos` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `actividadesAireLibre` varchar(100) DEFAULT NULL,
  `donde` varchar(150) DEFAULT NULL,
  `tipoEjercicio` varchar(150) DEFAULT NULL,
  `cansancio` varchar(100) DEFAULT NULL,
  `cansancioEscaleras` varchar(100) DEFAULT NULL,
  `aireLibreTreintaMins` varchar(100) DEFAULT NULL,
  `horarioAireLibre` varchar(100) DEFAULT NULL,
  `sintomas` varchar(100) DEFAULT NULL,
  `otros` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_cuestionario_sanos`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `cuestionariosanos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Investigador`
--

DROP TABLE IF EXISTS `Investigador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Investigador` (
  `Clearance` int(1) NOT NULL,
  `Nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Contrasena` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_Investigador` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_Investigador`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Recomendaciones`
--

DROP TABLE IF EXISTS `Recomendaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Recomendaciones` (
  `id_Recomendaciones` int(10) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `Nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `AssociatedVal` INT(3) NOT NULL,
  PRIMARY KEY (`id_Recomendaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido` varchar(90) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha de Nacimiento` date NOT NULL,
  `Direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Codigo Postal` int(5) NOT NULL,
  `IndicePersonalizado` int(2) DEFAULT NULL,
  `Correo electronico` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Contrasena` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `NumeroRecordatorio` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Usuario_Condicion`
--

DROP TABLE IF EXISTS `Usuario_Condicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Usuario_Condicion` (
  `Usuarioid_Usuario` int(10) NOT NULL,
  `Condicionid_Condicion` int(10) NOT NULL,
  PRIMARY KEY (`Usuarioid_Usuario`,`Condicionid_Condicion`),
  KEY `Link_Condicion_idx` (`Condicionid_Condicion`),
  CONSTRAINT `Link_Condicion` FOREIGN KEY (`Condicionid_Condicion`) REFERENCES `condicion` (`id_Condicion`),
  CONSTRAINT `Link_Usuario` FOREIGN KEY (`Usuarioid_Usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `Investigador` (Clearance, Nombre, Correo, Contrasena, id_Investigador) VALUES ('1','Administrador', 'psegura@tec.mx', '@dmin', '1000');
INSERT INTO RECOMENDACIONES (Descripcion, Nombre, AssociatedVal) VALUES ("Disfruta de tus actividades con normalidad.", "Regular-1", 3);
INSERT INTO RECOMENDACIONES (Descripcion, Nombre, AssociatedVal) VALUES ("Reduce actividades al aire libre si empiezas a sentirte mal.", "Bad-1", 6);
INSERT INTO RECOMENDACIONES (Descripcion, Nombre, AssociatedVal) VALUES ("No realices esfuerzo físico al aire libre si presentas síntomas.", "VeryBad-1", 8);
INSERT INTO RECOMENDACIONES (Descripcion, Nombre, AssociatedVal) VALUES ("Procura mantenerte en interiores.", "VeryBad-2", 8);
INSERT INTO RECOMENDACIONES (Descripcion, Nombre, AssociatedVal) VALUES ("Considera el uso de tapabocas.", "VeryBad-3", 7);
INSERT INTO RECOMENDACIONES (Descripcion, Nombre, AssociatedVal) VALUES ("Procura fuertemente mantenerte en interiores.", "Worst-1", 11);
INSERT INTO RECOMENDACIONES (Descripcion, Nombre, AssociatedVal) VALUES ("No realices ninguna actividad al aire libre.", "Worst-2", 11);

-- Dump completed on 2019-12-01  1:25:29
