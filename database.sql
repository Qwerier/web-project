-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: databaseweb
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `klienti`
--

DROP TABLE IF EXISTS `klienti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klienti` (
  `ID_Klient` int NOT NULL AUTO_INCREMENT,
  `Emri` varchar(20) NOT NULL,
  `Mbiemri` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Fjalekalimi` varchar(50) NOT NULL,
  `Adresa` varchar(25) NOT NULL,
  `Qyteti` varchar(30) NOT NULL,
  `Shteti` varchar(2) NOT NULL,
  `Kodi_postar` varchar(5) NOT NULL,
  PRIMARY KEY (`ID_Klient`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klienti`
--

LOCK TABLES `klienti` WRITE;
/*!40000 ALTER TABLE `klienti` DISABLE KEYS */;
INSERT INTO `klienti` VALUES (1,'Tr','tr','tr@yahoo.com','tr','tr','tr','tr','tr'),(2,'Klark','Ahmeti','klark@yahoo.com','klark','tr','tr','tr','tr'),(13,'Gjim','Dyrmishi','gjimdyrmishi@yahoo.com','klarkahmeti','Vaqarr','Tirane','AL','1000'),(14,'Klark','Ahmeti','klarkahmeti@yahoo.com','klark','klark','Tirane','AL','10000'),(15,'sdas','asdasd','sdasds@sdas.com','asdasd','asds','adsad','ad','adsa');
/*!40000 ALTER TABLE `klienti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_aut_klas`
--

DROP TABLE IF EXISTS `lib_aut_klas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lib_aut_klas` (
  `Nr_Seri` varchar(15) DEFAULT NULL,
  `ID_Autor` int DEFAULT NULL,
  KEY `Nr_Seri` (`Nr_Seri`),
  KEY `ID_Autor` (`ID_Autor`),
  CONSTRAINT `lib_aut_klas_ibfk_1` FOREIGN KEY (`Nr_Seri`) REFERENCES `lib_pershkrim` (`Nr_Seri`),
  CONSTRAINT `lib_aut_klas_ibfk_2` FOREIGN KEY (`ID_Autor`) REFERENCES `lib_autor` (`ID_Autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_aut_klas`
--

LOCK TABLES `lib_aut_klas` WRITE;
/*!40000 ALTER TABLE `lib_aut_klas` DISABLE KEYS */;
INSERT INTO `lib_aut_klas` VALUES ('Wabble',2),('Trebam',6),('Trebam',7),('Trebam',8),('PH3',1),('Ter',9),('T47',10),('Zeh',3),('Zeh',4),('ZYB1',5),('NZ1',3),('NZ1',4);
/*!40000 ALTER TABLE `lib_aut_klas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_autor`
--

DROP TABLE IF EXISTS `lib_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lib_autor` (
  `ID_Autor` int NOT NULL AUTO_INCREMENT,
  `Emri` varchar(30) DEFAULT NULL,
  `Mbiemri` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_Autor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_autor`
--

LOCK TABLES `lib_autor` WRITE;
/*!40000 ALTER TABLE `lib_autor` DISABLE KEYS */;
INSERT INTO `lib_autor` VALUES (1,'Josh','Lockhart'),(2,'Al ','Sweigart'),(3,'Paul ','Deitel'),(4,'Harvey','Deitel'),(5,'Eric','Matthes'),(6,'Matthew','MacDonald'),(7,'Adam','Freeman'),(8,'Mario','Szpuszta'),(9,'Joshua ','Bloch'),(10,'Allen B.','Downey');
/*!40000 ALTER TABLE `lib_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_kat`
--

DROP TABLE IF EXISTS `lib_kat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lib_kat` (
  `ID_Kat` int NOT NULL AUTO_INCREMENT,
  `Kategoria` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_Kat`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_kat`
--

LOCK TABLES `lib_kat` WRITE;
/*!40000 ALTER TABLE `lib_kat` DISABLE KEYS */;
INSERT INTO `lib_kat` VALUES (1,'ASP.NET'),(2,'Java'),(3,'Python'),(4,'MySQL'),(5,'PHP'),(6,'JavaScript');
/*!40000 ALTER TABLE `lib_kat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_klas`
--

DROP TABLE IF EXISTS `lib_klas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lib_klas` (
  `ID_Kat` int DEFAULT NULL,
  `Nr_Seri` varchar(15) DEFAULT NULL,
  KEY `ID_Kat` (`ID_Kat`),
  KEY `Nr_Seri` (`Nr_Seri`),
  CONSTRAINT `lib_klas_ibfk_1` FOREIGN KEY (`ID_Kat`) REFERENCES `lib_kat` (`ID_Kat`),
  CONSTRAINT `lib_klas_ibfk_2` FOREIGN KEY (`Nr_Seri`) REFERENCES `lib_pershkrim` (`Nr_Seri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_klas`
--

LOCK TABLES `lib_klas` WRITE;
/*!40000 ALTER TABLE `lib_klas` DISABLE KEYS */;
INSERT INTO `lib_klas` VALUES (2,'Zeh'),(3,'Wabble'),(2,'Ter'),(1,'Trebam'),(3,'T47'),(3,'NZ1'),(5,'PH3'),(3,'ZYB1');
/*!40000 ALTER TABLE `lib_klas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_pershkrim`
--

DROP TABLE IF EXISTS `lib_pershkrim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lib_pershkrim` (
  `Nr_Seri` varchar(15) NOT NULL,
  `titulli` varchar(120) DEFAULT NULL,
  `Pershkrimi` varchar(300) DEFAULT NULL,
  `Cmimi` int DEFAULT NULL,
  `Botuesi` varchar(60) DEFAULT NULL,
  `Publikimi` date DEFAULT NULL,
  `Tirazhi` int DEFAULT NULL,
  `Nr_faqeve` int DEFAULT NULL,
  `URL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Nr_Seri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_pershkrim`
--

LOCK TABLES `lib_pershkrim` WRITE;
/*!40000 ALTER TABLE `lib_pershkrim` DISABLE KEYS */;
INSERT INTO `lib_pershkrim` VALUES ('NZ1','Python for Programmers ','Libri merret me subjektin e inteligjences artificiale dhe shkences se te dhenave. Niveli i lexuesit duhe te jete mbi mesataren',80,'Deitel','2019-05-01',1000,700,'pythonHeavy.jpg'),('PH3','Modern PHP: New Features and Good Practices','Libri me i fundit lidhur mbi PHP i cili trajton dhe ndryshimet e bera se fundmi. Keshtu sintaksa eshte rinovuar dhe shembujt jane shtuar.',50,'O\'Reilly Media','2017-04-02',1000,500,'phpbook.jpg'),('T47','Think Python: An Introduction to Software Design','Nder serine e librave mbi gjuhen Python ky liber eshte per te specializuarit. Ne vetvehte ka shembuj projektesh dhe zbatim metodash inxhinierike.',65,'O\'Reilly Media','2017-04-02',500,450,'thinkPython.png'),('Ter','Effective Java','Nje liber tjeter mjaft i suksesshem nga Deitel i cili merret me se shum',80,'Addison-Wesley Professionall','2018-07-01',30000,210,'effectiveJava.jpg'),('Trebam','Pro ASP.NET 4 in C#','ASP.Net u drejtohet te gjithe programuesve qe jane te interesuar dhe per te zhvilluar projekte ne kete fushe.',42,'Apress','2010-01-30',2003,120,'ASPNET.png'),('Wabble','Automate the Boring Stuff with Python','Nje tekst i cili eshte shkruar enkas per programuesit pa pervoje qe duan te zhvillojne projekte te thjeshta por argetuese. Gjuha Python gjen nje shtrirje te madhe ne automatizim dhe ky eshte libri i duhur.',22,'No Starch Press','2012-04-14',1000,150,'automate.jpg'),('Zeh','Java: How to Program, 9th Edition ','Tek ky liber jane trajtuar shume nga aspektet e javes si gjuhe programimi dhe nje mori librarish. Nje liber qe nuk duhet ti mungoje nje programuesi Jave.',90,'Deitel','2011-02-21',1000,1500,'javaHTP.jpg'),('ZYB1','Python Crash Course','Nje liber mjaft popullor ne rrethet e programuesve per menyren e qarte te shpjegimit te koncepteve. Libri eshte shkruar per nivelin mesatar te njohurive dhe trajton me se shumti librarite lidhur me databazen.',70,'No Starch Press','2019-07-01',2000,400,'pythonCrash.jpg');
/*!40000 ALTER TABLE `lib_pershkrim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `porosi`
--

DROP TABLE IF EXISTS `porosi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `porosi` (
  `ID_Porosi` int NOT NULL AUTO_INCREMENT,
  `ID_Klient` int DEFAULT NULL,
  `DatePorosi` date DEFAULT NULL,
  PRIMARY KEY (`ID_Porosi`),
  KEY `ID_Klient` (`ID_Klient`),
  CONSTRAINT `porosi_ibfk_1` FOREIGN KEY (`ID_Klient`) REFERENCES `klienti` (`ID_Klient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `porosi`
--

LOCK TABLES `porosi` WRITE;
/*!40000 ALTER TABLE `porosi` DISABLE KEYS */;
/*!40000 ALTER TABLE `porosi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rreshtporosi`
--

DROP TABLE IF EXISTS `rreshtporosi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rreshtporosi` (
  `ID_Porosi` int DEFAULT NULL,
  `Nr_Seri` varchar(15) DEFAULT NULL,
  `Sasia` int DEFAULT NULL,
  `Cmimi` double(6,2) DEFAULT NULL,
  KEY `ID_Porosi` (`ID_Porosi`),
  KEY `Nr_Seri` (`Nr_Seri`),
  CONSTRAINT `rreshtporosi_ibfk_1` FOREIGN KEY (`ID_Porosi`) REFERENCES `porosi` (`ID_Porosi`),
  CONSTRAINT `rreshtporosi_ibfk_2` FOREIGN KEY (`Nr_Seri`) REFERENCES `lib_pershkrim` (`Nr_Seri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rreshtporosi`
--

LOCK TABLES `rreshtporosi` WRITE;
/*!40000 ALTER TABLE `rreshtporosi` DISABLE KEYS */;
/*!40000 ALTER TABLE `rreshtporosi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-23 22:42:35
