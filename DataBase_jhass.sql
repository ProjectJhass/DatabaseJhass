-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: jhass
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asignacion_tarea`
--

DROP TABLE IF EXISTS `asignacion_tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignacion_tarea` (
  `ID_tarea_ID_usuario` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `ID_tarea` int DEFAULT NULL,
  PRIMARY KEY (`ID_tarea_ID_usuario`),
  KEY `id_usuario` (`id_usuario`),
  KEY `ID_tarea` (`ID_tarea`),
  CONSTRAINT `asignacion_tarea_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `asignacion_tarea_ibfk_2` FOREIGN KEY (`ID_tarea`) REFERENCES `tarea` (`ID_tarea`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignacion_tarea`
--

LOCK TABLES `asignacion_tarea` WRITE;
/*!40000 ALTER TABLE `asignacion_tarea` DISABLE KEYS */;
INSERT INTO `asignacion_tarea` VALUES (1,'2024-07-01','2024-07-10',1,1),(2,'2024-07-02','2024-07-11',2,2),(3,'2024-07-03','2024-07-12',3,3),(4,'2024-07-04','2024-07-13',4,4);
/*!40000 ALTER TABLE `asignacion_tarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `ID_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Electrónica','Dispositivos y gadgets electrónicos'),(2,'Ropa','Prendas de vestir'),(3,'Alimentos','Productos alimenticios'),(4,'Muebles','Muebles y decoración para el hogar');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `ID_empresa` int NOT NULL AUTO_INCREMENT,
  `nombre_empresa` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `correo_electronico` varchar(150) DEFAULT NULL,
  `sector` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `certificado_img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'Empresa A','Dirección A','Descripción de Empresa A',NULL,NULL,NULL,NULL),(2,'Empresa B','Dirección B','Descripción de Empresa B',NULL,NULL,NULL,NULL),(3,'Empresa C','Dirección C','Descripción de Empresa C',NULL,NULL,NULL,NULL),(4,'Empresa D','Dirección D','Descripción de Empresa D',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `ID_evento` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `hora` time DEFAULT NULL,
  PRIMARY KEY (`ID_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento_usuario`
--

DROP TABLE IF EXISTS `evento_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento_usuario` (
  `ID_usuario_ID_evento` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `ID_evento` int DEFAULT NULL,
  PRIMARY KEY (`ID_usuario_ID_evento`),
  KEY `id_usuario` (`id_usuario`),
  KEY `ID_evento` (`ID_evento`),
  CONSTRAINT `evento_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `evento_usuario_ibfk_2` FOREIGN KEY (`ID_evento`) REFERENCES `evento` (`ID_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento_usuario`
--

LOCK TABLES `evento_usuario` WRITE;
/*!40000 ALTER TABLE `evento_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimiento_stock`
--

DROP TABLE IF EXISTS `movimiento_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimiento_stock` (
  `ID_movimiento` int NOT NULL AUTO_INCREMENT,
  `movimiento_stock` int DEFAULT NULL,
  `fecha_movimiento` date DEFAULT NULL,
  `tipo_movimiento` varchar(50) DEFAULT NULL,
  `descripcion_movimiento` varchar(255) DEFAULT NULL,
  `stock_restante` int DEFAULT NULL,
  `ID_producto` int DEFAULT NULL,
  PRIMARY KEY (`ID_movimiento`),
  KEY `ID_producto` (`ID_producto`),
  CONSTRAINT `movimiento_stock_ibfk_1` FOREIGN KEY (`ID_producto`) REFERENCES `producto` (`ID_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimiento_stock`
--

LOCK TABLES `movimiento_stock` WRITE;
/*!40000 ALTER TABLE `movimiento_stock` DISABLE KEYS */;
INSERT INTO `movimiento_stock` VALUES (1,NULL,'2024-07-01','Entrada',NULL,NULL,1),(2,NULL,'2024-07-02','Salida',NULL,NULL,1),(3,NULL,'2024-07-03','Ajuste',NULL,NULL,1),(4,NULL,'2024-07-04','Transferencia',NULL,NULL,1);
/*!40000 ALTER TABLE `movimiento_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `ID_perfil` int NOT NULL AUTO_INCREMENT,
  `rol` varchar(200) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `ID_empresa` int DEFAULT NULL,
  PRIMARY KEY (`ID_perfil`),
  KEY `id_usuario` (`id_usuario`),
  KEY `ID_empresa` (`ID_empresa`),
  CONSTRAINT `perfil_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  CONSTRAINT `perfil_ibfk_2` FOREIGN KEY (`ID_empresa`) REFERENCES `empresa` (`ID_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `ID_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `img_producto` varchar(255) DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `ID_empresa` int DEFAULT NULL,
  `ID_categoria` int DEFAULT NULL,
  PRIMARY KEY (`ID_producto`),
  KEY `ID_empresa` (`ID_empresa`),
  KEY `ID_categoria` (`ID_categoria`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`ID_empresa`) REFERENCES `empresa` (`ID_empresa`),
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`ID_categoria`) REFERENCES `categoria` (`ID_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Laptop','Laptop de última generación',NULL,NULL,1200,NULL,1),(2,'Camisa','Camisa de algodón',NULL,NULL,25,NULL,2),(3,'Pizza','Pizza grande con ingredientes a elección',NULL,NULL,15,NULL,3),(4,'Sofá','Sofá de tres plazas',NULL,NULL,400,NULL,4);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarea`
--

DROP TABLE IF EXISTS `tarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarea` (
  `ID_tarea` int NOT NULL AUTO_INCREMENT,
  `titulo_tarea` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_tarea`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarea`
--

LOCK TABLES `tarea` WRITE;
/*!40000 ALTER TABLE `tarea` DISABLE KEYS */;
INSERT INTO `tarea` VALUES (1,'Revisión de Inventario','Revisar el stock de la bodega central','pendiente'),(2,'Actualización de Precios','Actualizar los precios de los productos','pendiente'),(3,'Entrega de Producto','Entregar los productos al cliente','pendiente'),(4,'Reunión con Proveedores','Reunión para discutir nuevas adquisiciones','pendiente');
/*!40000 ALTER TABLE `tarea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `correo_electronico` varchar(70) DEFAULT NULL,
  `contraseña` varchar(25) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Carlos','Pérez','carlos.perez@gmail.com','abcdef','3216549870','activo'),(2,'Ana','Gómez','ana.gomez@gmail.com','ghijkl','3226549870','activo'),(3,'Luis','Martínez','luis.martinez@gmail.com','mnopqr','3236549870','activo'),(4,'Marta','López','marta.lopez@gmail.com','stuvwx','3246549870','activo');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `ID_venta` int NOT NULL AUTO_INCREMENT,
  `cantidad` int DEFAULT NULL,
  `precio_total` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`ID_venta`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta_dia`
--

DROP TABLE IF EXISTS `venta_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta_dia` (
  `ID_venta_ID_producto` int NOT NULL AUTO_INCREMENT,
  `fecha_venta` date DEFAULT NULL,
  `ID_venta` int DEFAULT NULL,
  `ID_producto` int DEFAULT NULL,
  PRIMARY KEY (`ID_venta_ID_producto`),
  KEY `ID_venta` (`ID_venta`),
  KEY `ID_producto` (`ID_producto`),
  CONSTRAINT `venta_dia_ibfk_1` FOREIGN KEY (`ID_venta`) REFERENCES `venta` (`ID_venta`),
  CONSTRAINT `venta_dia_ibfk_2` FOREIGN KEY (`ID_producto`) REFERENCES `producto` (`ID_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta_dia`
--

LOCK TABLES `venta_dia` WRITE;
/*!40000 ALTER TABLE `venta_dia` DISABLE KEYS */;
/*!40000 ALTER TABLE `venta_dia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-18 16:25:24
