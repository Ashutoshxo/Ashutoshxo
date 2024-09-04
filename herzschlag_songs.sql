-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: herzschlag
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `SongID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(500) DEFAULT NULL,
  `ArtistID` int DEFAULT NULL,
  `AlbumID` int DEFAULT NULL,
  `Duration` time NOT NULL,
  `Genre` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SongID`),
  KEY `ArtistID` (`ArtistID`),
  KEY `AlbumID` (`AlbumID`),
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`ArtistID`) REFERENCES `artists` (`ArtistID`),
  CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`AlbumID`) REFERENCES `albums` (`AlbumID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Come Together',NULL,1,'00:02:59',NULL,'Medium'),(2,'hey jude',1,1,'00:08:15','Pop','Long'),(3,'let it be',1,1,'00:04:15','Pop','Medium'),(4,'eleanor rigby',1,1,'00:02:12','pop','Medium'),(5,'Yellow submarine',1,1,'00:02:12','pop','Medium'),(6,'here comes the sun',1,1,'00:02:12','pop','Medium'),(10,'varbatim',9,2,'00:04:15','Pop','Medium'),(11,'holy',2,3,'00:04:15','pop','Medium'),(12,'as i am',2,3,'00:04:15','pop','Medium'),(13,'hold on',3,4,'00:03:15','pop','Medium'),(14,'strange thing',3,4,'00:04:15','pop','Medium'),(15,'i dont care',4,5,'00:03:15','R&B','Medium'),(16,'cross me',4,5,'00:03:15','R&B','Medium'),(17,'miles away',5,6,'00:03:15','pop','Medium'),(18,'billie jeans',6,7,'00:05:15','R&B','Long'),(19,'beat it',6,7,'00:04:15','R&B','Medium'),(20,'greatest',7,8,'00:03:40','hip-hop','Medium'),(21,'kamikaze',7,8,'00:03:40','hip-hop','Medium'),(22,'false start',8,9,'00:03:40','pop','Medium'),(23,'the time',8,9,'00:03:40','r&b','Medium');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-04 12:38:36
