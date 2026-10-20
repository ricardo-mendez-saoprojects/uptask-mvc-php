-- Esquema reconstruido a partir de models/ y datos de ejemplo ficticios para la demo local.
-- No es el esquema original. Usuario de prueba: demo@demo.test / demo1234
CREATE DATABASE IF NOT EXISTS uptask_demo CHARACTER SET utf8mb4; USE uptask_demo;
/*M!999999\- enable the sandbox mode */ 
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proyecto` varchar(60) DEFAULT NULL,
  `url` varchar(32) DEFAULT NULL,
  `propietarioId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
INSERT INTO `proyectos` VALUES
(1,'Web corporativa','a1b2c3d4e5f60718293a4b5c6d7e8f90',1),
(2,'Tienda online','b1b2c3d4e5f60718293a4b5c6d7e8f90',1),
(3,'Migración de servidor','c1b2c3d4e5f60718293a4b5c6d7e8f90',1),
(4,'App de reservas','d1b2c3d4e5f60718293a4b5c6d7e8f90',1);
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tareas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `proyectoId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
INSERT INTO `tareas` VALUES
(1,'Diseñar wireframes',1,1),
(2,'Maquetar la home',1,1),
(3,'Formulario de contacto',0,1),
(4,'Optimizar imágenes',0,1),
(5,'Configurar SEO básico',0,1),
(6,'Pruebas en móvil',1,1);
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `token` varchar(15) DEFAULT NULL,
  `confirmado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
INSERT INTO `usuarios` VALUES
(1,'Usuario Demo','demo@demo.test','$2y$12$E/NO.GpgKDpOOH4r.bq15u3sS8AEpT5GJttshf/.aHQdNWyieU/0G','',1);
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
