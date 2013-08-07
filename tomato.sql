-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: NLA_development2
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.10.1

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addresses_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,'asd','',NULL,'','2013-07-26 18:28:36','2013-07-26 18:28:36'),(2,2,'qwe','',NULL,'','2013-07-26 19:59:03','2013-07-26 19:59:03'),(3,3,'502 N. Sheridan Ave.','Pittsburgh',NULL,'15206','2013-07-30 17:13:38','2013-07-30 17:13:38'),(4,1,'502 N. Sheridan Ave.','Pittsburgh',NULL,'15206','2013-07-31 15:33:42','2013-07-31 15:33:42'),(5,2,'','',NULL,'','2013-07-31 15:34:01','2013-07-31 15:34:01'),(6,3,'502 N. Sheridan Ave.','Pittsburgh',NULL,'15206','2013-07-31 15:35:08','2013-07-31 15:35:08'),(7,4,'502 N. Sheridan Ave.','Pittsburgh',NULL,'15206','2013-07-31 15:46:47','2013-07-31 15:46:47'),(8,5,'502 N. Sheridan Ave.','Pittsburgh',NULL,'15206','2013-07-31 17:44:00','2013-07-31 17:44:00'),(9,6,'','',NULL,'','2013-07-31 19:14:25','2013-07-31 19:14:25'),(10,7,'','',NULL,'','2013-07-31 19:14:44','2013-07-31 19:14:44'),(11,8,'','',NULL,'','2013-08-02 18:16:30','2013-08-02 18:16:30'),(12,8,'','',NULL,'','2013-08-02 18:16:30','2013-08-02 18:16:30'),(13,9,'1000 Catman Place','Pittsburgh',NULL,'15213','2013-08-06 19:45:01','2013-08-06 19:45:01'),(14,9,'2000 Some Place','Else',NULL,'15213','2013-08-06 19:45:01','2013-08-06 19:45:01'),(15,10,'','',NULL,'','2013-08-06 20:33:06','2013-08-06 20:33:06'),(16,10,'123  My Street Name','PIttsburgh',NULL,'15293','2013-08-07 18:33:18','2013-08-07 18:33:18');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allergies`
--

DROP TABLE IF EXISTS `allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allergies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allergies`
--

LOCK TABLES `allergies` WRITE;
/*!40000 ALTER TABLE `allergies` DISABLE KEYS */;
INSERT INTO `allergies` VALUES (1,'Peanuts',NULL,NULL);
/*!40000 ALTER TABLE `allergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availabilities`
--

DROP TABLE IF EXISTS `availabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `day_of_week` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_availabilities_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availabilities`
--

LOCK TABLES `availabilities` WRITE;
/*!40000 ALTER TABLE `availabilities` DISABLE KEYS */;
INSERT INTO `availabilities` VALUES (1,8,NULL,NULL,NULL,'2013-08-02 18:16:30','2013-08-02 18:16:30');
/*!40000 ALTER TABLE `availabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emergency_contacts`
--

DROP TABLE IF EXISTS `emergency_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emergency_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_emergency_contacts_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergency_contacts`
--

LOCK TABLES `emergency_contacts` WRITE;
/*!40000 ALTER TABLE `emergency_contacts` DISABLE KEYS */;
INSERT INTO `emergency_contacts` VALUES (1,1,'asd','123','asd','2013-07-26 18:28:36','2013-07-26 18:28:36'),(2,2,'yada','','','2013-07-26 19:59:03','2013-07-26 19:59:03'),(3,3,'Vicente Delatorre','4127088783','','2013-07-30 17:13:38','2013-07-30 17:13:38'),(4,1,'Vicente Delatorre','4127088783','','2013-07-31 15:33:42','2013-07-31 15:33:42'),(5,2,'','','','2013-07-31 15:34:01','2013-07-31 15:34:01'),(6,3,'Vicente Delatorre','4127088783','','2013-07-31 15:35:08','2013-07-31 15:35:08'),(7,4,'Vicente Delatorre','4127088783','','2013-07-31 15:46:47','2013-07-31 15:46:47'),(8,5,'Vicente Delatorre','4127088783','','2013-07-31 17:44:00','2013-07-31 17:44:00'),(9,6,'','','','2013-07-31 19:14:25','2013-07-31 19:14:25'),(10,7,'','','','2013-07-31 19:14:44','2013-07-31 19:14:44'),(11,8,'','','','2013-08-02 18:16:30','2013-08-02 18:16:30'),(12,9,'','','','2013-08-06 19:45:01','2013-08-06 19:45:01'),(13,10,'','','','2013-08-06 20:33:06','2013-08-06 20:33:06'),(14,10,'Emergency Contact!','123-123-1233','My homie','2013-08-07 18:33:18','2013-08-07 18:33:18');
/*!40000 ALTER TABLE `emergency_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment_courses`
--

DROP TABLE IF EXISTS `enrollment_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_enrollment_id` int(11) DEFAULT NULL,
  `novanet_course_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_courses`
--

LOCK TABLES `enrollment_courses` WRITE;
/*!40000 ALTER TABLE `enrollment_courses` DISABLE KEYS */;
INSERT INTO `enrollment_courses` VALUES (4,2,1,'2013-08-05 19:35:03','2013-08-05 19:35:03',NULL),(5,2,2,'2013-08-05 19:41:45','2013-08-05 19:41:45',NULL);
/*!40000 ALTER TABLE `enrollment_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_employees`
--

DROP TABLE IF EXISTS `event_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_event_employees_on_event_id` (`event_id`),
  KEY `index_event_employees_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_employees`
--

LOCK TABLES `event_employees` WRITE;
/*!40000 ALTER TABLE `event_employees` DISABLE KEYS */;
INSERT INTO `event_employees` VALUES (2,3,2,'Food Service','2013-07-17 19:33:37','2013-07-17 19:33:37'),(3,3,3,'Coordinator','2013-07-17 19:38:24','2013-07-17 19:38:24'),(4,3,1,'ttt','2013-07-17 20:02:42','2013-07-17 20:02:42');
/*!40000 ALTER TABLE `event_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (3,'Help! Santa is broke!','2013-07-12 13:30:54','2013-07-17 17:28:56','Lunch Fundraiser','Ice Cap','100 AnyStreet Ave.','North Pole','PA','12345','11:00 PM','Will make the Polar Bears Happy!','2013-06-20 00:00:00'),(5,'Trip to Carnegie Science Center','2013-07-14 02:39:56','2013-07-14 04:03:55','Museum Trip','Carnegie Science Center','11 somewhere','Pittsburgh','PA','15234','12:00 AM',NULL,'2013-06-20 00:00:00'),(7,'Scrooge\'s Luncheon','2013-07-17 17:30:57','2013-07-17 17:30:57','Lunch Fundraiser','NLA Office','10 Main St.','New York City','NY','11346','5:00 PM','He doesn\'t actually need money.','2013-06-20 00:00:00');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (1,'Child Abuse Clearance','Background check for people working with kids','2013-07-24 16:52:01','2013-07-24 16:52:01');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_interests_on_program_id` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medications`
--

DROP TABLE IF EXISTS `medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medications`
--

LOCK TABLES `medications` WRITE;
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
INSERT INTO `medications` VALUES (1,'Vitamins',NULL,NULL);
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novanet_courses`
--

DROP TABLE IF EXISTS `novanet_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `novanet_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novanet_courses`
--

LOCK TABLES `novanet_courses` WRITE;
/*!40000 ALTER TABLE `novanet_courses` DISABLE KEYS */;
INSERT INTO `novanet_courses` VALUES (1,'English 2A','English','2013-08-05 17:26:18','2013-08-05 17:26:18'),(2,'English 2B','English','2013-08-05 17:27:15','2013-08-05 17:27:15'),(3,'Algebra A','Math','2013-08-06 18:16:09','2013-08-06 18:16:09');
/*!40000 ALTER TABLE `novanet_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `race` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `household_number_of_members` int(11) DEFAULT NULL,
  `in_foster_care` tinyint(1) DEFAULT NULL,
  `school_lunch_program` varchar(255) DEFAULT NULL,
  `clinic_name` varchar(255) DEFAULT NULL,
  `clinic_street_address` varchar(255) DEFAULT NULL,
  `clinic_city` varchar(255) DEFAULT NULL,
  `clinic_state` varchar(255) DEFAULT NULL,
  `clinic_zip_code` varchar(255) DEFAULT NULL,
  `clinic_phone_number` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `vegetarian` tinyint(1) DEFAULT NULL,
  `other_food_needs` varchar(255) DEFAULT NULL,
  `physical_impairments` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Vicente','Delatorre',NULL,NULL,'','caroldelatorre@verizon.net',NULL,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-31 15:33:42','2013-07-31 15:33:42',NULL,0,NULL,NULL,NULL,NULL),(2,'Walter','',NULL,NULL,'','',NULL,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-31 15:34:01','2013-07-31 15:34:01',NULL,0,NULL,NULL,NULL,NULL),(3,'Vicente','Delatorre',NULL,NULL,'','caroldelatorre@verizon.net',NULL,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-31 15:35:08','2013-07-31 15:35:08',NULL,0,NULL,NULL,NULL,NULL),(4,'Vicente','Delatorre',NULL,NULL,'','caroldelatorre@verizon.net',NULL,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-31 15:46:47','2013-07-31 15:46:47',NULL,0,NULL,NULL,NULL,NULL),(5,'Vicente','Delatorre',NULL,NULL,'','caroldelatorre@verizon.net',NULL,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-31 17:44:00','2013-07-31 17:44:00',NULL,0,NULL,NULL,NULL,NULL),(7,'Bob','Duck',0,'1993-08-08 00:00:00','hispanic','',NULL,1,1,'does not qualify',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-07-31 19:14:44','2013-07-31 19:14:44',NULL,1,NULL,NULL,NULL,NULL),(8,'Yada','Zhai',1,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-08-02 18:16:30','2013-08-02 18:16:30',NULL,NULL,NULL,NULL,NULL,NULL),(9,'Lindsay','Child',0,NULL,'','',NULL,NULL,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-08-06 19:45:01','2013-08-06 19:45:01',NULL,0,NULL,NULL,NULL,NULL),(10,'Sara','Humel',0,'1999-02-19 00:00:00','caucasian','myemailaddress@gmail.com',NULL,6,0,'reduced',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2013-08-07 18:33:18','2013-08-07 18:33:18',9,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_allergies`
--

DROP TABLE IF EXISTS `person_allergies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_allergies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `allergy_id` int(11) DEFAULT NULL,
  `severity` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_person_allergies_on_person_id` (`person_id`),
  KEY `index_person_allergies_on_allergy_id` (`allergy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_allergies`
--

LOCK TABLES `person_allergies` WRITE;
/*!40000 ALTER TABLE `person_allergies` DISABLE KEYS */;
INSERT INTO `person_allergies` VALUES (1,2,1,NULL,'','2013-07-26 19:59:03','2013-07-26 19:59:03'),(2,3,NULL,NULL,'','2013-07-30 17:13:38','2013-07-30 17:13:38'),(3,1,NULL,NULL,'','2013-07-31 15:33:42','2013-07-31 15:33:42'),(4,2,NULL,NULL,'','2013-07-31 15:34:01','2013-07-31 15:34:01'),(5,3,NULL,NULL,'','2013-07-31 15:35:08','2013-07-31 15:35:08'),(6,4,NULL,NULL,'','2013-07-31 15:46:47','2013-07-31 15:46:47'),(7,5,NULL,NULL,'','2013-07-31 17:44:00','2013-07-31 17:44:00'),(8,6,NULL,NULL,'','2013-07-31 19:14:25','2013-07-31 19:14:25'),(9,7,NULL,NULL,'','2013-07-31 19:14:44','2013-07-31 19:14:44'),(10,9,NULL,NULL,'','2013-08-06 19:45:01','2013-08-06 19:45:01'),(11,10,NULL,NULL,'','2013-08-06 20:33:06','2013-08-06 20:33:06'),(12,10,NULL,NULL,'','2013-08-07 18:33:18','2013-08-07 18:33:18');
/*!40000 ALTER TABLE `person_allergies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_events`
--

DROP TABLE IF EXISTS `person_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `contacted` tinyint(1) DEFAULT NULL,
  `responded` tinyint(1) DEFAULT NULL,
  `attending` tinyint(1) DEFAULT NULL,
  `attended` tinyint(1) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_person_events_on_event_id` (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_events`
--

LOCK TABLES `person_events` WRITE;
/*!40000 ALTER TABLE `person_events` DISABLE KEYS */;
INSERT INTO `person_events` VALUES (1,NULL,'2013-07-15 17:22:12','2013-07-15 17:22:12',1,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'2013-07-15 17:22:12','2013-07-15 17:22:12',2,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'2013-07-15 17:22:13','2013-07-15 17:22:13',4,NULL,NULL,NULL,NULL,NULL,NULL),(4,3,'2013-07-15 17:25:25','2013-07-19 04:38:50',1,1,1,0,1,1,''),(12,3,'2013-07-15 17:47:49','2013-07-19 05:17:01',2,1,1,0,1,1,'Delia'),(48,7,'2013-07-17 17:31:20','2013-07-17 17:34:34',1,0,0,0,1,0,'');
/*!40000 ALTER TABLE `person_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_interests`
--

DROP TABLE IF EXISTS `person_interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_interests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `interest_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_person_interests_on_person_id` (`person_id`),
  KEY `index_person_interests_on_interest_id` (`interest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_interests`
--

LOCK TABLES `person_interests` WRITE;
/*!40000 ALTER TABLE `person_interests` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_medications`
--

DROP TABLE IF EXISTS `person_medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_medications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `medication_id` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_person_medications_on_person_id` (`person_id`),
  KEY `index_person_medications_on_medication_id` (`medication_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_medications`
--

LOCK TABLES `person_medications` WRITE;
/*!40000 ALTER TABLE `person_medications` DISABLE KEYS */;
INSERT INTO `person_medications` VALUES (1,2,1,'','2013-07-26 19:59:03','2013-07-26 19:59:03'),(2,3,NULL,'','2013-07-30 17:13:38','2013-07-30 17:13:38'),(3,1,NULL,'','2013-07-31 15:33:42','2013-07-31 15:33:42'),(4,2,NULL,'','2013-07-31 15:34:01','2013-07-31 15:34:01'),(5,3,NULL,'','2013-07-31 15:35:08','2013-07-31 15:35:08'),(6,4,NULL,'','2013-07-31 15:46:47','2013-07-31 15:46:47'),(7,5,NULL,'','2013-07-31 17:44:00','2013-07-31 17:44:00'),(8,6,NULL,'','2013-07-31 19:14:25','2013-07-31 19:14:25'),(9,7,NULL,'','2013-07-31 19:14:44','2013-07-31 19:14:44'),(10,9,NULL,'','2013-08-06 19:45:01','2013-08-06 19:45:01'),(11,10,NULL,'','2013-08-06 20:33:06','2013-08-06 20:33:06'),(12,10,NULL,'','2013-08-07 18:33:18','2013-08-07 18:33:18');
/*!40000 ALTER TABLE `person_medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_role_forms`
--

DROP TABLE IF EXISTS `person_role_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_role_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_role_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `complete` tinyint(1) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_person_role_forms_on_person_role_id` (`person_role_id`),
  KEY `index_person_role_forms_on_form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_role_forms`
--

LOCK TABLES `person_role_forms` WRITE;
/*!40000 ALTER TABLE `person_role_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_role_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_roles`
--

DROP TABLE IF EXISTS `person_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_person_roles_on_person_id` (`person_id`),
  KEY `index_person_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_roles`
--

LOCK TABLES `person_roles` WRITE;
/*!40000 ALTER TABLE `person_roles` DISABLE KEYS */;
INSERT INTO `person_roles` VALUES (1,5,1,'2013-07-31 17:44:01','2013-07-31 17:44:01'),(2,6,1,'2013-07-31 19:14:25','2013-07-31 19:14:25'),(3,7,1,'2013-07-31 19:14:44','2013-07-31 19:14:44'),(4,8,2,'2013-08-02 18:16:30','2013-08-02 18:16:30'),(5,9,1,'2013-08-06 19:45:01','2013-08-06 19:45:01'),(6,10,1,'2013-08-06 20:33:06','2013-08-06 20:33:06'),(7,10,1,'2013-08-07 18:33:18','2013-08-07 18:33:18');
/*!40000 ALTER TABLE `person_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_schools`
--

DROP TABLE IF EXISTS `person_schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `start_grade` int(11) DEFAULT NULL,
  `counselor_name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_person_schools_on_person_id` (`person_id`),
  KEY `index_person_schools_on_school_id` (`school_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_schools`
--

LOCK TABLES `person_schools` WRITE;
/*!40000 ALTER TABLE `person_schools` DISABLE KEYS */;
INSERT INTO `person_schools` VALUES (1,2,1,NULL,'','2013-07-26 19:59:03','2013-07-26 19:59:03'),(2,3,NULL,NULL,'','2013-07-30 17:13:38','2013-07-30 17:13:38'),(3,1,NULL,NULL,'','2013-07-31 15:33:42','2013-07-31 15:33:42'),(4,2,NULL,NULL,'','2013-07-31 15:34:01','2013-07-31 15:34:01'),(5,3,NULL,NULL,'','2013-07-31 15:35:08','2013-07-31 15:35:08'),(6,4,NULL,NULL,'','2013-07-31 15:46:47','2013-07-31 15:46:47'),(7,5,NULL,NULL,'','2013-07-31 17:44:00','2013-07-31 17:44:00'),(8,6,NULL,NULL,'','2013-07-31 19:14:25','2013-07-31 19:14:25'),(9,7,NULL,NULL,'','2013-07-31 19:14:44','2013-07-31 19:14:44'),(10,9,NULL,NULL,'','2013-08-06 19:45:01','2013-08-06 19:45:01'),(11,10,NULL,NULL,'','2013-08-06 20:33:06','2013-08-06 20:33:06'),(12,10,1,3,'Betty','2013-08-07 18:33:18','2013-08-07 18:33:18');
/*!40000 ALTER TABLE `person_schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_supports`
--

DROP TABLE IF EXISTS `person_supports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_supports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `support_service_id` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_person_supports_on_person_id` (`person_id`),
  KEY `index_person_supports_on_support_service_id` (`support_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_supports`
--

LOCK TABLES `person_supports` WRITE;
/*!40000 ALTER TABLE `person_supports` DISABLE KEYS */;
INSERT INTO `person_supports` VALUES (1,2,1,'','2013-07-26 19:59:03','2013-07-26 19:59:03'),(2,3,NULL,'','2013-07-30 17:13:38','2013-07-30 17:13:38'),(3,1,NULL,'','2013-07-31 15:33:42','2013-07-31 15:33:42'),(4,2,NULL,'','2013-07-31 15:34:01','2013-07-31 15:34:01'),(5,3,NULL,'','2013-07-31 15:35:08','2013-07-31 15:35:08'),(6,4,NULL,'','2013-07-31 15:46:47','2013-07-31 15:46:47'),(7,5,NULL,'','2013-07-31 17:44:00','2013-07-31 17:44:00'),(8,6,NULL,'','2013-07-31 19:14:25','2013-07-31 19:14:25'),(9,7,NULL,'','2013-07-31 19:14:44','2013-07-31 19:14:44'),(10,9,NULL,'','2013-08-06 19:45:01','2013-08-06 19:45:01'),(11,10,NULL,'','2013-08-06 20:33:06','2013-08-06 20:33:06'),(12,10,NULL,'','2013-08-07 18:33:18','2013-08-07 18:33:18');
/*!40000 ALTER TABLE `person_supports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_numbers`
--

DROP TABLE IF EXISTS `phone_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_phone_numbers_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_numbers`
--

LOCK TABLES `phone_numbers` WRITE;
/*!40000 ALTER TABLE `phone_numbers` DISABLE KEYS */;
INSERT INTO `phone_numbers` VALUES (1,2,'123','','2013-07-26 19:59:03','2013-07-26 19:59:03'),(2,3,'4127088783','','2013-07-30 17:13:38','2013-07-30 17:13:38'),(3,1,'4127088783','','2013-07-31 15:33:42','2013-07-31 15:33:42'),(4,2,'','','2013-07-31 15:34:01','2013-07-31 15:34:01'),(5,3,'4127088783','','2013-07-31 15:35:08','2013-07-31 15:35:08'),(6,4,'4127088783','','2013-07-31 15:46:47','2013-07-31 15:46:47'),(7,5,'4127088783','','2013-07-31 17:44:00','2013-07-31 17:44:00'),(8,6,'','','2013-07-31 19:14:25','2013-07-31 19:14:25'),(9,7,'','','2013-07-31 19:14:44','2013-07-31 19:14:44'),(10,8,'','','2013-08-02 18:16:30','2013-08-02 18:16:30'),(11,9,'','','2013-08-06 19:45:01','2013-08-06 19:45:01'),(12,10,'','','2013-08-06 20:33:06','2013-08-06 20:33:06'),(13,10,'909-435-3945','','2013-08-07 18:33:18','2013-08-07 18:33:18');
/*!40000 ALTER TABLE `phone_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_attendances`
--

DROP TABLE IF EXISTS `program_attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program_attendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_enrollment_id` int(11) DEFAULT NULL,
  `program_date_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_program_attendances_on_program_enrollment_id` (`program_enrollment_id`),
  KEY `index_program_attendances_on_program_date_id` (`program_date_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_attendances`
--

LOCK TABLES `program_attendances` WRITE;
/*!40000 ALTER TABLE `program_attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `program_attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_dates`
--

DROP TABLE IF EXISTS `program_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program_dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_program_dates_on_program_id` (`program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_dates`
--

LOCK TABLES `program_dates` WRITE;
/*!40000 ALTER TABLE `program_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `program_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_employees`
--

DROP TABLE IF EXISTS `program_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_location_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `job_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_program_employees_on_program_location_id` (`program_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_employees`
--

LOCK TABLES `program_employees` WRITE;
/*!40000 ALTER TABLE `program_employees` DISABLE KEYS */;
INSERT INTO `program_employees` VALUES (1,1,8,'tutor','2013-08-02 21:27:43','2013-08-02 21:27:43');
/*!40000 ALTER TABLE `program_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_enrollments`
--

DROP TABLE IF EXISTS `program_enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program_enrollments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_program_enrollments_on_program_location_id` (`program_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_enrollments`
--

LOCK TABLES `program_enrollments` WRITE;
/*!40000 ALTER TABLE `program_enrollments` DISABLE KEYS */;
INSERT INTO `program_enrollments` VALUES (1,1,'2013-07-24 15:55:00','2013-07-24 15:55:00',2),(2,1,'2013-07-30 15:12:35','2013-07-30 15:12:35',1);
/*!40000 ALTER TABLE `program_enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_locations`
--

DROP TABLE IF EXISTS `program_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `program_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_program_locations_on_program_id` (`program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_locations`
--

LOCK TABLES `program_locations` WRITE;
/*!40000 ALTER TABLE `program_locations` DISABLE KEYS */;
INSERT INTO `program_locations` VALUES (1,1,'NLA/BGC','5429 Penn Ave','2013-07-24 15:54:32','2013-07-24 15:54:32',NULL,NULL,NULL,NULL,NULL),(2,1,'Allderdice','2409 Shady Ave Pittsburgh 15217','2013-07-30 15:13:32','2013-07-30 15:13:32',NULL,NULL,NULL,NULL,NULL),(3,1,'Perry','3875 Perrysville Ave, 15214','2013-07-30 15:29:41','2013-07-30 15:29:41',NULL,NULL,NULL,NULL,NULL),(4,2,'Community Center','','2013-08-02 17:09:55','2013-08-02 17:10:03',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `program_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programs`
--

LOCK TABLES `programs` WRITE;
/*!40000 ALTER TABLE `programs` DISABLE KEYS */;
INSERT INTO `programs` VALUES (1,'Novanet','Course Credit Recovery','2013-07-09 03:39:35','2013-07-09 03:39:35'),(2,'Reading Warriors','Helping elementary students to read','2013-07-30 17:59:44','2013-07-30 17:59:44');
/*!40000 ALTER TABLE `programs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_forms`
--

DROP TABLE IF EXISTS `role_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_role_forms_on_role_id` (`role_id`),
  KEY `index_role_forms_on_form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_forms`
--

LOCK TABLES `role_forms` WRITE;
/*!40000 ALTER TABLE `role_forms` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Student',NULL,NULL),(2,'Employee','2013-07-31 15:44:48','2013-07-31 15:44:48'),(3,'Volunteer','2013-07-31 15:44:55','2013-07-31 15:44:55'),(4,'Other','2013-07-31 15:45:03','2013-07-31 15:45:03');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130624064031'),('20130624071052'),('20130624171435'),('20130624171913'),('20130625142609'),('20130625143444'),('20130625143745'),('20130625144334'),('20130625165358'),('20130625165526'),('20130625171152'),('20130625172832'),('20130625173704'),('20130625174454'),('20130625175749'),('20130625181154'),('20130628031036'),('20130628211116'),('20130629213424'),('20130629223107'),('20130629223410'),('20130629223818'),('20130702134042'),('20130702135316'),('20130702135859'),('20130702140017'),('20130702140345'),('20130702164353'),('20130702193121'),('20130708213641'),('20130708214117'),('20130708214319'),('20130709031338'),('20130709031814'),('20130709031923'),('20130709032050'),('20130709032224'),('20130709032425'),('20130709032815'),('20130709133525'),('20130709133635'),('20130709144732'),('20130710154510'),('20130710154537'),('20130710161637'),('20130710174836'),('20130717184346'),('20130717184811'),('20130718145138'),('20130718155646'),('20130718180306'),('20130722181006'),('20130722181452'),('20130722182233'),('20130722182309'),('20130722182522'),('20130722182633'),('20130722182748'),('20130722183135'),('20130722183213'),('20130722183757'),('20130722184104'),('20130722184122'),('20130722184149'),('20130722184510'),('20130722184630'),('20130722184707'),('20130722184803'),('20130722185035'),('20130722185225'),('20130722191021'),('20130801153449'),('20130801163847'),('20130801164613'),('20130805143030'),('20130805162030'),('20130805162143'),('20130807144808');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (1,'School(1)','123 Anywhere Lane','2013-07-09 03:41:06','2013-07-09 03:41:06');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_services`
--

DROP TABLE IF EXISTS `support_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_services`
--

LOCK TABLES `support_services` WRITE;
/*!40000 ALTER TABLE `support_services` DISABLE KEYS */;
INSERT INTO `support_services` VALUES (1,'Emotional',NULL,NULL);
/*!40000 ALTER TABLE `support_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_events`
--

DROP TABLE IF EXISTS `user_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_events_on_user_id` (`user_id`),
  KEY `index_user_events_on_event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_events`
--

LOCK TABLES `user_events` WRITE;
/*!40000 ALTER TABLE `user_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_people`
--

DROP TABLE IF EXISTS `user_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_people_on_user_id` (`user_id`),
  KEY `index_user_people_on_person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_people`
--

LOCK TABLES `user_people` WRITE;
/*!40000 ALTER TABLE `user_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_program_locations`
--

DROP TABLE IF EXISTS `user_program_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_program_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `program_location_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_program_locations_on_user_id` (`user_id`),
  KEY `index_user_program_locations_on_program_location_id` (`program_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_program_locations`
--

LOCK TABLES `user_program_locations` WRITE;
/*!40000 ALTER TABLE `user_program_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_program_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','$2a$10$FxqLcqul1CDHkhPdICuN9OJ5HFPxRtbO1ZbgWQEzqG4JUgMvSnLia','admin',NULL,NULL),(2,'coordinator','$2a$10$nS3d2FI9BPxLS3HfksmbtOIfeYmYfxQcFhdUm.wzxtaj5N/uu2aAm','coordinator','2013-08-05 20:58:43','2013-08-05 20:58:43');
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

-- Dump completed on 2013-08-07 16:50:46
