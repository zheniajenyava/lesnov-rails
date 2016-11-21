-- MySQL dump 10.13  Distrib 5.5.53, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: appname_development
-- ------------------------------------------------------
-- Server version	5.5.53-0+deb8u1

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `form_rules_id` int(11) DEFAULT NULL,
  `presisent_id` int(11) DEFAULT NULL,
  `president_id` int(11) DEFAULT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `rule_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_articles_on_article_id` (`article_id`),
  KEY `index_articles_on_language_id` (`language_id`),
  KEY `index_articles_on_form_rules_id` (`form_rules_id`),
  KEY `index_articles_on_president_id` (`president_id`),
  KEY `index_articles_on_domain_id` (`domain_id`),
  KEY `index_articles_on_rule_id` (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (10,'Россия','Страна долбаебов','2016-11-20 15:28:38','2016-11-20 15:28:38',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(11,'Германия','Сделано в германии','2016-11-20 15:29:14','2016-11-20 15:29:14',NULL,NULL,3,NULL,NULL,NULL,NULL,NULL),(12,'657','657','2016-11-20 17:16:44','2016-11-20 17:16:44',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL),(13,'657','657','2016-11-20 17:17:48','2016-11-20 17:17:48',NULL,NULL,2,2,NULL,NULL,NULL,NULL),(14,'657','657','2016-11-20 17:51:37','2016-11-20 17:51:37',NULL,NULL,1,2,NULL,1,NULL,NULL),(15,'567','657567','2016-11-20 19:49:58','2016-11-20 21:26:31',NULL,NULL,3,1,NULL,3,3,2),(16,'657','567','2016-11-20 19:58:35','2016-11-20 19:58:35',NULL,NULL,2,2,NULL,4,NULL,NULL),(17,'item','ef','2016-11-20 20:02:54','2016-11-20 20:22:21',NULL,NULL,1,2,NULL,1,NULL,NULL),(18,'ewf','ef','2016-11-20 20:08:22','2016-11-20 21:28:20',NULL,NULL,3,2,NULL,2,1,NULL),(19,'567','657','2016-11-20 20:23:11','2016-11-20 20:23:11',NULL,NULL,2,1,NULL,4,NULL,NULL),(20,'546','546','2016-11-20 20:23:28','2016-11-20 20:59:26',NULL,NULL,1,2,NULL,1,5,NULL),(21,'657','657','2016-11-20 20:59:59','2016-11-20 20:59:59',NULL,NULL,2,2,NULL,3,1,NULL),(22,'657','657','2016-11-20 21:00:08','2016-11-20 21:00:08',NULL,NULL,2,3,NULL,3,1,NULL);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_productions`
--

DROP TABLE IF EXISTS `articles_productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles_productions` (
  `article_id` int(11) NOT NULL,
  `production_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles_productions`
--

LOCK TABLES `articles_productions` WRITE;
/*!40000 ALTER TABLE `articles_productions` DISABLE KEYS */;
INSERT INTO `articles_productions` VALUES (18,3),(18,1),(18,2),(17,2),(17,1),(19,1),(20,2),(21,1),(22,1),(15,2);
/*!40000 ALTER TABLE `articles_productions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citizen_ships`
--

DROP TABLE IF EXISTS `citizen_ships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citizen_ships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen_ships`
--

LOCK TABLES `citizen_ships` WRITE;
/*!40000 ALTER TABLE `citizen_ships` DISABLE KEYS */;
INSERT INTO `citizen_ships` VALUES (1,'Португальское',NULL,NULL),(2,'Канадское',NULL,NULL),(3,'Британское',NULL,NULL),(4,'Российское',NULL,NULL),(5,'Американское',NULL,NULL);
/*!40000 ALTER TABLE `citizen_ships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domains`
--

LOCK TABLES `domains` WRITE;
/*!40000 ALTER TABLE `domains` DISABLE KEYS */;
INSERT INTO `domains` VALUES (1,NULL,'com',NULL,NULL),(2,NULL,'edu',NULL,NULL),(3,NULL,'su',NULL,NULL),(4,NULL,'ru',NULL,NULL),(5,NULL,'org',NULL,NULL),(6,NULL,'net',NULL,NULL);
/*!40000 ALTER TABLE `domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_rules`
--

DROP TABLE IF EXISTS `form_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isArchive` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_rules`
--

LOCK TABLES `form_rules` WRITE;
/*!40000 ALTER TABLE `form_rules` DISABLE KEYS */;
INSERT INTO `form_rules` VALUES (1,'Монархия',0,NULL,NULL),(2,'Республика',0,NULL,NULL),(3,'Конституционная монархия',0,NULL,NULL);
/*!40000 ALTER TABLE `form_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'Русский','RU',NULL,NULL),(2,'Английский','EN',NULL,NULL),(3,'Немецкий','DE',NULL,NULL);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presidents`
--

DROP TABLE IF EXISTS `presidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sex_id` int(11) DEFAULT NULL,
  `citizen_ship_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_presidents_on_sex_id` (`sex_id`),
  KEY `index_presidents_on_citizen_ship_id` (`citizen_ship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presidents`
--

LOCK TABLES `presidents` WRITE;
/*!40000 ALTER TABLE `presidents` DISABLE KEYS */;
INSERT INTO `presidents` VALUES (1,'Иван5','Иванов',NULL,NULL,'2016-11-20 18:28:21',NULL,NULL),(2,'','',NULL,'2016-11-20 18:59:18','2016-11-20 19:13:40',NULL,2),(3,'rt','ret',NULL,'2016-11-20 18:59:24','2016-11-20 21:30:33',1,1),(4,'67','56765555555555555555555555555',NULL,'2016-11-20 19:02:41','2016-11-20 19:13:31',2,5);
/*!40000 ALTER TABLE `presidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productions`
--

DROP TABLE IF EXISTS `productions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productions`
--

LOCK TABLES `productions` WRITE;
/*!40000 ALTER TABLE `productions` DISABLE KEYS */;
INSERT INTO `productions` VALUES (1,'Производство угля',NULL,NULL),(2,'Туризм',NULL,NULL),(3,'Добыча нефти',NULL,NULL);
/*!40000 ALTER TABLE `productions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` VALUES (1,'Монархия',NULL,NULL),(2,'Республика',NULL,NULL),(3,'Конституционная монархия',NULL,NULL);
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20161113143517'),('20161113173022'),('20161113173221'),('20161113180854'),('20161113180941'),('20161113183051'),('20161113213248'),('20161113223533'),('20161113230157'),('20161113230640'),('20161113230805'),('20161113230917'),('20161113231019'),('20161113231217'),('20161120162321'),('20161120162526'),('20161120162639'),('20161120165553'),('20161120165556'),('20161120172250'),('20161120172411'),('20161120183607'),('20161120183627'),('20161120184613'),('20161120184648'),('20161120193656'),('20161120193724'),('20161120200812'),('20161120202527'),('20161120202617'),('20161120202707'),('20161120202711'),('20161120210307'),('20161120210341');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexes`
--

DROP TABLE IF EXISTS `sexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sexes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexes`
--

LOCK TABLES `sexes` WRITE;
/*!40000 ALTER TABLE `sexes` DISABLE KEYS */;
INSERT INTO `sexes` VALUES (1,'Мужской',NULL,NULL),(2,'Женский',NULL,NULL);
/*!40000 ALTER TABLE `sexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  `reg_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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

-- Dump completed on 2016-11-21  1:35:42
