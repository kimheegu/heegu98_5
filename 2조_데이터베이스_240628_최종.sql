-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: uni_db
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `att_id` int NOT NULL AUTO_INCREMENT,
  `att_date` timestamp NOT NULL,
  `att_status` varchar(10) NOT NULL,
  `std_id` varchar(15) NOT NULL,
  `sub_id` varchar(15) NOT NULL,
  PRIMARY KEY (`att_id`,`std_id`,`sub_id`),
  KEY `fk_attendance_student1_idx` (`std_id`),
  KEY `fk_attendance_subject1_idx` (`sub_id`),
  CONSTRAINT `fk_attendance_student1` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_attendance_subject1` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'2024-06-22 05:55:15','결석','201500366','TDSPD'),(2,'2024-06-23 05:55:10','출석','201500366','ATRED'),(3,'2024-06-24 05:55:10','지각','201500366','ATRED'),(4,'2024-06-25 05:55:10','조퇴','201500366','ATRED'),(5,'2024-06-26 05:55:10','조퇴','201500366','ATRED'),(6,'2024-06-27 05:55:10','지각','201500366','ATRED'),(7,'2024-06-28 05:55:10','출석','201500366','ATRED'),(8,'2021-05-12 04:05:00','출석','201700412','TDSPD'),(9,'2021-05-13 04:05:00','출석','201700412','TDSPD'),(10,'2021-05-14 04:05:00','지각','201700412','TDSPD'),(11,'2021-05-15 04:05:00','출석','201700412','TDSPD'),(12,'2021-05-18 04:05:00','결석','201700412','TDSPD'),(13,'2021-06-23 04:05:00','출석','201700412','ATRED'),(14,'2021-06-24 04:05:00','출석','201700412','ATRED'),(15,'2021-06-25 04:05:00','출석','201700412','ATRED'),(16,'2021-06-26 04:05:00','출석','201700412','ATRED'),(17,'2021-05-17 00:45:00','출석','201700412','MTDGN'),(18,'2021-05-18 00:45:00','출석','201700412','MTDGN'),(19,'2021-05-19 00:45:00','지각','201700412','MTDGN'),(20,'2021-05-10 00:45:00','출석','201700412','MTDGN'),(21,'2021-05-20 00:45:00','출석','201700412','MTDGN'),(22,'2021-05-21 00:45:00','출석','201700412','MTDGN');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community` (
  `community_id` int NOT NULL AUTO_INCREMENT,
  `community_name` varchar(45) NOT NULL,
  `community_content` text NOT NULL,
  `community_date` date NOT NULL,
  `community_writer` varchar(15) NOT NULL,
  PRIMARY KEY (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (2,'1학기 목디 개강총회 안내','안녕하세요! 목디 제13회 학생회 반야심경입니다~\r\n이번 목디 개강총회는 예산 수덕사에서 템플스테이로 진행됩니다~!','2024-06-28','201500366'),(3,'깔유 전공책 삽니다','제곧내','2024-06-28','201700412'),(5,'졸업생이다','빨리 도망쳐라\r\n여긴 답이 없어','2024-06-28','201500366'),(8,'안녕하세요','반갑습니다.','2024-06-28','201700412');
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture`
--

DROP TABLE IF EXISTS `lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture` (
  `lec_id` int NOT NULL AUTO_INCREMENT,
  `std_id` varchar(15) NOT NULL,
  `sub_id` varchar(15) NOT NULL,
  PRIMARY KEY (`lec_id`,`std_id`,`sub_id`),
  KEY `fk_lecture_student_idx` (`std_id`),
  KEY `fk_lecture_subject1_idx` (`sub_id`),
  CONSTRAINT `fk_lecture_student` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_lecture_subject1` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture`
--

LOCK TABLES `lecture` WRITE;
/*!40000 ALTER TABLE `lecture` DISABLE KEYS */;
INSERT INTO `lecture` VALUES (1,'201500366','TDSPD'),(2,'201500366','ATRED'),(3,'201500366','MTDGN'),(4,'201700412','MTDGN'),(5,'201700412','TDSPD'),(6,'201700412','ATRED'),(7,'201700792','TDSPD'),(8,'201700792','ATRED'),(9,'201700792','MTDGN');
/*!40000 ALTER TABLE `lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `major` (
  `major_id` varchar(10) NOT NULL,
  `major_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`major_id`),
  UNIQUE KEY `majorcol_UNIQUE` (`major_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES ('BB','감귤포장학과'),('CC','목탁디자인학과'),('AA','유-머조사학과');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT,
  `notice_name` varchar(45) NOT NULL,
  `notice_content` text NOT NULL,
  `notice_date` date NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'제 2회 일각사이버대학교 체육대회 관련 공지 (e-sports)','총장이다\r\n이번 체육대회는 1:1 철권으로 진행된다.\r\n맞다이 뜨고 싶은 놈은 총장실로 와라','2024-06-28'),(6,'일각대학교 홈페이지 정기점검 안내','안녕하세요, 일각대학교입니다.\n 일각대학교 홈페이지 정기점검이 2024년 6월 30일(일) 02시~02시30분 (약 30분간) 진행될 예정입니다.\n 이점 참고하시기 바랍니다.\n 감사합니다. ','2024-06-28'),(7,'2024년 일각대학교 홍보 서포터즈 모집 안내','안녕하세요, 일각대학교입니다.\n 2024년 일각대학교 홍보 서포터즈를 모집합니다.\n \n 모집인원 : 10명\n 모집기간 : 2024년 7월 1일 ~ 2024년 7월 10일\n 활동내용 : 홍보 서포터즈 월별 활동보고서 제출\n           관련 오프라인 행사 참여(발대식, 해단식 등)\n 활동기간 : 2024년 7월~12월(6개월)\n 활동혜택 : 홍보 서포터즈 수료증 발급\n           활동비(장학금) 1,000,000원 지급\n 제출서류 : 직접 제작한 포트폴리오 (자유양식)\n \n 많은 지원 부탁드립니다. ','2024-06-28'),(8,'하계 학생 상담센터 운영안내','개인상담\n - 심리정서(우울,불안,무기력), 대인관계, 이성, 가족 직업적성 등 일상생활의 문제\n \n 심리검사\n - Holland 직업 적성검사, NEO 성격검사\n \n 신청방법\n 학생상담센터 042)123-1234\n * 상담센터는 모든 내용의 비밀유지를 엄수합니다. ','2024-06-28'),(9,'2024학년도 독서 경진대회 모집 안내','안녕하세요, 여름방학동안 독서경진대회 참여학생을 모집합니다.\n \n 주제 : 생활 속 작은 배려\n 진행방법  : 참가신청 > 작품제출\n 활동내용 : 선정한 도서를 읽고 주제에 맞는 북트레일러 제작 \n 참여대상 : 재학생\n 문의처 : 학생상담센터 042)123-1234\n \n 많은 참여 바랍니다. ','2024-06-28'),(10,'(1차) 2024-1학기 IGU 학생핵심역량 진단검사 안내','안녕하세요.\n \n 일각대학교 교수학습센터입니다.\n 2024-1학기 IGU 학생핵심역량 진단검사를 진행합니다.\n \n 대 상 : 재학생\n 기 한 : 2024.7.1.(월) ~ \n 모집인원 : 선착순 50명\n \n 많은 참여 바랍니다. ','2024-06-28');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `pro_id` varchar(15) NOT NULL,
  `pro_pwd` varchar(20) NOT NULL,
  `major_id` varchar(10) NOT NULL,
  `pro_name` varchar(10) NOT NULL,
  PRIMARY KEY (`pro_id`,`major_id`),
  KEY `fk_professor_major1_idx` (`major_id`),
  CONSTRAINT `fk_professor_major1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES ('123','1234','BB','김희구'),('345','1234','AA','유성문'),('456','1234','CC','곽상준');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `score_id` int NOT NULL AUTO_INCREMENT,
  `score_mid` int DEFAULT NULL,
  `score_fin` int DEFAULT NULL,
  `score_att` int DEFAULT NULL,
  `score_grd` double DEFAULT NULL,
  `std_id` varchar(15) NOT NULL,
  `sub_id` varchar(15) NOT NULL,
  PRIMARY KEY (`score_id`,`std_id`,`sub_id`),
  KEY `fk_score_student1_idx` (`std_id`),
  KEY `fk_score_subject1_idx` (`sub_id`),
  CONSTRAINT `fk_score_student1` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_score_subject1` FOREIGN KEY (`sub_id`) REFERENCES `subject` (`sub_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,30,30,10,3.5,'201500366','TDSPD'),(2,75,80,90,3.5,'201500366','ATRED'),(5,80,70,100,3.5,'201500366','MTDGN'),(6,90,90,100,4.5,'201700412','MTDGN'),(7,80,90,100,4,'201700412','TDSPD'),(8,90,100,100,4.5,'201700412','ATRED'),(9,80,90,100,4,'201700792','MTDGN');
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `std_id` varchar(15) NOT NULL,
  `std_pwd` varchar(20) NOT NULL,
  `std_name` varchar(20) NOT NULL,
  `std_grade` varchar(10) NOT NULL,
  `std_status` varchar(10) NOT NULL,
  `std_email` varchar(30) NOT NULL,
  `std_phone` varchar(20) NOT NULL,
  `std_address` varchar(70) DEFAULT NULL,
  `major_id` varchar(10) NOT NULL,
  PRIMARY KEY (`std_id`,`major_id`),
  KEY `fk_student_major1_idx` (`major_id`),
  CONSTRAINT `fk_student_major1` FOREIGN KEY (`major_id`) REFERENCES `major` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('201500366','1234','신호연','3','재학','fff@naver.com','01022222222','대전광역시','AA'),('201700412','1234','유성문','4','군휴학','rrr@naver.com','01012349999','대전광역시','CC'),('201700585','1234','김희구','3','군휴학','aaa@naver.com','01033333333','대전광역시','BB'),('201700792','1234','강가연','1','재학','rrr@gmail.com','01044445555','대전광역시','CC');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `sub_id` varchar(15) NOT NULL,
  `sub_name` varchar(30) NOT NULL,
  `sub_course` varchar(10) NOT NULL,
  `sub_semester` varchar(20) NOT NULL,
  `sub_day` varchar(10) NOT NULL,
  `sub_start_time` time NOT NULL,
  `sub_end_time` time NOT NULL,
  `sub_credit` int NOT NULL,
  `pro_id` varchar(15) NOT NULL,
  PRIMARY KEY (`sub_id`,`pro_id`),
  KEY `fk_subject_professor1_idx` (`pro_id`),
  CONSTRAINT `fk_subject_professor1` FOREIGN KEY (`pro_id`) REFERENCES `professor` (`pro_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('ATRED','감귤론','전공필수','2020년 1학기','화요일','14:00:00','16:00:00',3,'123'),('MTDGN','목탁음정학개론','전공선택','2021년 1학기','목요일','12:00:00','13:30:00',3,'456'),('TDSPD','깔깔 유머의 이해','전공필수','2019년 2학기','수요일','10:00:00','13:00:00',3,'345'),('TTMTT','목탁의 역사 기행','교양','2021년 1학기','월요일','10:00:00','12:00:00',3,'456');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-28 16:38:47
