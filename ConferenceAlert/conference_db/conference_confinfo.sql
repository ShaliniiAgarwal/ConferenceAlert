-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: conference
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `confinfo`
--

DROP TABLE IF EXISTS `confinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `confinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `city` varchar(45) DEFAULT NULL,
  `topic` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `info` varchar(445) DEFAULT NULL,
  `subtopic` varchar(445) DEFAULT NULL,
  `eventserial` varchar(45) DEFAULT NULL,
  `website` varchar(445) DEFAULT NULL,
  `contperson` varchar(45) DEFAULT NULL,
  `email` varchar(145) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `orgby` varchar(145) DEFAULT NULL,
  `venue` varchar(145) DEFAULT NULL,
  `orgpername` varchar(45) DEFAULT NULL,
  `eventname` varchar(145) DEFAULT NULL,
  `eventpassword` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confinfo`
--

LOCK TABLES `confinfo` WRITE;
/*!40000 ALTER TABLE `confinfo` DISABLE KEYS */;
INSERT INTO `confinfo` VALUES (2,'Prayagraj','Medical','2019-06-12','getinfo','Dentistry','p1md2',' http://icocmc.com/iccmc19/','Mr.x','xyz','2019-06-19','x','y','we','as',NULL,'inactive',NULL),(3,'Delhi','Engineering','2019-04-22','getinfo','ArtificialIntellegence','d2ea3',' http://icocmc.com/iccmc19/','Miss.z','xyz','2019-05-12','x','y','jk','il',NULL,'active',NULL),(4,'Gurugram','Engineering','2019-07-13','getinfo','Data Mining','g3ed4',' http://icocmc.com/iccmc19/','Miss.z','gj','2019-03-31','d','s','we','dfg',NULL,'active',NULL),(5,'Delhi','Medical','2019-04-15','getinfo','Nutrition and Dietetics','d4mn5',' http://icocmc.com/iccmc19/','Miss.z','das','2019-05-12','ad','as','ml','io',NULL,'active',NULL),(6,'Delhi','Engineering','2019-04-22','Conference held by DRDO','AntiMissile','d5ea6',' http://icocmc.com/iccmc19/','Miss.z','sd','2019-04-22','q','aa','bn','ui',NULL,'active',NULL),(19,'Bangalore','  Social Sciences and Humanities','2019-03-13','ACN- International Conference on Literature, Arts and Culture(ICLAC) is a prestigious event organized with a motivation to provide an excellent international platform for the academicians, researchers, engineers, industrial participants and budding students around the world to SHARE their research findings with the global experts. ICLAC 2019 will be held in Bangalore, India during March 31st, 2019','Literature','ACA235423',' http://academicsconference.com/Conference2019/3/Bangalore/3/ICLAC/','Conference Coordinator ','k@gmail.com','2019-03-31','ACADEMICSCONFERENCE','Bangalore, Karnataka, India','qw','er',NULL,'active',NULL),(30,'Bangalore','  Social Sciences and Humanities','2019-03-13','asd','Literature',NULL,'asas','as','shaliniagarwal.cs@gmail.com','2019-04-22','omShanti','qw','shanti','dfg','qw23er','inactive','New Event Registration');
/*!40000 ALTER TABLE `confinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-04 10:10:09
