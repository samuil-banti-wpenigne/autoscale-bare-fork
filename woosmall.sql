-- MariaDB dump 10.19  Distrib 10.11.8-MariaDB, for Linux (x86_64)
--
-- Host: db    Database: wordpress
-- ------------------------------------------------------
-- Server version	5.7.44-48

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_actionscheduler_actions`
--

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

LOCK TABLES `wp_actionscheduler_actions` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_actions` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_actions` VALUES
(5,'action_scheduler/migration_hook','pending','2024-08-23 19:24:02','2024-08-23 19:24:02',10,'[]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441042;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441042;}',1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(6,'woocommerce_run_product_attribute_lookup_update_callback','pending','2024-08-23 19:23:57','2024-08-23 19:23:57',10,'[30,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441037;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441037;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(7,'woocommerce_run_product_attribute_lookup_update_callback','pending','2024-08-23 19:23:57','2024-08-23 19:23:57',10,'[32,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441037;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441037;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(8,'woocommerce_run_product_attribute_lookup_update_callback','pending','2024-08-23 19:23:57','2024-08-23 19:23:57',10,'[31,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441037;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441037;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(9,'woocommerce_run_product_attribute_lookup_update_callback','pending','2024-08-23 19:23:57','2024-08-23 19:23:57',10,'[33,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441037;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441037;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(10,'woocommerce_run_product_attribute_lookup_update_callback','pending','2024-08-23 19:23:57','2024-08-23 19:23:57',10,'[34,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441037;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441037;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(11,'woocommerce_run_product_attribute_lookup_update_callback','pending','2024-08-23 19:23:59','2024-08-23 19:23:59',10,'[35,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441039;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441039;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(12,'woocommerce_run_product_attribute_lookup_update_callback','pending','2024-08-23 19:23:59','2024-08-23 19:23:59',10,'[37,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441039;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441039;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(13,'woocommerce_run_product_attribute_lookup_update_callback','pending','2024-08-23 19:23:59','2024-08-23 19:23:59',10,'[36,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441039;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441039;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(14,'woocommerce_run_product_attribute_lookup_update_callback','pending','2024-08-23 19:23:59','2024-08-23 19:23:59',10,'[38,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441039;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441039;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL),
(15,'woocommerce_run_product_attribute_lookup_update_callback','pending','2024-08-23 19:23:59','2024-08-23 19:23:59',10,'[39,1]','O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1724441039;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1724441039;}',2,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,NULL);
/*!40000 ALTER TABLE `wp_actionscheduler_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_claims`
--

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_claims`
--

LOCK TABLES `wp_actionscheduler_claims` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_actionscheduler_claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_groups`
--

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

LOCK TABLES `wp_actionscheduler_groups` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_groups` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_groups` VALUES
(1,'action-scheduler-migration'),
(2,'woocommerce-db-updates');
/*!40000 ALTER TABLE `wp_actionscheduler_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_actionscheduler_logs`
--

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

LOCK TABLES `wp_actionscheduler_logs` WRITE;
/*!40000 ALTER TABLE `wp_actionscheduler_logs` DISABLE KEYS */;
INSERT INTO `wp_actionscheduler_logs` VALUES
(1,5,'action created','2024-08-23 19:23:02','2024-08-23 19:23:02'),
(2,6,'action created','2024-08-23 19:23:56','2024-08-23 19:23:56'),
(3,7,'action created','2024-08-23 19:23:56','2024-08-23 19:23:56'),
(4,8,'action created','2024-08-23 19:23:56','2024-08-23 19:23:56'),
(5,9,'action created','2024-08-23 19:23:56','2024-08-23 19:23:56'),
(6,10,'action created','2024-08-23 19:23:56','2024-08-23 19:23:56'),
(7,11,'action created','2024-08-23 19:23:58','2024-08-23 19:23:58'),
(8,12,'action created','2024-08-23 19:23:58','2024-08-23 19:23:58'),
(9,13,'action created','2024-08-23 19:23:58','2024-08-23 19:23:58'),
(10,14,'action created','2024-08-23 19:23:58','2024-08-23 19:23:58'),
(11,15,'action created','2024-08-23 19:23:58','2024-08-23 19:23:58');
/*!40000 ALTER TABLE `wp_actionscheduler_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES
(1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-08-23 19:22:54','2024-08-23 19:22:54','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=391 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES
(1,'cron','a:19:{i:1724440974;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1724440975;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1724440979;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1724440980;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1724440981;a:2:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1724440982;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1724440984;a:1:{s:30:\"wp_1_wc_regenerate_images_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:39:\"wp_1_wc_regenerate_images_cron_interval\";s:4:\"args\";a:0:{}s:8:\"interval\";i:300;}}}i:1724440990;a:3:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"generate_category_lookup_table\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1724441012;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1724441040;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}i:1724444573;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1724444580;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1724446373;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1724448173;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1724451780;a:2:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"woocommerce_cleanup_rate_limits\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1724457600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1724462580;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1724527374;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','auto'),
(2,'siteurl','http://localhost:8000','on'),
(3,'home','http://localhost:8000','on'),
(4,'blogname','Performance Testing','on'),
(5,'blogdescription','','on'),
(6,'users_can_register','0','on'),
(7,'admin_email','nobody@example.com','on'),
(8,'start_of_week','1','on'),
(9,'use_balanceTags','0','on'),
(10,'use_smilies','1','on'),
(11,'require_name_email','1','on'),
(12,'comments_notify','1','on'),
(13,'posts_per_rss','10','on'),
(14,'rss_use_excerpt','0','on'),
(15,'mailserver_url','mail.example.com','on'),
(16,'mailserver_login','login@example.com','on'),
(17,'mailserver_pass','password','on'),
(18,'mailserver_port','110','on'),
(19,'default_category','1','on'),
(20,'default_comment_status','open','on'),
(21,'default_ping_status','open','on'),
(22,'default_pingback_flag','1','on'),
(23,'posts_per_page','10','on'),
(24,'date_format','F j, Y','on'),
(25,'time_format','g:i a','on'),
(26,'links_updated_date_format','F j, Y g:i a','on'),
(27,'comment_moderation','0','on'),
(28,'moderation_notify','1','on'),
(29,'permalink_structure','/%postname%/','on'),
(30,'rewrite_rules','a:180:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:21:\"^wc/file/transient/?$\";s:33:\"index.php?wc-transient-file-name=\";s:24:\"^wc/file/transient/(.+)$\";s:44:\"index.php?wc-transient-file-name=$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:43:\"category/(.+?)/wc/file/transient(/(.*))?/?$\";s:65:\"index.php?category_name=$matches[1]&wc/file/transient=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:40:\"tag/([^/]+)/wc/file/transient(/(.*))?/?$\";s:55:\"index.php?tag=$matches[1]&wc/file/transient=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:44:\"product/([^/]+)/wc/file/transient(/(.*))?/?$\";s:59:\"index.php?product=$matches[1]&wc/file/transient=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:61:\"product/[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:28:\"wc/file/transient(/(.*))?/?$\";s:40:\"index.php?&wc/file/transient=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:37:\"comments/wc/file/transient(/(.*))?/?$\";s:40:\"index.php?&wc/file/transient=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:40:\"search/(.+)/wc/file/transient(/(.*))?/?$\";s:53:\"index.php?s=$matches[1]&wc/file/transient=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:43:\"author/([^/]+)/wc/file/transient(/(.*))?/?$\";s:63:\"index.php?author_name=$matches[1]&wc/file/transient=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc/file/transient(/(.*))?/?$\";s:93:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc/file/transient=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:52:\"([0-9]{4})/([0-9]{1,2})/wc/file/transient(/(.*))?/?$\";s:77:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc/file/transient=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:39:\"([0-9]{4})/wc/file/transient(/(.*))?/?$\";s:56:\"index.php?year=$matches[1]&wc/file/transient=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:36:\"(.?.+?)/wc/file/transient(/(.*))?/?$\";s:60:\"index.php?pagename=$matches[1]&wc/file/transient=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:53:\".?.+?/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:36:\"([^/]+)/wc/file/transient(/(.*))?/?$\";s:56:\"index.php?name=$matches[1]&wc/file/transient=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:53:\"[^/]+/attachment/([^/]+)/wc/file/transient(/(.*))?/?$\";s:62:\"index.php?attachment=$matches[1]&wc/file/transient=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on'),
(31,'hack_file','0','on'),
(32,'blog_charset','UTF-8','on'),
(33,'moderation_keys','','off'),
(34,'active_plugins','a:4:{i:0;s:27:\"woocommerce/woocommerce.php\";i:1;s:41:\"wpe-sysinfo-plugin/wpe-sysinfo-plugin.php\";i:2;s:43:\"wpe-woocommerce-api/wpe-woocommerce-api.php\";i:3;s:63:\"wpe-woocommerce-no-auth-patch/wpe-woocommerce-no-auth-patch.php\";}','on'),
(35,'category_base','','on'),
(36,'ping_sites','http://rpc.pingomatic.com/','on'),
(37,'comment_max_links','2','on'),
(38,'gmt_offset','0','on'),
(39,'default_email_category','1','on'),
(40,'recently_edited','','off'),
(41,'template','storefront','on'),
(42,'stylesheet','storefront','on'),
(43,'comment_registration','0','on'),
(44,'html_type','text/html','on'),
(45,'use_trackback','0','on'),
(46,'default_role','subscriber','on'),
(47,'db_version','57155','on'),
(48,'uploads_use_yearmonth_folders','1','on'),
(49,'upload_path','','on'),
(50,'blog_public','1','on'),
(51,'default_link_category','2','on'),
(52,'show_on_front','posts','on'),
(53,'tag_base','','on'),
(54,'show_avatars','1','on'),
(55,'avatar_rating','G','on'),
(56,'upload_url_path','','on'),
(57,'thumbnail_size_w','150','on'),
(58,'thumbnail_size_h','150','on'),
(59,'thumbnail_crop','1','on'),
(60,'medium_size_w','300','on'),
(61,'medium_size_h','300','on'),
(62,'avatar_default','mystery','on'),
(63,'large_size_w','1024','on'),
(64,'large_size_h','1024','on'),
(65,'image_default_link_type','none','on'),
(66,'image_default_size','','on'),
(67,'image_default_align','','on'),
(68,'close_comments_for_old_posts','0','on'),
(69,'close_comments_days_old','14','on'),
(70,'thread_comments','1','on'),
(71,'thread_comments_depth','5','on'),
(72,'page_comments','0','on'),
(73,'comments_per_page','50','on'),
(74,'default_comments_page','newest','on'),
(75,'comment_order','asc','on'),
(76,'sticky_posts','a:0:{}','on'),
(77,'widget_categories','a:0:{}','on'),
(78,'widget_text','a:0:{}','on'),
(79,'widget_rss','a:0:{}','on'),
(80,'uninstall_plugins','a:0:{}','off'),
(81,'timezone_string','','on'),
(82,'page_for_posts','0','on'),
(83,'page_on_front','0','on'),
(84,'default_post_format','0','on'),
(85,'link_manager_enabled','0','on'),
(86,'finished_splitting_shared_terms','1','on'),
(87,'site_icon','0','on'),
(88,'medium_large_size_w','768','on'),
(89,'medium_large_size_h','0','on'),
(90,'wp_page_for_privacy_policy','3','on'),
(91,'show_comments_cookies_opt_in','1','on'),
(92,'admin_email_lifespan','1739992973','on'),
(93,'disallowed_keys','','off'),
(94,'comment_previously_approved','1','on'),
(95,'auto_plugin_theme_update_emails','a:0:{}','off'),
(96,'auto_update_core_dev','enabled','on'),
(97,'auto_update_core_minor','enabled','on'),
(98,'auto_update_core_major','enabled','on'),
(99,'wp_force_deactivated_plugins','a:0:{}','on'),
(100,'wp_attachment_pages_enabled','0','on'),
(101,'initial_db_version','57155','on'),
(102,'wp_user_roles','a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}','auto'),
(103,'fresh_site','0','auto'),
(104,'user_count','1','off'),
(105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto'),
(106,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}','auto'),
(107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.6.1\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}','on'),
(124,'_transient_doing_cron','1724441035.1410410404205322265625','on'),
(125,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.1\";s:7:\"version\";s:5:\"6.6.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1724441044;s:15:\"version_checked\";s:5:\"6.6.1\";s:12:\"translations\";a:0:{}}','off'),
(127,'_site_transient_timeout_theme_roots','1724442783','off'),
(128,'_site_transient_theme_roots','a:4:{s:10:\"storefront\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','off'),
(132,'action_scheduler_hybrid_store_demarkation','4','auto'),
(133,'schema-ActionScheduler_StoreSchema','7.0.1724440979','auto'),
(134,'schema-ActionScheduler_LoggerSchema','3.0.1724440979','auto'),
(135,'_transient_timeout_as-post-store-dependencies-met','1724527379','off'),
(136,'_transient_as-post-store-dependencies-met','yes','off'),
(139,'woocommerce_newly_installed','yes','auto'),
(140,'woocommerce_schema_version','430','auto'),
(141,'woocommerce_store_address','504 Lavaca St','on'),
(142,'woocommerce_store_address_2','Suite 1000','on'),
(143,'woocommerce_store_city','Austin','on'),
(144,'woocommerce_default_country','US:TX','on'),
(145,'woocommerce_store_postcode','78701','on'),
(146,'woocommerce_allowed_countries','all','on'),
(147,'woocommerce_all_except_countries','','on'),
(148,'woocommerce_specific_allowed_countries','','on'),
(149,'woocommerce_ship_to_countries','','on'),
(150,'woocommerce_specific_ship_to_countries','','on'),
(151,'woocommerce_default_customer_address','base','on'),
(152,'woocommerce_calc_taxes','no','on'),
(153,'woocommerce_enable_coupons','yes','on'),
(154,'woocommerce_calc_discounts_sequentially','no','off'),
(155,'woocommerce_currency','USD','on'),
(156,'woocommerce_currency_pos','left','on'),
(157,'woocommerce_price_thousand_sep',',','on'),
(158,'woocommerce_price_decimal_sep','.','on'),
(159,'woocommerce_price_num_decimals','2','on'),
(160,'woocommerce_shop_page_id','5','on'),
(161,'woocommerce_cart_redirect_after_add','no','on'),
(162,'woocommerce_enable_ajax_add_to_cart','yes','on'),
(163,'woocommerce_placeholder_image','4','on'),
(164,'woocommerce_weight_unit','kg','on'),
(165,'woocommerce_dimension_unit','cm','on'),
(166,'woocommerce_enable_reviews','yes','on'),
(167,'woocommerce_review_rating_verification_label','yes','off'),
(168,'woocommerce_review_rating_verification_required','no','off'),
(169,'woocommerce_enable_review_rating','yes','on'),
(170,'woocommerce_review_rating_required','yes','off'),
(171,'woocommerce_manage_stock','yes','on'),
(172,'woocommerce_hold_stock_minutes','60','off'),
(173,'woocommerce_notify_low_stock','yes','off'),
(174,'woocommerce_notify_no_stock','yes','off'),
(175,'woocommerce_stock_email_recipient','nobody@example.com','off'),
(176,'woocommerce_notify_low_stock_amount','2','off'),
(177,'woocommerce_notify_no_stock_amount','0','on'),
(178,'woocommerce_hide_out_of_stock_items','no','on'),
(179,'woocommerce_stock_format','','on'),
(180,'woocommerce_file_download_method','force','off'),
(181,'woocommerce_downloads_redirect_fallback_allowed','no','off'),
(182,'woocommerce_downloads_require_login','no','off'),
(183,'woocommerce_downloads_grant_access_after_payment','yes','off'),
(184,'woocommerce_downloads_deliver_inline','','off'),
(185,'woocommerce_downloads_add_hash_to_filename','yes','on'),
(187,'woocommerce_attribute_lookup_direct_updates','no','on'),
(188,'woocommerce_attribute_lookup_optimized_updates','no','on'),
(189,'woocommerce_product_match_featured_image_by_sku','no','on'),
(190,'woocommerce_prices_include_tax','no','on'),
(191,'woocommerce_tax_based_on','shipping','on'),
(192,'woocommerce_shipping_tax_class','inherit','on'),
(193,'woocommerce_tax_round_at_subtotal','no','on'),
(194,'woocommerce_tax_classes','','on'),
(195,'woocommerce_tax_display_shop','excl','on'),
(196,'woocommerce_tax_display_cart','excl','on'),
(197,'woocommerce_price_display_suffix','','on'),
(198,'woocommerce_tax_total_display','itemized','off'),
(199,'woocommerce_enable_shipping_calc','yes','off'),
(200,'woocommerce_shipping_cost_requires_address','no','on'),
(201,'woocommerce_ship_to_destination','billing','off'),
(202,'woocommerce_shipping_debug_mode','no','on'),
(203,'woocommerce_enable_guest_checkout','yes','off'),
(204,'woocommerce_enable_checkout_login_reminder','no','off'),
(205,'woocommerce_enable_signup_and_login_from_checkout','no','off'),
(206,'woocommerce_enable_myaccount_registration','no','off'),
(207,'woocommerce_registration_generate_username','yes','off'),
(208,'woocommerce_registration_generate_password','yes','off'),
(209,'woocommerce_erasure_request_removes_order_data','no','off'),
(210,'woocommerce_erasure_request_removes_download_data','no','off'),
(211,'woocommerce_allow_bulk_remove_personal_data','no','off'),
(212,'woocommerce_registration_privacy_policy_text','Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].','on'),
(213,'woocommerce_checkout_privacy_policy_text','Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].','on'),
(214,'woocommerce_delete_inactive_accounts','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','off'),
(215,'woocommerce_trash_pending_orders','','off'),
(216,'woocommerce_trash_failed_orders','','off'),
(217,'woocommerce_trash_cancelled_orders','','off'),
(218,'woocommerce_anonymize_completed_orders','a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}','off'),
(219,'nonce_key',':B)Fef_[dYs%J}VjoBrYti)I?V=Oh/mKvC1=!SK3#c8:ypNxorQaw>L&S{C6l2~p','off'),
(220,'nonce_salt','QuG|x80~J75As(4&Rr=Dew%2Ju._!2u)V8X4BuX^5M}UocDE?l7xS`Opag+X$2P3','off'),
(221,'woocommerce_email_from_name','Performance Testing','off'),
(222,'woocommerce_email_from_address','nobody@example.com','off'),
(223,'woocommerce_email_header_image','','off'),
(224,'woocommerce_email_footer_text','{site_title} &mdash; Built with {WooCommerce}','off'),
(225,'woocommerce_email_base_color','#7f54b3','off'),
(226,'woocommerce_email_background_color','#f7f7f7','off'),
(227,'woocommerce_email_body_background_color','#ffffff','off'),
(228,'woocommerce_email_text_color','#3c3c3c','off'),
(229,'woocommerce_merchant_email_notifications','no','off'),
(230,'woocommerce_cart_page_id','6','off'),
(231,'woocommerce_checkout_page_id','7','off'),
(232,'woocommerce_myaccount_page_id','8','off'),
(233,'woocommerce_terms_page_id','','off'),
(234,'woocommerce_force_ssl_checkout','no','on'),
(235,'woocommerce_unforce_ssl_checkout','no','on'),
(236,'woocommerce_checkout_pay_endpoint','order-pay','on'),
(237,'woocommerce_checkout_order_received_endpoint','order-received','on'),
(238,'woocommerce_myaccount_add_payment_method_endpoint','add-payment-method','on'),
(239,'woocommerce_myaccount_delete_payment_method_endpoint','delete-payment-method','on'),
(240,'woocommerce_myaccount_set_default_payment_method_endpoint','set-default-payment-method','on'),
(241,'woocommerce_myaccount_orders_endpoint','orders','on'),
(242,'woocommerce_myaccount_view_order_endpoint','view-order','on'),
(243,'woocommerce_myaccount_downloads_endpoint','downloads','on'),
(244,'woocommerce_myaccount_edit_account_endpoint','edit-account','on'),
(245,'woocommerce_myaccount_edit_address_endpoint','edit-address','on'),
(246,'woocommerce_myaccount_payment_methods_endpoint','payment-methods','on'),
(247,'woocommerce_myaccount_lost_password_endpoint','lost-password','on'),
(248,'woocommerce_logout_endpoint','customer-logout','on'),
(249,'woocommerce_api_enabled','no','on'),
(250,'woocommerce_allow_tracking','no','off'),
(251,'woocommerce_show_marketplace_suggestions','yes','off'),
(252,'woocommerce_custom_orders_table_enabled','no','on'),
(253,'woocommerce_analytics_enabled','yes','on'),
(254,'woocommerce_feature_order_attribution_enabled','yes','on'),
(255,'woocommerce_feature_product_block_editor_enabled','no','on'),
(256,'woocommerce_hpos_fts_index_enabled','no','on'),
(257,'woocommerce_single_image_width','600','on'),
(258,'woocommerce_thumbnail_image_width','300','on'),
(259,'woocommerce_checkout_highlight_required_fields','yes','on'),
(260,'woocommerce_demo_store','no','off'),
(261,'wc_downloads_approved_directories_mode','enabled','auto'),
(262,'woocommerce_permalinks','a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}','auto'),
(263,'current_theme_supports_woocommerce','yes','auto'),
(264,'woocommerce_queue_flush_rewrite_rules','no','auto'),
(265,'_transient_wc_attribute_taxonomies','a:0:{}','on'),
(269,'default_product_cat','15','auto'),
(270,'woocommerce_refund_returns_page_created','9','off'),
(271,'woocommerce_refund_returns_page_id','9','auto'),
(272,'_transient_timeout__wc_activation_redirect','1724441011','off'),
(273,'_transient__wc_activation_redirect','1','off'),
(274,'auth_key','=eF/p>dqE(dh=(X<J8Cj(,p0w=laj:f]>vjt=HkdU78!</q1/!]=h~PF#FVG#iHn','off'),
(275,'auth_salt','~IeMM]I~XBl(; }q2En0TnlO._0_DfX*$d`Dv=ty4C:I|Qax,#h=pGbzLK,;`b{|','off'),
(276,'woocommerce_paypal_settings','a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:18:\"nobody@example.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:18:\"nobody@example.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}','on'),
(277,'woocommerce_version','9.1.4','auto'),
(278,'woocommerce_db_version','9.1.4','auto'),
(279,'woocommerce_store_id','155723d5-ddb5-48a0-a1dd-12cd529e0a45','auto'),
(280,'woocommerce_admin_install_timestamp','1724440981','auto'),
(281,'woocommerce_inbox_variant_assignment','3','auto'),
(282,'woocommerce_remote_variant_assignment','74','auto'),
(283,'woocommerce_attribute_lookup_enabled','no','auto'),
(284,'_transient_timeout__woocommerce_upload_directory_status','1724527381','off'),
(285,'_transient__woocommerce_upload_directory_status','protected','off'),
(286,'_transient_woocommerce_activated_plugin','woocommerce/woocommerce.php','on'),
(287,'_transient_jetpack_autoloader_plugin_paths','a:1:{i:0;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}','on'),
(289,'wc_blocks_version','11.8.0-dev','auto'),
(290,'jetpack_connection_active_plugins','a:1:{s:11:\"woocommerce\";a:1:{s:4:\"name\";s:11:\"WooCommerce\";}}','auto'),
(291,'woocommerce_maxmind_geolocation_settings','a:1:{s:15:\"database_prefix\";s:32:\"X0BMOxKIktmgMfoJ1IushfJ8c24q9B4A\";}','on'),
(292,'_transient_woocommerce_webhook_ids_status_active','a:0:{}','on'),
(293,'widget_woocommerce_widget_cart','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(294,'widget_woocommerce_layered_nav_filters','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(295,'widget_woocommerce_layered_nav','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(296,'widget_woocommerce_price_filter','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(297,'widget_woocommerce_product_categories','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(298,'widget_woocommerce_product_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(299,'widget_woocommerce_product_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(300,'widget_woocommerce_products','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(301,'widget_woocommerce_recently_viewed_products','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(302,'widget_woocommerce_top_rated_products','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(303,'widget_woocommerce_recent_reviews','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(304,'widget_woocommerce_rating_filter','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(305,'_transient_timeout__woocommerce_helper_subscriptions','1724441882','off'),
(306,'_transient__woocommerce_helper_subscriptions','a:0:{}','off'),
(309,'theme_mods_twentytwentyfour','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1724440983;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off'),
(310,'current_theme','Storefront','auto'),
(311,'theme_switched','','auto'),
(312,'_transient_timeout_woocommerce_blocks_asset_api_script_data','1727033059','off'),
(313,'_transient_woocommerce_blocks_asset_api_script_data','{\"script_data\":{\"assets\\/client\\/blocks\\/wc-settings.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-settings.js\",\"version\":\"07c2f0675ddd247d2325\",\"dependencies\":[\"wp-hooks\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-types.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-types.js\",\"version\":\"bda84b1be3361607d04a\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-middleware.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-middleware.js\",\"version\":\"ca04183222edaf8a26be\",\"dependencies\":[\"wp-api-fetch\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-data.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-data.js\",\"version\":\"3b21c127321dcdffaeba\",\"dependencies\":[\"wc-blocks-registry\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-data\",\"wp-data-controls\",\"wp-deprecated\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-notices\",\"wp-polyfill\",\"wp-url\"]},\"assets\\/client\\/blocks\\/wc-blocks-vendors.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-vendors.js\",\"version\":\"389607d443f2591c0913\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-registry.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-registry.js\",\"version\":\"1c879273bd5c193cad0a\",\"dependencies\":[\"react\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks.js\",\"version\":\"00ce86264fca4977b16a\",\"dependencies\":[\"react\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-dom-ready\",\"wp-element\",\"wp-hooks\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/wc-blocks-shared-context.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-shared-context.js\",\"version\":\"6eb6865831aa5a75475d\",\"dependencies\":[\"react\",\"wp-element\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-shared-hocs.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-shared-hocs.js\",\"version\":\"4f21a9f43ea5bfa7f02e\",\"dependencies\":[\"react\",\"wc-blocks-data-store\",\"wc-blocks-shared-context\",\"wc-types\",\"wp-data\",\"wp-element\",\"wp-is-shallow-equal\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/price-format.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/price-format.js\",\"version\":\"eb7a7398126f71912b09\",\"dependencies\":[\"wc-settings\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-blocks-vendors-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-blocks-vendors-frontend.js\",\"version\":\"cbe41c7abb3949767748\",\"dependencies\":[\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/blocks-checkout.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/blocks-checkout.js\",\"version\":\"5980872eb77817dd6b18\",\"dependencies\":[\"react\",\"react-dom\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/blocks-components.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/blocks-components.js\",\"version\":\"211abb6906805368a551\",\"dependencies\":[\"react\",\"react-dom\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/wc-interactivity-dropdown.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-interactivity-dropdown.js\",\"version\":\"8997b5406dcf18064a4e\",\"dependencies\":[\"wc-interactivity\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/wc-interactivity-checkbox-list.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/wc-interactivity-checkbox-list.js\",\"version\":\"c33101c7e57ca780e0d8\",\"dependencies\":[\"wc-interactivity\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/active-filters.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/active-filters.js\",\"version\":\"07254c2f32c26d21c0ef\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/active-filters-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/active-filters-frontend.js\",\"version\":\"b7ae146ebe7863f9f6b8\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-data\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/all-products.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/all-products.js\",\"version\":\"de63136b925fe4405f95\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-api-fetch\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/all-products-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/all-products-frontend.js\",\"version\":\"34225df31c9fc4fb4ad9\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-autop\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/all-reviews.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/all-reviews.js\",\"version\":\"4421b2ba149150ba3a80\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-escape-html\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/reviews-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/reviews-frontend.js\",\"version\":\"4462be41b0f004e9751b\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-settings\",\"wp-a11y\",\"wp-api-fetch\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/attribute-filter.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/attribute-filter.js\",\"version\":\"f29cfa920e0887b73f22\",\"dependencies\":[\"lodash\",\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/attribute-filter-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/attribute-filter-frontend.js\",\"version\":\"16c1a488449ef9ea8eaa\",\"dependencies\":[\"lodash\",\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/breadcrumbs.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/breadcrumbs.js\",\"version\":\"c78bceea82834e964257\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/catalog-sorting.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/catalog-sorting.js\",\"version\":\"6c2e6a0a2cd09107cf04\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/legacy-template.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/legacy-template.js\",\"version\":\"761a9a4979bac75875d4\",\"dependencies\":[\"react\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-core-data\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-notices\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/classic-shortcode.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/classic-shortcode.js\",\"version\":\"77bba6e2f771a40e1cec\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-notices\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/coming-soon.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/coming-soon.js\",\"version\":\"c6d2e77a8930f58cbff8\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/customer-account.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/customer-account.js\",\"version\":\"a04e4ad5cf91d59eae45\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/featured-category.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/featured-category.js\",\"version\":\"c7075e8fffe37d9ad21d\",\"dependencies\":[\"react\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\"]},\"assets\\/client\\/blocks\\/featured-product.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/featured-product.js\",\"version\":\"d3af59655b446a53100c\",\"dependencies\":[\"react\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\"]},\"assets\\/client\\/blocks\\/filter-wrapper.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/filter-wrapper.js\",\"version\":\"7f2269e03957a553e47c\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/filter-wrapper-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/filter-wrapper-frontend.js\",\"version\":\"3f6c3d73d1a34928ee1e\",\"dependencies\":[\"lodash\",\"react\",\"wc-blocks-checkout\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/handpicked-products.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/handpicked-products.js\",\"version\":\"acf80e15b27dca063f23\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/mini-cart.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart.js\",\"version\":\"e1653c56caa176335fc5\",\"dependencies\":[\"react\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-dom\",\"wp-element\",\"wp-hooks\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/mini-cart-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-frontend.js\",\"version\":\"eba896c62201a23c4175\",\"dependencies\":[\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-i18n\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/store-notices.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/store-notices.js\",\"version\":\"2e8dc38e57382d79fce0\",\"dependencies\":[\"react\",\"wp-a11y\",\"wp-block-editor\",\"wp-blocks\",\"wp-deprecated\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/price-filter.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/price-filter.js\",\"version\":\"67ddaae590e2c2e1d5ff\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/price-filter-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/price-filter-frontend.js\",\"version\":\"922d545864d8a6b66758\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-best-sellers.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-best-sellers.js\",\"version\":\"421922b42cf4c6de6a74\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-button.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-button.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/product-button-interactivity-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-button-interactivity-frontend.js\",\"version\":\"cb28f5957f4ece0c48e5\",\"dependencies\":[\"react\",\"wc-blocks-data-store\",\"wc-interactivity\",\"wp-a11y\",\"wp-data\",\"wp-deprecated\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-categories.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-categories.js\",\"version\":\"19dfea34dec3553590a0\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\"]},\"assets\\/client\\/blocks\\/product-category.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-category.js\",\"version\":\"2cb7ddb399fe6f29c932\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-collection.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-collection.js\",\"version\":\"60457e28bcaf0b01fea7\",\"dependencies\":[\"react\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-core-data\",\"wp-data\",\"wp-editor\",\"wp-element\",\"wp-escape-html\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-collection-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-collection-frontend.js\",\"version\":\"37b3a37d0211278e6a0c\",\"dependencies\":[\"wc-interactivity\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/product-collection-no-results.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-collection-no-results.js\",\"version\":\"d1c4e65a98c9f79e8930\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-gallery.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-gallery.js\",\"version\":\"c7b111b60716451682e0\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-gallery-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-gallery-frontend.js\",\"version\":\"c340254c6c31444370fb\",\"dependencies\":[\"wc-interactivity\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/product-gallery-large-image.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-gallery-large-image.js\",\"version\":\"32b186af1c3d64a75d46\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/product-gallery-large-image-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-gallery-large-image-frontend.js\",\"version\":\"dd8201c48d0f0223ee5a\",\"dependencies\":[\"wc-interactivity\",\"wp-polyfill\"]},\"assets\\/client\\/blocks\\/product-new.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-new.js\",\"version\":\"8af7bb3cd67cd0e42b9a\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-on-sale.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-on-sale.js\",\"version\":\"a056ece38962718de3a1\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-template.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-template.js\",\"version\":\"9a52b21fe92db2169c0b\",\"dependencies\":[\"react\",\"wc-blocks-shared-context\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-core-data\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-query.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-query.js\",\"version\":\"37b83ec461eb8aa409c1\",\"dependencies\":[\"react\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-query-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-query-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/product-results-count.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-results-count.js\",\"version\":\"f5e7da47100ae9363279\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-search.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-search.js\",\"version\":\"1a4b65a4e4891b2f8194\",\"dependencies\":[\"react\",\"wc-settings\",\"wc-types\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/product-summary.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-summary.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/product-tag.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-tag.js\",\"version\":\"342af558ffb7a1357f15\",\"dependencies\":[\"react\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/product-title.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-title.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/product-title-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-title-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/product-top-rated.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/product-top-rated.js\",\"version\":\"6fb347850bc724a274ea\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/products-by-attribute.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/products-by-attribute.js\",\"version\":\"cacbde7aaa9a7d3d39e1\",\"dependencies\":[\"react\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\",\"wp-server-side-render\",\"wp-url\"]},\"assets\\/client\\/blocks\\/rating-filter.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/rating-filter.js\",\"version\":\"bc7fe305a38c3e85049a\",\"dependencies\":[\"lodash\",\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/reviews-by-category.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/reviews-by-category.js\",\"version\":\"4cb7066b850f401e4c1b\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-settings\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/reviews-by-product.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/reviews-by-product.js\",\"version\":\"e8a05f6b98cd05f62626\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-settings\",\"wc-types\",\"wp-api-fetch\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-element\",\"wp-escape-html\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\"]},\"assets\\/client\\/blocks\\/single-product.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/single-product.js\",\"version\":\"0e8dba50189e03650508\",\"dependencies\":[\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-store-data\",\"wc-types\",\"wp-api-fetch\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-element\",\"wp-escape-html\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/stock-filter.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/stock-filter.js\",\"version\":\"16111b0cef1b2df6fae5\",\"dependencies\":[\"lodash\",\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/stock-filter-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/stock-filter-frontend.js\",\"version\":\"df719537684ceaec2832\",\"dependencies\":[\"lodash\",\"react\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\"]},\"assets\\/client\\/blocks\\/page-content-wrapper.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/page-content-wrapper.js\",\"version\":\"b17d813006ab6721c0bf\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-status.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-status.js\",\"version\":\"2c059192f836902afc42\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-summary.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-summary.js\",\"version\":\"bce30c87f99abc744d6b\",\"dependencies\":[\"react\",\"wc-price-format\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-date\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-totals.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-totals.js\",\"version\":\"3578f6bba1fdfa8f4584\",\"dependencies\":[\"react\",\"wc-price-format\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-totals-wrapper.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-totals-wrapper.js\",\"version\":\"186984378635e6e08423\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-downloads.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-downloads.js\",\"version\":\"1d9816820e49da031b6c\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-downloads-wrapper.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-downloads-wrapper.js\",\"version\":\"7d7efbae89a188570068\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-billing-address.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-billing-address.js\",\"version\":\"129b99c02e2f0bbd408a\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-shipping-address.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-shipping-address.js\",\"version\":\"0371dc375c63dd728238\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-billing-wrapper.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-billing-wrapper.js\",\"version\":\"fce4c23d911cc8526506\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-shipping-wrapper.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-shipping-wrapper.js\",\"version\":\"b923bf1dbf6392c32509\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-additional-information.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-additional-information.js\",\"version\":\"f4a1c3f8c632681e85dd\",\"dependencies\":[\"react\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-additional-fields-wrapper.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-additional-fields-wrapper.js\",\"version\":\"4b25a3e20f302075ad71\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/order-confirmation-additional-fields.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/order-confirmation-additional-fields.js\",\"version\":\"da73c5eb34820cd26854\",\"dependencies\":[\"react\",\"wc-settings\",\"wp-block-editor\",\"wp-blocks\",\"wp-element\",\"wp-i18n\",\"wp-polyfill\",\"wp-primitives\"]},\"assets\\/client\\/blocks\\/cart.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart.js\",\"version\":\"08d8564dbaa16cf625ad\",\"dependencies\":[\"lodash\",\"react\",\"wc-blocks-checkout\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-api-fetch\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-core-data\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-editor\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-notices\",\"wp-plugins\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\",\"wp-warning\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/cart-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-frontend.js\",\"version\":\"1c5ebcb58df698a17253\",\"dependencies\":[\"lodash\",\"react\",\"wc-blocks-checkout\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-context\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-api-fetch\",\"wp-autop\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-plugins\",\"wp-polyfill\",\"wp-primitives\",\"wp-style-engine\",\"wp-url\",\"wp-warning\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-shipping-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-shipping-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-line-items-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-line-items-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-products-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-products-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-heading-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-heading-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-coupon-form-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-coupon-form-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/filled-cart-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/filled-cart-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-accepted-payment-methods-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-accepted-payment-methods-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/empty-cart-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/empty-cart-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-totals-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-totals-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-items-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-items-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-totals-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-totals-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-totals-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-totals-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-order-summary-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-order-summary-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-accepted-payment-methods-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-accepted-payment-methods-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-subtotal-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-subtotal-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-coupon-form-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-coupon-form-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-shipping-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-shipping-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-products-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-products-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-discount-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-discount-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/filled-cart-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/filled-cart-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-totals-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-totals-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-line-items-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-line-items-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-order-summary-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-order-summary-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/proceed-to-checkout-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/proceed-to-checkout-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-subtotal-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-subtotal-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-fee-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-fee-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-heading-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-heading-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-fee-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-fee-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-cross-sells-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/proceed-to-checkout-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/proceed-to-checkout-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/empty-cart-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/empty-cart-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-items-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-items-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-discount-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-discount-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-taxes-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-taxes-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/order-summary-taxes-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/order-summary-taxes-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-taxes-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-taxes-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-subtotal-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-subtotal-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-totals-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-totals-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/filled-cart-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/filled-cart-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/empty-cart-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/empty-cart-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-totals-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-totals-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-items-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-items-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-line-items-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-line-items-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-express-payment-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-express-payment-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/proceed-to-checkout-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/proceed-to-checkout-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-accepted-payment-methods-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-accepted-payment-methods-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-coupon-form-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-coupon-form-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-discount-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-discount-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-fee-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-fee-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-heading-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-heading-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-order-summary-shipping-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-order-summary-shipping-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-cross-sells-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-cross-sells-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-cross-sells-products-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-cross-sells-products-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout.js\",\"version\":\"fe5f1472c4d91167d951\",\"dependencies\":[\"lodash\",\"react\",\"wc-blocks-checkout\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-api-fetch\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-compose\",\"wp-core-data\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-editor\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-notices\",\"wp-plugins\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/checkout-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-frontend.js\",\"version\":\"d7549457c5d1658f35f3\",\"dependencies\":[\"lodash\",\"react\",\"wc-blocks-checkout\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-blocks-shared-hocs\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-api-fetch\",\"wp-autop\",\"wp-compose\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-plugins\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-warning\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/checkout-blocks\\/additional-information-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/additional-information-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/billing-address-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/billing-address-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/pickup-options-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/pickup-options-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/fields-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/fields-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-shipping-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-shipping-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/pickup-options-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/pickup-options-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-coupon-form-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-coupon-form-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/shipping-address-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/shipping-address-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-note-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-note-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/express-payment-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/express-payment-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/billing-address-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/billing-address-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/contact-information-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/contact-information-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/shipping-methods-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/shipping-methods-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/fields-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/fields-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/terms-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/terms-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/additional-information-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/additional-information-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-cart-items-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-cart-items-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/contact-information-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/contact-information-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/actions-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/actions-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-cart-items-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-cart-items-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/shipping-methods-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/shipping-methods-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-subtotal-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-subtotal-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-coupon-form-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-coupon-form-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-shipping-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-shipping-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/terms-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/terms-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/payment-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/payment-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/shipping-method-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/shipping-method-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-discount-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-discount-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/shipping-address-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/shipping-address-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/actions-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/actions-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-subtotal-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-subtotal-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-fee-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-fee-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-fee-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-fee-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/totals-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/totals-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/shipping-method-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/shipping-method-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-discount-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-discount-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-taxes-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-taxes-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/totals-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/totals-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/payment-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/payment-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-taxes-style.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-blocks\\/order-summary-taxes-style.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment--checkout-blocks\\/express-payment-frontend.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/cart-blocks\\/cart-express-payment--checkout-blocks\\/express-payment-frontend.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-actions-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-actions-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-additional-information-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-additional-information-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-billing-address-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-billing-address-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-contact-information-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-contact-information-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-express-payment-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-express-payment-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-fields-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-fields-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-note-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-note-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-cart-items-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-cart-items-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-coupon-form-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-coupon-form-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-discount-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-discount-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-fee-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-fee-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-shipping-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-shipping-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-subtotal-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-subtotal-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-taxes-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-taxes-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-order-summary-totals-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-order-summary-totals-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-payment-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-payment-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-shipping-address-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-shipping-address-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-shipping-methods-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-shipping-methods-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-shipping-method-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-shipping-method-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-pickup-options-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-pickup-options-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-terms-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-terms-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/checkout-totals-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/checkout-totals-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-contents.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-contents.js\",\"version\":\"20afb0107a7fbe5c6151\",\"dependencies\":[\"react\",\"wc-blocks-checkout\",\"wc-blocks-components\",\"wc-blocks-data-store\",\"wc-blocks-registry\",\"wc-price-format\",\"wc-settings\",\"wc-types\",\"wp-a11y\",\"wp-autop\",\"wp-block-editor\",\"wp-blocks\",\"wp-components\",\"wp-data\",\"wp-deprecated\",\"wp-dom\",\"wp-element\",\"wp-hooks\",\"wp-html-entities\",\"wp-i18n\",\"wp-is-shallow-equal\",\"wp-keycodes\",\"wp-polyfill\",\"wp-primitives\",\"wp-url\",\"wp-wordcount\"]},\"assets\\/client\\/blocks\\/empty-mini-cart-contents-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/empty-mini-cart-contents-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/filled-mini-cart-contents-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/filled-mini-cart-contents-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-footer-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-footer-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-items-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-items-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-products-table-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-products-table-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-shopping-button-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-shopping-button-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-cart-button-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-cart-button-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-checkout-button-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-checkout-button-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-title-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-title-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-title-items-counter-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-title-items-counter-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]},\"assets\\/client\\/blocks\\/mini-cart-title-label-block.js\":{\"src\":\"http:\\/\\/localhost:8000\\/wp-content\\/plugins\\/woocommerce\\/assets\\/client\\/blocks\\/mini-cart-title-label-block.js\",\"version\":\"wc-9.1.4\",\"dependencies\":[]}},\"version\":\"wc-9.1.4\",\"hash\":\"afe3f6e3a97ec01fcdd43819f2492c20\"}','off'),
(314,'_site_transient_timeout_wp_theme_files_patterns-ec66bb55a2ce1cbdd8a2fd4cb9a6193d','1724442784','off'),
(315,'_site_transient_wp_theme_files_patterns-ec66bb55a2ce1cbdd8a2fd4cb9a6193d','a:2:{s:7:\"version\";s:5:\"4.6.0\";s:8:\"patterns\";a:0:{}}','off'),
(316,'theme_mods_storefront','a:1:{s:18:\"nav_menu_locations\";a:0:{}}','auto'),
(317,'wc_blocks_use_blockified_product_grid_block_as_template','no','auto'),
(318,'woocommerce_catalog_rows','4','auto'),
(319,'woocommerce_catalog_columns','3','auto'),
(320,'woocommerce_maybe_regenerate_images_hash','27acde77266b4d2a3491118955cb3f66','auto'),
(321,'wp_1_wc_regenerate_images_batch_9c014bdd888efbc26ec5dc120b675485','a:1:{i:0;a:1:{s:13:\"attachment_id\";s:1:\"4\";}}','off'),
(322,'woocommerce_product_type','virtual','auto'),
(323,'woocommerce_stripe_settings','a:3:{s:7:\"enabled\";s:2:\"no\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}','auto'),
(324,'woocommerce_ppec_paypal_settings','a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}','auto'),
(325,'woocommerce_cheque_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','auto'),
(326,'woocommerce_bacs_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','auto'),
(327,'woocommerce_cod_settings','a:1:{s:7:\"enabled\";s:2:\"no\";}','auto'),
(328,'woocommerce_custom_orders_table_created','no','auto'),
(332,'_transient_timeout_woocommerce_admin_payment_method_promotion_specs','1725045811','off'),
(334,'_transient_woocommerce_admin_payment_method_promotion_specs','a:1:{s:5:\"en_US\";a:2:{s:27:\"woocommerce_payments:woopay\";O:8:\"stdClass\":8:{s:2:\"id\";s:27:\"woocommerce_payments:woopay\";s:5:\"title\";s:11:\"WooPayments\";s:7:\"content\";s:393:\"Payments made simple — including WooPay, a new express checkout feature.<br/><br/>By using WooPayments you agree to the <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> (including WooPay <a href=\"https://wordpress.com/tos/#more-woopay-specifically\" target=\"_blank\">merchant terms</a>) and <a href=\"https://automattic.com/privacy/\" target=\"_blank\">Privacy Policy</a>.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:3:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}}}i:2;O:8:\"stdClass\":4:{s:4:\"type\";s:14:\"plugin_version\";s:6:\"plugin\";s:11:\"woocommerce\";s:7:\"version\";s:9:\"8.1.0-dev\";s:8:\"operator\";s:2:\">=\";}}s:9:\"sub_title\";s:865:\"<img class=\"wcpay-visa-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/visa.svg\" alt=\"Visa\"><img class=\"wcpay-mastercard-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/mastercard.svg\" alt=\"Mastercard\"><img class=\"wcpay-amex-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/amex.svg\" alt=\"Amex\"><img class=\"wcpay-googlepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/googlepay.svg\" alt=\"Googlepay\"><img class=\"wcpay-applepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/applepay.svg\" alt=\"Applepay\">\";s:15:\"additional_info\";O:8:\"stdClass\":1:{s:18:\"experiment_version\";s:2:\"v2\";}}s:20:\"woocommerce_payments\";O:8:\"stdClass\":8:{s:2:\"id\";s:20:\"woocommerce_payments\";s:5:\"title\";s:11:\"WooPayments\";s:7:\"content\";s:369:\"Payments made simple, with no monthly fees – designed exclusively for WooCommerce stores. Accept credit cards, debit cards, and other popular payment methods.<br/><br/>By clicking “Install”, you agree to the <a href=\"https://wordpress.com/tos/\" target=\"_blank\">Terms of Service</a> and <a href=\"https://automattic.com/privacy/\" target=\"_blank\">Privacy policy</a>.\";s:5:\"image\";s:101:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/wcpay.svg\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-payments\";}s:10:\"is_visible\";a:2:{i:0;O:8:\"stdClass\":6:{s:4:\"type\";s:6:\"option\";s:12:\"transformers\";a:2:{i:0;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"dot_notation\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:4:\"path\";s:8:\"industry\";}}i:1;O:8:\"stdClass\":2:{s:3:\"use\";s:12:\"array_column\";s:9:\"arguments\";O:8:\"stdClass\":1:{s:3:\"key\";s:4:\"slug\";}}}s:11:\"option_name\";s:30:\"woocommerce_onboarding_profile\";s:9:\"operation\";s:9:\"!contains\";s:5:\"value\";s:31:\"cbd-other-hemp-derived-products\";s:7:\"default\";a:0:{}}i:1;O:8:\"stdClass\":2:{s:4:\"type\";s:2:\"or\";s:8:\"operands\";a:39:{i:0;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"US\";s:9:\"operation\";s:1:\"=\";}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PR\";s:9:\"operation\";s:1:\"=\";}i:2;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AU\";s:9:\"operation\";s:1:\"=\";}i:3;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CA\";s:9:\"operation\";s:1:\"=\";}i:4;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DE\";s:9:\"operation\";s:1:\"=\";}i:5;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"ES\";s:9:\"operation\";s:1:\"=\";}i:6;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FR\";s:9:\"operation\";s:1:\"=\";}i:7;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GB\";s:9:\"operation\";s:1:\"=\";}i:8;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IE\";s:9:\"operation\";s:1:\"=\";}i:9;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"IT\";s:9:\"operation\";s:1:\"=\";}i:10;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NZ\";s:9:\"operation\";s:1:\"=\";}i:11;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AT\";s:9:\"operation\";s:1:\"=\";}i:12;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BE\";s:9:\"operation\";s:1:\"=\";}i:13;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NL\";s:9:\"operation\";s:1:\"=\";}i:14;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PL\";s:9:\"operation\";s:1:\"=\";}i:15;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"PT\";s:9:\"operation\";s:1:\"=\";}i:16;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CH\";s:9:\"operation\";s:1:\"=\";}i:17;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HK\";s:9:\"operation\";s:1:\"=\";}i:18;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SG\";s:9:\"operation\";s:1:\"=\";}i:19;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CY\";s:9:\"operation\";s:1:\"=\";}i:20;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"DK\";s:9:\"operation\";s:1:\"=\";}i:21;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"EE\";s:9:\"operation\";s:1:\"=\";}i:22;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"FI\";s:9:\"operation\";s:1:\"=\";}i:23;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"GR\";s:9:\"operation\";s:1:\"=\";}i:24;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LU\";s:9:\"operation\";s:1:\"=\";}i:25;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LT\";s:9:\"operation\";s:1:\"=\";}i:26;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"LV\";s:9:\"operation\";s:1:\"=\";}i:27;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"NO\";s:9:\"operation\";s:1:\"=\";}i:28;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"MT\";s:9:\"operation\";s:1:\"=\";}i:29;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SI\";s:9:\"operation\";s:1:\"=\";}i:30;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SK\";s:9:\"operation\";s:1:\"=\";}i:31;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"BG\";s:9:\"operation\";s:1:\"=\";}i:32;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"CZ\";s:9:\"operation\";s:1:\"=\";}i:33;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HR\";s:9:\"operation\";s:1:\"=\";}i:34;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"HU\";s:9:\"operation\";s:1:\"=\";}i:35;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"RO\";s:9:\"operation\";s:1:\"=\";}i:36;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"SE\";s:9:\"operation\";s:1:\"=\";}i:37;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"JP\";s:9:\"operation\";s:1:\"=\";}i:38;O:8:\"stdClass\":3:{s:4:\"type\";s:21:\"base_location_country\";s:5:\"value\";s:2:\"AE\";s:9:\"operation\";s:1:\"=\";}}}}s:9:\"sub_title\";s:865:\"<img class=\"wcpay-visa-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/visa.svg\" alt=\"Visa\"><img class=\"wcpay-mastercard-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/mastercard.svg\" alt=\"Mastercard\"><img class=\"wcpay-amex-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/amex.svg\" alt=\"Amex\"><img class=\"wcpay-googlepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/googlepay.svg\" alt=\"Googlepay\"><img class=\"wcpay-applepay-icon wcpay-icon\" src=\"https://woocommerce.com/wp-content/plugins/wccom-plugins/payment-gateway-suggestions/images/icons/applepay.svg\" alt=\"Applepay\">\";s:15:\"additional_info\";O:8:\"stdClass\":1:{s:18:\"experiment_version\";s:2:\"v2\";}}}}','off'),
(348,'_transient_product_query-transient-version','1724441038','on'),
(349,'wp_calendar_block_has_published_posts','1','auto'),
(355,'_transient_product-transient-version','1724441039','on'),
(358,'_transient_timeout_wc_related_30','1724527445','off'),
(359,'_transient_wc_related_30','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=30\";a:4:{i:0;s:2:\"31\";i:1;s:2:\"32\";i:2;s:2:\"33\";i:3;s:2:\"34\";}}','off'),
(362,'_transient_timeout_wc_related_32','1724527436','off'),
(363,'_transient_timeout_wc_related_31','1724527436','off'),
(364,'_transient_wc_related_32','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=32\";a:4:{i:0;s:2:\"30\";i:1;s:2:\"31\";i:2;s:2:\"33\";i:3;s:2:\"34\";}}','off'),
(365,'_transient_wc_related_31','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=31\";a:4:{i:0;s:2:\"30\";i:1;s:2:\"32\";i:2;s:2:\"33\";i:3;s:2:\"34\";}}','off'),
(366,'_transient_timeout_wc_related_33','1724527436','off'),
(367,'_transient_wc_related_33','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=33\";a:4:{i:0;s:2:\"30\";i:1;s:2:\"31\";i:2;s:2:\"32\";i:3;s:2:\"34\";}}','off'),
(368,'_transient_timeout_wc_related_34','1724527436','off'),
(369,'_transient_wc_related_34','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=34\";a:4:{i:0;s:2:\"30\";i:1;s:2:\"31\";i:2;s:2:\"32\";i:3;s:2:\"33\";}}','off'),
(370,'product_cat_children','a:0:{}','auto'),
(377,'_transient_timeout_wc_related_35','1724527446','off'),
(378,'_transient_wc_related_35','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=35\";a:4:{i:0;s:2:\"36\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"39\";}}','off'),
(379,'_transient_timeout_wc_term_counts','1727033045','off'),
(380,'_transient_wc_term_counts','a:2:{i:16;s:1:\"5\";i:17;s:1:\"5\";}','off'),
(381,'_transient_timeout_wc_related_36','1724527438','off'),
(382,'_transient_timeout_wc_related_37','1724527438','off'),
(383,'_transient_wc_related_36','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=36\";a:4:{i:0;s:2:\"35\";i:1;s:2:\"37\";i:2;s:2:\"38\";i:3;s:2:\"39\";}}','off'),
(384,'_transient_wc_related_37','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=37\";a:4:{i:0;s:2:\"35\";i:1;s:2:\"36\";i:2;s:2:\"38\";i:3;s:2:\"39\";}}','off'),
(385,'_transient_timeout_wc_related_38','1724527438','off'),
(386,'_transient_wc_related_38','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=38\";a:4:{i:0;s:2:\"35\";i:1;s:2:\"36\";i:2;s:2:\"37\";i:3;s:2:\"39\";}}','off'),
(387,'_transient_timeout_wc_related_39','1724527446','off'),
(388,'_transient_wc_related_39','a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=39\";a:4:{i:0;s:2:\"35\";i:1;s:2:\"36\";i:2;s:2:\"37\";i:3;s:2:\"38\";}}','off'),
(389,'recently_activated','a:2:{s:63:\"wpe-woocommerce-no-auth-patch/wpe-woocommerce-no-auth-patch.php\";i:1724441041;i:0;b:0;}','auto');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES
(1,2,'_wp_page_template','default'),
(2,3,'_wp_page_template','default'),
(3,4,'_wp_attached_file','woocommerce-placeholder.png'),
(4,4,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:8:\"filesize\";i:102644;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12475;}s:5:\"large\";a:5:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:98202;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4204;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:60014;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:35:\"woocommerce-placeholder-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13823;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21117;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2344;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5,11,'_pingme','1'),
(6,13,'_pingme','1'),
(7,11,'_encloseme','1'),
(8,13,'_encloseme','1'),
(9,10,'_pingme','1'),
(10,12,'_pingme','1'),
(11,16,'_pingme','1'),
(12,12,'_encloseme','1'),
(13,10,'_encloseme','1'),
(14,16,'_encloseme','1'),
(15,14,'_pingme','1'),
(16,14,'_encloseme','1'),
(17,15,'_pingme','1'),
(18,17,'_pingme','1'),
(19,17,'_encloseme','1'),
(20,15,'_encloseme','1'),
(21,18,'_pingme','1'),
(22,18,'_encloseme','1'),
(23,19,'_pingme','1'),
(24,19,'_encloseme','1'),
(25,20,'_wp_attached_file','2024/08/woo_product-0.jpeg'),
(26,20,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2024/08/woo_product-0.jpeg\";s:8:\"filesize\";i:60798;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"woo_product-0-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18720;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-0-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6154;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"woo_product-0-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77921;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"woo_product-0-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21048;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"woo_product-0-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30453;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-0-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3469;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27,21,'_wp_attached_file','2024/08/woo_product-1.jpeg'),
(28,21,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2024/08/woo_product-1.jpeg\";s:8:\"filesize\";i:126380;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"woo_product-1-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16231;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6033;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"woo_product-1-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:65167;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"woo_product-1-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18222;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"woo_product-1-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25919;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-1-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3617;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29,22,'_wp_attached_file','2024/08/woo_product-2.jpeg'),
(30,22,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2024/08/woo_product-2.jpeg\";s:8:\"filesize\";i:56124;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"woo_product-2-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17421;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6167;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"woo_product-2-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72523;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"woo_product-2-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19689;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"woo_product-2-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28554;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-2-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3639;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31,23,'_wp_attached_file','2024/08/woo_product-3.jpeg'),
(32,23,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2024/08/woo_product-3.jpeg\";s:8:\"filesize\";i:246510;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"woo_product-3-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26332;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7764;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"woo_product-3-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:125756;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"woo_product-3-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30329;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"woo_product-3-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45913;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-3-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4089;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33,24,'_wp_attached_file','2024/08/woo_product-4.jpeg'),
(34,24,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2024/08/woo_product-4.jpeg\";s:8:\"filesize\";i:56124;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"woo_product-4-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17421;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6167;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"woo_product-4-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72523;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"woo_product-4-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19689;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"woo_product-4-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28554;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-4-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3639;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35,25,'_wp_attached_file','2024/08/woo_product-5.jpeg'),
(36,25,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2024/08/woo_product-5.jpeg\";s:8:\"filesize\";i:134593;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"woo_product-5-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15432;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-5-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5552;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"woo_product-5-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62939;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"woo_product-5-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17476;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"woo_product-5-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24931;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-5-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3293;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37,26,'_wp_attached_file','2024/08/woo_product-6.jpeg'),
(38,26,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2024/08/woo_product-6.jpeg\";s:8:\"filesize\";i:60798;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"woo_product-6-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18720;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-6-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6154;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"woo_product-6-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77921;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"woo_product-6-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21048;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"woo_product-6-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30453;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-6-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3469;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39,27,'_wp_attached_file','2024/08/woo_product-7.jpeg'),
(40,27,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2024/08/woo_product-7.jpeg\";s:8:\"filesize\";i:84184;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"woo_product-7-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9667;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-7-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3857;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"woo_product-7-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41043;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"woo_product-7-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10923;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"woo_product-7-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15431;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-7-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2434;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41,28,'_wp_attached_file','2024/08/woo_product-8.jpeg'),
(42,28,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2024/08/woo_product-8.jpeg\";s:8:\"filesize\";i:60798;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"woo_product-8-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18720;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-8-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6154;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"woo_product-8-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77921;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"woo_product-8-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21048;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"woo_product-8-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30453;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-8-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3469;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43,29,'_wp_attached_file','2024/08/woo_product-9.jpeg'),
(44,29,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2024/08/woo_product-9.jpeg\";s:8:\"filesize\";i:110358;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"woo_product-9-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14365;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-9-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5529;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"woo_product-9-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58431;}s:21:\"woocommerce_thumbnail\";a:6:{s:4:\"file\";s:26:\"woo_product-9-324x324.jpeg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16194;s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:5:{s:4:\"file\";s:26:\"woo_product-9-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22868;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:4:\"file\";s:26:\"woo_product-9-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3346;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45,30,'_regular_price','21.99'),
(46,30,'total_sales','0'),
(47,30,'_tax_status','taxable'),
(48,30,'_tax_class',''),
(49,30,'_manage_stock','no'),
(50,32,'_regular_price','21.99'),
(51,30,'_backorders','no'),
(52,33,'_regular_price','21.99'),
(53,31,'_regular_price','21.99'),
(54,30,'_sold_individually','no'),
(55,32,'total_sales','0'),
(56,33,'total_sales','0'),
(57,31,'total_sales','0'),
(58,31,'_tax_status','taxable'),
(59,32,'_tax_status','taxable'),
(60,33,'_tax_status','taxable'),
(61,30,'_virtual','no'),
(62,34,'_regular_price','21.99'),
(63,30,'_downloadable','no'),
(64,33,'_tax_class',''),
(65,32,'_tax_class',''),
(66,34,'total_sales','0'),
(67,30,'_download_limit','-1'),
(68,32,'_manage_stock','no'),
(69,31,'_tax_class',''),
(70,33,'_manage_stock','no'),
(71,34,'_tax_status','taxable'),
(72,30,'_download_expiry','-1'),
(73,32,'_backorders','no'),
(74,34,'_tax_class',''),
(75,33,'_backorders','no'),
(76,31,'_manage_stock','no'),
(77,30,'_thumbnail_id','20'),
(78,32,'_sold_individually','no'),
(79,34,'_manage_stock','no'),
(80,30,'_stock',NULL),
(81,33,'_sold_individually','no'),
(82,31,'_backorders','no'),
(83,34,'_backorders','no'),
(84,30,'_stock_status','instock'),
(85,30,'_wc_average_rating','0'),
(86,32,'_virtual','no'),
(87,31,'_sold_individually','no'),
(88,33,'_virtual','no'),
(89,34,'_sold_individually','no'),
(90,30,'_wc_review_count','0'),
(91,33,'_downloadable','no'),
(92,32,'_downloadable','no'),
(93,31,'_virtual','no'),
(94,32,'_download_limit','-1'),
(95,33,'_download_limit','-1'),
(96,31,'_downloadable','no'),
(97,34,'_virtual','no'),
(98,32,'_download_expiry','-1'),
(99,33,'_download_expiry','-1'),
(100,31,'_download_limit','-1'),
(101,34,'_downloadable','no'),
(102,32,'_thumbnail_id','21'),
(103,33,'_thumbnail_id','23'),
(104,31,'_download_expiry','-1'),
(105,34,'_download_limit','-1'),
(106,32,'_stock',NULL),
(107,33,'_stock',NULL),
(108,31,'_thumbnail_id','24'),
(109,34,'_download_expiry','-1'),
(110,32,'_stock_status','instock'),
(111,33,'_stock_status','instock'),
(112,31,'_stock',NULL),
(113,32,'_wc_average_rating','0'),
(114,33,'_wc_average_rating','0'),
(115,34,'_thumbnail_id','22'),
(116,31,'_stock_status','instock'),
(117,32,'_wc_review_count','0'),
(118,34,'_stock',NULL),
(119,33,'_wc_review_count','0'),
(120,31,'_wc_average_rating','0'),
(121,34,'_stock_status','instock'),
(122,31,'_wc_review_count','0'),
(123,34,'_wc_average_rating','0'),
(124,34,'_wc_review_count','0'),
(125,30,'_product_version','9.1.4'),
(126,30,'_price','21.99'),
(127,32,'_product_version','9.1.4'),
(128,32,'_price','21.99'),
(129,33,'_product_version','9.1.4'),
(130,31,'_product_version','9.1.4'),
(131,31,'_price','21.99'),
(132,33,'_price','21.99'),
(133,34,'_product_version','9.1.4'),
(134,34,'_price','21.99'),
(135,35,'_regular_price','21.99'),
(136,35,'total_sales','0'),
(137,35,'_tax_status','taxable'),
(138,35,'_tax_class',''),
(139,35,'_manage_stock','no'),
(140,36,'_regular_price','21.99'),
(141,35,'_backorders','no'),
(142,36,'total_sales','0'),
(143,37,'_regular_price','21.99'),
(144,35,'_sold_individually','no'),
(145,36,'_tax_status','taxable'),
(146,35,'_virtual','no'),
(147,36,'_tax_class',''),
(148,37,'total_sales','0'),
(149,35,'_downloadable','no'),
(150,36,'_manage_stock','no'),
(151,37,'_tax_status','taxable'),
(152,35,'_download_limit','-1'),
(153,38,'_regular_price','21.99'),
(154,37,'_tax_class',''),
(155,36,'_backorders','no'),
(156,35,'_download_expiry','-1'),
(157,36,'_sold_individually','no'),
(158,37,'_manage_stock','no'),
(159,38,'total_sales','0'),
(160,35,'_thumbnail_id','21'),
(161,37,'_backorders','no'),
(162,38,'_tax_status','taxable'),
(163,35,'_stock',NULL),
(164,36,'_virtual','no'),
(165,37,'_sold_individually','no'),
(166,38,'_tax_class',''),
(167,35,'_stock_status','instock'),
(168,36,'_downloadable','no'),
(169,37,'_virtual','no'),
(170,36,'_download_limit','-1'),
(171,35,'_wc_average_rating','0'),
(172,39,'_regular_price','21.99'),
(173,37,'_downloadable','no'),
(174,38,'_manage_stock','no'),
(175,36,'_download_expiry','-1'),
(176,35,'_wc_review_count','0'),
(177,39,'total_sales','0'),
(178,38,'_backorders','no'),
(179,39,'_tax_status','taxable'),
(180,37,'_download_limit','-1'),
(181,36,'_thumbnail_id','24'),
(182,37,'_download_expiry','-1'),
(183,38,'_sold_individually','no'),
(184,39,'_tax_class',''),
(185,36,'_stock',NULL),
(186,39,'_manage_stock','no'),
(187,37,'_thumbnail_id','20'),
(188,36,'_stock_status','instock'),
(189,38,'_virtual','no'),
(190,39,'_backorders','no'),
(191,37,'_stock',NULL),
(192,36,'_wc_average_rating','0'),
(193,38,'_downloadable','no'),
(194,37,'_stock_status','instock'),
(195,39,'_sold_individually','no'),
(196,36,'_wc_review_count','0'),
(197,38,'_download_limit','-1'),
(198,37,'_wc_average_rating','0'),
(199,38,'_download_expiry','-1'),
(200,37,'_wc_review_count','0'),
(201,39,'_virtual','no'),
(202,38,'_thumbnail_id','22'),
(203,39,'_downloadable','no'),
(204,38,'_stock',NULL),
(205,39,'_download_limit','-1'),
(206,38,'_stock_status','instock'),
(207,39,'_download_expiry','-1'),
(208,38,'_wc_average_rating','0'),
(209,39,'_thumbnail_id','23'),
(210,38,'_wc_review_count','0'),
(211,39,'_stock',NULL),
(212,39,'_stock_status','instock'),
(213,39,'_wc_average_rating','0'),
(214,35,'_product_version','9.1.4'),
(215,39,'_wc_review_count','0'),
(216,35,'_price','21.99'),
(217,37,'_product_version','9.1.4'),
(218,36,'_product_version','9.1.4'),
(219,37,'_price','21.99'),
(220,36,'_price','21.99'),
(221,39,'_product_version','9.1.4'),
(222,39,'_price','21.99'),
(223,38,'_product_version','9.1.4'),
(224,38,'_price','21.99');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES
(1,1,'2024-08-23 19:22:54','2024-08-23 19:22:54','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-08-23 19:22:54','2024-08-23 19:22:54','',0,'http://localhost:8000/?p=1',0,'post','',1),
(2,1,'2024-08-23 19:22:54','2024-08-23 19:22:54','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-08-23 19:22:54','2024-08-23 19:22:54','',0,'http://localhost:8000/?page_id=2',0,'page','',0),
(3,1,'2024-08-23 19:22:54','2024-08-23 19:22:54','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8000.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2024-08-23 19:22:54','2024-08-23 19:22:54','',0,'http://localhost:8000/?page_id=3',0,'page','',0),
(4,0,'2024-08-23 19:23:00','2024-08-23 19:23:00','','woocommerce-placeholder','','inherit','open','closed','','woocommerce-placeholder','','','2024-08-23 19:23:00','2024-08-23 19:23:00','',0,'http://localhost:8000/wp-content/uploads/2024/08/woocommerce-placeholder.png',0,'attachment','image/png',0),
(5,1,'2024-08-23 19:23:01','2024-08-23 19:23:01','','Shop','','publish','closed','closed','','shop','','','2024-08-23 19:23:01','2024-08-23 19:23:01','',0,'http://localhost:8000/shop/',0,'page','',0),
(6,1,'2024-08-23 19:23:01','2024-08-23 19:23:01','<!-- wp:woocommerce/cart -->\n<div class=\"wp-block-woocommerce-cart alignwide is-loading\"><!-- wp:woocommerce/filled-cart-block -->\n<div class=\"wp-block-woocommerce-filled-cart-block\"><!-- wp:woocommerce/cart-items-block -->\n<div class=\"wp-block-woocommerce-cart-items-block\"><!-- wp:woocommerce/cart-line-items-block -->\n<div class=\"wp-block-woocommerce-cart-line-items-block\"></div>\n<!-- /wp:woocommerce/cart-line-items-block -->\n\n<!-- wp:woocommerce/cart-cross-sells-block -->\n<div class=\"wp-block-woocommerce-cart-cross-sells-block\"><!-- wp:heading {\"fontSize\":\"large\"} -->\n<h2 class=\"wp-block-heading has-large-font-size\">You may be interested in…</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/cart-cross-sells-products-block -->\n<div class=\"wp-block-woocommerce-cart-cross-sells-products-block\"></div>\n<!-- /wp:woocommerce/cart-cross-sells-products-block --></div>\n<!-- /wp:woocommerce/cart-cross-sells-block --></div>\n<!-- /wp:woocommerce/cart-items-block -->\n\n<!-- wp:woocommerce/cart-totals-block -->\n<div class=\"wp-block-woocommerce-cart-totals-block\"><!-- wp:woocommerce/cart-order-summary-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-block\"><!-- wp:woocommerce/cart-order-summary-heading-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-heading-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-heading-block -->\n\n<!-- wp:woocommerce/cart-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/cart-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/cart-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-fee-block -->\n\n<!-- wp:woocommerce/cart-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-discount-block -->\n\n<!-- wp:woocommerce/cart-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/cart-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-cart-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/cart-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/cart-order-summary-block -->\n\n<!-- wp:woocommerce/cart-express-payment-block -->\n<div class=\"wp-block-woocommerce-cart-express-payment-block\"></div>\n<!-- /wp:woocommerce/cart-express-payment-block -->\n\n<!-- wp:woocommerce/proceed-to-checkout-block -->\n<div class=\"wp-block-woocommerce-proceed-to-checkout-block\"></div>\n<!-- /wp:woocommerce/proceed-to-checkout-block -->\n\n<!-- wp:woocommerce/cart-accepted-payment-methods-block -->\n<div class=\"wp-block-woocommerce-cart-accepted-payment-methods-block\"></div>\n<!-- /wp:woocommerce/cart-accepted-payment-methods-block --></div>\n<!-- /wp:woocommerce/cart-totals-block --></div>\n<!-- /wp:woocommerce/filled-cart-block -->\n\n<!-- wp:woocommerce/empty-cart-block -->\n<div class=\"wp-block-woocommerce-empty-cart-block\"><!-- wp:heading {\"textAlign\":\"center\",\"className\":\"with-empty-cart-icon wc-block-cart__empty-cart__title\"} -->\n<h2 class=\"wp-block-heading has-text-align-center with-empty-cart-icon wc-block-cart__empty-cart__title\">Your cart is currently empty!</h2>\n<!-- /wp:heading -->\n\n<!-- wp:separator {\"className\":\"is-style-dots\"} -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity is-style-dots\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading {\"textAlign\":\"center\"} -->\n<h2 class=\"wp-block-heading has-text-align-center\">New in store</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new {\"columns\":4,\"rows\":1} /--></div>\n<!-- /wp:woocommerce/empty-cart-block --></div>\n<!-- /wp:woocommerce/cart -->','Cart','','publish','closed','closed','','cart','','','2024-08-23 19:23:01','2024-08-23 19:23:01','',0,'http://localhost:8000/cart/',0,'page','',0),
(7,1,'2024-08-23 19:23:01','2024-08-23 19:23:01','<!-- wp:woocommerce/checkout -->\n<div class=\"wp-block-woocommerce-checkout alignwide wc-block-checkout is-loading\"><!-- wp:woocommerce/checkout-fields-block -->\n<div class=\"wp-block-woocommerce-checkout-fields-block\"><!-- wp:woocommerce/checkout-express-payment-block -->\n<div class=\"wp-block-woocommerce-checkout-express-payment-block\"></div>\n<!-- /wp:woocommerce/checkout-express-payment-block -->\n\n<!-- wp:woocommerce/checkout-contact-information-block -->\n<div class=\"wp-block-woocommerce-checkout-contact-information-block\"></div>\n<!-- /wp:woocommerce/checkout-contact-information-block -->\n\n<!-- wp:woocommerce/checkout-shipping-method-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-method-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-method-block -->\n\n<!-- wp:woocommerce/checkout-pickup-options-block -->\n<div class=\"wp-block-woocommerce-checkout-pickup-options-block\"></div>\n<!-- /wp:woocommerce/checkout-pickup-options-block -->\n\n<!-- wp:woocommerce/checkout-shipping-address-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-address-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-address-block -->\n\n<!-- wp:woocommerce/checkout-billing-address-block -->\n<div class=\"wp-block-woocommerce-checkout-billing-address-block\"></div>\n<!-- /wp:woocommerce/checkout-billing-address-block -->\n\n<!-- wp:woocommerce/checkout-shipping-methods-block -->\n<div class=\"wp-block-woocommerce-checkout-shipping-methods-block\"></div>\n<!-- /wp:woocommerce/checkout-shipping-methods-block -->\n\n<!-- wp:woocommerce/checkout-payment-block -->\n<div class=\"wp-block-woocommerce-checkout-payment-block\"></div>\n<!-- /wp:woocommerce/checkout-payment-block -->\n\n<!-- wp:woocommerce/checkout-additional-information-block -->\n<div class=\"wp-block-woocommerce-checkout-additional-information-block\"></div>\n<!-- /wp:woocommerce/checkout-additional-information-block -->\n\n<!-- wp:woocommerce/checkout-order-note-block -->\n<div class=\"wp-block-woocommerce-checkout-order-note-block\"></div>\n<!-- /wp:woocommerce/checkout-order-note-block -->\n\n<!-- wp:woocommerce/checkout-terms-block -->\n<div class=\"wp-block-woocommerce-checkout-terms-block\"></div>\n<!-- /wp:woocommerce/checkout-terms-block -->\n\n<!-- wp:woocommerce/checkout-actions-block -->\n<div class=\"wp-block-woocommerce-checkout-actions-block\"></div>\n<!-- /wp:woocommerce/checkout-actions-block --></div>\n<!-- /wp:woocommerce/checkout-fields-block -->\n\n<!-- wp:woocommerce/checkout-totals-block -->\n<div class=\"wp-block-woocommerce-checkout-totals-block\"><!-- wp:woocommerce/checkout-order-summary-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-block\"><!-- wp:woocommerce/checkout-order-summary-cart-items-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-cart-items-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-cart-items-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-coupon-form-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-coupon-form-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-coupon-form-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-subtotal-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-subtotal-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-subtotal-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-fee-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-fee-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-fee-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-discount-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-discount-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-discount-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-shipping-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-shipping-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-shipping-block -->\n\n<!-- wp:woocommerce/checkout-order-summary-taxes-block -->\n<div class=\"wp-block-woocommerce-checkout-order-summary-taxes-block\"></div>\n<!-- /wp:woocommerce/checkout-order-summary-taxes-block --></div>\n<!-- /wp:woocommerce/checkout-order-summary-block --></div>\n<!-- /wp:woocommerce/checkout-totals-block --></div>\n<!-- /wp:woocommerce/checkout -->','Checkout','','publish','closed','closed','','checkout','','','2024-08-23 19:23:01','2024-08-23 19:23:01','',0,'http://localhost:8000/checkout/',0,'page','',0),
(8,1,'2024-08-23 19:23:01','2024-08-23 19:23:01','<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->','My account','','publish','closed','closed','','my-account','','','2024-08-23 19:23:01','2024-08-23 19:23:01','',0,'http://localhost:8000/my-account/',0,'page','',0),
(9,1,'2024-08-23 19:23:01','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p><b>This is a sample page.</b></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Overview</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our refund and returns policy lasts 30 days. If 30 days have passed since your purchase, we can’t offer you a full refund or exchange.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Additional non-returnable items:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Gift cards</li>\n<li>Downloadable software products</li>\n<li>Some health and personal care items</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>To complete your return, we require a receipt or proof of purchase.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Please do not send your purchase back to the manufacturer.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>There are certain situations where only partial refunds are granted:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul>\n<li>Book with obvious signs of use</li>\n<li>CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened.</li>\n<li>Any item not in its original condition, is damaged or missing parts for reasons not due to our error.</li>\n<li>Any item that is returned more than 30 days after delivery</li>\n</ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<h2>Refunds</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h3 class=\"wp-block-heading\">Late or missing refunds</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you haven’t received a refund yet, first check your bank account again.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Then contact your credit card company, it may take some time before your refund is officially posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Next contact your bank. There is often some processing time before a refund is posted.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you’ve done all of this and you still have not received your refund yet, please contact us at {email address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h3 class=\"wp-block-heading\">Sale items</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Only regular priced items may be refunded. Sale items cannot be refunded.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Exchanges</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at {email address} and send your item to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Gifts</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item was marked as a gift when purchased and shipped directly to you, you’ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If the item wasn’t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and they will find out about your return.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Shipping returns</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>To return your product, you should mail your product to: {physical address}.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depending on where you live, the time it may take for your exchanged product to reach you may vary.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you are returning more expensive items, you may consider using a trackable shipping service or purchasing shipping insurance. We don’t guarantee that we will receive your returned item.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<h2>Need help?</h2>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contact us at {email} for questions related to refunds and returns.</p>\n<!-- /wp:paragraph -->','Refund and Returns Policy','','draft','closed','closed','','refund_returns','','','2024-08-23 19:23:01','0000-00-00 00:00:00','',0,'http://localhost:8000/?page_id=9',0,'page','',0),
(10,1,'2024-08-23 19:23:32','2024-08-23 19:23:32','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non est ista, inquam, Piso, magna dissensio. Respondeat totidem verbis. </p>\n<p>Sic enim censent, oportunitatis esse beate vivere. Quae autem natura suae primae institutionis oblita est? Bork Sed eum qui audiebant, quoad poterant, defendebant sententiam suam. Quae tamen a te agetur non melior, quam illae sunt, quas interdum optines. Hinc ceteri particulas arripere conati suam quisque videro voluit afferre sententiam. Restant Stoici, qui cum a Peripateticis et Academicis omnia transtulissent, nominibus aliis easdem res secuti sunt. Nihil sane. </p>\n<p>Ut non sine causa ex iis memoriae ducta sit disciplina. Apparet statim, quae sint officia, quae actiones. Idem iste, inquam, de voluptate quid sentit? Summum ením bonum exposuit vacuitatem doloris; Nunc ita separantur, ut disiuncta sint, quo nihil potest esse perversius. Non enim, si omnia non sequebatur, idcirco non erat ortus illinc. </p>\n<p>Non potes ergo ista tueri, Torquate, mihi crede, si te ipse et tuas cogitationes et studia perspexeris; Quamquam non negatis nos intellegere quid sit voluptas, sed quid ille dicat. Vitiosum est enim in dividendo partem in genere numerare. Tu autem, si tibi illa probabantur, cur non propriis verbis ea tenebas? Sic, et quidem diligentius saepiusque ista loquemur inter nos agemusque communiter. Portenta haec esse dicit, neque ea ratione ullo modo posse vivi; Qui convenit? Graece donan, Latine voluptatem vocant. Tum Quintus: Est plane, Piso, ut dicis, inquit. </p>\n<p>Putabam equidem satis, inquit, me dixisse. Me igitur ipsum ames oportet, non mea, si veri amici futuri sumus. Collatio igitur ista te nihil iuvat. </p>\n<p>Si quicquam extra virtutem habeatur in bonis. Igitur ne dolorem quidem. Ut in geometria, prima si dederis, danda sunt omnia. Quos quidem tibi studiose et diligenter tractandos magnopere censeo. Quis animo aequo videt eum, quem inpure ac flagitiose putet vivere? Et harum quidem rerum facilis est et expedita distinctio. Certe nihil nisi quod possit ipsum propter se iure laudari. Ut enim consuetudo loquitur, id solum dicitur honestum, quod est populari fama gloriosum. </p>\n<p>Ergo in gubernando nihil, in officio plurimum interest, quo in genere peccetur. Sed haec nihil sane ad rem; Equidem, sed audistine modo de Carneade? Ut alios omittam, hunc appello, quem ille unum secutus est. Estne, quaeso, inquam, sitienti in bibendo voluptas? </p>\n<p>Etsi ea quidem, quae adhuc dixisti, quamvis ad aetatem recte isto modo dicerentur. An eum discere ea mavis, quae cum plane perdidiceriti nihil sciat? Tanta vis admonitionis inest in locis; Hoc loco tenere se Triarius non potuit. Illa sunt similia: hebes acies est cuipiam oculorum, corpore alius senescit; Uterque enim summo bono fruitur, id est voluptate. Tecum optime, deinde etiam cum mediocri amico. An me, inquis, tam amentem putas, ut apud imperitos isto modo loquar? Quibusnam praeteritis? Quid me istud rogas? Sed tempus est, si videtur, et recta quidem ad me. </p>\n<p>Duo Reges: constructio interrete. Nam adhuc, meo fortasse vitio, quid ego quaeram non perspicis. Ut proverbia non nulla veriora sint quam vestra dogmata. Ut necesse sit omnium rerum, quae natura vigeant, similem esse finem, non eundem. Sed erat aequius Triarium aliquid de dissensione nostra iudicare. Oratio me istius philosophi non offendit; Roges enim Aristonem, bonane ei videantur haec: vacuitas doloris, divitiae, valitudo; Nonne videmus quanta perturbatio rerum omnium consequatur, quanta confusio? </p>\n','Post 2','','publish','open','open','','post-2','','','2024-08-23 19:23:32','2024-08-23 19:23:32','',0,'http://localhost:8000/post-2/',0,'post','',0),
(11,1,'2024-08-23 19:23:32','2024-08-23 19:23:32','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eorum enim est haec querela, qui sibi cari sunt seseque diligunt. Cur post Tarentum ad Archytam? Quamquam non negatis nos intellegere quid sit voluptas, sed quid ille dicat. Utilitatis causa amicitia est quaesita. Omnia peccata paria dicitis. Duo Reges: constructio interrete. Satis est ad hoc responsum. Idem adhuc; </p>\n<p>Quid, cum volumus nomina eorum, qui quid gesserint, nota nobis esse, parentes, patriam, multa praeterea minime necessaria? At certe gravius. Praeclare enim Plato: Beatum, cui etiam in senectute contigerit, ut sapientiam verasque opiniones assequi possit. Quae cum dixisset, finem ille. </p>\n<p>Nunc haec primum fortasse audientis servire debemus. Videmusne ut pueri ne verberibus quidem a contemplandis rebus perquirendisque deterreantur? Sin autem est in ea, quod quidam volunt, nihil impedit hanc nostram comprehensionem summi boni. In eo enim positum est id, quod dicimus esse expetendum. Res tota, Torquate, non doctorum hominum, velle post mortem epulis celebrari memoriam sui nominis. Sint modo partes vitae beatae. Invidiosum nomen est, infame, suspectum. </p>\n<p>Quamvis enim depravatae non sint, pravae tamen esse possunt. Laelius clamores sofòw ille so lebat Edere compellans gumias ex ordine nostros. Non quam nostram quidem, inquit Pomponius iocans; Idne consensisse de Calatino plurimas gentis arbitramur, primarium populi fuisse, quod praestantissimus fuisset in conficiendis voluptatibus? Cur iustitia laudatur? Quid enim est a Chrysippo praetermissum in Stoicis? An ea, quae per vinitorem antea consequebatur, per se ipsa curabit? Sed quae tandem ista ratio est? Qui convenit? </p>\n<p>Haec para/doca illi, nos admirabilia dicamus. Primum in nostrane potestate est, quid meminerimus? Qui enim existimabit posse se miserum esse beatus non erit. Hunc ipsum Zenonis aiunt esse finem declarantem illud, quod a te dictum est, convenienter naturae vivere. Summum a vobis bonum voluptas dicitur. Color egregius, integra valitudo, summa gratia, vita denique conferta voluptatum omnium varietate. Quid igitur, inquit, eos responsuros putas? Quamquam non negatis nos intellegere quid sit voluptas, sed quid ille dicat. </p>\n<p>Philosophi autem in suis lectulis plerumque moriuntur. Putabam equidem satis, inquit, me dixisse. Cuius ad naturam apta ratio vera illa et summa lex a philosophis dicitur. Tum Triarius: Posthac quidem, inquit, audacius. Itaque eos id agere, ut a se dolores, morbos, debilitates repellant. Quid autem habent admirationis, cum prope accesseris? Non pugnem cum homine, cur tantum habeat in natura boni; Progredientibus autem aetatibus sensim tardeve potius quasi nosmet ipsos cognoscimus. </p>\n<p>Plane idem, inquit, et maxima quidem, qua fieri nulla maior potest. Nihil opus est exemplis hoc facere longius. An me, inquam, nisi te audire vellem, censes haec dicturum fuisse? Ergo infelix una molestia, fellx rursus, cum is ipse anulus in praecordiis piscis inventus est? Non est igitur summum malum dolor. Nihil opus est exemplis hoc facere longius. Sit ista in Graecorum levitate perversitas, qui maledictis insectantur eos, a quibus de veritate dissentiunt. O magnam vim ingenii causamque iustam, cur nova existeret disciplina! Perge porro. </p>\n','Post 7','','publish','open','open','','post-7','','','2024-08-23 19:23:32','2024-08-23 19:23:32','',0,'http://localhost:8000/post-7/',0,'post','',0),
(12,1,'2024-08-23 19:23:32','2024-08-23 19:23:32','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Haec et tu ita posuisti, et verba vestra sunt. Bork </p>\n<p>Memini me adesse P. Ergo in gubernando nihil, in officio plurimum interest, quo in genere peccetur. Sed tu istuc dixti bene Latine, parum plane. Idem iste, inquam, de voluptate quid sentit? Universa enim illorum ratione cum tota vestra confligendum puto. Huius ego nunc auctoritatem sequens idem faciam. Est, ut dicis, inquit; Ut aliquid scire se gaudeant? Quae in controversiam veniunt, de iis, si placet, disseramus. Nam si propter voluptatem, quae est ista laus, quae possit e macello peti? </p>\n<p>Serpere anguiculos, nare anaticulas, evolare merulas, cornibus uti videmus boves, nepas aculeis. Quod si ita se habeat, non possit beatam praestare vitam sapientia. Illa argumenta propria videamus, cur omnia sint paria peccata. Ac ne plura complectar-sunt enim innumerabilia-, bene laudata virtus voluptatis aditus intercludat necesse est. Hoc etsi multimodis reprehendi potest, tamen accipio, quod dant. </p>\n<p>Quantum Aristoxeni ingenium consumptum videmus in musicis? Consequens enim est et post oritur, ut dixi. Duo Reges: constructio interrete. Sed eum qui audiebant, quoad poterant, defendebant sententiam suam. Venit ad extremum; </p>\n<p>Habes, inquam, Cato, formam eorum, de quibus loquor, philosophorum. Et hunc idem dico, inquieta sed ad virtutes et ad vitia nihil interesse. Mihi quidem Homerus huius modi quiddam vidisse videatur in iis, quae de Sirenum cantibus finxerit. Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Quae diligentissime contra Aristonem dicuntur a Chryippo. Aliena dixit in physicis nec ea ipsa, quae tibi probarentur; Multoque hoc melius nos veriusque quam Stoici. Quamquam te quidem video minime esse deterritum. Ut in voluptate sit, qui epuletur, in dolore, qui torqueatur. Frater et T. </p>\n<p>Tria genera cupiditatum, naturales et necessariae, naturales et non necessariae, nec naturales nec necessariae. Nam quibus rebus efficiuntur voluptates, eae non sunt in potestate sapientis. Non igitur potestis voluptate omnia dirigentes aut tueri aut retinere virtutem. Tenent mordicus. Quae est igitur causa istarum angustiarum? Cum id quoque, ut cupiebat, audivisset, evelli iussit eam, qua erat transfixus, hastam. Bork Primum in nostrane potestate est, quid meminerimus? </p>\n<p>Virtutis, magnitudinis animi, patientiae, fortitudinis fomentis dolor mitigari solet. Quod idem cum vestri faciant, non satis magnam tribuunt inventoribus gratiam. Mihi quidem Antiochum, quem audis, satis belle videris attendere. Disserendi artem nullam habuit. Aliud igitur esse censet gaudere, aliud non dolere. Estne, quaeso, inquam, sitienti in bibendo voluptas? </p>\n<p>Nos paucis ad haec additis finem faciamus aliquando; Primum quid tu dicis breve? Utrum igitur percurri omnem Epicuri disciplinam placet an de una voluptate quaeri, de qua omne certamen est? At modo dixeras nihil in istis rebus esse, quod interesset. Ergo adhuc, quantum equidem intellego, causa non videtur fuisse mutandi nominis. Sed ad haec, nisi molestum est, habeo quae velim. Sic enim censent, oportunitatis esse beate vivere. </p>\n','Post 6','','publish','open','open','','post-6','','','2024-08-23 19:23:32','2024-08-23 19:23:32','',0,'http://localhost:8000/post-6/',0,'post','',0),
(13,1,'2024-08-23 19:23:32','2024-08-23 19:23:32','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Virtutis, magnitudinis animi, patientiae, fortitudinis fomentis dolor mitigari solet. Hoc non est positum in nostra actione. Qui est in parvis malis. Istam voluptatem, inquit, Epicurus ignorat? Primum in nostrane potestate est, quid meminerimus? </p>\n<p>Ac tamen hic mallet non dolere. Bona autem corporis huic sunt, quod posterius posui, similiora. Etenim nec iustitia nec amicitia esse omnino poterunt, nisi ipsae per se expetuntur. Quid de Platone aut de Democrito loquar? Quid turpius quam sapientis vitam ex insipientium sermone pendere? Quarum ambarum rerum cum medicinam pollicetur, luxuriae licentiam pollicetur. Nulla profecto est, quin suam vim retineat a primo ad extremum. Utinam quidem dicerent alium alio beatiorem! Iam ruinas videres. Sedulo, inquam, faciam. Illum mallem levares, quo optimum atque humanissimum virum, Cn. Quodsi vultum tibi, si incessum fingeres, quo gravior viderere, non esses tui similis; Sed quid minus probandum quam esse aliquem beatum nec satis beatum? </p>\n<p>Prioris generis est docilitas, memoria; Maximas vero virtutes iacere omnis necesse est voluptate dominante. Qualem igitur hominem natura inchoavit? Sic consequentibus vestris sublatis prima tolluntur. Sed nunc, quod agimus; Sedulo, inquam, faciam. </p>\n<p>Quid, si etiam iucunda memoria est praeteritorum malorum? Respondent extrema primis, media utrisque, omnia omnibus. An est aliquid per se ipsum flagitiosum, etiamsi nulla comitetur infamia? Teneo, inquit, finem illi videri nihil dolere. </p>\n<p>Quorum sine causa fieri nihil putandum est. Isto modo ne improbos quidem, si essent boni viri. Verum esto; Possumusne ergo in vita summum bonum dicere, cum id ne in cena quidem posse videamur? Quae cum praeponunt, ut sit aliqua rerum selectio, naturam videntur sequi; Conferam tecum, quam cuique verso rem subicias; Ut aliquid scire se gaudeant? Quid de Platone aut de Democrito loquar? Facit igitur Lucius noster prudenter, qui audire de summo bono potissimum velit; Sed ad haec, nisi molestum est, habeo quae velim. Sed quae tandem ista ratio est? Tubulo putas dicere? </p>\n<p>Nam si amitti vita beata potest, beata esse non potest. Sed ad rem redeamus; Cur deinde Metrodori liberos commendas? Optime, inquam. Nos paucis ad haec additis finem faciamus aliquando; Et quidem, Cato, hanc totam copiam iam Lucullo nostro notam esse oportebit; At ego quem huic anteponam non audeo dicere; Habent enim et bene longam et satis litigiosam disputationem. </p>\n<p>Duo Reges: constructio interrete. Qui autem de summo bono dissentit de tota philosophiae ratione dissentit. Nam his libris eum malo quam reliquo ornatu villae delectari. </p>\n','Post 5','','publish','open','open','','post-5','','','2024-08-23 19:23:32','2024-08-23 19:23:32','',0,'http://localhost:8000/post-5/',0,'post','',0),
(14,1,'2024-08-23 19:23:32','2024-08-23 19:23:32','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vide, ne etiam menses! nisi forte eum dicis, qui, simul atque arripuit, interficit. De ingenio eius in his disputationibus, non de moribus quaeritur. Huic mori optimum esse propter desperationem sapientiae, illi propter spem vivere. Quae quidem sapientes sequuntur duce natura tamquam videntes; Sed tu istuc dixti bene Latine, parum plane. Duo Reges: constructio interrete. Itaque dicunt nec dubitant: mihi sic usus est, tibi ut opus est facto, fac. Sic enim censent, oportunitatis esse beate vivere. Nosti, credo, illud: Nemo pius est, qui pietatem-; </p>\n','Post 0','','publish','open','open','','post-0','','','2024-08-23 19:23:32','2024-08-23 19:23:32','',0,'http://localhost:8000/post-0/',0,'post','',0),
(15,1,'2024-08-23 19:23:32','2024-08-23 19:23:32','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duo Reges: constructio interrete. Suo enim quisque studio maxime ducitur. Quae similitudo in genere etiam humano apparet. Quae diligentissime contra Aristonem dicuntur a Chryippo. Habent enim et bene longam et satis litigiosam disputationem. </p>\n<p>Hoc loco discipulos quaerere videtur, ut, qui asoti esse velint, philosophi ante fiant. Immo istud quidem, inquam, quo loco quidque, nisi iniquum postulo, arbitratu meo. Si enim sapiens aliquis miser esse possit, ne ego istam gloriosam memorabilemque virtutem non magno aestimandam putem. Etsi ea quidem, quae adhuc dixisti, quamvis ad aetatem recte isto modo dicerentur. Proclivi currit oratio. Transfer idem ad modestiam vel temperantiam, quae est moderatio cupiditatum rationi oboediens. Sed haec quidem liberius ab eo dicuntur et saepius. Quid loquor de nobis, qui ad laudem et ad decus nati, suscepti, instituti sumus? Expressa vero in iis aetatibus, quae iam confirmatae sunt. </p>\n<p>Oratio me istius philosophi non offendit; At hoc in eo M. An eiusdem modi? Mene ergo et Triarium dignos existimas, apud quos turpiter loquare? Vitiosum est enim in dividendo partem in genere numerare. In eo enim positum est id, quod dicimus esse expetendum. Quod si ita sit, cur opera philosophiae sit danda nescio. Expectoque quid ad id, quod quaerebam, respondeas. Etsi ea quidem, quae adhuc dixisti, quamvis ad aetatem recte isto modo dicerentur. </p>\n','Post 3','','publish','open','open','','post-3','','','2024-08-23 19:23:32','2024-08-23 19:23:32','',0,'http://localhost:8000/post-3/',0,'post','',0),
(16,1,'2024-08-23 19:23:32','2024-08-23 19:23:32','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et homini, qui ceteris animantibus plurimum praestat, praecipue a natura nihil datum esse dicemus? Utram tandem linguam nescio? Quem si tenueris, non modo meum Ciceronem, sed etiam me ipsum abducas licebit. Teneo, inquit, finem illi videri nihil dolere. Quodsi, ne quo incommodo afficiare, non relinques amicum, tamen, ne sine fructu alligatus sis, ut moriatur optabis. Bork Id est enim, de quo quaerimus. </p>\n<p>Duo Reges: constructio interrete. Sic, et quidem diligentius saepiusque ista loquemur inter nos agemusque communiter. Fatebuntur Stoici haec omnia dicta esse praeclare, neque eam causam Zenoni desciscendi fuisse. Haec et tu ita posuisti, et verba vestra sunt. Nisi autem rerum natura perspecta erit, nullo modo poterimus sensuum iudicia defendere. Qui autem de summo bono dissentit de tota philosophiae ratione dissentit. </p>\n','Post 1','','publish','open','open','','post-1','','','2024-08-23 19:23:32','2024-08-23 19:23:32','',0,'http://localhost:8000/post-1/',0,'post','',0),
(17,1,'2024-08-23 19:23:32','2024-08-23 19:23:32','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ergo hoc quidem apparet, nos ad agendum esse natos. An vero displicuit ea, quae tributa est animi virtutibus tanta praestantia? Nec vero alia sunt quaerenda contra Carneadeam illam sententiam. Atque his de rebus et splendida est eorum et illustris oratio. </p>\n','Post 4','','publish','open','open','','post-4','','','2024-08-23 19:23:32','2024-08-23 19:23:32','',0,'http://localhost:8000/post-4/',0,'post','',0),
(18,1,'2024-08-23 19:23:32','2024-08-23 19:23:32','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ea possunt paria non esse. Itaque primos congressus copulationesque et consuetudinum instituendarum voluntates fieri propter voluptatem; Collatio igitur ista te nihil iuvat. Cupit enim dícere nihil posse ad beatam vitam deesse sapienti. An hoc usque quaque, aliter in vita? Duo Reges: constructio interrete. A villa enim, credo, et: Si ibi te esse scissem, ad te ipse venissem. Cuius similitudine perspecta in formarum specie ac dignitate transitum est ad honestatem dictorum atque factorum. Beatus autem esse in maximarum rerum timore nemo potest. Quae hic rei publicae vulnera inponebat, eadem ille sanabat. Quis est enim, in quo sit cupiditas, quin recte cupidus dici possit? </p>\n<p>Ut in geometria, prima si dederis, danda sunt omnia. Quicquid enim a sapientia proficiscitur, id continuo debet expletum esse omnibus suis partibus; Certe non potest. Quae si potest singula consolando levare, universa quo modo sustinebit? Claudii libidini, qui tum erat summo ne imperio, dederetur. Tum ille: Tu autem cum ipse tantum librorum habeas, quos hic tandem requiris? Quis, quaeso, illum negat et bonum virum et comem et humanum fuisse? Ego quoque, inquit, didicerim libentius si quid attuleris, quam te reprehenderim. An quod ita callida est, ut optime possit architectari voluptates? Modo etiam paulum ad dexteram de via declinavi, ut ad Pericli sepulcrum accederem. </p>\n<p>Tum Piso: Quoniam igitur aliquid omnes, quid Lucius noster? Fortasse id optimum, sed ubi illud: Plus semper voluptatis? Si autem id non concedatur, non continuo vita beata tollitur. At Zeno eum non beatum modo, sed etiam divitem dicere ausus est. Illis videtur, qui illud non dubitant bonum dicere -; Cur igitur, inquam, res tam dissimiles eodem nomine appellas? Haec quo modo conveniant, non sane intellego. Vitiosum est enim in dividendo partem in genere numerare. </p>\n<p>Pudebit te, inquam, illius tabulae, quam Cleanthes sane commode verbis depingere solebat. Ergo ita: non posse honeste vivi, nisi honeste vivatur? Respondent extrema primis, media utrisque, omnia omnibus. Quae in controversiam veniunt, de iis, si placet, disseramus. Non est igitur summum malum dolor. Habent enim et bene longam et satis litigiosam disputationem. Illa videamus, quae a te de amicitia dicta sunt. In qua quid est boni praeter summam voluptatem, et eam sempiternam? </p>\n<p>Causa autem fuit huc veniendi ut quosdam hinc libros promerem. Indicant pueri, in quibus ut in speculis natura cernitur. Sed ad haec, nisi molestum est, habeo quae velim. Pudebit te, inquam, illius tabulae, quam Cleanthes sane commode verbis depingere solebat. Sed utrum hortandus es nobis, Luci, inquit, an etiam tua sponte propensus es? Ex ea difficultate illae fallaciloquae, ut ait Accius, malitiae natae sunt. Verum tamen cum de rebus grandioribus dicas, ipsae res verba rapiunt; Illa sunt similia: hebes acies est cuipiam oculorum, corpore alius senescit; </p>\n<p>Quid turpius quam sapientis vitam ex insipientium sermone pendere? Atque hoc loco similitudines eas, quibus illi uti solent, dissimillimas proferebas. Hoc est non modo cor non habere, sed ne palatum quidem. Non igitur de improbo, sed de callido improbo quaerimus, qualis Q. Quod si ita se habeat, non possit beatam praestare vitam sapientia. Materiam vero rerum et copiam apud hos exilem, apud illos uberrimam reperiemus. </p>\n<p>Et quidem, Cato, hanc totam copiam iam Lucullo nostro notam esse oportebit; Sit hoc ultimum bonorum, quod nunc a me defenditur; Qui enim voluptatem ipsam contemnunt, iis licet dicere se acupenserem maenae non anteponere. Nihil acciderat ei, quod nollet, nisi quod anulum, quo delectabatur, in mari abiecerat. Quae sequuntur igitur? Nos vero, inquit ille; </p>\n<p>Quando enim Socrates, qui parens philosophiae iure dici potest, quicquam tale fecit? Ita redarguitur ipse a sese, convincunturque scripta eius probitate ipsius ac moribus. Nam adhuc, meo fortasse vitio, quid ego quaeram non perspicis. Nonne videmus quanta perturbatio rerum omnium consequatur, quanta confusio? Quonam modo? Nihil enim iam habes, quod ad corpus referas; Mihi enim satis est, ipsis non satis. Non quam nostram quidem, inquit Pomponius iocans; Quid est igitur, cur ita semper deum appellet Epicurus beatum et aeternum? Bork </p>\n','Post 8','','publish','open','open','','post-8','','','2024-08-23 19:23:32','2024-08-23 19:23:32','',0,'http://localhost:8000/post-8/',0,'post','',0),
(19,1,'2024-08-23 19:23:32','2024-08-23 19:23:32','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quibusnam praeteritis? Quem Tiberina descensio festo illo die tanto gaudio affecit, quanto L. Isto modo, ne si avia quidem eius nata non esset. Est autem officium, quod ita factum est, ut eius facti probabilis ratio reddi possit. Duo Reges: constructio interrete. </p>\n<p>Numquam facies. A primo, ut opinor, animantium ortu petitur origo summi boni. Qui autem esse poteris, nisi te amor ipse ceperit? Verum audiamus. Ut in voluptate sit, qui epuletur, in dolore, qui torqueatur. Audax negotium, dicerem impudens, nisi hoc institutum postea translatum ad philosophos nostros esset. An eum discere ea mavis, quae cum plane perdidiceriti nihil sciat? Conclusum est enim contra Cyrenaicos satis acute, nihil ad Epicurum. Etenim semper illud extra est, quod arte comprehenditur. Magno hic ingenio, sed res se tamen sic habet, ut nimis imperiosi philosophi sit vetare meminisse. </p>\n<p>A mene tu? Si qua in iis corrigere voluit, deteriora fecit. </p>\n<p>Mihi vero, inquit, placet agi subtilius et, ut ipse dixisti, pressius. Bonum negas esse divitias, praeposìtum esse dicis? Consequens enim est et post oritur, ut dixi. Sed quid sentiat, non videtis. Sed tamen enitar et, si minus multa mihi occurrent, non fugiam ista popularia. Expectoque quid ad id, quod quaerebam, respondeas. Zenonis est, inquam, hoc Stoici. Tum Triarius: Posthac quidem, inquit, audacius. </p>\n<p>Quid in isto egregio tuo officio et tanta fide-sic enim existimo-ad corpus refers? Hoc loco discipulos quaerere videtur, ut, qui asoti esse velint, philosophi ante fiant. Illud dico, ea, quae dicat, praeclare inter se cohaerere. Quae duo sunt, unum facit. Quarum ambarum rerum cum medicinam pollicetur, luxuriae licentiam pollicetur. Quis istum dolorem timet? </p>\n<p>Restinguet citius, si ardentem acceperit. Dic in quovis conventu te omnia facere, ne doleas. Haec para/doca illi, nos admirabilia dicamus. Ne amores quidem sanctos a sapiente alienos esse arbitrantur. Scaevola tribunus plebis ferret ad plebem vellentne de ea re quaeri. Sed tamen est aliquid, quod nobis non liceat, liceat illis. Quae in controversiam veniunt, de iis, si placet, disseramus. </p>\n<p>Prodest, inquit, mihi eo esse animo. Videamus igitur sententias eorum, tum ad verba redeamus. Quia dolori non voluptas contraria est, sed doloris privatio. Dolere malum est: in crucem qui agitur, beatus esse non potest. Quamquam non negatis nos intellegere quid sit voluptas, sed quid ille dicat. Dulce amarum, leve asperum, prope longe, stare movere, quadratum rotundum. Etsi qui potest intellegi aut cogitari esse aliquod animal, quod se oderit? Non enim ipsa genuit hominem, sed accepit a natura inchoatum. </p>\n','Post 9','','publish','open','open','','post-9','','','2024-08-23 19:23:32','2024-08-23 19:23:32','',0,'http://localhost:8000/post-9/',0,'post','',0),
(20,0,'2024-08-23 19:23:34','2024-08-23 19:23:34','','woo_product-0','','inherit','open','closed','','woo_product-0','','','2024-08-23 19:23:58','2024-08-23 19:23:58','',0,'http://localhost:8000/wp-content/uploads/2024/08/woo_product-0.jpeg',0,'attachment','image/jpeg',0),
(21,0,'2024-08-23 19:23:36','2024-08-23 19:23:36','','woo_product-1','','inherit','open','closed','','woo_product-1','','','2024-08-23 19:23:58','2024-08-23 19:23:58','',0,'http://localhost:8000/wp-content/uploads/2024/08/woo_product-1.jpeg',0,'attachment','image/jpeg',0),
(22,0,'2024-08-23 19:23:38','2024-08-23 19:23:38','','woo_product-2','','inherit','open','closed','','woo_product-2','','','2024-08-23 19:23:58','2024-08-23 19:23:58','',0,'http://localhost:8000/wp-content/uploads/2024/08/woo_product-2.jpeg',0,'attachment','image/jpeg',0),
(23,0,'2024-08-23 19:23:40','2024-08-23 19:23:40','','woo_product-3','','inherit','open','closed','','woo_product-3','','','2024-08-23 19:23:58','2024-08-23 19:23:58','',0,'http://localhost:8000/wp-content/uploads/2024/08/woo_product-3.jpeg',0,'attachment','image/jpeg',0),
(24,0,'2024-08-23 19:23:42','2024-08-23 19:23:42','','woo_product-4','','inherit','open','closed','','woo_product-4','','','2024-08-23 19:23:58','2024-08-23 19:23:58','',0,'http://localhost:8000/wp-content/uploads/2024/08/woo_product-4.jpeg',0,'attachment','image/jpeg',0),
(25,0,'2024-08-23 19:23:45','2024-08-23 19:23:45','','woo_product-5','','inherit','open','closed','','woo_product-5','','','2024-08-23 19:23:45','2024-08-23 19:23:45','',0,'http://localhost:8000/wp-content/uploads/2024/08/woo_product-5.jpeg',0,'attachment','image/jpeg',0),
(26,0,'2024-08-23 19:23:47','2024-08-23 19:23:47','','woo_product-6','','inherit','open','closed','','woo_product-6','','','2024-08-23 19:23:47','2024-08-23 19:23:47','',0,'http://localhost:8000/wp-content/uploads/2024/08/woo_product-6.jpeg',0,'attachment','image/jpeg',0),
(27,0,'2024-08-23 19:23:49','2024-08-23 19:23:49','','woo_product-7','','inherit','open','closed','','woo_product-7','','','2024-08-23 19:23:49','2024-08-23 19:23:49','',0,'http://localhost:8000/wp-content/uploads/2024/08/woo_product-7.jpeg',0,'attachment','image/jpeg',0),
(28,0,'2024-08-23 19:23:51','2024-08-23 19:23:51','','woo_product-8','','inherit','open','closed','','woo_product-8','','','2024-08-23 19:23:51','2024-08-23 19:23:51','',0,'http://localhost:8000/wp-content/uploads/2024/08/woo_product-8.jpeg',0,'attachment','image/jpeg',0),
(29,0,'2024-08-23 19:23:53','2024-08-23 19:23:53','','woo_product-9','','inherit','open','closed','','woo_product-9','','','2024-08-23 19:23:53','2024-08-23 19:23:53','',0,'http://localhost:8000/wp-content/uploads/2024/08/woo_product-9.jpeg',0,'attachment','image/jpeg',0),
(30,1,'2024-08-23 19:23:55','2024-08-23 19:23:55','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maximeque eos videre possumus res gestas audire et legere velle, qui a spe gerendi absunt confecti senectute. Habent enim et bene longam et satis litigiosam disputationem. Unum est sine dolore esse, alterum cum voluptate. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. </p>','gadget 0','','publish','open','closed','','gadget-0','','','2024-08-23 19:23:55','2024-08-23 19:23:55','',0,'http://localhost:8000/product/gadget-0/',0,'product','',0),
(31,1,'2024-08-23 19:23:56','2024-08-23 19:23:56','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maximeque eos videre possumus res gestas audire et legere velle, qui a spe gerendi absunt confecti senectute. Habent enim et bene longam et satis litigiosam disputationem. Unum est sine dolore esse, alterum cum voluptate. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. </p>','gadget 4','','publish','open','closed','','gadget-4','','','2024-08-23 19:23:56','2024-08-23 19:23:56','',0,'http://localhost:8000/product/gadget-4/',0,'product','',0),
(32,1,'2024-08-23 19:23:56','2024-08-23 19:23:56','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maximeque eos videre possumus res gestas audire et legere velle, qui a spe gerendi absunt confecti senectute. Habent enim et bene longam et satis litigiosam disputationem. Unum est sine dolore esse, alterum cum voluptate. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. </p>','gadget 1','','publish','open','closed','','gadget-1','','','2024-08-23 19:23:56','2024-08-23 19:23:56','',0,'http://localhost:8000/product/gadget-1/',0,'product','',0),
(33,1,'2024-08-23 19:23:56','2024-08-23 19:23:56','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maximeque eos videre possumus res gestas audire et legere velle, qui a spe gerendi absunt confecti senectute. Habent enim et bene longam et satis litigiosam disputationem. Unum est sine dolore esse, alterum cum voluptate. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. </p>','gadget 3','','publish','open','closed','','gadget-3','','','2024-08-23 19:23:56','2024-08-23 19:23:56','',0,'http://localhost:8000/product/gadget-3/',0,'product','',0),
(34,1,'2024-08-23 19:23:56','2024-08-23 19:23:56','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maximeque eos videre possumus res gestas audire et legere velle, qui a spe gerendi absunt confecti senectute. Habent enim et bene longam et satis litigiosam disputationem. Unum est sine dolore esse, alterum cum voluptate. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. </p>','gadget 2','','publish','open','closed','','gadget-2','','','2024-08-23 19:23:56','2024-08-23 19:23:56','',0,'http://localhost:8000/product/gadget-2/',0,'product','',0),
(35,1,'2024-08-23 19:23:58','2024-08-23 19:23:58','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maximeque eos videre possumus res gestas audire et legere velle, qui a spe gerendi absunt confecti senectute. Habent enim et bene longam et satis litigiosam disputationem. Unum est sine dolore esse, alterum cum voluptate. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. </p>','gizmo 1','','publish','open','closed','','gizmo-1','','','2024-08-23 19:23:58','2024-08-23 19:23:58','',0,'http://localhost:8000/product/gizmo-1/',0,'product','',0),
(36,1,'2024-08-23 19:23:58','2024-08-23 19:23:58','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maximeque eos videre possumus res gestas audire et legere velle, qui a spe gerendi absunt confecti senectute. Habent enim et bene longam et satis litigiosam disputationem. Unum est sine dolore esse, alterum cum voluptate. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. </p>','gizmo 4','','publish','open','closed','','gizmo-4','','','2024-08-23 19:23:58','2024-08-23 19:23:58','',0,'http://localhost:8000/product/gizmo-4/',0,'product','',0),
(37,1,'2024-08-23 19:23:58','2024-08-23 19:23:58','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maximeque eos videre possumus res gestas audire et legere velle, qui a spe gerendi absunt confecti senectute. Habent enim et bene longam et satis litigiosam disputationem. Unum est sine dolore esse, alterum cum voluptate. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. </p>','gizmo 0','','publish','open','closed','','gizmo-0','','','2024-08-23 19:23:58','2024-08-23 19:23:58','',0,'http://localhost:8000/product/gizmo-0/',0,'product','',0),
(38,1,'2024-08-23 19:23:58','2024-08-23 19:23:58','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maximeque eos videre possumus res gestas audire et legere velle, qui a spe gerendi absunt confecti senectute. Habent enim et bene longam et satis litigiosam disputationem. Unum est sine dolore esse, alterum cum voluptate. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. </p>','gizmo 2','','publish','open','closed','','gizmo-2','','','2024-08-23 19:23:58','2024-08-23 19:23:58','',0,'http://localhost:8000/product/gizmo-2/',0,'product','',0),
(39,1,'2024-08-23 19:23:58','2024-08-23 19:23:58','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maximeque eos videre possumus res gestas audire et legere velle, qui a spe gerendi absunt confecti senectute. Habent enim et bene longam et satis litigiosam disputationem. Unum est sine dolore esse, alterum cum voluptate. Cum salvum esse flentes sui respondissent, rogavit essentne fusi hostes. </p>','gizmo 3','','publish','open','closed','','gizmo-3','','','2024-08-23 19:23:58','2024-08-23 19:23:58','',0,'http://localhost:8000/product/gizmo-3/',0,'product','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES
(1,1,0),
(10,1,0),
(11,1,0),
(12,1,0),
(13,1,0),
(14,1,0),
(15,1,0),
(16,1,0),
(17,1,0),
(18,1,0),
(19,1,0),
(30,2,0),
(30,16,0),
(31,2,0),
(31,16,0),
(32,2,0),
(32,16,0),
(33,2,0),
(33,16,0),
(34,2,0),
(34,16,0),
(35,2,0),
(35,17,0),
(36,2,0),
(36,17,0),
(37,2,0),
(37,17,0),
(38,2,0),
(38,17,0),
(39,2,0),
(39,17,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES
(1,1,'category','',0,11),
(2,2,'product_type','',0,10),
(3,3,'product_type','',0,0),
(4,4,'product_type','',0,0),
(5,5,'product_type','',0,0),
(6,6,'product_visibility','',0,0),
(7,7,'product_visibility','',0,0),
(8,8,'product_visibility','',0,0),
(9,9,'product_visibility','',0,0),
(10,10,'product_visibility','',0,0),
(11,11,'product_visibility','',0,0),
(12,12,'product_visibility','',0,0),
(13,13,'product_visibility','',0,0),
(14,14,'product_visibility','',0,0),
(15,15,'product_cat','',0,0),
(16,16,'product_cat','',0,5),
(17,17,'product_cat','',0,5);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES
(1,16,'display_type',''),
(2,16,'product_count_product_cat','5'),
(3,17,'display_type',''),
(4,17,'product_count_product_cat','5');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES
(1,'Uncategorized','uncategorized',0),
(2,'simple','simple',0),
(3,'grouped','grouped',0),
(4,'variable','variable',0),
(5,'external','external',0),
(6,'exclude-from-search','exclude-from-search',0),
(7,'exclude-from-catalog','exclude-from-catalog',0),
(8,'featured','featured',0),
(9,'outofstock','outofstock',0),
(10,'rated-1','rated-1',0),
(11,'rated-2','rated-2',0),
(12,'rated-3','rated-3',0),
(13,'rated-4','rated-4',0),
(14,'rated-5','rated-5',0),
(15,'Uncategorized','uncategorized',0),
(16,'gadget','gadget',0),
(17,'gizmo','gizmo',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES
(1,1,'nickname','wpeadmin'),
(2,1,'first_name',''),
(3,1,'last_name',''),
(4,1,'description',''),
(5,1,'rich_editing','true'),
(6,1,'syntax_highlighting','true'),
(7,1,'comment_shortcuts','false'),
(8,1,'admin_color','fresh'),
(9,1,'use_ssl','0'),
(10,1,'show_admin_bar_front','true'),
(11,1,'locale',''),
(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(13,1,'wp_user_level','10'),
(14,1,'dismissed_wp_pointers',''),
(15,1,'show_welcome_panel','1');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES
(1,'wpeadmin','$P$BAWMZk34Ce2r7UBubx.FW9x0Noplk1/','wpeadmin','nobody@example.com','http://localhost:8000','2024-08-23 19:22:54','',0,'wpeadmin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_note_actions`
--

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

LOCK TABLES `wp_wc_admin_note_actions` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_admin_note_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_admin_notes`
--

DROP TABLE IF EXISTS `wp_wc_admin_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_admin_notes`
--

LOCK TABLES `wp_wc_admin_notes` WRITE;
/*!40000 ALTER TABLE `wp_wc_admin_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_admin_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_category_lookup`
--

DROP TABLE IF EXISTS `wp_wc_category_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_category_lookup`
--

LOCK TABLES `wp_wc_category_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_category_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_category_lookup` VALUES
(16,16),
(17,17);
/*!40000 ALTER TABLE `wp_wc_category_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_customer_lookup`
--

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

LOCK TABLES `wp_wc_customer_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_customer_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_download_log`
--

DROP TABLE IF EXISTS `wp_wc_download_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_download_log`
--

LOCK TABLES `wp_wc_download_log` WRITE;
/*!40000 ALTER TABLE `wp_wc_download_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_download_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_coupon_lookup`
--

LOCK TABLES `wp_wc_order_coupon_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_coupon_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_product_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

LOCK TABLES `wp_wc_order_product_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_product_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_stats`
--

DROP TABLE IF EXISTS `wp_wc_order_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_stats`
--

LOCK TABLES `wp_wc_order_stats` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

LOCK TABLES `wp_wc_order_tax_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_order_tax_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_attributes_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_attributes_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_attributes_lookup`
--

LOCK TABLES `wp_wc_product_attributes_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_product_attributes_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_download_directories`
--

DROP TABLE IF EXISTS `wp_wc_product_download_directories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_download_directories`
--

LOCK TABLES `wp_wc_product_download_directories` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_download_directories` DISABLE KEYS */;
INSERT INTO `wp_wc_product_download_directories` VALUES
(1,'file:///var/www/html/wp-content/uploads/woocommerce_uploads/',1),
(2,'http://localhost:8000/wp-content/uploads/woocommerce_uploads/',1);
/*!40000 ALTER TABLE `wp_wc_product_download_directories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`),
  KEY `sku` (`sku`(50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

LOCK TABLES `wp_wc_product_meta_lookup` WRITE;
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` DISABLE KEYS */;
INSERT INTO `wp_wc_product_meta_lookup` VALUES
(30,'',0,0,21.9900,21.9900,0,NULL,'instock',0,0.00,0,'taxable',''),
(31,'',0,0,21.9900,21.9900,0,NULL,'instock',0,0.00,0,'taxable',''),
(32,'',0,0,21.9900,21.9900,0,NULL,'instock',0,0.00,0,'taxable',''),
(33,'',0,0,21.9900,21.9900,0,NULL,'instock',0,0.00,0,'taxable',''),
(34,'',0,0,21.9900,21.9900,0,NULL,'instock',0,0.00,0,'taxable',''),
(35,'',0,0,21.9900,21.9900,0,NULL,'instock',0,0.00,0,'taxable',''),
(36,'',0,0,21.9900,21.9900,0,NULL,'instock',0,0.00,0,'taxable',''),
(37,'',0,0,21.9900,21.9900,0,NULL,'instock',0,0.00,0,'taxable',''),
(38,'',0,0,21.9900,21.9900,0,NULL,'instock',0,0.00,0,'taxable',''),
(39,'',0,0,21.9900,21.9900,0,NULL,'instock',0,0.00,0,'taxable','');
/*!40000 ALTER TABLE `wp_wc_product_meta_lookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_rate_limits`
--

DROP TABLE IF EXISTS `wp_wc_rate_limits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate_limit_expiry` bigint(20) unsigned NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rate_limit_id`),
  UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_rate_limits`
--

LOCK TABLES `wp_wc_rate_limits` WRITE;
/*!40000 ALTER TABLE `wp_wc_rate_limits` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_rate_limits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_reserved_stock`
--

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_reserved_stock`
--

LOCK TABLES `wp_wc_reserved_stock` WRITE;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_reserved_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

LOCK TABLES `wp_wc_tax_rate_classes` WRITE;
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` DISABLE KEYS */;
INSERT INTO `wp_wc_tax_rate_classes` VALUES
(1,'Reduced rate','reduced-rate'),
(2,'Zero rate','zero-rate');
/*!40000 ALTER TABLE `wp_wc_tax_rate_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wc_webhooks`
--

DROP TABLE IF EXISTS `wp_wc_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wc_webhooks`
--

LOCK TABLES `wp_wc_webhooks` WRITE;
/*!40000 ALTER TABLE `wp_wc_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wc_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_api_keys`
--

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_api_keys`
--

LOCK TABLES `wp_woocommerce_api_keys` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

LOCK TABLES `wp_woocommerce_attribute_taxonomies` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_attribute_taxonomies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

LOCK TABLES `wp_woocommerce_downloadable_product_permissions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_downloadable_product_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_log`
--

DROP TABLE IF EXISTS `wp_woocommerce_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_log`
--

LOCK TABLES `wp_woocommerce_log` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

LOCK TABLES `wp_woocommerce_order_itemmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_itemmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_order_items`
--

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

LOCK TABLES `wp_woocommerce_order_items` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokenmeta`
--

LOCK TABLES `wp_woocommerce_payment_tokenmeta` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokenmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_payment_tokens`
--

LOCK TABLES `wp_woocommerce_payment_tokens` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_payment_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_sessions`
--

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

LOCK TABLES `wp_woocommerce_sessions` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_sessions` DISABLE KEYS */;
INSERT INTO `wp_woocommerce_sessions` VALUES
(1,'1','a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:761:\"a:28:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:18:\"nobody@example.com\";s:7:\"address\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:4:\"city\";s:0:\"\";s:5:\"state\";s:2:\"TX\";s:8:\"postcode\";s:0:\"\";s:7:\"country\";s:2:\"US\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:14:\"shipping_state\";s:2:\"TX\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:9:\"meta_data\";a:0:{}}\";}',1724613805);
/*!40000 ALTER TABLE `wp_woocommerce_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `zone_id` (`zone_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

LOCK TABLES `wp_woocommerce_shipping_zone_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

LOCK TABLES `wp_woocommerce_shipping_zone_methods` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zone_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

LOCK TABLES `wp_woocommerce_shipping_zones` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_shipping_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rate_locations`
--

LOCK TABLES `wp_woocommerce_tax_rate_locations` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rate_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

LOCK TABLES `wp_woocommerce_tax_rates` WRITE;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_woocommerce_tax_rates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-23 19:24:19
