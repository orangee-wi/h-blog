-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: o_blog
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `about_info`
--

DROP TABLE IF EXISTS `about_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_info` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '关于页id',
  `file_name` varchar(64) NOT NULL DEFAULT '' COMMENT '关于页文件名',
  `file_path` varchar(255) NOT NULL DEFAULT '' COMMENT '关于页文件路径',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_info`
--

LOCK TABLES `about_info` WRITE;
/*!40000 ALTER TABLE `about_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `about_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_info`
--

DROP TABLE IF EXISTS `admin_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_info` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '后台用户id',
  `account` varchar(20) NOT NULL DEFAULT '' COMMENT '后台用户账号',
  `password` varchar(36) NOT NULL DEFAULT '' COMMENT '后台用户密码',
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '后台用户昵称',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '后台用户头像',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '后台用户电子邮箱',
  `introduction` varchar(255) NOT NULL DEFAULT '' COMMENT '后台用户个人介绍',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_info`
--

LOCK TABLES `admin_info` WRITE;
/*!40000 ALTER TABLE `admin_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_archive`
--

DROP TABLE IF EXISTS `article_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_archive` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '归档id',
  `year` char(4) NOT NULL DEFAULT '' COMMENT '归档年份',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_year` (`year`) USING BTREE COMMENT 'year字段唯一BTREE索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_archive`
--

LOCK TABLES `article_archive` WRITE;
/*!40000 ALTER TABLE `article_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_category` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章分类id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '文章分类名',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`(18)) USING BTREE COMMENT 'name字段唯一BTREE索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_category`
--

LOCK TABLES `article_category` WRITE;
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_comment`
--

DROP TABLE IF EXISTS `article_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_comment` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `article_info_id` bigint(32) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `detail` varchar(255) NOT NULL DEFAULT '' COMMENT '评论详情',
  `is_shield` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '评论是否屏蔽',
  `commenter_name` varchar(20) NOT NULL DEFAULT '' COMMENT '评论者名称',
  `commenter_email` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者电子邮箱',
  `commenter_website` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者网站（个人主页）',
  `commenter_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者头像',
  `comment_date` int(13) unsigned NOT NULL DEFAULT '0' COMMENT '评论日期',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_article_info_id` (`article_info_id`) COMMENT 'article_info_id字段普通HASH索引',
  KEY `idx_comment_date` (`comment_date`) USING BTREE COMMENT 'comment_date字段普通BTREE索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_comment`
--

LOCK TABLES `article_comment` WRITE;
/*!40000 ALTER TABLE `article_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_comment_reply`
--

DROP TABLE IF EXISTS `article_comment_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_comment_reply` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论回复id',
  `article_comment_id` bigint(32) unsigned NOT NULL DEFAULT '0' COMMENT '评论id',
  `detail` varchar(255) NOT NULL DEFAULT '' COMMENT '评论回复详情',
  `is_shield` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '评论回复是否屏蔽',
  `type` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '评论回复类型；默认-1，0为回复评论，1为回复回复',
  `target_id` bigint(32) unsigned NOT NULL DEFAULT '0' COMMENT '评论目标id；type为0，目标id为comment_base_id，type为1，目标id为comment_reply_id',
  `commenter_name` varchar(20) NOT NULL DEFAULT '' COMMENT '评论被回复者名称',
  `replier_name` varchar(20) NOT NULL DEFAULT '' COMMENT '评论回复者名称',
  `replier_email` varchar(50) NOT NULL DEFAULT '' COMMENT '评论回复者电子邮箱',
  `replier_website` varchar(255) NOT NULL DEFAULT '' COMMENT '评论回复者网站（个人主页）',
  `replier_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '评论回复者头像',
  `reply_date` int(13) unsigned NOT NULL DEFAULT '0' COMMENT '评论回复日期',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_article_comment_id` (`article_comment_id`) COMMENT 'article_comment_id字段普通HASH索引',
  KEY `idx_reply_date` (`reply_date`) USING BTREE COMMENT 'reply_date字段普通BTREE索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_comment_reply`
--

LOCK TABLES `article_comment_reply` WRITE;
/*!40000 ALTER TABLE `article_comment_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_comment_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_content`
--

DROP TABLE IF EXISTS `article_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_content` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章内容id',
  `article_info_id` bigint(32) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `detail` text NOT NULL COMMENT '文章内容详情',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_article_info_id` (`article_info_id`) COMMENT 'article_info_id字段唯一HASH索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_content`
--

LOCK TABLES `article_content` WRITE;
/*!40000 ALTER TABLE `article_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_info`
--

DROP TABLE IF EXISTS `article_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_info` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '自增id（非业务主键）',
  `uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '文章id（业务主键UUID）',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '文章标题',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '文章作者名',
  `summary` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '文章概要',
  `picture` varchar(255) NOT NULL DEFAULT '' COMMENT '文章关联图（用于首页展示）',
  `like_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文章点赞量',
  `read_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文章阅读量',
  `comment_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文章评论量',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章是否置顶',
  `is_published` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章是否发布',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章是否热门',
  `article_archive_uuid` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '文章归档id',
  `gmt_publish` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '文章发布时间；is_published为0时，gmt_publish为gmt_create，is_published为1时，gmt_publish为文章发布时间',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否逻辑删除',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `uk_id` (`id`) USING BTREE COMMENT 'id字段唯一BTREE索引，用于自增',
  UNIQUE KEY `uk_title` (`title`(20)) USING BTREE COMMENT 'title字段唯一BTREE索引',
  KEY `idx_article_archive_uuid` (`article_archive_uuid`) USING BTREE COMMENT 'article_archive_uuid字段普通BTREE索引'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_info`
--

LOCK TABLES `article_info` WRITE;
/*!40000 ALTER TABLE `article_info` DISABLE KEYS */;
INSERT INTO `article_info` VALUES (1,'1','测试文章标题','orangee','用于测试','',0,0,0,0,0,0,'0','2019-09-19 21:27:27','2019-09-19 21:27:27','2019-10-02 20:39:10',0),(3,'93fcbc9b7bb94418b363f8c442786cde','测试文章标题2','orangee','用于测试2','',0,0,0,0,0,0,'','2019-10-08 23:15:25','2019-10-08 23:15:25','2019-10-08 23:15:25',0);
/*!40000 ALTER TABLE `article_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_label`
--

DROP TABLE IF EXISTS `article_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_label` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章标签id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '文章标签名',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`(18)) USING BTREE COMMENT 'name字段唯一BTREE索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_label`
--

LOCK TABLES `article_label` WRITE;
/*!40000 ALTER TABLE `article_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_info`
--

DROP TABLE IF EXISTS `link_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_info` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接URL',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_info`
--

LOCK TABLES `link_info` WRITE;
/*!40000 ALTER TABLE `link_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_info`
--

DROP TABLE IF EXISTS `menu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_info` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_info`
--

LOCK TABLES `menu_info` WRITE;
/*!40000 ALTER TABLE `menu_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_info`
--

DROP TABLE IF EXISTS `message_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_info` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `detail` varchar(255) NOT NULL DEFAULT '' COMMENT '留言详情',
  `is_shield` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '留言是否屏蔽',
  `messager_name` varchar(20) NOT NULL DEFAULT '' COMMENT '留言者名称',
  `messager_email` varchar(50) NOT NULL DEFAULT '' COMMENT '留言者电子邮箱',
  `messager_website` varchar(255) NOT NULL DEFAULT '' COMMENT '留言者网站（个人主页）',
  `messager_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '留言者头像',
  `message_date` int(13) unsigned NOT NULL DEFAULT '0' COMMENT '留言日期',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_message_date` (`message_date`) USING BTREE COMMENT 'message_date字段普通BTREE索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_info`
--

LOCK TABLES `message_info` WRITE;
/*!40000 ALTER TABLE `message_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_reply`
--

DROP TABLE IF EXISTS `message_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message_reply` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言回复id',
  `message_info_id` bigint(32) unsigned NOT NULL DEFAULT '0' COMMENT '留言id',
  `detail` varchar(255) NOT NULL DEFAULT '' COMMENT '留言回复详情',
  `is_shield` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '留言回复是否屏蔽',
  `type` tinyint(2) NOT NULL DEFAULT '-1' COMMENT '留言回复类型；默认为-1，0为回复留言，1为回复回复',
  `target_id` bigint(32) unsigned NOT NULL DEFAULT '0' COMMENT '评论目标id；type为0，目标id为message_base_id，type为1，目标id为message_reply_id',
  `messager_name` varchar(20) NOT NULL DEFAULT '' COMMENT '留言被回复者名称',
  `replier_name` varchar(20) NOT NULL DEFAULT '' COMMENT '留言回复者名称',
  `replier_email` varchar(50) NOT NULL DEFAULT '' COMMENT '留言回复者电子邮箱',
  `replier_website` varchar(255) NOT NULL DEFAULT '' COMMENT '留言回复者网站（个人主页）',
  `replier_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '留言回复者头像',
  `reply_date` int(13) unsigned NOT NULL DEFAULT '0' COMMENT '留言回复日期',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_message_info_id` (`message_info_id`) COMMENT 'message_info_id字段普通HASH索引',
  KEY `idx_reply_date` (`reply_date`) USING BTREE COMMENT 'reply_date字段普通BTREE索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_reply`
--

LOCK TABLES `message_reply` WRITE;
/*!40000 ALTER TABLE `message_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mid_article_info_article__category`
--

DROP TABLE IF EXISTS `mid_article_info_article__category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mid_article_info_article__category` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章与分类关系表id',
  `article_info_id` bigint(32) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `article_category_id` bigint(32) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类id',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_article_info_id` (`article_info_id`) USING BTREE COMMENT 'article_info_id字段普通BTREE索引',
  KEY `idx_article_category_id` (`article_category_id`) USING BTREE COMMENT 'article_category_id字段普BTREE通索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mid_article_info_article__category`
--

LOCK TABLES `mid_article_info_article__category` WRITE;
/*!40000 ALTER TABLE `mid_article_info_article__category` DISABLE KEYS */;
/*!40000 ALTER TABLE `mid_article_info_article__category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mid_article_info_article_label`
--

DROP TABLE IF EXISTS `mid_article_info_article_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mid_article_info_article_label` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章与标签关系表id',
  `article_info_id` bigint(32) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `article_label_id` bigint(32) unsigned NOT NULL DEFAULT '0' COMMENT '文章标签id',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_article_info_id` (`article_info_id`) USING BTREE COMMENT 'article_info_id字段普通BTREE索引',
  KEY `idx_article_label_id` (`article_label_id`) USING BTREE COMMENT 'article_label_id字段普通BTREE索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mid_article_info_article_label`
--

LOCK TABLES `mid_article_info_article_label` WRITE;
/*!40000 ALTER TABLE `mid_article_info_article_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `mid_article_info_article_label` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_info`
--

DROP TABLE IF EXISTS `notice_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_info` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '公告id',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '公告标题',
  `synopsis` varchar(36) NOT NULL DEFAULT '' COMMENT '公告概要',
  `detail` varchar(255) NOT NULL DEFAULT '' COMMENT '公告详情',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_info`
--

LOCK TABLES `notice_info` WRITE;
/*!40000 ALTER TABLE `notice_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics_info`
--

DROP TABLE IF EXISTS `statistics_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics_info` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '统计id',
  `page_view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'pv；页面浏览量',
  `unique_visitor` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'uv；独立访客量',
  `visit_view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'vv；访客的访问量',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_info`
--

LOCK TABLES `statistics_info` WRITE;
/*!40000 ALTER TABLE `statistics_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistics_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics_ip`
--

DROP TABLE IF EXISTS `statistics_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics_ip` (
  `id` bigint(32) unsigned NOT NULL AUTO_INCREMENT COMMENT '统计IPid',
  `ip` int(32) unsigned NOT NULL DEFAULT '0' COMMENT 'ip地址',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_ip` (`ip`) USING BTREE COMMENT 'ip字段普通BTREE索引'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_ip`
--

LOCK TABLES `statistics_ip` WRITE;
/*!40000 ALTER TABLE `statistics_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistics_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'o_blog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-09 22:41:47
