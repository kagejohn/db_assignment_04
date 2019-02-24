-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: classicmodels
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payments` (
  `customerNumber` int(11) NOT NULL,
  `checkNumber` varchar(50) NOT NULL,
  `paymentDate` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`customerNumber`,`checkNumber`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customerNumber`) REFERENCES `customers` (`customerNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (103,'HQ336336','2004-10-19',6066.78),(103,'JM555205','2003-06-05',14571.44),(103,'OM314933','2004-12-18',1676.14),(112,'BO864823','2004-12-17',14191.12),(112,'HQ55022','2003-06-06',32641.98),(112,'ND748579','2004-08-20',33347.88),(114,'GG31455','2003-05-20',45864.03),(114,'MA765515','2004-12-15',82261.22),(114,'NP603840','2003-05-31',7565.08),(114,'NR27552','2004-03-10',44894.74),(119,'DB933704','2004-11-14',19501.82),(119,'LN373447','2004-08-08',47924.19),(119,'NG94694','2005-02-22',49523.67),(121,'DB889831','2003-02-16',50218.95),(121,'FD317790','2003-10-28',1491.38),(121,'KI831359','2004-11-04',17876.32),(121,'MA302151','2004-11-28',34638.14),(124,'AE215433','2005-03-05',101244.59),(124,'BG255406','2004-08-28',85410.87),(124,'CQ287967','2003-04-11',11044.30),(124,'ET64396','2005-04-16',83598.04),(124,'HI366474','2004-12-27',47142.70),(124,'HR86578','2004-11-02',55639.66),(124,'KI131716','2003-08-15',111654.40),(124,'LF217299','2004-03-26',43369.30),(124,'NT141748','2003-11-25',45084.38),(128,'DI925118','2003-01-28',10549.01),(128,'FA465482','2003-10-18',24101.81),(128,'FH668230','2004-03-24',33820.62),(128,'IP383901','2004-11-18',7466.32),(129,'DM826140','2004-12-08',26248.78),(129,'ID449593','2003-12-11',23923.93),(129,'PI42991','2003-04-09',16537.85),(131,'CL442705','2003-03-12',22292.62),(131,'MA724562','2004-12-02',50025.35),(131,'NB445135','2004-09-11',35321.97),(141,'AU364101','2003-07-19',36251.03),(141,'DB583216','2004-11-01',36140.38),(141,'DL460618','2005-05-19',46895.48),(141,'HJ32686','2004-01-30',59830.55),(141,'ID10962','2004-12-31',116208.40),(141,'IN446258','2005-03-25',65071.26),(141,'JE105477','2005-03-18',120166.58),(141,'JN355280','2003-10-26',49539.37),(141,'JN722010','2003-02-25',40206.20),(141,'KT52578','2003-12-09',63843.55),(141,'MC46946','2004-07-09',35420.74),(141,'MF629602','2004-08-16',20009.53),(141,'NU627706','2004-05-17',26155.91),(144,'IR846303','2004-12-12',36005.71),(144,'LA685678','2003-04-09',7674.94),(145,'CN328545','2004-07-03',4710.73),(145,'ED39322','2004-04-26',28211.70),(145,'HR182688','2004-12-01',20564.86),(145,'JJ246391','2003-02-20',53959.21),(146,'FP549817','2004-03-18',40978.53),(146,'FU793410','2004-01-16',49614.72),(146,'LJ160635','2003-12-10',39712.10),(148,'BI507030','2003-04-22',44380.15),(148,'DD635282','2004-08-11',2611.84),(148,'KM172879','2003-12-26',105743.00),(148,'ME497970','2005-03-27',3516.04),(151,'BF686658','2003-12-22',58793.53),(151,'GB852215','2004-07-26',20314.44),(151,'IP568906','2003-06-18',58841.35),(151,'KI884577','2004-12-14',39964.63),(157,'HI618861','2004-11-19',35152.12),(157,'NN711988','2004-09-07',63357.13),(161,'BR352384','2004-11-14',2434.25),(161,'BR478494','2003-11-18',50743.65),(161,'KG644125','2005-02-02',12692.19),(161,'NI908214','2003-08-05',38675.13),(166,'BQ327613','2004-09-16',38785.48),(166,'DC979307','2004-07-07',44160.92),(166,'LA318629','2004-02-28',22474.17),(167,'ED743615','2004-09-19',12538.01),(167,'GN228846','2003-12-03',85024.46),(171,'GB878038','2004-03-15',18997.89),(171,'IL104425','2003-11-22',42783.81),(172,'AD832091','2004-09-09',1960.80),(172,'CE51751','2004-12-04',51209.58),(172,'EH208589','2003-04-20',33383.14),(173,'GP545698','2004-05-13',11843.45),(173,'IG462397','2004-03-29',20355.24),(175,'CITI3434344','2005-05-19',28500.78),(175,'IO448913','2003-11-19',24879.08),(175,'PI15215','2004-07-10',42044.77),(177,'AU750837','2004-04-17',15183.63),(177,'CI381435','2004-01-19',47177.59),(181,'CM564612','2004-04-25',22602.36),(181,'GQ132144','2003-01-30',5494.78),(181,'OH367219','2004-11-16',44400.50),(186,'AE192287','2005-03-10',23602.90),(186,'AK412714','2003-10-27',37602.48),(186,'KA602407','2004-10-21',34341.08),(187,'AM968797','2004-11-03',52825.29),(187,'BQ39062','2004-12-08',47159.11),(187,'KL124726','2003-03-27',48425.69),(189,'BO711618','2004-10-03',17359.53),(189,'NM916675','2004-03-01',32538.74),(198,'FI192930','2004-12-06',9658.74),(198,'HQ920205','2003-07-06',6036.96),(198,'IS946883','2004-09-21',5858.56),(201,'DP677013','2003-10-20',23908.24),(201,'OO846801','2004-06-15',37258.94),(202,'HI358554','2003-12-18',36527.61),(202,'IQ627690','2004-11-08',33594.58),(204,'GC697638','2004-08-13',51152.86),(204,'IS150005','2004-09-24',4424.40),(205,'GL756480','2003-12-04',3879.96),(205,'LL562733','2003-09-05',50342.74),(205,'NM739638','2005-02-06',39580.60),(209,'BOAF82044','2005-05-03',35157.75),(209,'ED520529','2004-06-21',4632.31),(209,'PH785937','2004-05-04',36069.26),(211,'BJ535230','2003-12-09',45480.79),(216,'BG407567','2003-05-09',3101.40),(216,'ML780814','2004-12-06',24945.21),(216,'MM342086','2003-12-14',40473.86),(219,'BN17870','2005-03-02',3452.75),(219,'BR941480','2003-10-18',4465.85),(227,'MQ413968','2003-10-31',36164.46),(227,'NU21326','2004-11-02',53745.34),(233,'BOFA23232','2005-05-20',29070.38),(233,'II180006','2004-07-01',22997.45),(233,'JG981190','2003-11-18',16909.84),(239,'NQ865547','2004-03-15',80375.24),(240,'IF245157','2004-11-16',46788.14),(240,'JO719695','2004-03-28',24995.61),(242,'AF40894','2003-11-22',33818.34),(242,'HR224331','2005-06-03',12432.32),(242,'KI744716','2003-07-21',14232.70),(249,'IJ399820','2004-09-19',33924.24),(249,'NE404084','2004-09-04',48298.99),(250,'EQ12267','2005-05-17',17928.09),(250,'HD284647','2004-12-30',26311.63),(250,'HN114306','2003-07-18',23419.47),(256,'EP227123','2004-02-10',5759.42),(256,'HE84936','2004-10-22',53116.99),(259,'EU280955','2004-11-06',61234.67),(259,'GB361972','2003-12-07',27988.47),(260,'IO164641','2004-08-30',37527.58),(260,'NH776924','2004-04-24',29284.42),(276,'EM979878','2005-02-09',27083.78),(276,'KM841847','2003-11-13',38547.19),(276,'LE432182','2003-09-28',41554.73),(276,'OJ819725','2005-04-30',29848.52),(278,'BJ483870','2004-12-05',37654.09),(278,'GP636783','2003-03-02',52151.81),(278,'NI983021','2003-11-24',37723.79),(282,'IA793562','2003-08-03',24013.52),(282,'JT819493','2004-08-02',35806.73),(282,'OD327378','2005-01-03',31835.36),(286,'DR578578','2004-10-28',47411.33),(286,'KH910279','2004-09-05',43134.04),(298,'AJ574927','2004-03-13',47375.92),(298,'LF501133','2004-09-18',61402.00),(299,'AD304085','2003-10-24',36798.88),(299,'NR157385','2004-09-05',32260.16),(311,'DG336041','2005-02-15',46770.52),(311,'FA728475','2003-10-06',32723.04),(311,'NQ966143','2004-04-25',16212.59),(314,'LQ244073','2004-08-09',45352.47),(314,'MD809704','2004-03-03',16901.38),(319,'HL685576','2004-11-06',42339.76),(319,'OM548174','2003-12-07',36092.40),(320,'GJ597719','2005-01-18',8307.28),(320,'HO576374','2003-08-20',41016.75),(320,'MU817160','2003-11-24',52548.49),(321,'DJ15149','2003-11-03',85559.12),(321,'LA556321','2005-03-15',46781.66),(323,'AL493079','2005-05-23',75020.13),(323,'ES347491','2004-06-24',37281.36),(323,'HG738664','2003-07-05',2880.00),(323,'PQ803830','2004-12-24',39440.59),(324,'DQ409197','2004-12-13',13671.82),(324,'FP443161','2003-07-07',29429.14),(324,'HB150714','2003-11-23',37455.77),(328,'EN930356','2004-04-16',7178.66),(328,'NR631421','2004-05-30',31102.85),(333,'HL209210','2003-11-15',23936.53),(333,'JK479662','2003-10-17',9821.32),(333,'NF959653','2005-03-01',21432.31),(334,'CS435306','2005-01-27',45785.34),(334,'HH517378','2003-08-16',29716.86),(334,'LF737277','2004-05-22',28394.54),(339,'AP286625','2004-10-24',23333.06),(339,'DA98827','2003-11-28',34606.28),(344,'AF246722','2003-11-24',31428.21),(344,'NJ906924','2004-04-02',15322.93),(347,'DG700707','2004-01-18',21053.69),(347,'LG808674','2003-10-24',20452.50),(350,'BQ602907','2004-12-11',18888.31),(350,'CI471510','2003-05-25',50824.66),(350,'OB648482','2005-01-29',1834.56),(353,'CO351193','2005-01-10',49705.52),(353,'ED878227','2003-07-21',13920.26),(353,'GT878649','2003-05-21',16700.47),(353,'HJ618252','2005-06-09',46656.94),(357,'AG240323','2003-12-16',20220.04),(357,'NB291497','2004-05-15',36442.34),(362,'FP170292','2004-07-11',18473.71),(362,'OG208861','2004-09-21',15059.76),(363,'HL575273','2004-11-17',50799.69),(363,'IS232033','2003-01-16',10223.83),(363,'PN238558','2003-12-05',55425.77),(379,'CA762595','2005-02-12',28322.83),(379,'FR499138','2003-09-16',32680.31),(379,'GB890854','2004-08-02',12530.51),(381,'BC726082','2004-12-03',12081.52),(381,'CC475233','2003-04-19',1627.56),(381,'GB117430','2005-02-03',14379.90),(381,'MS154481','2003-08-22',1128.20),(382,'CC871084','2003-05-12',35826.33),(382,'CT821147','2004-08-01',6419.84),(382,'PH29054','2004-11-27',42813.83),(385,'BN347084','2003-12-02',20644.24),(385,'CP804873','2004-11-19',15822.84),(385,'EK785462','2003-03-09',51001.22),(386,'DO106109','2003-11-18',38524.29),(386,'HG438769','2004-07-18',51619.02),(398,'AJ478695','2005-02-14',33967.73),(398,'DO787644','2004-06-21',22037.91),(398,'JPMR4544','2005-05-18',615.45),(398,'KB54275','2004-11-29',48927.64),(406,'BJMPR4545','2005-04-23',12190.85),(406,'HJ217687','2004-01-28',49165.16),(406,'NA197101','2004-06-17',25080.96),(412,'GH197075','2004-07-25',35034.57),(412,'PJ434867','2004-04-14',31670.37),(415,'ER54537','2004-09-28',31310.09),(424,'KF480160','2004-12-07',25505.98),(424,'LM271923','2003-04-16',21665.98),(424,'OA595449','2003-10-31',22042.37),(447,'AO757239','2003-09-15',6631.36),(447,'ER615123','2003-06-25',17032.29),(447,'OU516561','2004-12-17',26304.13),(448,'FS299615','2005-04-18',27966.54),(448,'KR822727','2004-09-30',48809.90),(450,'EF485824','2004-06-21',59551.38),(452,'ED473873','2003-11-15',27121.90),(452,'FN640986','2003-11-20',15130.97),(452,'HG635467','2005-05-03',8807.12),(455,'HA777606','2003-12-05',38139.18),(455,'IR662429','2004-05-12',32239.47),(456,'GJ715659','2004-11-13',27550.51),(456,'MO743231','2004-04-30',1679.92),(458,'DD995006','2004-11-15',33145.56),(458,'NA377824','2004-02-06',22162.61),(458,'OO606861','2003-06-13',57131.92),(462,'ED203908','2005-04-15',30293.77),(462,'GC60330','2003-11-08',9977.85),(462,'PE176846','2004-11-27',48355.87),(471,'AB661578','2004-07-28',9415.13),(471,'CO645196','2003-12-10',35505.63),(473,'LL427009','2004-02-17',7612.06),(473,'PC688499','2003-10-27',17746.26),(475,'JP113227','2003-12-09',7678.25),(475,'PB951268','2004-02-13',36070.47),(484,'GK294076','2004-10-26',3474.66),(484,'JH546765','2003-11-29',47513.19),(486,'BL66528','2004-04-14',5899.38),(486,'HS86661','2004-11-23',45994.07),(486,'JB117768','2003-03-20',25833.14),(487,'AH612904','2003-09-28',29997.09),(487,'PT550181','2004-02-29',12573.28),(489,'OC773849','2003-12-04',22275.73),(489,'PO860906','2004-01-31',7310.42),(495,'BH167026','2003-12-26',59265.14),(495,'FN155234','2004-05-14',6276.60),(496,'EU531600','2005-05-25',30253.75),(496,'MB342426','2003-07-16',32077.44),(496,'MN89921','2004-12-31',52166.00);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-24 21:46:28
