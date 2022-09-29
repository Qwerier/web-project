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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klienti`
--

LOCK TABLES `klienti` WRITE;
/*!40000 ALTER TABLE `klienti` DISABLE KEYS */;
INSERT INTO `klienti` VALUES (1,'Genci','Dimushi','gencdimushi@yahoo.com','yogaHindu2','Ali Bendo','Tirane','AL','2700'),(2,'Klark','Ahmeti','klark@yahoo.com','harapetimna23','Grigor Heba','Tirane','AL','2700'),(3,'Gjim','Dyrmishi','gjimdyrmishi@yahoo.com','filmapalimit3','Vaqarr','Tirane','AL','2500'),(4,'Anxhela','Sako','asako@yahoo.com','anxhiiLena2','Irfan Tomini','Tirane','AL','2600'),(5,'Juena','Demiri','juena23demiri@hotmail.com','pijanstar2','Liri Gero','Fier','AL','5000'),(6,'Nila','Zani','nilazani@gmail.com','nilazani54','Jani Dui','Tirane','AL','2400'),(7,'Timo','Shoqi','timo_shoqi2@gmail.com','timothypauk2','Klaus Meier','Stuttgart','GE','5400'),(8,'Gerta','Feta','gerta_feta@hotmail.com','ertaerta98','Austerlitz','Paris','FR','45500'),(9,'Tanja','Hylli','tanja2hylli@gmail.com','hytaup23k','Chocolatine','Bordeaux','FR','23000'),(10,'Ina','Trashani','inapali3@gmail.com','antarapan3!2','Karl Gega','Shkoder','AL','5200'),(11,'Besa','Xena','xena_besa2@yahoo.com','xenaBesajoky','Myslym Shyri','Tirane','AL','2000'),(12,'Arben','Kraja','krajaben@hotmail.com','otorastarafan342','Tim Pecikllazi','Tirane','AL','2100'),(13,'Ela','Idrizi','elaelaid@gmail.com','evarust23%','Jani Dui','Tirane','AL','2100'),(14,'Suela','Papajani','suela_pap2@hotmail.com','muruganstaffer20o','Peo Lau','Tirane','AL','2200'),(15,'Hysni','Zela','hyso@yahoo.com','polifonia2','Ni San','Tirane','AL','2300'),(16,'Gianni','Faro','giannifaro@yahoo.com','seguitemiFer','Tivoglino','Foggia','IT','3424'),(17,'Alek','Ahmeti','alekahmeti@yahoo.com','mesazhieri','Rruga Grigor Heba','Tirane','AL','60020');
/*!40000 ALTER TABLE `klienti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lajcak`
--

DROP TABLE IF EXISTS `lajcak`;
/*!50001 DROP VIEW IF EXISTS `lajcak`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lajcak` AS SELECT 
 1 AS `ID_Klient`,
 1 AS `Emri`,
 1 AS `Mbiemri`,
 1 AS `Email`,
 1 AS `Fjalekalimi`,
 1 AS `Adresa`,
 1 AS `Qyteti`,
 1 AS `Shteti`,
 1 AS `Kodi_postar`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lib_aut_klas`
--

DROP TABLE IF EXISTS `lib_aut_klas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lib_aut_klas` (
  `Nr_Seri` varchar(15) NOT NULL,
  `ID_Autor` int NOT NULL,
  PRIMARY KEY (`Nr_Seri`,`ID_Autor`),
  KEY `lib_aut_klas_ibfk_2` (`ID_Autor`),
  CONSTRAINT `lib_aut_klas_ibfk_1` FOREIGN KEY (`Nr_Seri`) REFERENCES `lib_pershkrim` (`Nr_Seri`),
  CONSTRAINT `lib_aut_klas_ibfk_2` FOREIGN KEY (`ID_Autor`) REFERENCES `lib_autor` (`ID_Autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_aut_klas`
--

LOCK TABLES `lib_aut_klas` WRITE;
/*!40000 ALTER TABLE `lib_aut_klas` DISABLE KEYS */;
INSERT INTO `lib_aut_klas` VALUES ('PFP235',1),('ABS872',2),('JHT790',3),('JHT790',4),('PCC231',5),('PAN731',6),('PAN731',7),('PAN731',8),('EFJ856',9),('PFP235',10),('RPL200',11),('RPL200',12),('FPY871',13),('TPI333',14);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_autor`
--

LOCK TABLES `lib_autor` WRITE;
/*!40000 ALTER TABLE `lib_autor` DISABLE KEYS */;
INSERT INTO `lib_autor` VALUES (1,'Josh','Lockhart'),(2,'Al ','Sweigart'),(3,'Paul ','Deitel'),(4,'Harvey','Deitel'),(5,'Eric','Matthes'),(6,'Matthew','MacDonald'),(7,'Adam','Freeman'),(8,'Mario','Szpuszta'),(9,'Joshua ','Bloch'),(10,'Allen B.','Downey'),(11,'Carol','Nichols'),(12,'Steve','Klabnik'),(13,'Luciano','Ramalho'),(14,'Allen','Downey');
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
INSERT INTO `lib_kat` VALUES (1,'ASP.NET'),(2,'Java'),(3,'Python'),(4,'MySQL'),(5,'PHP'),(6,'JavaScript'),(7,'Rust');
/*!40000 ALTER TABLE `lib_kat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lib_klas`
--

DROP TABLE IF EXISTS `lib_klas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lib_klas` (
  `ID_Kat` int NOT NULL,
  `Nr_Seri` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Kat`,`Nr_Seri`),
  KEY `lib_klas_ibfk_2` (`Nr_Seri`),
  CONSTRAINT `lib_klas_ibfk_1` FOREIGN KEY (`ID_Kat`) REFERENCES `lib_kat` (`ID_Kat`),
  CONSTRAINT `lib_klas_ibfk_2` FOREIGN KEY (`Nr_Seri`) REFERENCES `lib_pershkrim` (`Nr_Seri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lib_klas`
--

LOCK TABLES `lib_klas` WRITE;
/*!40000 ALTER TABLE `lib_klas` DISABLE KEYS */;
INSERT INTO `lib_klas` VALUES (3,'ABS872'),(2,'EFJ856'),(3,'FPY871'),(2,'JHT790'),(1,'PAN731'),(3,'PCC231'),(3,'PFP235'),(5,'PHB782'),(7,'RPL200'),(3,'TPI333');
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
INSERT INTO `lib_pershkrim` VALUES ('ABS872','Automate the Boring Stuff with Python','Nje tekst i cili eshte shkruar enkas per programuesit pa pervoje qe duan te zhvillojne projekte te thjeshta por argetuese. Gjuha Python gjen nje shtrirje te madhe ne automatizim dhe ky eshte libri i duhur.',22,'No Starch Press','2012-04-14',1000,150,'automate.jpg'),('EFJ856','Effective Java','Nje liber tjeter mjaft i suksesshem nga Deitel i cili merret me se shum',80,'Addison-Wesley Professionall','2018-07-01',30000,210,'effectiveJava.jpg'),('FPY871','Fluent Python','Botuesit e ketij libri jane kujdesur qe te sjellin tek lexuesi teknikat dhe qasjet e perdorura nga profesionistet e fushes per te shkruajtur kod',30,'O\'Reilly Media','2014-01-07',3000,476,'FluentPython.jpg'),('JHT790','Java: How to Program, 9th Edition ','Tek ky liber jane trajtuar shume nga aspektet e javes si gjuhe programimi dhe nje mori librarish. Nje liber qe nuk duhet ti mungoje nje programuesi Jave.',90,'Deitel','2011-02-21',1000,1500,'javaHTP.jpg'),('PAN731','Pro ASP.NET 4 in C#','ASP.Net u drejtohet te gjithe programuesve qe jane te interesuar dhe per te zhvilluar projekte ne kete fushe.',42,'Apress','2010-01-30',2003,120,'ASPNET.png'),('PCC231','Python Crash Course','Nje liber mjaft popullor ne rrethet e programuesve per menyren e qarte te shpjegimit te koncepteve. Libri eshte shkruar per nivelin mesatar te njohurive dhe trajton me se shumti librarite lidhur me databazen.',70,'No Starch Press','2019-07-01',2000,400,'pythonCrash.jpg'),('PFP235','Python for Programmers ','Libri merret me subjektin e inteligjences artificiale dhe shkences se te dhenave. Niveli i lexuesit duhe te jete mbi mesataren',80,'Deitel','2019-05-01',1000,700,'pythonheavy.jpg'),('PHB782','Modern PHP: New Features and Good Practices','Libri me i fundit lidhur mbi PHP i cili trajton dhe ndryshimet e bera se fundmi. Keshtu sintaksa eshte rinovuar dhe shembujt jane shtuar.',50,'O\'Reilly Media','2017-04-02',1000,500,'phpbook.jpg'),('RPL200','The Rust Programming Language','Rust ka nje histori te shkurter krahasuar me gjuhet e tjera te programimit. Zhvilluesit e nxorren ate ne publik per here te pare ne vitin 2015. Qe atehere Rust ka pushtuar zemrat e programuesve duke kapur vendet e para ne indexet e StackOverflow drejtuar programuesve.',40,'No Starch Press','2020-01-28',1000,200,'theRustProgrammingLanguage.jpg'),('TPI333','Think Python: An Introduction to Software Design','Nder serine e librave mbi gjuhen Python ky liber eshte per te specializuarit. Ne vetvehte ka shembuj projektesh dhe zbatim metodash inxhinierike.',65,'O\'Reilly Media','2017-04-02',500,450,'thinkPython.png');
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

--
-- Final view structure for view `lajcak`
--

/*!50001 DROP VIEW IF EXISTS `lajcak`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lajcak` AS select `klienti`.`ID_Klient` AS `ID_Klient`,`klienti`.`Emri` AS `Emri`,`klienti`.`Mbiemri` AS `Mbiemri`,`klienti`.`Email` AS `Email`,`klienti`.`Fjalekalimi` AS `Fjalekalimi`,`klienti`.`Adresa` AS `Adresa`,`klienti`.`Qyteti` AS `Qyteti`,`klienti`.`Shteti` AS `Shteti`,`klienti`.`Kodi_postar` AS `Kodi_postar` from `klienti` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-29 14:24:37
