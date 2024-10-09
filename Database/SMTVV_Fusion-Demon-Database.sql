-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: smtvvdemons
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `demons`
--

DROP TABLE IF EXISTS `demons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demons` (
  `Name` varchar(20) NOT NULL DEFAULT 'Pixie',
  `Level` int NOT NULL DEFAULT '1',
  `Race` varchar(20) NOT NULL DEFAULT 'Fairy',
  `IsSpecialFuse` tinyint NOT NULL DEFAULT '0',
  `IsAccident` tinyint NOT NULL DEFAULT '0',
  `Alignment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Name`),
  UNIQUE KEY `Name_UNIQUE` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demons`
--

LOCK TABLES `demons` WRITE;
/*!40000 ALTER TABLE `demons` DISABLE KEYS */;
INSERT INTO `demons` VALUES ('Abaddon',72,'Tyrant',0,0,'Dark-Chaos'),('Abdiel',80,'Herald',1,0,'Light-Law'),('Abdiel (Fallen)',89,'Fallen',1,0,'Neutral-Law'),('Adramelech',71,'Fallen',0,0,'Neutral-Chaos'),('Aeros',12,'Element',0,0,'Light-Neutral'),('Agathion',10,'Yoma',0,0,'Neutral-Law'),('Agrat',68,'Qadistu',1,0,'Neutral-Chaos'),('Aitvaras',17,'Drake',0,0,'Dark-Chaos'),('Alice',40,'Fiend',1,0,'Unknown'),('Alilat',81,'Lady',0,0,'Light-Chaos'),('Amabie',39,'Enigma',0,1,'Light-Chaos'),('Amanozako',76,'Genma',1,0,'Light-Neutral'),('Ame-no-Uzume',22,'Megami',0,0,'Light-Neutral'),('Amon',87,'Tyrant',0,0,'Dark-Chaos'),('Anahita',29,'Megami',1,0,'Light-Neutral'),('Anansi',49,'Genma',1,0,'Light-Neutral'),('Ananta',59,'Dragon',0,0,'Light-Chaos'),('Andras',18,'Fallen',0,0,'Neutral-Chaos'),('Angel',10,'Divine',0,0,'Neutral-Law'),('Anubis',41,'Avatar',0,0,'Light-Neutral'),('Anzu',48,'Raptor',0,0,'Dark-Law'),('Apsaras',16,'Yoma',0,0,'Neutral-Law'),('Aquans',15,'Element',0,0,'Light-Neutral'),('Arahabaki',62,'Kunitsu',0,0,'Light-Chaos'),('Archangel',18,'Divine',0,0,'Neutral-Law'),('Arioch',75,'Tyrant',1,0,'Dark-Chaos'),('Armaiti',53,'Herald',0,0,'Light-Law'),('Artemis',37,'Megami',1,0,'Light-Neutral'),('Asura',84,'Fury',0,0,'Light-Chaos'),('Atavaka',54,'Deity',0,0,'Light-Neutral'),('Atropos',64,'Femme',0,0,'Neutral-Chaos'),('Attis',27,'Kishin',0,0,'Light-Chaos'),('Azazel',61,'Fallen',0,0,'Neutral-Chaos'),('Azumi',11,'Brute',0,0,'Neutral-Chaos'),('Baal',93,'Deity',1,0,'Light-Neutral'),('Baihu',49,'Holy',0,0,'Light-Neutral'),('Baphomet',33,'Vile',0,0,'Dark-Chaos'),('Barong',60,'Avatar',0,0,'Light-Neutral'),('Basilisk',31,'Drake',0,0,'Dark-Chaos'),('Beelzebub',95,'Tyrant',1,0,'Dark-Chaos'),('Belial',92,'Tyrant',0,0,'Dark-Chaos'),('Belphegor',44,'Tyrant',0,0,'Dark-Chaos'),('Berith',24,'Fallen',0,0,'Neutral-Chaos'),('Bicorn',14,'Wilder',0,0,'Neutral-Chaos'),('Bishamonten',58,'Kishin',0,0,'Light-Chaos'),('Black Frost',44,'Night',1,0,'Neutral-Chaos'),('Black Ooze',33,'Foul',0,0,'Dark-Chaos'),('Black Rider',52,'Fiend',1,0,'Unknown'),('Bugs',24,'Wilder',0,0,'Neutral-Chaos'),('Cait Sith',7,'Beast',0,0,'Neutral-Neutral'),('Camael',69,'Herald',0,0,'Light-Law'),('Cerberus',64,'Beast',0,0,'Neutral-Neutral'),('Chernobog',52,'Fury',0,0,'Light-Chaos'),('Cherub',71,'Divine',0,0,'Neutral-Law'),('Chi You',77,'Tyrant',0,0,'Dark-Chaos'),('Chimera',55,'Holy',0,0,'Light-Neutral'),('Cironnup',27,'Holy',0,0,'Light-Neutral'),('Cleopatra',61,'Femme',1,0,'Neutral-Chaos'),('Clotho',52,'Femme',0,0,'Neutral-Chaos'),('Cu Chulainn',52,'Genma',0,0,'Light-Neutral'),('Cybele',56,'Lady',0,0,'Light-Chaos'),('Daemon',7,'Brute',0,0,'Neutral-Chaos'),('Dagda',80,'Deity',1,0,'Light-Neutral'),('Daisoujou',30,'Fiend',1,0,'Unknown'),('Dakini',46,'Femme',0,0,'Neutral-Chaos'),('Danu',93,'Lady',1,0,'Light-Chaos'),('Decarabia',55,'Fallen',0,0,'Neutral-Chaos'),('Demeter',76,'Megami',0,0,'Light-Law'),('Dionysus',44,'Fury',0,0,'Light-Chaos'),('Dis',31,'Yoma',0,0,'Neutral-Law'),('Dominion',50,'Divine',0,0,'Neutral-Law'),('Dormarth',40,'Wilder',0,0,'Neutral-Chaos'),('Efreet',52,'Yoma',0,0,'Neutral-Law'),('Eisheth',66,'Qadistu',1,0,'Neutral-Chaos'),('Eligor',37,'Fallen',0,0,'Neutral-Chaos'),('Erthys',9,'Element',0,0,'Light-Neutral'),('Fafnir',60,'Drake',0,0,'Dark-Chaos'),('Feng Huang',22,'Avian',0,0,'Light-Law'),('Fenrir',65,'Wilder',0,0,'Neutral-Chaos'),('Fionn mac Cumhaill',71,'Genma',1,0,'Light-Neutral'),('Flaemis',18,'Element',0,0,'Light-Neutral'),('Flauros',50,'Fallen',0,0,'Neutral-Chaos'),('Forneus',31,'Fallen',0,0,'Neutral-Chaos'),('Fortuna',15,'Megami',0,0,'Light-Neutral'),('Futsunushi',69,'Wargod',0,0,'Light-Neutral'),('Fuu-Ki',63,'Brute',0,0,'Neutral-Chaos'),('Gabriel',86,'Herald',1,0,'Light-Law'),('Ganesha',57,'Wargod',0,0,'Light-Neutral'),('Garuda',64,'Avian',0,0,'Light-Law'),('Girimekhala',66,'Vile',0,0,'Dark-Law'),('Glasya-Lobolas',59,'Beast',0,0,'Neutral-Neutral'),('Gogmagog',61,'Jirae',0,0,'Neutral-Neutral'),('Gremlin',5,'Jaki',0,0,'Neutral-Chaos'),('Gurulu',68,'Raptor',0,0,'Dark-Law'),('Halphas',11,'Fallen',0,0,'Neutral-Chaos'),('Hanuman',46,'Genma',0,0,'Light-Neutral'),('Hare of Inaba',31,'UMA',0,1,'Neutral-Neutral'),('Hariti',35,'Lady',0,0,'Light-Chaos'),('Hayataro',40,'Holy',1,0,'Light-Neutral'),('Hecatoncheires',55,'Jaki',0,0,'Neutral-Chaos'),('Hell Biker',36,'Fiend',1,0,'Unknown'),('High Pixie',18,'Fairy',1,0,'Neutral-Neutral'),('Horus',42,'Deity',0,0,'Light-Neutral'),('Hua Po',31,'Jirae',0,0,'Neutral-Neutral'),('Huang Long',78,'Dragon',1,0,'Light-Chaos'),('Hydra',53,'Drake',1,0,'Dark-Chaos'),('Idun',42,'Megami',1,0,'Light-Neutral'),('Inanna',87,'Lady',0,0,'Light-Chaos'),('Incubus',22,'Night',0,0,'Neutral-Chaos'),('Inugami',24,'Beast',0,0,'Neutral-Neutral'),('Ippon-Datara',17,'Brute',0,0,'Neutral-Chaos'),('Ishtar',62,'Lady',1,0,'Light-Chaos'),('Isis',46,'Lady',0,0,'Light-Chaos'),('Jack Frost',25,'Fairy',0,0,'Neutral-Neutral'),('Jack-o\'-Lantern',20,'Fairy',0,0,'Neutral-Neutral'),('Jatayu',32,'Avian',0,0,'Light-Law'),('Jikokuten',51,'Kishin',0,0,'Light-Chaos'),('Kaiwan',45,'Night',0,0,'Neutral-Chaos'),('Kali',74,'Femme',0,0,'Neutral-Chaos'),('Karasu Tengu',35,'Brute',0,0,'Neutral-Chaos'),('Kaya-no-Hime',21,'Jirae',0,0,'Neutral-Neutral'),('Kelpie',30,'Fairy',0,0,'Neutral-Neutral'),('Khonsu',62,'Deity',1,0,'Light-Neutral'),('Khonsu Ra',78,'Deity',1,0,'Light-Neutral'),('Kikuri-Hime',24,'Lady',0,0,'Light-Chaos'),('Kin-Ki',49,'Brute',0,0,'Neutral-Chaos'),('King Frost',33,'Tyrant',1,0,'Dark-Chaos'),('Kinmamon',68,'Enigma',0,1,'Light-Chaos'),('Kodama',6,'Jirae',0,0,'Neutral-Neutral'),('Konohana Sakuya',50,'Kunitsu',1,0,'Light-Chaos'),('Koppa Tengu',24,'Yoma',0,0,'Neutral-Law'),('Koropokkur',26,'Jirae',0,0,'Neutral-Neutral'),('Koumokuten',44,'Kishin',0,0,'Light-Chaos'),('Kresnik',60,'Genma',0,0,'Light-Neutral'),('Kudlak',60,'Haunt',0,0,'Dark-Chaos'),('Kumbhanda',41,'Haunt',0,0,'Dark-Chaos'),('Kurama Tengu',39,'Genma',0,0,'Light-Neutral'),('Kushinada-Hime',49,'Kunitsu',0,0,'Light-Chaos'),('Lachesis',58,'Femme',0,0,'Neutral-Chaos'),('Lahmu',48,'Vile',1,0,'Dark-Chaos'),('Lakshmi',70,'Megami',0,0,'Light-Neutral'),('Lamia',36,'Femme',0,0,'Neutral-Chaos'),('Leanan Sidhe',17,'Femme',0,0,'Neutral-Chaos'),('Legion',19,'Foul',0,0,'Dark-Chaos'),('Lilim',32,'Night',0,0,'Neutral-Chaos'),('Lilith',72,'Qadistu',1,0,'Neutral-Chaos'),('Loa',30,'Jaki',0,0,'Neutral-Chaos'),('Loki',56,'Tyrant',0,0,'Dark-Chaos'),('Loup-garou',54,'Beast',0,0,'Neutral-Neutral'),('Lucifer',99,'Devil',1,0,'Dark-Chaos'),('Macabre',43,'Jaki',0,0,'Neutral-Chaos'),('Mad Gasser',48,'Foul',0,0,'Dark-Chaos'),('Mada',76,'Vile',0,0,'Dark-Law'),('Makami',21,'Avatar',0,0,'Light-Neutral'),('Manananggal',25,'Femme',0,0,'Neutral-Chaos'),('Mandrake',6,'Yoma',0,0,'Neutral-Law'),('Mara',67,'Tyrant',0,0,'Dark-Chaos'),('Maria',83,'Megami',0,0,'Light-Law'),('Masakado',94,'Wargod',1,0,'Light-Neutral'),('Mastema',83,'Herald',1,0,'Light-Law'),('Matador',24,'Fiend',1,0,'Unknown'),('Melchizedek',60,'Herald',0,0,'Light-Law'),('Mephisto',79,'Tyrant',1,0,'Dark-Chaos'),('Mermaid',12,'Femme',0,0,'Neutral-Chaos'),('Metatron',95,'Herald',0,0,'Light-Law'),('Michael',90,'Herald',1,0,'Light-Law'),('Mishaguji',42,'Vile',0,0,'Dark-Law'),('Mithras',82,'Tyrant',0,0,'Dark-Chaos'),('Mitra',65,'Deity',0,0,'Light-Neutral'),('Mokoi',16,'Night',0,0,'Neutral-Chaos'),('Moloch',51,'Tyrant',0,0,'Dark-Chaos'),('Mot',63,'Fury',0,0,'Light-Chaos'),('Mother Harlot',64,'Fiend',1,0,'Unknown'),('Mothman',29,'Wilder',0,0,'Neutral-Chaos'),('Muu Shuwuu',38,'Raptor',0,0,'Dark-Law'),('Naamah',63,'Qadishtu',0,0,'Neutral-Chaos'),('Naga',27,'Snake',0,0,'Neutral-Chaos'),('Naga Raja',40,'Snake',0,0,'Neutral-Chaos'),('Nahobeeho',65,'Fairy',1,0,'Neutral-Neutral'),('Narcissus',38,'Jirae',0,0,'Neutral-Neutral'),('Nebiros',67,'Fallen',0,0,'Neutral-Chaos'),('Neko Shogun',5,'Wargod',0,0,'Light-Neutral'),('Nekomata',34,'Beast',0,0,'Neutral-Neutral'),('Nezha Taizi',28,'Wargod',0,0,'Light-Neutral'),('Norn',67,'Megami',1,0,'Light-Neutral'),('Nozuchi',15,'Snake',0,0,'Neutral-Chaos'),('Nue',49,'Wilder',0,0,'Neutral-Chaos'),('Nuwa',80,'Lady',1,0,'Light-Chaos'),('Nuwa (Snake)',89,'Lady',1,0,'Light-Chaos'),('Nyami Nyami',13,'Dragon',0,0,'Light-Chaos'),('Obariyon',12,'Haunt',0,0,'Dark-Chaos'),('Oberon',47,'Fairy',0,0,'Neutral-Neutral'),('Odin',77,'Deity',1,0,'Light-Neutral'),('Okuninushi',55,'Kunitsu',0,0,'Light-Chaos'),('Ongyo-Ki',75,'Brute',0,0,'Neutral-Chaos'),('Oni',23,'Brute',0,0,'Neutral-Chaos'),('Onmoraki',4,'Raptor',0,0,'Dark-Law'),('Onyankopon',50,'Enigma',1,0,'Light-Chaos'),('Orobas',49,'Beast',0,0,'Neutral-Chaos'),('Orthrus',42,'Beast',0,0,'Neutral-Neutral'),('Ose',44,'Fallen',0,0,'Neutral-Chaos'),('Oyamatsumi',40,'Kunitsu',0,0,'Light-Chaos'),('Pale Rider',57,'Fiend',1,0,'Unknown'),('Parvati',35,'Megami',0,0,'Light-Neutral'),('Pazuzu',52,'Vile',0,0,'Dark-Chaos'),('Peallaidh',8,'Wilder',0,0,'Neutral-Chaos'),('Pisaca',31,'Haunt',0,0,'Dark-Chaos'),('Pixie',2,'Fairy',0,0,'Neutral-Neutral'),('Poltergeist',25,'Haunt',0,0,'Dark-Chaos'),('Power',39,'Divine',0,0,'Neutral-Law'),('Preta',3,'Haunt',0,0,'Dark-Chaos'),('Principality',28,'Divine',0,0,'Neutral-Law'),('Qing Long',45,'Dragon',0,0,'Light-Chaos'),('Queen Medb',56,'Night',0,0,'Neutral-Chaos'),('Quetzalcoatl',34,'Dragon',0,0,'Light-Chaos'),('Rakshasa',20,'Jaki',0,0,'Neutral-Chaos'),('Rangda',70,'Femme',0,0,'Neutral-Chaos'),('Raphael',84,'Herald',1,0,'Light-Law'),('Red Rider',47,'Fiend',1,0,'Unknown'),('Samael',88,'Drake',1,0,'Dark-Chaos'),('Sandalphon',88,'Herald',0,0,'Light-Law'),('Sandman',8,'Night',0,0,'Neutral-Chaos'),('Sarasvati',47,'Megami',0,0,'Light-Neutral'),('Satan',99,'Primal',1,0,'Light-Law'),('Saturnus',88,'Vile',0,0,'Dark-Law'),('Scathach',55,'Megami',0,0,'Light-Neutral'),('Senri',43,'Holy',0,0,'Light-Neutral'),('Setanta',35,'Fairy',0,0,'Neutral-Neutral'),('Seth',67,'Drake',0,0,'Dark-Chaos'),('Shiisaa',19,'Holy',0,0,'Light-Neutral'),('Shiki-Ouji',29,'Brute',0,0,'Neutral-Chaos'),('Shiva',96,'Fury',1,0,'Light-Chaos'),('Siegfried',63,'Wargod',0,0,'Light-Neutral'),('Silky',41,'Fairy',0,0,'Neutral-Neutral'),('Skadi',67,'Lady',0,0,'Light-Chaos'),('Slime',1,'Foul',0,0,'Dark-Chaos'),('Sraosha',77,'Herald',0,0,'Light-Law'),('Succubus',38,'Night',0,0,'Neutral-Chaos'),('Sudama',17,'Jirae',0,0,'Neutral-Neutral'),('Sui-Ki',56,'Brute',0,0,'Neutral-Chaos'),('Sukuna-Hikona',37,'Kunitsu',1,0,'Light-Chaos'),('Surt',62,'Tyrant',1,0,'Dark-Chaos'),('Take-Minakata',19,'Kunitsu',0,0,'Light-Chaos'),('Tao',60,'Panagia',0,0,'Light-Law'),('Thor',66,'Kishin',0,0,'Light-Chaos'),('Thoth',33,'Deity',0,0,'Light-Neutral'),('Throne',64,'Divine',0,0,'Neutral-Law'),('Thunderbird',38,'Avian',0,0,'Light-Law'),('Titania',57,'Fairy',0,0,'Neutral-Neutral'),('Trumpeter',73,'Fiend',1,0,'Unknown'),('Tsuchigumo',13,'Jirae',0,0,'Neutral-Neutral'),('Turbo Granny',26,'Foul',1,0,'Dark-Chaos'),('Turdak',11,'Jaki',0,0,'Neutral-Chaos'),('Tzitzimitl',75,'Vile',0,0,'Dark-Law'),('Unicorn',11,'Holy',0,0,'Light-Neutral'),('Uriel',83,'Herald',1,0,'Light-Law'),('Valkyrie',40,'Yoma',0,0,'Neutral-Law'),('Vasuki',74,'Drake',1,0,'Dark-Chaos'),('Vishnu',87,'Deity',0,0,'Light-Neutral'),('Vouivre',20,'Snake',0,0,'Neutral-Chaos'),('Vritra',52,'Dragon',0,0,'Light-Chaos'),('White Rider',43,'Fiend',1,0,'Unknown'),('Xiezhai',29,'Avatar',0,0,'Light-Neutral'),('Xuanwu',23,'Dragon',0,0,'Light-Chaos'),('Yakshini',30,'Femme',0,0,'Neutral-Chaos'),('Yamata-no-Orochi',72,'Snake',0,0,'Neutral-Chaos'),('Yatagarasu',54,'Avian',0,0,'Light-Law'),('Yoko',82,'Panagia',0,0,'Light-Chaos'),('Yoshitsune',45,'Wargod',0,0,'Light-Neutral'),('Yurlungur',50,'Snake',0,0,'Neutral-Chaos'),('Zaou-Gongen',72,'Fury',0,0,'Light-Chaos'),('Zeus',86,'Deity',1,0,'Light-Neutral'),('Zhen',14,'Raptor',0,0,'Dark-Law'),('Zhuque',43,'Avian',0,0,'Light-Law'),('Zouchouten',36,'Kishin',0,0,'Light-Chaos'),('Zun Tun She',9,'Drake',0,0,'Dark-Chaos');
/*!40000 ALTER TABLE `demons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuse`
--

DROP TABLE IF EXISTS `fuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fuse` (
  `RaceID` int NOT NULL AUTO_INCREMENT,
  `RaceName` varchar(45) NOT NULL DEFAULT 'Herald',
  `Herald` varchar(45) DEFAULT NULL,
  `Megami` varchar(45) DEFAULT NULL,
  `Avian` varchar(45) DEFAULT NULL,
  `Divine` varchar(45) DEFAULT NULL,
  `Yoma` varchar(45) DEFAULT NULL,
  `Vile` varchar(45) DEFAULT NULL,
  `Raptor` varchar(45) DEFAULT NULL,
  `Deity` varchar(45) DEFAULT NULL,
  `Wargod` varchar(45) DEFAULT NULL,
  `Avatar` varchar(45) DEFAULT NULL,
  `Holy` varchar(45) DEFAULT NULL,
  `Genma` varchar(45) DEFAULT NULL,
  `Fairy` varchar(45) DEFAULT NULL,
  `Beast` varchar(45) DEFAULT NULL,
  `Jirae` varchar(45) DEFAULT NULL,
  `Fiend` varchar(45) DEFAULT NULL,
  `Jaki` varchar(45) DEFAULT NULL,
  `Wilder` varchar(45) DEFAULT NULL,
  `Fury` varchar(45) DEFAULT NULL,
  `Lady` varchar(45) DEFAULT NULL,
  `Dragon` varchar(45) DEFAULT NULL,
  `Kishin` varchar(45) DEFAULT NULL,
  `Kunitsu` varchar(45) DEFAULT NULL,
  `Femme` varchar(45) DEFAULT NULL,
  `Brute` varchar(45) DEFAULT NULL,
  `Fallen` varchar(45) DEFAULT NULL,
  `Night` varchar(45) DEFAULT NULL,
  `Snake` varchar(45) DEFAULT NULL,
  `Tyrant` varchar(45) DEFAULT NULL,
  `Drake` varchar(45) DEFAULT NULL,
  `Haunt` varchar(45) DEFAULT NULL,
  `Foul` varchar(45) DEFAULT NULL,
  `UMA` varchar(45) DEFAULT NULL,
  `Enigma` varchar(45) DEFAULT NULL,
  `Qadistu` varchar(45) DEFAULT NULL,
  `Panagia` varchar(45) DEFAULT NULL,
  `Devil` varchar(45) DEFAULT NULL,
  `Primal` varchar(45) DEFAULT NULL,
  `Element` varchar(45) DEFAULT NULL,
  `Erthys` int DEFAULT NULL,
  `Aeros` int DEFAULT NULL,
  `Flaemis` int DEFAULT NULL,
  `Aquans` int DEFAULT NULL,
  PRIMARY KEY (`RaceID`,`RaceName`),
  UNIQUE KEY `RaceName_UNIQUE` (`RaceName`),
  UNIQUE KEY `RaceID_UNIQUE` (`RaceID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuse`
--

LOCK TABLES `fuse` WRITE;
/*!40000 ALTER TABLE `fuse` DISABLE KEYS */;
INSERT INTO `fuse` VALUES (1,'Avatar','Avian','Deity','Herald','Fairy','Jirae','None','None','Genma','Genma','Element','Beast','Deity','Kishin','Jirae','Holy','Dragon','None','None','Dragon','Dragon','Fury','Dragon','Dragon','Holy','Kunitsu','Snake','Beast','Dragon','None','None','None','None','Deity','Wargod','Lady',NULL,'None','Herald','Aquans',-1,-1,-1,1),(2,'Avian','Divine','Herald','Element','Yoma','Divine','None','None','Holy','Avatar','Herald','Avatar','Holy','Megami','Fairy','Yoma','Kunitsu','None','None','Herald','Fury','Avatar','Kunitsu','Lady','Megami','Genma','Raptor','Raptor','Kunitsu','None','None','None','None','Megami','Herald','Fury',NULL,'None','Herald','Aeros',-1,1,-1,-1),(3,'Beast','Holy','Fallen','Fairy','Brute','Holy','Wilder','Fairy','Avatar','Fallen','Jirae','Avian','Holy','Night','Element','Yoma','Wilder','Jirae','Fairy','Snake','Snake','Wilder','Avatar','Holy','Night','Femme','Jirae','Wargod','Wilder','Wilder','Foul','Wilder','Wilder','Genma','Avatar','Snake',NULL,'Tyrant','Herald','Erthys',-1,1,1,-1),(4,'Brute','Fairy','Femme','Genma','Jirae','Jaki','Jaki','Haunt','Jirae','Fallen','Kunitsu','Jaki','Kishin','Femme','Femme','Fairy','Haunt','Foul','Beast','Kishin','Kishin','Kunitsu','Femme','Kishin','Fallen','Element','Night','Femme','Dragon','Jaki','Haunt','Foul','Haunt','Wild','Kishin','Kishin',NULL,'Tyrant','Herald','Aquans',1,-1,1,1),(5,'Deity','Vile','Herald','Holy','Herald','Fairy','None','None','Element','Kishin','Genma','Wargod','Wargod','Genma','Avatar','Brute','Herald','None','None','Herald','Holy','Kunitsu','Fury','Fury','Snake','Jirae','Fury','Lady','Beast','None','None','None','None','Avatar','Herald','Fury',NULL,'None','Herald','Flaemis',-1,-1,1,-1),(6,'Devil','None','None','None','Tyrant','Tyrant','Tyrant','Tyrant','None','None','None','None','None','Tyrant','Tyrant','Tyrant','Tyrant','Tyrant','Tyrant','None','None','None','None','None','Tyrant','Tyrant','Tyrant','Tyrant','Tyrant','None','Tyrant','Tyrant','Tyrant','Tyrant','None','Tyrant',NULL,'None','None','None',0,0,0,0),(7,'Divine','Megami','Avian','Yoma','Element','Fallen','Tyrant','Avian','Herald','Holy','Fairy','Avatar','Wargod','Megami','Brute','Fallen','Jirae','Fairy','Raptor','Tyrant','Fairy','Fallen','Snake','Yoma','Megami','Jirae','None','Megami','Fallen','Vile','Raptor','Jaki','Fallen','Holy','Avian','Fallen',NULL,'Tyrant','Herald','Aeros',-1,-1,1,1),(8,'Dragon','Fury','Lady','Avatar','Fallen','Genma','None','None','Kunitsu','Snake','Fury','Wargod','Night','Night','Wilder','Lady','Drake','None','None','Fallen','Fury','Element','Wargod','Snake','Fallen','Kunitsu','Snake','Foul','Fallen','None','None','None','None','Fury','Avatar','Drake',NULL,'None','Herald','Aeros',-1,1,-1,-1),(9,'Drake','None','None','None','Raptor','Night','Wilder','Beast','None','None','None','None','None','Femme','Foul','Jaki','Avian','Brute','Avian','None','None','None','None','None','Foul','Haunt','Raptor','Femme','Wilder','Wilder','Element','Foul','Haunt','Lady','None','Dragon',NULL,'Tyrant','None','Flaemis',1,-1,1,-1),(10,'Enigma','Megami','Deity','Herald','Avian','Megami','None','None','Herald','Deity','Wargod','Avatar','Deity','Megami','Avatar','Lady','Tyrant','None','None','Deity','Megami','Avatar','Wargod','Lady','Megami','Kishin','Avian','Megami','Avatar','None','None','None','None','Avatar','None','Megami',NULL,'None','Herald','None',0,0,0,0),(11,'Fairy','Divine','Wargod','Megami','Megami','Divine','Jaki','Megami','Genma','Genma','Kishin','Beast','Deity','Element','Night','Wargod','Jaki','Jirae','Holy','Deity','Genma','Night','Kunitsu','Yoma','Lady','Femme','Night','Divine','Avian','Haunt','Femme','Femme','Wargod','Beast','Megami','Night',NULL,'Tyrant','Herald','Aeros',1,-1,-1,1),(12,'Fallen','Tyrant','Foul','Raptor','Fallen','Fairy','Raptor','Tyrant','Jirae','Fallen','Kunitsu','Jaki','Kishin','Night','Jirae','Dragon','Tyrant','Foul','Beast','Tyrant','Femme','Snake','Dragon','Fairy','Lady','Night','Element','Brute','Dragon','Drake','Raptor','Yoma','Divine','Beast','Avian','Tyrant',NULL,'Tyrant','Herald','Flaemis',-1,1,1,-1),(13,'Femme','Megami','None','Megami','Megami','Haunt','Jaki','Divine','Snake','Fallen','Holy','Jirae','Kunitsu','Lady','Night','Kunitsu','Lady','Haunt','None','Lady','Brute','Fallen','Jirae','Lad','Element','Fallen','Lady','Brute','Drake','Jaki','Foul','Brute','Brute','Beast','Megami','Lady',NULL,'Tyrant','Herald','Aquans',1,-1,1,1),(14,'Fiend','Wargod','Vile','Kunitsu','Jirae','Night','Tyrant','Beast','Kunitsu','Herald','Kishin','Dragon','Fairy','Jaki','Wilder','Night','None','Haunt','Foul','Kishin','Megami','Drake','Brute','Fury','Lady','Haunt','Tyrant','Femme','Drake','Vile','Avian','Fallen','Tyrant','Beast','Tyrant','Tyrant',NULL,'Tyrant','None','None',0,0,0,0),(15,'Foul','None','None','None','Fallen','Jirae','Tyrant','Wilder','None','None','None','None','None','Wargod','Wilder','Fairy','Tyrant','Brute','Beast','None','None','None','None','None','Brute','Haunt','Divine','Yoma','Beast','Haunt','Haunt','Drake','None','Wilder','None','Night',NULL,'Tyrant','None','None',-1,-1,-1,1),(16,'Fury','Tyrant','Lady','Herald','Tyrant','Night','None','None','Herald','Deity','Dragon','Snake','Kishin','Deity','Snake','Brute','Kishin','None','Wilder','Element','Kishin','Fallen','Tyrant','Kishin','Lady','Kishin','Tyrant','Jirae','Dragon','None','None','None','None','Avatar','Deity','Tyrant',NULL,'None','Herald','Aeros',-1,1,-1,-1),(17,'Genma','Megami','Avian','Holy','Wargod','Night','None','None','Wargod','Deity','Deity','Fairy','Element','Deity','Holy','Night','Deity','None','None','Kishin','Kunitsu','Night','Brute','Lady','Kunitsu','Kishin','Vile','Lady','Wargod','None','None','None','None','Holy','Deity','Kishin',NULL,'None','Herald','Aquans',-1,-1,1,1),(18,'Haunt','None','None','None','Jaki','Brute','Tyrant','Jirae','None','None','None','None','None','Femme','Wild','Femme','Fallen','Megami','Drake','None','None','None','None','None','Brute','Foul','Yoma','Yoma','Drake','Jaki','Foul','Element','Drake','Wild','None','Drute',NULL,'Tyrant','None','Aquans',-1,1,-1,-1),(19,'Herald','Element','Genma','Divine','Megami','Tyrant','None','None','Vile','Vile','Avian','Avian','Megami','Divine','Holy','Deity','Wargod','None','None','Tyrant','Megami','Fury','Megami','Holy','Megami','Fairy','Tyrant','Fallen','Fallen','None','None','None','None','Avatar','Megami','Lady',NULL,'None','None','Flaemis',-1,-1,1,-1),(20,'Holy','Avian','Avian','Avatar','Avatar','Beast','None','None','Wargod','Kishin','Beast','Element','Fairy','Beast','Avian','Beast','Fairy','None','None','Snake','Deity','Wargod','Brute','Fairy','Jirae','Jaki','Beast','Jirae','Dragon','None','None','None','None','Wargod','Avatar','Lady',NULL,'None','Herald','Aeros',-1,-1,1,-1),(21,'Jaki','None','None','None','Fairy','Haunt','Haunt','Wilder','None','None','None','None','None','Jirae','Jirae','Brute','Haunt','Element','Drake','None','None','None','None','None','Drake','Foul','Drake','Jirae','Drake','Vile','Brute','Megami','Brute','Wilder','None','Night',NULL,'Tyrant','None','Flaemis',-1,-1,-1,-1),(22,'Jirae','Deity','Lady','Yoma','Fallen','Fairy','Jaki','Divine','Brute','Kishin','Holy','Beast','Night','Wargod','Yoma','Element','Night','Brute','Beast','Brute','Kishin','Lady','femme','Lady','Kunitsu','Fairy','Dragon','Fairy','Fallen','Night','Drake','Femme','Fairy','Beast','Lady','Lady',NULL,'Tyrant','Herald','Erthys',1,1,-1,-1),(23,'Kishin','Megami','Genma','Kunitsu','Snake','Tyrant','None','None','Fury','Fury','Dragon','Brute','Brute','Kunitsu','Avatar','Femme','Brute','None','None','Tyrant','Femme','Wargod','Element','Fury','Jirae','Femme','Dragon','Tyrant','Dragon','None','None','None','None','Avatar','Wargod','Fury',NULL,'None','Herald','Erthys',1,-1,-1,1),(24,'Kunitsu','Holy','Femme','Lady','Yoma','Genma','None','None','Fury','Deity','Dragon','Fairy','Lady','Yoma','Holy','Lady','Fury','None','None','Kishin','Jirae','Snake','Fury','Element','Lady','Brute','Fairy','Beast','Dragon','None','None','None','None','Holy','Lady','Lady',NULL,'None','Herald','Flaemis',-1,-1,1,-1),(25,'Lady','Megami','Deity','Fury','Fairy','Haunt','None','None','Holy','Kishin','Dragon','Deity','Kunitsu','Genma','Snake','Kishin','Brute','None','None','Kishin','Element','Fury','Femme','Jirae','Brute','Kishin','Femme','Femme','Femme','None','None','None','None','Holy','Megami','Herald',NULL,'None','Herald','Erthys',1,-1,-1,-1),(26,'Megami','Genma','Element','Herald','Avian','Avatar','None','None','Herald','Deity','Deity','Avian','Avian','Wargod','Fallen','Lady','Vile','None','None','Lady','Deity','Lady','Genma','Femme','None','Femme','Foul','Femme','Wargod','None','None','None','None','Holy','Deity','None',NULL,'None','Herald','Aquans',-1,-1,-1,1),(27,'Night','Fallen','Femme','Raptor','Megami','Divine','Tyrant','Megami','Lady','Beast','Beast','Jirae','Lady','Divine','Wargod','Fairy','Femme','Jirae','Brute','Jirae','Femme','Foul','Tyrant','Beast','Brute','Femme','Brute','Element','Yoma','Yoma','Femme','Yoma','Yoma','Wild','Megami','Megami',NULL,'Tyrant','Herald','Erthys',-1,1,-1,-1),(28,'Primal','None','Herald','Herald','Herald','Herald','None','None','Herald','Herald','Herald','Herald','Herald','Herald','Herald','Herald','None','None','None','Herlad','Herald','Herald','Herald','Herald','Herald','Herald','Herald','Herald','Herald','None','None','None','None','Herald','Herald','Herald',NULL,'None','None','None',0,0,0,0),(29,'Qadistu','Lady','None','Fury','Fallen','Femme','Tyrant','Drake','Fury','Tyrant','Lady','Lady','Kishin','Night','Snake','Lady','Tyrant','Night','Drake','Tyrant','Herald','Drake','Fury','Lady','Lady','Kishin','Tyrant','Megami','Drake','Fury','Dragon','Brute','Night','Beast','Megami','None',NULL,'Tyrant','Herald','None',0,0,0,0),(30,'Raptor','None','None','None','Avian','Divne','Drake','Element','None','None','None','None','None','Megami','Fairy','Divine','Beast','Wilder','Beast','None','None','None','None','None','Divine','Haunt','Tyrant','Megami','Vile','Vile','Beast','Jirae','Wilder','Megami','None','Drake',NULL,'Tyrant','None','Aeros',-1,1,1,-1),(31,'Snake','Fallen','Wargod','Kunitsu','Fallen','Night','Drake','Vile','Beast','Kishin','Dragon','Dragon','Wargod','Avian','Wild','Fallen','Drake','Drake','Drake','Dragon','Femme','Fallen','Dragon','Dragon','Drake','Dragon','Dragon','Yoma','Element','Drake','Wilder','Drake','Haunt','Wilder','Avatar','Drake',NULL,'Tyrant','Herald','Flaemis',-1,-1,1,1),(32,'Tyrant','None','None','None','Vile','Vile','Jaki','Vile','None','None','None','None','None','Haunt','Jaki','Night','Vile','Vile','Drake','None','None','None','None','None','Jaki','Jaki','Drake','Yoma','Drake','Element','Wild','Jaki','Haunt','Beast','None','Fury',NULL,'None','None','Flaemis',1,-1,1,-1),(33,'UMA','Avatar','Holy','Megami','Holy','Beast','Wilder','Megami','Avatar','Avatar','Deity','Wargod','Holy','Beast','Genma','Beast','Beast','Wilder','Genma','Avatar','Holy','Fury','Avatar','Holy','Beast','Wilder','Beast','Wilder','Kunitsu','Beast','Lady','Wilder','Kunitsu','None','Avatar','Beast',NULL,'Tyrant','Herald','None',0,0,0,0),(34,'Vile','None','None','None','Tyrant','Jaki','Element','Drake','None','None','None','None','None','Jaki','Wilder','Jaki','Tyrant','Haunt','Raptor','None','None','None','None','None','Jaki','Jaki','Raptor','Tyrant','Drakw','Jaki','Wilder','Tyrant','Tyrant','Wilder','None','Tyrant',NULL,'Tyrant','None','Aquans',-1,-1,-1,1),(35,'Wargod','Vile','Deity','Avatar','Holy','Kishin','None','None','Kishin','Element','Genma','Kishin','Deity','Genma','Fallen','Kishin','Kishin','None','None','Deity','Kishin','Snake','Fury','Deity','Fallen','Fallen','Lady','Beast','Kishin','None','None','None','None','Avatar','Deity','Tyrant',NULL,'Herald','None','Erthys',1,-1,-1,-1),(36,'Wilder','None','None','None','Raptor','Beast','Raptor','Beast','None','None','None','None','None','Holy','Fairy','Beast','Foul','Drake','Element','None','None','None','None','None','None','Beast','Raptor','Brute','Drake','Drake','Avian','Drake','Beast','Genma','None','Drake',NULL,'Tyrant','None','Aquans',-1,-1,1,1),(37,'Yoma','Tyrant','Avatar','Divine','Fallen','Element','Jaki','Divine','Fairy','Kishin','Jirae','Beast','Night','Divine','Holy','Fairy','Night','Haunt','Beast','Night','Haunt','Haunt','Tyrant','Genma','Haunt','Jaki','Fairy','Divine','Night','Vile','Night','Brute','Jirae','Beast','Megami','Femme',NULL,'Tyrant','Herald','Aeros',-1,1,-1,1);
/*!40000 ALTER TABLE `fuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `race`
--

DROP TABLE IF EXISTS `race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `race` (
  `RaceID` int(2) unsigned zerofill NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT 'Fairy',
  PRIMARY KEY (`RaceID`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `RaceID_UNIQUE` (`RaceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `race`
--

LOCK TABLES `race` WRITE;
/*!40000 ALTER TABLE `race` DISABLE KEYS */;
INSERT INTO `race` VALUES (01,'Avatar'),(02,'Avian'),(03,'Beast'),(04,'Brute'),(05,'Deity'),(06,'Devil'),(07,'Divine'),(08,'Dragon'),(09,'Drake'),(10,'Element'),(11,'Enigma'),(12,'Fairy'),(13,'Fallen'),(14,'Femme'),(15,'Fiend'),(16,'Foul'),(17,'Fury'),(18,'Genma'),(19,'Haunt'),(20,'Herald'),(21,'Holy'),(22,'Jaki'),(23,'Jirae'),(24,'Kishin'),(25,'Kunitsu'),(26,'Lady'),(27,'Megami'),(28,'Night'),(29,'Panagia'),(30,'Primal'),(31,'Qadistu'),(32,'Raptor'),(33,'Snake'),(34,'Tyrant'),(35,'UMA'),(36,'Vile'),(37,'Wargod'),(38,'Wilder'),(39,'Yoma');
/*!40000 ALTER TABLE `race` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 18:16:58
