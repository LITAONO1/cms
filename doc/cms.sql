-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 192.168.1.110    Database: cms
-- ------------------------------------------------------
-- Server version	5.7.12-0ubuntu1.1

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL COMMENT '栏目的id',
  `name` varchar(255) DEFAULT NULL COMMENT '文章名称',
  `summary` text COMMENT '文章摘要',
  `content` text COMMENT '文章内容',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '文章创建时间',
  `create_user_id` int(11) DEFAULT NULL COMMENT '文章创建人id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:13',1),(2,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:14',1),(3,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:15',1),(4,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:15',1),(5,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:16',1),(6,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:19',1),(7,3,'java开发工具','java开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','java开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:19',1),(8,3,'java开发工具','java开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','java开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:21',1),(9,3,'java开发工具','java开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','java开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:21',1),(10,3,'java开发工具','java开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','java开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:22',1),(11,3,'java开发工具','java开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','java开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 03:57:24',1),(12,6,NULL,NULL,'单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试','2016-10-22 10:12:14',1),(13,5,NULL,NULL,'单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试单页面测试','2016-10-22 11:05:05',1),(14,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 13:09:24',1),(15,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 13:09:46',1),(16,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 13:10:07',1),(17,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 13:10:41',1),(18,2,'android开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','android开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具开发工具','2016-10-22 13:11:11',1);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '栏目名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '栏目的图标',
  `url` varchar(255) DEFAULT NULL COMMENT '栏目的链接',
  `is_show` int(11) DEFAULT '0' COMMENT '是否显示在导航栏，0：显示，1：不显示',
  `parent_id` int(11) DEFAULT '0' COMMENT '上级栏目',
  `location` int(11) DEFAULT NULL COMMENT '排序，升序排列',
  `is_index` int(11) DEFAULT '0' COMMENT '是否在首页上显示',
  `type` int(11) DEFAULT NULL COMMENT '新闻类型，0：普通新闻，有标题、摘要、内容，1：单页面新闻，只有内容',
  `code` varchar(255) DEFAULT NULL COMMENT '栏目编码，唯一性',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='前台标题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'首页','fa fa-home','/blog/index',0,0,1,1,0,'index'),(2,'android','fa fa-android','/blog/android?page=1&pageSize=10',0,0,2,0,0,'android'),(3,'java','fa fa-coffee','/blog/java?page=1&pageSize=10',0,0,3,0,0,'java'),(4,'项目','md md-invert-colors-on','/blog/project',1,0,4,1,0,'project'),(5,'书籍','fa fa-book','/blog/book',0,0,5,1,1,'book'),(6,'关于狂魔','fa fa-user','/blog/about',0,0,6,1,1,'about');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'123','123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-24  6:55:26
