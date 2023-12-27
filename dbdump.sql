-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: team12
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('category1','중식','restaurant1'),('category10','중식','restaurant10'),('category11','중식','restaurant11'),('category12','분식','restaurant12'),('category13','한식','restaurant13'),('category14','일식','restaurant14'),('category15','분식','restaurant15'),('category16','분식','restaurant16'),('category17','한식','restaurant17'),('category18','중식','restaurant18'),('category19','한식','restaurant19'),('category2','????','restaurant2'),('category20','분식','restaurant20'),('category3','한식','restaurant3'),('category4','양식','restaurant4'),('category5','양식','restaurant5'),('category6','한식','restaurant6'),('category7','분식','restaurant7'),('category8','일식','restaurant8'),('category9','일식','restaurant9');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('customer1','Min Soo Lee','mlee@gmail.com','010-0101-0101'),('customer10','Bo Yung Park','bbovlyk@gmail.com','010-1010-1010'),('customer11','Kangho Song','ksong@gmail.com','010-1111-1111'),('customer12','Jenny Kim','ruby@gmail.com','010-1212-1212'),('customer13','Jisoo Kim','sooya@gmail.com','010-1313-1313'),('customer14','Hyori Lee','rilee@gmail.com','010-1414-1414'),('customer15','Sunwoojunga','wooj@gmail.com','010-1515-1515'),('customer16','Sikyung Sung','sksung@gmail.com','010-1616-1616'),('customer17','Hyunjin Seo','hjseo@gmail.com','010-1717-1717'),('customer18','Doo na Bae','doob@gmail.com','010-1818-1818'),('customer19','Hae soo kim','sookim@gmail.com','010-1919-1919'),('customer2','Go Eun Kim','gkim@gmail.com','010-0202-0202'),('customer20','Jung Suk Jo','sjo@gmail.com','010-2020-2020'),('customer21','Eun jin Ahn','eunj@gmail.com','010-2121-2121'),('customer22','Hey kyo Song','kyo@gmail.com','010-2222-2222'),('customer23','Jong Suk Lee','jong@gmail.com','010-2323-2323'),('customer24','Heung min Son','son@gmail.com','010-2424-2424'),('customer25','Yuna Kim','yuna@gmail.com','010-2525-2525'),('customer26','Hodong Kang','hdong@gmail.com','010-2626-2626'),('customer27','Jaesuk Yu','jseok@gmail.com','010-2727-2727'),('customer28','Seho Jo','seho@gmail.com','010-2828-2828'),('customer29','Jinkyung Hong','jink@gmail.com','010-2929-2929'),('customer3','Ji Chul Gong','jgong@gmail.com','010-0303-0303'),('customer30','Gwang Hee Hwang','hghee@gamil.com','010-3030-3030'),('customer31','Miju Lee','miju@gmail.com','010-3131-3131'),('customer32','Jinju lee','jinju@gmail.com','010-3232-3232'),('customer33','Woo Hee Chun','wooh@gmail.com','010-3333-3333'),('customer34','So Yun Jun','syunj@gmail.com','010-3434-3434'),('customer35','Yoona Lim','ylim@gmail.com','010-3535-3535'),('customer36','Yeo Jung Yoon','yoon@gmail.com','010-3636-3636'),('customer37','Jung Kook Jun','jkook@gmail.com','010-3737-3737'),('customer38','Young Ji lee','jilee@gmail.com','010-3838-3838'),('customer39','Lisa La','lalisa@gmail.com','010-3939-3939'),('customer4','Dong Uk Lee','dlee@gmail.com','010-0404-0404'),('customer40','Se Jong Yang','sjyang@gmail.com','010-4040-4040'),('customer41','Dong Yup Shin','shin@gmail.com','010-4141-4141'),('customer42','Da Mi Lee','dami@gmail.com','010-4242-4242'),('customer43','Sarang Choo','love@gmail.com','010-4343-4343'),('customer44','Woo Bin Kim','woobin@gmail.com','010-4444-4444'),('customer45','Hyun Bin','hbin@gmail.com','010-4545-4545'),('customer46','Yejin Son','yejin@gmail.com','010-4646-4646'),('customer47','Ji Hyun Jun','junji@gmail.com','010-4747-4747'),('customer48','So Hyun Kim','sohyu@gmail.com','010-4848-4848'),('customer49','Tae Hee Kim','tebb@gmail.com','010-4949-4949'),('customer5','Eun Woo Cha','echa@gmail.com','010-0505-0505'),('customer50','Ji hoon Jung','bee@gmail.com','010-5050-5050'),('customer6','Suzy Bae','sbae@gmail.com','010-0606-0606'),('customer7','Wonyoung Jang','wjang@gmail.com','010-0707-0707'),('customer8','Yujin Ahn','yahn@gmail.com','010-0808-0808'),('customer9','Jieun Lee','iu@gmail.com','010-0909-0909');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `discount_id` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  `discount_percentage` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`discount_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `discount_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES ('discount1','restaurant1',0,'0% 할인','2021-05-05','2021-05-07'),('discount10','restaurant10',0,'0% 할인','2020-03-06','2020-03-11'),('discount11','restaurant11',5,'5% 할인','2023-11-12','2023-11-16'),('discount12','restaurant12',40,'40% 할인','2024-09-05','2024-09-09'),('discount13','restaurant13',0,'0% 할인','2021-07-24','2021-07-31'),('discount14','restaurant14',15,'15% 할인','2020-03-30','2020-04-03'),('discount15','restaurant15',35,'35% 할인','2020-01-12','2020-01-13'),('discount16','restaurant16',0,'0% 할인','2020-08-12','2020-08-15'),('discount17','restaurant17',0,'0% 할인','2022-03-02','2022-03-05'),('discount18','restaurant18',0,'0% 할인','2021-10-03','2021-10-06'),('discount19','restaurant19',15,'15% 할인','2021-06-26','2021-07-01'),('discount2','restaurant2',10,'10% 할인','2023-10-30','0023-11-06'),('discount20','restaurant20',10,'10% 할인','2020-04-01','2020-04-08'),('discount3','restaurant3',0,'0% 할인','2024-12-10','0024-12-16'),('discount4','restaurant4',0,'0% 할인','2023-04-10','0023-04-16'),('discount5','restaurant5',0,'0% 할인','2022-03-28','0022-03-30'),('discount6','restaurant6',10,'10% 할인','2023-10-09','0023-10-14'),('discount7','restaurant7',5,'5% 할인','2022-07-08','0022-07-14'),('discount8','restaurant8',0,'0% 할인','2021-07-21','0021-07-28'),('discount9','restaurant9',0,'0% 할인','2020-08-26','2020-08-29');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  `menu_id` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`inventory_id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON DELETE CASCADE,
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('inventory1','restaurant1','menu1','마라샹궈',16),('inventory10','restaurant5','menu25','버터 치킨 마카니',66),('inventory11','restaurant6','menu6','듬뿍고구마치즈돈까스',57),('inventory12','restaurant6','menu26','사모님 돈까스',39),('inventory13','restaurant7','menu7','순대떡 볶음',40),('inventory14','restaurant7','menu27','참치밥샌드',37),('inventory15','restaurant8','menu8','가케',41),('inventory16','restaurant8','menu28','츠키미',71),('inventory17','restaurant9','menu9','유아케 등심',32),('inventory18','restaurant9','menu29','치즈돈까스',86),('inventory19','restaurant10','menu10','사천해물자장도삭면',29),('inventory2','restaurant1','menu21','쯔란양고기',39),('inventory20','restaurant10','menu30','새우볶음밥',99),('inventory21','restaurant10','menu41','사천꿔바로우',79),('inventory22','restaurant11','menu11','소롱보',54),('inventory23','restaurant11','menu31','찐만두',68),('inventory24','restaurant11','menu42','군만두',97),('inventory25','restaurant12','menu12','비건김밥',97),('inventory26','restaurant12','menu32','영미김밥',51),('inventory27','restaurant12','menu43','킹새우김밥',46),('inventory28','restaurant13','menu13','생연어샐러드',8),('inventory29','restaurant13','menu33','감바스새우',77),('inventory3','restaurant2','menu2','리코타치즈샐러드',42),('inventory30','restaurant13','menu44','진짜리코타',3),('inventory31','restaurant14','menu14','생연어 유부초밥',28),('inventory32','restaurant14','menu34','참치마요 유부초밥',72),('inventory33','restaurant14','menu45','살몬 크림치즈 아보카도',48),('inventory34','restaurant15','menu15','필리치즈스테이크',73),('inventory35','restaurant15','menu35','서강김밥',17),('inventory36','restaurant15','menu46','우엉김밥',3),('inventory37','restaurant16','menu16','산더미쫄라당',30),('inventory38','restaurant16','menu36','치즈쫄라당',95),('inventory39','restaurant16','menu47','쫄라당',59),('inventory4','restaurant2','menu22','한우스테이크샐러드',77),('inventory40','restaurant17','menu17','닭발 1인분',88),('inventory41','restaurant17','menu37','계란말이',70),('inventory42','restaurant17','menu48','무뼈닭발',20),('inventory43','restaurant18','menu18','치킨 라이스',95),('inventory44','restaurant18','menu38','치킨 라이스 특',45),('inventory45','restaurant18','menu49','상하맥주',78),('inventory46','restaurant19','menu19','톳비빔밥',94),('inventory47','restaurant19','menu39','황태국밥',43),('inventory48','restaurant19','menu50','형아김밥 바다세트',29),('inventory49','restaurant20','menu20','즉석 국물 제주 비트 떡볶이',52),('inventory5','restaurant3','menu3','떡갈비 도시락',91),('inventory50','restaurant20','menu40','함경도 아바이 순대',25),('inventory6','restaurant3','menu23','소불고기 도시락',25),('inventory7','restaurant4','menu4','부라타치즈',54),('inventory8','restaurant4','menu24','마팔디네',49),('inventory9','restaurant5','menu5','탄두리 치킨',2);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menu_id` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES ('menu1','restaurant1','마라샹궈','혼술제격 소 1인분',20000),('menu10','restaurant10','사천해물자장도삭면','신선한 해물이 가득 들어간 도삭면',9000),('menu11','restaurant11','소롱보','Xiaolongbao',6000),('menu12','restaurant12','비건김밥','야채 김밥',3000),('menu13','restaurant13','생연어샐러드','노르웨이 불곰도 반한',9900),('menu14','restaurant14','생연어 유부초밥','노르웨이 생연어가 드음뿍 올라간',3000),('menu15','restaurant15','필리치즈스테이크','두툼한 지단, 치즈, 소고기가 어우러진 미쿡으로 순간이동 시키는 김밥',5500),('menu16','restaurant16','산더미쫄라당','떡 차돌박이 쫄면 라면 당면',17000),('menu17','restaurant17','닭발 1인분 ','매콤달콤한 닭발',16000),('menu18','restaurant18','치킨 라이스','부드러운 닭고기+ 닭육수로 지은 고슬한 밥+ 감칠맛나는 닭국물+ 까이식당 특제소스',10000),('menu19','restaurant19','톳비빔밥','신선한 톳으로 이루어진 비빔밥',8000),('menu2','restaurant2','리코타치즈샐러드','신선한 리코타치즈로 만든 샐러드',16500),('menu20','restaurant20','즉석 국물 제주 비트 떡볶이','조리시간 4~5분 소요',4000),('menu21','restaurant1','쯔란양고기','안주로 제격, 안주로 최고',19000),('menu22','restaurant2','한우스테이크샐러드','한우 채끝으로 만들어진 한우스테이크',28500),('menu23','restaurant3','소불고기 도시락','소불고기로 만든 정성 어린 도시락',15000),('menu24','restaurant4','마팔디네','수제 이탈리안 소시지와 볼로네제 소스, 페페론치노의 매콤한 맛을 낸 마팔디네',22000),('menu25','restaurant5','버터 치킨 마카니','버터, 그림과 인도 향신료를 가미한 매우 부드럽고 달콤한 커리',12000),('menu26','restaurant6','사모님 돈까스','안심 돼지고기를 이용한 돈까스',10000),('menu27','restaurant7','참치밥샌드','참치 주먹밥',4000),('menu28','restaurant8','츠키미','반숙계란 우동',7000),('menu29','restaurant9','치즈돈까스','치즈가 가득 들어간 돈까스',10500),('menu3','restaurant3','떡갈비 도시락','떡갈비로 만든 정성 어린 도시락',12000),('menu30','restaurant10','새우볶음밥','신선한 새우가 들어간 볶음밥',10000),('menu31','restaurant11','찐만두','Steamed dumpling',5500),('menu32','restaurant12','영미김밥','오리지널',3700),('menu33','restaurant13','감바스새우','스페인에서 온 올리브로 조리한',8900),('menu34','restaurant14','참치마요 유부초밥','새로운 맛의 참치마요가 듬뿍 들어있는',2000),('menu35','restaurant15','서강김밥','매운잡채가 입맛을 땡기게 하는 김밥',3500),('menu36','restaurant16','치즈쫄라당','떡 치즈 쫄면 당면 라면',11500),('menu37','restaurant17','계란말이','계란이 듬뿍 들어가있는 계란말이',11000),('menu38','restaurant18','치킨 라이스 특','부드러운 닭고기+ 닭육수로 지은 고슬한 밥+ 감칠맛나는 닭국물+ 까이식당 특제소스',14000),('menu39','restaurant19','황태국밥','공기밥 포함',8000),('menu4','restaurant4','부라타치즈','루꼴라와 샐러드, 후레쉬 부라타치즈, 체리토마토',21000),('menu40','restaurant20','함경도 아바이 순대','유명하고 쫄깃한 순대',4000),('menu41','restaurant10','사천꿔바로우','신선한 기름으로 튀긴 꿔바로우',24000),('menu42','restaurant11','군만두','Fired dumpling',6500),('menu43','restaurant12','킹새우김밥','큰 새우가 들어간 김밥',5500),('menu44','restaurant13','진짜리코타','이태리치즈보다 부드러운',8900),('menu45','restaurant14','살몬 크림치즈 아보카도','생연어와 부드러운 크림치즈에 아보카도까지 끝',8500),('menu46','restaurant15','우엉김밥','우엉 당근 지단 단무지 시금치가 들어있는 기본기 탄탄한 야채김밥',4000),('menu47','restaurant16','쫄라당','떡 쫄면 라면 당면',9000),('menu48','restaurant17','무뼈닭발','무뼈로 조리된 닭발',17000),('menu49','restaurant18','싱하맥주','특정 맥주',6000),('menu5','restaurant5','탄두리 치킨','탄두리 화덕에서 구운 기름기 없는 담백한 바베큐',9000),('menu50','restaurant19','형아김밥 바다세트','8p로 이루어진 김밥',8000),('menu6','restaurant6','듬뿍고구마치즈돈까스','고구마무스가 가득 들어간 치즈 돈까스',12000),('menu7','restaurant7','순대떡 볶음','순대와 떡이 함께',3900),('menu8','restaurant8','가케','기본우동',6500),('menu9','restaurant9','유야케 등심','등심으로 만든 유야케 메인 메뉴',9000);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `restaurant_id` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `order_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('order1','customer1','restaurant1','menu1',1,'2023년 10월 30일 오전 8:00'),('order10','customer10','restaurant10','menu10',2,'2023년 10월 30일 오전 10:15'),('order11','customer11','restaurant11','menu11',3,'2023년 10월 30일 오전 10:30'),('order12','customer12','restaurant12','menu12',4,'2023년 10월 30일 오전 10:45'),('order13','customer13','restaurant13','menu13',3,'2023년 10월 30일 오후 12:00'),('order14','customer14','restaurant14','menu14',2,'2023년 10월 30일 오후 12:15'),('order15','customer15','restaurant15','menu15',2,'2023년 10월 30일 오후 12:30'),('order16','customer16','restaurant16','menu16',2,'2023년 10월 30일 오후 12:45'),('order17','customer17','restaurant17','menu17',1,'2023년 10월 30일 오후 1:00'),('order18','customer18','restaurant18','menu18',1,'2023년 10월 30일 오후 1:15'),('order19','customer19','restaurant19','menu19',1,'2023년 10월 30일 오후 1:30'),('order2','customer2','restaurant2','menu2',1,'2023년 10월 30일 오전 8:15'),('order20','customer20','restaurant20','menu20',1,'2023년 10월 30일 오후 1:45'),('order21','customer21','restaurant1','menu21',5,'2023년 10월 30일 오후 2:00'),('order22','customer22','restaurant2','menu22',1,'2023년 10월 30일 오후 2:15'),('order23','customer23','restaurant3','menu23',3,'2023년 10월 30일 오후 2:30'),('order24','customer24','restaurant4','menu24',2,'2023년 10월 30일 오후 2:45'),('order25','customer25','restaurant5','menu25',1,'2023년 10월 30일 오후 3:00'),('order26','customer26','restaurant6','menu26',4,'2023년 10월 30일 오후 3:15'),('order27','customer27','restaurant7','menu27',4,'2023년 10월 30일 오후 3:30'),('order28','customer28','restaurant8','menu28',3,'2023년 10월 30일 오후 3:45'),('order29','customer29','restaurant9','menu29',2,'2023년 10월 30일 오후 4:00'),('order3','customer3','restaurant3','menu3',2,'2023년 10월 30일 오전 8:30'),('order30','customer30','restaurant10','menu30',1,'2023년 10월 30일 오후 4:15'),('order31','customer31','restaurant11','menu31',1,'2023년 10월 30일 오후 4:30'),('order32','customer32','restaurant12','menu32',1,'2023년 10월 30일 오후 4:45'),('order33','customer33','restaurant13','menu33',5,'2023년 10월 30일 오후 5:00'),('order34','customer34','restaurant14','menu34',4,'2023년 10월 30일 오후 5:15'),('order35','customer35','restaurant15','menu35',1,'2023년 10월 30일 오후 5:30'),('order36','customer36','restaurant16','menu36',1,'2023년 10월 30일 오후 5:45'),('order37','customer37','restaurant17','menu37',1,'2023년 10월 30일 오후 6:00'),('order38','customer38','restaurant18','menu38',1,'2023년 10월 30일 오후 6:15'),('order39','customer39','restaurant19','menu39',2,'2023년 10월 30일 오후 6:30'),('order4','customer4','restaurant4','menu4',1,'2023년 10월 30일 오전 8:45'),('order40','customer40','restaurant20','menu40',2,'2023년 10월 30일 오후 6:45'),('order41','customer41','restaurant1','menu41',2,'2023년 10월 30일 오후 7:00'),('order42','customer42','restaurant2','menu42',1,'2023년 10월 30일 오후 7:15'),('order43','customer43','restaurant3','menu43',3,'2023년 10월 30일 오후 7:30'),('order44','customer44','restaurant4','menu44',1,'2023년 10월 30일 오후 7:45'),('order45','customer45','restaurant5','menu45',2,'2023년 10월 30일 오후 8:00'),('order46','customer46','restaurant6','menu46',1,'2023년 10월 30일 오후 8:15'),('order47','customer47','restaurant7','menu47',1,'2023년 10월 30일 오후 8:30'),('order48','customer48','restaurant8','menu48',1,'2023년 10월 30일 오후 8:45'),('order49','customer49','restaurant9','menu49',1,'2023년 10월 30일 오후 9:00'),('order5','customer5','restaurant5','menu5',2,'2023년 10월 30일 오전 9:00'),('order50','customer50','restaurant10','menu50',1,'2023년 10월 30일 오후 9:15'),('order6','customer6','restaurant6','menu6',3,'2023년 10월 30일 오전 9:15'),('order7','customer7','restaurant7','menu7',1,'2023년 10월 30일 오전 9:30'),('order8','customer8','restaurant8','menu8',1,'2023년 10월 30일 오전 9:45'),('order9','customer9','restaurant9','menu9',1,'2023년 10월 30일 오전 10:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` varchar(255) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_time` time NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES ('payment1','order1',11000,'13:30:00'),('payment10','order10',21000,'13:30:00'),('payment11','order11',11000,'13:50:00'),('payment12','order12',11000,'13:21:40'),('payment13','order13',51000,'13:42:00'),('payment14','order14',14000,'13:17:00'),('payment15','order15',22500,'13:26:00'),('payment16','order16',31500,'12:58:00'),('payment17','order17',40000,'12:30:00'),('payment18','order18',30200,'12:20:00'),('payment19','order19',15000,'12:45:30'),('payment2','order2',12000,'13:00:00'),('payment20','order20',15000,'12:50:30'),('payment21','order21',15000,'12:53:30'),('payment22','order22',12000,'12:56:30'),('payment23','order23',10000,'13:00:00'),('payment24','order24',11000,'13:02:20'),('payment25','order25',32000,'13:14:20'),('payment26','order26',43000,'13:40:29'),('payment27','order27',29000,'13:40:33'),('payment28','order28',11000,'13:20:30'),('payment29','order29',45000,'13:35:20'),('payment3','order3',21000,'13:10:20'),('payment30','order30',12000,'13:40:20'),('payment31','order31',10000,'13:29:30'),('payment32','order32',31000,'13:49:20'),('payment33','order33',39000,'13:38:20'),('payment34','order34',16500,'13:30:20'),('payment35','order35',22000,'13:49:20'),('payment36','order36',22500,'13:20:40'),('payment37','order37',34000,'13:14:20'),('payment38','order38',11000,'13:50:20'),('payment39','order39',12000,'13:37:20'),('payment4','order4',22000,'13:20:00'),('payment40','order40',30000,'13:40:20'),('payment41','order41',21300,'13:42:40'),('payment42','order42',20300,'13:02:40'),('payment43','order43',10000,'14:20:00'),('payment44','order44',10500,'13:30:40'),('payment45','order45',19000,'14:00:30'),('payment46','order46',18000,'14:15:00'),('payment47','order47',17300,'13:50:00'),('payment48','order48',33000,'12:55:00'),('payment49','order49',21000,'12:52:30'),('payment5','order5',35000,'13:40:00'),('payment50','order50',20000,'13:25:10'),('payment6','order6',30000,'13:30:40'),('payment7','order7',20000,'13:45:20'),('payment8','order8',19000,'13:25:00'),('payment9','order9',18000,'13:15:00');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking`
--

DROP TABLE IF EXISTS `ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking` (
  `ranking_id` varchar(225) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  `rank_date` date NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`ranking_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking`
--

LOCK TABLES `ranking` WRITE;
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
INSERT INTO `ranking` VALUES ('rank1','restaurant4','2023-09-13',1),('rank10','restaurant5','2023-07-14',4),('rank11','restaurant19','2021-12-13',3),('rank12','restaurant7','2021-03-29',3),('rank13','restaurant14','2020-06-21',3),('rank14','restaurant12','2020-10-12',4),('rank15','restaurant6','2020-09-08',1),('rank16','restaurant9','2023-10-30',3),('rank17','restaurant15','2022-09-24',4),('rank18','restaurant18','2022-11-23',4),('rank19','restaurant16','2023-06-09',1),('rank2','restaurant17','2023-08-25',4),('rank20','restaurant10','2021-09-19',3),('rank3','restaurant1','2020-03-01',4),('rank4','restaurant2','2020-04-12',5),('rank5','restaurant20','2021-09-27',4),('rank6','restaurant8','2021-01-17',4),('rank7','restaurant3','2021-02-04',3),('rank8','restaurant13','2020-06-24',1),('rank9','restaurant11','2023-12-26',3);
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservations` (
  `reservation_id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  `reservation_time` varchar(255) NOT NULL,
  `num_guests` int(11) NOT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `customer_id` (`customer_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES ('reservation1','customer1','restaurant1','12:10:00',2),('reservation10','customer10','restaurant8','12:25:00',4),('reservation11','customer11','restaurant9','12:35:00',3),('reservation12','customer12','restaurant8','12:30:00',2),('reservation13','customer13','restaurant8','12:30:00',2),('reservation14','customer14','restaurant10','12:35:00',2),('reservation15','customer15','restaurant10','12:40:00',3),('reservation16','customer16','restaurant10','12:40:00',3),('reservation17','customer17','restaurant10','12:45:00',2),('reservation18','customer18','restaurant11','12:45:00',4),('reservation19','customer19','restaurant11','12:50:00',3),('reservation2','customer2','restaurant2','12:00:00',3),('reservation20','customer20','restaurant12','12:50:00',3),('reservation21','customer21','restaurant13','12:55:00',3),('reservation22','customer22','restaurant13','12:55:00',2),('reservation23','customer23','restaurant7','12:25:00',2),('reservation24','customer24','restaurant14','13:00:00',4),('reservation25','customer25','restaurant15','13:10:00',1),('reservation26','customer26','restaurant15','13:10:00',3),('reservation27','customer27','restaurant15','13:15:00',2),('reservation28','customer28','restaurant15','13:15:00',2),('reservation29','customer29','restaurant20','13:20:00',4),('reservation3','customer3','restaurant2','12:00:00',3),('reservation30','customer30','restaurant16','13:20:00',3),('reservation31','customer31','restaurant17','13:25:00',1),('reservation32','customer32','restaurant17','13:25:00',2),('reservation33','customer33','restaurant18','13:30:00',3),('reservation34','customer34','restaurant19','13:30:00',2),('reservation35','customer35','restaurant20','13:35:00',2),('reservation36','customer36','restaurant1','13:35:00',1),('reservation37','customer37','restaurant2','13:40:00',2),('reservation38','customer38','restaurant3','13:40:00',3),('reservation39','customer39','restaurant4','13:45:00',5),('reservation4','customer4','restaurant2','12:00:00',3),('reservation40','customer40','restaurant5','13:45:00',4),('reservation41','customer41','restaurant6','13:50:00',6),('reservation42','customer42','restaurant7','13:50:00',3),('reservation43','customer43','restaurant8','13:55:00',3),('reservation44','customer44','restaurant9','13:55:00',3),('reservation45','customer45','restaurant1','14:00:00',2),('reservation46','customer46','restaurant1','14:00:00',2),('reservation47','customer47','restaurant15','14:05:00',4),('reservation48','customer48','restaurant13','14:05:00',4),('reservation49','customer49','restaurant18','14:10:00',2),('reservation5','customer5','restaurant5','12:15:00',2),('reservation50','customer50','restaurant18','14:10:00',2),('reservation6','customer6','restaurant5','12:15:00',3),('reservation7','customer7','restaurant6','12:20:00',6),('reservation8','customer8','restaurant6','12:20:00',3),('reservation9','customer9','restaurant7','12:25:00',2);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `restaurant_id` varchar(255) NOT NULL,
  `restaurant_name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES ('restaurant1','길상양꼬치','서울 서대문구 연세로5가길 17 (창천동, 2층)','0507-1469-8022'),('restaurant10','란주탕슉','서울 서대문구 이화여대2가길 18','0507-1324-9370'),('restaurant11','미스터서왕만두','서울 서대문구 신촌역로 16 103호 가이아오피스텔','0507-1368-8869'),('restaurant12','영미김밥','서울 서대문구 신촌역로 21 1층','0507-1325-3314'),('restaurant13','초식곳간','서울 서대문구 이화여대2가길 19 1층','0507-1470-5681'),('restaurant14','한끼마끼','서울 서대문구 이화여대1길 15 1층한끼마끼','010-2844-7954'),('restaurant15','롤앤롤김밥','서울 마포구 백범로 74 101호','0507-1302-1034'),('restaurant16','카우떡볶이','서울 서대문구 이화여대길 88-21 1층','02-313-9999'),('restaurant17','아현닭발','서울 서대문구 신촌로 229','02-312-5977'),('restaurant18','까이식당','서울 서대문구 이화여대2가길 24 1층','070-7779-8899'),('restaurant19','한끼의 행복','서울 서대문구 이화여대길 79 3층','02-713-1131'),('restaurant2','벨라비타','서울 서대문구 북아현로 107 1층','0507-1321-9111'),('restaurant20','마포분식','서울 마포구 굴레방로9길 41 1층','0507-1315-1018'),('restaurant3','마더락 신촌점','서울 서대문구 이화여대3길 29 101호','02-365-1757'),('restaurant4','비아37','서울 서대문구 이화여대길 77-1','0507-1363-0908'),('restaurant5','아건','서울 서대문구 이화여대길 37 2층','0507-1405-8771'),('restaurant6','사장님돈까스','서울 서대문구 이화여대7길 11 1층','0507-1460-2280'),('restaurant7','아콘스톨','서울 서대문구 신촌역로 17 1층 110호','0507-1376-1301'),('restaurant8','우미마루','서울 서대문구 신촌역로 18','null'),('restaurant9','유야케도쿄','서울 서대문구 이화여대3길 28 101호','02-6401-7991');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `restaurant_id` (`restaurant_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('review1','restaurant1','customer1',4,'이 음식점의 분위기는 매우 아늑하고 편안합니다.'),('review10','restaurant3','customer10',5,'음식점의 청결 상태가 매우 우수하여 안심하고 식사를 할 수 있었습니다.'),('review11','restaurant3','customer11',1,'조용한 환경이어서 데이트하기에 이상적이었습니다.'),('review12','restaurant3','customer12',5,'주변에 산책로가 있어 식사 후 산책하기에 좋았습니다.'),('review13','restaurant3','customer13',4,'테라스에서 바다 전망이 멋지게 보여서 특별한 기분을 느낄 수 있었습니다.'),('review14','restaurant4','customer14',3,'다양한 어린이용 메뉴가 제공되어 가족들이 만족했습니다.'),('review15','restaurant4','customer15',3,'디저트 메뉴가 다양하여 식사를 달달하게 마무리할 수 있었습니다.'),('review16','restaurant4','customer16',2,'음식의 양이 풍성하여 배부르게 식사를 마칠 수 있었습니다.'),('review17','restaurant5','customer17',5,'분위기가 환하고 좋아서 친구들과 함께 방문하기에 좋았습니다.'),('review18','restaurant5','customer18',5,'다양한 주류 메뉴가 있어 취향에 맞게 선택할 수 있었습니다.'),('review19','restaurant5','customer19',4,'교통이 편리하여 출퇴근하는 동안에도 들러 식사하기에 좋았습니다.'),('review2','restaurant1','customer2',5,'직원들의 서비스는 매우 친절하고 신속합니다.'),('review20','restaurant6','customer20',2,'직원들이 협력적이고 빠르게 응대하여 만족스러웠습니다.'),('review21','restaurant6','customer21',3,'음식의 맛이 항상 일정하여 매번 만족스러운 식사를 즐길 수 있었습니다.'),('review22','restaurant6','customer22',5,'요리사들의 솜씨가 좋아 맛있는 음식을 맛볼 수 있었습니다.'),('review23','restaurant7','customer23',5,'특별한 이벤트나 기념일에 분위기를 맞춰서 좋은 경험을 할 수 있었습니다.'),('review24','restaurant7','customer24',4,'할인 행사나 이벤트가 많아 경제적으로도 만족스러웠습니다.'),('review25','restaurant7','customer25',3,'소음이 적어 대화하기에 편안했습니다.'),('review26','restaurant8','customer26',5,'야외 테라스가 있어 좋은 날씨에 식사하기에 좋았습니다.'),('review27','restaurant8','customer27',4,'방문한 날이 붐비지 않아 조용하게 식사할 수 있었습니다.'),('review28','restaurant8','customer28',2,'가족 모임이나 소규모 연회에 적합한 분위기와 메뉴 구성이 좋았습니다.'),('review29','restaurant9','customer29',5,'데이트하기 좋은 분위기와 조명이 멋졌습니다.'),('review3','restaurant1','customer3',3,'가격대가 합리적이며 음식의 맛 또한 매우 훌륭하여 자주 방문하게 되었습니다.'),('review30','restaurant9','customer30',4,'화장실이 깨끗하고 정리가 잘 되어 편안하게 이용할 수 있었습니다.'),('review31','restaurant9','customer31',5,'가족들과 함께 방문해서 모두가 만족스러워했습니다.'),('review32','restaurant10','customer32',5,'정기적인 청소와 손질이 잘 되어 있어 위생적으로 안심할 수 있었습니다.'),('review33','restaurant10','customer33',5,'공간이 넓어서 사적인 모임을 가질 때에도 편안했습니다.'),('review34','restaurant10','customer34',5,'식사 후에는 다양한 차와 커피가 제공되어 여유로운 시간을 보낼 수 있었습니다.'),('review35','restaurant11','customer35',4,'가게의 인테리어가 세련되어 있어 고급스러운 분위기를 느낄 수 있었습니다.'),('review36','restaurant11','customer36',3,'특별한 주제별 이벤트가 많아서 매번 방문할 때마다 새로운 경험을 할 수 있었습니다.'),('review37','restaurant11','customer37',3,'친구들과 함께 방문해서 활기찬 분위기에서 즐거운 시간을 보낼 수 있었습니다.'),('review38','restaurant12','customer38',4,'특별한 메뉴나 요청에도 친절하게 응대해주어 만족스러웠습니다.'),('review39','restaurant12','customer39',4,'음식의 재료가 신선해서 맛 또한 탁월했습니다.'),('review4','restaurant1','customer4',2,'음식점의 환경 관리가 철저하여 깨끗하고 쾌적한 식사를 즐길 수 있었습니다.'),('review40','restaurant12','customer40',5,'전문적인 솜씨로 조리된 음식들이 식사를 더욱 특별하게 만들어주었습니다.'),('review41','restaurant13','customer41',5,'주방에서 나오는 요리의 향기가 입맛을 돋우어 기대 이상으로 맛있게 느껴졌습니다.'),('review42','restaurant13','customer42',3,'고급스러운 식기와 조명이 음식과 분위기를 더욱 빛나게 해주었습니다.'),('review43','restaurant13','customer43',2,'요리사들의 정성이 느껴져 식사하는 동안 행복한 시간을 보낼 수 있었습니다.'),('review44','restaurant14','customer44',5,'음식의 조리가 빠르고 정확해서 기다리는 시간이 적었습니다.'),('review45','restaurant14','customer45',5,'늘 정성을 다해 준비된 음식들이 고객들에게 감동을 주었습니다.'),('review46','restaurant14','customer46',4,'조용한 음악이 흐르는 배경이 식사하는 동안 눈과 입에 즐거움을 주었습니다.'),('review47','restaurant15','customer47',4,'주방과 음식점의 위생 상태가 우수하여 건강을 생각하며 식사할 수 있었습니다.'),('review48','restaurant15','customer48',4,'음식에 사용된 양념이 조화롭고 균형이 잡혀 맛이 일관되게 좋았습니다.'),('review49','restaurant15','customer49',3,'서빙되는 음식들이 눈에도 잘 어울리는 포장과 소스가 정성스러웠습니다.'),('review5','restaurant2','customer5',5,'다양한 메뉴 선택지가 있어 원하는 음식을 쉽게 고를 수 있었습니다.'),('review50','restaurant16','customer50',5,'가게의 분위기가 고급스러워 특별한 날에 방문하기에 아주 좋았습니다.'),('review51','restaurant16','customer51',4,'특별한 이벤트나 축제에 맞춰서 음식과 분위기를 잘 조성해주어 기분 좋았습니다.'),('review52','restaurant16','customer52',1,'야외 테라스에서 즐기는 식사는 자연과 어우러져 매우 특별했습니다.'),('review53','restaurant16','customer53',5,'친절하고 예의 바른 직원들 덕분에 편안하게 식사를 즐길 수 있었습니다.'),('review54','restaurant17','customer54',3,'깔끔하게 정돈된 식탁이나 음식 준비 과정이 프로페셔널한 인상을 주었습니다.'),('review55','restaurant17','customer55',3,'다채로운 색감과 신선한 재료들이 사용된 음식들이 눈과 입에 즐거움을 선사했습니다.'),('review56','restaurant17','customer56',3,'온 가족이 함께 즐길 수 있는 메뉴 구성이 잘 되어 있어 대가족 모임에도 좋았습니다.'),('review57','restaurant17','customer57',4,'섬세하게 디자인된 디저트가 식사를 마무리하는데 아주 좋은 선택이었습니다.'),('review58','restaurant17','customer58',5,'바다가 보이는 창가 자리에서의 식사는 특별한 경험이 되었습니다.'),('review59','restaurant18','customer59',4,'매 순간 신경 써주시는 서비스와 배려가 너무 감사했습니다.'),('review6','restaurant2','customer6',5,'주차 공간이 넓어 가족과 함께 방문하기에 좋았습니다.'),('review60','restaurant18','customer60',3,'주방에서 나오는 요리 소리와 향기가 식사를 기다리는 동안에도 기대감을 높였습니다.'),('review61','restaurant18','customer61',5,'음식의 맛과 함께 나오는 풍성한 향기가 식사를 더욱 특별하게 만들어주었습니다.'),('review62','restaurant18','customer62',4,'친절하고 전문적인 서비스로 고객들이 편안하게 식사를 즐길 수 있었습니다.'),('review63','restaurant19','customer63',2,'주방과 서빙되는 음식 간의 타이밍이 잘 맞아서 식사의 원활한 흐름을 느낄 수 있었습니다.'),('review64','restaurant19','customer64',5,'신선한 재료와 정성이 담긴 음식들이 건강에 대한 생각을 불러일으켜 주었습니다.'),('review65','restaurant19','customer65',5,'정갈하고 세련된 음식의 서빙이 시각적으로도 만족스러웠습니다.'),('review66','restaurant19','customer66',4,'종종 업데이트되는 메뉴와 이벤트가 고객들에게 다양한 선택지를 제공해 주었습니다.'),('review67','restaurant20','customer67',3,'음식점의 위치가 중심가에 가까워서 접근성이 매우 좋았습니다.'),('review68','restaurant20','customer68',4,'자리 간격이 넓어서 타 테이블과의 거리감을 유지할 수 있어 개인 공간을 느낄 수 있었습니다.'),('review69','restaurant20','customer69',5,'분위기가 따뜻하고 편안해서 여러 시간을 보내기에 좋았습니다.'),('review7','restaurant2','customer7',4,'예약이 용이하여 식사 계획을 원활하게 진행할 수 있었습니다.'),('review70','restaurant20','customer70',3,'정성 어린 음식과 서비스가 함께하는 식사로 특별한 추억을 만들어주었습니다.'),('review8','restaurant2','customer8',4,'분위기와 음식의 조화가 아주 좋아 여유롭게 식사를 즐길 수 있었습니다.'),('review9','restaurant3','customer9',3,'음악이 부드럽고 조용하여 대화를 나누기에 적합했습니다.');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_number` varchar(255) NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `restaurant_id` (`restaurant_id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('S01','restaurant1','Alan Turing','010-0100-0000'),('S02','restaurant5','Ada Lovelace','010-0200-0000'),('S03','restaurant6','Charles Babbage','010-0300-0000'),('S04','restaurant7','Stephen Hawking','010-0400-0000'),('S05','restaurant20','Richard Thaler','010-0500-0000'),('S06','restaurant10','Angela Duckworth','010-0600-0000'),('S07','restaurant13','Noam Chomsky','010-0700-0000'),('S08','restaurant5','Scott Aaronson','010-0800-0000'),('S09','restaurant6','Yuval Noah Harari','010-0900-0000'),('S10','restaurant7','Esther Duflo','010-1000-0000'),('S11','restaurant4','Richard Feynman','010-1100-0000'),('S12','restaurant15','Charles Darwin','010-1200-0000'),('S13','restaurant16','Michelle Simmons','010-1300-0000'),('S14','restaurant4','Jennifer Doudna','010-1400-0000'),('S15','restaurant12','Bill Gates','010-1500-0000'),('S16','restaurant20','Joyce Reynolds','010-1600-0000'),('S17','restaurant11','Larry Page','010-1700-0000'),('S18','restaurant5','Elon Musk','010-1800-0000'),('S19','restaurant7','Judith Butler','010-1900-0000'),('S20','restaurant2','Leonard Hofstadter','010-2000-0000'),('S21','restaurant3','Sheldon Cooper','010-2100-0000'),('S22','restaurant8','Howard Wolowitz','010-2200-0000'),('S23','restaurant19','Albert Einstein','010-2300-0000'),('S24','restaurant17','Isaac Newton','010-2400-0000'),('S25','restaurant9','Thomas Edison','010-2500-0000'),('S26','restaurant1','Justin Bieber','010-2600-0000'),('S27','restaurant5','BLACKPINK','010-2700-0000'),('S28','restaurant6','Ed Sheeran','010-2800-0000'),('S29','restaurant7','Eminem','010-2900-0000'),('S30','restaurant20','Ariana Grande','010-3000-0000'),('S31','restaurant10','BTS','010-3100-0000'),('S32','restaurant13','Taylor Swift','010-3200-0000'),('S33','restaurant5','Katy Perry','010-3300-0000'),('S34','restaurant6','Rihanna','010-3400-0000'),('S35','restaurant7','Billie Eilish','010-3500-0000'),('S36','restaurant4','One Direction','010-3600-0000'),('S37','restaurant15','Maroon 5','010-3700-0000'),('S38','restaurant16','Daddy Yankee','010-3800-0000'),('S39','restaurant4','Ozuna','010-3900-0000'),('S40','restaurant12','J Balvin','010-4000-0000'),('S41','restaurant20','Bruno Mars','010-4100-0000'),('S42','restaurant11','Luis Fonsi','010-4200-0000'),('S43','restaurant5','Selena Gomez','010-4300-0000'),('S44','restaurant7','Shawn Mendes','010-4400-0000'),('S45','restaurant2','Wiz Khalifa','010-4500-0000'),('S46','restaurant3','Adele','010-4600-0000'),('S47','restaurant8','Beyonce','010-4700-0000'),('S48','restaurant19','Nicky Minaj','010-4800-0000'),('S49','restaurant17','The Weekend','010-4900-0000'),('S50','restaurant9','Enrique Iglesias','010-5000-0000');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-19 16:34:03
