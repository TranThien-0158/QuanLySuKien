-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: springbootdb
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (2,'hot-girl-tra-sua-dep-nhu-nang-mai-tai-da-lat-hinh-5.jpg','20/09/1995','tranquocthien.spkt@gmail.com','Trần Quốc Thiện','thien2009','01658890216',1,0,1,1),(4,'chibi-naruto-de-thuong-3.png','22/12/2016','phamduykhanh@gmail.com','Phạm Duy Khánh','thien2009','123456789',1,0,4,0),(5,'render_chibi_iruka_by_marcinha20-d5un501.png','18/12/2016','nghianguyen@gmail.com','Nguyễn Trọng Nghĩa','thien2009','141414141414',0,0,2,0),(6,'image-17.png','01/12/2016','doanvanthanhphong@gmail.com','Đoàn Văn Thanh Phong','thien2009','0198198498',0,0,3,0),(8,'image-17.png','28/12/2016','nguyenthanhan@gmail.com','Nguyễn Thanh An','thien2009','74747474747',0,0,0,0),(9,'hot-girl-tra-sua-dep-nhu-nang-mai-tai-da-lat-hinh-5.jpg','13/12/2016','hodanghuutrong@gmail.com','Hồ Đặng Hữu Trọng','thien2009','1511616262',0,0,2,0),(10,'image-17.png','27/12/2016','nguyenquoccuong@gmail.com','Nguyễn Quốc Cường','then2009','111515525252',0,0,0,0),(11,'chibi_itachi_uchiha_by_marcinha20-dajb8gt.png','1995/1/1','dangmaidinh@gmail.com','Đặng Mai Đình','thien2009','0101491048140',0,0,0,0),(12,'hot-girl-tra-sua-dep-nhu-nang-mai-tai-da-lat-hinh-5.jpg','2004-12-08','tranvominhthu@gmail.com','Trần Võ Minh Thư','thien2009`','',0,0,0,0),(13,'render_chibi_naruto_by_marcinha20-d4f03gm.png','2016-12-21','trankhainy@gmail.com','Trần Khải Ny','thien2009','4444113131313',0,0,0,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attend`
--

DROP TABLE IF EXISTS `attend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnqw9nb6nqsufj2uyfh95d8war` (`user_id`),
  KEY `FK1cdrch7g1wqkhxitbvi5vbrh7` (`event_id`),
  CONSTRAINT `FK1cdrch7g1wqkhxitbvi5vbrh7` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  CONSTRAINT `FKnqw9nb6nqsufj2uyfh95d8war` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attend`
--

LOCK TABLES `attend` WRITE;
/*!40000 ALTER TABLE `attend` DISABLE KEYS */;
INSERT INTO `attend` VALUES (1,2,4),(2,4,5),(3,13,5),(4,10,4),(5,6,5);
/*!40000 ALTER TABLE `attend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn84216vj612qs1eg5goe6n2lj` (`user_id`),
  KEY `FKhr48nopy5aorw0ta1ii704tpu` (`event_id`),
  CONSTRAINT `FKhr48nopy5aorw0ta1ii704tpu` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  CONSTRAINT `FKn84216vj612qs1eg5goe6n2lj` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Bài viết hay','2016-12-23 03:43:00',2,4),(2,'Bài viết hay','2016-12-23 03:54:44',2,4),(3,'Bài viết hay','2016-12-23 03:55:02',2,11),(4,'Bài viết hay','2016-12-23 04:35:03',2,4),(5,'Bài viết hay','2016-12-23 04:15:36',4,7),(6,'Bài viết hay','2016-12-23 04:35:33',2,9),(7,'Bài viết hay','2016-12-23 04:44:29',6,7),(8,'test cái nữa nữa','2016-12-23 04:35:52',2,9),(9,'Bài viết hay','2016-12-23 04:36:30',2,9),(10,'Bài viết hay','2016-12-23 04:48:43',6,7),(11,'Bài viết hay','2016-12-23 04:49:47',6,5),(12,'Bài viết hay','2016-12-23 04:51:54',6,9),(13,'Bài viết hay','2016-12-23 04:53:25',6,9),(14,'Bài viết hay','2016-12-23 04:53:45',6,9),(15,'Bài viết hay','2016-12-23 04:54:16',6,4),(16,'Bài viết hay','2016-12-23 04:55:09',6,4),(17,'Bài viết hay','2016-12-23 04:56:31',6,4),(18,'Bài viết hay','2016-12-23 04:57:05',6,4),(19,'Bài viết hay','2016-12-23 06:46:00',2,3),(20,'Bài viết hay','2016-12-23 06:46:12',2,3),(21,'ok nhé','2016-12-23 09:05:04',2,5),(22,'Bài viết hay','2016-12-23 10:14:51',2,8),(23,'Bài viết hay','2016-12-23 10:15:04',2,8),(24,'Bài viết hay','2016-12-23 10:53:24',2,5);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `content` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `important` bit(1) NOT NULL,
  `starttime` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `view` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `place_id` bigint(20) DEFAULT NULL,
  `topic_id` bigint(20) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKaqoe3k794mwtkyvd63er0bvgj` (`user_id`),
  KEY `FKpuvix4lexrakgdlt8si1tbtxv` (`place_id`),
  KEY `FK78vup9pq274v8hb1iljtrcbqn` (`topic_id`),
  CONSTRAINT `FK78vup9pq274v8hb1iljtrcbqn` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`),
  CONSTRAINT `FKaqoe3k794mwtkyvd63er0bvgj` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`),
  CONSTRAINT `FKpuvix4lexrakgdlt8si1tbtxv` FOREIGN KEY (`place_id`) REFERENCES `place` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (3,'Tiếp sức mùa thi',NULL,'Facebook-Event-Banner-Image8_26-04.png','<p>Tiếp sức mùa thi<br></p>','2016-12-19 07:57:11','','','2016-12-20 19:07:36','Tiếp sức mùa thi',0,2,1,5,'2016-12-21 02:07:36'),(4,'Quảng Ngãi',NULL,'banner1.png','<p class=\"MsoNormal\" style=\"margin: 12pt 0in; padding: 0px; color: rgb(73, 74, 74); font-family: Arial; font-size: 12px; text-align: justify;\"><b style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 10pt; font-family: Arial, sans-serif; color: rgb(64, 64, 64); line-height: 20px;\">Đa dạng các hoạt động tình nguyện<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; padding: 0px; color: rgb(73, 74, 74); font-family: Arial; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: 10pt; font-family: Arial, sans-serif; color: rgb(64, 64, 64); line-height: 20px;\">Trong năm học vừa qua, Đoàn thanh niên - Hội sinh viên Nhà trường đã chú trọng đa dạng các hoạt động tình nguyện như: đẩy mạnh các hoạt động tình nguyện tại chỗ, gắn hoạt động tình nguyện với đặc thù chuyên môn của các đơn vị, phát triển các hoạt động tình nguyện tại các Liên chi Đoàn, Liên chi Hội, nhằm thu hút và phát huy tối đa năng lực của đoàn viên sinh viên.<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; padding: 0px; color: rgb(73, 74, 74); font-family: Arial; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: 10pt; font-family: Arial, sans-serif; color: rgb(64, 64, 64); line-height: 20px;\">Hoạt động tình nguyện tại chỗ đã trở thành điểm hẹn quen thuộc của sinh viên toàn trường. Với sự ra đời của đội thanh niên vận động hiến máu nhân văn, hoạt động hiến máu nhân đạo \"Nắng hồng nhân văn\" đã trở thành ngày hội của đoàn viên, sinh viên toàn trường.<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; padding: 0px; color: rgb(73, 74, 74); font-family: Arial; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: 10pt; font-family: Arial, sans-serif; color: rgb(64, 64, 64); line-height: 20px;\">Những con số có thể kể đến của các hoạt động tình nguyện tại chỗ như: ngày hội nắng hồng nhân văn thu được 641 đơn vị máu; ngày hội nhân văn xanh thu hút 600 tình nguyện viên tham gia tình nguyện tại chỗ với các hoạt động như vệ sinh phòng máy tính, vệ sinh giảng đường, bóc băng dính bảng, và dán poster tuyên truyền vệ sinh ghế đá hàng cây... Những hoạt động này đã thể hiện được nhiều ý nghĩa thiết thực, đồng thời nâng cao ý thức giữ gìn vệ sinh môi trường, cảnh quan sư phạm trong Nhà trường.<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; padding: 0px; color: rgb(73, 74, 74); font-family: Arial; font-size: 12px; text-align: center;\"><span style=\"margin: 0px; padding: 0px; font-size: 10pt; font-family: Arial, sans-serif; color: rgb(64, 64, 64); line-height: 20px;\"><img width=\"650\" height=\"433\" alt=\"\" src=\"https://vnu.edu.vn/upload/2015/09/18423/image/Trao%20qua.jpg\" style=\"margin: 0px; padding: 0px;\"></span></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; padding: 0px; color: rgb(73, 74, 74); font-family: Arial; font-size: 12px; text-align: center;\"><em style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; font-size: 10pt; font-family: Arial, sans-serif; color: rgb(64, 64, 64); line-height: 20px;\">Liên chi Đoàn - Liên chi Hội Khoa Tâm lý học với hoạt động tình nguyện \"Áo ấm cho em\"</span></em></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; padding: 0px; color: rgb(73, 74, 74); font-family: Arial; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: 10pt; font-family: Arial, sans-serif; color: rgb(64, 64, 64); line-height: 20px;\">Song song với các hoạt động tình nguyện tại chỗ, Đoàn thanh niên - Hội sinh viên Nhà trường đã chỉ đạo, hỗ trợ các đơn vị các hoạt động tình nguyện gắn với chuyên môn nhằm phát huy thế mạnh của đoàn viên - sinh viên.<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; padding: 0px; color: rgb(73, 74, 74); font-family: Arial; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: 10pt; font-family: Arial, sans-serif; color: rgb(64, 64, 64); line-height: 20px;\">Các hoạt động của liên chi đoàn trong năm học vừa qua trong công tác tình nguyện đến các vùng sâu vùng xa như: Liên chi Đoàn - Liên chi Hội Khoa Tâm lý học với hoạt động tình nguyện “Áo ấm cho em” tại Mù Căng Chải, Yên Bái; hay Liên chi Đoàn - Liên chi Hội khoa Thông tin Thư viện với dự án “Thư viện lưu động lên” tại Tả Vời, Lào Cai... cùng với nhiều các chuyến đi khác của tất cả các khoa trong trường đã làm nên những màu sắc của tình nguyện hết sức độc đáo của Nhân văn.<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; padding: 0px; color: rgb(73, 74, 74); font-family: Arial; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: 10pt; font-family: Arial, sans-serif; color: rgb(64, 64, 64); line-height: 20px;\">Bên cạnh đó là các hoạt động tình nguyện của các câu lạc bộ với những thương hiệu gắn với Nhà trường như: hoạt động “Đông ấm Đồng Văn”; “Tết vuông”; “Những hiệp sĩ tháng 5”; hoạt động “Hát mãi về anh”; “Hành trình ước mơ tôi”; hoạt động nụ cười Hà Giang “Mùa hè của người Dao đỏ”...Tất cả các hoạt động đều hoạt động rất hiệu quả, phát huy tối đa tinh thần tình nguyện xung kích của tuổi trẻ Nhà trường.<o:p style=\"margin: 0px; padding: 0px;\"></o:p></span></p><p class=\"MsoNormal\" style=\"margin: 12pt 0in; padding: 0px; color: rgb(73, 74, 74); font-family: Arial; font-size: 12px; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; font-size: 10pt; font-family: Arial, sans-serif; color: rgb(64, 64, 64); line-height: 20px;\">Chiến dịch mùa hè xanh 2015 đã diễn ra thành công tốt đẹp. Cụ thể, hoạt động tiếp sức mùa thi diễn ra từ ngày 28/5 đến ngày 6/8/2015, đội sinh viên tình nguyện tiếp sức mùa thi đã triển khai hoạt động trong 2 đợt thi đánh giá năng lực của ĐHQGHN và kỳ thi THPT Quốc gia với tổng số 130 tình nguyện viên trong suốt 3 đợt.</span></p>','2016-12-20 16:26:10','<p>Đoàn Trường tổ chức thực hiện sự kiện này</p>','\0','2016-12-28 04:21:04','Hoạt đông tình nguyện quảng ngãi',0,2,3,4,'2016-12-28 11:21:04'),(5,'Sân Thống Nhất',NULL,'banner2.jpg','<p class=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; color: rgb(34, 34, 34);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Sau 9 tháng bị bắt giam ở Mỹ với tội danh quan hệ tình dục bằng miệng với trẻ vị thành niên và có toan tính, cố gắng thực hiện hành vi dâm ô với trẻ em dưới 14 tuổi,&nbsp;<a title=\"Minh Béo\" class=\"link-tag\" target=\"_blank\" href=\"http://kenh14.vn/minh-beo.html\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Minh Béo</a>&nbsp;đã chính thức được mãn hạn tù vào ngày 19/2.</span></p><p class=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; color: rgb(34, 34, 34);\">Sáng<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">&nbsp;21/12, vừa về đến Việt Nam, Minh Béo nhanh chóng cập nhật trạng thái ngắn gọn trên trang cá nhân kèm theo những hình ảnh mới của mình. Anh viết: \"</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Minh Béo đã về tới Việt Nam lúc 10h30 . Cảm ơn cả nhà thời gian qua đã quan tâm hỏi thăm Minh Béo . Minh Béo xin chân thành cảm ơn . Minh béo rất khỏe và sẽ liên lạc với cả nhà sau nhé\".</span></p><p class=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; color: rgb(34, 34, 34);\">Điều bất ngờ ở đây là khán giả bày tỏ thắc mắc vì sao nghệ sĩ hài không thể hiện sự hối hận và gửi một lời xin lỗi về hành động đã qua mà lại nói lời \"chân thành cảm ơn\". Những hình ảnh tươi cười của anh đăng tải trong lời điểm này vấp phải nhiều ý kiến tiêu cực. Có ý kiến cho rằng sự hiếu kỳ của khán giả đã vô tình \"tâng\" một phạm nhân lạm dụng tình dục trẻ em lên thành một \"ngôi sao\" mới về nước.</p>','2016-12-21 10:31:50','','\0','2016-12-21 22:30:33','Bóng đá cấp thành phố',0,2,3,6,'2016-12-22 05:30:33'),(6,'SPKT',NULL,'banner4.jpg','<p class=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; color: rgb(34, 34, 34);\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Sau 9 tháng bị bắt giam ở Mỹ với tội danh quan hệ tình dục bằng miệng với trẻ vị thành niên và có toan tính, cố gắng thực hiện hành vi dâm ô với trẻ em dưới 14 tuổi,&nbsp;<a title=\"Minh Béo\" class=\"link-tag\" target=\"_blank\" href=\"http://kenh14.vn/minh-beo.html\" style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Minh Béo</a>&nbsp;đã chính thức được mãn hạn tù vào ngày 19/2.</span></p><p class=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; color: rgb(34, 34, 34);\">Sáng<span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">&nbsp;21/12, vừa về đến Việt Nam, Minh Béo nhanh chóng cập nhật trạng thái ngắn gọn trên trang cá nhân kèm theo những hình ảnh mới của mình. Anh viết: \"</span><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Minh Béo đã về tới Việt Nam lúc 10h30 . Cảm ơn cả nhà thời gian qua đã quan tâm hỏi thăm Minh Béo . Minh Béo xin chân thành cảm ơn . Minh béo rất khỏe và sẽ liên lạc với cả nhà sau nhé\".</span></p><p class=\"\" style=\"margin-bottom: 15px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; color: rgb(34, 34, 34);\">Điều bất ngờ ở đây là khán giả bày tỏ thắc mắc vì sao nghệ sĩ hài không thể hiện sự hối hận và gửi một lời xin lỗi về hành động đã qua mà lại nói lời \"chân thành cảm ơn\". Những hình ảnh tươi cười của anh đăng tải trong lời điểm này vấp phải nhiều ý kiến tiêu cực. Có ý kiến cho rằng sự hiếu kỳ của khán giả đã vô tình \"tâng\" một phạm nhân lạm dụng tình dục trẻ em lên thành một \"ngôi sao\" mới về nước.</p>','2016-12-21 10:34:07','','','2016-12-20 22:32:30','Bóng đá trường SPKT',0,2,1,2,'2016-12-21 05:32:30'),(7,'Châu âu',NULL,'banner.png','<p>Châu âu</p>','2016-12-22 03:34:48','','\0','2016-12-22 03:34:43','Lễ khánh thành',0,2,1,2,'2016-12-22 10:34:43'),(8,'SPKT',NULL,'352x176_34221ccc-00c8-411d-80b7-6244473102ce.jpg','<p><span style=\"font-family: Arial; font-size: 12px;\">(Dân trí) - Trong trường hợp doanh thu bán vé của Vietlott vẫn duy trì mức tăng trưởng cao, dự đoán trong kỳ quay thưởng diễn ra vào ngày mai (23/12), giá trị giải Jackpot có thể đạt 115 tỷ đồng. Việc trúng số \"độc đắc\" không hề đơn giản, nhưng nếu không có người trúng, giá trị giải thưởng theo nguyên tắc cộng dồn sẽ tiếp tục \"phình\" ra.</span><br></p>','2016-12-22 03:38:25','','\0','2016-12-22 03:37:19','Dream Big',0,2,4,3,'2016-12-22 10:37:19'),(9,'Hà Nội',NULL,'Hinh_anh__Heineken_Khuay_dong_sac_mau_le_hoi_1.jpg','<p><span style=\"margin: 0px auto; padding: 0px; font-family: helvetica, arial, sans-serif; line-height: 19.32px; color: rgb(29, 33, 41);\">Sáng nay 5/12/2016, Trường ĐH Sư phạm Kỹ thuật Tp. HCM đến trao học bổng tạo nguồn 2017 cho học sinh tại các trường THPT:&nbsp;</span><br style=\"margin: 0px auto; padding: 0px; color: rgb(29, 33, 41); font-family: helvetica, arial, sans-serif; line-height: 19.32px;\"><span style=\"margin: 0px auto; padding: 0px; font-family: helvetica, arial, sans-serif; line-height: 19.32px; color: rgb(29, 33, 41);\">THPT Trần Quốc Tuấn (Quảng Ngãi), THPT Lê Khiết (Quảng Ngãi), THPT Nguyễn Công Trứ (Gò Vấp), THPT Thủ Đức. Mỗi trường 10 suất, mỗi suất trị giá 1 triệu đồng.</span><br></p>','2016-12-22 04:15:19','','\0','2016-12-18 04:13:16','Lễ Hội Bia Heineken',0,4,1,2,'2016-12-18 11:13:16'),(10,'Pháp',NULL,'1bc08f9292e6cf59a1486a8b2a6a81f3_L.jpg','<div class=\"articleTitle\" style=\"margin: 0px auto; padding: 0px; font-family: &quot;Times New Roman&quot;; font-size: medium;\"><a href=\"http://hcmute.edu.vn/?ArticleId=7a16fa5a-af86-4129-8777-5dc36835e10e\" style=\"margin: 0px 5px 10px; padding: 0px; color: rgb(2, 128, 187); font-weight: bold; font-size: 16px;\">Đêm văn nghê gây quỹ Xuân tình nguyện 2017</a></div><div class=\"articleContent\" style=\"margin: 0px 5px; padding: 0px; font-stretch: normal; font-size: 13px; font-family: Arial; line-height: 19.5px; text-align: justify;\"><strong style=\"margin: 0px auto; padding: 0px;\">&nbsp; &nbsp; &nbsp;Vào đêm 17/12/2016 vừa qua, tại Hội trường lớn của trường đại học Sư Phạm Kỹ Thuật TP.HCM đã diễn ra Đêm văn nghệ gây quỹ cho chương trình Xuân tình nguyện năm 2017 do Liên chi hội Khoa Đào tạo Chất lượng cao đứng ra tổ chức.</strong><br style=\"margin: 0px auto; padding: 0px;\">&nbsp; &nbsp; &nbsp;Đêm văn nghệ có sự hiện diện của thầy Nguyễn Văn Long Giang – Phó trưởng khoa Đào tạo Chât lượng cao, anh lê Xuân Thân – Phó bí thư đoàn, anh Nguyễn Thanh Tân- Bí thư chi bộ sinh viên 5, … Cùng với hơn 500 sinh viên của trường đại học Sư Phạm Kỹ Thuật TP.HCM.&nbsp;<br style=\"margin: 0px auto; padding: 0px;\"><br style=\"margin: 0px auto; padding: 0px;\"><img alt=\"\" src=\"http://hcmute.edu.vn/Resources/Images/SubDomain/HomePage/tin%20tuc/Nam%202016/Thang%2012-2016/Ngay%2019-12-2016/H1.jpg\" style=\"margin: 0px auto; padding: 0px;\"><br style=\"margin: 0px auto; padding: 0px;\"><div style=\"margin: 0px auto; padding: 0px; text-align: center; line-height: 19.5px;\"><em style=\"margin: 0px auto; padding: 0px; text-align: left;\">Ca sỹ Sỹ Luân đốt cháy bầu không khí đêm diễn<br style=\"margin: 0px auto; padding: 0px;\"><br style=\"margin: 0px auto; padding: 0px;\"></em></div>&nbsp; &nbsp; &nbsp;Đặc biệt, chương trình diễn ra thành công và cực kỳ sôi động với sự góp mặt của các khách mời đặc biệt: Ca sĩ Tăng Phúc, ca sĩ Hamlet Trương, Sỹ Luân, nhóm hài Libe và những màn múa, bài hát đặc sắc đến từ sinh viên của các CLB văn nghê của khoa chất lượng cao.<br style=\"margin: 0px auto; padding: 0px;\"><br style=\"margin: 0px auto; padding: 0px;\"><img alt=\"\" src=\"http://hcmute.edu.vn/Resources/Images/SubDomain/HomePage/tin%20tuc/Nam%202016/Thang%2012-2016/Ngay%2019-12-2016/H1a.jpg\" style=\"margin: 0px auto 2px; padding: 0px;\"></div>','2016-12-22 04:17:22','','','2016-12-22 04:16:07','Vòng chung kết Euro',0,4,3,2,'2016-12-22 11:16:07'),(11,'Hội trường',NULL,'97571b09c_banner_chot.jpg','<p><span style=\"color: rgb(33, 33, 33); font-family: &quot;times new roman&quot;; font-size: 16px; text-align: justify;\">Xây dựng nguồn nhân lực chất lượng cao là yếu tố quan trọng thể hiện nội lực quốc gia, góp phần phát triển kinh tế-xã hội bền vững, nâng cao vị thế của Việt Nam trên trường quốc tế. Trong bối cảnh hội nhập và cạnh tranh, để có thể tồn tại và góp phần tích cực trong việc phục vụ cộng đồng và đào tạo nguồn nhân lực chất lượng cao cho lĩnh vực Công nghệ thông tin, cũng như để có thể thích ứng và phát triển tiếp cận trình độ khu vực và trên thế giới, thầy trò&nbsp;</span><strong style=\"margin: 0px auto; padding: 0px; color: rgb(33, 33, 33); font-family: &quot;times new roman&quot;; font-size: 16px; text-align: justify;\">Khoa CNTT</strong><span style=\"color: rgb(33, 33, 33); font-family: &quot;times new roman&quot;; font-size: 16px; text-align: justify;\">&nbsp;cần nỗ lực hết sức, không ngừng đổi mới sáng tạo nhằm nâng cao chất lượng dạy-học, nghiên cứu, chuyển giao công nghệ....</span><br></p>','2016-12-22 04:19:20','','\0','2016-12-22 04:18:08','Hội thảo bệnh cận thị học đường',0,4,1,5,'2016-12-22 11:18:08'),(12,'Phố Nơngs',NULL,'banner.png','<p style=\"padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); text-align: justify; margin-bottom: 14px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\">Chiều 22/12, bầu Đức và CLB Hàn Quốc đã có những cuộc làm việc để thống nhất về tương lai của Lương Xuân Trường. Tiền vệ này sẽ chuyển sang thi đấu cho Gangwon FC ở mùa bóng 2017. Anh vốn đang khoác áo Incheon United theo dạng cho mượn từ HAGL. Tuy nhiên, Gangwon FC đã thương lượng thành công với đội bóng đồng hương.</p><p style=\"padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); text-align: center; margin-bottom: 14px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"></p><div class=\"share_image\" style=\"margin: 0px; padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background: transparent; position: relative; display: inline-block; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"><div class=\"item_gallery\" data-src=\"http://img.v3.news.zdn.vn/w1024/Uploaded/AfsSI/2016_12_22/thumdbb.jpg\" data-sub-html=\"<div class=\'sapo_slide\'>undefined</div>\" style=\"margin: 0px; padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background: transparent; line-height: 22px !important; word-wrap: break-word !important;\"><div class=\"thumb_detail\" style=\"margin: 0px; padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background: transparent; position: relative; cursor: pointer; line-height: 22px !important; word-wrap: break-word !important;\"><img class=\"img-responsive\" src=\"http://img.v3.news.zdn.vn/w1024/Uploaded/AfsSI/2016_12_22/thumdbb.jpg\" alt=\"\" title=\"undefined\" style=\"padding: 0px; list-style: none; outline: 0px; vertical-align: baseline; background: transparent; width: auto; margin: auto !important; line-height: 22px !important; border-style: none !important; word-wrap: break-word !important;\"></div></div></div><p>Xuân Trường sẽ nhận đãi ngộ cao tại Gangwon FC. Ảnh: Nguyễn Đăng</p><p></p><p style=\"padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); text-align: justify; margin-bottom: 14px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\">“Gangwon FC sẽ có những đãi ngộ tốt nhất dành cho Xuân Trường. Giám đốc điều hành của đội bóng cho biết nếu Trường biết lái xe họ sẽ mua cho cậu ấy. Bên cạnh đó, họ cũng hỗ trợ về nhà ở. Gangwon FC đánh giá rất cao tài năng của của Xuân Trường, đặc biệt là khả năng chuyền bóng”, Lee Dong-jun, đại diện của Trường cho biết.</p><p style=\"padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); text-align: justify; margin-bottom: 14px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\">Theo Lee, vị trí của Xuân Trường ở đội bóng mới sẽ khác so với ở Incheon. Tiền vệ người Tuyên Quang sẽ được tạo điều kiện để ra sân nhiều hơn. Tuy nhiên, tiền vệ người Việt Nam cũng phải cải thiện thêm về khả năng đánh đầu cũng như hỗ trợ phòng ngự. Đây vốn là điểm yếu của anh mùa trước.</p><p style=\"padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); text-align: justify; margin-bottom: 14px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\">Hiện tại, Gangwon chưa chốt được ngày để công bố hợp đồng. Nhưng Lee cho biết Xuân Trường sẽ sang Hàn Quốc để đầu quân cho đội bóng vào đầu tháng 1. Sau đó, anh và đồng đội sẽ cùng nhau đi tập huấn tại Nhật Bản. HLV Choi Yun-kyum muốn các tân binh như Trường có nhiều thời gian để làm quen với CLB mới.</p><p style=\"padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); text-align: justify; margin-bottom: 14px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"></p><div class=\"share_image\" style=\"margin: 0px; padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background: transparent; position: relative; display: inline-block; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"><div class=\"item_gallery\" data-src=\"http://img.v3.news.zdn.vn/w660/Uploaded/AfsSI/2016_12_22/IMG_8740.JPG\" data-sub-html=\"<div class=\'sapo_slide\'>undefined</div>\" style=\"margin: 0px; padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background: transparent; line-height: 22px !important; word-wrap: break-word !important;\"><div class=\"thumb_detail\" style=\"margin: 0px; padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background: transparent; position: relative; cursor: pointer; line-height: 22px !important; word-wrap: break-word !important;\"><img class=\"img-responsive\" src=\"http://img.v3.news.zdn.vn/w660/Uploaded/AfsSI/2016_12_22/IMG_8740.JPG\" alt=\"\" title=\"undefined\" style=\"padding: 0px; list-style: none; outline: 0px; vertical-align: baseline; background: transparent; width: auto; margin: auto !important; line-height: 22px !important; border-style: none !important; word-wrap: break-word !important;\"></div></div></div><p></p><p style=\"padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); text-align: justify; margin-bottom: 14px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\">Tân binh của giải K.League Classic cũng để ngỏ khả năng sẽ dùng Xuân Trường trong những chiến dịch để quảng bá, tăng thêm nguồn tài trợ. Việc kết hợp anh với ca sĩ Choi Min-ho (con trai của HLV Choi Yun-kyum) cũng là một khả năng.</p><p style=\"padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); text-align: justify; margin-bottom: 14px !important; line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\">Trong khi đó, Incheon United cũng đã lên sẵn phương án thi đấu không có Xuân Trường. Theo&nbsp;<em style=\"margin: 0px; padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background: transparent; line-height: 22px !important; word-wrap: break-word !important;\">Naver Sports</em>, đội bóng này đã chia tay cả 4 ngoại binh (trong đó có Trường) và theo đuổi hàng loạt cầu thủ khác để thay thế. Mùa trước, họ đã thi đấu chật vật mới trụ hạng thành công.</p><div class=\"notebox ncenter\" style=\"margin: 0px; padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: robotoslR, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); line-height: 22px !important; font-size: 15px !important; word-wrap: break-word !important;\"><p style=\"padding: 0px; list-style: none; outline: 0px; border: 0px; vertical-align: baseline; background: transparent; text-align: justify; margin-bottom: 14px !important; line-height: 22px !important; word-wrap: break-word !important;\">Trong khi Xuân Trường chắc chắn sang Gangwon FC thì thương vụ Lê Đức Lương vẫn đi vào ngõ cụt. Lee Dong-jun cho biết giữa CLB Ansan Mugunghwa (mới đổi tên thành Ansan Greeners) và HAGL vẫn chưa đi đến thống nhất những điều khoản về lương bổng, chi phí cho mượn. Đội bóng đang chơi ở giải K.League Challenge này đánh giá cao khả năng của Lương sau khi tạo điều kiện cho anh tạp luyện tại Hàn Quốc trong hơn một tuần.</p></div>','2016-12-23 06:48:37','<p>OK</p>','','2016-12-22 18:47:15','Đi chơi',0,2,4,5,'2016-12-23 01:47:15');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hobby`
--

DROP TABLE IF EXISTS `hobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hobby` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `event_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKguql7avgso4vbhxfy66yc98e8` (`user_id`),
  KEY `FKt9r7wo5ysij5aq5ra0fml2jp1` (`event_id`),
  CONSTRAINT `FKguql7avgso4vbhxfy66yc98e8` FOREIGN KEY (`user_id`) REFERENCES `account` (`id`),
  CONSTRAINT `FKt9r7wo5ysij5aq5ra0fml2jp1` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobby`
--

LOCK TABLES `hobby` WRITE;
/*!40000 ALTER TABLE `hobby` DISABLE KEYS */;
INSERT INTO `hobby` VALUES (1,2,8),(2,2,11),(3,2,7),(4,2,7),(5,6,5),(6,2,7),(7,2,8),(8,2,8);
/*!40000 ALTER TABLE `hobby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place`
--

LOCK TABLES `place` WRITE;
/*!40000 ALTER TABLE `place` DISABLE KEYS */;
INSERT INTO `place` VALUES (1,'Khoa Công Nghệ Thông Tin'),(2,'Khoa Điện - Điện Tử'),(3,'Khoa Công Nghệ May'),(4,'Khoa Cơ Khí Chế Tạo Máy'),(5,'Trường Sư Phạm Kỹ Thuật TP. HCM'),(6,'Ngoài Trường');
/*!40000 ALTER TABLE `place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (2,NULL,'Hoạt động thể thao'),(3,NULL,'Hoạt động văn nghệ'),(4,NULL,'Hoat động tình nguyện'),(5,NULL,'Tiếp sức mùa thi'),(6,NULL,'Hội Thao Cấp Thành Phố'),(7,NULL,'Hội Thao Cấp Trường');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'springbootdb'
--

--
-- Dumping routines for database 'springbootdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-25 11:06:39
