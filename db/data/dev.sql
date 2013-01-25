-- MySQL dump 10.13  Distrib 5.1.67, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: fineartsite_development
-- ------------------------------------------------------
-- Server version	5.1.67-0ubuntu0.10.04.1

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
-- Table structure for table `artworks`
--

DROP TABLE IF EXISTS `artworks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artworks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `width` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `img_width` int(11) DEFAULT NULL,
  `img_height` int(11) DEFAULT NULL,
  `year` date DEFAULT NULL,
  `img_file` varchar(255) DEFAULT NULL,
  `thumbnail_file` varchar(255) DEFAULT NULL,
  `series_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artworks`
--

LOCK TABLES `artworks` WRITE;
/*!40000 ALTER TABLE `artworks` DISABLE KEYS */;
INSERT INTO `artworks` VALUES (1,'Lady of Shalott',24,18,588,470,'1981-01-01','artwork/ladyOfShalott.jpg','thumbnails/ladyOfShalott_thumbnail.jpg',1,NULL,NULL,'graphite on paper'),(2,'Trinity',36,48,352,470,'1987-01-01','artwork/trinity','thumbnails/trinity_thumbnail.jpg',2,NULL,NULL,'oil on panel'),(3,'Briar Cow',38,48,380,470,'1987-01-01','artwork/briarCow.jpg','thumbnails/briarCow_thumbnail.jpg',2,NULL,NULL,'oil on panel'),(4,'Goat in Hell',35,48,339,470,'1987-01-01','artwork/goatInHell.jpg','thumbnails/goatInHell_thumbnail.jpg',2,NULL,NULL,'oil on panel'),(5,'Icon',12,24,227,470,'1987-01-01','artwork/icon.jpg','thumbnails/icon_thumbnail.jpg',2,NULL,NULL,'oil on canvas'),(6,'Sacred Cow',48,63,536,700,'1988-01-01','artwork/sacredCow.jpg','thumbnails/sacredCow_thumbnail.jpg',2,NULL,NULL,'oil on panel'),(7,'Kiss of Death',48,36,606,470,'1988-01-01','artwork/kissOfDeath.jpg','thumbnails/kissOfDeath_thumbnail.jpg',2,NULL,NULL,'oil and tempera on panel'),(8,'Horse of Sorrows',24,48,236,470,'1988-01-01','artwork/horseOfSorrows.jpg','thumbnails/horseOfSorrows_thumbnail.jpg',2,NULL,NULL,'oil on canvas'),(9,'Altarpiece',23,13,698,400,'1988-01-01','artwork/altarpiece.jpg','thumbnails/altarpiece_thumbnail.jpg',2,NULL,NULL,'oil and tempera on panel'),(10,'Herd of Athens',55,48,540,470,'1988-01-01','artwork/herdOfAthens.jpg','thumbnails/herdOfAthens_thumbnail.jpg',2,NULL,NULL,'oil on panel'),(11,'The Laughing Cow',15,18,347,470,'1989-01-01','artwork/laughingCow.jpg','thumbnails/laughingCow_thumbnail.jpg',2,NULL,NULL,'oil and tempera on panel'),(12,'The Lord is my Alibi',30,22,626,470,'1996-01-01','artwork/lordIsMyAlibi.jpg','thumbnails/lordIsMyAlibi_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(13,'Thank God I Was Not Born a Woman',22,30,346,470,'1996-01-01','artwork/thankGod.jpg','thumbnails/thankGod_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(14,'We Tell You What to Think',30,19,736,470,'1996-01-01','artwork/weTellYouWhatToThink.jpg','thumbnails/weTellYouWhatToThink_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(15,'Her Worship is the Foundation of Your Manhood',22,29,356,470,'1996-01-01','artwork/worship.jpg','thumbnails/worship_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(16,'The Lord is my Camouflage',24,21.5,527,470,'1997-01-01','artwork/lordIsMyCamouflage.jpg','thumbnails/lordIsMyCamouflage_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(17,'Fear',26,21,569,470,'1997-01-01','artwork/punish.jpg','thumbnails/punish_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(18,'Us and Them',20,30,306,470,'1998-01-01','artwork/usAndThem.jpg','thumbnails/usAndThem_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(19,'The Girls',25.5,18,663,470,'1998-01-01','artwork/temporarilyValuable.jpg','thumbnails/temporarilyValuable_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(20,'Tradition',21.5,23,438,470,'1998-01-01','artwork/tradition.jpg','thumbnails/tradition_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(21,'Shut Up',20.5,30,318,470,'1998-01-01','artwork/shutUp.jpg','thumbnails/shutUp_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(22,'Perversion',22.5,30,355,470,'1998-01-01','artwork/perversion.jpg','thumbnails/perversion_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(23,'Teach It to Your Children',30,22,540,470,'1999-01-01','artwork/teachIt.jpg','thumbnails/teachIt_thumbnail.jpg',3,NULL,NULL,'acrylic on paper'),(24,'Puppy',12,30,196,470,'1989-01-01','artwork/puppy.jpg','thumbnails/puppy_thumbnail.jpg',4,NULL,NULL,'oil and acrylic on canvas'),(25,'Eva Tondo',20.25,20.25,469,470,'0000-00-00','artwork/mandala.jpg','thumbnails/mandala_thumbnail.jpg',4,NULL,NULL,'oil on paper'),(26,'Eva',30,22,625,470,'2000-01-01','artwork/eva.jpg','thumbnails/eva_thumbnail.jpg',4,NULL,NULL,'oil and acrylic on paper'),(27,'Now',30,22,654,470,'2001-01-01','artwork/now.jpg','thumbnails/now_thumbnail.jpg',4,NULL,NULL,'acrylic on paper'),(28,'Zazen',15,15,473,470,'2001-01-01','artwork/zazen.jpg','thumbnails/zazen_thumbnail.jpg',4,NULL,NULL,'acrylic on paper'),(29,'Dawn Spread Out Her Fingertips of Rose',22,30,339,470,'2001-01-01','artwork/dawn.jpg','thumbnails/dawn_thumbnail.jpg',5,NULL,NULL,'acrylic on paper'),(30,'The Winedark Sea',22,30,349,470,'2001-01-01','artwork/winedarkSea.jpg','thumbnails/winedarkSea_thumbnail.jpg',5,NULL,NULL,'acrylic on paper'),(31,'Arboretum',30,22,625,470,'2001-01-01','artwork/arboretum.jpg','thumbnails/arboretum_thumbnail.jpg',5,NULL,NULL,'acrylic on paper'),(32,'Dusk',22,30,324,470,'2001-01-01','artwork/dusk.jpg','thumbnails/dusk_thumbnail.jpg',5,NULL,NULL,'acrylic on paper'),(33,'Winter',30,18,753,450,'2001-01-01','artwork/winter.jpg','thumbnails/winter_thumbnail.jpg',5,NULL,NULL,'acrylic on paper'),(34,'Stillness',30,22,624,470,'2001-01-01','artwork/stillness.jpg','thumbnails/stillness_thumbnail.jpg',5,NULL,NULL,'oil and acrylic on paper'),(35,'Chaos',22,30,355,470,'2002-01-01','artwork/chaos.jpg','thumbnails/chaos_thumbnail.jpg',5,NULL,NULL,'acrylic on paper'),(36,'Waves 1',30,22,624,470,'2003-01-01','artwork/waves1.jpg','thumbnails/waves1_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(37,'Waves 2',30,22,625,470,'2003-01-01','artwork/waves2.jpg','thumbnails/waves2_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(38,'Waves 3',30,22,625,470,'2003-01-01','artwork/waves3.jpg','thumbnails/waves3_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(39,'Waves 4',30,22,621,470,'2004-01-01','artwork/waves4.jpg','thumbnails/waves4_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(40,'Waves 5',30,22,624,470,'2004-01-01','artwork/waves5.jpg','thumbnails/waves5_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(41,'Waves 6',30,22,631,470,'2004-01-01','artwork/waves6.jpg','thumbnails/waves6_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(42,'Waves 7',30,22,633,470,'2004-01-01','artwork/waves7.jpg','thumbnails/waves7_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(43,'Waves 8',30,22,630,470,'2004-01-01','artwork/waves8.jpg','thumbnails/waves8_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(44,'Waves 9',30,22,629,470,'2004-01-01','artwork/waves9.jpg','thumbnails/waves9_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(45,'Waves 10',30,22,633,470,'2004-01-01','artwork/waves10.jpg','thumbnails/waves10_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(46,'Waves 11',30,22,629,470,'2004-01-01','artwork/waves11.jpg','thumbnails/waves11_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(47,'Night Swim 1',15,11,700,470,'2004-01-01','artwork/nightSwim1.jpg','thumbnails/nightSwim1_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(48,'Night Swim 2',15,11,698,470,'2004-01-01','artwork/nightSwim2.jpg','thumbnails/nightSwim2_thumbnail.jpg',6,NULL,NULL,'acrylic on paper'),(49,'Hanuman 1 (In the Middle of the Night)',30,22,557,470,'2007-01-01','artwork/hanuman1.jpg','thumbnails/hanuman1_thumbnail.jpg',7,NULL,NULL,'acrylic on paper'),(50,'Hanuman 2 (The Monkey who Does Not Know He\'s a God)',22,30,350,470,'2007-01-01','artwork/hanuman2.jpg','thumbnails/hanuman2_thumbnail.jpg',7,NULL,NULL,'acrylic on paper'),(51,'Hanuman 3 (The Abyss that Cannot Be Swum)',22,30,349,470,'2007-01-01','artwork/hanuman3.jpg','thumbnails/hanuman3_thumbnail.jpg',7,NULL,NULL,'acrylic on paper'),(52,'Hanuman 4 (Despair and Possibility)',22,30,346,470,'2008-01-01','artwork/hanuman4.jpg','thumbnails/hanuman4_thumbnail.jpg',7,NULL,NULL,'acrylic on paper'),(53,'Hanuman 5 (Transcendence Starts as an Idea)',30,22,633,470,'2008-01-01','artwork/hanuman5.jpg','thumbnails/hanuman5_thumbnail.jpg',7,NULL,NULL,'acrylic on paper'),(54,'Hanuman 6 (Nothing Left to Destroy, Nothing Left to Lose)',22,30,350,470,'2008-01-01','artwork/hanuman6.jpg','thumbnails/hanuman6_thumbnail.jpg',7,NULL,NULL,'acrylic on paper'),(55,'Hanuman 7 (The Abyss that Cannot Be Swum Must Be Leaped)',30,22,627,470,'2008-01-01','artwork/hanuman7.jpg','thumbnails/hanuman7_thumbnail.jpg',7,NULL,NULL,'acrylic on paper'),(56,'Hanuman 8 (From the Air)',30,22,624,470,'2008-01-01','artwork/hanuman8.jpg','thumbnails/hanuman8_thumbnail.jpg',7,NULL,NULL,'acrylic on paper'),(57,'Hanuman 9 (The Place You Thought You Would Never Find)',30,22,629,470,'2008-01-01','artwork/hanuman9.jpg','thumbnails/hanuman9_thumbnail.jpg',7,NULL,NULL,'acrylic on paper'),(58,'Hanuman 10 (True Love)',26.5,22.5,566,470,'2011-01-01','artwork/hanuman10.jpg','thumbnails/hanuman10_thumbnail.jpg',7,NULL,NULL,'acrylic on paper'),(59,'Coven (The Future and a Terrifying Path)',36,48,347,470,'1989-01-01','artwork/coven.jpg','thumbnails/coven_thumbnail.jpg',8,NULL,NULL,'oil on panel'),(60,'The Stick',58,48,564,470,'1989-01-01','artwork/theStick.jpg','thumbnails/theStick_thumbnail.jpg',8,NULL,NULL,'oil on panel'),(61,'Walking Like Rimbaud',48,13,951,350,'2008-01-01','artwork/walkingLikeRimbaud.jpg','thumbnails/walkingLikeRimbaud_thumbnail.jpg',8,NULL,NULL,'acrylic on canvas'),(62,'Lost',11,14,369,470,'2008-01-01','artwork/lost.jpg','thumbnails/lost_thumbnail.jpg',8,NULL,NULL,'acrylic on panel'),(63,'Obstacles and the Path',32,48,313,470,'2008-01-01','artwork/obstacles.jpg','thumbnails/obstacles_thumbnail.jpg',8,NULL,NULL,'acrylic on linen'),(64,'Free',30,35,399,470,'2009-01-01','artwork/free.jpg','thumbnails/free_thumbnail.jpg',8,NULL,NULL,'acrylic on linen'),(65,'Home',24,24,471,470,'2009-01-01','artwork/home.jpg','thumbnails/home_thumbnail.jpg',8,NULL,NULL,'oil on panel'),(66,'Choose Life',22,30,636,470,'2009-01-01','artwork/chooseLife.jpg','thumbnails/chooseLife_thumbnail.jpg',9,NULL,NULL,'acrylic on paper'),(67,'Dying to Protect Us',22.5,24.5,434,470,'2009-01-01','artwork/dyingToProtectUs.jpg','thumbnails/dyingToProtectUs_thumbnail.jpg',9,NULL,NULL,'acrylic on paper'),(68,'My Poisoned Body',30,22,660,470,'2009-01-01','artwork/poisonedBody.jpg','thumbnails/poisonedBody_thumbnail.jpg',9,NULL,NULL,'acrylic on paper'),(69,'Plastics',24,18,630,470,'2009-01-01','artwork/plastics.jpg','thumbnails/plastics_thumbnail.jpg',9,NULL,NULL,'acrylic on panel'),(70,'Vermin (Industry)',22,30,351,470,'2009-01-01','artwork/verminDead.jpg','thumbnails/verminDead_thumbnail.jpg',9,NULL,NULL,'acrylic on paper'),(71,'Vermin (War)',22,30,354,470,'2009-01-01','artwork/verminWolf.jpg','thumbnails/verminWolf_thumbnail.jpg',9,NULL,NULL,'acrylic on paper'),(72,'Pain Spreads Love Heals',20,30,307,470,'2010-01-01','artwork/painSpreadsLoveHeals.jpg','thumbnails/painSpreadsLoveHeals_thumbnail.jpg',9,NULL,NULL,'acrylic on paper'),(73,'Redemption',17.5,30,274,470,'2010-01-01','artwork/redemption.jpg','thumbnails/redemption_thumbnail.jpg',9,NULL,NULL,'acrylic on paper'),(74,'Legions',30,16,799,420,'2010-01-01','artwork/legions.jpg','thumbnails/legions_thumbnail.jpg',9,NULL,NULL,'acrylic on paper'),(75,'War Birds',38.5,21,779,470,'2010-01-01','artwork/warBirds.jpg','thumbnails/warBirds_thumbnail.jpg',9,NULL,NULL,'acrylic on paper'),(76,'Peace Song',43,25.5,755,440,'2010-01-01','artwork/peaceSong.jpg','thumbnails/peaceSong_thumbnail.jpg',9,NULL,NULL,'acrylic on paper'),(77,'Oil',18,24,350,470,'2010-01-01','artwork/cod.jpg','thumbnails/cod_thumbnail.jpg',9,NULL,NULL,'acrylic on panel'),(78,'Safe',16,12,632,470,'2010-01-01','artwork/safe.jpg','thumbnails/safe_thumbnail.jpg',9,NULL,NULL,'acrylic on panel'),(79,'Music of the Spheres',8,8,468,470,'2010-01-01','artwork/musicOfTheSpheres.jpg','thumbnails/musicOfTheSpheres_thumbnail.jpg',9,NULL,NULL,'acrylic on panel'),(80,'Brothers',12,8,585,470,'2010-01-01','artwork/brothers.jpg','thumbnails/brothers_thumbnail.jpg',9,NULL,NULL,'acrylic on panel'),(81,'Calling',12,24,232,470,'2010-01-01','artwork/calling.jpg','thumbnails/calling_thumbnail.jpg',9,NULL,NULL,'acrylic on panel'),(82,'Call and Response',24,48,230,470,'2011-01-01','artwork/callAndResponse.jpg','thumbnails/callAndResponse_thumbnail.jpg',9,NULL,NULL,'acrylic on panel'),(83,'The Fox Who Shot the Hunter with his Own Gun',48,36,626,470,'2011-01-01','artwork/foxWhoShotHunterWithOwnGun.jpg','thumbnails/foxWhoShotHunterWithOwnGun_thumbnail.jpg',9,NULL,NULL,'acrylic on panel'),(84,'Native',8,8,472,470,'2011-01-01','artwork/native.jpg','thumbnails/native_thumbnail.jpg',10,NULL,NULL,'acrylic on panel'),(85,'Seen',12,9,625,470,'2011-01-01','artwork/seen.jpg','thumbnails/seen_thumbnail.jpg',10,NULL,NULL,'acrylic on panel'),(86,'Deer',43,45,436,470,'2012-01-01','artwork/deer.jpg','thumbnails/deer_thumbnail.jpg',10,NULL,NULL,'charcoal on paper'),(87,'Bear',63,42,727,470,'2012-01-01','artwork/bear.jpg','thumbnails/bear_thumbnail.jpg',10,NULL,NULL,'pastel and watercolor on paper'),(88,'Paleolithic Bunny Hunt',45,32,704,470,'2012-01-01','artwork/paleolithicBunnyHunt.jpg','thumbnails/paleolithicBunnyHunt_thumbnail.jpg',10,NULL,NULL,'pastel and watercolor on paper'),(89,'Lynx',45,43,661,470,'2012-01-01','artwork/lynx.jpg','thumbnails/lynx_thumbnail.jpg',10,NULL,NULL,'pastel and watercolor on paper'),(90,'Monster',43,45,436,470,'2012-01-01','artwork/monster.jpg','thumbnails/monster_thumbnail.jpg',10,NULL,NULL,'charcoal on paper'),(91,'Flies',63,18,1050,300,'2012-01-01','artwork/flies.jpg','thumbnails/flies_thumbnail.jpg',10,NULL,NULL,'pastel and watercolor on paper'),(92,'Snake',63,18,1068,300,'2012-01-01','artwork/snake.jpg','thumbnails/snake_thumbnail.jpg',10,NULL,NULL,'pastel, charcoal and watercolor on paper'),(93,'Ravens',63,18,1054,300,'2012-01-01','artwork/ravens.jpg','thumbnails/ravens_thumbnail.jpg',10,NULL,NULL,'pastel, charcoal and watercolor on paper'),(94,'Squirrel as Told by the Dog',63,42,707,470,'2012-01-01','artwork/squirrelAsToldByTheDog.jpg','thumbnails/squirrelAsToldByTheDog_thumbnail.jpg',10,NULL,NULL,'pastel, charcoal and watercolor on paper'),(95,'Hawk',18,63,133,470,'2012-01-01','artwork/hawk.jpg','thumbnails/hawk_thumbnail.jpg',10,NULL,NULL,'pastel, charcoal and watercolor on paper'),(96,'Sparrows',42,55.5,355,470,'2012-01-01','artwork/sparrows.jpg','thumbnails/sparrows_thumbnail.jpg',10,NULL,NULL,'pastel, charcoal and watercolor on paper'),(97,'Mice',63,18,1050,300,'2012-01-01','artwork/mice.jpg','thumbnails/mice_thumbnail.jpg',10,NULL,NULL,'pastel, charcoal and watercolor on paper'),(98,'Squirrel',12,9,624,470,'2012-01-01','artwork/squirrel.jpg','thumbnails/squirrel_thumbnail.jpg',10,NULL,NULL,'acrylic on panel'),(99,'Sparrow',12,9,631,470,'2012-01-01','artwork/sparrow.jpg','thumbnails/sparrow_thumbnail.jpg',10,NULL,NULL,'acrylic on panel'),(100,'Dragon and Serpent',63,18,1064,300,'2012-01-01','artwork/dragonAndSnake.jpg','thumbnails/dragonAndSnake_thumbnail.jpg',11,NULL,NULL,'cont&#233;, pastel and watercolor on paper'),(101,'Baby Jesus Blesses the Dinosaurs',42,42,463,470,'2012-01-01','artwork/babyJesusBlessesTheDinosaurs.jpg','thumbnails/babyJesusBlessesTheDinosaurs_thumbnail.jpg',11,NULL,NULL,'cont&#233;, pastel, charcoal and watercolor on paper');
/*!40000 ALTER TABLE `artworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130106143708'),('20130106144015'),('20130123192243');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'Shalott','1981-01-01','1981-12-31','2013-01-08 13:51:01','2013-01-08 13:51:01'),(2,'Gods and Meat','1986-01-01','1989-12-31','2013-01-08 13:55:38','2013-01-08 13:55:38'),(3,'Thoughtcrime','1995-01-01','2000-12-31','2013-01-08 13:57:39','2013-01-08 13:57:39'),(4,'The Hairy Boddhisattva','1989-01-01','2003-12-31','2013-01-08 13:58:25','2013-01-08 13:58:25'),(5,'Chaos','2001-01-01','2002-12-31','2013-01-08 13:58:54','2013-01-08 13:58:54'),(6,'Waves','2003-01-01','2004-12-31','2013-01-08 13:59:19','2013-01-08 13:59:19'),(7,'Hanuman','2007-01-01','2011-12-31','2013-01-08 13:59:47','2013-01-08 13:59:47'),(8,'The Long Road Home','1989-01-01','2009-12-31','2013-01-08 14:00:42','2013-01-08 14:00:42'),(9,'Peace Songs','2009-01-01','2011-12-31','2013-01-08 14:01:38','2013-01-08 14:01:38'),(10,'Feral','2012-01-01',NULL,'2013-01-08 14:02:20','2013-01-08 14:02:20'),(11,'Missing Myths','2012-11-01',NULL,'2013-01-08 14:02:55','2013-01-08 14:02:55');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-25 16:14:14
