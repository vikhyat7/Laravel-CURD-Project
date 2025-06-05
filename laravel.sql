-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.22.04.1

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('X1yWiQKT9tRWuqgRqIGiyLDlnyDGmvVzX6ev05Td',NULL,'127.0.0.1','Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUk9TelZjRXRDSE5hUm16a1QwZTNieG1uVENmMnFEMFc5YzY1bEFXQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9saXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1749098219);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `email` varchar(125) NOT NULL,
  `phone` varchar(125) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2,'yash','yash@gmail.com','987654321','2025-06-04 11:31:27','2025-06-04 11:31:27'),(3,'abhay','abhay@gmail.com','1245','2025-06-04 11:31:50','2025-06-04 11:31:50'),(5,'piter','piter@gmail.com','2222','2025-06-04 11:58:18','2025-06-04 12:32:04'),(6,'jay','jay@gmail.com','85213','2025-06-05 04:04:16','2025-06-05 04:04:16'),(7,'Aarav Sharma','aarav.sharma1@example.com','9876543210','2025-06-05 09:40:02','2025-06-05 09:40:02'),(8,'Priya Mehta','priya.mehta2@example.com','9876543211','2025-06-05 09:40:02','2025-06-05 09:40:02'),(9,'Rahul Patel','rahul.patel3@example.com','9876543212','2025-06-05 09:40:02','2025-06-05 09:40:02'),(10,'Sneha Desai','sneha.desai4@example.com','9876543213','2025-06-05 09:40:02','2025-06-05 09:40:02'),(11,'Vikram Rao','vikram.rao5@example.com','9876543214','2025-06-05 09:40:02','2025-06-05 09:40:02'),(12,'Kajal Joshi','kajal.joshi6@example.com','9876543215','2025-06-05 09:40:02','2025-06-05 09:40:02'),(13,'Rohit Kumar','rohit.kumar7@example.com','9876543216','2025-06-05 09:40:02','2025-06-05 09:40:02'),(14,'Anjali Verma','anjali.verma8@example.com','9876543217','2025-06-05 09:40:02','2025-06-05 09:40:02'),(15,'Amit Singh','amit.singh9@example.com','9876543218','2025-06-05 09:40:02','2025-06-05 09:40:02'),(16,'Neha Rathi','neha.rathi10@example.com','9876543219','2025-06-05 09:40:02','2025-06-05 09:40:02'),(17,'Manish Soni','manish.soni11@example.com','9876543220','2025-06-05 09:40:02','2025-06-05 09:40:02'),(18,'Pooja Shah','pooja.shah12@example.com','9876543221','2025-06-05 09:40:02','2025-06-05 09:40:02'),(19,'Karan Yadav','karan.yadav13@example.com','9876543222','2025-06-05 09:40:02','2025-06-05 09:40:02'),(20,'Divya Nair','divya.nair14@example.com','9876543223','2025-06-05 09:40:02','2025-06-05 09:40:02'),(21,'Suresh Iyer','suresh.iyer15@example.com','9876543224','2025-06-05 09:40:02','2025-06-05 09:40:02'),(22,'Meena Rao','meena.rao16@example.com','9876543225','2025-06-05 09:40:02','2025-06-05 09:40:02'),(23,'Arjun Mehta','arjun.mehta17@example.com','9876543226','2025-06-05 09:40:02','2025-06-05 09:40:02'),(24,'Reena Das','reena.das18@example.com','9876543227','2025-06-05 09:40:02','2025-06-05 09:40:02'),(25,'Vivek Bhat','vivek.bhat19@example.com','9876543228','2025-06-05 09:40:02','2025-06-05 09:40:02'),(26,'Shweta Tiwari','shweta.tiwari20@example.com','9876543229','2025-06-05 09:40:02','2025-06-05 09:40:02'),(27,'Deepak Saxena','deepak.saxena21@example.com','9876543230','2025-06-05 09:40:02','2025-06-05 09:40:02'),(28,'Ritika Jain','ritika.jain22@example.com','9876543231','2025-06-05 09:40:02','2025-06-05 09:40:02'),(29,'Nikhil Goel','nikhil.goel23@example.com','9876543232','2025-06-05 09:40:02','2025-06-05 09:40:02'),(30,'Simran Kaur','simran.kaur24@example.com','9876543233','2025-06-05 09:40:02','2025-06-05 09:40:02'),(31,'Harshit Agarwal','harshit.agarwal25@example.com','9876543234','2025-06-05 09:40:02','2025-06-05 09:40:02'),(32,'Tanvi Mishra','tanvi.mishra26@example.com','9876543235','2025-06-05 09:40:02','2025-06-05 09:40:02'),(33,'Ramesh Sinha','ramesh.sinha27@example.com','9876543236','2025-06-05 09:40:02','2025-06-05 09:40:02'),(34,'Ishita Kapoor','ishita.kapoor28@example.com','9876543237','2025-06-05 09:40:02','2025-06-05 09:40:02'),(35,'Mohit Rana','mohit.rana29@example.com','9876543238','2025-06-05 09:40:02','2025-06-05 09:40:02'),(36,'Kriti Deshmukh','kriti.deshmukh30@example.com','9876543239','2025-06-05 09:40:02','2025-06-05 09:40:02'),(37,'Nilesh Thakur','nilesh.thakur31@example.com','9876543240','2025-06-05 09:40:02','2025-06-05 09:40:02'),(38,'Ananya Roy','ananya.roy32@example.com','9876543241','2025-06-05 09:40:02','2025-06-05 09:40:02'),(39,'Siddharth Nair','siddharth.nair33@example.com','9876543242','2025-06-05 09:40:02','2025-06-05 09:40:02'),(40,'Palak Bansal','palak.bansal34@example.com','9876543243','2025-06-05 09:40:02','2025-06-05 09:40:02'),(41,'Yash Chauhan','yash.chauhan35@example.com','9876543244','2025-06-05 09:40:02','2025-06-05 09:40:02'),(42,'Komal Bhatt','komal.bhatt36@example.com','9876543245','2025-06-05 09:40:02','2025-06-05 09:40:02'),(43,'Aditya Jadhav','aditya.jadhav37@example.com','9876543246','2025-06-05 09:40:02','2025-06-05 09:40:02'),(44,'Shruti Shetty','shruti.shetty38@example.com','9876543247','2025-06-05 09:40:02','2025-06-05 09:40:02'),(45,'Abhinav Rao','abhinav.rao39@example.com','9876543248','2025-06-05 09:40:02','2025-06-05 09:40:02'),(46,'Aishwarya Nair','aishwarya.nair40@example.com','9876543249','2025-06-05 09:40:02','2025-06-05 09:40:02'),(47,'Raj Malhotra','raj.malhotra41@example.com','9876543250','2025-06-05 09:40:02','2025-06-05 09:40:02'),(48,'Tanya Gupta','tanya.gupta42@example.com','9876543251','2025-06-05 09:40:02','2025-06-05 09:40:02'),(49,'Varun Joshi','varun.joshi43@example.com','9876543252','2025-06-05 09:40:02','2025-06-05 09:40:02'),(50,'Isha Sharma','isha.sharma44@example.com','9876543253','2025-06-05 09:40:02','2025-06-05 09:40:02'),(51,'Devendra Rao','devendra.rao45@example.com','9876543254','2025-06-05 09:40:02','2025-06-05 09:40:02'),(52,'Bhavna Yadav','bhavna.yadav46@example.com','9876543255','2025-06-05 09:40:02','2025-06-05 09:40:02'),(53,'Akshay Bansal','akshay.bansal47@example.com','9876543256','2025-06-05 09:40:02','2025-06-05 09:40:02'),(54,'Naina Sethi','naina.sethi48@example.com','9876543257','2025-06-05 09:40:02','2025-06-05 09:40:02'),(55,'Hemant Kumar','hemant.kumar49@example.com','9876543258','2025-06-05 09:40:02','2025-06-05 09:40:02'),(56,'Radhika Sen','radhika.sen50@example.com','9876543259','2025-06-05 09:40:02','2025-06-05 09:40:02'),(57,'Jatin Mehra','jatin.mehra51@example.com','9876543260','2025-06-05 09:40:02','2025-06-05 09:40:02'),(58,'Aarav Sharma','aarav.sharma1@example.com','9876543210','2025-06-05 09:52:07','2025-06-05 09:52:07'),(59,'Priya Mehta','priya.mehta2@example.com','9876543211','2025-06-05 09:52:07','2025-06-05 09:52:07'),(60,'Rahul Patel','rahul.patel3@example.com','9876543212','2025-06-05 09:52:07','2025-06-05 09:52:07'),(61,'Sneha Desai','sneha.desai4@example.com','9876543213','2025-06-05 09:52:07','2025-06-05 09:52:07'),(62,'Vikram Rao','vikram.rao5@example.com','9876543214','2025-06-05 09:52:07','2025-06-05 09:52:07'),(63,'Kajal Joshi','kajal.joshi6@example.com','9876543215','2025-06-05 09:52:07','2025-06-05 09:52:07'),(64,'Rohit Kumar','rohit.kumar7@example.com','9876543216','2025-06-05 09:52:07','2025-06-05 09:52:07'),(65,'Anjali Verma','anjali.verma8@example.com','9876543217','2025-06-05 09:52:07','2025-06-05 09:52:07'),(66,'Amit Singh','amit.singh9@example.com','9876543218','2025-06-05 09:52:07','2025-06-05 09:52:07'),(67,'Neha Rathi','neha.rathi10@example.com','9876543219','2025-06-05 09:52:07','2025-06-05 09:52:07'),(68,'Manish Soni','manish.soni11@example.com','9876543220','2025-06-05 09:52:07','2025-06-05 09:52:07'),(69,'Pooja Shah','pooja.shah12@example.com','9876543221','2025-06-05 09:52:07','2025-06-05 09:52:07'),(70,'Karan Yadav','karan.yadav13@example.com','9876543222','2025-06-05 09:52:07','2025-06-05 09:52:07'),(71,'Divya Nair','divya.nair14@example.com','9876543223','2025-06-05 09:52:07','2025-06-05 09:52:07'),(72,'Suresh Iyer','suresh.iyer15@example.com','9876543224','2025-06-05 09:52:07','2025-06-05 09:52:07'),(73,'Meena Rao','meena.rao16@example.com','9876543225','2025-06-05 09:52:07','2025-06-05 09:52:07'),(74,'Arjun Mehta','arjun.mehta17@example.com','9876543226','2025-06-05 09:52:07','2025-06-05 09:52:07'),(75,'Reena Das','reena.das18@example.com','9876543227','2025-06-05 09:52:07','2025-06-05 09:52:07'),(76,'Vivek Bhat','vivek.bhat19@example.com','9876543228','2025-06-05 09:52:07','2025-06-05 09:52:07'),(77,'Shweta Tiwari','shweta.tiwari20@example.com','9876543229','2025-06-05 09:52:07','2025-06-05 09:52:07'),(78,'Deepak Saxena','deepak.saxena21@example.com','9876543230','2025-06-05 09:52:07','2025-06-05 09:52:07'),(79,'Ritika Jain','ritika.jain22@example.com','9876543231','2025-06-05 09:52:07','2025-06-05 09:52:07'),(80,'Nikhil Goel','nikhil.goel23@example.com','9876543232','2025-06-05 09:52:07','2025-06-05 09:52:07'),(81,'Simran Kaur','simran.kaur24@example.com','9876543233','2025-06-05 09:52:07','2025-06-05 09:52:07'),(82,'Harshit Agarwal','harshit.agarwal25@example.com','9876543234','2025-06-05 09:52:07','2025-06-05 09:52:07'),(83,'Tanvi Mishra','tanvi.mishra26@example.com','9876543235','2025-06-05 09:52:07','2025-06-05 09:52:07'),(84,'Ramesh Sinha','ramesh.sinha27@example.com','9876543236','2025-06-05 09:52:07','2025-06-05 09:52:07'),(85,'Ishita Kapoor','ishita.kapoor28@example.com','9876543237','2025-06-05 09:52:07','2025-06-05 09:52:07'),(86,'Mohit Rana','mohit.rana29@example.com','9876543238','2025-06-05 09:52:07','2025-06-05 09:52:07'),(87,'Kriti Deshmukh','kriti.deshmukh30@example.com','9876543239','2025-06-05 09:52:07','2025-06-05 09:52:07'),(88,'Nilesh Thakur','nilesh.thakur31@example.com','9876543240','2025-06-05 09:52:07','2025-06-05 09:52:07'),(89,'Ananya Roy','ananya.roy32@example.com','9876543241','2025-06-05 09:52:07','2025-06-05 09:52:07'),(90,'Siddharth Nair','siddharth.nair33@example.com','9876543242','2025-06-05 09:52:07','2025-06-05 09:52:07'),(91,'Palak Bansal','palak.bansal34@example.com','9876543243','2025-06-05 09:52:07','2025-06-05 09:52:07'),(92,'Yash Chauhan','yash.chauhan35@example.com','9876543244','2025-06-05 09:52:07','2025-06-05 09:52:07'),(93,'Komal Bhatt','komal.bhatt36@example.com','9876543245','2025-06-05 09:52:07','2025-06-05 09:52:07'),(94,'Aditya Jadhav','aditya.jadhav37@example.com','9876543246','2025-06-05 09:52:07','2025-06-05 09:52:07'),(95,'Shruti Shetty','shruti.shetty38@example.com','9876543247','2025-06-05 09:52:07','2025-06-05 09:52:07'),(96,'Abhinav Rao','abhinav.rao39@example.com','9876543248','2025-06-05 09:52:07','2025-06-05 09:52:07'),(97,'Aishwarya Nair','aishwarya.nair40@example.com','9876543249','2025-06-05 09:52:07','2025-06-05 09:52:07'),(98,'Raj Malhotra','raj.malhotra41@example.com','9876543250','2025-06-05 09:52:07','2025-06-05 09:52:07'),(99,'Tanya Gupta','tanya.gupta42@example.com','9876543251','2025-06-05 09:52:07','2025-06-05 09:52:07'),(100,'Varun Joshi','varun.joshi43@example.com','9876543252','2025-06-05 09:52:07','2025-06-05 09:52:07'),(101,'Isha Sharma','isha.sharma44@example.com','9876543253','2025-06-05 09:52:07','2025-06-05 09:52:07'),(102,'Devendra Rao','devendra.rao45@example.com','9876543254','2025-06-05 09:52:07','2025-06-05 09:52:07'),(103,'Bhavna Yadav','bhavna.yadav46@example.com','9876543255','2025-06-05 09:52:07','2025-06-05 09:52:07'),(104,'Akshay Bansal','akshay.bansal47@example.com','9876543256','2025-06-05 09:52:07','2025-06-05 09:52:07'),(105,'Naina Sethi','naina.sethi48@example.com','9876543257','2025-06-05 09:52:07','2025-06-05 09:52:07'),(106,'Hemant Kumar','hemant.kumar49@example.com','9876543258','2025-06-05 09:52:07','2025-06-05 09:52:07'),(107,'Radhika Sen','radhika.sen50@example.com','9876543259','2025-06-05 09:52:07','2025-06-05 09:52:07'),(108,'Jatin Mehra','jatin.mehra51@example.com','9876543260','2025-06-05 09:52:07','2025-06-05 09:52:07'),(109,'Lakshmi Menon','lakshmi.menon52@example.com','9876543261','2025-06-05 09:52:07','2025-06-05 09:52:07'),(110,'Sanjay Tiwari','sanjay.tiwari53@example.com','9876543262','2025-06-05 09:52:07','2025-06-05 09:52:07'),(111,'Mehul Shah','mehul.shah54@example.com','9876543263','2025-06-05 09:52:07','2025-06-05 09:52:07'),(112,'Pallavi Dixit','pallavi.dixit55@example.com','9876543264','2025-06-05 09:52:07','2025-06-05 09:52:07'),(113,'Dhruv Bhatia','dhruv.bhatia56@example.com','9876543265','2025-06-05 09:52:07','2025-06-05 09:52:07'),(114,'Nikita Rawal','nikita.rawal57@example.com','9876543266','2025-06-05 09:52:07','2025-06-05 09:52:07'),(115,'Rajeev Saxena','rajeev.saxena58@example.com','9876543267','2025-06-05 09:52:07','2025-06-05 09:52:07'),(116,'Payal Jain','payal.jain59@example.com','9876543268','2025-06-05 09:52:07','2025-06-05 09:52:07'),(117,'Tarun Kapoor','tarun.kapoor60@example.com','9876543269','2025-06-05 09:52:07','2025-06-05 09:52:07'),(118,'Sheetal Reddy','sheetal.reddy61@example.com','9876543270','2025-06-05 09:52:07','2025-06-05 09:52:07'),(119,'Vinit Shekhawat','vinit.shekhawat62@example.com','9876543271','2025-06-05 09:52:07','2025-06-05 09:52:07'),(120,'Ankita Bansal','ankita.bansal63@example.com','9876543272','2025-06-05 09:52:07','2025-06-05 09:52:07'),(121,'Arvind Prasad','arvind.prasad64@example.com','9876543273','2025-06-05 09:52:07','2025-06-05 09:52:07'),(122,'Bhavya Mehta','bhavya.mehta65@example.com','9876543274','2025-06-05 09:52:07','2025-06-05 09:52:07'),(123,'Sonal Tyagi','sonal.tyagi66@example.com','9876543275','2025-06-05 09:52:07','2025-06-05 09:52:07'),(124,'Ritik Sharma','ritik.sharma67@example.com','9876543276','2025-06-05 09:52:07','2025-06-05 09:52:07'),(125,'Mansi Jain','mansi.jain68@example.com','9876543277','2025-06-05 09:52:07','2025-06-05 09:52:07'),(126,'Kishore Patel','kishore.patel69@example.com','9876543278','2025-06-05 09:52:07','2025-06-05 09:52:07'),(127,'Rekha Verma','rekha.verma70@example.com','9876543279','2025-06-05 09:52:07','2025-06-05 09:52:07'),(128,'Anurag Yadav','anurag.yadav71@example.com','9876543280','2025-06-05 09:52:07','2025-06-05 09:52:07'),(129,'Trisha Kapoor','trisha.kapoor72@example.com','9876543281','2025-06-05 09:52:07','2025-06-05 09:52:07'),(130,'Jay Sethi','jay.sethi73@example.com','9876543282','2025-06-05 09:52:07','2025-06-05 09:52:07'),(131,'Alok Mishra','alok.mishra74@example.com','9876543283','2025-06-05 09:52:07','2025-06-05 09:52:07'),(132,'Prachi Khandelwal','prachi.khandelwal75@example.com','9876543284','2025-06-05 09:52:07','2025-06-05 09:52:07'),(133,'Rohini Dutta','rohini.dutta76@example.com','9876543285','2025-06-05 09:52:07','2025-06-05 09:52:07'),(134,'Ravi Teja','ravi.teja77@example.com','9876543286','2025-06-05 09:52:07','2025-06-05 09:52:07'),(135,'Shraddha Salunkhe','shraddha.salunkhe78@example.com','9876543287','2025-06-05 09:52:07','2025-06-05 09:52:07'),(136,'Ashok Kumar','ashok.kumar79@example.com','9876543288','2025-06-05 09:52:07','2025-06-05 09:52:07'),(137,'Nandita Ghosh','nandita.ghosh80@example.com','9876543289','2025-06-05 09:52:07','2025-06-05 09:52:07'),(138,'Satish Kumar','satish.kumar81@example.com','9876543290','2025-06-05 09:52:07','2025-06-05 09:52:07'),(139,'Mallika Das','mallika.das82@example.com','9876543291','2025-06-05 09:52:07','2025-06-05 09:52:07'),(140,'Devansh Rawat','devansh.rawat83@example.com','9876543292','2025-06-05 09:52:07','2025-06-05 09:52:07'),(141,'Preeti Shetty','preeti.shetty84@example.com','9876543293','2025-06-05 09:52:07','2025-06-05 09:52:07'),(142,'Ayaan Khan','ayaan.khan85@example.com','9876543294','2025-06-05 09:52:07','2025-06-05 09:52:07'),(143,'Poonam Jadhav','poonam.jadhav86@example.com','9876543295','2025-06-05 09:52:07','2025-06-05 09:52:07'),(144,'Sameer Vora','sameer.vora87@example.com','9876543296','2025-06-05 09:52:07','2025-06-05 09:52:07'),(145,'Karishma Malik','karishma.malik88@example.com','9876543297','2025-06-05 09:52:07','2025-06-05 09:52:07'),(146,'Dheeraj Singh','dheeraj.singh89@example.com','9876543298','2025-06-05 09:52:07','2025-06-05 09:52:07'),(147,'Juhi Bedi','juhi.bedi90@example.com','9876543299','2025-06-05 09:52:07','2025-06-05 09:52:07'),(148,'Mayank Arora','mayank.arora91@example.com','9876543300','2025-06-05 09:52:07','2025-06-05 09:52:07'),(149,'Chirag Patel','chirag.patel92@example.com','9876543301','2025-06-05 09:52:07','2025-06-05 09:52:07'),(150,'Sonali Desai','sonali.desai93@example.com','9876543302','2025-06-05 09:52:07','2025-06-05 09:52:07'),(151,'Vipul Jain','vipul.jain94@example.com','9876543303','2025-06-05 09:52:07','2025-06-05 09:52:07'),(152,'Aarti Pandey','aarti.pandey95@example.com','9876543304','2025-06-05 09:52:07','2025-06-05 09:52:07'),(153,'Kunal Vyas','kunal.vyas96@example.com','9876543305','2025-06-05 09:52:07','2025-06-05 09:52:07'),(154,'Meghna Sharma','meghna.sharma97@example.com','9876543306','2025-06-05 09:52:07','2025-06-05 09:52:07'),(155,'Bhavesh Shah','bhavesh.shah98@example.com','9876543307','2025-06-05 09:52:07','2025-06-05 09:52:07'),(156,'Tina Paul','tina.paul99@example.com','9876543308','2025-06-05 09:52:07','2025-06-05 09:52:07');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-05 11:08:33
