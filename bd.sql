-- MySQL dump 10.19  Distrib 10.3.32-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gimnasio
-- ------------------------------------------------------
-- Server version	10.3.32-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Manuel','Diaz','administrador','123123','2022-01-15 06:46:37','2022-01-15 06:46:37'),(2,'Jose','Figeroa','manager','asdasd','2022-01-29 23:35:05','2022-01-29 23:35:05');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuenta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `cuenta_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (1,'jose@gmail.com','123123','2022-01-15 06:53:23','2022-01-15 06:53:23',1),(2,'laura@gmail.com','asd','2022-01-15 06:54:10','2022-01-15 06:54:10',2),(66,'ManuelDR1','Manuel182','2022-02-07 06:44:14','2022-02-07 06:44:14',58),(67,'AdrianaRO16','Adriana661','2022-02-07 17:01:39','2022-02-07 17:01:39',59),(68,'AdrianaRO88','Adriana668','2022-02-07 17:08:44','2022-02-07 17:08:44',59),(69,'MarceloLA36','Marcelo88','2022-02-07 17:13:00','2022-02-07 17:13:00',60),(70,'CarlosAM61','Carlos7','2022-02-07 17:13:57','2022-02-07 17:13:57',61),(71,'398273498799733','39827349879557','2022-02-07 18:20:49','2022-02-07 18:20:49',62),(72,'weriuwoieurowieuow89','weriuwoieurowieu899','2022-02-07 18:21:45','2022-02-07 18:21:45',63),(73,'ArturoLP94','Arturo824','2022-02-13 18:39:32','2022-02-13 18:39:32',64),(74,'ArturoLP60','Arturo324','2022-02-13 19:33:58','2022-02-13 19:33:58',64),(75,'ewieruoiuu28','ewieruoi160','2022-02-13 20:13:31','2022-02-13 20:13:31',65),(76,'ewieruoiuu5','ewieruoi896','2022-02-13 20:15:54','2022-02-13 20:15:54',65),(77,'ewieruoiuu83','ewieruoi158','2022-02-13 20:17:01','2022-02-13 20:17:01',65),(78,'ewieruoiuu11','ewieruoi107','2022-02-13 20:19:18','2022-02-13 20:19:18',65),(79,'ewieruoiuu42','ewieruoi873','2022-02-13 20:19:37','2022-02-13 20:19:37',65),(80,'PEdrosd1','PEdro782','2022-02-14 04:44:46','2022-02-14 04:44:46',66),(81,'JoaquinAC41','Joaquin288','2022-02-14 17:12:29','2022-02-14 17:12:29',67),(82,'CarlosMG9','Carlos290','2022-02-14 17:20:24','2022-02-14 17:20:24',68),(83,'lsakjlkjlqwkejlqwkejoo21','lsakjlkjlqwkejlqwkej363','2022-02-17 00:07:41','2022-02-17 00:07:41',69),(84,'qweqweqweqq91','qweqweqwe51','2022-02-17 01:57:15','2022-02-17 01:57:15',70),(85,'m,miiuiiu98','m,miiui703','2022-02-17 02:00:21','2022-02-17 02:00:21',71),(86,'Lookoo3','Look804','2022-02-17 02:04:20','2022-02-17 02:04:20',72),(87,'eriweoiruewoiuoo16','eriweoiruewoiu69','2022-02-17 02:38:51','2022-02-17 02:38:51',74),(88,'PEdrosk8','PEdro236','2022-02-17 04:29:58','2022-02-17 04:29:58',75),(89,'qweqweqq91','qweqwe834','2022-02-17 04:35:34','2022-02-17 04:35:34',76),(90,'qwewquioiuoii10','qwewquioiuo181','2022-02-18 20:43:47','2022-02-18 20:43:47',77),(91,'kasudasiuyii24','kasudasiuy415','2022-02-18 20:44:25','2022-02-18 20:44:25',78);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `producto_codigo` char(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_codigo` (`producto_codigo`),
  CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`producto_codigo`) REFERENCES `producto` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_pago`
--

DROP TABLE IF EXISTS `historial_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `importe` decimal(8,2) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `cuenta_id` int(11) NOT NULL,
  `administrador_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cuenta_id` (`cuenta_id`),
  KEY `administrador_id` (`administrador_id`),
  CONSTRAINT `historial_pago_ibfk_1` FOREIGN KEY (`cuenta_id`) REFERENCES `cuenta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `historial_pago_ibfk_2` FOREIGN KEY (`administrador_id`) REFERENCES `administrador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_pago`
--

LOCK TABLES `historial_pago` WRITE;
/*!40000 ALTER TABLE `historial_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `horario` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (1,'07:00:00'),(2,'08:00:00'),(3,'09:00:00'),(4,'10:00:00'),(5,'11:00:00'),(6,'12:00:00'),(7,'13:00:00'),(8,'14:00:00'),(9,'15:00:00'),(10,'16:00:00'),(11,'17:00:00'),(12,'18:00:00'),(13,'19:00:00'),(14,'20:00:00'),(15,'21:00:00'),(16,'22:00:00'),(17,'23:00:00');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precio`
--

DROP TABLE IF EXISTS `precio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) DEFAULT NULL,
  `valor` decimal(8,3) DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precio`
--

LOCK TABLES `precio` WRITE;
/*!40000 ALTER TABLE `precio` DISABLE KEYS */;
INSERT INTO `precio` VALUES (1,'inscripcion',250.140,'2022-01-15 06:55:45'),(2,'colegiatura',150.240,'2022-01-15 06:55:56');
/*!40000 ALTER TABLE `precio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `codigo` char(50) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_compra` decimal(9,2) DEFAULT NULL,
  `precio_venta` decimal(9,2) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `administrador_id` int(11) NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `administrador_id` (`administrador_id`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`administrador_id`) REFERENCES `administrador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suscripcion`
--

DROP TABLE IF EXISTS `suscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suscripcion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `colegiatura` decimal(8,2) DEFAULT NULL,
  `inscripcion` decimal(8,2) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `cuenta_id` int(11) NOT NULL,
  `taller_id` int(11) NOT NULL,
  `horario_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cuenta_id` (`cuenta_id`),
  KEY `taller_id` (`taller_id`),
  KEY `horario_id` (`horario_id`),
  CONSTRAINT `suscripcion_ibfk_1` FOREIGN KEY (`cuenta_id`) REFERENCES `cuenta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `suscripcion_ibfk_2` FOREIGN KEY (`taller_id`) REFERENCES `taller` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `suscripcion_ibfk_3` FOREIGN KEY (`horario_id`) REFERENCES `horario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suscripcion`
--

LOCK TABLES `suscripcion` WRITE;
/*!40000 ALTER TABLE `suscripcion` DISABLE KEYS */;
INSERT INTO `suscripcion` VALUES (1,233.01,150.15,'2022-01-15 20:01:48','2022-01-15 20:01:48','2022-01-15 20:01:48',1,2,5),(41,250.00,250.14,'2022-02-07 06:44:14','2022-02-07 06:44:14','2022-02-07 06:44:14',66,2,7),(42,450.00,250.14,'2022-02-07 17:01:39','2022-02-07 17:01:39','2022-02-07 17:01:39',67,3,7),(43,450.00,250.14,'2022-02-07 17:08:44','2022-02-07 17:08:44','2022-02-07 17:08:44',68,3,7),(44,350.00,250.14,'2022-02-07 17:13:00','2022-02-07 17:13:00','2022-02-07 17:13:00',69,1,1),(45,350.00,250.14,'2022-02-07 17:13:57','2022-02-07 17:13:57','2022-02-07 17:13:57',70,1,1),(46,350.00,250.14,'2022-02-07 18:20:49','2022-02-07 18:20:49','2022-02-07 18:20:49',71,1,1),(47,350.00,250.14,'2022-02-07 18:21:45','2022-02-07 18:21:45','2022-02-07 18:21:45',72,1,1),(48,450.00,250.14,'2022-02-13 18:39:32','2022-02-13 18:39:32','2022-02-13 18:39:32',73,3,1),(49,450.00,250.14,'2022-02-13 19:33:58','2022-02-13 19:33:58','2022-02-13 19:33:58',74,3,1),(50,350.00,250.14,'2022-02-13 20:13:31','2022-02-13 20:13:31','2022-02-13 20:13:31',75,1,4),(51,350.00,250.14,'2022-02-13 20:15:54','2022-02-13 20:15:54','2022-02-13 20:15:54',76,1,6),(52,350.00,250.14,'2022-02-13 20:17:01','2022-02-13 20:17:01','2022-02-13 20:17:01',77,1,6),(53,350.00,250.14,'2022-02-13 20:19:18','2022-02-13 20:19:18','2022-02-13 20:19:18',78,1,6),(54,350.00,250.14,'2022-02-13 20:19:37','2022-02-13 20:19:37','2022-02-13 20:19:37',79,1,6),(55,450.00,250.14,'2022-02-14 04:44:46','2022-02-14 04:44:46','2022-02-14 04:44:46',80,3,8),(56,450.00,250.14,'2022-02-14 17:12:29','2022-02-14 17:12:29','2022-02-14 17:12:29',81,3,5),(57,350.00,250.14,'2022-02-14 17:20:24','2022-02-14 17:20:24','2022-02-14 17:20:24',82,1,1),(58,350.00,250.14,'2022-02-17 00:07:41','2022-02-17 00:07:41','2022-02-17 00:07:41',83,1,1),(59,350.00,250.14,'2022-02-17 01:57:15','2022-02-17 01:57:15','2022-02-17 01:57:15',84,1,1),(60,350.00,250.14,'2022-02-17 02:00:21','2022-02-17 02:00:21','2022-02-17 02:00:21',85,1,1),(61,450.00,250.14,'2022-02-17 02:04:20','2022-02-17 02:04:20','2022-02-17 02:04:20',86,3,1),(62,350.00,250.14,'2022-02-17 02:38:51','2022-02-17 02:38:51','2022-02-17 02:38:51',87,1,1),(63,350.00,250.14,'2022-02-17 04:29:58','2022-02-17 04:29:58','2022-02-17 04:29:58',88,1,1),(64,350.00,250.14,'2022-02-17 04:35:34','2022-02-17 04:35:34','2022-02-17 04:35:34',89,1,1),(65,350.00,250.14,'2022-02-18 20:43:47','2022-02-18 20:43:47','2022-02-18 20:43:47',90,1,1),(66,350.00,250.14,'2022-02-18 20:44:25','2022-02-18 20:44:25','2022-02-18 20:44:25',91,1,1);
/*!40000 ALTER TABLE `suscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taller`
--

DROP TABLE IF EXISTS `taller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `costo` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taller`
--

LOCK TABLES `taller` WRITE;
/*!40000 ALTER TABLE `taller` DISABLE KEYS */;
INSERT INTO `taller` VALUES (1,'Box',350.00),(2,'Crossfit',250.00),(3,'Aerobics',450.00),(4,'Judo',150.00);
/*!40000 ALTER TABLE `taller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `apellido_materno` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `ruta` varchar(100) NOT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Jose Luis','P?rez','Mart?nez','Suchiapa','9610111100',NULL,'','2022-01-15 06:52:41','2022-01-15 06:52:41'),(2,'Laura','P?rez','L?pez','Tuxtla','9610111111',NULL,'','2022-01-15 06:53:52','2022-01-15 06:53:52'),(58,'Manuel Vladimir','Diaz','Ruiz','ocosingo chiapas','9438476837','aser@msn.com','94384768377664','2022-02-07 06:44:08','2022-02-07 06:44:08'),(59,'Adriana','Rojas','Organica','Sancristobal','9837982374','masd@msn.com','98379823746335','2022-02-07 17:01:33','2022-02-07 17:01:33'),(60,'Marcelo','Lopez','Alfonzo','Bochil Chiapas','5453242323','Manu@msn.com','54532423236128','2022-02-07 17:12:48','2022-02-07 17:12:48'),(61,'Carlos','Alberto','Mendonza','Las Moras','2398273492','asdaswe@msn.com','23982734925580','2022-02-07 17:13:54','2022-02-07 17:13:54'),(62,'39827349879','98798','79879879','987987987','9879878657','asdasd@msn.com','98798786577306','2022-02-07 18:20:48','2022-02-07 18:20:48'),(63,'weriuwoieurowieu','oiuowieurowieu','wu3ierywieury','iuweryiwuery','0980980980','asdasdasd@msn.com','09809809805529','2022-02-07 18:21:43','2022-02-07 18:21:43'),(64,'Arturo','Lopez','Pérez','Ocosingo Chiapas','2039842093','osoas@msn.com','20398420939776','2022-02-13 18:39:23','2022-02-13 18:39:23'),(65,'ewieruoi','uoiueoeriuwoi','uyqweqweqwe','iuyiuy','3432423423','asdasd@msn.com','34324234239791','2022-02-13 20:13:24','2022-02-13 20:13:24'),(66,'PEdro','sola','diaz','mexico','2930498304','asdasdasdasd@msn.com','29304983041475','2022-02-14 04:44:39','2022-02-14 04:44:39'),(67,'Joaquin Uriel','Alvarez','Cruz','Suchiapa','2348923479','asdoier@msn.com','23489234792757','2022-02-14 17:12:21','2022-02-14 17:12:21'),(68,'Carlos Alberto','Mendoza','Galindo','Las Rosas Chiapas','4598674958','oasd@msn.com','45986749589476','2022-02-14 17:20:22','2022-02-14 17:20:22'),(69,'lsakjlkjlqwkejlqwkej','owqiueowiu','oiuoiweuroweiur','askdjlwqek','2394872938','asdasdasdasd@msn.com','23948729388453','2022-02-17 00:07:38','2022-02-17 00:07:38'),(70,'qweqweqwe','qweqwe','qweqweqwe','qweqweqwe','2342342342','awesa@msn.com','23423423425611','2022-02-17 01:57:09','2022-02-17 01:57:09'),(71,'m,miiui','iuiuiui','uiuiui','iuiuiuiui','0934234234','asd@msn.com','09342342346344','2022-02-17 02:00:17','2022-02-17 02:00:17'),(72,'Look','oisiod','oioiwerwe','wwoe','8547234234','sd@msn.com','85472342341176','2022-02-17 02:04:15','2022-02-17 02:04:15'),(73,'qweqwpop','poipoip','poipoi','oiuqweqwe','8976876876','ljkasd@msn.com','8976876876363','2022-02-17 02:38:00','2022-02-17 02:38:00'),(74,'eriweoiruewoiu','oiuoiuoiu','oiuoiuo','oiuoiuoi','8097098098','ssdd@msn.com','8097098098192','2022-02-17 02:38:43','2022-02-17 02:38:43'),(75,'PEdro','sdfsd','khjgkjhk','hkjhkjh','9879098098','assddas@msn.com','98790980983047','2022-02-17 04:29:54','2022-02-17 04:29:54'),(76,'qweqwe','qweqwe','qweqwe','qweqweqwe','2121212121','o12soas@msn.com','21212121214074','2022-02-17 04:35:32','2022-02-17 04:35:32'),(77,'qwewquioiuo','iuoiuoiuo','iuoiuoiu','oiuoiuoi','9879879879','asd@msn.com','98798798799047','2022-02-18 20:43:45','2022-02-18 20:43:45'),(78,'kasudasiuy','iuyiewuyqwieuy','iuyweiuqwyeii','iuaewyiwueyr','4234232423','aq@mdsn.com','42342324233059','2022-02-18 20:44:23','2022-02-18 20:44:23');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precio` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `producto_codigo` char(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_codigo` (`producto_codigo`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`producto_codigo`) REFERENCES `producto` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-20 15:23:10
