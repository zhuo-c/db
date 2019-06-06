-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: gua
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add book',8,'add_book'),(30,'Can change book',8,'change_book'),(31,'Can delete book',8,'delete_book'),(32,'Can view book',8,'view_book'),(33,'Can add movie',9,'add_movie'),(34,'Can change movie',9,'change_movie'),(35,'Can delete movie',9,'delete_movie'),(36,'Can view movie',9,'view_movie'),(37,'Can add comment',10,'add_comment'),(38,'Can change comment',10,'change_comment'),(39,'Can delete comment',10,'delete_comment'),(40,'Can view comment',10,'view_comment'),(41,'Can add chat',11,'add_chat'),(42,'Can change chat',11,'change_chat'),(43,'Can delete chat',11,'delete_chat'),(44,'Can view chat',11,'view_chat'),(45,'Can add comment2',12,'add_comment2'),(46,'Can change comment2',12,'change_comment2'),(47,'Can delete comment2',12,'delete_comment2'),(48,'Can view comment2',12,'view_comment2'),(49,'Can add comment3',13,'add_comment3'),(50,'Can change comment3',13,'change_comment3'),(51,'Can delete comment3',13,'delete_comment3'),(52,'Can view comment3',13,'view_comment3'),(53,'Can add comment1',14,'add_comment1'),(54,'Can change comment1',14,'change_comment1'),(55,'Can delete comment1',14,'delete_comment1'),(56,'Can view comment1',14,'view_comment1'),(57,'Can add likes',15,'add_likes'),(58,'Can change likes',15,'change_likes'),(59,'Can delete likes',15,'delete_likes'),(60,'Can view likes',15,'view_likes'),(61,'Can add like',16,'add_like'),(62,'Can change like',16,'change_like'),(63,'Can delete like',16,'delete_like'),(64,'Can view like',16,'view_like');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'firstpage','user'),(8,'index','book'),(11,'index','chat'),(10,'index','comment'),(14,'index','comment1'),(12,'index','comment2'),(13,'index','comment3'),(16,'index','like'),(15,'index','likes'),(9,'index','movie'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-08 08:08:10.093894'),(2,'auth','0001_initial','2019-04-08 08:08:12.017749'),(3,'admin','0001_initial','2019-04-08 08:08:12.441616'),(4,'admin','0002_logentry_remove_auto_add','2019-04-08 08:08:12.454592'),(5,'admin','0003_logentry_add_action_flag_choices','2019-04-08 08:08:12.469542'),(6,'contenttypes','0002_remove_content_type_name','2019-04-08 08:08:12.731840'),(7,'auth','0002_alter_permission_name_max_length','2019-04-08 08:08:12.987158'),(8,'auth','0003_alter_user_email_max_length','2019-04-08 08:08:13.029045'),(9,'auth','0004_alter_user_username_opts','2019-04-08 08:08:13.046000'),(10,'auth','0005_alter_user_last_login_null','2019-04-08 08:08:13.206572'),(11,'auth','0006_require_contenttypes_0002','2019-04-08 08:08:13.212554'),(12,'auth','0007_alter_validators_add_error_messages','2019-04-08 08:08:13.226517'),(13,'auth','0008_alter_user_username_max_length','2019-04-08 08:08:13.388085'),(14,'auth','0009_alter_user_last_name_max_length','2019-04-08 08:08:13.555637'),(15,'sessions','0001_initial','2019-04-08 08:08:13.666341'),(16,'firstpage','0001_initial','2019-04-08 08:17:32.750928'),(17,'firstpage','0002_user','2019-04-08 08:17:32.871605'),(18,'index','0001_initial','2019-05-09 01:59:25.454969'),(19,'index','0002_auto_20190509_1001','2019-05-09 02:01:24.149711'),(20,'index','0003_remove_movie_movie_scriptwriter','2019-05-09 02:23:26.350492'),(21,'index','0004_auto_20190509_1031','2019-05-09 02:31:40.931006'),(22,'index','0005_auto_20190509_1037','2019-05-09 02:37:28.616590'),(23,'index','0006_auto_20190509_1040','2019-05-09 02:40:15.553356'),(24,'index','0007_auto_20190509_1935','2019-05-09 11:35:52.673558'),(25,'index','0008_auto_20190510_1336','2019-05-10 05:36:38.122355'),(26,'index','0009_auto_20190510_1341','2019-05-10 05:41:16.259171'),(27,'index','0010_auto_20190510_1516','2019-05-10 07:16:21.543682'),(28,'index','0011_auto_20190510_1543','2019-05-10 07:43:25.699473'),(29,'index','0012_auto_20190510_2314','2019-05-10 15:14:55.899115'),(30,'index','0013_auto_20190510_2317','2019-05-10 15:17:47.696258'),(31,'firstpage','0002_auto_20190522_1526','2019-05-22 07:26:10.702178'),(32,'index','0014_auto_20190522_1526','2019-05-22 07:26:10.962029'),(33,'index','0015_auto_20190522_2209','2019-05-22 14:09:18.491675'),(34,'index','0016_auto_20190522_2223','2019-05-22 14:23:42.804503'),(35,'index','0017_chat_like_times','2019-05-23 05:24:17.637774'),(36,'index','0018_likes','2019-05-23 05:47:43.924724'),(37,'index','0019_auto_20190523_1431','2019-05-23 06:38:54.790968'),(38,'index','0020_auto_20190523_1432','2019-05-23 07:00:12.249614'),(39,'index','0021_likes','2019-05-23 07:00:12.590681'),(40,'index','0022_auto_20190523_1432','2019-05-23 07:00:12.608634'),(41,'index','0023_auto_20190523_1433','2019-05-23 07:00:13.051477'),(42,'index','0024_auto_20190523_1439','2019-05-23 07:00:13.533167'),(43,'index','0025_auto_20190523_1446','2019-05-23 07:00:13.617935'),(44,'index','0026_auto_20190523_1446','2019-05-23 07:00:14.090672'),(45,'index','0027_auto_20190531_2136','2019-05-31 13:36:43.887442'),(46,'index','0028_chat_chat_user_id','2019-06-01 09:23:50.604501'),(47,'index','0029_auto_20190604_2100','2019-06-04 13:00:33.001851'),(48,'index','0030_auto_20190604_2208','2019-06-04 14:08:07.271100'),(49,'index','0031_auto_20190604_2243','2019-06-04 14:43:59.024008'),(50,'index','0032_auto_20190604_2246','2019-06-04 14:46:34.095450'),(51,'index','0033_auto_20190604_2246','2019-06-04 14:46:57.701376'),(52,'index','0034_auto_20190604_2310','2019-06-04 15:11:01.245241'),(53,'index','0035_auto_20190604_2311','2019-06-04 15:11:49.411476'),(54,'index','0036_auto_20190604_2316','2019-06-04 15:17:00.205614'),(55,'index','0037_auto_20190604_2318','2019-06-04 15:19:05.339088'),(56,'index','0038_auto_20190604_2319','2019-06-04 15:19:43.223809');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('cntnymsu54jlvp3zecjb57zujbvo2faw','MGQxNGU1MjA0M2FmOTNiMjc1MDE2MjgwMDZmY2FiZjk0ZmNkYjg0YTp7fQ==','2019-05-23 11:49:12.804984'),('ehykb24w0ybzdkm1h4asm4a8rlmg83hi','YTNmNjBiZDNkMmQ2ZmY5MDM0ZTY5OWRlMjJiNWNmNjFjNmIxMjQxNzp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoiY21sIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-06-05 13:40:13.590164'),('h1mxorlg6lnaqy5m731hs5pcpcrjwqpg','N2NmMDhiZDA3NzJlZjUwOWI1MGNkMGU3ZDRkYjc1YWQ5OGEwMTA1ZTp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoibGNtIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-06-05 14:13:29.619843'),('j6wvfa0s6cuyk61fhfubgztr42wkdg7h','YmNmYjgzMTIxMWE2YjUwOTIwNDdiMmM5NTAyYTdkYWNjODE5NTY0MDp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoiMjMzMzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-06-14 10:26:43.920335'),('jgu8rpa2whxw7tpd9z3yty41qjqfozg4','N2NmMDhiZDA3NzJlZjUwOWI1MGNkMGU3ZDRkYjc1YWQ5OGEwMTA1ZTp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoibGNtIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-06-06 05:38:58.342974'),('jtj2l9e9c3k190mxcbsk1ilfqwok8o13','YmNmYjgzMTIxMWE2YjUwOTIwNDdiMmM5NTAyYTdkYWNjODE5NTY0MDp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoiMjMzMzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-06-18 15:24:57.713070'),('lmbmxp4329amflz1qfwnnsnw27cbh1hk','YmNmYjgzMTIxMWE2YjUwOTIwNDdiMmM5NTAyYTdkYWNjODE5NTY0MDp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoiMjMzMzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-06-14 09:43:01.411784'),('nuvm1bvftwyvb0ndp5bn2vx5nwxhnccs','MGQxNGU1MjA0M2FmOTNiMjc1MDE2MjgwMDZmY2FiZjk0ZmNkYjg0YTp7fQ==','2019-05-23 11:43:34.787148'),('o7c0v3smgginly0njggnmudbhmg61hb1','YTNmNjBiZDNkMmQ2ZmY5MDM0ZTY5OWRlMjJiNWNmNjFjNmIxMjQxNzp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoiY21sIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-06-05 13:36:21.511328'),('osrmnm2a5xexpud2s4vdp8gumnj2ukap','YmNmYjgzMTIxMWE2YjUwOTIwNDdiMmM5NTAyYTdkYWNjODE5NTY0MDp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoiMjMzMzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-06-14 09:56:36.632312'),('t52ycppokrrxpu67fnzae9of2ybcve1p','YmNmYjgzMTIxMWE2YjUwOTIwNDdiMmM5NTAyYTdkYWNjODE5NTY0MDp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoiMjMzMzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-06-15 09:38:27.630914'),('vdpw0hv0ygcfm0r5czuns8fxng72c386','N2NmMDhiZDA3NzJlZjUwOWI1MGNkMGU3ZDRkYjc1YWQ5OGEwMTA1ZTp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoibGNtIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-06-05 14:01:39.284268'),('vz2wffi7i0kovvi4nhiu6yo88d82isxw','YTNmNjBiZDNkMmQ2ZmY5MDM0ZTY5OWRlMjJiNWNmNjFjNmIxMjQxNzp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoiY21sIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-06-05 13:39:59.687808'),('wvpscjxihfzaoiabulsk72yitglqetn4','YmNmYjgzMTIxMWE2YjUwOTIwNDdiMmM5NTAyYTdkYWNjODE5NTY0MDp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoiMjMzMzMiLCJfc2Vzc2lvbl9leHBpcnkiOjB9','2019-06-18 13:06:20.421056'),('y45eg6n0j0nzwv2b2rxqd073x5uioneb','MGQxNGU1MjA0M2FmOTNiMjc1MDE2MjgwMDZmY2FiZjk0ZmNkYjg0YTp7fQ==','2019-05-23 11:48:00.236812'),('zu9zqaem5n1un0nj9scq2ta1o2coxkbe','N2NmMDhiZDA3NzJlZjUwOWI1MGNkMGU3ZDRkYjc1YWQ5OGEwMTA1ZTp7ImlzX2xvZ2luIjp0cnVlLCJ1c2VyaWQiOjEsInVzZXJuYW1lIjoibGNtIiwiX3Nlc3Npb25fZXhwaXJ5IjowfQ==','2019-06-05 14:16:39.158486');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firstpage_user`
--

DROP TABLE IF EXISTS `firstpage_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `firstpage_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `introduction` varchar(150) DEFAULT NULL,
  `user_img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firstpage_user`
--

LOCK TABLES `firstpage_user` WRITE;
/*!40000 ALTER TABLE `firstpage_user` DISABLE KEYS */;
INSERT INTO `firstpage_user` VALUES (1,'23333','22673001732@qq.com','654321','2222','14.jpg'),(5,'2222','2455019815@qq.com','123456',NULL,NULL);
/*!40000 ALTER TABLE `firstpage_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_book`
--

DROP TABLE IF EXISTS `index_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `index_book` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(50) NOT NULL,
  `book_img` varchar(100) NOT NULL,
  `book_country` varchar(20) NOT NULL,
  `book_score` double NOT NULL,
  `book_content` varchar(100) NOT NULL,
  `book_translate` varchar(100) NOT NULL,
  `book_writer` varchar(100) NOT NULL,
  `search_times` int(11) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_book`
--

LOCK TABLES `index_book` WRITE;
/*!40000 ALTER TABLE `index_book` DISABLE KEYS */;
INSERT INTO `index_book` VALUES (1,'追风筝的人','0.jpg','美',8.9,'为你，千千万万遍',' 李继宏',' 卡勒德·胡赛尼 ',9),(2,'解忧杂货店','1.jpg','日',8.5,'一碗精心熬制的东野牌鸡汤，拒绝很难',' 李盈春',' 东野圭吾 ',2),(3,'小王子','2.jpg','法',9,'献给长成了大人的孩子们',' 马振聘',' 圣埃克苏佩里 ',1),(4,'白夜行','3.jpg','日',9.1,'暗夜独行的残破灵魂，爱与恶本就难分难舍',' 刘姿君',' 东野圭吾 ',14),(5,'围城','4.jpg','中国',8.9,'对于“人艰不拆”四个字最彻底的违抗','','钱锺书',3),(6,'三体\n\n\n:“地球往事”三部曲之一','5.jpg','中国',8.8,'你我不过都是虫子','','刘慈欣',4),(7,'嫌疑人X的献身','6.jpg','日',8.9,'数学好是一种极致的浪漫',' 刘子倩',' 东野圭吾 ',0),(8,'挪威的森林','7.jpg','日',8,'村上之发轫，多少人的青春启蒙',' 林少华',' 村上春树 ',0),(9,'活着','8.jpg','中国',9.3,'生的苦难与伟大','','余华',0),(10,'百年孤独','9.jpg','哥伦比亚',9.2,'尼采所谓的永劫复归，一场无始无终的梦魇',' 范晔',' 加西亚·马尔克斯 ',1),(11,'红楼梦','10.jpg','中国',9.6,'谁解其中味？','','曹雪芹 著',0),(12,'看见','11.jpg','中国',8.8,'在这里看见中国','','柴静',0),(13,'不能承受的生命之轻','12.jpg','捷克',8.5,'朝向媚俗的一次伟大的进军',' 许钧',' 米兰·昆德拉 ',0),(14,'平凡的世界（全三部）','13.jpg','中国',9,'中国当代城乡生活全景','','路遥',0),(15,'三体Ⅱ\n\n\n:黑暗森林','14.jpg','中国',9.3,'无边的黑暗森林，比第一部更为恢弘壮丽','','刘慈欣',0),(16,'三体Ⅲ\n\n\n:死神永生','15.jpg','中国',9.2,'终章，何去何从','','刘慈欣',0),(17,'达·芬奇密码','16.jpg','美',8.2,'一切畅销的因素都有了',' 朱振武',' 丹·布朗 ',0),(18,'我们仨','17.jpg','中国',8.7,'平淡，坚忍，温情','','杨绛',0),(19,'简爱（英文全本）','18.jpg','英',8.5,'灰姑娘在十九世纪','',' 夏洛蒂·勃朗特',0),(20,'天才在左疯子在右\n\n\n:国内第一本精神病人访谈手记','19.jpg','中国',8.1,'简称“疯癫与文明”','','高铭',0),(21,'哈利·波特与魔法石','20.jpg','英',9,'羽加迪姆勒维奥萨！',' 苏农',' J. K. 罗琳 ',0),(22,'傲慢与偏见','21.jpg','英',8.8,'所有现代言情小说的母体',' 张玲',' 奥斯丁 ',0),(23,'明朝那些事儿（壹）\n\n\n:洪武大帝','22.jpg','中国',8.7,'历史本就是一件件“事儿”拼成的','','当年明月',0),(24,'目送','23.jpg','中国',8.7,'不必追','','龙应台',0),(25,'飘','24.jpg','美国',9.3,'革命时期的爱情，随风而逝',' 李美华',' 玛格丽特·米切尔 ',0),(26,'恶意','25.jpg','日',8.4,'无缘由的恨，冰冷彻骨',' 娄美莲',' 东野圭吾 ',0),(27,'霍乱时期的爱情','26.jpg','哥伦比亚',9,'义无反顾地直达爱情的核心',' 杨玲',' 加西亚·马尔克斯 ',0),(28,'倾城之恋','27.jpg','中国',8.5,'一段姻缘，需要一座城的倾覆来成全','','',0),(29,'撒哈拉的故事','28.jpg','中国',9,'关于漂泊的一切','','三毛',0),(30,'边城','29.jpg','中国',8.6,'如水一般的忧愁与怅惘','','沈从文',0),(31,'送你一颗子弹','30.jpg','中国',8.6,'犀利又温柔，穿过胸口隐隐作痛','','刘瑜',0),(32,'许三观卖血记','31.jpg','中国',8.7,'余华的悲凉，都在那一碗炒猪肝里了','','余华',0),(33,'哈利·波特与阿兹卡班的囚徒','32.jpg','英',8.9,'小天狼星布莱克',' 郑须弥',' J. K. 罗琳 ',0),(34,'狼图腾','33.jpg','中国',8.2,'我们都是 狼的传人？','','姜戎',0),(35,'情人','34.jpg','法',8.1,'我已经老了，你呢？',' 王道乾',' 玛格丽特·杜拉斯 ',0),(36,'哈利·波特与火焰杯','35.jpg','英',9,'整个系列的分水岭，暗色渐浓',' 马爱新',' J. K. 罗琳 ',0),(37,'哈利·波特与密室','36.jpg','英',8.9,'渐入佳境，魔法世界全貌初现',' 马爱新',' J. K. 罗琳 ',0),(38,'穆斯林的葬礼','37.jpg','中国',8.2,'时代烙印鲜明的民族史诗','','霍达',0),(39,'万历十五年','38.jpg','美',8.9,'见微知著，历史观的颠覆','',' 黄仁宇',0),(40,'盗墓笔记\n\n\n:七星鲁王宫','39.jpg','中国',8.3,'想象奇诡的大型RPG游戏','','南派三叔',0),(41,'窗边的小豆豆','40.jpg','日',8.7,'真正懂孩子的教育经',' 赵玉皎',' 黑柳彻子 著 ',0),(42,'1Q84BOOK1\n\n\n:4月～6月','41.jpg','日',8.3,'村上的野望，欢迎来到1Q84年',' 施小炜',' 村上春树 ',0),(43,'人间失格','42.jpg','日',8.3,'令人无从怜悯的绝望',' 许时嘉',' 太宰治 ',0),(44,'黄金时代\n\n\n:时代三部曲','43.jpg','中国',8.8,'能把性爱写得如此坦荡的，大概只有王二了','','王小波',0),(45,'哈利·波特与混血王子','44.jpg','英',8.8,'感情线纷乱的一部。再见邓布利多',' 马爱农',' J. K. 罗琳 ',0),(46,'老人与海','45.jpg','美',8.3,'正是悲壮赋予生活以意义',' 吴劳',' 海明威 ',0),(47,'向左走·向右走','46.jpg','中国',8.4,'两条平行线相遇的可能','','幾米',0),(48,'1984','47.jpg','英',9.3,'栗树荫下，我出卖你，你出卖我',' 刘绍铭',' 乔治·奥威尔 ',0),(49,'三国演义（全二册）','48.jpg','明',9.2,'是非成败转头空','',' 罗贯中',0),(50,'人类简史\n\n\n:从动物到上帝','49.jpg','以色列',9.1,'跟着人类一同走过十万年',' 林俊宏',' 尤瓦尔·赫拉利 ',0),(51,'哈利·波特与凤凰社','50.jpg','英',8.7,'暴脾气的哈利',' 马爱农',' J. K. 罗琳 ',0),(52,'苏菲的世界','51.jpg','挪威',8.5,'最平易近人的哲学入门',' 萧宝森',' 乔斯坦·贾德 ',0),(53,'悟空传\n\n\n:修订版','52.jpg','中国',8.4,'猴子还是那个猴子，世界早已不是原来的世界','','今何在',0),(54,'牧羊少年奇幻之旅','53.jpg','巴西',8.6,'你自己就是最大的宝藏',' 丁文林','保罗·柯艾略 ',0),(55,'莲花','54.jpg','中国',8,'三个生命的交逢，灵魅清冷','','安妮宝贝',0),(56,'天龙八部','55.jpg','中国',9.1,'“有情皆孽，无人不冤”','','金庸 , 有1996年11月北平第4次印刷本',0),(57,'哈利·波特与死亡圣器','56.jpg','英',9,'',' 马爱农',' J. K. 罗琳 ',0),(58,'呼啸山庄','57.jpg','英',8.4,'近乎暴虐的爱与恨，中文译名后无来者',' 张扬',' 勃朗特 ',0),(59,'亲爱的安德烈','58.jpg','中国',8.7,'龙应台母子对话，两代人的思想碰撞','','龙应台',0),(60,'无声告白','59.jpg','美',8.2,'莉迪亚死了，可他们还不知道',' 孙璐',' 伍绮诗 ',0),(61,'基督山伯爵','60.jpg','中国',9,'完美的复仇，金庸用法语写作应该就是这样','','大仲马 , 周克希',0),(62,'灿烂千阳','61.jpg','美',8.8,'唯有希望与爱可以驱散阴霾',' 李继宏',' 卡勒德·胡赛尼 ',0),(63,'鲁滨逊漂流记','62.jpg','英',8,'最早的荒野求生',' 马静',' 笛福 ',0),(64,'海边的卡夫卡','63.jpg','日',8.1,'背负诅咒的少年，平行世界中的奥德赛',' 林少华',' 村上春树 ',0),(65,'白鹿原','64.jpg','中国',8.7,'中国乡村史诗','','陈忠实',0),(66,'兄弟（上）','65.jpg','中国',8.3,'历史苦难中的个人灾变','','余华',0),(67,'笑傲江湖（全四册）','66.jpg','中国',9,'武侠的壳，政治斗争的核','','金庸',0),(68,'茶花女','67.jpg','法',8.2,'妓女应当拥有爱情吗？',' 王振孙',' 小仲马 ',0),(69,'福尔摩斯探案全集（上中下）','68.jpg','英',9.2,'侦探小说鼻祖',' 丁钟华 等',' 阿·柯南道尔 ',0),(70,'一个陌生女人的来信','69.jpg','奥',8.7,'暗恋的极致',' 张玉书',' 斯台芬·茨威格 ',0),(71,'少有人走的路\n\n\n:心智成熟的旅程','70.jpg','美',8.4,'成熟的心智通向更完善的自我',' 于海生',' M·斯科特·派克 ',0),(72,'房思琪的初恋乐园','71.jpg','中国',9.2,'以血书写的文学','','林奕含',0),(73,'沉默的大多数\n\n\n:王小波杂文随笔全编','72.jpg','中国',9.1,'沉默是沉默者的通行证','','王小波',0),(74,'局外人','73.jpg','法',9,'人生在世，永远也不该演戏作假',' 柳鸣九',' 阿尔贝·加缪 ',0),(75,'骆驼祥子','74.jpg','中国',8.3,'如骆驼喘息般深刻的绝望','','老舍',0),(76,'情书','75.jpg','日',8.6,'一场误会中的两段爱情，东方式的含蓄隐忍',' 穆晓芳',' 岩井俊二 ',0),(77,'民主的细节\n\n\n:美国当代政治观察随笔','76.jpg','中国',8.6,'公民养成手册','','刘瑜',0),(78,'东方快车谋杀案','77.jpg','英',9,'谋杀诡计惊人，波洛的抉择耐人寻味',' 陈尧光',' 阿加莎·克里斯蒂 ',0),(79,'神雕侠侣','78.jpg','中国',8.8,'至情至性，情大于武','','金庸 , 有1996年11月北平第4次印本',0),(80,'了不起的盖茨比','79.jpg','美',8.3,'梦，就像黛西家的那一缕绿光',' 姚乃强',' 菲茨杰拉德 ',0),(81,'遇见未知的自己','80.jpg','中国',8,'都市灵修速成','','张德芬',0),(82,'无人生还','81.jpg','英',8.9,'童谣杀人案',' 祁阿红',' 阿加莎・克里斯蒂 ',0),(83,'肖申克的救赎','82.jpg','美',9.1,'希望让人自由，电影实在太有名',' 施寄青',' 斯蒂芬·金 ',0),(84,'巴黎圣母院','83.jpg','法',8.3,'潜藏于残缺下的美与崇高',' 陈敬容','雨果 ',0),(85,'羊脂球','84.jpg','法',8.1,'资产阶级的道貌岸然',' 柳鸣九',' 莫泊桑 ',0),(86,'呐喊','85.jpg','中国',8.9,'新文学的第一声呐喊','','鲁迅',0),(87,'当我谈跑步时我谈些什么','86.jpg','日',8.1,'村上同志告诉我们，身体是革命的本钱',' 施小炜',' 村上春树 ',0),(88,'乌合之众\n\n\n:大众心理研究','87.jpg','法',8.2,'群氓心理剖析',' 冯克利',' 勒庞 ',0),(89,'动物农场','88.jpg','英',9.2,'太阳底下并无新事',' 荣如德',' 乔治·奥威尔 ',0),(90,'爱你就像爱生命','89.jpg','中国',8.8,'王小波与李银河的两地书','','王小波',0),(91,'红玫瑰与白玫瑰','90.jpg','中国',8.4,'蚊子血还是饭黏子？','','张爱玲',0),(92,'安徒生童话故事集','91.jpg','丹麦',9.2,'远不是童话那么简单',' 叶君健',' 安徒生 ',0),(93,'巨人的陨落\n\n\n:世纪三部曲','92.jpg','英',8.9,'五个家族，一场战争',' 于大卫',' 肯·福莱特 ',0),(94,'这些都是你给我的爱','93.jpg','中国',8.4,'只言片语的温暖','','文：安东尼',0),(95,'鬼吹灯之精绝古城','94.jpg','中国',8.1,'盗墓祖师名不虚传','','天下霸唱',0),(96,'这些人，那些事','95.jpg','中国',8.8,'平淡叙述下的惊心动魄','','吴念真',0),(97,'华胥引（全二册）','96.jpg','中国',8.4,'现实不如梦中的圆满','','唐七公子',0),(98,'喜宝','97.jpg','中国',8,'爱情才是终极的奢侈品','','亦舒',0),(99,'陪安东尼度过漫长岁月','98.jpg','中国',8.3,'真正的片段式写作','','安东尼',0),(100,'半生缘','99.jpg','中国',8.6,'世钧，我们回不去了','','张爱玲',0),(101,'阿Q正传','100.jpg','中国',8.7,'哀其不幸，怒其不争','','鲁迅',0),(102,'城南旧事\n\n\n:纪念普及版','101.jpg','中国',9,'长亭外，古道边，芳草碧连天','','林海音 文',0),(103,'射雕英雄传（全四册）','102.jpg','中国',8.9,'侠之大者，为国为民','','金庸',0),(104,'一个人的朝圣','103.jpg','英',8.1,'关于爱和信念的旅行',' 黄妙瑜',' 蕾秋·乔伊斯 ',0),(105,'我不喜欢这世界，我只喜欢你','104.jpg','中国',8,'一想到能和你共度余生，我就对余生充满期待','','乔一',0),(106,'梦里花落知多少','105.jpg','中国',8.8,'哀而不伤','','三毛',0),(107,'如何阅读一本书','106.jpg','美',8.4,'读书的方法论',' 郝明义',' 莫提默·J. 艾德勒 ',0),(108,'一只特立独行的猪','107.jpg','中国',8.8,'生活就是个缓慢受锤的过程，至少还可以特立独行','','王小波',0),(109,'月亮与六便士','108.jpg','英',8.8,'',' 徐淳刚',' 威廉·萨默塞特·毛姆 ',0),(110,'地下铁','109.jpg','中国',8.3,'黑暗世界中的点滴亮光','','幾米',0),(111,'格林童话全集','110.jpg','中国',9,'许多隐晦','','格林兄弟 , 魏以新',0),(112,'孩子你慢慢来','111.jpg','中国',8.8,'我们现在怎样做母亲','','龙应台',0),(113,'月亮忘記了','112.jpg','中国',8.6,'月明星稀的晚上，看不见的，看见了','','幾米',0),(114,'孤独六讲','113.jpg','中国',8.1,'作为一种美学的孤独','','蒋勋',0),(115,'此间的少年','114.jpg','中国',8.4,'象牙塔里的金庸群侠','','江南',0),(116,'刀锋','115.jpg','英',9,'一把刀的锋刃不容易越过；因此智者说得救之道是困难的',' 周煦良','毛姆 ',0),(117,'朝花夕拾','116.jpg','中国',8.7,'鲁迅的旧事重提','','鲁迅',0),(118,'步步惊心','117.jpg','中国',8.1,'现世太苦，不如穿越回去从头来过','','桐华',0),(119,'麦琪的礼物\n\n\n:欧·亨利短篇小说经典','118.jpg','美',8.6,'日常的奇迹',' 张经浩',' 欧·亨利 ',0),(120,'尘埃落定','119.jpg','中国',8.4,'一个傻子的土司家族传奇','','阿来',0),(121,'一個人住第5年','120.jpg','日',8.4,'独居生活之乐',' 洪俞君',' 高木直子 ',0),(122,'荆棘鸟','121.jpg','澳',8.6,'澳洲乱世情',' 曾胡',' 考琳·麦卡洛 ',0),(123,'菊与刀\n\n\n:日本文化的类型','122.jpg','美',8.2,'复杂矛盾的日本民族',' 吕万和',' 鲁思・本尼迪克特 ',0),(124,'杀死一只知更鸟','123.jpg','美',9.2,'有一种东西不能遵循从众原则，那就是——人的良心',' 高红梅',' 哈珀·李 ',0),(125,'哭泣的骆驼','124.jpg','中国',8.9,'沙漠中寻常的生与死','','三毛',0),(126,'那些回不去的年少时光','125.jpg','中国',8.5,'所有你曾热爱却正在遗忘的人和事','','桐华',0),(127,'常识','126.jpg','中国',8.1,'献给这个常识稀缺的时代','','梁文道',0),(128,'寻路中国\n\n\n:从乡村到工厂的自驾之旅','127.jpg','美',9,'中国在路上，非虚构写作所能达到的高度',' 李雪顺',' 彼得·海斯勒 ',0),(129,'球状闪电','128.jpg','中国',8.7,'量子之外，没有真相','','刘慈欣',0),(130,'金锁记','129.jpg','中国',8.5,'曹七巧就像希克厉，一个扭曲的英雄','','张爱玲',0),(131,'你好，旧时光（上下）','130.jpg','中国',8.8,'原作名切题','','八月长安',0),(132,'查令十字街84号','131.jpg','美',8.3,'文艺青年的爱情地标',' 陈建铭',' 海莲·汉芙 ',0),(133,'悲惨世界（上中下）','132.jpg','法',8.9,'现实主义与浪漫主义的至高杰作',' 李丹',' 雨果 ',0),(134,'时间旅行者的妻子','133.jpg','美',8.1,'在时间的缝隙中穿行，然后相遇',' 夏金',' 奥德丽·尼芬格 ',0),(135,'海底两万里','134.jpg','法国',8.4,'你听说过鹦鹉螺号吗？',' 沈国华',' 儒尔·凡尔纳 ',0),(136,'海贼王\n\n\n:ONEPIECE','135.jpg','中国',9.5,'热血，梦想，希望','','尾田荣一郎 , 董科',0),(137,'史蒂夫·乔布斯传','136.jpg','美',8.7,'完美主义者的最高形态',' 管延圻',' 沃尔特·艾萨克森 ',0),(138,'鹿鼎记（全五册）','137.jpg','中国',8.8,'武侠的解构，流氓的狂欢','','金庸',0),(139,'失恋33天\n\n\n:小说，或是指南','138.jpg','中国',8.1,'失恋是一种病，痊愈之后百毒不侵','','鲍鲸鲸',0),(140,'飞鸟集','139.jpg','印',8.9,'淡泊，超脱',' 徐翰林',' 罗宾德拉纳德·泰戈尔 ',0),(141,'你今天真好看','140.jpg','美',8.7,'呆萌可爱的动物段子手',' 周高逸','莉兹•克里莫 ',0),(142,'东霓','141.jpg','中国',8.1,'自毁而偏执的东霓','','笛安',0),(143,'长恨歌','142.jpg','中国',8.2,'现代上海史诗','','王安忆',0),(144,'富爸爸，穷爸爸','143.jpg','美',8.2,'人穷穷观念，人富钱生钱',' 杨君，杨明',' 罗伯特・T・清崎 ',0),(145,'你一定爱读的极简欧洲史\n\n\n:为什么欧洲对现代文明的影响这么深','144.jpg','澳',8.2,'欧洲，为什么老是抢第一？',' 席玉苹',' 约翰·赫斯特（John Hirst） ',0),(146,'倚天屠龙记(共四册)','145.jpg','中国',8.6,'不识张郎是张郎','','金庸',0),(147,'流浪地球\n\n\n:刘慈欣获奖作品','146.jpg','中国',8.6,'','','刘慈欣',0),(148,'水浒传（全二册）','147.jpg','中国',8.5,'风风火火闯九州','','施耐庵',0),(149,'历史深处的忧虑\n\n\n:近距离看美国之一','148.jpg','中国',9,'窥见美国社会的一扇窗','','林达',0),(150,'雷雨','149.jpg','中国',8.6,'人的心都靠不住，我并不是说人坏，我就是恨人性太弱，太容易变了','','曹禺',0),(151,'伊豆的舞女','150.jpg','日',8.2,'静美又残酷，无限柔软的川端',' 叶渭渠',' 川端康成 ',0),(152,'西游记（全二册）','151.jpg','中国',8.8,'取经之路就在脚下','','吴承恩 , 黄肃秋 注释',0),(153,'时间简史\n\n\n:插图本','152.jpg','英',8.8,'霍金与上帝的战争',' 许明贤',' 史蒂芬·霍金 ',0),(154,'大地之灯','153.jpg','中国',8.2,'两代人的成长与救赎','','七堇年',0),(155,'瓦尔登湖','154.jpg','美',8.4,'另一种生活',' 徐迟',' 梭罗 ',0),(156,'最好的我们','155.jpg','中国',8.8,'耿耿余淮','','八月长安',0),(157,'狂人日记','156.jpg','中国',8.7,'中国现代文学史上第一篇真正的现代白话小说','','鲁迅',0),(158,'中国历代政治得失','157.jpg','中国',9.1,'一部简明的“中国政治制度史”','','钱穆',0),(159,'一九八四·动物农场','158.jpg','英',9.3,'一个预言和一个寓言，令人窒息的政治恐怖',' 董乐山',' 乔治·奥威尔 ',0),(160,'红与黑','159.jpg','法',8.2,'阴谋与爱情',' 张冠尧',' 斯丹达尔 ',0),(161,'香水\n\n\n:一个谋杀犯的故事','160.jpg','德',8.5,'恋味癖谋杀案',' 李清华',' 帕·聚斯金德 ',0),(162,'橙\n\n\n:陪安东尼度过漫长岁月Ⅱ','161.jpg','中国',8.2,'定做一个刻着“不过如此”的章，盖在封面上','','安东尼',0),(163,'匆匆那年（上下）','162.jpg','中国',8.3,'不悔梦归处 只恨太匆匆','','九夜茴',0),(164,'影响力','163.jpg','美',8.6,'营销防骗指南',' 陈叙',' 罗伯特·西奥迪尼 ',0),(165,'看不见的城市','164.jpg','意大利',8.8,'每一座城市都只在想象中耸立，又在描述中坍圮',' 张宓','伊塔洛·卡尔维诺 ',0),(166,'陆犯焉识','165.jpg','中国',8.8,'翻手为苍凉，覆手为繁华','','严歌苓',0),(167,'世界尽头与冷酷仙境','166.jpg','日',8.6,'交叉平行蒙太奇',' 林少华',' 村上春树 ',0),(168,'我与地坛\n\n\n:史铁生代表作','167.jpg','中国',9,'这是你的罪孽与福祉','','史铁生',0),(169,'夏洛的网','168.jpg','美',8.5,'猪与蜘蛛',' 任溶溶',' E.B.怀特 ',0),(170,'江城','169.jpg','美',9,'外国人的寻路中国',' 李雪顺',' 彼得·海斯勒 ',0),(171,'冰与火之歌（卷一）\n\n\n:权力的游戏','170.jpg','美',9.3,'凛冬将至。无比宏大的世界观',' 谭光磊',' 乔治·R. R. 马丁 ',0),(172,'呼兰河传\n\n\n:1947年版本・原版珍藏','171.jpg','中国',8.9,'萧红的童年往事','','萧红',0),(173,'把时间当作朋友\n\n\n:运用心智获得解放','172.jpg','中国',8.5,'反成功学的成功学','','李笑来',0),(174,'那些年，我们一起追的女孩','173.jpg','中国',8.2,'那些年错过的大雨','','九把刀',0),(175,'自控力\n\n\n:斯坦福大学最受欢迎心理学课程','174.jpg','美',8.3,'要么瘦，要么死',' 王岑卉','  凯利·麦格尼格尔 ',0),(176,'阿狸·梦之城堡','175.jpg','中国',9,'治愈','','hans',0),(177,'往事并不如烟','176.jpg','中国',8.6,'知识分子的命运浮沉','','章诒和',0),(178,'七夜雪','177.jpg','中国',8.4,'抵不过时间','','沧月',0),(179,'天使与魔鬼','178.jpg','美',8.1,'科学与宗教的大乱斗',' 朱振武',' 丹.布朗 ',0),(180,'变形记\n\n\n:卡夫卡小说','179.jpg','奥',8.4,'格里高里清早醒来发现自己变成了甲虫',' 叶廷芳',' 卡夫卡 ',0),(181,'ZOO','180.jpg','日',8.6,'噩梦中的一丝温度',' 李颖秋',' 乙一 ',0),(182,'人生','181.jpg','中国',8.4,'如果你是高加林，你要如何选择？','','路遥',0),(183,'蔷薇岛屿','182.jpg','中国',8,'你们不会彼此遗忘。只会彼此消失','','安妮宝贝',0),(184,'国境以南太阳以西','183.jpg','日',8.3,'灾星下出生的恋人们',' 林少华',' 村上春树 ',0),(185,'人性的弱点全集','184.jpg','美',8.3,'西方世界最持久的人文畅销书',' 袁玲',' 戴尔·卡耐基 ',0),(186,'最初的爱情最后的仪式','185.jpg','英',8,'别被封面骗了',' 潘帕',' 伊恩·麦克尤恩 ',0),(187,'我的天才女友\n\n\n:那不勒斯四部曲-01','186.jpg','意',8.5,'',' 陈英',' 埃莱娜·费兰特 ',0),(188,'京华烟云','187.jpg','中国',8.5,'林语堂的《红楼梦》','','林语堂 , 张振玉',0),(189,'没有色彩的多崎作和他的巡礼之年','188.jpg','日',8.2,'并不是一切都消失在了时间的长河里',' 施小炜',' 村上春树 ',0),(190,'文学回忆录（全2册）\n\n\n:1989—1994','189.jpg','中国',9.2,'木心留给世界的礼物','','木心 讲述',0),(191,'一句顶一万句','190.jpg','中国',8.7,'一句胜过千年','','刘震云',0),(192,'生活在别处','191.jpg','捷克',8.4,'此处的生活唯有残酷',' 袁筱一',' 米兰·昆德拉 ',0),(193,'未来简史','192.jpg','以色列',8.4,'',' 林俊宏',' 尤瓦尔·赫拉利 ',0),(194,'心是孤独的猎手','193.jpg','美',8.5,'镇上有两个哑巴，他们总是在一起。',' 陈笑黎',' 卡森·麦卡勒斯 ',0),(195,'尼罗河上的惨案','194.jpg','英',8.7,'阿婆代表作之一',' 宫英海',' 阿加莎·克里斯蒂 ',0),(196,'设计中的设计','195.jpg','日',8.6,'日常生活的无限可能性',' 朱锷',' 原研哉 ',0),(197,'佛祖在一号线','196.jpg','中国',8.2,'嬉笑怒骂的常识分子','','李海鹏',0),(198,'项链\n\n\n:莫泊桑中短篇小说选','197.jpg','法',8.3,'',' 顾加琛 等',' 莫泊桑 ',0),(199,'激荡三十年（上）\n\n\n:中国企业1978-2008','198.jpg','中国',8.8,'这是一个最好的时代，也是一个最坏的时代','','吴晓波',0),(200,'我执','199.jpg','中国',8,'梁文道的私密日记','','梁文道',0),(201,'父与子全集','200.jpg','德',9.2,'',' 杨莹',' 埃·奥·卜劳恩 绘 ',0),(202,'罗生门','201.jpg','日',8.7,'',' 林少华','芥川龙之介 ',0),(203,'偷书贼','202.jpg','澳',8,'不能说偷，是窃，窃你懂吗',' 孙张静',' 马克斯·苏萨克 ',0),(204,'人间词话','203.jpg','中国',9,'','','王国维',0),(205,'九州·缥缈录','204.jpg','中国',8.8,'乱世的英雄史诗','','江南',0),(206,'我的精神家园\n\n\n:王小波杂文自选集','205.jpg','中国',9.1,'活过，爱过，写过','','王小波',0),(207,'一千零一夜','206.jpg','中国',8.6,'','','纳训',0),(208,'妻妾成群','207.jpg','中国',8.2,'','','苏童',0),(209,'野火集\n\n\n:二十年纪念版','208.jpg','中国',8.8,'中国人你为什么不生气？','','龙应台',0),(210,'海子的诗','209.jpg','中国',8.9,'','','海子',0),(211,'第一炉香','210.jpg','中国',8.4,'','','张爱玲',0),(212,'芳华','211.jpg','中国',8.1,'','','严歌苓',0),(213,'占星术杀人魔法','212.jpg','日',8.3,'一桩占星术连续杀人案件',' 王鹏帆',' 岛田庄司 ',0),(214,'面纱','213.jpg','英',8.7,'',' 阮景林',' W.萨默塞特·毛姆 ',0),(215,'教父','214.jpg','美',9,'',' 周汉林','马里奥·普佐 ',0),(216,'雨季不再来','215.jpg','中国',8.7,'','','三毛',0),(217,'娱乐至死','216.jpg','美',8.6,'',' 章艳',' 尼尔·波兹曼 ',0),(218,'舞！舞！舞！','217.jpg','日',8.3,'深入村上春树的心灵腹地',' 林少华',' 村上春树 ',0),(219,'浪潮之巅','218.jpg','中国',9.1,'了解IT领域的入门读物','','吴军',0),(220,'斯通纳','219.jpg','美',8.8,'',' 杨向荣',' 约翰·威廉斯 ',0),(221,'万水千山走遍','220.jpg','中国',8.8,'','','三毛',0),(222,'哈姆莱特','221.jpg','英',8.5,'',' 朱生豪',' 莎士比亚 ',0),(223,'高效能人士的七个习惯（精华版）','222.jpg','美',8.2,'',' 高新勇',' 史蒂芬·柯维 ',0),(224,'动物凶猛','223.jpg','中国',8.3,'','','王朔',0),(225,'子不语1','224.jpg','中国',9,'','','夏达',0),(226,'台北人','225.jpg','中国',8.9,'','','白先勇',0),(227,'小姨多鹤','226.jpg','中国',8.6,'','','严歌苓',0),(228,'罗杰疑案','227.jpg','英',8.9,'',' 张江云',' 阿加莎·克里斯蒂 ',0),(229,'观念的水位','228.jpg','中国',8.3,'','','刘瑜',0),(230,'夹边沟记事','229.jpg','中国',9.2,'','','杨显惠',0),(231,'爱的艺术','230.jpg','美',8.8,'',' 李健鸣',' 艾·弗洛姆 ',0),(232,'雾都孤儿','231.jpg','英',8.1,'',' 荣如德','狄更斯 ',0),(233,'新名字的故事\n\n\n:那不勒斯四部曲-02','232.jpg','意',9,'',' 陈英',' 埃莱娜·费兰特 ',0),(234,'巨流河','233.jpg','中国',8.7,'','','齐邦媛',0),(235,'动物庄园','234.jpg','英',9.1,'',' 张毅 高孝先',' 乔治·奥威尔 ',0),(236,'白银时代\n\n\n:时代三部曲','235.jpg','中国',8.4,'','','王小波',0),(237,'中国大历史','236.jpg','中国',8.3,'','','黄仁宇',0),(238,'新参者','237.jpg','日',8.4,'',' 岳远坤',' 东野圭吾 ',0),(239,'琅琊榜','238.jpg','中国',8.5,'','','海宴',0),(240,'寻羊冒险记','239.jpg','日',8.1,'',' 林少华',' 村上春树 ',0),(241,'枪炮、病菌与钢铁\n\n\n:人类社会的命运','240.jpg','美',8.8,'',' 谢延光',' 贾雷德·戴蒙德 ',0),(242,'告白','241.jpg','中国',8.6,'','','湊佳苗 , 丁世佳',0),(243,'红拂夜奔','242.jpg','中国',8.6,'','','王小波',0),(244,'云中歌1','243.jpg','中国',8.1,'','','桐华',0),(245,'带一本书去巴黎','244.jpg','中国',8.5,'','','林达',0),(246,'来不及说我爱你','245.jpg','中国',8.1,'','','匪我思存',0),(247,'相约星期二','246.jpg','美',8.4,'',' 吴洪',' 米奇·阿尔博姆 ',0),(248,'退步集','247.jpg','中国',8.1,'','','陈丹青',0),(249,'可爱的洪水猛兽','248.jpg','中国',8.1,'','','韩寒',0),(250,'一个叫欧维的男人决定去死','249.jpg','瑞典',9,'',' 宁蒙',' 弗雷德里克·巴克曼 ',0);
/*!40000 ALTER TABLE `index_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_chat`
--

DROP TABLE IF EXISTS `index_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `index_chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_text` varchar(1000) NOT NULL,
  `chat_user` varchar(20) NOT NULL,
  `chat_date` varchar(20) NOT NULL,
  `chat_img` varchar(100) DEFAULT NULL,
  `chat_video` varchar(100) DEFAULT NULL,
  `chat_title` varchar(100) NOT NULL,
  `like_times` int(11) NOT NULL,
  `chat_user_id` varchar(20) NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_chat`
--

LOCK TABLES `index_chat` WRITE;
/*!40000 ALTER TABLE `index_chat` DISABLE KEYS */;
INSERT INTO `index_chat` VALUES (38,'ggg','23333','2019-05-31','0.jpg','aa.mp4','ggggggg',0,'1'),(39,'还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，','23333','2019-05-31','0.jpg','aa.mp4','解决Chrome不能播放mp4视频的问题和HLS视频播放',0,'1'),(40,'   少时诵诗书搜索\r\n  啦啦啦啦啦啦啦啦\r\n  少时诵诗书搜索所所','23333','2019-05-31',NULL,NULL,'解决Chrome不能播放mp4视频的问题和HLS视频播放',0,'1'),(41,'还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，都还有不同的扩展名，wwwwwwww','23333','2019-05-31',NULL,NULL,'解决Chrome不能播放mp4视频的问题和HLS视频播放',0,'1'),(43,'23333333333333333333','2222','2019-06-01',NULL,NULL,'233',0,'5'),(44,'emmmmmmmmmmmmmmm','23333','2019-06-01',NULL,NULL,'emmmm',0,'1'),(45,'lcmlcmlcm','23333','2019-06-01',NULL,NULL,'lllll',0,'1');
/*!40000 ALTER TABLE `index_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_comment1`
--

DROP TABLE IF EXISTS `index_comment1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `index_comment1` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(200) NOT NULL,
  `comment_user` varchar(20) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `index_comment1_movie_id_e6892586_fk_index_movie_movie_id` (`movie_id`),
  CONSTRAINT `index_comment1_movie_id_e6892586_fk_index_movie_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `index_movie` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_comment1`
--

LOCK TABLES `index_comment1` WRITE;
/*!40000 ALTER TABLE `index_comment1` DISABLE KEYS */;
INSERT INTO `index_comment1` VALUES (4,'3','lcm',1),(5,'1','lcm',1),(6,'1','lcm',1),(7,'cznb','lcm',1),(8,'cznb','lcm',1),(9,'cznb','lcm',1),(10,'cznb','lcm',1),(11,'cznb','lcm',1),(12,'cznb','lcm',1),(13,'cznb','lcm',1),(14,'cznb','lcm',1),(15,'1','lcm',1),(16,'1','lcm',1),(17,'321','23333',2),(18,'321','23333',2),(19,'321','23333',2),(20,'321','23333',2),(21,'321','23333',2),(22,'321','23333',2),(23,'121','23333',2),(24,'123','23333',2),(25,'123','23333',2),(26,'123','23333',2),(27,'222','23333',2),(28,'22222','23333',2),(29,'233333','23333',2),(30,'233333','23333',2),(31,'23333333','23333',2),(32,'233','23333',2),(33,'2444','23333',2),(34,'23333','23333',2),(35,'23333','23333',2),(36,'232323','23333',2),(37,'233333','23333',2),(38,'nbnbnb','23333',2),(39,'121212','23333',2),(40,'2333','23333',2),(41,'23333','23333',2),(42,'22222','23333',2);
/*!40000 ALTER TABLE `index_comment1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_comment2`
--

DROP TABLE IF EXISTS `index_comment2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `index_comment2` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(200) NOT NULL,
  `comment_user` varchar(20) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `index_comment2_book_id_62898c91_fk_index_book_book_id` (`book_id`),
  CONSTRAINT `index_comment2_book_id_62898c91_fk_index_book_book_id` FOREIGN KEY (`book_id`) REFERENCES `index_book` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_comment2`
--

LOCK TABLES `index_comment2` WRITE;
/*!40000 ALTER TABLE `index_comment2` DISABLE KEYS */;
INSERT INTO `index_comment2` VALUES (1,'cznb','lcm',1),(2,'xknb','lcm',1),(3,'xknb','lcm',1),(4,'1','lcm',1),(5,'1','lcm',1),(6,'1','lcm',1),(7,'1','lcm',1),(8,'1','lcm',1),(9,'1','lcm',1),(10,'1','lcm',1),(11,'1','lcm',1),(12,'1','lcm',1),(13,'2','lcm',1),(14,'aaaaa','lcm',1),(15,'sadasddasdasdasdadsasdasdasdasdasdasdadasd','23333',4);
/*!40000 ALTER TABLE `index_comment2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_comment3`
--

DROP TABLE IF EXISTS `index_comment3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `index_comment3` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(200) NOT NULL,
  `comment_user` varchar(20) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `comment_time` varchar(20) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `index_comment3_chat_id_8e0fb747_fk_index_chat_chat_id` (`chat_id`),
  CONSTRAINT `index_comment3_chat_id_8e0fb747_fk_index_chat_chat_id` FOREIGN KEY (`chat_id`) REFERENCES `index_chat` (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_comment3`
--

LOCK TABLES `index_comment3` WRITE;
/*!40000 ALTER TABLE `index_comment3` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_comment3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_like`
--

DROP TABLE IF EXISTS `index_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `index_like` (
  `like_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  PRIMARY KEY (`like_id`),
  KEY `index_like_chat_id_6206c811_fk_index_chat_chat_id` (`chat_id`),
  CONSTRAINT `index_like_chat_id_6206c811_fk_index_chat_chat_id` FOREIGN KEY (`chat_id`) REFERENCES `index_chat` (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_like`
--

LOCK TABLES `index_like` WRITE;
/*!40000 ALTER TABLE `index_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_movie`
--

DROP TABLE IF EXISTS `index_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `index_movie` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(20) NOT NULL,
  `movie_img` varchar(100) NOT NULL,
  `movie_directer` varchar(100) NOT NULL,
  `movie_moviestar` varchar(50) NOT NULL,
  `movie_year` varchar(50) NOT NULL,
  `movie_country` varchar(20) NOT NULL,
  `movie_label` varchar(20) NOT NULL,
  `movie_score` double NOT NULL,
  `movie_content` varchar(100) NOT NULL,
  `search_times` int(11) NOT NULL,
  `movie_start1` varchar(20) NOT NULL,
  `movie_start2` varchar(20) NOT NULL,
  `movie_start3` varchar(20) NOT NULL,
  `movie_start4` varchar(20) NOT NULL,
  `movie_start5` varchar(20) NOT NULL,
  `movie_start1_per` double NOT NULL,
  `movie_start2_per` double NOT NULL,
  `movie_start3_per` double NOT NULL,
  `movie_start4_per` double NOT NULL,
  `movie_start5_per` double NOT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_movie`
--

LOCK TABLES `index_movie` WRITE;
/*!40000 ALTER TABLE `index_movie` DISABLE KEYS */;
INSERT INTO `index_movie` VALUES (1,'肖申克的救赎','0.jpg',' 弗兰克·德拉邦特 Frank Darabont',' 蒂姆·罗宾斯 Tim Robbins /...','1994','美国','犯罪 剧情',9.6,'希望让人自由。',16,'0','0','0','0','0',0,0,0,0,0),(2,'霸王别姬','1.jpg',' 陈凯歌 Kaige Chen',' 张国荣 Leslie Cheung / 张丰毅 Fengyi Zha...','1993','中国大陆 香港','剧情 爱情 同性',8.9,'风华绝代。',160,'0','0','1.0','1.0','5.0',0,0,14,14,72),(3,'这个杀手不太冷','2.jpg',' 吕克·贝松 Luc Besson',' 让·雷诺 Jean Reno / 娜塔莉·波特曼 ...','1994','法国','剧情 动作 犯罪',9.4,'怪蜀黍和小萝莉不得不说的故事。',2,'0','0','0','0','0',0,0,0,0,0),(4,'阿甘正传','3.jpg',' 罗伯特·泽米吉斯 Robert Zemeckis',' 汤姆·汉克斯 Tom Hanks / ...','1994','美国','剧情 爱情',9.4,'一部美国近现代史。',0,'0','0','0','0','0',0,0,0,0,0),(5,'美丽人生','4.jpg',' 罗伯托·贝尼尼 Roberto Benigni',' 罗伯托·贝尼尼 Roberto Beni...','1997','意大利','剧情 喜剧 爱情 战争',9.5,'最美的谎言。',0,'0','0','0','0','0',0,0,0,0,0),(6,'泰坦尼克号','5.jpg',' 詹姆斯·卡梅隆 James Cameron',' 莱昂纳多·迪卡普里奥 Leonardo...','1997','美国','剧情 爱情 灾难',9.3,'失去的才是永恒的。',3,'0','0','0','0','0',0,0,0,0,0),(7,'千与千寻','6.jpg',' 宫崎骏 Hayao Miyazaki',' 柊瑠美 Rumi Hîragi / 入野自由 Miy...','2001','日本','剧情 动画 奇幻',9.3,'最好的宫崎骏，最好的久石让。',0,'0','0','0','0','0',0,0,0,0,0),(8,'辛德勒的名单','7.jpg',' 史蒂文·斯皮尔伯格 Steven Spielberg',' 连姆·尼森 Liam Neeson...','1993','美国','剧情 历史 战争',9.5,'拯救一个人，就是拯救整个世界。',0,'0','0','0','0','0',0,0,0,0,0),(9,'盗梦空间','8.jpg',' 克里斯托弗·诺兰 Christopher Nolan',' 莱昂纳多·迪卡普里奥 Le...','2010','美国 英国','剧情 科幻 悬疑 冒险',9.3,'诺兰给了我们一场无法盗取的梦。',0,'0','0','0','0','0',0,0,0,0,0),(10,'忠犬八公的故事','9.jpg',' 莱塞·霍尔斯道姆 Lasse Hallström',' 理查·基尔 Richard Ger...','2009','美国 英国','剧情',9.3,'永远都不能忘记你所爱的人。',0,'0','0','0','0','0',0,0,0,0,0),(11,'机器人总动员','10.jpg',' 安德鲁·斯坦顿 Andrew Stanton',' 本·贝尔特 Ben Burtt / 艾丽...','2008','美国','爱情 科幻 动画 冒险',9.3,'小瓦力，大人生。',0,'0','0','0','0','0',0,0,0,0,0),(12,'三傻大闹宝莱坞','11.jpg',' 拉库马·希拉尼 Rajkumar Hirani',' 阿米尔·汗 Aamir Khan / 卡...','2009','印度','剧情 喜剧 爱情 歌舞',9.2,'英俊版憨豆，高情商版谢耳朵。',0,'0','0','0','0','0',0,0,0,0,0),(13,'海上钢琴师','12.jpg',' 朱塞佩·托纳多雷 Giuseppe Tornatore',' 蒂姆·罗斯 Tim Roth / ...','1998','意大利','剧情 音乐',9.2,'每个人都要走一条自己坚定了的路，就算是粉身碎骨。',5,'0','0','0','0','0',0,0,0,0,0),(14,'放牛班的春天','13.jpg',' 克里斯托夫·巴拉蒂 Christophe Barratier',' 热拉尔·朱尼奥 Gé...','2004','法国 瑞士 德国','剧情 音乐',9.3,'天籁一般的童声，是最接近上帝的存在。',3,'0','0','0','0','0',0,0,0,0,0),(15,'楚门的世界','14.jpg',' 彼得·威尔 Peter Weir',' 金·凯瑞 Jim Carrey / 劳拉·琳妮 Lau...','1998','美国','剧情 科幻',9.2,'如果再也不能见到你，祝你早安，午安，晚安。',3,'0','0','0','0','0',0,0,0,0,0),(16,'大话西游之大圣娶亲','15.jpg',' 刘镇伟 Jeffrey Lau',' 周星驰 Stephen Chow / 吴孟达 Man Tat Ng...','1995','香港 中国大陆','喜剧 爱情 奇幻 古装',9.2,'一生所爱。',0,'0','0','0','0','0',0,0,0,0,0),(17,'星际穿越','16.jpg',' 克里斯托弗·诺兰 Christopher Nolan',' 马修·麦康纳 Matthew Mc...','2014','美国 英国 加拿大 冰岛','剧情 科幻 冒险',9.2,'爱是一种力量，让我们超越时空感知它的存在。',0,'0','0','0','0','0',0,0,0,0,0),(18,'龙猫','17.jpg',' 宫崎骏 Hayao Miyazaki',' 日高法子 Noriko Hidaka / 坂本千夏 Ch...','1988','日本','动画 奇幻 冒险',9.2,'人人心中都有个龙猫，童年就永远不会消失。',0,'0','0','0','0','0',0,0,0,0,0),(19,'教父','18.jpg',' 弗朗西斯·福特·科波拉 Francis Ford Coppola',' 马龙·白兰度 M...','1972','美国','剧情 犯罪',9.2,'千万不要记恨你的对手，这样会让你失去理智。',0,'0','0','0','0','0',0,0,0,0,0),(20,'熔炉','19.jpg',' 黄东赫 Dong-hyuk Hwang',' 孔侑 Yoo Gong / 郑有美 Yu-mi Jeong ...','2011','韩国','剧情',9.3,'我们一路奋战不是为了改变世界，而是为了不让世界改变我们。',0,'0','0','0','0','0',0,0,0,0,0),(21,'无间道','20.jpg',' 刘伟强 / 麦兆辉',' 刘德华 / 梁朝伟 / 黄秋生...','2002','香港','剧情 犯罪 悬疑',9.1,'香港电影史上永不过时的杰作。',0,'0','0','0','0','0',0,0,0,0,0),(22,'疯狂动物城','21.jpg',' 拜伦·霍华德 Byron Howard / 瑞奇·摩尔 Rich Moore',' 金妮弗·...','2016','美国','喜剧 动画 冒险',9.2,'迪士尼给我们营造的乌托邦就是这样，永远善良勇敢，永远出乎意料。',0,'0','0','0','0','0',0,0,0,0,0),(23,'当幸福来敲门','22.jpg',' 加布里尔·穆奇诺 Gabriele Muccino',' 威尔·史密斯 Will Smith ...','2006','美国','剧情 传记 家庭',9,'平民励志片。',0,'0','0','0','0','0',0,0,0,0,0),(24,'怦然心动','23.jpg',' 罗伯·莱纳 Rob Reiner',' 玛德琳·卡罗尔 Madeline Carroll ...','2010','美国','剧情 喜剧 爱情',9,'真正的幸福是来自内心深处。',0,'0','0','0','0','0',0,0,0,0,0),(25,'触不可及','24.jpg',' 奥利维·那卡什 Olivier Nakache / 艾力克·托兰达 Eric Toledano',' ...','2011','法国','剧情 喜剧',9.2,'满满温情的高雅喜剧。',0,'0','0','0','0','0',0,0,0,0,0),(26,'乱世佳人','25.jpg',' 维克多·弗莱明 Victor Fleming / 乔治·库克 George Cukor',' 费...','1939','美国','剧情 历史 爱情 战争',9.2,'Tomorrow is another day.',0,'0','0','0','0','0',0,0,0,0,0),(27,'蝙蝠侠：黑暗骑士','26.jpg',' 克里斯托弗·诺兰 Christopher Nolan',' 克里斯蒂安·贝尔 Christ...','2008','美国 英国','剧情 动作 科幻 犯罪 惊悚',9.1,'无尽的黑暗。',0,'0','0','0','0','0',0,0,0,0,0),(28,'活着','27.jpg',' 张艺谋 Yimou Zhang',' 葛优 You Ge / 巩俐 Li Gong / 姜武 Wu Jiang...','1994','中国大陆 香港','剧情 历史 家庭',9.2,'张艺谋最好的电影。',0,'0','0','0','0','0',0,0,0,0,0),(29,'少年派的奇幻漂流','28.jpg',' 李安 Ang Lee',' 苏拉·沙玛 Suraj Sharma / 伊尔凡·可汗 Irrfan...','2012','美国 台湾 英国 加拿大','剧情 奇幻 冒险',9,'瑰丽壮观、无人能及的冒险之旅。',0,'0','0','0','0','0',0,0,0,0,0),(30,'天堂电影院','29.jpg',' 朱塞佩·托纳多雷 Giuseppe Tornatore',' 安东内拉·阿蒂利 Anton...','1988','意大利 法国','剧情 爱情',9.2,'那些吻戏，那些青春，都在影院的黑暗里被泪水冲刷得无比清晰。',0,'0','0','0','0','0',0,0,0,0,0),(31,'鬼子来了','30.jpg',' 姜文 Wen Jiang',' 姜文 Wen Jiang / 香川照之 Teruyuki Kagawa /...','2000','中国大陆','剧情 历史 战争',9.2,'对敌人的仁慈，就是对自己残忍。',0,'0','0','0','0','0',0,0,0,0,0),(32,'控方证人','31.jpg',' 比利·怀尔德 Billy Wilder',' 泰隆·鲍华 Tyrone Power / 玛琳·...','1957','美国','剧情 犯罪 悬疑',9.6,'比利·怀德满分作品。',0,'0','0','0','0','0',0,0,0,0,0),(33,'十二怒汉','32.jpg',' Sidney Lumet',' 亨利·方达 Henry Fonda / 马丁·鲍尔萨姆 Marti...','1957','美国','剧情',9.4,'1957年的理想主义。',0,'0','0','0','0','0',0,0,0,0,0),(34,'指环王3：王者无敌','33.jpg',' 彼得·杰克逊 Peter Jackson',' 维果·莫腾森 Viggo Mortensen / ...','2003','美国 新西兰','剧情 动作 奇幻 冒险',9.1,'史诗的终章。',0,'0','0','0','0','0',0,0,0,0,0),(35,'天空之城','34.jpg',' 宫崎骏 Hayao Miyazaki',' 田中真弓 Mayumi Tanaka / 横泽启子 Ke...','1986','日本','动画 奇幻 冒险',9.1,'对天空的追逐，永不停止。',0,'0','0','0','0','0',0,0,0,0,0),(36,'飞屋环游记','35.jpg',' 彼特·道格特 Pete Docter / 鲍勃·彼德森 Bob Peterson',' 爱德...','2009','美国','剧情 喜剧 动画 冒险',8.9,'最后那些最无聊的事情，才是最值得怀念的。',0,'0','0','0','0','0',0,0,0,0,0),(37,'摔跤吧！爸爸','36.jpg',' 涅提·蒂瓦里 Nitesh Tiwari',' 阿米尔·汗 Aamir Khan / 法缇玛...','2016','印度','剧情 传记 运动 家庭',9,'你不是在为你一个人战斗，你要让千千万万的女性看到女生并不是只能相夫教子。',0,'0','0','0','0','0',0,0,0,0,0),(38,'搏击俱乐部','37.jpg',' 大卫·芬奇 David Fincher',' 爱德华·诺顿 Edward Norton / 布拉...','1999','美国 德国','剧情 动作 悬疑 惊悚',9,'邪恶与平庸蛰伏于同一个母体，在特定的时间互相对峙。',0,'0','0','0','0','0',0,0,0,0,0),(39,'大话西游之月光宝盒','38.jpg',' 刘镇伟 Jeffrey Lau',' 周星驰 Stephen Chow / 吴孟达 Man Tat Ng...','1995','香港 中国大陆','喜剧 爱情 奇幻 古装',8.9,'旷古烁今。',0,'0','0','0','0','0',0,0,0,0,0),(40,'罗马假日','39.jpg',' 威廉·惠勒 William Wyler',' 奥黛丽·赫本 Audrey Hepburn / 格...','1953','美国','喜剧 剧情 爱情',9,'爱情哪怕只有一天。',0,'0','0','0','0','0',0,0,0,0,0),(41,'哈尔的移动城堡','40.jpg',' 宫崎骏 Hayao Miyazaki',' 倍赏千惠子 Chieko Baishô / 木村拓...','2004','日本','动画 奇幻 冒险',9,'带着心爱的人在天空飞翔。',0,'0','0','0','0','0',0,0,0,0,0),(42,'闻香识女人','41.jpg',' 马丁·布莱斯 Martin Brest',' 阿尔·帕西诺 Al Pacino / 克里斯...','1992','美国','剧情',9,'史上最美的探戈。',0,'0','0','0','0','0',0,0,0,0,0),(43,'窃听风暴','42.jpg',' 弗洛里安·亨克尔·冯·多纳斯马尔克 Florian Henckel von Donnersmarck&n',' ...','2006','德国','剧情 悬疑',9.1,'别样人生。',0,'0','0','0','0','0',0,0,0,0,0),(44,'辩护人','43.jpg',' 杨宇硕 Woo-seok Yang',' 宋康昊 Kang-ho Song / 吴达洙 Dal-su O...','2013','韩国','剧情',9.2,'电影的现实意义大过电影本身。',0,'0','0','0','0','0',0,0,0,0,0),(45,'两杆大烟枪','44.jpg',' Guy Ritchie',' Jason Flemyng / Dexter Fletcher / Nick Moran...','1998','英国','剧情 喜剧 犯罪',9.1,'4个臭皮匠顶个诸葛亮，盖·里奇果然不是盖的。',0,'0','0','0','0','0',0,0,0,0,0),(46,'飞越疯人院','45.jpg',' 米洛斯·福尔曼 Miloš Forman',' 杰克·尼科尔森 Jack Nichols...','1975','美国','剧情',9.1,'自由万岁。',0,'0','0','0','0','0',0,0,0,0,0),(47,'死亡诗社','46.jpg',' 彼得·威尔 Peter Weir',' 罗宾·威廉姆斯 Robin Williams / 罗伯...','1989','美国','剧情',9,'当一个死水般的体制内出现一个活跃的变数时，所有的腐臭都站在了光明的对面。',0,'0','0','0','0','0',0,0,0,0,0),(48,'末代皇帝','47.jpg',' 贝纳尔多·贝托鲁奇 Bernardo Bertolucci',' 尊龙 John Lone / 陈...','1987','英国 意大利 中国大陆 法国 美国','剧情 传记 历史',9.1,'“不要跟我比惨，我比你更惨”再适合这部电影不过了。',0,'0','0','0','0','0',0,0,0,0,0),(49,'V字仇杀队','48.jpg',' 詹姆斯·麦克特格 James McTeigue',' 娜塔莉·波特曼 Natalie Por...','2005','美国 英国 德国','剧情 动作 科幻 惊悚',8.8,'一张面具背后的理想与革命。',0,'0','0','0','0','0',0,0,0,0,0),(50,'指环王2：双塔奇兵','49.jpg',' 彼得·杰克逊 Peter Jackson',' 伊利亚·伍德 Elijah Wood / 西恩...','2002','美国 新西兰','剧情 动作 奇幻 冒险',9,'承前启后的史诗篇章。',0,'0','0','0','0','0',0,0,0,0,0),(51,'教父2','50.jpg',' 弗朗西斯·福特·科波拉 Francis Ford Coppola',' 阿尔·帕西诺 A...','1974','美国','剧情 犯罪',9.1,'优雅的孤独。',0,'0','0','0','0','0',0,0,0,0,0),(52,'素媛','51.jpg',' 李濬益 Jun-ik Lee',' 薛景求 Kyung-gu Sol / 严志媛 Ji-won Uhm ...','2013','韩国','剧情',9.2,'受过伤害的人总是笑得最开心，因为他们不愿意让身边的人承受一样的痛苦。',0,'0','0','0','0','0',0,0,0,0,0),(53,'指环王1：魔戒再现','52.jpg',' 彼得·杰克逊 Peter Jackson',' 伊利亚·伍德 Elijah Wood / 西恩...','2001','新西兰 美国','剧情 动作 奇幻 冒险',9,'传说的开始。',0,'0','0','0','0','0',0,0,0,0,0),(54,'海豚湾','53.jpg',' 路易·西霍尤斯 Louie Psihoyos',' Richard O\'Barry / 路易·西霍...','2009','美国','纪录片',9.3,'海豚的微笑，是世界上最高明的伪装。',0,'0','0','0','0','0',0,0,0,0,0),(55,'饮食男女','54.jpg',' 李安 Ang Lee',' 郎雄 Sihung Lung / 杨贵媚 Kuei-Mei Yang / 吴...','1994','台湾 美国','剧情 家庭',9.1,'人生不能像做菜，把所有的料都准备好了才下锅。',0,'0','0','0','0','0',0,0,0,0,0),(56,'美丽心灵','55.jpg',' 朗·霍华德 Ron Howard',' 罗素·克劳 Russell Crowe / 艾德·哈...','2001','美国','传记 剧情',8.9,'爱是一切逻辑和原由。',0,'0','0','0','0','0',0,0,0,0,0),(57,'狮子王','56.jpg',' Roger Allers / 罗伯·明可夫 Rob Minkoff',' 乔纳森·泰勒·托马...','1994','美国','剧情 动画 冒险 歌舞 家庭',9,'动物版《哈姆雷特》。',0,'0','0','0','0','0',0,0,0,0,0),(58,'情书','57.jpg',' 岩井俊二 Shunji Iwai',' 中山美穗 Miho Nakayama / 丰川悦司 Ets...','1995','日本','剧情 爱情',8.9,'暗恋的极致。',0,'0','0','0','0','0',0,0,0,0,0),(59,'寻梦环游记','58.jpg',' 李·昂克里奇 Lee Unkrich / 阿德里安·莫利纳 Adrian Molina',' ...','2017','美国','喜剧 动画 奇幻 音乐',9,'死亡不是真的逝去，遗忘才是永恒的消亡。',0,'0','0','0','0','0',0,0,0,0,0),(60,'钢琴家','59.jpg',' 罗曼·波兰斯基 Roman Polanski',' 艾德里安·布洛迪 Adrien Brod...','2002','法国 德国 英国 波兰','剧情 传记 历史 战争 音乐',9.1,'音乐能化解仇恨。',0,'0','0','0','0','0',0,0,0,0,0),(61,'美国往事','60.jpg',' 赛尔乔·莱翁内 Sergio Leone',' 罗伯特·德尼罗 Robert De Niro ...','1984','意大利 美国','犯罪 剧情',9.1,'往事如烟，无处祭奠。',0,'0','0','0','0','0',0,0,0,0,0),(62,'本杰明·巴顿奇事','61.jpg',' 大卫·芬奇 David Fincher',' 凯特·布兰切特 Cate Blanchett / ...','2008','美国','剧情 爱情 奇幻',8.8,'在时间之河里感受溺水之苦。',0,'0','0','0','0','0',0,0,0,0,0),(63,'小鞋子','62.jpg',' 马基德·马基迪 Majid Majidi',' 法拉赫阿米尔·哈什米安 Amir Fa...','1997','伊朗','剧情 儿童 家庭',9.2,'奔跑的孩子是天使。',0,'0','0','0','0','0',0,0,0,0,0),(64,'黑客帝国','63.jpg',' 安迪·沃卓斯基 Andy Wachowski / 拉娜·沃卓斯基 Lana Wachowski',' ...','1999','美国 澳大利亚','动作 科幻',8.9,'视觉革命。',0,'0','0','0','0','0',0,0,0,0,0),(65,'西西里的美丽传说','64.jpg',' 朱塞佩·托纳多雷 Giuseppe Tornatore',' 莫妮卡·贝鲁奇 Monica ...','2000','意大利 美国','剧情 战争 情色',8.8,'美丽无罪。',0,'0','0','0','0','0',0,0,0,0,0),(66,'看不见的客人','65.jpg',' 奥里奥尔·保罗 Oriol Paulo',' 马里奥·卡萨斯 Mario Casas / 阿...','2016','西班牙','剧情 犯罪 悬疑 惊悚',8.7,'你以为你以为的就是你以为的。',0,'0','0','0','0','0',0,0,0,0,0),(67,'让子弹飞','66.jpg',' 姜文 Wen Jiang',' 姜文 Wen Jiang / 葛优 You Ge / 周润发 Yun-F...','2010','中国大陆 香港','剧情 喜剧 动作 西部',8.7,'你给我翻译翻译，神马叫做TMD的惊喜。',0,'0','0','0','0','0',0,0,0,0,0),(68,'拯救大兵瑞恩','67.jpg',' 史蒂文·斯皮尔伯格 Steven Spielberg',' 汤姆·汉克斯 Tom Hanks...','1998','美国','剧情 历史 战争',8.9,'美利坚精神输出大片No1.',0,'0','0','0','0','0',0,0,0,0,0),(69,'致命魔术','68.jpg',' 克里斯托弗·诺兰 Christopher Nolan',' 休·杰克曼 Hugh Jackman...','2006','美国 英国','剧情 悬疑 惊悚',8.8,'孪生蝙蝠侠大战克隆金刚狼。',0,'0','0','0','0','0',0,0,0,0,0),(70,'七宗罪','69.jpg',' 大卫·芬奇 David Fincher',' 摩根·弗里曼 Morgan Freeman / 布...','1995','美国','剧情 犯罪 悬疑 惊悚',8.8,'警察抓小偷，老鼠玩死猫。',0,'0','0','0','0','0',0,0,0,0,0),(71,'大闹天宫','70.jpg',' 万籁鸣 Laiming Wan / 唐澄 Cheng  Tang',' 邱岳峰 Yuefeng Qiu /...','1961(中国大陆)  1964(中国大陆)   1978(中国大陆)   2004(中国大陆)','中国大陆','动画 奇幻',9.3,'经典之作，历久弥新。',0,'0','0','0','0','0',0,0,0,0,0),(72,'被嫌弃的松子的一生','71.jpg',' 中岛哲也 Tetsuya Nakashima',' 中谷美纪 Miki Nakatani / 瑛太 E...','2006','日本','剧情 歌舞',8.9,'以戏谑来戏谑戏谑。',0,'0','0','0','0','0',0,0,0,0,0),(73,'哈利·波特与魔法石','72.jpg',' Chris Columbus',' Daniel Radcliffe / Emma Watson / Rupert Grint...','2001','美国 英国','奇幻 冒险',8.9,'童话世界的开端。',0,'0','0','0','0','0',0,0,0,0,0),(74,'音乐之声','73.jpg',' 罗伯特·怀斯 Robert Wise',' 朱莉·安德鲁斯 Julie Andrews / 克...','1965','美国','剧情 传记 爱情 歌舞',9,'用音乐化解仇恨，让歌声串起美好。',0,'0','0','0','0','0',0,0,0,0,0),(75,'低俗小说','74.jpg',' 昆汀·塔伦蒂诺 Quentin Tarantino',' 约翰·特拉沃尔塔 John Tra...','1994','美国','剧情 喜剧 犯罪',8.8,'故事的高级讲法。',0,'0','0','0','0','0',0,0,0,0,0),(76,'天使爱美丽','75.jpg',' 让-皮埃尔·热内 Jean-Pierre Jeunet',' 奥黛丽·塔图 Audrey Tau...','2001','法国 德国','喜剧 爱情',8.7,'法式小清新。',0,'0','0','0','0','0',0,0,0,0,0),(77,'沉默的羔羊','76.jpg',' 乔纳森·戴米 Jonathan Demme',' 朱迪·福斯特 Jodie Foster / 安...','1991','美国','剧情 犯罪 惊悚',8.8,'安东尼·霍普金斯的顶级表演。',0,'0','0','0','0','0',0,0,0,0,0),(78,'勇敢的心','77.jpg',' 梅尔·吉布森 Mel Gibson',' 梅尔·吉布森 Mel Gibson / 苏菲·玛...','1995','美国','动作 传记 剧情 历史 战争',8.8,'史诗大片的典范。',0,'0','0','0','0','0',0,0,0,0,0),(79,'剪刀手爱德华','78.jpg',' 蒂姆·波顿 Tim Burton',' 约翰尼·德普 Johnny Depp / 薇诺娜·...','1990','美国','剧情 奇幻 爱情',8.7,'浪漫忧郁的成人童话。',0,'0','0','0','0','0',0,0,0,0,0),(80,'蝴蝶效应','79.jpg',' 埃里克·布雷斯 Eric Bress / J·麦基·格鲁伯 J. Mackye Gruber',' ...','2004','美国 加拿大','剧情 悬疑 科幻 惊悚',8.7,'人的命运被自己瞬间的抉择改变。',0,'0','0','0','0','0',0,0,0,0,0),(81,'春光乍泄','80.jpg',' 王家卫 Kar Wai Wong',' 张国荣 Leslie Cheung / 梁朝伟 Tony Leu...','1997','香港 日本 韩国','剧情 爱情 同性',8.9,'爱情纠缠，男女一致。',0,'0','0','0','0','0',0,0,0,0,0),(82,'猫鼠游戏','81.jpg',' 史蒂文·斯皮尔伯格 Steven Spielberg',' 莱昂纳多·迪卡普里奥 L...','2002','美国 加拿大','传记 犯罪 剧情',8.9,'骗子大师和执著警探的你追我跑故事。',0,'0','0','0','0','0',0,0,0,0,0),(83,'心灵捕手','82.jpg',' 格斯·范·桑特 Gus Van Sant',' 马特·达蒙 Matt Damon / 罗宾·...','1997','美国','剧情',8.8,'人生中应该拥有这样的一段豁然开朗。',0,'0','0','0','0','0',0,0,0,0,0),(84,'布达佩斯大饭店','83.jpg',' 韦斯·安德森 Wes Anderson',' 拉尔夫·费因斯 Ralph Fiennes / ...','2014','美国 德国 英国','剧情 喜剧 冒险',8.8,'小清新的故事里注入了大历史的情怀。',0,'0','0','0','0','0',0,0,0,0,0),(85,'禁闭岛','84.jpg',' Martin Scorsese',' 莱昂纳多·迪卡普里奥 Leonardo DiCaprio / ...','2010','美国','剧情 悬疑 惊悚',8.7,'昔日翩翩少年，今日大腹便便。',0,'0','0','0','0','0',0,0,0,0,0),(86,'入殓师','85.jpg',' 泷田洋二郎 Yôjirô Takita',' 本木雅弘 Masahiro Motoki / ...','2008','日本','剧情',8.8,'死可能是一道门，逝去并不是终结，而是超越，走向下一程。',0,'0','0','0','0','0',0,0,0,0,0),(87,'穿条纹睡衣的男孩','86.jpg',' 马克·赫尔曼 Mark Herman',' 阿萨·巴特菲尔德 Asa Butterfield ...','2008','英国 美国','剧情 战争',9,'尽管有些不切实际的幻想，这部电影依旧是一部感人肺腑的佳作。',0,'0','0','0','0','0',0,0,0,0,0),(88,'幽灵公主','87.jpg',' 宫崎骏 Hayao Miyazaki',' 松田洋治 Yôji Matsuda / 石田百合...','1997','日本','动画 奇幻 冒险',8.8,'人与自然的战争史诗。',0,'0','0','0','0','0',0,0,0,0,0),(89,'阿凡达','88.jpg',' 詹姆斯·卡梅隆 James Cameron',' 萨姆·沃辛顿 Sam Worthington ...','2009','美国 英国','动作 战争 科幻 冒险',8.7,'绝对意义上的美轮美奂。',0,'0','0','0','0','0',0,0,0,0,0),(90,'阳光灿烂的日子','89.jpg',' 姜文 Wen Jiang',' 夏雨 Yu Xia / 宁静 Jing Ning / 陶虹 Hong Tao...','1994','中国大陆 香港','剧情 爱情',8.8,'一场华丽的意淫。',0,'0','0','0','0','0',0,0,0,0,0),(91,'玛丽和马克思','90.jpg',' 亚当·艾略特 Adam Elliot',' 托妮·科莱特 Toni Collette / 菲利...','2009','澳大利亚','剧情 喜剧 动画',8.9,'你是我最好的朋友，你是我唯一的朋友 。',0,'0','0','0','0','0',0,0,0,0,0),(92,'第六感','91.jpg',' M·奈特·沙马兰 M. Night Shyamalan',' 布鲁斯·威利斯 Bruce Wi...','1999','美国','剧情 悬疑 惊悚',8.8,'深入内心的恐怖，出人意料的结局。',0,'0','0','0','0','0',0,0,0,0,0),(93,'致命ID','92.jpg',' James Mangold',' John Cusack / Ray Liotta / Amanda Peet...','2003','美国','剧情 悬疑 惊悚',8.7,'最不可能的那个人永远是最可能的。',0,'0','0','0','0','0',0,0,0,0,0),(94,'狩猎','93.jpg',' 托马斯·温特伯格 Thomas Vinterberg',' 麦斯·米科尔森 Mads Mik...','2012','丹麦 瑞典','剧情',9.1,'人言可畏。',0,'0','0','0','0','0',0,0,0,0,0),(95,'重庆森林','94.jpg',' 王家卫 Kar Wai Wong',' 林青霞 Brigitte Lin / 金城武 Takeshi K...','1994','香港','剧情 爱情',8.7,'寂寞没有期限。',0,'0','0','0','0','0',0,0,0,0,0),(96,'断背山','95.jpg',' 李安 Ang Lee',' 希斯·莱杰 Heath Ledger / 杰克·吉伦哈尔 Jake...','2005','美国 加拿大','剧情 爱情 同性 家庭',8.7,'每个人心中都有一座断背山。',0,'0','0','0','0','0',0,0,0,0,0),(97,'加勒比海盗','96.jpg',' 戈尔·维宾斯基 Gore Verbinski',' 约翰尼·德普 Johnny Depp / ...','2003','美国','动作 冒险 奇幻',8.7,'约翰尼·德普的独角戏。',0,'0','0','0','0','0',0,0,0,0,0),(98,'摩登时代','97.jpg',' 查理·卓别林 Charles Chaplin',' 查理·卓别林 Charles Chaplin ...','1936','美国','剧情 喜剧 爱情',9.2,'大时代中的人生，小人物的悲喜。',0,'0','0','0','0','0',0,0,0,0,0),(99,'告白','98.jpg',' 中岛哲也 Tetsuya Nakashima',' 松隆子 Takako Matsu / 冈田将生 ...','2010','日本','剧情 惊悚',8.7,'没有一人完全善，也没有一人完全恶。',0,'0','0','0','0','0',0,0,0,0,0),(100,'大鱼','99.jpg',' 蒂姆·波顿 Tim Burton',' 伊万·麦克格雷格 Ewan McGregor / 阿...','2003','美国','剧情 家庭 奇幻 冒险',8.8,'抱着梦想而活着的人是幸福的，怀抱梦想而死去的人是不朽的。',0,'0','0','0','0','0',0,0,0,0,0),(101,'喜剧之王','100.jpg',' 周星驰 Stephen Chow / 李力持 Lik-Chi Lee',' 周星驰 Stephen Ch...','1999','香港','喜剧 剧情 爱情',8.6,'我是一个演员。',0,'0','0','0','0','0',0,0,0,0,0),(102,'一一','101.jpg',' 杨德昌 Edward Yang',' 吴念真 / 李凯莉 Kelly Lee / 金燕玲 Elai...','2000','台湾 日本','剧情 爱情 家庭',9,'我们都曾经是一一。',0,'0','0','0','0','0',0,0,0,0,0),(103,'消失的爱人','102.jpg',' 大卫·芬奇 David Fincher',' 本·阿弗莱克 Ben Affleck / 罗莎蒙...','2014','美国','剧情 犯罪 悬疑 惊悚',8.7,'年度最佳date movie。',0,'0','0','0','0','0',0,0,0,0,0),(104,'射雕英雄传之东成西就','103.jpg',' 刘镇伟 Jeffrey Lau',' 梁朝伟 Tony Leung Chiu Wai / 林青霞 Bri...','1993','香港','喜剧 奇幻 武侠 古装',8.7,'百看不厌。',0,'0','0','0','0','0',0,0,0,0,0),(105,'阳光姐妹淘','104.jpg',' 姜炯哲 Hyeong-Cheol Kang',' 沈恩京 Eun-kyung Shim / 闵孝琳 Hy...','2011','韩国','剧情 喜剧',8.8,'再多各自牛逼的时光，也比不上一起傻逼的岁月。',0,'0','0','0','0','0',0,0,0,0,0),(106,'甜蜜蜜','105.jpg',' 陈可辛 Peter Chan',' 黎明 Leon Lai / 张曼玉 Maggie Cheung / ...','1996','香港','剧情 爱情',8.8,'相逢只要一瞬间，等待却像是一辈子。',0,'0','0','0','0','0',0,0,0,0,0),(107,'爱在黎明破晓前','106.jpg',' 理查德·林克莱特 Richard Linklater',' 伊桑·霍克 Ethan Hawke ...','1995','美国 奥地利 瑞士','剧情 爱情',8.8,'缘分是个连绵词，最美不过一瞬。',0,'0','0','0','0','0',0,0,0,0,0),(108,'小森林 夏秋篇','107.jpg',' 森淳一 Junichi Mori',' 桥本爱 Ai Hashimoto / 三浦贵大 Takahir...','2014','日本','剧情',9,'那些静得只能听见呼吸的日子里，你明白孤独即生活。',0,'0','0','0','0','0',0,0,0,0,0),(109,'侧耳倾听','108.jpg',' 近藤喜文 Yoshifumi Kondo',' 本名阳子 Youko Honna / 小林桂树 K...','1995','日本','剧情 爱情 动画',8.8,'少女情怀总是诗。',0,'0','0','0','0','0',0,0,0,0,0),(110,'红辣椒','109.jpg',' 今敏 Satoshi Kon',' 林原惠美 Megumi Hayashibara / 江守彻 Toru...','2006','日本','动画 悬疑 科幻 惊悚',8.9,'梦的勾结。',0,'0','0','0','0','0',0,0,0,0,0),(111,'倩女幽魂','110.jpg',' 程小东 Siu-Tung Ching',' 张国荣 Leslie Cheung / 王祖贤 Joey W...','1987','香港','剧情 爱情 武侠 古装',8.7,'两张绝世的脸。',0,'0','0','0','0','0',0,0,0,0,0),(112,'恐怖直播','111.jpg',' 金秉祐 Byeong-woo Kim',' 河正宇 Jung-woo Ha / 李璟荣 Kyeong-y...','2013','韩国','剧情 犯罪 悬疑',8.7,'恐怖分子的“秋菊打官司”。',0,'0','0','0','0','0',0,0,0,0,0),(113,'上帝之城','112.jpg',' Kátia Lund / Fernando Meirelles',' Alexandre Rodrigues / Lea...','2002','巴西 法国','犯罪 剧情',8.9,'被上帝抛弃了的上帝之城。',0,'0','0','0','0','0',0,0,0,0,0),(114,'风之谷','113.jpg',' 宫崎骏 Hayao Miyazaki',' 岛本须美 Sumi Shimamoto / 松田洋治 Y...','1984','日本','动画 奇幻 冒险',8.8,'动画片的圣经。',0,'0','0','0','0','0',0,0,0,0,0),(115,'请以你的名字呼唤我','114.jpg',' 卢卡·瓜达尼诺 Luca Guadagnino',' 艾米·汉莫 Armie Hammer / ...','2017','意大利 法国 巴西 美国 荷兰 德国','剧情 爱情 同性',8.8,'沉醉在电影的情感和视听氛围中无法自拔。',0,'0','0','0','0','0',0,0,0,0,0),(116,'超脱','115.jpg',' 托尼·凯耶 Tony Kaye',' 艾德里安·布洛迪 Adrien Brody / 马西...','2011','美国','剧情',8.8,'穷尽一生，我们要学会的，不过是彼此拥抱。',0,'0','0','0','0','0',0,0,0,0,0),(117,'驯龙高手','116.jpg',' 迪恩·德布洛斯 Dean DeBlois / 克里斯·桑德斯 Chris Sanders','...','2010','美国','动画 奇幻 冒险',8.7,'和谐的生活离不开摸头与被摸头。',0,'0','0','0','0','0',0,0,0,0,0),(118,'爱在日落黄昏时','117.jpg',' 理查德·林克莱特 Richard Linklater',' 伊桑·霍克 Ethan Hawke ...','2004','美国','剧情 爱情',8.8,'九年后的重逢是世俗和责任的交叠，没了悸动和青涩，沧桑而温暖。',0,'0','0','0','0','0',0,0,0,0,0),(119,'菊次郎的夏天','118.jpg',' 北野武 Takeshi Kitano',' 北野武 Takeshi Kitano / 关口雄介 Yus...','1999','日本','剧情 喜剧',8.8,'从没见过那么流氓的温柔，从没见过那么温柔的流氓。',0,'0','0','0','0','0',0,0,0,0,0),(120,'幸福终点站','119.jpg',' 史蒂文·斯皮尔伯格 Steven Spielberg',' 汤姆·汉克斯 Tom Hanks...','2004','美国','喜剧 剧情 爱情',8.7,'有时候幸福需要等一等。',0,'0','0','0','0','0',0,0,0,0,0),(121,'哈利·波特与死亡圣器(下)','120.jpg',' 大卫·叶茨 David Yates',' 丹尼尔·雷德克里夫 Daniel Radcliffe...','2011','美国 英国','剧情 悬疑 奇幻 冒险',8.7,'10年的完美句点。',0,'0','0','0','0','0',0,0,0,0,0),(122,'杀人回忆','121.jpg',' 奉俊昊 Joon-ho Bong',' 宋康昊 Kang-ho Song / 金相庆 Sang-kyun...','2003','韩国','犯罪 剧情 悬疑 惊悚',8.7,'关于连环杀人悬案的集体回忆。',0,'0','0','0','0','0',0,0,0,0,0),(123,'小森林 冬春篇','122.jpg',' 森淳一 Junichi Mori',' 桥本爱 Ai Hashimoto / 三浦贵大 Takahir...','2015','日本','剧情',9,'尊敬他人，尊敬你生活的这片土地，明白孤独是人生的常态。',0,'0','0','0','0','0',0,0,0,0,0),(124,'神偷奶爸','123.jpg',' 皮艾尔·柯芬 Pierre Coffin / 克里斯·雷纳德 Chris Renaud',' ...','2010','美国 法国','喜剧 动画 冒险',8.5,'Mr. I Don\'t Care其实也有Care的时候。',0,'0','0','0','0','0',0,0,0,0,0),(125,'借东西的小人阿莉埃蒂','124.jpg',' 米林宏昌 Hiromasa Yonebayashi',' 志田未来 Mirai Shida / 神木...','2010','日本','动画 奇幻 冒险',8.7,'曾经的那段美好会沉淀为一辈子的记忆。',0,'0','0','0','0','0',0,0,0,0,0),(126,'7号房的礼物','125.jpg',' 李焕庆 Hwan-kyeong Lee',' 柳承龙 Seung-yong Ryoo / 朴信惠 Shi...','2013','韩国','剧情 喜剧 家庭',8.8,'《我是山姆》的《美丽人生》。',0,'0','0','0','0','0',0,0,0,0,0),(127,'怪兽电力公司','126.jpg',' 彼特·道格特 Pete Docter / 大卫·斯沃曼 David Silverman',' 约...','2001','美国','儿童 喜剧 动画 奇幻 冒险',8.6,'不要给它起名字，起了名字就有感情了。',0,'0','0','0','0','0',0,0,0,0,0),(128,'岁月神偷','127.jpg',' 罗启锐 Alex Law',' 吴君如 Sandra Ng / 任达华 Simon Yam / 钟绍...','2010','香港 中国大陆','剧情 家庭',8.7,'岁月流逝，来日可追。',0,'0','0','0','0','0',0,0,0,0,0),(129,'萤火之森','128.jpg',' 大森贵弘 Takahiro Omori',' 佐仓绫音 Ayane Sakura / 内山昂辉 K...','2011','日本','剧情 爱情 动画 奇幻',8.8,'触不到的恋人。',0,'0','0','0','0','0',0,0,0,0,0),(130,'唐伯虎点秋香','129.jpg',' 李力持 Lik-Chi Lee',' 周星驰 Stephen Chow / 巩俐 Li Gong / 陈...','1993','香港','喜剧 爱情 古装',8.5,'华太师是黄霑，吴镇宇四大才子之一。',0,'0','0','0','0','0',0,0,0,0,0),(131,'七武士','130.jpg',' 黑泽明 Akira Kurosawa',' 三船敏郎 Toshirô Mifune / 志村乔 ...','1954','日本','动作 冒险 剧情',9.2,'时代悲歌。',0,'0','0','0','0','0',0,0,0,0,0),(132,'超能陆战队','131.jpg',' 唐·霍尔 Don Hall / 克里斯·威廉姆斯 Chris Williams',' 斯科特...','2014','美国','喜剧 动作 科幻 动画 冒险',8.6,'Balalala~~~',0,'0','0','0','0','0',0,0,0,0,0),(133,'蝙蝠侠：黑暗骑士崛起','132.jpg',' 克里斯托弗·诺兰 Christopher Nolan',' 克里斯蒂安·贝尔 Christ...','2012','美国 英国','剧情 动作 科幻 犯罪 惊悚',8.7,'诺兰就是保证。',0,'0','0','0','0','0',0,0,0,0,0),(134,'电锯惊魂','133.jpg',' 詹姆斯·温 James Wan',' 雷·沃纳尔 Leigh Whannell / 加利·艾...','2004','美国','悬疑 惊悚 恐怖',8.7,'真相就在眼前。',0,'0','0','0','0','0',0,0,0,0,0),(135,'真爱至上','134.jpg',' 理查德·柯蒂斯 Richard Curtis',' 休·格兰特 Hugh Grant / 柯林...','2003','英国 美国 法国','喜剧 剧情 爱情',8.6,'爱，是个动词。',0,'0','0','0','0','0',0,0,0,0,0),(136,'谍影重重3','135.jpg',' 保罗·格林格拉斯 Paul Greengrass',' 马特·达蒙 Matt Damon / ...','2007','美国 德国','动作 悬疑 惊悚',8.7,'像吃了苏打饼一样干脆的电影。',0,'0','0','0','0','0',0,0,0,0,0),(137,'疯狂原始人','136.jpg',' 科克·德·米科 Kirk De Micco / 克里斯·桑德斯 Chris Sanders',' ...','2013','美国','喜剧 动画 冒险',8.7,'老少皆宜，这就是好莱坞动画的魅力。',0,'0','0','0','0','0',0,0,0,0,0),(138,'萤火虫之墓','137.jpg',' 高畑勋 Isao Takahata',' 辰己努 / 白石绫乃 / 志乃原良子...','1988','日本','动画 剧情 战争',8.7,'幸福是生生不息，却难以触及的远。',0,'0','0','0','0','0',0,0,0,0,0),(139,'喜宴','138.jpg',' 李安 Ang Lee',' 赵文瑄 Winston Chao / 郎雄 Sihung Lung / 归亚...','1993','台湾 美国','剧情 喜剧 爱情 同性 家庭',8.9,'中国家庭的喜怒哀乐忍。',0,'0','0','0','0','0',0,0,0,0,0),(140,'东邪西毒','139.jpg',' 王家卫 Kar Wai Wong',' 张国荣 Leslie Cheung / 林青霞 Brigitte...','1994','香港 台湾','剧情 动作 爱情 武侠 古装',8.6,'电影诗。',0,'0','0','0','0','0',0,0,0,0,0),(141,'贫民窟的百万富翁','140.jpg',' 丹尼·鲍尔 Danny Boyle / 洛芙琳·坦丹 Loveleen Tandan',' 戴夫...','2008','英国 美国','剧情 爱情',8.5,'上帝之城+猜火车+阿甘正传+开心辞典=山寨富翁',0,'0','0','0','0','0',0,0,0,0,0),(142,'英雄本色','141.jpg',' 吴宇森 John Woo',' 周润发 Yun-Fat Chow / 狄龙 Lung Ti / 张国...','1986','香港','动作 犯罪',8.6,'英雄泪短，兄弟情长。',0,'0','0','0','0','0',0,0,0,0,0),(143,'记忆碎片','142.jpg',' 克里斯托弗·诺兰 Christopher Nolan',' 盖·皮尔斯 Guy Pearce /...','2000','美国','犯罪 剧情 悬疑 惊悚',8.6,'一个针管引发的血案。',0,'0','0','0','0','0',0,0,0,0,0),(144,'黑天鹅','143.jpg',' 达伦·阿罗诺夫斯基 Darren Aronofsky',' 娜塔莉·波特曼 Natalie...','2010','美国','剧情 惊悚',8.5,'黑暗之美。',0,'0','0','0','0','0',0,0,0,0,0),(145,'无人知晓','144.jpg',' 是枝裕和 Hirokazu Koreeda',' 柳乐优弥 Yûya Yagira / 北浦爱...','2004','日本','剧情',9.1,'我的平常生活就是他人的幸福。',0,'0','0','0','0','0',0,0,0,0,0),(146,'心迷宫','145.jpg',' 忻钰坤 Yukun Xin',' 霍卫民 Weimin Huo / 王笑天 Xiaotian Wang ...','2014','中国大陆','剧情 犯罪 悬疑',8.7,'荒诞讽刺，千奇百巧，抽丝剥茧，百转千回。',0,'0','0','0','0','0',0,0,0,0,0),(147,'傲慢与偏见','146.jpg',' 乔·怀特 Joe Wright',' 凯拉·奈特莉 Keira Knightley / 马修·...','2005','法国 英国 美国','剧情 爱情',8.5,'爱是摈弃傲慢与偏见之后的曙光。',0,'0','0','0','0','0',0,0,0,0,0),(148,'血战钢锯岭','147.jpg',' 梅尔·吉布森 Mel Gibson',' 安德鲁·加菲尔德 Andrew Garfield /...','2016','美国 澳大利亚','剧情 传记 历史 战争',8.7,'优秀的战争片不会美化战场，不会粉饰死亡，不会矮化敌人，不会无视常识，最重要的，不会宣扬战争。',0,'0','0','0','0','0',0,0,0,0,0),(149,'雨人','148.jpg',' 巴瑞·莱文森 Barry Levinson',' 达斯汀·霍夫曼 Dustin Hoffman ...','1988','美国','剧情',8.7,'生活在自己的世界里，也可以让周围的人显得可笑和渺小。',0,'0','0','0','0','0',0,0,0,0,0),(150,'时空恋旅人','149.jpg',' 理查德·柯蒂斯 Richard Curtis',' 多姆纳尔·格里森 Domhnall Gl...','2013','英国','喜剧 爱情 奇幻',8.7,'把每天当作最后一天般珍惜度过，积极拥抱生活，就是幸福。',0,'0','0','0','0','0',0,0,0,0,0),(151,'荒蛮故事','150.jpg',' 达米安·斯兹弗隆 Damián Szifron',' 达里奥·葛兰帝内提 Darío...','2014','阿根廷 西班牙','剧情 喜剧 犯罪',8.8,'始于荒诞，止于更荒诞。',0,'0','0','0','0','0',0,0,0,0,0),(152,'纵横四海','151.jpg',' 吴宇森 John Woo',' 周润发 Yun-Fat Chow / 张国荣 Leslie Cheung...','1991','香港','剧情 喜剧 动作 犯罪',8.7,'香港浪漫主义警匪动作片的巅峰之作。',0,'0','0','0','0','0',0,0,0,0,0),(153,'教父3','152.jpg',' 弗朗西斯·福特·科波拉 Francis Ford Coppola',' 阿尔·帕西诺 A...','1990','美国','剧情 犯罪',8.8,'任何信念的力量，都无法改变命运。',0,'0','0','0','0','0',0,0,0,0,0),(154,'卢旺达饭店','153.jpg',' 特瑞·乔治 Terry George',' 唐·钱德尔 Don Cheadle / 苏菲·奥...','2004','英国 南非 意大利 美国','剧情 历史 战争',8.9,'当这个世界闭上双眼，他却敞开了怀抱。',0,'0','0','0','0','0',0,0,0,0,0),(155,'玩具总动员3','154.jpg',' 李·昂克里奇 Lee Unkrich',' 汤姆·汉克斯 Tom Hanks / 蒂姆·艾...','2010','美国','喜剧 动画 奇幻 冒险',8.8,'跨度十五年的欢乐与泪水。',0,'0','0','0','0','0',0,0,0,0,0),(156,'达拉斯买家俱乐部','155.jpg',' 让-马克·瓦雷 Jean-Marc Vallée',' 马修·麦康纳 Matthew McCon...','2013','美国','剧情 传记 同性',8.7,'Jared Leto的腿比女人还美！',0,'0','0','0','0','0',0,0,0,0,0),(157,'花样年华','156.jpg',' 王家卫 Kar Wai Wong',' 梁朝伟 Tony Leung Chiu Wai / 张曼玉 Ma...','2000','香港','剧情 爱情',8.6,'偷情本没有这样美。',0,'0','0','0','0','0',0,0,0,0,0),(158,'完美的世界','157.jpg',' 克林特·伊斯特伍德 Clint Eastwood',' 凯文·科斯特纳 Kevin Cos...','1993','美国','剧情 犯罪',9,'坏人的好总是比好人的好来得更感人。',0,'0','0','0','0','0',0,0,0,0,0),(159,'海边的曼彻斯特','158.jpg',' 肯尼斯·罗纳根 Kenneth Lonergan',' 卡西·阿弗莱克 Casey Affle...','2016','美国','剧情 家庭',8.6,'我们都有权利不与自己的过去和解。',0,'0','0','0','0','0',0,0,0,0,0),(160,'海洋','159.jpg',' 雅克·贝汉 Jacques Perrin / 雅克·克鲁奥德 Jacques Cluzaud','...','2009','法国 瑞士 西班牙 美国 阿联酋','纪录片',9,'大海啊，不全是水。',0,'0','0','0','0','0',0,0,0,0,0),(161,'虎口脱险','160.jpg',' 杰拉尔·乌里 Gérard Oury',' 路易·德·菲耐斯 Louis de Funès...','1966','法国 英国','喜剧 战争',8.9,'永远看不腻的喜剧。',0,'0','0','0','0','0',0,0,0,0,0),(162,'恋恋笔记本','161.jpg',' 尼克·卡索维茨 Nick Cassavetes',' 瑞恩·高斯林 Ryan Gosling /...','2004','美国','剧情 爱情',8.5,'爱情没有那么多借口，如果不能圆满，只能说明爱的不够。',0,'0','0','0','0','0',0,0,0,0,0),(163,'你看起来好像很好吃','162.jpg',' 藤森雅也 Masaya Fujimori',' 山口胜平 Kappei Yamaguchi / 爱河...','2010','日本','剧情 动画 儿童',8.8,'感情不分食草或者食肉。',0,'0','0','0','0','0',0,0,0,0,0),(164,'燃情岁月','163.jpg',' 爱德华·兹威克 Edward Zwick',' 布拉德·皮特 Brad Pitt / 安东...','1994','美国','剧情 爱情 战争 西部',8.7,'传奇，不是每个人都可以拥有。',0,'0','0','0','0','0',0,0,0,0,0),(165,'二十二','164.jpg',' 郭柯 Ke Guo',' ...','2015','中国大陆','纪录片',8.7,'有一些东西不应该被遗忘。',0,'0','0','0','0','0',0,0,0,0,0),(166,'被解救的姜戈','165.jpg',' 昆汀·塔伦蒂诺 Quentin Tarantino',' 杰米·福克斯 Jamie Foxx /...','2012','美国','剧情 动作 西部 冒险',8.6,'热血沸腾，那个低俗、性感的无耻混蛋又来了。',0,'0','0','0','0','0',0,0,0,0,0),(167,'头脑特工队','166.jpg',' 彼特·道格特 Pete Docter / 罗纳尔多·德尔·卡门 Ronaldo Del Carmen&nb',' ...','2015','美国','喜剧 动画 冒险',8.7,'愿我们都不用长大，每一座城堡都能永远存在。',0,'0','0','0','0','0',0,0,0,0,0),(168,'冰川时代','167.jpg',' 卡洛斯·沙尔丹哈 Carlos Saldanha / 克里斯·韦奇 Chris Wedge',' ...','2002','美国','喜剧 动画 冒险',8.5,'松鼠才是角儿。',0,'0','0','0','0','0',0,0,0,0,0),(169,'雨中曲','168.jpg',' 斯坦利·多南 Stanley Donen / 吉恩·凯利 Gene Kelly',' 吉恩·...','1952','美国','喜剧 歌舞 爱情',9,'骨灰级歌舞片。',0,'0','0','0','0','0',0,0,0,0,0),(170,'我是山姆','169.jpg',' 杰茜·尼尔森 Jessie Nelson',' Sean Penn / Dakota Fanning / Mi...','2001','美国','剧情 家庭',8.9,'爱并不需要智商 。',0,'0','0','0','0','0',0,0,0,0,0),(171,'无敌破坏王','170.jpg',' 瑞奇·莫尔 Rich Moore',' 约翰·C·赖利 John C. Reilly / 萨拉...','2012','美国','喜剧 动画 奇幻 冒险',8.7,'迪士尼和皮克斯拿错剧本的产物。',0,'0','0','0','0','0',0,0,0,0,0),(172,'人工智能','171.jpg',' 史蒂文·斯皮尔伯格 Steven Spielberg',' 海利·乔·奥斯蒙 Haley...','2001','美国','冒险 剧情 科幻',8.6,'对爱的执着，可以超越一切。',0,'0','0','0','0','0',0,0,0,0,0),(173,'你的名字。','172.jpg',' 新海诚 Makoto Shinkai',' 神木隆之介 Ryûnosuke Kamiki / 上...','2016','日本','剧情 爱情 动画',8.4,'穿越错位的时空，仰望陨落的星辰，你没留下你的名字，我却无法忘记那句“我爱你”。',0,'0','0','0','0','0',0,0,0,0,0),(174,'爆裂鼓手','173.jpg',' 达米恩·查泽雷 Damien Chazelle',' 迈尔斯·特勒 Miles Teller /...','2014','美国','剧情 音乐',8.6,'这个世界从不善待努力的人，努力了也不一定会成功，但是知道自己在努力，就是活下去的动力。',0,'0','0','0','0','0',0,0,0,0,0),(175,'穿越时空的少女','174.jpg',' 细田守 Mamoru Hosoda',' 仲里依纱 Riisa Naka / 石田卓也 Takuya...','2006','日本','剧情 爱情 科幻 动画',8.6,'爱上未来的你。',0,'0','0','0','0','0',0,0,0,0,0),(176,'魂断蓝桥','175.jpg',' 茂文·勒鲁瓦 Mervyn LeRoy',' 费雯·丽 Vivien Leigh / 罗伯特·...','1940','美国','剧情 爱情 战争',8.8,'中国式内在的美国电影。',0,'0','0','0','0','0',0,0,0,0,0),(177,'猜火车','176.jpg',' 丹尼·博伊尔 Danny Boyle',' 伊万·麦克格雷格 Ewan McGregor / ...','1996','英国','剧情 犯罪',8.5,'不可猜的青春迷笛。',0,'0','0','0','0','0',0,0,0,0,0),(178,'未麻的部屋','177.jpg',' 今敏 Satoshi Kon',' 岩男润子 Junko Iwao / 松本梨香 Rica Matsu...','1997','日本','动画 奇幻 惊悚',8.9,'好的剧本是，就算你猜到了结局也猜不到全部。',0,'0','0','0','0','0',0,0,0,0,0),(179,'模仿游戏','178.jpg',' 莫滕·泰杜姆 Morten Tyldum',' 本尼迪克特·康伯巴奇 Benedict C...','2014','英国 美国','剧情 传记 战争 同性',8.6,'他给机器起名“克里斯托弗”，因为这是他初恋的名字。',0,'0','0','0','0','0',0,0,0,0,0),(180,'一个叫欧维的男人决定去死','179.jpg',' 汉内斯·赫尔姆 Hannes Holm',' 罗夫·拉斯加德 Rolf Lassgård...','2015','瑞典','剧情',8.8,'惠及一生的美丽。',0,'0','0','0','0','0',0,0,0,0,0),(181,'三块广告牌','180.jpg',' 马丁·麦克唐纳 Martin McDonagh',' 弗兰西斯·麦克多蒙德 France...','2017','美国 英国','剧情 犯罪',8.7,'N/A',0,'0','0','0','0','0',0,0,0,0,0),(182,'罗生门','181.jpg',' 黑泽明 Akira Kurosawa',' 三船敏郎 Toshirô Mifune / 千秋实 ...','1950','日本','犯罪 剧情 悬疑',8.7,'人生的N种可能性。',0,'0','0','0','0','0',0,0,0,0,0),(183,'房间','182.jpg',' 伦尼·阿伯拉罕森 Lenny Abrahamson',' 布丽·拉尔森 Brie Larson...','2015','爱尔兰 加拿大 英国 美国','剧情 家庭',8.8,'被偷走的岁月，被伤害的生命，被禁锢的灵魂，终将被希望和善意救赎。',0,'0','0','0','0','0',0,0,0,0,0),(184,'完美陌生人','183.jpg',' 保罗·格诺维瑟 Paolo Genovese',' 马可·贾利尼 Marco Giallini ...','2016','意大利','剧情 喜剧',8.5,'来啊，互相伤害啊！',0,'0','0','0','0','0',0,0,0,0,0),(185,'忠犬八公物语','184.jpg',' Seijirô Kôyama',' 山本圭 Kei Yamamoto / 井川比佐志 Hisa...','1987','日本','剧情',9.1,'养狗三日，便会对你终其一生。',0,'0','0','0','0','0',0,0,0,0,0),(186,'恐怖游轮','185.jpg',' 克里斯托弗·史密斯 Christopher Smith',' 梅利莎·乔治 Melissa ...','2009','英国 澳大利亚','剧情 悬疑 惊悚',8.4,'不要企图在重复中寻找已经失去的爱。',0,'0','0','0','0','0',0,0,0,0,0),(187,'阿飞正传','186.jpg',' 王家卫 Kar Wai Wong',' 张国荣 Leslie Cheung / 张曼玉 Maggie C...','1990','香港','犯罪 剧情 爱情',8.5,'王家卫是一种风格，张国荣是一个代表。',0,'0','0','0','0','0',0,0,0,0,0),(188,'魔女宅急便','187.jpg',' 宫崎骏 Hayao Miyazaki',' 高山南 Minami Takayama / 佐久间玲 Re...','1989','日本','动画 奇幻 冒险',8.5,'宫崎骏的电影总让人感觉世界是美好的，阳光明媚的。',0,'0','0','0','0','0',0,0,0,0,0),(189,'香水','188.jpg',' 汤姆·提克威 Tom Tykwer',' 本·卫肖 Ben Whishaw / 艾伦·瑞克...','2006','德国 法国 西班牙 美国','剧情 犯罪 奇幻',8.5,'一个单凭体香达到高潮的男人。',0,'0','0','0','0','0',0,0,0,0,0),(190,'浪潮','189.jpg',' 丹尼斯·甘塞尔 Dennis Gansel',' 尤尔根·沃格尔 Jürgen Vogel ...','2008','德国','剧情 惊悚',8.7,'世界离独裁只有五天。',0,'0','0','0','0','0',0,0,0,0,0),(191,'朗读者','190.jpg',' 史蒂芬·戴德利 Stephen Daldry',' 凯特·温丝莱特 Kate Winslet ...','2008','美国 德国','剧情 爱情',8.5,'当爱情跨越年龄的界限，它似乎能变得更久远一点，成为一种责任，一种水到渠成的相濡以沫。',0,'0','0','0','0','0',0,0,0,0,0),(192,'哪吒闹海','191.jpg',' 严定宪 Dingxian Yan / 王树忱 Shuchen Wang',' 梁正晖 Zhenghui ...','1979','中国大陆','冒险 动画 奇幻',8.9,'想你时你在闹海。',0,'0','0','0','0','0',0,0,0,0,0),(193,'可可西里','192.jpg',' 陆川 Chuan Lu',' 多布杰 Duobujie / 张磊 Lei Zhang / 亓亮 Qi L...','2004','中国大陆 香港','剧情 犯罪',8.7,'坚硬的信仰。',0,'0','0','0','0','0',0,0,0,0,0),(194,'黑客帝国3：矩阵革命','193.jpg',' Andy Wachowski / Larry Wachowski',' 基努·里维斯 Keanu Reeves...','2003','美国 澳大利亚','动作 科幻',8.6,'不得不说，《黑客帝国》系列是商业片与科幻、哲学完美结合的典范。',0,'0','0','0','0','0',0,0,0,0,0),(195,'海街日记','194.jpg',' 是枝裕和 Hirokazu Koreeda',' 绫濑遥 Haruka Ayase / 长泽雅美 M...','2015','日本','剧情 家庭',8.7,'是枝裕和的家庭习作。',0,'0','0','0','0','0',0,0,0,0,0),(196,'战争之王','195.jpg',' 安德鲁·尼科尔 Andrew Niccol',' 尼古拉斯·凯奇 Nicolas Cage /...','2005','美国 法国','剧情 犯罪',8.6,'做一颗让别人需要你的棋子。',0,'0','0','0','0','0',0,0,0,0,0),(197,'谍影重重','196.jpg',' 道格·里曼 Doug Liman',' 马特·达蒙 Matt Damon / 弗兰卡·波坦...','2002','美国 德国 捷克','动作 悬疑 惊悚',8.5,'哗啦啦啦啦，天在下雨，哗啦啦啦啦，云在哭泣……找自己。',0,'0','0','0','0','0',0,0,0,0,0),(198,'谍影重重2','197.jpg',' 保罗·格林格拉斯 Paul Greengrass',' 马特·达蒙 Matt Damon / ...','2004','美国 德国','动作 悬疑 惊悚',8.6,'谁说王家卫镜头很晃？',0,'0','0','0','0','0',0,0,0,0,0),(199,'牯岭街少年杀人事件','198.jpg',' 杨德昌 Edward Yang',' 张震 Chen Chang / 杨静怡 Lisa Yang / 张...','1991','台湾','剧情 犯罪',8.8,'弱者送给弱者的一刀。',0,'0','0','0','0','0',0,0,0,0,0),(200,'地球上的星星','199.jpg',' 阿米尔·汗 Aamir Khan&nbsp;&nbsp;&nbsp;',' 达席尔·萨法瑞 Darsheel Safary / 阿...','2007','印度','剧情 儿童 家庭',8.9,'天使保护事件始末。',0,'0','0','0','0','0',0,0,0,0,0),(201,'一次别离','200.jpg',' 阿斯哈·法哈蒂  Asghar Farhadi',' 佩曼·莫阿迪 Peyman Moadi /...','2011','伊朗 法国','剧情 家庭',8.7,'只有有信仰的人才能说出事实真相。',0,'0','0','0','0','0',0,0,0,0,0),(202,'追随','201.jpg',' 克里斯托弗·诺兰 Christopher Nolan',' 杰里米·西奥伯德 Jeremy...','1998','英国','犯罪 悬疑 惊悚',8.9,'诺兰的牛逼来源于内心散发出的恐惧。',0,'0','0','0','0','0',0,0,0,0,0),(203,'青蛇','202.jpg',' 徐克 Hark Tsui',' 张曼玉 Maggie Cheung / 王祖贤 Joey Wang / ...','1993','香港','剧情 爱情 奇幻 古装',8.5,'人生如此，浮生如斯。谁人言，花彼岸，此生情长意短。谁都是不懂爱的罢了。',0,'0','0','0','0','0',0,0,0,0,0),(204,'惊魂记','203.jpg',' Alfred Hitchcock',' Janet Leigh / Anthony Perkins / Vera Miles...','1960','美国','悬疑 惊悚 恐怖',8.9,'故事的反转与反转，分裂电影的始祖。',0,'0','0','0','0','0',0,0,0,0,0),(205,'终结者2：审判日','204.jpg',' 詹姆斯·卡梅隆 James Cameron',' 阿诺·施瓦辛格 Arnold Schwarz...','1991','美国 法国','动作 科幻',8.6,'少见的超越首部的续集，动作片中的经典。',0,'0','0','0','0','0',0,0,0,0,0),(206,'撞车','205.jpg',' 保罗·哈吉斯 Paul Haggis',' 桑德拉·布洛克 Sandra Bullock / ...','2004','美国 德国','犯罪 剧情',8.6,'天使与魔鬼的冲撞。',0,'0','0','0','0','0',0,0,0,0,0),(207,'疯狂的石头','206.jpg',' 宁浩 Hao Ning',' 郭涛 Tao Guo / 刘桦 Hua Liu / 连晋 Teddy Lin...','2006','中国大陆 香港','喜剧 犯罪',8.4,'中国版《两杆大烟枪》。',0,'0','0','0','0','0',0,0,0,0,0),(208,'源代码','207.jpg',' 邓肯·琼斯 Duncan Jones',' 杰克·吉伦哈尔 Jake Gyllenhaal / ...','2011','美国 加拿大','科幻 悬疑 惊悚',8.4,'邓肯·琼斯继《月球》之后再度奉献出一部精彩绝伦的科幻佳作。',0,'0','0','0','0','0',0,0,0,0,0),(209,'小萝莉的猴神大叔','208.jpg',' 卡比尔·汗 Kabir Khan',' 萨尔曼·汗 Salman Khan / 哈莎莉·马...','2015','印度','剧情 喜剧 动作',8.5,'宝莱坞的萝莉与大叔。',0,'0','0','0','0','0',0,0,0,0,0),(210,'再次出发之纽约遇见你','209.jpg',' 约翰·卡尼 John Carney',' 凯拉·奈特莉 Keira Knightley / 马克...','2013','美国','喜剧 爱情 音乐',8.5,'爱我就给我看你的播放列表。',0,'0','0','0','0','0',0,0,0,0,0),(211,'步履不停','210.jpg',' 是枝裕和 Hirokazu Koreeda',' 阿部宽 Hiroshi Abe / 夏川结衣 Yu...','2008','日本','剧情 家庭',8.8,'日本的家庭电影已经是世界巅峰了，步履不停是巅峰中的佳作。',0,'0','0','0','0','0',0,0,0,0,0),(212,'新龙门客栈','211.jpg',' 李惠民 Raymond Lee',' 张曼玉 Maggie Cheung / 林青霞 Brigitte ...','1992','香港 中国大陆','动作 爱情 武侠 古装',8.5,'嬉笑怒骂，调风动月。',0,'0','0','0','0','0',0,0,0,0,0),(213,'初恋这件小事','212.jpg',' 普特鹏·普罗萨卡·那·萨克那卡林 Puttipong Promsaka Na Sakolnakorn / 华森·波克彭',' ...','2010','泰国','剧情 喜剧 爱情',8.3,'黑小鸭速效美白记。',0,'0','0','0','0','0',0,0,0,0,0),(214,'梦之安魂曲','213.jpg',' 达伦·阿伦诺夫斯基 Darren Aronofsky',' 艾伦·伯斯汀 Ellen Bur...','2000','美国','剧情',8.7,'一场没有春天的噩梦。',0,'0','0','0','0','0',0,0,0,0,0),(215,'东京物语','214.jpg',' 小津安二郎 Yasujirô Ozu',' 笠智众 Chishû Ryû / 原节...','1953','日本','剧情 家庭',9.2,'东京那么大，如果有一天走失了，恐怕一辈子不能再相见。',0,'0','0','0','0','0',0,0,0,0,0),(216,'爱在午夜降临前','215.jpg',' 理查德·林克莱特 Richard Linklater',' 伊桑·霍克 Ethan Hawke ...','2013','美国 希腊','剧情 爱情',8.8,'所谓爱情，就是话唠一路，都不会心生腻烦，彼此嫌弃。',0,'0','0','0','0','0',0,0,0,0,0),(217,'无耻混蛋','216.jpg',' Quentin Tarantino',' 布拉德·皮特 Brad Pitt / 梅拉尼·罗兰 M...','2009','美国 德国','剧情 犯罪',8.5,'昆汀同学越来越变态了，比北野武还杜琪峰。',0,'0','0','0','0','0',0,0,0,0,0),(218,'城市之光','217.jpg',' Charles Chaplin',' 查理·卓别林 Charles Chaplin / 弗吉尼亚·...','1931','美国','喜剧 剧情 爱情',9.3,'永远的小人物，伟大的卓别林。',0,'0','0','0','0','0',0,0,0,0,0),(219,'天书奇谭','218.jpg',' 王树忱 Shuchen Wang / 钱运达 Yunda Qian',' 丁建华 Jianhua Din...','1983(中国大陆) ',' 2019(中国大陆重映)','中国大陆',9.1,'传奇的年代，醉人的童话。',0,'0','0','0','0','0',0,0,0,0,0),(220,'绿里奇迹','219.jpg',' Frank Darabont',' 汤姆·汉克斯 Tom Hanks / 大卫·摩斯 David M...','1999','美国','犯罪 剧情 奇幻 悬疑',8.7,'天使暂时离开。',0,'0','0','0','0','0',0,0,0,0,0),(221,'彗星来的那一夜','220.jpg',' 詹姆斯·沃德·布柯特 James Ward Byrkit',' 艾米丽·芭尔多尼 Em...','2013','美国 英国','科幻 悬疑 惊悚',8.5,'小成本大魅力。',0,'0','0','0','0','0',0,0,0,0,0),(222,'这个男人来自地球','221.jpg',' 理查德·沙因克曼 Richard Schenkman',' 大卫·李·史密斯 David ...','2007','美国','剧情 科幻',8.5,'科幻真正的魅力不是视觉效果能取代的。',0,'0','0','0','0','0',0,0,0,0,0),(223,'E.T. 外星人','222.jpg',' Steven Spielberg',' Henry Thomas / Dee Wallace / Robert MacNa...','1982','美国','剧情 科幻',8.5,'生病的E.T.皮肤的颜色就像柿子饼。',0,'0','0','0','0','0',0,0,0,0,0),(224,'末路狂花','223.jpg',' 雷德利·斯科特 Ridley Scott',' 吉娜·戴维斯 Geena Davis / 苏...','1991','美国 法国','犯罪 剧情 惊悚',8.7,'没有了退路，只好飞向自由。',0,'0','0','0','0','0',0,0,0,0,0),(225,'海蒂和爷爷','224.jpg',' 阿兰·葛斯彭纳 Alain Gsponer&nbsp;&nbsp;&nbsp;',' 阿努克·斯特芬 Anuk Steffen /...','2015','德国 瑞士 南非',';剧情 冒险 家庭',9.1,'N/A',0,'0','0','0','0','0',0,0,0,0,0),(226,'血钻','225.jpg',' 爱德华·兹威克 Edward Zwick',' 莱昂纳多·迪卡普里奥 Leonardo ...','2006','美国 德国','剧情 惊悚 冒险',8.6,'每个美丽事物背后都是滴血的现实。',0,'0','0','0','0','0',0,0,0,0,0),(227,'勇闯夺命岛','226.jpg',' 迈克尔·贝 Michael Bay',' 肖恩·康纳利 Sean Connery / 尼古拉...','1996','美国','动作 冒险',8.6,'类型片的极致。',0,'0','0','0','0','0',0,0,0,0,0),(228,'变脸','227.jpg',' 吴宇森 John Woo',' 约翰·特拉沃尔塔 John Travolta / 尼古拉斯...','1997','美国','动作 科幻 犯罪 惊悚',8.4,'当发哥的风衣、墨镜出现在了凯奇身上⋯⋯',0,'0','0','0','0','0',0,0,0,0,0),(229,'聚焦','228.jpg',' 托马斯·麦卡锡 Thomas McCarthy',' 马克·鲁弗洛 Mark Ruffalo /...','2015','美国','剧情 传记',8.8,'新闻人的理性求真。',0,'0','0','0','0','0',0,0,0,0,0),(230,'秒速5厘米','229.jpg',' 新海诚 Makoto Shinkai',' 水桥研二 Kenji Mizuhashi / 近藤好美 ...','2007','日本','动画 剧情 爱情',8.3,'青春就是放弃和怀念。',0,'0','0','0','0','0',0,0,0,0,0),(231,'发条橙','230.jpg',' Stanley Kubrick',' Malcolm McDowell / Patrick Magee / Michael...','1971','英国 美国','犯罪 剧情 科幻',8.5,'我完全康复了。',0,'0','0','0','0','0',0,0,0,0,0),(232,'黄金三镖客','231.jpg',' Sergio Leone',' Clint Eastwood / Eli Wallach / Lee Van Cleef...','1966','意大利 西班牙 西德','冒险 西部',9.1,'最棒的西部片。',0,'0','0','0','0','0',0,0,0,0,0),(233,'2001太空漫游','232.jpg',' 斯坦利·库布里克 Stanley Kubrick',' 凯尔·杜拉 Keir Dullea / ...','1968','英国 美国','科幻 惊悚 冒险',8.7,'现代科幻电影的开山之作，最伟大导演的最伟大影片。',0,'0','0','0','0','0',0,0,0,0,0),(234,'卡萨布兰卡','233.jpg',' 迈克尔·柯蒂兹 Michael Curtiz',' 亨弗莱·鲍嘉 Humphrey Bogart...','1942','美国','剧情 爱情 战争',8.6,'世界上有那么多女人那么多酒馆，但她偏偏走进我的这家。',0,'0','0','0','0','0',0,0,0,0,0),(235,'非常嫌疑犯','234.jpg',' 布莱恩·辛格 Bryan Singer',' 史蒂芬·鲍德温 Stephen Baldwin /...','1995','德国 美国','剧情 犯罪 悬疑 惊悚',8.6,'我不信仰上帝，但我敬畏上帝。',0,'0','0','0','0','0',0,0,0,0,0),(236,'黑鹰坠落','235.jpg',' 雷德利·斯科特 Ridley Scott',' 乔什·哈奈特 Josh Hartnett / ...','2001','美国','动作 历史 战争',8.6,'还原真实而残酷的战争。',0,'0','0','0','0','0',0,0,0,0,0),(237,'国王的演讲','236.jpg',' 汤姆·霍珀 Tom Hooper',' 柯林·菲尔斯 Colin Firth / 杰弗里·...','2010','英国 澳大利亚 美国','剧情 传记 历史',8.3,'皇上无话儿。',0,'0','0','0','0','0',0,0,0,0,0),(238,'我爱你','237.jpg',' 秋昌民 Chang-min Choo',' 宋在河 Jae-ho Song / 李顺载 Soon-jae...','2011','韩国','剧情 爱情',9,'你要相信，这世上真的有爱存在，不管在什么年纪',0,'0','0','0','0','0',0,0,0,0,0),(239,'美国丽人','238.jpg',' 萨姆·门德斯 Sam Mendes',' 凯文·史派西 Kevin Spacey / 安妮特...','1999','美国','剧情 爱情 家庭',8.5,'每个人的内心都是深不可测的大海。',0,'0','0','0','0','0',0,0,0,0,0),(240,'千钧一发','239.jpg',' 安德鲁·尼科尔 Andrew Niccol',' 伊桑·霍克 Ethan Hawke / 乌玛...','1997','美国','剧情 科幻 惊悚',8.7,'一部能引人思考的科幻励志片。',0,'0','0','0','0','0',0,0,0,0,0),(241,'碧海蓝天','240.jpg',' Luc Besson',' 让-马克·巴尔 Jean-Marc Barr / 让·雷诺 Jean Re...','1988','法国 美国 意大利','剧情 爱情',8.7,'在那片深蓝中，感受来自大海的忧伤寂寞与美丽自由。',0,'0','0','0','0','0',0,0,0,0,0),(242,'遗愿清单','241.jpg',' 罗伯·莱纳 Rob Reiner',' 杰克·尼科尔森 Jack Nicholson / 摩根...','2007','美国','冒险 喜剧 剧情',8.5,'用剩余不多的时间，去燃烧整个生命。',0,'0','0','0','0','0',0,0,0,0,0),(243,'疯狂的麦克斯4：狂暴之路','242.jpg',' 乔治·米勒 George Miller',' 汤姆·哈迪 Tom Hardy / 查理兹·塞...','2015','澳大利亚 美国','动作 科幻 冒险',8.6,'N/A',0,'0','0','0','0','0',0,0,0,0,0),(244,'英国病人','243.jpg',' 安东尼·明格拉 Anthony Minghella',' 拉尔夫·费因斯 Ralph Fien...','1996','美国 英国','爱情 剧情 战争',8.5,'In memory, love lives forever...',0,'0','0','0','0','0',0,0,0,0,0),(245,'荒野生存','244.jpg',' 西恩·潘 Sean Penn',' 埃米尔·赫斯基 Emile Hirsch / 马西娅·...','2007','美国','冒险 传记 剧情',8.6,'出门必备：本草纲目。',0,'0','0','0','0','0',0,0,0,0,0),(246,'荒岛余生','245.jpg',' 罗伯特·泽米吉斯 Robert Zemeckis',' 汤姆·汉克斯 Tom Hanks / ...','2000','美国','冒险 剧情',8.5,'一个人的独角戏。',0,'0','0','0','0','0',0,0,0,0,0),(247,'海盗电台','246.jpg',' 理查德·柯蒂斯 Richard Curtis',' 比尔·奈伊 Bill Nighy / 肯尼...','2009','英国 德国 法国','剧情 喜剧 音乐',8.6,'生命不止，摇滚不死。',0,'0','0','0','0','0',0,0,0,0,0),(248,'枪火','247.jpg',' 杜琪峰 Johnnie To',' 吴镇宇 Francis Ng / 任达华 Simon Yam / ...','1999','香港','剧情 动作 犯罪',8.7,'一群演技精湛的戏骨，奉献出一个精致的黑帮小品，成就杜琪峰群戏的巅峰之作。',0,'0','0','0','0','0',0,0,0,0,0),(249,'功夫','248.jpg',' 周星驰 Stephen Chow&nbsp;&nbsp;&nbsp;',' 周星驰 Stephen Chow / 元秋 Qiu Yuen / ...','2004','中国大陆 香港','动作 喜剧 犯罪 奇幻',8.3,'N/A',0,'0','0','0','0','0',0,0,0,0,0),(250,'勇士','249.jpg',' 加文·欧康诺 Gavin O\'Connor&nbsp;&nbsp;&nbsp;',' 汤姆·哈迪 Tom Hardy / 乔尔·...','2011','美国','剧情 运动 家庭',8.9,'热血沸腾，相当完美的娱乐拳击大餐。',3,'0','0','0','0','0',0,0,0,0,0);
/*!40000 ALTER TABLE `index_movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-06 21:21:03
