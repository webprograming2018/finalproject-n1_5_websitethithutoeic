-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: toeicmyclass
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `accid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`accid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorymember`
--

DROP TABLE IF EXISTS `categorymember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categorymember` (
  `categorymemberid` int(11) NOT NULL,
  `categorymembername` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`categorymemberid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorymember`
--

LOCK TABLES `categorymember` WRITE;
/*!40000 ALTER TABLE `categorymember` DISABLE KEYS */;
INSERT INTO `categorymember` VALUES (1,'Người dùng'),(2,'Quản trị');
/*!40000 ALTER TABLE `categorymember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmtgrammar`
--

DROP TABLE IF EXISTS `cmtgrammar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmtgrammar` (
  `cmtgrammarid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtgrammarcontent` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `memberid` int(11) DEFAULT NULL,
  `grammarguidelineid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmtgrammarid`),
  KEY `FK_CMTGRA_GRAGU_idx` (`grammarguidelineid`),
  KEY `FK_CMTGRA_ME_idx` (`memberid`),
  CONSTRAINT `FK_CMTGRA_GRAGU` FOREIGN KEY (`grammarguidelineid`) REFERENCES `grammarguideline` (`grammarguidelineid`),
  CONSTRAINT `FK_CMTGRA_ME` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmtgrammar`
--

LOCK TABLES `cmtgrammar` WRITE;
/*!40000 ALTER TABLE `cmtgrammar` DISABLE KEYS */;
INSERT INTO `cmtgrammar` VALUES (6,'tung lam',15,48),(10,'myclass.vn',15,48),(13,'tung lam',15,48),(14,'tung lam',15,48),(15,'myclass',15,48),(16,'tung lam',15,48);
/*!40000 ALTER TABLE `cmtgrammar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmtvocabulary`
--

DROP TABLE IF EXISTS `cmtvocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cmtvocabulary` (
  `cmtvocabularyid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtvocabularycontent` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `memberid` int(11) DEFAULT NULL,
  `vocabularyguidelineid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmtvocabularyid`),
  KEY `FK_CMTVO_MEM_idx` (`memberid`),
  KEY `FK_CMTVO_VOGU_idx` (`vocabularyguidelineid`),
  CONSTRAINT `FK_CMTVO_MEM` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`),
  CONSTRAINT `FK_CMTVO_VOGU` FOREIGN KEY (`vocabularyguidelineid`) REFERENCES `vocabularyguideline` (`vocabularyguidelineid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmtvocabulary`
--

LOCK TABLES `cmtvocabulary` WRITE;
/*!40000 ALTER TABLE `cmtvocabulary` DISABLE KEYS */;
/*!40000 ALTER TABLE `cmtvocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `examination` (
  `examinationid` int(11) NOT NULL AUTO_INCREMENT,
  `examinationame` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `examinatioimage` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `checkedcauhoi` int(11) DEFAULT NULL,
  PRIMARY KEY (`examinationid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES (26,'Đề thi 1','dethi2.png',1),(29,'Đề thi 2','dethi2.png',0),(30,NULL,NULL,NULL);
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examinationquestion`
--

DROP TABLE IF EXISTS `examinationquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `examinationquestion` (
  `examinationquestionid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `imagequestion` varchar(45) CHARACTER SET ucs2 COLLATE ucs2_swedish_ci DEFAULT NULL,
  `audiogg` varchar(45) CHARACTER SET ucs2 COLLATE ucs2_swedish_ci DEFAULT NULL,
  `audiomp3` varchar(45) CHARACTER SET ucs2 COLLATE ucs2_swedish_ci DEFAULT NULL,
  `paragraph` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `question` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `option1` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `option2` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `option3` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `option4` text CHARACTER SET ucs2 COLLATE ucs2_swedish_ci,
  `correctanswer` varchar(45) CHARACTER SET ucs2 COLLATE ucs2_swedish_ci DEFAULT NULL,
  `examinationid` int(11) DEFAULT NULL,
  PRIMARY KEY (`examinationquestionid`),
  KEY `FK_EXQ_EX_idx` (`examinationid`),
  CONSTRAINT `FK_EXQ_EX` FOREIGN KEY (`examinationid`) REFERENCES `examination` (`examinationid`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examinationquestion`
--

LOCK TABLES `examinationquestion` WRITE;
/*!40000 ALTER TABLE `examinationquestion` DISABLE KEYS */;
INSERT INTO `examinationquestion` VALUES (43,1,'hinh1_1.jpg','audio1_1.ogg','audio1_1.mp3','','Look at the picture and listen to the sentences. Choose the sentence that best describes the picture:','','','','','A',26),(44,2,'hinh1_2.jpg','audio1_2.ogg','audio1_2.mp3','','Look at the picture and listen to the sentences. Choose the sentence that best describes the picture:','','','','','B',26),(45,3,'','audio1_3.ogg','audio1_3.mp3','','Listen to the question and the three responses. Choose the response that best answers the question:','','','','','A',26),(46,4,'','audio1_4.ogg','audio1_4.mp3','','Listen to the question and the three responses. Choose the response that best answers the question:','','','','','B',26),(47,5,'','','','',' It is common misconception that running anti-virus software programs and keeping them up to date is enough to protect ------- from viruses.',' A. instructions','B. instruct','C.  instructor','D. instructive','C',26),(48,6,'','','','',' -------- a recent incident with one of the newly installed elevators malfunctioning, repairmen have been hired to check all of them.','A. your','B. yours','C. you','D.  you’re','B',26),(49,7,'','','','Read the passage and choose the correct answer:\nPassage 1:\n\nMOSS RESIDENTIAL TECH\n                                                            Staff Expense Form\nName: Bill Sweet\nReason for expense: Client meetings and product demonstrations in Indianapolis, Indiana with Davies Home Distribution Corporation\nDates of trip: May 12-18\n \nExpense Amount paid ($) Details\nPlane ticket 600 Round trip - Economy class\nHotel room 0 Complimentary - Bonus card\nFood and Beverage 400  \nTaxi/ airport limo 100 The airport is far from the site\nMisc. 150 Alcohol for the clients\nTotal 1,250  \n \nEmployee signature: Bill Sweet\nManager signature: Elsa Wagner\n                       \nComments:\nAll of the receipts from my business trip have been attached via staple to this form. I am sorry that I missed the submissions deadline of 2 weeks after returning. I was overwhelmed by the response from the clients to my product demonstration as I had an 80% increase in sales. I am hoping that this increase in sales is a valid excuse for my tardiness. I would appreciate it if you could reimburse me as soon as possible, as I have to make another trip soon. My manager and I will be in the office today if you have any questions. Thanks in advance.\n***********\nPassage 2: \n \nDate: May 28, 11:20 a.m.\nTo: Bill Sweet \nFrom: Samuel Wilson <s-wilson@mossrtech.com>\nCc: Payton Maroney <p-maroney@mossrtech.com>\nSubject: Expense report\n \nMr. Sweet,\n \nThanks for completing and submitting the proper forms for your reimbursement. Although, you missing the deadline we will be able to pay you back for the money you spent on your trip. Your supervisor has already informed me of your situation, and it is acceptable. I hope that you continue your good sales record, but if you could try and submit your forms on time, it would make my job easier.\n \nAfter reading your report I noticed that you expensed drinks for clients. I am sorry to say that we don’t cover that type of expense, so we will not be able to reimburse you for that. If you have any questions about what is covered, you should refer to the employee manual. Additionally, next time you attach your receipts, can you please put them in the order you have written them on the form? This will speed processing time and reduce errors.\n \nI will be out of town starting tomorrow. I am going on a short vacation and I will be out of reach. If you have any questions, please contact my assistant Payton at extension 6859. I have carbon copied this e-mail to him, so he is aware of the details.\n \nSincerely,\nSamuel Wilson\nAccounting Division',' Why did Mr. Sweet submit the report?','A. to list the things he spent his money on','B. to ask for permission to take a business trip','C. airfare','D. to request that he be paid back for his expenses','D',26),(50,8,'','','','','What did Mr. Sweet’s supervisor ask him to do in Indiana?','A. go to a sales training seminar','B. make a sales presentation to potential clients','C. acquire new sales employees','D. deliver new products to customers','B',26),(51,9,'','','','','Why was Mr. Sweet late in submitting the form?','A. He filled out the form incorrectly.','B. He was swamped with new customers.','C. He returned from Indiana after the due date.','D. He sent the form to the wrong person','B',26),(52,10,'','','','Did you know that a typical business uses over 2,000 ink cartridges per year? The environmental consequences of this are important for us to consider. Bold Ink, Inc. would like to minimize the amount of waste produced by local businesses. We urge our customers to recycle used ink cartridges (54) ------- possible, because as a company we are committed to reducing environmental pollution.\n \nIt is easy to recycle used ink cartridges. You can deposit them in recycling bins labeled “Bold Ink” at any office supply store that sells our products. Store employees (55) ------ the cartridges to us so that we can process them.\nWhen you recycle a cartridge, you receive a discount on your next cartridge purchase. To get further (56) ------- about the discount program, log on to our homepage at www.boldink.com.','','A, some','B.  whenever','C, altogether',' D. meanwhile','A',26);
/*!40000 ALTER TABLE `examinationquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grammarguideline`
--

DROP TABLE IF EXISTS `grammarguideline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grammarguideline` (
  `grammarguidelineid` int(11) NOT NULL AUTO_INCREMENT,
  `grammarname` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `grammarimage` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  PRIMARY KEY (`grammarguidelineid`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grammarguideline`
--

LOCK TABLES `grammarguideline` WRITE;
/*!40000 ALTER TABLE `grammarguideline` DISABLE KEYS */;
INSERT INTO `grammarguideline` VALUES (48,'HƯỚNG DẪN CÁCH TƯ DUY MỘT SỐ LOẠI CÂU HỎI THÚ VỊ TRONG TOEIC READING ','Hinhhdnguphap1.jpg','Thật là mệt mỏi khi làm bài tập TOEIC Reading mà phải ngồi dịch từng câu đúng không các em? Từ vựng Tiếng Anh là một kho tàng không bao giờ hết, nên cô chưa bao giờ khuyến khích học viên của mình dịch nghĩa một câu để có thể chọn được đáp án đúng. Lúc nào cũng thế, cô muốn các bạn thử dùng ngữ pháp để giải quyết vấn đề trước tiên. Hôm nay cô trò mình cùng tư duy một số loại câu hỏi thú vị trong đề thi TOEIC nhé các em.\r\n\r\n1. The team members have the same opinions on the matter ….they shared the same information\r\na. following\r\nb. more than\r\nc. because\r\nd. unless\r\nCác em chú ý nhé, đáp án cần điền là đáp án có thể nối hai mệnh đề với nhau, ngay lập tức cô loại A và B. Lúc này cô cân nhắc hai đáp án C và D. Cần dịch chưa nhỉ? Chưa đâu em nhé :)\r\n\r\nUnless tức là If not đúng không các em? Chúng ta nhớ lại kiến thức câu điều kiện xem. Không có câu điều kiện nào mệnh đề If chia thì quá khứ đơn (shared) trong khi mệnh đề chính chia hiện tại đơn (have ) cả, nên đáp án câu này là C đúng không nào?													'),(49,'Lộ trình 990 TOEIC dành cho người mất gốc','Hinhhdnguphap2.jpg','**                                                    \r\n                                          &#272;&#7897;ng t&#7915; (Verbs) l� t&#7915; d�ng &#273;&#7875; di&#7877;n t&#7843; h�nh &#273;&#7897;ng ho&#7863;c h�nh &#273;&#7897;ng tr&#7841;ng th�i c&#7911;a ch&#7911; ng&#7919;. &#272;&#7897;ng t&#7915; th&#432;&#7901;ng &#273;&#432;&#7907;c d�ng &#273;&#7875; m� t&#7843; m&#7897;t h�nh &#273;&#7897;ng, v&#7853;n &#273;&#7897;ng, ho&#7841;t &#273;&#7897;ng c&#7911;a m&#7897;t ng&#432;&#7901;i, m&#7897;t v&#7853;t, ho&#7863;c s&#7921; v&#7853;t n�o &#273;� n�o &#273;�.\r\n\r\nVD 1: \"Tom kicked the ball.\" \"Kicked\" l� &#273;&#7897;ng t&#7915;, \"Tom\" l� ch&#7911; ng&#7919; v� anh &#7845;y th&#7921;c hi&#7879;n h�nh &#273;&#7897;ng l� &#273;� qu&#7843; b�ng. Qu&#7843; b�ng &#273;&#432;&#7907;c xem l� &#273;&#7889;i t&#432;&#7907;ng nh&#7853;n t�c &#273;&#7897;ng c&#7911;a h�nh &#273;&#7897;ng (object of the verb).\r\n\r\nVD 2: \"The sun is red.\" \"is\" l� &#273;&#7897;ng t&#7915; trong c�u n�y. N� kh�ng th&#7875; hi&#7879;n h�nh &#273;&#7897;ng, m� n� th&#7875; hi&#7879;n tr&#7841;ng th�i c&#7911;a \"sun\"(m&#7863;t tr&#7901;i) l� m�u , c�n \"red\"(m�u &#273;&#7887;) &#7903; &#273;�y l� t�nh t&#7915; ch&#7881; m�u s&#7855;c\r\n\r\n- V&#7883; tr� th&#432;&#7901;ng s&#7917; d&#7909;ng\r\n&#272;&#7913;ng sau ch&#7911; ng&#7919;:\r\n\r\nVD: He worked hard. \r\n\r\nSau tr&#7841;ng t&#7915; ch&#7881; t&#7847;n su&#7845;t (Adverb of Frequency) n&#7871;u l� &#273;&#7897;ng t&#7915; th&#432;&#7901;ng.\r\n\r\nC�c tr&#7841;ng t&#7915; ch&#7881; t&#7847;n su&#7845;t th&#432;&#7901;ng g&#7863;p:\r\n\r\nAlways: lu�n lu�n\r\nUsually: th&#432;&#7901;ng th&#432;&#7901;ng\r\nOften : th&#432;&#7901;ng\r\nSometimes: &#272;�i khi\r\nSeldom: Hi&#7871;m khi\r\nNever: Kh�ng bao gi&#7901;\r\nVD: He usually goes to school in the Morning. \r\n\r\nN&#7871;u l� &#273;&#7897;ng t&#7915; \"Tobe\", tr&#7841;ng t&#7915; s&#7869; &#273;i sau &#273;&#7897;ng t&#7915; \"Tobe\".\r\n\r\nVD: It\'s usually warm in authumn.           **'),(76,'Thành ngữ về thời gian','hinh1.jpg','1. Time is money, so no one can put back the clock: Th&#7901;i gian l� v�ng n�n kh�ng th&#7875; xoay ng&#432;&#7907;c kim c&#7911;a n� \r\n\r\n2. Time flies like an arrow: Th&#7901;i gian tho�t tho�t thoi &#273;&#432;a \r\n\r\n3. Time and tide waits for no man: Th&#7901;i gian c� ch&#7901; &#273;&#7907;i ai\r\n\r\n4. Time is the great healer: Th&#7901;i gian ch&#7919;a l�nh m&#7885;i v&#7871;t th&#432;&#417;ng \r\n\r\n5. Every minute seem like a thousand: M&#7895;i gi�y d�i t&#7909;a thi�n thu \r\n\r\n6. Let bygones be bygones: &#272;&#7915;ng nh�c l&#7841;i chuy&#7879;n qu� kh&#7913;\r\n\r\n7. Time is the rider that breaks youth: Th&#7901;i gian t�n ph� tu&#7893;i tr&#7867; \r\n\r\n8. Better late than never: Th� tr&#7877; con h&#417;n kh�ng bao gi&#7901; \r\n\r\n9. Time, which strengthens friendship, weakens love: Th&#7901;i gian l�m t�nh b&#7841;n th&#7855;m thi&#7871;t, nh&#432;ng l&#7841;i hao m�n t�nh y�u \r\n\r\n10. Slow and steady wins the race: Ch&#7853;m m� ch&#7855;c.                                                   \r\n                                                    '),(77,'Một số từ vựng tiếng Anh trong công việc','hinh2.png','o A full-time job: c�ng vi&#7879;c to�n th&#7901;i gian\r\n\r\no Work overtime: l�m th�m gi&#7901;\r\n\r\no A part-time job: c�ng vi&#7879;c b�n th&#7901;i gian\r\n\r\no A permanent job: c�ng vi&#7879;c l�u d�i, &#7893;n &#273;&#7883;nh\r\n\r\no Temporary work: c�ng vi&#7879;c t&#7841;m th&#7901;i, ng&#7855;n h&#7841;n\r\n\r\no Contract: h&#7907;p &#273;&#7891;ng\r\n\r\no Retire (v) ngh&#7881; h&#432;u\r\n\r\no Pension (n) l&#432;&#417;ng h&#432;u\r\n\r\no Resign: t&#7915; ch&#7913;c, xin ngh&#7881;                                                    \r\n                                                    '),(78,'Một số những câu nói cực kỳ hay','hinh3.jpg','* What do you do for relaxation? \r\nB&#7841;n l�m g� &#273;&#7875; th&#432; gi&#7843;n - c� th&#7875; l� ch&#7871; nh&#7841;o ...\r\n\r\n* Its a small world. \r\nQu&#7843; &#273;&#7845;t tr�n qu� nh&#7881;\r\n\r\n* Its my treat this time. \r\nT&#7899;i &#273;�i c&#7853;u l&#7847;n n�y\r\n\r\n* The sooner the better. \r\nC�ng s&#7899;m c�ng t&#7889;t\r\n\r\n* When is the most convenient time for you? \r\nL�c n�o th� ti&#7879;n cho c&#7853;u - c&#361;ng c� th&#7875; l� l&#7901;i tr�ch ...                                                    \r\n                                                    '),(79,'10 Mẫu câu thông dụng nói về thói quen','hinh4.jpg','1. I spend a lot of time on (+ Danh t&#7915; / V-ing) : T�i d�nh r&#7845;t nhi&#7873;u th&#7901;i gian v�o vi&#7879;c�)\r\n\r\n\r\n2. I (often) tend to...( + V-inf) : T�i th&#432;&#7901;ng c� xu h&#432;&#7899;ng l�m vi&#7879;c g� &#273;�)\r\n\r\n\r\n3. You\'ll always find me + V-ing : B&#7841;n s&#7869; th&#432;&#7901;ng xuy�n t�m th&#7845;y t�i &#273;ang l�m g� &#273;�...)\r\n\r\n\r\n4. (V-ing) is a big part of my life : L�m g� &#273;� chi&#7871;m m&#7897;t ph&#7847;n l&#7899;n trong cu&#7897;c s&#7889;ng c&#7911;a t�i)\r\n\r\n\r\n5. I always make a point of (+ Danh t&#7915;/V-ing) : T�i lu�n cho r&#7857;ng l�m g� &#273;� l� m&#7897;t vi&#7879;c r&#7845;t quan tr&#7885;ng\r\n\r\n\r\n6. Whenever I get the chance, I...(+Clause) : B&#7845;t c&#7913; khi n�o c� c&#417; h&#7897;i, t�i l&#7841;i l�m vi&#7879;c g� &#273;�\r\n                                                    \r\n                                                    '),(80,'Từ vựng cho chủ đề Voice message ','hÃ¬nh5.jpg','Reach: &#273;&#432;&#7907;c n&#7889;i &#273;&#7871;n\r\nTechnical problem: s&#7921; c&#7889; k&#7929; thu&#7853;t\r\nExtension: s&#7889; n&#7897;i b&#7897;, s&#7889; m�y nhanh (ext.)\r\n\r\nRegular hours: gi&#7901; ho&#7841;t &#273;&#7897;ng th&#432;&#7901;ng l&#7879;\r\nCome across: t�nh c&#7901; ph�t hi&#7879;n\r\nPut someone through (&#273;i&#7879;n tho&#7841;i): n&#7889;i m�y v&#7899;i\r\n\r\nAutomated telephone reservation system: h&#7879; th&#7889;ng &#273;&#7863;t tr&#432;&#7899;c qua &#273;i&#7879;n tho&#7841;i t&#7921; &#273;&#7897;ng\r\nPress: nh&#7845;n s&#7889;\r\nAfter the tone: sau khi nghe ti&#7871;ng B�p                                                    \r\n                                                    '),(81,'Toeic - Thời tiết','hinh6.jpg','1. Rain /rein/ (v,n) m&#432;a\r\n2. Snow /sn&#601;&#650;/ (v,n) tuy&#7871;t\r\n3. Hail /he&#618;l/ (v,n) m&#432;a &#273;�\r\n\r\n4. Fog /f&#594;g/ (n) s&#432;&#417;ng m�\r\n5. Storm /st&#596;:m/ (n) b�o\r\n6. Wind /w&#618;nd/ (n) gi�\r\n\r\n7. Thunder/�&#952;&#652;nd&#601;(r)/ (n) s&#7845;m\r\n8. Lightning /�la&#618;tni&#331;/ (n) ch&#7899;p, s�t\r\n9. Thermometer /&#952;&#601;�m&#594;m&#618;t&#601;/ (n) nhi&#7879;t k&#7871;                                                    \r\n                                                    ');
/*!40000 ALTER TABLE `grammarguideline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listenexercise`
--

DROP TABLE IF EXISTS `listenexercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listenexercise` (
  `listenexerciseid` int(11) NOT NULL AUTO_INCREMENT,
  `listenexercisename` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `listenexerciseimage` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `checkcauhoi` int(11) DEFAULT NULL,
  PRIMARY KEY (`listenexerciseid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listenexercise`
--

LOCK TABLES `listenexercise` WRITE;
/*!40000 ALTER TABLE `listenexercise` DISABLE KEYS */;
INSERT INTO `listenexercise` VALUES (2,'Bài tập nghe 1','hinhbtnghe1.png',1);
/*!40000 ALTER TABLE `listenexercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listenquestion`
--

DROP TABLE IF EXISTS `listenquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listenquestion` (
  `listenquestionid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `imagename` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `audiomp3` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `audiogg` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `question` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option1` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option2` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option3` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option4` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `correctanswer` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `listenexerciseid` int(11) DEFAULT NULL,
  PRIMARY KEY (`listenquestionid`),
  KEY `FK_LIQU_LIEX_idx` (`listenexerciseid`),
  CONSTRAINT `FK_LIQU_LIEX` FOREIGN KEY (`listenexerciseid`) REFERENCES `listenexercise` (`listenexerciseid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listenquestion`
--

LOCK TABLES `listenquestion` WRITE;
/*!40000 ALTER TABLE `listenquestion` DISABLE KEYS */;
INSERT INTO `listenquestion` VALUES (5,1,'hinh1_1.jpg','audio1_1.mp3','audio1_1.ogg','Look at the picture and listen to the sentences. Choose the sentence that best describes the picture:','A.','B.','C.','D.','B',2),(6,2,'hinh1_2.jpg','audio1_2.mp3','audio1_2.ogg','Look at the picture and listen to the sentences. Choose the sentence that best describes the picture:','A.','B.','C.','D.','C',2),(7,3,'hinh1_3.jpg','audio1_3.mp3','audio1_3.ogg','Listen to the question and the three responses. Choose the response that best answers the question:','A.','B.','C.','D.','A',2),(8,4,'hinh1_4.jpg','audio1_4.mp3','audio1_4.ogg','Listen to the question and the three responses. Choose the response that best answers the question:','A.','B.','C.','D.','A',2);
/*!40000 ALTER TABLE `listenquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `memberid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `membername` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `memberpass` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `categorymemberid` int(11) DEFAULT NULL,
  PRIMARY KEY (`memberid`),
  KEY `FK_MB_CMB_idx` (`categorymemberid`),
  CONSTRAINT `FK_MB_CMB` FOREIGN KEY (`categorymemberid`) REFERENCES `categorymember` (`categorymemberid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (14,'admin','admin','123456789',2),(15,'trương tùng lâm','meoiancom','1234567',1),(16,'an',NULL,NULL,1),(17,'adfafsadf',NULL,NULL,1),(18,'asdfsadf','jhgfds','uytrew',1),(19,'an','an','123456789',1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `province` (
  `province_id` int(11) NOT NULL,
  `province_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'Hải Phòng'),(2,'Hà Nội'),(3,'Huế'),(4,'Đà Nẵng'),(5,'Nha Trang'),(6,'Hồ Chí Minh'),(7,'Vũng Tàu'),(8,'Cần Thơ');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readexercise`
--

DROP TABLE IF EXISTS `readexercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `readexercise` (
  `readexeriseid` int(11) NOT NULL AUTO_INCREMENT,
  `readname` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `readimage` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `checkcauhoi` int(11) DEFAULT NULL,
  PRIMARY KEY (`readexeriseid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readexercise`
--

LOCK TABLES `readexercise` WRITE;
/*!40000 ALTER TABLE `readexercise` DISABLE KEYS */;
INSERT INTO `readexercise` VALUES (42,'bài tập đoc 1','contract.jpg',1);
/*!40000 ALTER TABLE `readexercise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readquestion`
--

DROP TABLE IF EXISTS `readquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `readquestion` (
  `readquestionid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `paragraph` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `question` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option1` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option2` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option3` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `option4` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `correctanswer` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `readexeriseid` int(11) DEFAULT NULL,
  PRIMARY KEY (`readquestionid`),
  KEY `FK_REQU_REEX_idx` (`readexeriseid`),
  CONSTRAINT `FK_REQU_REEX` FOREIGN KEY (`readexeriseid`) REFERENCES `readexercise` (`readexeriseid`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readquestion`
--

LOCK TABLES `readquestion` WRITE;
/*!40000 ALTER TABLE `readquestion` DISABLE KEYS */;
INSERT INTO `readquestion` VALUES (70,1,'','I don\'t think he will remember the appointment …… you remind him.','A. so','B. if','C. unless','D. lest','D',42),(71,2,'','The river has overflowed his banks ……. it has been raining continuously for several days.','A. still','B.  Yet','C. when','D. as','B',42),(72,3,'','Those village folk are poor ……. they always seem so contented.','A. though','B. since','C. yet','D. or','A',42),(73,4,'','…….. he was not interested in music, he agreed to go to the concert.','A.  Thought','B. while','C. for','D. since','D',42);
/*!40000 ALTER TABLE `readquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `result` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `correctanswernum` int(11) DEFAULT NULL,
  `incorrectanswernum` int(11) DEFAULT NULL,
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `examinationid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `correctanswerread` int(11) DEFAULT NULL,
  `correctanswerlisten` int(11) DEFAULT NULL,
  PRIMARY KEY (`resultid`),
  KEY `FK_EX_RE_idx` (`memberid`),
  KEY `FK_EX_RE_idx1` (`examinationid`),
  CONSTRAINT `FK_EX_RE` FOREIGN KEY (`examinationid`) REFERENCES `examination` (`examinationid`),
  CONSTRAINT `FK_MEM_RE` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberid`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (79,0,10,'Sat Nov 05 11:56:44 ICT 2016',26,15,NULL,NULL),(80,3,7,'Sat Nov 05 12:09:30 ICT 2016',26,15,NULL,NULL),(81,2,8,'Sat Nov 05 12:10:13 ICT 2016',26,15,NULL,NULL),(82,6,4,'Sat Nov 05 12:28:45 ICT 2016',26,15,NULL,NULL),(83,5,5,'Sat Nov 05 12:33:58 ICT 2016',26,15,NULL,NULL),(84,5,5,'Sat Nov 05 13:00:13 ICT 2016',26,15,2,3),(85,5,5,'Sat Nov 05 13:00:47 ICT 2016',26,15,2,3),(86,3,7,'Sat Nov 05 22:27:55 ICT 2016',26,15,0,3);
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slidebanner`
--

DROP TABLE IF EXISTS `slidebanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `slidebanner` (
  `slidebannerid` int(11) NOT NULL,
  `slidename` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `slidecontent` text CHARACTER SET utf8 COLLATE utf8_swedish_ci,
  `slideimage` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`slidebannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slidebanner`
--

LOCK TABLES `slidebanner` WRITE;
/*!40000 ALTER TABLE `slidebanner` DISABLE KEYS */;
INSERT INTO `slidebanner` VALUES (1,'Cung Cấp Dạng Bài Tập Nghe, Đọc','Chúng tôi cung cấp cho các bạn các dạng bài tập hay, bổ ích','slide2.jpg'),(2,'Thi Thử Toeic Online','Sau khi có kiến thức vững vàng, các bạn sẽ được trải nghiệm thi online','slide3.jpg');
/*!40000 ALTER TABLE `slidebanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `FK_Student_Province_idx` (`province_id`),
  CONSTRAINT `FK_Student_Province` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabularycontent`
--

DROP TABLE IF EXISTS `vocabularycontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vocabularycontent` (
  `vocabularycontentid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `vocabularycontentname` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `transcribe` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `image` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `audiomp3` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `audiogg` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `mean` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `vocabularyguidelineid` int(11) DEFAULT NULL,
  PRIMARY KEY (`vocabularycontentid`),
  KEY `FK_VOCO_VOGU_idx` (`vocabularyguidelineid`),
  CONSTRAINT `FK_VOCO_VOGU` FOREIGN KEY (`vocabularyguidelineid`) REFERENCES `vocabularyguideline` (`vocabularyguidelineid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularycontent`
--

LOCK TABLES `vocabularycontent` WRITE;
/*!40000 ALTER TABLE `vocabularycontent` DISABLE KEYS */;
INSERT INTO `vocabularycontent` VALUES (13,1,'abide by','/ə\'baid/','abide_by.jpg','abide_by.mp3','abide_by.ogg','(v): tôn trọng, tuân theo, giữ (lời)',3),(14,2,'agreement','/ə\'gri:mənt/','agreement.jpg','agreement.mp3','agreement.ogg','(n): hợp đồng, giao kèo, sự đồng ý/thỏa thuận với nhau',3),(15,3,'assurance','/ə\'ʃuərəns/','assurance.jpg','assurance.mp3','assurance.ogg','(n): sự cam đoan, bảo đảm, chắc chắn; sự tin chắc, tự tin',3),(16,4,'cancellation','/,kænse\'leiʃn/','cancellation.jpg','cancellation.mp3','cancellation.ogg','(n): sự bãi bỏ, hủy bỏ',3);
/*!40000 ALTER TABLE `vocabularycontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vocabularyguideline`
--

DROP TABLE IF EXISTS `vocabularyguideline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vocabularyguideline` (
  `vocabularyguidelineid` int(11) NOT NULL AUTO_INCREMENT,
  `vocabularyname` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `vocabularyimage` varchar(45) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `checknoidung` int(11) DEFAULT NULL,
  PRIMARY KEY (`vocabularyguidelineid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vocabularyguideline`
--

LOCK TABLES `vocabularyguideline` WRITE;
/*!40000 ALTER TABLE `vocabularyguideline` DISABLE KEYS */;
INSERT INTO `vocabularyguideline` VALUES (3,'Bài 1: Contracts - Hợp Đồng','contract.jpg',1);
/*!40000 ALTER TABLE `vocabularyguideline` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-30 16:26:42
