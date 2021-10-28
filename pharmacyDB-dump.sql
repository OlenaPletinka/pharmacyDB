-- MySQL dump 10.13  Distrib 8.0.24, for macos11 (x86_64)
--
-- Host: localhost    Database: pharmacyDB
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `second_name` varchar(45) NOT NULL,
  `signature` varchar(45) NOT NULL,
  `signet` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (4,'Tom','Bunny','sad','////'),(5,'Robbert','Lie','happy','*****'),(6,'Lisa','Hope','love','&&&&'),(7,'Tomas','Cat','catty','\\^-^/');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;

--
-- Table structure for table `form_name`
--

DROP TABLE IF EXISTS `form_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `form_name` (
  `id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_name`
--

/*!40000 ALTER TABLE `form_name` DISABLE KEYS */;
INSERT INTO `form_name` VALUES ('mixture'),('ointment'),('pills'),('powder'),('solution'),('tincture');
/*!40000 ALTER TABLE `form_name` ENABLE KEYS */;

--
-- Table structure for table `list_of_issued_orders`
--

DROP TABLE IF EXISTS `list_of_issued_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_of_issued_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issued_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_list_of_issued_orders_orders_idx` (`order_id`),
  CONSTRAINT `fk_list_of_issued_orders_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_of_issued_orders`
--

/*!40000 ALTER TABLE `list_of_issued_orders` DISABLE KEYS */;
INSERT INTO `list_of_issued_orders` VALUES (11,'2021-10-26 09:40:07',2),(12,'2021-10-26 09:40:07',4),(13,'2021-10-26 09:40:07',3),(14,'2021-10-26 09:40:07',8),(15,'2021-10-26 09:40:19',11);
/*!40000 ALTER TABLE `list_of_issued_orders` ENABLE KEYS */;

--
-- Table structure for table `manufacture_method`
--

DROP TABLE IF EXISTS `manufacture_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacture_method` (
  `id` int NOT NULL,
  `preparation_method_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacture_method`
--

/*!40000 ALTER TABLE `manufacture_method` DISABLE KEYS */;
INSERT INTO `manufacture_method` VALUES (1,'advocacy'),(2,'mix'),(3,'filtration');
/*!40000 ALTER TABLE `manufacture_method` ENABLE KEYS */;

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `dose` varchar(45) NOT NULL,
  `expiration_date` date DEFAULT NULL,
  `medicines_form_officinal_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_medicines_medicines_form_officinal1_idx` (`medicines_form_officinal_id`),
  CONSTRAINT `fk_medicines_medicines_form_officinal1` FOREIGN KEY (`medicines_form_officinal_id`) REFERENCES `medicines_form_officinal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` VALUES (1,'analgin','0,5','2024-12-12',1),(2,'voltaren','100 ml','2024-12-12',2),(3,'tincture of calendula','50 ml','2024-12-12',3),(4,'ivy syrup','50 ml','2024-12-12',3),(5,'isotonic solution','0,9% - 100 ml','2024-12-12',17),(6,'ethyl alcohol','70% - 100 ml','2024-12-12',16),(7,'chamomile flower powder','50 g','2024-12-12',5),(8,'suprastin','2 ml','2022-12-12',17),(10,'vitamin c','0,5','2022-12-12',1),(11,'cough medicine','100 ml','2022-12-12',3),(12,'furacillin solution','200 ml','2022-12-12',16),(13,'ointment for corns','50 g','2022-12-12',2),(14,'chestnut tincture','50 ml','2022-12-12',12),(16,'electrolyte','50 ml','2022-12-12',17),(17,'nurofen','0,5','2022-12-12',1),(18,'cardiomagnil','75 mg','2022-12-12',1),(19,'bisoprolol','10 mg','2022-12-16',1),(20,'vaselin','20,0','2022-12-16',2),(21,'valerian','0,1','2022-12-12',1);
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;

--
-- Table structure for table `medicines_form_officinal`
--

DROP TABLE IF EXISTS `medicines_form_officinal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines_form_officinal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_name` varchar(45) NOT NULL,
  `usage_method_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_medicines_form_officinal_form_name1_idx` (`form_name`),
  KEY `fk_medicines_form_officinal_usage_method1_idx` (`usage_method_id`),
  CONSTRAINT `fk_medicines_form_officinal_form_name1` FOREIGN KEY (`form_name`) REFERENCES `form_name` (`id`),
  CONSTRAINT `fk_medicines_form_officinal_usage_method1` FOREIGN KEY (`usage_method_id`) REFERENCES `usage_method` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines_form_officinal`
--

/*!40000 ALTER TABLE `medicines_form_officinal` DISABLE KEYS */;
INSERT INTO `medicines_form_officinal` VALUES (1,'pills','internal'),(2,'ointment','external'),(3,'tincture','internal'),(5,'powder','external'),(12,'tincture','external'),(16,'solution','external'),(17,'solution','internal');
/*!40000 ALTER TABLE `medicines_form_officinal` ENABLE KEYS */;

--
-- Table structure for table `medicines_form_prescription_drugs`
--

DROP TABLE IF EXISTS `medicines_form_prescription_drugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines_form_prescription_drugs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `form_name` varchar(45) NOT NULL,
  `method_id` varchar(45) DEFAULT NULL,
  `technology_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_medicines_form_form_name1_idx` (`form_name`),
  KEY `fk_medicines_form_method1_idx` (`method_id`),
  KEY `fk_medicines_form_technology_directory1_idx1` (`technology_id`),
  CONSTRAINT `fk_medicines_form_form_name1` FOREIGN KEY (`form_name`) REFERENCES `form_name` (`id`),
  CONSTRAINT `fk_medicines_form_method1` FOREIGN KEY (`method_id`) REFERENCES `usage_method` (`id`),
  CONSTRAINT `fk_medicines_form_technology_directory1` FOREIGN KEY (`technology_id`) REFERENCES `technology_directory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines_form_prescription_drugs`
--

/*!40000 ALTER TABLE `medicines_form_prescription_drugs` DISABLE KEYS */;
INSERT INTO `medicines_form_prescription_drugs` VALUES (4,'mixture','internal',1),(5,'powder','internal',2),(6,'solution','internal',1),(7,'solution','external',1),(8,'solution','mixing with other medicines',1),(9,'ointment','external',2),(10,'tincture','internal',1),(11,'tincture','external',1);
/*!40000 ALTER TABLE `medicines_form_prescription_drugs` ENABLE KEYS */;

--
-- Table structure for table `order_handbook`
--

DROP TABLE IF EXISTS `order_handbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_handbook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `request_id` int NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_order_handbook_request1_idx` (`request_id`),
  CONSTRAINT `fk_order_handbook_request1` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_handbook`
--

/*!40000 ALTER TABLE `order_handbook` DISABLE KEYS */;
INSERT INTO `order_handbook` VALUES (18,29,'2021-10-25 12:52:18'),(19,30,'2021-10-25 12:52:18'),(20,32,'2021-10-25 12:52:18'),(21,33,'2021-10-25 12:54:40'),(22,34,'2021-10-25 12:54:40'),(23,35,'2021-10-25 12:55:48');
/*!40000 ALTER TABLE `order_handbook` ENABLE KEYS */;

--
-- Table structure for table `order_handbook_in_production`
--

DROP TABLE IF EXISTS `order_handbook_in_production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_handbook_in_production` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `time_when_took_in_prod` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_issued` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_order_handbook_in_production_order_idx` (`order_id`),
  CONSTRAINT `fk_order_handbook_in_production_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_handbook_in_production`
--

/*!40000 ALTER TABLE `order_handbook_in_production` DISABLE KEYS */;
INSERT INTO `order_handbook_in_production` VALUES (22,2,'2021-10-25 12:52:18',1),(23,4,'2021-10-25 12:52:18',1),(24,1,'2021-10-25 12:53:04',0),(26,3,'2021-10-25 12:53:27',1),(27,7,'2021-10-25 12:54:40',0),(28,8,'2021-10-25 12:55:48',1),(29,10,'2021-10-25 12:55:48',0),(30,11,'2021-10-25 12:55:48',1);
/*!40000 ALTER TABLE `order_handbook_in_production` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `order_handbook_in_production_AFTER_UPDATE` AFTER UPDATE ON `order_handbook_in_production` FOR EACH ROW BEGIN
IF NEW.is_issued = 1 THEN
INSERT INTO list_of_issued_orders (order_id)
VALUES (NEW.order_id);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL,
  `is_present` tinyint NOT NULL DEFAULT '0',
  `recipe_id` int NOT NULL,
  `register_id` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_order_recipe1_idx` (`recipe_id`),
  KEY `fk_order_register1_idx` (`register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,0,9,1,'2021-10-25 12:52:18'),(2,1,10,2,'2021-10-25 12:52:18'),(3,0,11,3,'2021-10-25 12:52:18'),(4,1,12,4,'2021-10-25 12:52:18'),(5,0,13,1,'2021-10-25 12:54:40'),(6,0,14,2,'2021-10-25 12:54:40'),(7,1,15,3,'2021-10-25 12:54:40'),(8,1,16,1,'2021-10-25 12:55:48'),(9,0,17,2,'2021-10-25 12:55:48'),(10,1,20,3,'2021-10-25 12:55:48'),(11,1,21,4,'2021-10-25 12:55:48');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `orders_BEFORE_INSERT` BEFORE INSERT ON `orders` FOR EACH ROW BEGIN
IF ((SELECT COUNT(w.medicines_id) - COUNT(rhm.medicines_id) 
FROM recipe_has_medicines rhm
LEFT OUTER JOIN warehouse w 
ON rhm.medicines_id = w.medicines_id
WHERE rhm.recipe_id = NEW.recipe_id) = 0) THEN
SET NEW.is_present = 1;
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `orders_AFTER_INSERT` AFTER INSERT ON `orders` FOR EACH ROW BEGIN
IF NEW.is_present = 0 THEN
INSERT INTO request (quantity, medicines_id, orders_id) 
SELECT '100', rhm.medicines_id, NEW.id
FROM recipe_has_medicines rhm
LEFT OUTER JOIN warehouse w 
ON rhm.medicines_id = w.medicines_id
WHERE rhm.recipe_id = NEW.recipe_id AND w.medicines_id IS NULL;

ELSE

UPDATE recipe r 
JOIN medicines_form_prescription_drugs mfpd
ON r.medicines_form_id = mfpd.id
JOIN technology_directory td
ON mfpd.technology_id = td.id
SET preparation_time = (now()+ INTERVAL (td.preparation_time_min) MINUTE)
WHERE r.id = NEW.recipe_id;

INSERT INTO order_handbook_in_production (order_id) 
VALUES (NEW.id);

UPDATE warehouse w
JOIN recipe_has_medicines rhm
ON w.medicines_id = rhm.medicines_id
JOIN recipe r 
ON rhm.recipe_id = r.id
SET w.quantity = w.quantity - r.quantity
WHERE w.medicines_id = rhm.medicines_id AND r.id = NEW.recipe_id;

END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `second_name` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `diagnosis` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `adress` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Alex','Moon',32,'Fly','male','12345','Cooper Drive 33'),(2,'Sofie','Hunt',21,'Food Poisoning','female','32415','Marry Lane 34'),(3,'Lora','Woopy',43,'Allergy','female','56567','Cooper Drive 21'),(4,'Luk','Tomson',56,'Hypertension','male','90807','Cooper Drive 43'),(5,'Betty','Lu',45,'Сold','female','43678','Marry Lane 49'),(6,'Jim','Carry',67,'Corns','male','87950','Old Capitol 7A'),(7,'Sue ','Talor',34,'Food Poisoning','female','34768','Old Capitol 10'),(8,'David','Mirt',76,'Pain in leg','male','34627','Cooper Drive 43');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `prescription` varchar(245) NOT NULL,
  `preparation_time` datetime DEFAULT NULL,
  `patient_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `quantity` int NOT NULL,
  `medicines_form_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_recipe_patient1_idx` (`patient_id`),
  KEY `fk_recipe_doctor1_idx` (`doctor_id`),
  KEY `fk_recipe_medicines_form1_idx` (`medicines_form_id`),
  CONSTRAINT `fk_recipe_doctor1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`),
  CONSTRAINT `fk_recipe_medicines_form1` FOREIGN KEY (`medicines_form_id`) REFERENCES `medicines_form_prescription_drugs` (`id`),
  CONSTRAINT `fk_recipe_patient1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (9,'1 per day','2021-10-25 13:13:27',1,4,10,5),(10,'make tee with powder','2021-10-25 13:12:18',2,6,10,5),(11,'3 times per day','2021-10-25 13:13:27',3,5,1,9),(12,'3 times per day 1 spoon','2021-10-25 17:02:18',5,4,1,10),(13,'in the evening 1 spoon',NULL,4,6,1,10),(14,'lubricate corns',NULL,6,5,1,9),(15,'mix 5 ml with water and drink 5 times per day','2021-10-25 17:04:40',7,4,2,6),(16,'lubricate leg','2021-10-25 13:15:48',8,6,1,9),(17,'1 spoon 3 times per day',NULL,1,5,1,10),(20,'lubricate paintful zones','2021-10-25 13:15:48',8,4,1,9),(21,'lubricate paintful zones','2021-10-25 13:15:48',8,6,2,9);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;

--
-- Table structure for table `recipe_has_medicines`
--

DROP TABLE IF EXISTS `recipe_has_medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe_has_medicines` (
  `recipe_id` int NOT NULL,
  `medicines_id` int NOT NULL,
  PRIMARY KEY (`recipe_id`,`medicines_id`),
  KEY `fk_recipe_has_medicines_medicines1_idx` (`medicines_id`),
  KEY `fk_recipe_has_medicines_recipe1_idx` (`recipe_id`),
  CONSTRAINT `fk_recipe_has_medicines_medicines1` FOREIGN KEY (`medicines_id`) REFERENCES `medicines` (`id`),
  CONSTRAINT `fk_recipe_has_medicines_recipe1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_has_medicines`
--

/*!40000 ALTER TABLE `recipe_has_medicines` DISABLE KEYS */;
INSERT INTO `recipe_has_medicines` VALUES (9,1),(20,1),(21,1),(16,2),(21,2),(17,4),(15,5),(12,6),(13,6),(10,7),(11,7),(12,7),(10,10),(12,10),(17,11),(14,13),(15,16),(9,17),(14,17),(16,17),(11,20),(20,20),(13,21);
/*!40000 ALTER TABLE `recipe_has_medicines` ENABLE KEYS */;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `second_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'Tom','Harper'),(2,'Lussy','Pain'),(3,'Bob','Doggy'),(4,'Tom','Lauren');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `is_done` tinyint DEFAULT '0',
  `medicines_id` int NOT NULL,
  `time_of_request` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orders_id` int NOT NULL,
  PRIMARY KEY (`id`,`medicines_id`),
  KEY `fk_request_medicines1_idx` (`medicines_id`),
  KEY `fk_request_orders1_idx` (`orders_id`),
  CONSTRAINT `fk_request_medicines1` FOREIGN KEY (`medicines_id`) REFERENCES `medicines` (`id`),
  CONSTRAINT `fk_request_orders1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (29,100,1,1,'2021-10-25 12:52:18',1),(30,100,1,17,'2021-10-25 12:52:18',1),(32,100,1,20,'2021-10-25 12:52:18',3),(33,100,0,21,'2021-10-25 12:54:40',5),(34,100,0,13,'2021-10-25 12:54:40',6),(35,100,0,11,'2021-10-25 12:55:48',9);
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `request_AFTER_INSERT` AFTER INSERT ON `request` FOR EACH ROW BEGIN
INSERT INTO order_handbook (request_id) VALUES (NEW.id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `request_AFTER_UPDATE` AFTER UPDATE ON `request` FOR EACH ROW BEGIN
IF NEW.is_done = 1 THEN
INSERT INTO warehouse (quantity, cost, wholesale_price, medicines_id)
SELECT '100', cost*1.5, cost, medicines_id
FROM wholesale_warehouse
WHERE medicines_id = NEW.medicines_id;

UPDATE wholesale_warehouse SET quantity = quantity -100
WHERE medicines_id = NEW.medicines_id;

UPDATE recipe r 
JOIN orders o
ON r.id = o.recipe_id
JOIN medicines_form_prescription_drugs mfpd
ON r.medicines_form_id = mfpd.id
JOIN technology_directory td
ON mfpd.technology_id = td.id
SET preparation_time = (now()+ INTERVAL (td.preparation_time_min) MINUTE)
WHERE r.id = (SELECT recipe_id
FROM orders WHERE id = NEW.orders_id);

INSERT INTO order_handbook_in_production (order_id) 
VALUES (NEW.orders_id);

UPDATE warehouse w
JOIN recipe_has_medicines rhm
ON w.medicines_id = rhm.medicines_id
JOIN recipe r 
ON rhm.recipe_id = r.id
JOIN orders o
ON r.id = o.recipe_id
SET w.quantity = w.quantity - r.quantity
WHERE w.medicines_id = NEW.medicines_id AND o.id = NEW.orders_id;

END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `technology_directory`
--

DROP TABLE IF EXISTS `technology_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology_directory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `preparation_time_min` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology_directory`
--

/*!40000 ALTER TABLE `technology_directory` DISABLE KEYS */;
INSERT INTO `technology_directory` VALUES (0,0),(1,250),(2,20);
/*!40000 ALTER TABLE `technology_directory` ENABLE KEYS */;

--
-- Table structure for table `technology_of_manufacture`
--

DROP TABLE IF EXISTS `technology_of_manufacture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology_of_manufacture` (
  `manufacture_method_id` int NOT NULL,
  `technology_id` int NOT NULL,
  PRIMARY KEY (`manufacture_method_id`,`technology_id`),
  KEY `fk_method_of_medicines_manufacture_has_technology_directory_idx` (`technology_id`),
  KEY `fk_method_of_medicines_manufacture_has_technology_directory_idx1` (`manufacture_method_id`),
  CONSTRAINT `fk_method_of_medicines_manufacture_has_technology_directory_m1` FOREIGN KEY (`manufacture_method_id`) REFERENCES `manufacture_method` (`id`),
  CONSTRAINT `fk_method_of_medicines_manufacture_has_technology_directory_t1` FOREIGN KEY (`technology_id`) REFERENCES `technology_directory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology_of_manufacture`
--

/*!40000 ALTER TABLE `technology_of_manufacture` DISABLE KEYS */;
INSERT INTO `technology_of_manufacture` VALUES (1,1),(2,1),(3,1),(2,2);
/*!40000 ALTER TABLE `technology_of_manufacture` ENABLE KEYS */;

--
-- Table structure for table `usage_method`
--

DROP TABLE IF EXISTS `usage_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usage_method` (
  `id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_method`
--

/*!40000 ALTER TABLE `usage_method` DISABLE KEYS */;
INSERT INTO `usage_method` VALUES ('external'),('internal'),('mixing with other medicines');
/*!40000 ALTER TABLE `usage_method` ENABLE KEYS */;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `critical_norm` int NOT NULL DEFAULT '50',
  `quantity` int NOT NULL,
  `cost` decimal(6,2) NOT NULL,
  `wholesale_price` decimal(6,2) NOT NULL,
  `medicines_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_warehouse_medicines1_idx` (`medicines_id`),
  CONSTRAINT `fk_warehouse_medicines1` FOREIGN KEY (`medicines_id`) REFERENCES `medicines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (2,50,95,150.60,100.50,2),(3,50,1,28.10,19.00,3),(4,50,89,49.10,39.10,4),(5,50,105,24.30,18.00,5),(6,50,62,44.40,33.25,6),(7,50,13,32.90,22.30,7),(9,50,42,29.00,22.30,10),(38,50,100,34.50,27.00,19),(39,50,101,17.00,13.70,16),(51,50,87,46.20,30.80,1),(52,50,89,133.50,89.00,17),(53,50,98,25.50,17.00,20);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;

--
-- Table structure for table `wholesale_warehouse`
--

DROP TABLE IF EXISTS `wholesale_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wholesale_warehouse` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `cost` decimal(6,2) NOT NULL,
  `medicines_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_wholesale_warehouse_medicines1_idx` (`medicines_id`),
  CONSTRAINT `fk_wholesale_warehouse_medicines1` FOREIGN KEY (`medicines_id`) REFERENCES `medicines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wholesale_warehouse`
--

/*!40000 ALTER TABLE `wholesale_warehouse` DISABLE KEYS */;
INSERT INTO `wholesale_warehouse` VALUES (1,100,30.80,1),(2,234,100.50,2),(3,4320,19.00,3),(4,5460,39.10,4),(5,4560,18.00,5),(6,8900,33.25,6),(7,5430,22.30,7),(8,1230,130.20,8),(9,6530,22.30,10),(10,3360,89.00,17),(11,3300,46.40,18),(12,2680,27.00,19),(13,2650,17.00,20),(14,7680,21.50,21),(15,2360,45.30,11),(16,5000,12.00,12),(17,1900,98.20,13),(18,2030,32.10,14),(19,1900,13.70,16);
/*!40000 ALTER TABLE `wholesale_warehouse` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-28 11:58:06
