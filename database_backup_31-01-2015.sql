/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.1.45-community : Database - acc_database
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`acc_database` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `acc_database`;

/*Table structure for table ` admin` */

DROP TABLE IF EXISTS ` admin`;

CREATE TABLE ` admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(1000) DEFAULT NULL,
  `admin_username` varchar(1000) DEFAULT NULL,
  `admin_password` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table ` admin` */

/*Table structure for table `acc_group` */

DROP TABLE IF EXISTS `acc_group`;

CREATE TABLE `acc_group` (
  `g_name` varchar(255) NOT NULL,
  `g_under` varchar(1000) NOT NULL,
  `acc_g_id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`g_name`),
  KEY `acc_g_id` (`acc_g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

/*Data for the table `acc_group` */

insert  into `acc_group`(`g_name`,`g_under`,`acc_g_id`,`flag`) values ('Asset','Primary',1,1),('Bank','Current Asset',76,0),('Capital Account','Liabilities',67,0),('Current Asset','Asset',62,0),('Current Liabilities','Liabilities',63,1),('Expense','Primary',4,1),('Fixed Asset','Asset',68,0),('Income','Primary',3,1),('Liabilities','Primary',2,1),('Loans(Liability)','Liabilities',66,0),('Park Circus','Soumya Basak',86,1),('Purchase','Expense',78,1),('Soumya Basak','Expense',84,0),('Sundry Creditors','Current Liabilities',65,1),('Sundry Debtors','Current Asset',64,1),('Tax 2015 Vat No. 14567896325648','Current Liabilities',85,1);

/*Table structure for table `ade` */

DROP TABLE IF EXISTS `ade`;

CREATE TABLE `ade` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ade` */

/*Table structure for table `asset` */

DROP TABLE IF EXISTS `asset`;

CREATE TABLE `asset` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

/*Data for the table `asset` */

insert  into `asset`(`l_name`,`debit`,`credit`,`trans_id`,`id`,`date`) values ('ABCCCC','0.00',NULL,NULL,21,NULL),('Imran 210','1245',NULL,NULL,22,NULL),('Soumya','',NULL,NULL,23,NULL),('SoumyaBasak01','0',NULL,NULL,24,NULL),('Santukfxjghlk','12',NULL,NULL,26,NULL),('Ramu','0.00',NULL,NULL,27,NULL);

/*Table structure for table `avffff` */

DROP TABLE IF EXISTS `avffff`;

CREATE TABLE `avffff` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `avffff` */

/*Table structure for table `balance_sheet_temp_1` */

DROP TABLE IF EXISTS `balance_sheet_temp_1`;

CREATE TABLE `balance_sheet_temp_1` (
  `particulars` varchar(10000) DEFAULT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `year` int(11) DEFAULT '2014'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `balance_sheet_temp_1` */

insert  into `balance_sheet_temp_1`(`particulars`,`debit`,`credit`,`year`) values ('Capital Account',0,0,2014),('Current Liabilities',0,0,2014),('  Sundry Creditors',0,0,2014),('  Tax 2015 Vat No. 14567896325648',1245.24,0,2014),('Loans(Liability)',0,0,2014),('Less:Loss',0,240,2014);

/*Table structure for table `balance_sheet_temp_2` */

DROP TABLE IF EXISTS `balance_sheet_temp_2`;

CREATE TABLE `balance_sheet_temp_2` (
  `particulars` varchar(10000) DEFAULT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `yaer` int(11) DEFAULT '2014'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `balance_sheet_temp_2` */

insert  into `balance_sheet_temp_2`(`particulars`,`debit`,`credit`,`yaer`) values ('Current Asset',0,0,2014),('  Bank',0,0,2014),('  Sundry Debtors',-1.22222222222222e+182,0,2014),('Fixed Asset',0,0,2014),('Closing',0,0,2014);

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

/*Data for the table `bank` */

/*Table structure for table `bank_status` */

DROP TABLE IF EXISTS `bank_status`;

CREATE TABLE `bank_status` (
  `vtp_trans_date` varchar(1000) DEFAULT NULL,
  `vtp_ledger` varchar(1000) DEFAULT NULL,
  `vtp_debit` double DEFAULT '0',
  `vtp_credit` double DEFAULT '0',
  `vtp_get_id` varchar(1000) DEFAULT NULL,
  `vtp_type` varchar(1000) DEFAULT NULL,
  `vtp_closing` double DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bank_status` */

/*Table structure for table `capital account` */

DROP TABLE IF EXISTS `capital account`;

CREATE TABLE `capital account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(1000) NOT NULL DEFAULT '',
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table with abuse reports';

/*Data for the table `capital account` */

/*Table structure for table `cash` */

DROP TABLE IF EXISTS `cash`;

CREATE TABLE `cash` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cash` */

/*Table structure for table `cash_status` */

DROP TABLE IF EXISTS `cash_status`;

CREATE TABLE `cash_status` (
  `vtp_trans_date` varchar(1000) DEFAULT NULL,
  `vtp_ledger` varchar(1000) DEFAULT NULL,
  `vtp_debit` double DEFAULT '0',
  `vtp_credit` double DEFAULT '0',
  `vtp_get_id` varchar(1000) DEFAULT NULL,
  `vtp_type` varchar(1000) DEFAULT NULL,
  `vtp_closing` double DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cash_status` */

/*Table structure for table `city_name` */

DROP TABLE IF EXISTS `city_name`;

CREATE TABLE `city_name` (
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

/*Data for the table `city_name` */

insert  into `city_name`(`country_id`,`state_id`,`city_id`,`city_name`) values (114,2067,1,'Howrah'),(114,2067,2,'Kolkata'),(114,2067,3,'Asansol'),(114,2067,4,'Siliguri'),(114,2067,5,'Durgapur'),(114,2067,6,'Bardhaman'),(114,2067,7,'Malda'),(114,2067,8,'Baharampur'),(114,2067,9,'Habra'),(114,2067,10,'Jalpaiguri'),(114,2067,11,'Kharagpur'),(114,2067,12,'Shantipur'),(114,2067,13,'Dankuni'),(114,2067,14,'Dhulian'),(114,2067,15,'Ranaghat'),(114,2067,16,'Haldia'),(114,2067,17,'Raiganj'),(114,2067,18,'Krishnanagar'),(114,2067,19,'Nabadwip'),(114,2067,20,'Medinipur'),(114,2067,21,'Balurghat'),(114,2067,22,'Basirhat'),(114,2067,23,'Bankura'),(114,2067,24,'Chakdaha'),(114,2067,25,'Darjeeling'),(114,2067,26,'Alipurduar'),(114,2067,27,'Purulia'),(114,2067,28,'Jangipur'),(114,2067,29,'Bangaon'),(114,2067,30,'Cooch Behar'),(114,2066,32,'VFHDJK'),(114,2065,33,'Delhi'),(109,1895,34,'dkfhgdkgd'),(1,48,35,'rfgfgf'),(4,2933,36,''),(114,2067,37,'Kolkat');

/*Table structure for table `closing` */

DROP TABLE IF EXISTS `closing`;

CREATE TABLE `closing` (
  `item` varchar(1000) DEFAULT NULL,
  `unit` varchar(1000) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `quantity1` double DEFAULT NULL,
  `closing_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`closing_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `closing` */

/*Table structure for table `company_creation` */

DROP TABLE IF EXISTS `company_creation`;

CREATE TABLE `company_creation` (
  `company_name` varchar(1000) NOT NULL,
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_printable_name` varchar(1000) DEFAULT NULL,
  `company_type` varchar(1000) DEFAULT NULL,
  `company_gender` varchar(1000) DEFAULT NULL,
  `company_owner_name` varchar(1000) DEFAULT NULL,
  `company_address` varchar(1000) DEFAULT NULL,
  `company_city` varchar(1000) DEFAULT NULL,
  `company_state` varchar(1000) DEFAULT NULL,
  `company_country` varchar(1000) DEFAULT NULL,
  `company_pin` varchar(1000) DEFAULT NULL,
  `company_eid` varchar(1000) DEFAULT NULL,
  `company_mobile_no` varchar(1000) DEFAULT NULL,
  `company_ph_no` varchar(1000) DEFAULT NULL,
  `company_fax_no` varchar(1000) DEFAULT NULL,
  `company_url` varchar(1000) DEFAULT NULL,
  `company_fyear` date DEFAULT NULL,
  `company_username` varchar(1000) DEFAULT NULL,
  `company_password` varchar(1000) DEFAULT NULL,
  `company_vat_no` varchar(1000) DEFAULT NULL,
  `company_cst_no` varchar(1000) DEFAULT NULL,
  `company_service_tax` varchar(1000) DEFAULT NULL,
  `company_tan_no` varchar(500) DEFAULT NULL,
  `company_pan` varchar(200) DEFAULT NULL,
  `company_f_year` varchar(1000) DEFAULT NULL,
  KEY `company_id` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `company_creation` */

insert  into `company_creation`(`company_name`,`company_id`,`company_printable_name`,`company_type`,`company_gender`,`company_owner_name`,`company_address`,`company_city`,`company_state`,`company_country`,`company_pin`,`company_eid`,`company_mobile_no`,`company_ph_no`,`company_fax_no`,`company_url`,`company_fyear`,`company_username`,`company_password`,`company_vat_no`,`company_cst_no`,`company_service_tax`,`company_tan_no`,`company_pan`,`company_f_year`) values ('Basuki IT Solution Pvt. Ltd.',2,'Basuki IT Solution Pvt. Ltd.','Item 1','Male','Ajay Agarwal','Jatindas Road','Item 1','Item 1','Item 1','700026','aa&cc.com','0123456789','789','0123456','bbb','2014-02-01','bits','pass','12','34','56','78','90','2015-2016');

/*Table structure for table `company_main_table` */

DROP TABLE IF EXISTS `company_main_table`;

CREATE TABLE `company_main_table` (
  `cmp_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ledger` varchar(255) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT '0',
  `credit` varchar(1000) DEFAULT '0',
  `get_id` varchar(1000) DEFAULT NULL,
  `trans_date` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `narration` varchar(1000) DEFAULT NULL,
  `flag` int(11) DEFAULT '1',
  PRIMARY KEY (`cmp_id`),
  KEY `ledger` (`ledger`),
  CONSTRAINT `FK_company_main_table_ledger` FOREIGN KEY (`ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

/*Data for the table `company_main_table` */

insert  into `company_main_table`(`cmp_id`,`ledger`,`debit`,`credit`,`get_id`,`trans_date`,`type`,`narration`,`flag`) values (73,'Ardhendu Chasdgf','60','0','146546541','01/02/2014','SALE',NULL,1),(74,'Ardhendu Chasdgf','0','60','146546541','01/02/2014','SALE',NULL,1),(75,'Ardhendu Chasdgf','0','400','66646','01/02/2015','PURCHASE',NULL,1),(76,'Ardhendu Chasdgf','400','0','66646','01/02/2015','PURCHASE',NULL,1),(78,'Akash Sen','0','0',NULL,NULL,'Opening',NULL,0),(79,'Soumya Basak 92','0','0',NULL,NULL,'Opening',NULL,0),(80,'Q123','0','0',NULL,NULL,'Opening',NULL,0),(81,'Ardhendu Chasdgf','100','0','sale_inv_11','10-01-2014','SALE',NULL,1),(82,'Ardhendu Chasdgf','0','100','sale_inv_11','10-01-2014','SALE',NULL,1),(83,'fkghkdfg','0','0',NULL,NULL,'Opening',NULL,0),(91,'Ardhendu Chasdgf','0','0',NULL,NULL,'Opening',NULL,0),(93,'Sourav Basak','0','0',NULL,NULL,'Opening',NULL,0),(96,'Software Deve','0','0',NULL,NULL,'Opening',NULL,0),(97,'Soumya Basakk','0','0',NULL,NULL,'Opening',NULL,0),(98,'DFDF','0','0',NULL,NULL,'Opening',NULL,0),(104,'sefsf','0','0',NULL,NULL,'Opening',NULL,0),(107,'Ranjan Singh','1000','0',NULL,NULL,'Opening',NULL,0),(108,'Soumya Basak','0','0',NULL,NULL,'Opening',NULL,0),(109,'Imran 210','1245','0',NULL,NULL,'Opening',NULL,0),(110,'Santu Tax 4%','50000','0',NULL,NULL,'Opening',NULL,0),(111,'SoumyaBasak01','0','0',NULL,NULL,'Opening',NULL,0),(112,'Santu 2015 VAT 20133456&345231 5%','0','1245',NULL,NULL,'Opening',NULL,0),(113,'Soumya_Basak_01','0','0',NULL,NULL,'Opening',NULL,0),(114,'Coconut_Tree-23 Vat No. - 14785296369874','1000000000000000000000000000000000000000000000000','0',NULL,NULL,'Opening',NULL,0),(116,'XYZ@abc.com','122222222222222222222222222222222222222222222222222222224444444444444444444444444444444444444444444876666666666666666666666666666666666666666666666666666666666666666666666666666666666','0',NULL,NULL,'Opening',NULL,0),(117,'Santu Desktop Application Software Vat 34.456%','0','65454',NULL,NULL,'Opening',NULL,0),(119,'Santukfxjghlk','12','0',NULL,NULL,'Opening',NULL,0),(120,'Ramu','0.00','0',NULL,NULL,'Opening',NULL,0),(121,'ggggggg','0.00','0',NULL,NULL,'Opening',NULL,0),(122,'Rahul Enterprise','0.00','0',NULL,NULL,'Opening',NULL,0),(123,'Somu','0.00','0',NULL,NULL,'Opening',NULL,0),(124,'Santu Chall','0.00','0',NULL,NULL,'Opening',NULL,0),(125,'Siiiiii','0.00','0',NULL,NULL,'Opening',NULL,0),(127,'sjgdjhgfjhjhsfgs','0.00','0',NULL,NULL,'Opening',NULL,0),(128,'dgsgsgsgs','0.00','0',NULL,NULL,'Opening',NULL,0),(129,'sdsmhdg mbdvgfjbgsdfv hsdfgweh','0','0.00',NULL,NULL,'Opening',NULL,0);

/*Table structure for table `country_name` */

DROP TABLE IF EXISTS `country_name`;

CREATE TABLE `country_name` (
  `region_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `country_name` varchar(1000) NOT NULL,
  `isd_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `country_name` */

insert  into `country_name`(`region_id`,`country_id`,`country_name`,`isd_code`) values (1,1,'Algeria',213),(1,2,'Angola',244),(1,3,'Benin',229),(1,4,'Botswana',267),(1,5,'Burkina Faso',226),(1,6,'Burundi',257),(1,7,'Cameroon',237),(1,8,'Cape Verde',238),(1,9,'Central African Republic',236),(1,10,'Chad',235),(1,11,'Comoros',269),(1,12,'Congo',242),(1,13,'Congo, Democratic Republic',243),(1,14,'C?te d\'Ivoire (Ivory Coast)',225),(1,15,'Djibouti',253),(1,16,'Egypt',20),(1,17,'Equatorial Guinea',240),(1,18,'Eritrea',291),(1,19,'Ethiopia',251),(1,20,'French Southern Territories',262),(1,21,'Gabon',241),(1,22,'Gambia',220),(1,23,'Ghana',233),(1,24,'Guinea',224),(1,25,'Guinea-Bissau',245),(1,26,'Kenya',254),(1,27,'Lesotho',266),(1,28,'Liberia',231),(1,29,'Libyan Arab Jamahiriya',218),(1,30,'Madagascar',261),(1,31,'Malawi',265),(1,32,'Mali',223),(1,33,'Mauritania',222),(1,34,'Mauritius',230),(1,35,'Mayotte',269),(1,36,'Morocco',212),(1,37,'Mozambique',258),(1,38,'Namibia',264),(1,39,'Niger',227),(1,40,'Nigeria',234),(1,41,'R?union',262),(1,42,'Rwanda',250),(1,43,'Sao Tome and Principe',239),(1,44,'Senegal',221),(1,45,'Seychelles',248),(1,46,'Sierra Leone',232),(1,47,'Somalia',252),(1,48,'South Africa',27),(1,49,'Sudan',249),(1,50,'Swaziland',268),(1,51,'Tanzania, United Republic',255),(1,52,'Togo',228),(1,53,'Tunisia',216),(1,54,'Uganda',256),(1,55,'Western Sahara',685),(1,56,'Zambia',260),(1,57,'Zimbabwe',263),(2,58,'Antigua and Barbuda',268),(2,59,'Bahamas',242),(2,60,'Barbados',246),(2,61,'Belize',501),(2,62,'Canada',1),(2,63,'Costa Rica',506),(2,64,'Cuba',53),(2,65,'Dominica',767),(2,66,'Dominican Republic',809),(2,67,'El Salvador',503),(2,68,'Greenland',299),(2,69,'Grenada',473),(2,70,'Guatemala',502),(2,71,'Haiti',509),(2,72,'Honduras',504),(2,73,'Jamaica',876),(2,74,'Martinique',596),(2,75,'Mexico',52),(2,76,'Montserrat',664),(2,77,'Nicaragua',505),(2,78,'Panama',507),(2,79,'Puerto Rico',787),(2,80,'Saint Kitts and Nevis',1),(2,81,'Saint Lucia',1),(2,82,'Saint Pierre and Miquelon',508),(2,83,'Saint Vincent and the Grenadines',1),(2,84,'Trinidad and Tobago',868),(2,85,'United States',1),(3,86,'Argentina',54),(3,87,'Bolivia',591),(3,88,'Brazil',55),(3,89,'Chile',56),(3,90,'Colombia',57),(3,91,'Ecuador',593),(3,92,'French Guiana',594),(3,93,'Guyana',592),(3,94,'Paraguay',595),(3,95,'Peru',51),(3,96,'Suriname',597),(3,97,'Uruguay',598),(3,98,'Venezuela',58),(3,99,'Virgin Islands, U.S.',1),(4,100,'Antarctica',672),(5,101,'Afghanistan',93),(5,102,'Armenia',374),(5,103,'Azerbaijan',994),(5,104,'Bahrain',973),(5,105,'Bangladesh',880),(5,106,'Bhutan',975),(5,107,'British Indian Ocean Territory',284),(5,108,'Brunei Darussalam',673),(5,109,'Cambodia',855),(5,110,'China',86),(5,111,'Cyprus',357),(5,112,'Georgia',995),(5,113,'Hong Kong',852),(5,114,'India',91),(5,115,'Indonesia',62),(5,116,'Iran',98),(5,117,'Iraq',964),(5,118,'Israel',972),(5,119,'Jordan',962),(5,120,'Kazakhstan',7),(5,121,'Korea (North)',850),(5,122,'Korea (South)',82),(5,123,'Kuwait',965),(5,124,'Kyrgyzstan',996),(5,125,'Lao People\'s Democratic Republic',856),(5,126,'Latvia',371),(5,127,'Lebanon',961),(5,128,'Macao',853),(5,129,'Malaysia',60),(5,130,'Maldives',960),(5,131,'Mongolia',976),(5,132,'Myanmar',95),(5,133,'Nepal',977),(5,134,'Oman',968),(5,135,'Pakistan',92),(5,136,'Palestinian Territory, Occupied',970),(5,137,'Philippines',63),(5,138,'Qatar',974),(5,139,'Russian Federation',7),(5,140,'Saudi Arabia',966),(5,141,'Singapore',65),(5,142,'Sri Lanka',94),(5,143,'Syrian Arab Republic',963),(5,144,'Taiwan, Province of China',886),(5,145,'Tajikistan',7),(5,146,'Thailand',66),(5,147,'Timor-Leste',670),(5,148,'Turkmenistan',993),(5,149,'Ukraine',380),(5,150,'United Arab Emirates',971),(5,151,'Uzbekistan',998),(5,152,'Viet Nam',84),(5,153,'Yemen',967),(6,154,'?land Islands',358),(6,155,'Albania',355),(6,156,'Andorra',376),(6,157,'Austria',43),(6,158,'Belarus',375),(6,159,'Belgium',32),(6,160,'Bosnia and Herzegovina',387),(6,161,'Bulgaria',359),(6,162,'Croatia',385),(6,163,'Czech Republic',420),(6,164,'Denmark',45),(6,165,'Estonia',372),(6,166,'Faroe Islands',298),(6,167,'Finland',358),(6,168,'France',33),(6,169,'Germany',49),(6,170,'Greece',30),(6,171,'Guernsey',44),(6,172,'Hungary',36),(6,173,'Iceland',354),(6,174,'Ireland',353),(6,175,'Isle of Man',44),(6,176,'Italy',39),(6,177,'Jersey',44),(6,178,'Liechtenstein',41),(6,179,'Lithuania',370),(6,180,'Luxembourg',352),(6,181,'Macedonia, former Yugoslav Republic',389),(6,182,'Moldova',373),(6,183,'Monaco',377),(6,184,'Netherlands',31),(6,185,'Norway',47),(6,186,'Poland',48),(6,187,'Portugal',351),(6,188,'Romania',40),(6,189,'San Marino',378),(6,190,'Slovakia',421),(6,191,'Slovenia',286),(6,192,'Spain',34),(6,193,'Svalbard and Jan Mayen',47),(6,194,'Sweden',46),(6,195,'Switzerland',41),(6,196,'United Kingdom',44),(7,197,'American Samoa',1),(7,198,'Australia',61),(7,199,'Fiji',679),(7,200,'French Polynesia',689),(7,201,'Marshall Islands',692),(7,202,'Micronesia',691),(7,203,'Nauru',674),(7,204,'New Caledonia',687),(7,205,'New Zealand',64),(7,206,'Northern Mariana Islands',1),(7,207,'Palau',680),(7,208,'Papua New Guinea',675),(7,209,'Samoa',685),(7,210,'Solomon Islands',677),(7,211,'Tokelau',690),(7,212,'Tonga',676),(7,213,'Tuvalu',688),(7,214,'United States Minor Outlying Islands',1),(7,215,'Vanuatu',678),(7,216,'Wallis and Futuna',681);

/*Table structure for table `credit_note` */

DROP TABLE IF EXISTS `credit_note`;

CREATE TABLE `credit_note` (
  `credit_note_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `credit_note_inv` varchar(1000) DEFAULT NULL,
  `credit_note_date` varchar(1000) DEFAULT NULL,
  `sale_inv` varchar(1000) DEFAULT NULL,
  `credit_note_select` varchar(1000) DEFAULT NULL,
  `credit_note_perticulars` varchar(255) NOT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `credit_narration` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`credit_note_id`),
  KEY `journal_inv` (`credit_note_inv`(255)),
  KEY `credit_note_perticulars` (`credit_note_perticulars`),
  CONSTRAINT `FK_credit_note_ledger` FOREIGN KEY (`credit_note_perticulars`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `credit_note` */

/*Table structure for table `cst` */

DROP TABLE IF EXISTS `cst`;

CREATE TABLE `cst` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cst` */

/*Table structure for table `current asset` */

DROP TABLE IF EXISTS `current asset`;

CREATE TABLE `current asset` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `current asset` */

insert  into `current asset`(`l_name`,`debit`,`credit`,`trans_id`,`id`,`date`) values ('SoumyaBasak123456789','0.00',NULL,NULL,2,NULL);

/*Table structure for table `current liabilities` */

DROP TABLE IF EXISTS `current liabilities`;

CREATE TABLE `current liabilities` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `current liabilities` */

insert  into `current liabilities`(`l_name`,`debit`,`credit`,`trans_id`,`id`,`date`) values ('DFDF','0.00',NULL,NULL,2,NULL);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) NOT NULL,
  `c_under` varchar(1000) DEFAULT NULL,
  `c_dob` varchar(1000) DEFAULT NULL,
  `c_gender` varchar(1000) DEFAULT NULL,
  `c_address` varchar(1000) DEFAULT NULL,
  `c_city` varchar(1000) DEFAULT NULL,
  `c_state` varchar(1000) DEFAULT NULL,
  `c_pin` varchar(1000) DEFAULT NULL,
  `c_country` varchar(1000) DEFAULT NULL,
  `c_eid` varchar(1000) DEFAULT NULL,
  `c_mb_no` varchar(1000) DEFAULT NULL,
  `c_ph_no` varchar(1000) DEFAULT NULL,
  `c_vat_no` varchar(1000) DEFAULT NULL,
  `c_cst_no` varchar(1000) DEFAULT NULL,
  `c_pan` varchar(1000) DEFAULT NULL,
  `opening_balance` double DEFAULT NULL,
  `c_company_name` varchar(1000) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`,`c_name`),
  KEY `c_name` (`c_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`c_id`,`c_name`,`c_under`,`c_dob`,`c_gender`,`c_address`,`c_city`,`c_state`,`c_pin`,`c_country`,`c_eid`,`c_mb_no`,`c_ph_no`,`c_vat_no`,`c_cst_no`,`c_pan`,`opening_balance`,`c_company_name`,`flag`) values (2,'Soumya Basak','Sundry Debtors','','null','','',' ','',' ','','','+918888888888','','','',0,'Public Limited Company',0),(3,'Sourav Basak','Sundry Debtors','','null','','',' ','',' ','','','+97222222222','','','',0,'Public Limited Company',0),(4,'Soumya Basakk','Sundry Debtors','','null','','',' ','',' ','','','+545452142142','','','',0,'Public Limited Company',0),(7,'sefsf','Sundry Debtors','','null','','','','','India','','+91','+91','','','',0,' ',0),(10,'XYZ@abc.com','Sundry Debtors','','null','Salkia','Jamjam','Abu Dhabi','456165163456354','United Arab Emirates','2113541@gmail.com','+971','+971','','','',1.22222222222222e+182,'Partnership',0),(11,'Somu','Sundry Debtors','','null','','','Select','','Select','','','+918888888888','','','',0,'Limited Liability Partnership',0),(12,'Santu Chall','Sundry Debtors','','null','','','Puducherry','','India','','','+91201212121212','','','',0,'HUF (Hindu Undivided Family)',0),(13,'Siiiiii','Sundry Debtors','','null','','','Arunachal Pradesh','','India','','+91','+91','','','',0,'HUF (Hindu Undivided Family)',0),(14,'sjgdjhgfjhjhsfgs','Sundry Debtors','','null','','','Select','','Select','','','+478745412541','','','',0,'',0),(15,'dgsgsgsgs','Sundry Debtors','','null','','','Select','','Select','','','+76576764','','','',0,'',0);

/*Table structure for table `debit_note` */

DROP TABLE IF EXISTS `debit_note`;

CREATE TABLE `debit_note` (
  `debit_note_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `debit_note_inv` varchar(1000) DEFAULT NULL,
  `debit_note_date` varchar(1000) DEFAULT NULL,
  `purchase_inv` varchar(1000) DEFAULT NULL,
  `debit_note_select` varchar(1000) DEFAULT NULL,
  `debit_note_perticulars` varchar(255) DEFAULT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `debit_narration` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`debit_note_id`),
  KEY `journal_inv` (`debit_note_inv`(255)),
  KEY `FK_debit_note_vendor` (`debit_note_perticulars`),
  CONSTRAINT `FK_debit_note_ledger` FOREIGN KEY (`debit_note_perticulars`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `debit_note` */

/*Table structure for table `direct expense` */

DROP TABLE IF EXISTS `direct expense`;

CREATE TABLE `direct expense` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `direct expense` */

/*Table structure for table `direct income` */

DROP TABLE IF EXISTS `direct income`;

CREATE TABLE `direct income` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `direct income` */

/*Table structure for table `expense` */

DROP TABLE IF EXISTS `expense`;

CREATE TABLE `expense` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

/*Data for the table `expense` */

insert  into `expense`(`l_name`,`debit`,`credit`,`trans_id`,`id`,`date`) values ('Atanu','0.00',NULL,NULL,6,NULL),('Soumya Basak','0',NULL,NULL,52,NULL),('Soumya Basak','0.00',NULL,NULL,65,NULL),('Santu Tax 4%','50000',NULL,NULL,66,NULL);

/*Table structure for table `finished goods` */

DROP TABLE IF EXISTS `finished goods`;

CREATE TABLE `finished goods` (
  `inv_id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_p_id` varchar(1000) DEFAULT '0',
  `p_name` varchar(1000) NOT NULL,
  `inv_open` varchar(1000) DEFAULT '0',
  `inv_sale` varchar(1000) DEFAULT '0',
  `inv_purchase` varchar(1000) DEFAULT '0',
  `trans_id` varchar(1000) DEFAULT NULL,
  `inv_open_amount` double DEFAULT '0',
  `inv_pur_amount` double DEFAULT '0',
  `inv_sale_amount` double DEFAULT '0',
  PRIMARY KEY (`inv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Table for inventory reports';

/*Data for the table `finished goods` */

/*Table structure for table `fixed asset` */

DROP TABLE IF EXISTS `fixed asset`;

CREATE TABLE `fixed asset` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

/*Data for the table `fixed asset` */

insert  into `fixed asset`(`l_name`,`debit`,`credit`,`trans_id`,`id`,`date`) values ('Sourav Basak','0',NULL,NULL,54,NULL);

/*Table structure for table `godown` */

DROP TABLE IF EXISTS `godown`;

CREATE TABLE `godown` (
  `gd_name` varchar(255) NOT NULL,
  `gd_address` longtext,
  `gd_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`gd_id`,`gd_name`),
  KEY `gd_name` (`gd_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `godown` */

/*Table structure for table `godown_detail` */

DROP TABLE IF EXISTS `godown_detail`;

CREATE TABLE `godown_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gd_name_from` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `s_quantity` varchar(1000) DEFAULT '0',
  `p_quantity` varchar(1000) DEFAULT '0',
  `t_quantity` varchar(1000) DEFAULT '0',
  `invoice` varchar(1000) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `gd_name_to` varchar(255) DEFAULT NULL,
  `date` varchar(1000) DEFAULT NULL,
  `narration` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gd_name_from` (`gd_name_from`),
  KEY `gd_name_to` (`gd_name_to`),
  KEY `item` (`item`),
  KEY `FK_godown_detail_unit` (`unit`),
  CONSTRAINT `FK_godown_detail_Godown` FOREIGN KEY (`gd_name_from`) REFERENCES `godown` (`gd_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_godown_detail_godown1` FOREIGN KEY (`gd_name_to`) REFERENCES `godown` (`gd_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_godown_detail_product` FOREIGN KEY (`item`) REFERENCES `product` (`product_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_godown_detail_unit` FOREIGN KEY (`unit`) REFERENCES `unit` (`u_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `godown_detail` */

/*Table structure for table `group_sum_fp_temp` */

DROP TABLE IF EXISTS `group_sum_fp_temp`;

CREATE TABLE `group_sum_fp_temp` (
  `fp_particulars` varchar(1000) DEFAULT NULL,
  `fp_debit` double DEFAULT NULL,
  `fp_credit` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `group_sum_fp_temp` */

/*Table structure for table `income` */

DROP TABLE IF EXISTS `income`;

CREATE TABLE `income` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `income` */

insert  into `income`(`l_name`,`debit`,`credit`,`trans_id`,`id`,`date`) values ('      ','0.00',NULL,NULL,3,NULL),('Soumya','0.00',NULL,NULL,4,NULL),('Coconut_Tree-23 Vat No. - 14785296369874 Sri Lanka','100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',NULL,NULL,6,NULL),('Coconut_Tree-23 Vat No. - 14785296369874','1000000000000000000000000000000000000000000000000',NULL,NULL,7,NULL);

/*Table structure for table `indirect expense` */

DROP TABLE IF EXISTS `indirect expense`;

CREATE TABLE `indirect expense` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `indirect expense` */

/*Table structure for table `indirect income` */

DROP TABLE IF EXISTS `indirect income`;

CREATE TABLE `indirect income` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `indirect income` */

/*Table structure for table `inv_group` */

DROP TABLE IF EXISTS `inv_group`;

CREATE TABLE `inv_group` (
  `inv_g_id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_g_name` varchar(255) NOT NULL,
  `inv_g_under` varchar(1000) NOT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`inv_g_id`,`inv_g_name`),
  KEY `inv_g_name` (`inv_g_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `inv_group` */

insert  into `inv_group`(`inv_g_id`,`inv_g_name`,`inv_g_under`,`flag`) values (1,'primary','primary',1),(2,'Mobile','primary',0),(5,'Soumya','primary',0),(8,'RAM','Soumya',0);

/*Table structure for table `journal_creation` */

DROP TABLE IF EXISTS `journal_creation`;

CREATE TABLE `journal_creation` (
  `journal_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `journal_inv` varchar(1000) DEFAULT NULL,
  `journal_date` varchar(1000) DEFAULT NULL,
  `journal_ref_no` varchar(1000) DEFAULT NULL,
  `journal_balance` double DEFAULT NULL,
  `journal_select` varchar(1000) DEFAULT NULL,
  `ledger` varchar(255) NOT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `journal_narration` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`journal_id`),
  KEY `journal_inv` (`journal_inv`(255)),
  KEY `ledger` (`ledger`),
  CONSTRAINT `FK_journal_creation_ledger` FOREIGN KEY (`ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `journal_creation` */

/*Table structure for table `journal_register` */

DROP TABLE IF EXISTS `journal_register`;

CREATE TABLE `journal_register` (
  `vtp_trans_date` varchar(1000) DEFAULT NULL,
  `vtp_ledger` varchar(1000) DEFAULT NULL,
  `vtp_debit` double DEFAULT '0',
  `vtp_credit` double DEFAULT '0',
  `vtp_get_id` varchar(1000) DEFAULT NULL,
  `vtp_type` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `journal_register` */

/*Table structure for table `ledger` */

DROP TABLE IF EXISTS `ledger`;

CREATE TABLE `ledger` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(255) NOT NULL,
  `l_under` varchar(255) NOT NULL,
  `l_address` varchar(500) DEFAULT NULL,
  `l_state` varchar(500) DEFAULT NULL,
  `l_acc_no` varchar(500) DEFAULT NULL,
  `l_pan` varchar(500) DEFAULT NULL,
  `l_sale_tax_no` varchar(500) DEFAULT NULL,
  `l_branch` varchar(500) DEFAULT NULL,
  `l_bsr_code` varchar(500) DEFAULT NULL,
  `l_opning_balance` varchar(1000) DEFAULT NULL,
  `l_persentage` varchar(1000) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  `l_country` varchar(1000) DEFAULT NULL,
  `l_city` varchar(1000) DEFAULT NULL,
  `l_pin` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`l_id`,`l_name`),
  KEY `FK_ledger_acc_group` (`l_under`),
  KEY `l_name` (`l_name`),
  CONSTRAINT `FK_ledger_acc_group` FOREIGN KEY (`l_under`) REFERENCES `acc_group` (`g_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

/*Data for the table `ledger` */

insert  into `ledger`(`l_id`,`l_name`,`l_under`,`l_address`,`l_state`,`l_acc_no`,`l_pan`,`l_sale_tax_no`,`l_branch`,`l_bsr_code`,`l_opning_balance`,`l_persentage`,`flag`,`l_country`,`l_city`,`l_pin`) values (18,'Ardhendu Chasdgf','Sundry Creditors','','','','','','','','0','',0,' ','',''),(19,'Purchase A/c','Purchase','',' ','','','','','','0.00','',0,'',' ',''),(22,'Ardhendu Chatterjee','Sundry Debtors','',' ','','','','','','0.00','',0,'',' ',''),(23,'Atanu Upadhyay','Expense','',' ','','','','','','0.00','',0,'',' ',''),(24,'Sandip','Sundry Debtors','',' ','','','','','','0.00','',0,'',' ',''),(25,'Milan','Sundry Debtors','',' ','','','','','','0.00','',0,'',' ',''),(28,'Akash Sen','Asset','','Circonscription de Sigave','','','','','','0.00','',0,'',' ',''),(29,'Soumya Basak 92','Fixed Asset','','Circonscription de Sigave','','','','','','0.00','',0,'',' ',''),(30,'Q123','Liabilities','',' ','','','','','','0.00','',0,'',' ',''),(31,'fkghkdfg','Liabilities','',' ','','','','','','0.00','',0,'',' ',''),(39,'Ardhendu Chasdgf','Sundry Creditors','','',NULL,NULL,NULL,NULL,NULL,'0',NULL,0,' ','',NULL),(41,'Sourav Basak','Fixed Asset','',' ','','','','','','0','',0,'','',''),(44,'Software Deve','Sundry Creditors','','',NULL,NULL,NULL,NULL,NULL,'0',NULL,0,' ','',NULL),(45,'Soumya Basakk','Sundry Debtors','',' ',NULL,NULL,NULL,NULL,NULL,'0',NULL,0,' ','',NULL),(46,'DFDF','Current Liabilities','',' ','','','','','','0.00','',0,'India','Howrah',''),(52,'sefsf','Sundry Debtors','','',NULL,NULL,NULL,NULL,NULL,'0',NULL,0,'India','',NULL),(55,'Ranjan Singh','Sundry Debtors','',' ','','','','','','10000.00','',0,'','',''),(56,'Soumya Basak','Expense','',' ','','','','','','0.00','',0,'','',''),(59,'Imran 210','Asset','','West Bengal','1421212','12121','12121','Dhatrigram','12454545','1245','10',0,'New Caledonia','Kolkata','412578'),(60,'Santu Tax 4%','Expense','hjsgdjs','California','151456456','fgh355454','3545646546','Cdsdhkgf','dfcgsdf25625','50000','2',0,'United States','','Wq3253621'),(61,'Soumya','Asset','',' ','','','','','','','',0,'','',''),(62,'SoumyaBasak01','Asset','','West Bengal','','','','','','0','',0,'India','',''),(64,'Santu 2015 VAT 20133456&345231 5%','Tax 2015 Vat No. 14567896325648','asKSDFJGHLDFKGHSFLKJDGHSLKJDFSDFJGBLDFJHBjkhsdgljkbljkafbljkblkjafblkfbfbhfH','Dhaka','jhkjhb','kjhl','hbjkhbk','vjhvk','jhvkjh','1245.24','45',0,'Bangladesh','Dhaka','WQ124W'),(65,'Soumya_Basak_01','Liabilities','','Capital Region','','','','','','0','',0,'Iceland','',''),(66,'Coconut_Tree-23 Vat No. - 14785296369874 Sri Lanka','Income','Vill+P.O.- Chakradharpur, North 24 Pargana, West Bengal','West Bengal','','BEKJI8899L','','Dumdum Park','ABCD123456728996','100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000','',0,'India','Kolkata','WC7362'),(67,'Coconut_Tree-23 Vat No. - 14785296369874','Income','Vill+P.O.- Chakradharpur, North 24 Pargana, West Bengal','West Bengal','','BEKJI8899L','','Dumdum Park','ABCD123456728996','1000000000000000000000000000000000000000000000000','',0,'India','Kolkata','WC7362'),(69,'XYZ@abc.com','Sundry Debtors','Salkia','Abu Dhabi',NULL,NULL,NULL,NULL,NULL,'122222222222222222222222222222222222222222222222222222224444444444444444444444444444444444444444444876666666666666666666666666666666666666666666666666666666666666666666666666666666666',NULL,0,NULL,NULL,NULL),(70,'Santu Desktop Application Software Vat 34.456%','Park Circus','Bhatpara','Balochistan','','','','','','65454','45',0,'Pakistan','Faisalbad','12457878'),(72,'Santukfxjghlk','Asset','','West Bengal','','','','','','12','45',0,'India','kolkata',''),(73,'Ramu','Asset','','Select','','','','','','0.00','',0,'Select','',''),(74,'ggggggg','Liabilities','','Atakora','','','','','','0.00','',0,'Benin','',''),(75,'Rahul Enterprise','Sundry Debtors','','Select','','','','','','0.00','',0,'Select','',''),(76,'Somu','Sundry Debtors','','Select',NULL,NULL,NULL,NULL,NULL,'0.00',NULL,0,NULL,NULL,NULL),(77,'Santu Chall','Sundry Debtors','','Puducherry',NULL,NULL,NULL,NULL,NULL,'0',NULL,0,'India','',NULL),(78,'Siiiiii','Sundry Debtors','','Arunachal Pradesh',NULL,NULL,NULL,NULL,NULL,'0.00',NULL,0,NULL,NULL,NULL),(80,'sjgdjhgfjhjhsfgs','Sundry Debtors','','Select',NULL,NULL,NULL,NULL,NULL,'0.00',NULL,0,NULL,NULL,NULL),(81,'dgsgsgsgs','Sundry Debtors','','Select',NULL,NULL,NULL,NULL,NULL,'0.00',NULL,0,NULL,NULL,NULL),(82,'sdsmhdg mbdvgfjbgsdfv hsdfgweh','Sundry Creditors','','Select',NULL,NULL,NULL,NULL,NULL,'0',NULL,0,'Select','',NULL);

/*Table structure for table `liabilities` */

DROP TABLE IF EXISTS `liabilities`;

CREATE TABLE `liabilities` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `liabilities` */

insert  into `liabilities`(`l_name`,`debit`,`credit`,`trans_id`,`id`,`date`) values ('Soumya','0.00',NULL,NULL,4,NULL),('Q123','0.00',NULL,NULL,5,NULL),('fkghkdfg','0.00',NULL,NULL,6,NULL),('Soumya_Basak_01','0',NULL,NULL,7,NULL),('ggggggg','0.00',NULL,NULL,8,NULL);

/*Table structure for table `loans(liability)` */

DROP TABLE IF EXISTS `loans(liability)`;

CREATE TABLE `loans(liability)` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `loans(liability)` */

/*Table structure for table `log_in` */

DROP TABLE IF EXISTS `log_in`;

CREATE TABLE `log_in` (
  `username` varchar(1000) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `user_pk` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_pk`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `log_in` */

insert  into `log_in`(`username`,`password`,`user_pk`) values ('Ardhendu','pass',1);

/*Table structure for table `mobile` */

DROP TABLE IF EXISTS `mobile`;

CREATE TABLE `mobile` (
  `inv_id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_p_id` varchar(1000) DEFAULT '0',
  `p_name` varchar(1000) NOT NULL,
  `inv_open` varchar(1000) DEFAULT '0',
  `inv_sale` varchar(1000) DEFAULT '0',
  `inv_purchase` varchar(1000) DEFAULT '0',
  `trans_id` varchar(1000) DEFAULT NULL,
  `inv_open_amount` varchar(1000) DEFAULT '0',
  `inv_pur_amount` varchar(1000) DEFAULT '0',
  `inv_sale_amount` varchar(1000) DEFAULT '0',
  PRIMARY KEY (`inv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Table for inventory reports';

/*Data for the table `mobile` */

/*Table structure for table `mobiles` */

DROP TABLE IF EXISTS `mobiles`;

CREATE TABLE `mobiles` (
  `inv_id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_p_id` varchar(1000) DEFAULT '0',
  `p_name` varchar(1000) NOT NULL,
  `inv_open` varchar(1000) DEFAULT '0',
  `inv_sale` varchar(1000) DEFAULT '0',
  `inv_purchase` varchar(1000) DEFAULT '0',
  `trans_id` varchar(1000) DEFAULT NULL,
  `inv_open_amount` double DEFAULT '0',
  `inv_pur_amount` double DEFAULT '0',
  `inv_sale_amount` double DEFAULT '0',
  PRIMARY KEY (`inv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Table for inventory reports';

/*Data for the table `mobiles` */

/*Table structure for table `opening` */

DROP TABLE IF EXISTS `opening`;

CREATE TABLE `opening` (
  `item` varchar(1000) DEFAULT NULL,
  `unit` varchar(1000) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `quantity1` double DEFAULT NULL,
  `opening_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`opening_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `opening` */

/*Table structure for table `outstanding liabilities` */

DROP TABLE IF EXISTS `outstanding liabilities`;

CREATE TABLE `outstanding liabilities` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `outstanding liabilities` */

/*Table structure for table `park circus` */

DROP TABLE IF EXISTS `park circus`;

CREATE TABLE `park circus` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `park circus` */

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `payment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pay_c_name` varchar(1000) DEFAULT NULL,
  `pay_date` varchar(1000) DEFAULT NULL,
  `pay_ledger` varchar(255) NOT NULL,
  `pay_ref_no` varchar(1000) DEFAULT NULL,
  `pay_balance` varchar(1000) DEFAULT NULL,
  `pay_ledger1` varchar(255) NOT NULL,
  `pay_bank_name` varchar(1000) DEFAULT NULL,
  `pay_branch_name` varchar(1000) DEFAULT NULL,
  `pay_cheque_no` varchar(1000) DEFAULT NULL,
  `pay_total_amnt` bigint(20) DEFAULT NULL,
  `pay_amnt_words` varchar(1000) DEFAULT NULL,
  `pay_for` varchar(1000) DEFAULT NULL,
  `pay_invoice` varchar(1000) DEFAULT NULL,
  `pay_mode` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `pay_ledger` (`pay_ledger`),
  KEY `pay_ledger1` (`pay_ledger1`),
  CONSTRAINT `FK_payment_ledger` FOREIGN KEY (`pay_ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_payment_ledger_2` FOREIGN KEY (`pay_ledger1`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `payment` */

/*Table structure for table `pl_close` */

DROP TABLE IF EXISTS `pl_close`;

CREATE TABLE `pl_close` (
  `party_data_2` varchar(5000) DEFAULT NULL,
  `amt_3` varchar(1000) DEFAULT NULL,
  `amt_4` varchar(1000) DEFAULT NULL,
  `year_2` varchar(2000) DEFAULT '2014'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pl_close` */

insert  into `pl_close`(`party_data_2`,`amt_3`,`amt_4`,`year_2`) values ('Closing Stock',' ','0.0','2014'),('Sale A/C',' ','160.0','2014'),('  Ardhendu Chasdgf','160.0',' ','2014'),('Direct Income',' ','0','2014'),('Gross Loss c/o',' ','240.0','2014'),('Total',' ','400.0','2014'),(' ',' ',' ','2014'),('Indirect Income',' ','0.0','2014'),('Net Loss',' ','240.0','2014'),('Total',' ','240.0','2014');

/*Table structure for table `pl_open` */

DROP TABLE IF EXISTS `pl_open`;

CREATE TABLE `pl_open` (
  `party_data` varchar(5000) DEFAULT NULL,
  `amt_1` double DEFAULT NULL,
  `amt_2` double DEFAULT NULL,
  `year` varchar(2014) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pl_open` */

insert  into `pl_open`(`party_data`,`amt_1`,`amt_2`,`year`) values ('Opening Stock',0,0,'2014'),('Purchase A/C',0,400,'2014'),('  Ardhendu Chasdgf',400,0,'2014'),('Direct Expense',0,0,'2014'),(' ',0,0,'2014'),('Total',0,400,'2014'),('Gross Loss b/f',0,240,'2014'),('Indirect Expense',0,0,'2014'),(' ',0,0,'2014'),('Total',0,240,'2014');

/*Table structure for table `primary` */

DROP TABLE IF EXISTS `primary`;

CREATE TABLE `primary` (
  `inv_id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_p_id` varchar(1000) DEFAULT '0',
  `p_name` varchar(1000) NOT NULL,
  `inv_open` varchar(1000) DEFAULT '0',
  `inv_sale` varchar(1000) DEFAULT '0',
  `inv_purchase` varchar(1000) DEFAULT '0',
  `trans_id` varchar(1000) DEFAULT NULL,
  `inv_open_amount` varchar(1000) DEFAULT '0',
  `inv_pur_amount` varchar(1000) DEFAULT '0',
  `inv_sale_amount` varchar(1000) DEFAULT '0',
  PRIMARY KEY (`inv_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='Table for inventory reports';

/*Data for the table `primary` */

insert  into `primary`(`inv_id`,`inv_p_id`,`p_name`,`inv_open`,`inv_sale`,`inv_purchase`,`trans_id`,`inv_open_amount`,`inv_pur_amount`,`inv_sale_amount`) values (19,'0','Computer','','0','0',NULL,'','0','0');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_name` varchar(255) NOT NULL,
  `p_group` varchar(255) NOT NULL,
  `p_unit` varchar(255) DEFAULT NULL,
  `p_quantity` varchar(255) DEFAULT NULL,
  `p_rate` varchar(255) DEFAULT NULL,
  `p_discount` varchar(255) DEFAULT NULL,
  `p_tax` varchar(255) DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `p_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `p_value` varchar(255) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`p_id`,`product_name`),
  KEY `p_group` (`p_group`),
  KEY `p_unit` (`p_unit`),
  KEY `product_name` (`product_name`),
  CONSTRAINT `FK_product_Unit` FOREIGN KEY (`p_unit`) REFERENCES `unit` (`u_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`product_name`,`p_group`,`p_unit`,`p_quantity`,`p_rate`,`p_discount`,`p_tax`,`product_code`,`p_id`,`p_value`,`flag`) values ('Computer','primary','Pieces','','','','','2131131sad',11,'',1);

/*Table structure for table `purchase` */

DROP TABLE IF EXISTS `purchase`;

CREATE TABLE `purchase` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `purchase` */

/*Table structure for table `purchase_challan_1` */

DROP TABLE IF EXISTS `purchase_challan_1`;

CREATE TABLE `purchase_challan_1` (
  `purchase_challan_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchase_challan_no` varchar(1000) DEFAULT NULL,
  `purchase_challan_date` varchar(1000) DEFAULT NULL,
  `purchase_challan_party_name` varchar(255) DEFAULT NULL,
  `purchase_challan_current_balance` varchar(1000) DEFAULT NULL,
  `purchase_challan_sale_ledger` varchar(255) DEFAULT NULL,
  `purchase_challan_godown_name` varchar(255) DEFAULT NULL,
  `purchase_challan_narration` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`purchase_challan_id`),
  KEY `purchase_challan_party_name` (`purchase_challan_party_name`),
  KEY `purchase_challan_sale_ledger` (`purchase_challan_sale_ledger`),
  KEY `purchase_challan_godown_name` (`purchase_challan_godown_name`),
  CONSTRAINT `FK_purchase_challan_1_godown` FOREIGN KEY (`purchase_challan_godown_name`) REFERENCES `godown` (`gd_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_purchase_challan_1_ledger` FOREIGN KEY (`purchase_challan_party_name`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_purchase_challan_1_ledger_2` FOREIGN KEY (`purchase_challan_sale_ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `purchase_challan_1` */

/*Table structure for table `purchase_challan_2` */

DROP TABLE IF EXISTS `purchase_challan_2`;

CREATE TABLE `purchase_challan_2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchase_challan_no` varchar(1000) CHARACTER SET latin1 DEFAULT NULL,
  `purchase_challan_item` varchar(255) DEFAULT NULL,
  `purchase_challan_unit` varchar(255) DEFAULT NULL,
  `purchase_challan_quantity` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_challan_item` (`purchase_challan_item`),
  KEY `purchase_challan_unit` (`purchase_challan_unit`),
  CONSTRAINT `purchase_challan_2_ibfk_1` FOREIGN KEY (`purchase_challan_item`) REFERENCES `product` (`product_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchase_challan_2_ibfk_2` FOREIGN KEY (`purchase_challan_unit`) REFERENCES `unit` (`u_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `purchase_challan_2` */

/*Table structure for table `purchase_register` */

DROP TABLE IF EXISTS `purchase_register`;

CREATE TABLE `purchase_register` (
  `vtp_trans_date` varchar(1000) DEFAULT NULL,
  `vtp_ledger` varchar(1000) DEFAULT NULL,
  `vtp_debit` double DEFAULT '0',
  `vtp_credit` double DEFAULT '0',
  `vtp_get_id` varchar(1000) DEFAULT NULL,
  `vtp_type` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8;

/*Data for the table `purchase_register` */

insert  into `purchase_register`(`vtp_trans_date`,`vtp_ledger`,`vtp_debit`,`vtp_credit`,`vtp_get_id`,`vtp_type`,`id`) values ('01/02/2015','Ardhendu Chasdgf',0,400,'66646','PURCHASE',391);

/*Table structure for table `purchase_table1` */

DROP TABLE IF EXISTS `purchase_table1`;

CREATE TABLE `purchase_table1` (
  `purchase_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchase_inv` varchar(255) NOT NULL,
  `purchase_date` varchar(1000) DEFAULT NULL,
  `purchase_party_name` varchar(255) NOT NULL,
  `purchase_current_balance` varchar(1000) DEFAULT NULL,
  `purchase_ledger` varchar(255) NOT NULL,
  `purchase_gd_name` varchar(255) NOT NULL,
  `purchase_challan_no` varchar(1000) DEFAULT NULL,
  `purchase_narration` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`purchase_id`,`purchase_inv`),
  KEY `purchase_ledger` (`purchase_ledger`),
  KEY `purchase_gd_name` (`purchase_gd_name`),
  KEY `FK_purchase_table1_vendor` (`purchase_party_name`),
  CONSTRAINT `FK_purchase_table1_Godown` FOREIGN KEY (`purchase_gd_name`) REFERENCES `godown` (`gd_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_purchase_table1_ledger` FOREIGN KEY (`purchase_party_name`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_purchase_table1_ledger_2` FOREIGN KEY (`purchase_ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `purchase_table1` */

/*Table structure for table `purchase_table2` */

DROP TABLE IF EXISTS `purchase_table2`;

CREATE TABLE `purchase_table2` (
  `purchase_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchase_inv` varchar(1000) NOT NULL,
  `purchase_item` varchar(255) DEFAULT NULL,
  `purchase_quantity` double DEFAULT NULL,
  `purchase_unit` varchar(255) DEFAULT NULL,
  `purchase_amount` double DEFAULT NULL,
  `purchase_rate` double DEFAULT NULL,
  `purchase_tax` double DEFAULT NULL,
  `purchase_taxable_amnt` double DEFAULT NULL,
  `purchase_disc` double DEFAULT NULL,
  `purchase_disc_amnt` double DEFAULT NULL,
  `purchase_total` double DEFAULT NULL,
  `party_ledger` varchar(255) DEFAULT NULL,
  `type` varchar(1000) DEFAULT NULL,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `party_ledger` (`party_ledger`),
  KEY `purchase_unit` (`purchase_unit`),
  KEY `purchase_item` (`purchase_item`),
  CONSTRAINT `FK_purchase_table2_Ledger` FOREIGN KEY (`party_ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_purchase_table2_product` FOREIGN KEY (`purchase_item`) REFERENCES `product` (`product_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_purchase_table2_unit_2` FOREIGN KEY (`purchase_unit`) REFERENCES `unit` (`u_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `purchase_table2` */

insert  into `purchase_table2`(`purchase_id`,`purchase_inv`,`purchase_item`,`purchase_quantity`,`purchase_unit`,`purchase_amount`,`purchase_rate`,`purchase_tax`,`purchase_taxable_amnt`,`purchase_disc`,`purchase_disc_amnt`,`purchase_total`,`party_ledger`,`type`,`date`) values (9,'66646','Computer',20,'Pieces',400,20,0,0,0,0,400,NULL,NULL,NULL);

/*Table structure for table `purchase_table3` */

DROP TABLE IF EXISTS `purchase_table3`;

CREATE TABLE `purchase_table3` (
  `purchase_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `purchase_inv` varchar(1000) DEFAULT NULL,
  `purchase_g_total` double DEFAULT NULL,
  `party_ledger` varchar(200) NOT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `party_ledger` (`party_ledger`),
  CONSTRAINT `FK_purchase_table3_ledger` FOREIGN KEY (`party_ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `purchase_table3` */

insert  into `purchase_table3`(`purchase_id`,`purchase_inv`,`purchase_g_total`,`party_ledger`) values (9,'66646',400,'Ardhendu Chasdgf');

/*Table structure for table `r` */

DROP TABLE IF EXISTS `r`;

CREATE TABLE `r` (
  `inv_id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_p_id` varchar(1000) DEFAULT '0',
  `p_name` varchar(1000) NOT NULL,
  `inv_open` varchar(1000) DEFAULT '0',
  `inv_sale` varchar(1000) DEFAULT '0',
  `inv_purchase` varchar(1000) DEFAULT '0',
  `trans_id` varchar(1000) DEFAULT NULL,
  `inv_open_amount` varchar(1000) DEFAULT '0',
  `inv_pur_amount` varchar(1000) DEFAULT '0',
  `inv_sale_amount` varchar(1000) DEFAULT '0',
  PRIMARY KEY (`inv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Table for inventory reports';

/*Data for the table `r` */

/*Table structure for table `ram` */

DROP TABLE IF EXISTS `ram`;

CREATE TABLE `ram` (
  `inv_id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_p_id` varchar(1000) DEFAULT '0',
  `p_name` varchar(1000) NOT NULL,
  `inv_open` varchar(1000) DEFAULT '0',
  `inv_sale` varchar(1000) DEFAULT '0',
  `inv_purchase` varchar(1000) DEFAULT '0',
  `trans_id` varchar(1000) DEFAULT NULL,
  `inv_open_amount` varchar(1000) DEFAULT '0',
  `inv_pur_amount` varchar(1000) DEFAULT '0',
  `inv_sale_amount` varchar(1000) DEFAULT '0',
  PRIMARY KEY (`inv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Table for inventory reports';

/*Data for the table `ram` */

/*Table structure for table `receipt` */

DROP TABLE IF EXISTS `receipt`;

CREATE TABLE `receipt` (
  `receipt_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rec_c_name` varchar(1000) DEFAULT NULL,
  `rec_date` varchar(1000) DEFAULT NULL,
  `rec_ledger` varchar(255) NOT NULL,
  `rec_ref_no` varchar(1000) DEFAULT NULL,
  `rec_balance` varchar(1000) DEFAULT NULL,
  `rec_ledger1` varchar(255) NOT NULL,
  `rec_bank_name` varchar(1000) DEFAULT NULL,
  `rec_branch_name` varchar(1000) DEFAULT NULL,
  `rec_cheque_no` varchar(1000) DEFAULT NULL,
  `rec_total_amnt` bigint(20) DEFAULT NULL,
  `rec_amnt_words` varchar(1000) DEFAULT NULL,
  `rec_for` varchar(1000) DEFAULT NULL,
  `rec_invoice` varchar(1000) DEFAULT NULL,
  `rec_mode` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`receipt_id`),
  KEY `rec_ledger` (`rec_ledger`),
  KEY `rec_ledger1` (`rec_ledger1`),
  CONSTRAINT `FK_receipt_ledger` FOREIGN KEY (`rec_ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_receipt_ledger_2` FOREIGN KEY (`rec_ledger1`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `receipt` */

/*Table structure for table `region_name` */

DROP TABLE IF EXISTS `region_name`;

CREATE TABLE `region_name` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `region_name` */

insert  into `region_name`(`region_id`,`region_name`) values (1,'Africa'),(2,'America (North)'),(3,'America (South)'),(4,'Antarctica'),(5,'Asia'),(6,'Europe'),(7,'Oceania');

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sale` */

/*Table structure for table `sale_challan_1` */

DROP TABLE IF EXISTS `sale_challan_1`;

CREATE TABLE `sale_challan_1` (
  `sale_challan_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sale_challan_no` varchar(1000) DEFAULT NULL,
  `sale_challan_date` varchar(1000) DEFAULT NULL,
  `sale_challan_party_name` varchar(255) DEFAULT NULL,
  `sale_challan_current_balance` varchar(1000) DEFAULT NULL,
  `sale_challan_sale_ledger` varchar(255) DEFAULT NULL,
  `sale_challan_godown_name` varchar(255) DEFAULT NULL,
  `sale_narration` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`sale_challan_id`),
  KEY `purchase_challan_party_name` (`sale_challan_party_name`),
  KEY `purchase_challan_sale_ledger` (`sale_challan_sale_ledger`),
  KEY `purchase_challan_godown_name` (`sale_challan_godown_name`),
  CONSTRAINT `sale_challan_1_ibfk_1` FOREIGN KEY (`sale_challan_godown_name`) REFERENCES `godown` (`gd_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sale_challan_1_ibfk_2` FOREIGN KEY (`sale_challan_sale_ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sale_challan_1_ibfk_3` FOREIGN KEY (`sale_challan_party_name`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `sale_challan_1` */

/*Table structure for table `sale_challan_2` */

DROP TABLE IF EXISTS `sale_challan_2`;

CREATE TABLE `sale_challan_2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sale_challan_no` varchar(1000) DEFAULT NULL,
  `sale_challan_item` varchar(255) DEFAULT NULL,
  `sale_challan_unit` varchar(255) DEFAULT NULL,
  `sale_challan_quantity` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_challan_item` (`sale_challan_item`),
  KEY `purchase_challan_unit` (`sale_challan_unit`),
  CONSTRAINT `FK_purchase_challan_2_product` FOREIGN KEY (`sale_challan_item`) REFERENCES `product` (`product_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_purchase_challan_2_unit` FOREIGN KEY (`sale_challan_unit`) REFERENCES `unit` (`u_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sale_challan_2` */

/*Table structure for table `sale_register` */

DROP TABLE IF EXISTS `sale_register`;

CREATE TABLE `sale_register` (
  `vtp_trans_date` varchar(1000) DEFAULT NULL,
  `vtp_ledger` varchar(1000) DEFAULT NULL,
  `vtp_debit` double DEFAULT '0',
  `vtp_credit` double DEFAULT '0',
  `vtp_get_id` varchar(1000) DEFAULT NULL,
  `vtp_type` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=638 DEFAULT CHARSET=utf8;

/*Data for the table `sale_register` */

insert  into `sale_register`(`vtp_trans_date`,`vtp_ledger`,`vtp_debit`,`vtp_credit`,`vtp_get_id`,`vtp_type`,`id`) values ('01/02/2014','Ardhendu Chasdgf',0,60,'146546541','SALE',636),('10-01-2014','Ardhendu Chasdgf',0,100,'sale_inv_11','SALE',637);

/*Table structure for table `sale_table1` */

DROP TABLE IF EXISTS `sale_table1`;

CREATE TABLE `sale_table1` (
  `sale_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sale_inv_no` varchar(1000) NOT NULL,
  `sale_date` varchar(1000) DEFAULT NULL,
  `sale_party_name` varchar(255) DEFAULT NULL,
  `sale_current_balance` varchar(1000) DEFAULT NULL,
  `sale_ledger` varchar(255) DEFAULT NULL,
  `sale_gd_name` varchar(255) DEFAULT NULL,
  `sale_narration` varchar(1000) DEFAULT NULL,
  `sale_challan` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `sale_party_name` (`sale_party_name`),
  KEY `FK_sale_table1_ledger_2` (`sale_ledger`),
  KEY `sale_gd_name` (`sale_gd_name`),
  CONSTRAINT `FK_sale_table1_godown` FOREIGN KEY (`sale_gd_name`) REFERENCES `godown` (`gd_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sale_table1_ledger` FOREIGN KEY (`sale_party_name`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sale_table1_ledger_2` FOREIGN KEY (`sale_ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sale_table1` */

/*Table structure for table `sale_table2` */

DROP TABLE IF EXISTS `sale_table2`;

CREATE TABLE `sale_table2` (
  `sale_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sale_inv_no` varchar(1000) NOT NULL,
  `sale_item` varchar(255) DEFAULT NULL,
  `sale_quantity` double DEFAULT NULL,
  `sale_unit` varchar(255) DEFAULT NULL,
  `sale_amount` double DEFAULT NULL,
  `sale_rate` double DEFAULT NULL,
  `sale_tax` double DEFAULT NULL,
  `sale_taxable_amnt` double DEFAULT NULL,
  `sale_disc` double DEFAULT NULL,
  `sale_disc_amnt` double DEFAULT NULL,
  `sale_total` double DEFAULT NULL,
  `date` varchar(1000) DEFAULT NULL,
  `party_ledger` varchar(255) NOT NULL,
  `type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `party_ledger` (`party_ledger`),
  KEY `sale_item` (`sale_item`),
  KEY `sale_unit` (`sale_unit`),
  CONSTRAINT `FK_sale_table2_Ledger` FOREIGN KEY (`party_ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sale_table2_product` FOREIGN KEY (`sale_item`) REFERENCES `product` (`product_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_sale_table2_unit` FOREIGN KEY (`sale_unit`) REFERENCES `unit` (`u_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `sale_table2` */

insert  into `sale_table2`(`sale_id`,`sale_inv_no`,`sale_item`,`sale_quantity`,`sale_unit`,`sale_amount`,`sale_rate`,`sale_tax`,`sale_taxable_amnt`,`sale_disc`,`sale_disc_amnt`,`sale_total`,`date`,`party_ledger`,`type`) values (4,'146546541','Computer',10,'Pieces',50,5,20,10,0,0,60,'01/02/2014','Ardhendu Chasdgf','SALE'),(5,'sale_inv_11','Computer',10,'Pieces',100,10,0,0,0,0,100,'10-01-2014','Ardhendu Chasdgf','SALE');

/*Table structure for table `sale_table3` */

DROP TABLE IF EXISTS `sale_table3`;

CREATE TABLE `sale_table3` (
  `sale_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sale_inv_no` varchar(1000) DEFAULT NULL,
  `sale_g_total` double DEFAULT NULL,
  `sale_ledger` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `sale_ledger` (`sale_ledger`),
  CONSTRAINT `FK_sale_table3_Ledger` FOREIGN KEY (`sale_ledger`) REFERENCES `ledger` (`l_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `sale_table3` */

insert  into `sale_table3`(`sale_id`,`sale_inv_no`,`sale_g_total`,`sale_ledger`) values (11,'146546541',60,'Ardhendu Chasdgf'),(12,'sale_inv_11',100,'Ardhendu Chasdgf');

/*Table structure for table `sdfgsgsgsgsgsgsgs` */

DROP TABLE IF EXISTS `sdfgsgsgsgsgsgsgs`;

CREATE TABLE `sdfgsgsgsgsgsgsgs` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sdfgsgsgsgsgsgsgs` */

/*Table structure for table `soumya basak` */

DROP TABLE IF EXISTS `soumya basak`;

CREATE TABLE `soumya basak` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `soumya basak` */

/*Table structure for table `state_name` */

DROP TABLE IF EXISTS `state_name`;

CREATE TABLE `state_name` (
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `state_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `state_name` */

insert  into `state_name`(`country_id`,`state_id`,`state_name`) values (1,1,'Adrar'),(1,2,'Ain Defla'),(1,3,'Ain Temouchent'),(1,4,'Alger'),(1,5,'Annaba'),(1,6,'Batna'),(1,7,'Bechar'),(1,8,'Bejaia'),(1,9,'Biskra'),(1,10,'Blida'),(1,11,'Bordj Bou Arreridj'),(1,12,'Bouira'),(1,13,'Boumerdes'),(1,14,'Chlef'),(1,15,'Constantine'),(1,16,'Djelfa'),(1,17,'El Bayadh'),(1,18,'El Oued'),(1,19,'El Tarf'),(1,20,'Ghardaia'),(1,21,'Guelma'),(1,22,'Illizi'),(1,23,'Jijel'),(1,24,'Khenchela'),(1,25,'Laghouat'),(1,26,'Mascara'),(1,27,'Medea'),(1,28,'Mila'),(1,29,'Mostaganem'),(1,30,'Msila'),(1,31,'Naama '),(1,32,'Oran'),(1,33,'Ouargla'),(1,34,'Oum el Bouaghi'),(1,35,'Relizane'),(1,36,'Saida'),(1,37,'Setif'),(1,38,'Sidi Bel Abbes'),(1,39,'Skikda'),(1,40,'Souk Ahras'),(1,41,'Tamanghasset'),(1,42,'Tebessa'),(1,43,'Tiaret'),(1,44,'Tindouf'),(1,45,'Tipaza'),(1,46,'Tissemsilt'),(1,47,'Tizi Ouzou'),(1,48,'Tlemcen'),(2,49,'Bengo'),(2,50,'Benguela'),(2,51,'Bie'),(2,52,'Cabinda'),(2,53,'Cuando Cubango'),(2,54,'Cuanza Norte'),(2,55,'Cuanza Sul'),(2,56,'Cunene'),(2,57,'Huambo'),(2,58,'Huila'),(2,59,'Luanda'),(2,60,'Lunda Norte'),(2,61,'Lunda Sul'),(2,62,'Malanje'),(2,63,'Moxico'),(2,64,'Namibe'),(2,65,'Uige'),(2,66,'Zaire'),(3,67,'Alibori'),(3,68,'Atakora'),(3,69,'Atlantique'),(3,70,'Borgou'),(3,71,'Collines'),(3,72,'Donga'),(3,73,'Kouffo'),(3,74,'Littoral'),(3,75,'Mono'),(3,76,'Plateau'),(3,77,'Queme'),(3,78,'Zou'),(4,79,'Central'),(4,80,'Ghanzi'),(4,81,'Kgalagadi'),(4,82,'Kgatleng'),(4,83,'Kweneng'),(4,84,'North East'),(4,85,'North West'),(4,86,'South East'),(4,87,'Southern'),(5,88,'Boucle du Mouhoun'),(5,89,'Cascades'),(5,90,'Centre'),(5,91,'Centre-Est'),(5,92,'Centre-Nord'),(5,93,'Centre-Ouest'),(5,94,'Centre-Sud'),(5,95,'Est'),(5,96,'Hauts-Bassins'),(5,97,'Nord'),(5,98,'Plateau-Central'),(5,99,'Sahel'),(5,100,'Sud-Ouest'),(6,101,'Bubanza'),(6,102,'Bujumbura Mairie'),(6,103,'Bujumbura Rural'),(6,104,'Bururi'),(6,105,'Cankuzo'),(6,106,'Cibitoke'),(6,107,'Gitega'),(6,108,'Karuzi'),(6,109,'Kayanza'),(6,110,'Kirundo'),(6,111,'Makamba'),(6,112,'Muramvya'),(6,113,'Muyinga'),(6,114,'Mwaro'),(6,115,'Ngozi'),(6,116,'Rutana'),(6,117,'Ruyigi'),(7,118,'Adamaoua Province'),(7,119,'Centre Region'),(7,120,'East Province'),(7,121,'Far North Province'),(7,122,'Littoral Province'),(7,123,'North Province'),(7,124,'North-West Region'),(7,125,'South Province'),(7,126,'South-West Region'),(7,127,'West Province'),(8,128,'Boa Vista'),(8,129,'Brava'),(8,130,'Concelho da Ribeira Brava'),(8,131,'Concelho de Ribeira Grande de Santiago'),(8,132,'Concelho de Santa Catarina do Fogo'),(8,133,'Concelho de Sao Lourenco dos Orgaos'),(8,134,'Concelho de Sao Salvador do Mundo'),(8,135,'Concelho do Porto Novo'),(8,136,'Concelho do Tarrafal de Sao Nicolau'),(8,137,'Maio'),(8,138,'Mosteiros'),(8,139,'Paul'),(8,140,'Praia'),(8,141,'Ribeira Grande'),(8,142,'Sal'),(8,143,'Santa Catarina'),(8,144,'Santa Cruz'),(8,145,'Sao Domingos'),(8,146,'Sao Filipe'),(8,147,'Sao Miguel'),(8,148,'Sao Vicente'),(8,149,'Tarrafal'),(9,150,'Bamingui-Bangoran'),(9,151,'Bangui'),(9,152,'Basse-Kotto'),(9,153,'Haut-Mbomou'),(9,154,'Haute-Kotto'),(9,155,'Kemo'),(9,156,'Lobaye'),(9,157,'Mambere-Kadei'),(9,158,'Mbomou'),(9,159,'Nana-Grebizi'),(9,160,'Nana-Mambere'),(9,161,'Ombella-Mpoko'),(9,162,'Ouaka'),(9,163,'Ouham'),(9,164,'Ouham-Pende'),(9,165,'Sangha-Mbaere'),(9,166,'Vakaga'),(10,167,'Batha'),(10,168,'Biltine'),(10,169,'Chari-Baguirmi'),(10,170,'Ennedi'),(10,171,'Guera'),(10,172,'Kanem'),(10,173,'Lac'),(10,174,'Logone Occidental'),(10,175,'Logone Oriental'),(10,176,'Mayo-Kebbi'),(10,177,'Moyen-Chari'),(10,178,'Ouaddai'),(10,179,'Region de la Ville de NDjamena'),(10,180,'Region du Barh el Gazel'),(10,181,'Region du Borkou'),(10,182,'Region du Hadjer-Lamis'),(10,183,'Region du Mandoul'),(10,184,'Region du Mayo-Kebbi Ouest'),(10,185,'Region du Sila'),(10,186,'Region du Tibesti'),(10,187,'Salamat'),(10,188,'Tandjile'),(10,189,'Batha'),(10,190,'Biltine'),(10,191,'Chari-Baguirmi'),(10,192,'Ennedi'),(10,193,'Guera'),(10,194,'Kanem'),(10,195,'Lac'),(10,196,'Logone Occidental'),(10,197,'Logone Oriental'),(10,198,'Mayo-Kebbi'),(10,199,'Moyen-Chari'),(10,200,'Ouaddai'),(10,201,'Region de la Ville de NDjamena'),(10,202,'Region du Barh el Gazel'),(10,203,'Region du Borkou'),(10,204,'Region du Hadjer-Lamis'),(10,205,'Region du Mandoul'),(10,206,'Region du Mayo-Kebbi Ouest'),(10,207,'Region du Sila'),(10,208,'Region du Tibesti'),(10,209,'Salamat'),(10,210,'Tandjile'),(11,211,'Anjouan'),(11,212,'Grande Comore'),(11,213,'Moheli'),(12,214,'Bouenza'),(12,215,'Brazzaville'),(12,216,'Cuvette'),(12,217,'Cuvette-Ouest'),(12,218,'Lekoumou'),(12,219,'Likouala'),(12,220,'Niari'),(12,221,'Nyanga'),(12,222,'Plateaux'),(12,223,'Pointe-Noire'),(12,224,'Pool'),(12,225,'Sangha'),(13,226,'Bandundu'),(13,227,'Bas-Congo'),(13,228,'Equateur'),(13,229,'Kasai-Occidental'),(13,230,'Kasai-Oriental'),(13,231,'Katanga'),(13,232,'Kinshasa'),(13,233,'Maniema'),(13,234,'Nord-Kivu'),(13,235,'Orientale'),(13,236,'Sud-Kivu'),(14,237,'Agneby'),(14,238,'Bafing'),(14,239,'Bas-Sassandra'),(14,240,'Denguele'),(14,241,'Dix-Huit Montagnes'),(14,242,'Fromager'),(14,243,'Haut-Sassandra'),(14,244,'Lacs'),(14,245,'Lagunes'),(14,246,'Marahoue'),(14,247,'Moyen-Comoe'),(14,248,'Nzi-Comoe'),(14,249,'Savanes'),(14,250,'Sud-Bandama'),(14,251,'Sud-Comoe'),(14,252,'Vallee du Bandama'),(14,253,'Worodougou'),(14,254,'Zanzan'),(15,255,'Ali Sabieh'),(15,256,'Arta'),(15,257,'Dikhil'),(15,258,'Djibouti'),(15,259,'Obock'),(15,260,'Tadjourah'),(16,261,'Ad Daqahliyah'),(16,262,'Al Bahr al Ahmar'),(16,263,'Al Buhayrah'),(16,264,'Al Fayyum'),(16,265,'Al Gharbiyah'),(16,266,'Al Ismailiyah'),(16,267,'Al Jizah'),(16,268,'Al Minufiyah'),(16,269,'Al Minya'),(16,270,'Al Qahirah'),(16,271,'Al Qalyubiyah'),(16,272,'Al Wadi al Jadid'),(16,273,'Alexandria'),(16,274,'As Suways'),(16,275,'Aswan'),(16,276,'Asyut'),(16,277,'Bani Suwayf'),(16,278,'Bur Said'),(16,279,'Dumyat'),(16,280,'Eastern Province'),(16,281,'Janub Sina'),(16,282,'Kafr ash Shaykh'),(16,283,'Matruh'),(16,284,'Muhafazat al Uqsur'),(16,285,'Qina'),(16,286,'Shamal Sina'),(16,287,'Suhaj'),(17,288,'Annobon'),(17,289,'Bioko Norte'),(17,290,'Bioko Sur'),(17,291,'Centro Sur'),(17,292,'Kie-Ntem'),(17,293,'Litoral'),(17,294,'Wele-Nzas'),(18,295,'Anseba'),(18,296,'Debub'),(18,297,'Debubawi Keyih Bahri'),(18,298,'Gash Barka'),(18,299,'Maakel'),(18,300,'Semenawi Keyih Bahri'),(19,301,'Adis Abeba'),(19,302,'Afar Regional State'),(19,303,'Dire Dawa Region'),(19,304,'Gambela'),(19,305,'Somalia Regional State'),(19,306,'SSNPR'),(19,307,'The State of Amhara'),(19,308,'The State of Benshangul/Gumuz'),(19,309,'The State of Harari People'),(19,310,'The State of Oromia'),(19,311,'Tigray Regional State'),(20,312,'Kerguelen'),(21,313,'Estuaire'),(21,314,'Haut-Ogooue'),(21,315,'Moyen-Ogooue'),(21,316,'Ngounie'),(21,317,'Nyanga'),(21,318,'Ogooue-Ivindo'),(21,319,'Ogooue-Lolo'),(21,320,'Ogooue-Maritime'),(21,321,'Woleu-Ntem'),(22,322,'Banjul'),(22,323,'Central River'),(22,324,'Lower River'),(22,325,'North Bank'),(22,326,'Upper River'),(22,327,'Western'),(23,328,'Ashanti'),(23,329,'Brong-Ahafo'),(23,330,'Central'),(23,331,'Eastern'),(23,332,'Greater Accra'),(23,333,'Northern'),(23,334,'Upper East'),(23,335,'Upper West'),(23,336,'Volta'),(23,337,'Western'),(24,338,'Bafata'),(24,339,'Beyla'),(24,340,'Boke'),(24,341,'Conakry'),(24,342,'Dinguiraye'),(24,343,'Dubreka'),(24,344,'Faranah'),(24,345,'Forecariah'),(24,346,'Gabu'),(24,347,'Gueckedou'),(24,348,'Kankan'),(24,349,'Kindia'),(24,350,'Kissidougou'),(24,351,'Koundara'),(24,352,'Labe'),(24,353,'Mamou'),(24,354,'Mandiana'),(24,355,'Nzerekore'),(25,356,'Bafata'),(25,357,'Biombo'),(25,358,'Bissau Autonomous Region'),(25,359,'Bolama and Bijagos'),(25,360,'Cacheu'),(25,361,'Gabu'),(25,362,'Oio'),(25,363,'Quinara'),(25,364,'Tombali'),(26,365,'Central'),(26,366,'Coast'),(26,367,'Eastern'),(26,368,'Nairobi Area'),(26,369,'North-Eastern'),(26,370,'Nyanza'),(26,371,'Rift Valley'),(26,372,'Western'),(27,373,'Berea'),(27,374,'Butha-Buthe'),(27,375,'Leribe'),(27,376,'Mafeteng'),(27,377,'Maseru'),(27,378,'Mohales Hoek'),(27,379,'Mokhotlong'),(27,380,'Qachas Nek'),(27,381,'Quthing'),(27,382,'Thaba-Tseka'),(28,383,'Bomi'),(28,384,'Bong'),(28,385,'Gbarpolu'),(28,386,'Grand Bassa'),(28,387,'Grand Cape Mount'),(28,388,'Grand Gedeh'),(28,389,'Grand Kru'),(28,390,'Lofa'),(28,391,'Margibi'),(28,392,'Maryland'),(28,393,'Montserrado'),(28,394,'Nimba'),(28,395,'River Cess'),(28,396,'River Gee'),(28,397,'Sinoe'),(29,398,'Al Jabal al Akhdar'),(29,399,'Al Jufrah'),(29,400,'Al Kufrah'),(29,401,'Al Marj'),(29,402,'An Nuqat al Khams'),(29,403,'Ash Shati'),(29,404,'Az Zawiyah'),(29,405,'Banghazi'),(29,406,'Darnah'),(29,407,'Ghat'),(29,408,'Misratah'),(29,409,'Murzuq'),(29,410,'Nalut'),(29,411,'Sabha'),(29,412,'Shabiyat al Butnan'),(29,413,'Shabiyat al Jabal al Gharbi'),(29,414,'Shabiyat al Jafarah'),(29,415,'Shabiyat al Marqab'),(29,416,'Shabiyat al Wahat'),(29,417,'Shabiyat Wadi al Hayat'),(29,418,'Surt'),(29,419,'Tarabulus'),(30,420,'Antananarivo'),(30,421,'Antsiranana'),(30,422,'Fianarantsoa'),(30,423,'Mahajanga'),(30,424,'Toamasina'),(30,425,'Toliara'),(31,426,'Central Region'),(31,427,'Northern Region'),(31,428,'Southern Region'),(32,429,'Bamako'),(32,430,'Gao'),(32,431,'Kayes'),(32,432,'Kidal'),(32,433,'Koulikoro'),(32,434,'Mopti'),(32,435,'Segou'),(32,436,'Sikasso'),(32,437,'Tombouctou'),(33,438,'Adrar'),(33,439,'Assaba'),(33,440,'Brakna'),(33,441,'Dakhlet Nouadhibou'),(33,442,'Gorgol'),(33,443,'Guidimaka'),(33,444,'Hodh ech Chargui'),(33,445,'Inchiri'),(33,446,'Nouakchott'),(33,447,'Tagant'),(33,448,'Tiris Zemmour'),(33,449,'Trarza'),(33,450,'Wilaya du Hodh el Gharbi'),(34,451,'Agalega Islands'),(34,452,'Black River'),(34,453,'Flacq'),(34,454,'Grand Port'),(34,455,'Moka'),(34,456,'Pamplemousses'),(34,457,'Plaines Wilhems'),(34,458,'Port Louis'),(34,459,'Riviere du Rempart'),(34,460,'Rodrigues'),(34,461,'Savanne'),(35,462,'Acoua'),(35,463,'Dzaoudzi'),(35,464,'Mamoudzou'),(36,465,'Chaouia-Ouardigha'),(36,466,'Doukkala-Abda'),(36,467,'Fes-Boulemane'),(36,468,'Gharb-Chrarda-Beni Hssen'),(36,469,'Grand Casablanca'),(36,470,'Guelmim-Es Smara'),(36,471,'Marrakech-Tensift-Al Haouz'),(36,472,'Meknes-Tafilalet'),(36,473,'Oriental'),(36,474,'Oued ed Dahab-Lagouira'),(36,475,'Rabat-Sale-Zemmour-Zaer'),(36,476,'Souss-Massa-Draa'),(36,477,'Tadla-Azilal'),(36,478,'Tanger-Tetouan'),(36,479,'Taza-Al Hoceima-Taounate'),(37,480,'Cabo Delgado'),(37,481,'Gaza'),(37,482,'Inhambane'),(37,483,'Manica'),(37,484,'Maputo'),(37,485,'Maputo City'),(37,486,'Nampula'),(37,487,'Niassa'),(37,488,'Sofala'),(37,489,'Tete'),(37,490,'Zambezia'),(38,491,'Caprivi'),(38,492,'Erongo'),(38,493,'Hardap'),(38,494,'Karas'),(38,495,'Khomas'),(38,496,'Kunene'),(38,497,'Ohangwena'),(38,498,'Omaheke'),(38,499,'Omusati'),(38,500,'Oshana'),(38,501,'Oshikoto'),(38,502,'Otjozondjupa'),(39,503,'Agadez'),(39,504,'Diffa'),(39,505,'Dosso'),(39,506,'Maradi'),(39,507,'Niamey'),(39,508,'Tahoua'),(39,509,'Tillaberi'),(39,510,'Zinder'),(40,511,'Abia'),(40,512,'Abuja Federal Capital Territory'),(40,513,'Adamawa'),(40,514,'Adamawa State'),(40,515,'Akwa Ibom'),(40,516,'Anambra'),(40,517,'Bauchi'),(40,518,'Bayelsa'),(40,519,'Benue State'),(40,520,'Borno'),(40,521,'Cross River'),(40,522,'Delta'),(40,523,'Ebonyi'),(40,524,'Edo'),(40,525,'Ekiti'),(40,526,'Enugu'),(40,527,'Gombe'),(40,528,'Imo'),(40,529,'Jigawa State'),(40,530,'Kaduna'),(40,531,'Kano'),(40,532,'Katsina'),(40,533,'Kebbi'),(40,534,'Kogi'),(40,535,'Kwara'),(40,536,'Lagos'),(40,537,'Nassarawa'),(40,538,'Niger'),(40,539,'Ogun'),(40,540,'Ondo'),(40,541,'Osun'),(40,542,'Oyo'),(40,543,'Plateau'),(40,544,'Rivers'),(40,545,'Sokoto'),(40,546,'Taraba'),(40,547,'Yobe'),(40,548,'Zamfara'),(41,549,'Reunion'),(42,550,'Eastern Province'),(42,551,'Kigali City'),(42,552,'Northern Province'),(42,553,'Southern Province'),(42,554,'Western Province'),(43,555,'Principe'),(43,556,'Sao Tome'),(44,557,'Dakar'),(44,558,'Diourbel'),(44,559,'Fatick'),(44,560,'Kaffrine'),(44,561,'Kaolack'),(44,562,'Kedougou'),(44,563,'Kolda'),(44,564,'Louga'),(44,565,'Matam'),(44,566,'Saint-Louis'),(44,567,'Sedhiou'),(44,568,'Tambacounda'),(44,569,'Thies'),(44,570,'Ziguinchor'),(45,571,'Anse Boileau'),(45,572,'Anse Royale'),(45,573,'Beau Vallon'),(45,574,'Bel Ombre'),(45,575,'Cascade'),(45,576,'English River'),(45,577,'Inner Islands'),(45,578,'Port Glaud'),(45,579,'Takamaka'),(46,580,'Eastern Province'),(46,581,'Northern Province'),(46,582,'Southern Province'),(46,583,'Western Area'),(47,584,'Awdal'),(47,585,'Bakool'),(47,586,'Banaadir'),(47,587,'Bari'),(47,588,'Bay'),(47,589,'Galguduud'),(47,590,'Gedo'),(47,591,'Hiiraan'),(47,592,'Lower Juba'),(47,593,'Middle Juba'),(47,594,'Middle Shabele'),(47,595,'Mudug'),(47,596,'Nugaal'),(47,597,'Sanaag'),(47,598,'Celje'),(47,599,'Cerklje Na Gorenjskem'),(47,600,'Cerknica'),(47,601,'Cerkno'),(47,602,'Cerkvenjak'),(47,603,'Crensovci'),(47,604,'Crna na Koroskem'),(47,605,'Crnomelj'),(47,606,'Destrnik'),(47,607,'Divaca'),(47,608,'Dobje'),(47,609,'Dobrepolje'),(47,610,'Dobrna'),(47,611,'Dobrova-Horjul-Polhov Gradec'),(47,612,'Dobrovnik-Dobronak'),(47,613,'Dol Pri Ljubljani'),(47,614,'Dolenjske Toplice'),(47,615,'Domzale'),(47,616,'Dornava'),(47,617,'Dravograd'),(47,618,'Duplek'),(47,619,'Gorenja Vas-Poljane'),(47,620,'Gorisnica'),(47,621,'Gornja Radgona'),(47,622,'Gornji Grad'),(47,623,'Gornji Petrovci'),(47,624,'Grad'),(47,625,'Grosuplje'),(47,626,'Hajdina'),(47,627,'Hoce-Slivnica'),(47,628,'Hodos-Hodos'),(47,629,'Horjul'),(47,630,'Hrastnik'),(47,631,'Hrpelje-Kozina'),(47,632,'Idrija'),(47,633,'Ig'),(47,634,'Ilirska Bistrica'),(47,635,'Ivancna Gorica'),(47,636,'Izola-Isola'),(47,637,'Jesenice'),(47,638,'Jezersko'),(47,639,'Jursinci'),(47,640,'Kamnik'),(47,641,'Kanal'),(47,642,'Kidricevo'),(47,643,'Kobarid'),(47,644,'Kobilje'),(47,645,'Kocevje'),(47,646,'Komen'),(47,647,'Komenda'),(47,648,'Koper-Capodistria'),(47,649,'Kostel'),(47,650,'Kozje'),(47,651,'Kranj'),(47,652,'Kranjska Gora'),(47,653,'Krizevci'),(47,654,'Krsko'),(47,655,'Kungota'),(47,656,'Kuzma'),(47,657,'Lasko'),(47,658,'Lenart'),(47,659,'Lendava-Lendva'),(47,660,'Litija'),(47,661,'Ljubljana'),(47,662,'Ljubno'),(47,663,'Ljutomer'),(47,664,'Logatec'),(47,665,'Loska Dolina'),(47,666,'Loski Potok'),(47,667,'Lovrenc na Pohorju'),(47,668,'Luce'),(47,669,'Lukovica'),(47,670,'Majsperk'),(47,671,'Maribor'),(47,672,'Markovci'),(47,673,'Medvode'),(47,674,'Menges'),(47,675,'Metlika'),(47,676,'Mezica'),(47,677,'Miklavz na Dravskem Polju'),(47,678,'Miren-Kostanjevica'),(47,679,'Mirna Pec'),(47,680,'Mislinja'),(47,681,'Moravce'),(47,682,'Moravske Toplice'),(47,683,'Mozirje'),(47,684,'Murska Sobota'),(47,685,'Muta'),(47,686,'Naklo'),(47,687,'Nazarje'),(47,688,'Nova Gorica'),(47,689,'Novo Mesto'),(47,690,'Odranci'),(47,691,'Oplotnica'),(47,692,'Ormoz'),(47,693,'Osilnica'),(47,694,'Pesnica'),(47,695,'Piran-Pirano'),(47,696,'Pivka'),(47,697,'Podcetrtek'),(47,698,'Podlehnik'),(47,699,'Podvelka'),(47,700,'Polzela'),(47,701,'Postojna'),(47,702,'Prebold'),(47,703,'Preddvor'),(47,704,'Prevalje'),(47,705,'Ptuj'),(47,706,'Puconci'),(47,707,'Race-Fram'),(47,708,'Radece'),(47,709,'Radenci'),(47,710,'Radlje ob Dravi'),(47,711,'Radovljica'),(47,712,'Ravne na Koroskem'),(47,713,'Razkrizje'),(47,714,'Ribnica'),(47,715,'Ribnica na Pohorju'),(47,716,'Rogaska Slatina'),(47,717,'Rogasovci'),(47,718,'Rogatec'),(47,719,'Ruse'),(47,720,'Salovci'),(47,721,'Selnica ob Dravi'),(47,722,'Semic'),(47,723,'Sempeter-Vrtojba'),(47,724,'Sencur'),(47,725,'Sentilj'),(47,726,'Sentjernej'),(47,727,'Sentjur pri Celju'),(47,728,'Sevnica'),(47,729,'Sezana'),(47,730,'Skocjan'),(47,731,'Skofja Loka'),(47,732,'Skofljica'),(47,733,'Slovenj Gradec'),(47,734,'Slovenska Bistrica'),(47,735,'Slovenska Konjice'),(47,736,'Smarje pri Jelsah'),(47,737,'Smartno ob Paki'),(47,738,'Smartno pri Litiji'),(47,739,'Sodrazica'),(47,740,'Solcava'),(47,741,'Sostanj'),(47,742,'Starse'),(47,743,'Store'),(47,744,'Sveta Ana'),(47,745,'Sveti Andraz v Slovenskih Goricah'),(47,746,'Sveti Jurij'),(47,747,'Tabor'),(47,748,'Tisina'),(47,749,'Tolmin'),(47,750,'Trbovlje'),(47,751,'Trebnje'),(47,752,'Trnovska Vas'),(47,753,'Trzic'),(47,754,'Trzin'),(47,755,'Turnisce'),(47,756,'Velenje'),(47,757,'Velika Polana'),(47,758,'Velike Lasce'),(47,759,'Verzej'),(47,760,'Videm'),(47,761,'Vipava'),(47,762,'Vitanje'),(47,763,'Vodice'),(47,764,'Vojnik'),(47,765,'Vransko'),(47,766,'Vrhnika'),(47,767,'Vuzenica'),(47,768,'Zagorje ob Savi'),(47,769,'Zalec'),(47,770,'Zavrc'),(47,771,'Zelezniki'),(47,772,'Zetale'),(47,773,'Ziri'),(47,774,'Zirovnica'),(47,775,'Zrece'),(47,776,'Zuzemberk'),(48,777,'Eastern Cape'),(48,778,'Free State'),(48,779,'Gauteng'),(48,780,'KwaZulu-Natal'),(48,781,'Limpopo'),(48,782,'Mpumalanga'),(48,783,'North-West'),(48,784,'Northern Cape'),(48,785,'Western Cape'),(49,786,'Al Qadarif'),(49,787,'Blue Nile'),(49,788,'Gezira'),(49,789,'Kassala State'),(49,790,'Khartoum'),(49,791,'Nile'),(49,792,'Northern Darfur State'),(49,793,'Northern Kordofan State'),(49,794,'Northern State'),(49,795,'Red Sea'),(49,796,'Sinnar State'),(49,797,'Southern Darfur State'),(49,798,'Southern Kordofan'),(49,799,'Western Darfur'),(49,800,'La Rioja'),(49,801,'Madrid'),(49,802,'Melilla'),(49,803,'Murcia'),(49,804,'Valencia'),(50,805,'Hhohho'),(50,806,'Lubombo'),(50,807,'Manzini'),(50,808,'Shiselweni'),(51,809,'Arusha'),(51,810,'Dar es Salaam'),(51,811,'Dodoma'),(51,812,'Eastern Province'),(51,813,'Iringa'),(51,814,'Kagera'),(51,815,'Kigoma'),(51,816,'Kilimanjaro'),(51,817,'Lindi'),(51,818,'Manyara'),(51,819,'Mara'),(51,820,'Mbeya'),(51,821,'Morogoro'),(51,822,'Mtwara'),(51,823,'Mwanza'),(51,824,'Pemba North'),(51,825,'Pemba South'),(51,826,'Pwani'),(51,827,'Rukwa'),(51,828,'Ruvuma'),(51,829,'Shinyanga'),(51,830,'Singida'),(51,831,'Tabora'),(51,832,'Tanga'),(51,833,'Zanzibar Central/South'),(51,834,'Zanzibar North'),(51,835,'Zanzibar Urban/West'),(52,836,'Centrale'),(52,837,'Collines'),(52,838,'Donga'),(52,839,'Kara'),(52,840,'Maritime'),(52,841,'Mono'),(52,842,'Northern'),(52,843,'Plateaux'),(52,844,'Savanes'),(52,845,'Volta'),(53,846,'Al Mahdiyah'),(53,847,'Al Munastir'),(53,848,'Al Qasrayn'),(53,849,'Al Qayrawan'),(53,850,'Ariana'),(53,851,'Bajah'),(53,852,'Banzart'),(53,853,'Bin Arus'),(53,854,'Gouvernorat de la Manouba'),(53,855,'Jundubah'),(53,856,'Kef'),(53,857,'Madanin'),(53,858,'Nabul'),(53,859,'Qabis'),(53,860,'Qafsah'),(53,861,'Qibili'),(53,862,'Safaqis'),(53,863,'Sidi Bu Zayd'),(53,864,'Silyanah'),(53,865,'Susah'),(53,866,'Tatawin'),(53,867,'Tawzar'),(53,868,'Tunis'),(53,869,'Zaghwan'),(54,870,'Abim'),(54,871,'Adjumani'),(54,872,'Alebtong'),(54,873,'Amolatar'),(54,874,'Amudat'),(54,875,'Amuria'),(54,876,'Amuru'),(54,877,'Apac'),(54,878,'Arua'),(54,879,'Budaka'),(54,880,'Bududa'),(54,881,'Bugiri'),(54,882,'Buhweju'),(54,883,'Bukedea'),(54,884,'Bukomansimbi'),(54,885,'Bukwa'),(54,886,'Bulambuli'),(54,887,'Bulisa'),(54,888,'Bundibugyo'),(54,889,'Bushenyi'),(54,890,'Busia'),(54,891,'Butaleja'),(54,892,'Dokolo'),(54,893,'Gomba'),(54,894,'Gulu'),(54,895,'Hoima'),(54,896,'Ibanda'),(54,897,'Iganga'),(54,898,'Isingiro'),(54,899,'Jinja'),(54,900,'Kaabong'),(54,901,'Kabale'),(54,902,'Kabarole'),(54,903,'Kaberamaido'),(54,904,'Kalangala'),(54,905,'Kaliro'),(54,906,'Kampala'),(54,907,'Kampala District'),(54,908,'Kamuli'),(54,909,'Kamwenge'),(54,910,'Kanungu'),(54,911,'Kapchorwa'),(54,912,'Kasese'),(54,913,'Katakwi'),(54,914,'Kayunga'),(54,915,'Kibale'),(54,916,'Kibuku'),(54,917,'Kiruhura'),(54,918,'Kisoro'),(54,919,'Kitgum'),(54,920,'Koboko'),(54,921,'Kotido'),(54,922,'Kumi'),(54,923,'Kyankwanzi'),(54,924,'Kyegegwa'),(54,925,'Kyenjojo'),(54,926,'Lamwo District'),(54,927,'Lira'),(54,928,'Luuka'),(54,929,'Luwero'),(54,930,'Lyantonde'),(54,931,'Manafwa'),(54,932,'Maracha'),(54,933,'Masaka'),(54,934,'Masindi'),(54,935,'Mayuge'),(54,936,'Mbale'),(54,937,'Mbarara'),(54,938,'Mitoma'),(54,939,'Mityana'),(54,940,'Moroto'),(54,941,'Moyo'),(54,942,'Mpigi'),(54,943,'Mubende'),(54,944,'Mukono'),(54,945,'Nakapiripirit'),(54,946,'Nakaseke'),(54,947,'Nakasongola'),(54,948,'Namayingo'),(54,949,'Namutumba'),(54,950,'Napak'),(54,951,'Nebbi'),(54,952,'Ntoroko'),(54,953,'Ntungamo'),(54,954,'Nwoya'),(54,955,'Nwoya District'),(54,956,'Otuke'),(54,957,'Oyam'),(54,958,'Pader'),(54,959,'Pallisa'),(54,960,'Rakai'),(54,961,'Rubirizi'),(54,962,'Rukungiri'),(54,963,'Sembabule'),(54,964,'Soroti'),(54,965,'Tororo'),(54,966,'Wakiso'),(54,967,'Yumbe'),(55,968,'Adrar'),(55,969,'Oued Ed-Dahab-Lagouira'),(55,970,'Tiris Zemmour'),(56,971,'Central'),(56,972,'Copperbelt'),(56,973,'Eastern'),(56,974,'Luapula'),(56,975,'Lusaka'),(56,976,'North-Western'),(56,977,'Northern'),(56,978,'Southern'),(56,979,'Western'),(57,980,'Bulawayo'),(57,981,'Harare Province'),(57,982,'Manicaland'),(57,983,'Mashonaland Central'),(57,984,'Mashonaland East'),(57,985,'Mashonaland West'),(57,986,'Masvingo'),(57,987,'Matabeleland North'),(57,988,'Matabeleland South'),(57,989,'Midlands'),(58,990,'Barbuda'),(58,991,'Saint George'),(58,992,'Saint John'),(58,993,'Saint Mary'),(58,994,'Saint Paul'),(58,995,'Saint Peter'),(58,996,'Saint Philip'),(59,997,'Acklins and Crooked Islands'),(59,998,'Berry Islands District'),(59,999,'Bimini'),(59,1000,'Black Point District'),(59,1001,'Cat Island'),(59,1002,'Central Abaco District'),(59,1003,'Central Andros District'),(59,1004,'Central Eleuthera District'),(59,1005,'Crooked Island and Long Cay District'),(59,1006,'East Grand Bahama District'),(59,1007,'Exuma'),(59,1008,'Freeport'),(59,1009,'Governors Harbour'),(59,1010,'Harbour Island'),(59,1011,'Hope Town District'),(59,1012,'Inagua'),(59,1013,'Long Island'),(59,1014,'Mangrove Cay District'),(59,1015,'Marsh Harbour'),(59,1016,'Mayaguana'),(59,1017,'Moores Island District'),(59,1018,'New Providence'),(59,1019,'North Abaco District'),(59,1020,'North Andros District'),(59,1021,'North Eleuthera District'),(59,1022,'Ragged Island'),(59,1023,'Rum Cay District'),(59,1024,'San Salvador'),(59,1025,'South Abaco District'),(59,1026,'South Andros District'),(59,1027,'South Eleuthera District'),(59,1028,'Spanish Wells District'),(59,1029,'West Grand Bahama District'),(60,1030,'Christ Church'),(60,1031,'Saint Andrew'),(60,1032,'Saint George'),(60,1033,'Saint James'),(60,1034,'Saint John'),(60,1035,'Saint Joseph'),(60,1036,'Saint Lucy'),(60,1037,'Saint Michael'),(60,1038,'Saint Peter'),(60,1039,'Saint Philip'),(60,1040,'Saint Thomas'),(61,1041,'Belize'),(61,1042,'Cayo'),(61,1043,'Corozal'),(61,1044,'Orange Walk'),(61,1045,'Stann Creek'),(61,1046,'Toledo'),(62,1047,'Alberta'),(62,1048,'British Columbia'),(62,1049,'Manitoba'),(62,1050,'New Brunswick'),(62,1051,'Newfoundland and Labrador'),(62,1052,'Northwest Territories'),(62,1053,'Nova Scotia'),(62,1054,'Nunavut'),(62,1055,'Ontario'),(62,1056,'Prince Edward Island'),(62,1057,'Quebec'),(62,1058,'Saskatchewan'),(62,1059,'Yukon'),(63,1060,'Alajuela'),(63,1061,'Cartago'),(63,1062,'Guanacaste'),(63,1063,'Heredia'),(63,1064,'Limon'),(63,1065,'Puntarenas'),(63,1066,'San Jose'),(64,1067,'Artemisa'),(64,1068,'Camaguey'),(64,1069,'Ciego de Avila'),(64,1070,'Cienfuegos'),(64,1071,'Ciudad de La Habana'),(64,1072,'Granma'),(64,1073,'Guantanamo'),(64,1074,'Holguin'),(64,1075,'Isla de la Juventud'),(64,1076,'Las Tunas'),(64,1077,'Matanzas'),(64,1078,'Mayabeque'),(64,1079,'Pinar del Rio'),(64,1080,'Sancti Spiritus'),(64,1081,'Santiago de Cuba'),(64,1082,'Villa Clara'),(65,1083,'Saint Andrew'),(65,1084,'Saint David'),(65,1085,'Saint George'),(65,1086,'Saint John'),(65,1087,'Saint Joseph'),(65,1088,'Saint Luke'),(65,1089,'Saint Mark'),(65,1090,'Saint Patrick'),(65,1091,'Saint Paul'),(65,1092,'Saint Peter'),(66,1093,'Azua'),(66,1094,'Baoruco'),(66,1095,'Barahona'),(66,1096,'Dajabon'),(66,1097,'Distrito Nacional'),(66,1098,'Duarte'),(66,1099,'El Seibo'),(66,1100,'Elias Pina'),(66,1101,'Espaillat'),(66,1102,'Hato Mayor'),(66,1103,'Hermanas Mirabal'),(66,1104,'Independencia'),(66,1105,'La Altagracia'),(66,1106,'La Romana'),(66,1107,'La Vega'),(66,1108,'Maria Trinidad Sanchez'),(66,1109,'Monsenor Nouel'),(66,1110,'Monte Cristi'),(66,1111,'Monte Plata'),(66,1112,'Pedernales'),(66,1113,'Peravia'),(66,1114,'Puerto Plata'),(66,1115,'Samana'),(66,1116,'San Cristobal'),(66,1117,'San Jose de Ocoa'),(66,1118,'San Juan'),(66,1119,'San Pedro de Macoris'),(66,1120,'Sanchez Ramirez'),(66,1121,'Santiago'),(66,1122,'Santiago Rodriguez'),(66,1123,'Santo Domingo'),(66,1124,'Valverde'),(67,1125,'Ahuachapan'),(67,1126,'Cabanas'),(67,1127,'Chalatenango'),(67,1128,'Cuscatlan'),(67,1129,'La Libertad'),(67,1130,'La Paz'),(67,1131,'La Union'),(67,1132,'Morazan'),(67,1133,'San Miguel'),(67,1134,'San Salvador'),(67,1135,'San Vicente'),(67,1136,'Santa Ana'),(67,1137,'Sonsonate'),(67,1138,'Usulutan'),(68,1139,'Kujalleq'),(68,1140,'Qaasuitsup'),(68,1141,'Qeqqata'),(68,1142,'Sermersooq'),(69,1143,'Carriacou and Petite Martinique'),(69,1144,'Saint Andrew'),(69,1145,'Saint David'),(69,1146,'Saint George'),(70,1147,'Alta Verapaz'),(70,1148,'Baja Verapaz'),(70,1149,'Chimaltenango'),(70,1150,'Chiquimula'),(70,1151,'El Progreso'),(70,1152,'Escuintla'),(70,1153,'Guatemala'),(70,1154,'Huehuetenango'),(70,1155,'Izabal'),(70,1156,'Jalapa'),(70,1157,'Jutiapa'),(70,1158,'Peten'),(70,1159,'Quetzaltenango'),(70,1160,'Quiche'),(70,1161,'Retalhuleu'),(70,1162,'Sacatepequez'),(70,1163,'San Marcos'),(70,1164,'Santa Rosa'),(70,1165,'Solola'),(70,1166,'Suchitepequez'),(70,1167,'Totonicapan'),(70,1168,'Zacapa'),(71,1169,'Artibonite'),(71,1170,'Centre'),(71,1171,'Grand Anse'),(71,1172,'Nippes'),(71,1173,'Nord'),(71,1174,'Nord-Est'),(71,1175,'Nord-Ouest'),(71,1176,'Ouest'),(71,1177,'Sud'),(71,1178,'Sud-Est'),(72,1179,'Atlantida'),(72,1180,'Bay Islands'),(72,1181,'Choluteca'),(72,1182,'Colon'),(72,1183,'Comayagua'),(72,1184,'Copan'),(72,1185,'Cortes'),(72,1186,'El Paraiso'),(72,1187,'Francisco Morazan'),(72,1188,'Gracias a Dios'),(72,1189,'Intibuca'),(72,1190,'La Paz'),(72,1191,'Lempira'),(72,1192,'Ocotepeque'),(72,1193,'Olancho'),(72,1194,'Santa Barbara'),(72,1195,'Valle'),(72,1196,'Yoro'),(73,1197,'Clarendon'),(73,1198,'Hanover Parish'),(73,1199,'Kingston'),(73,1200,'Manchester'),(73,1201,'Portland'),(73,1202,'Saint Andrew'),(73,1203,'Saint Ann'),(73,1204,'Saint Catherine'),(73,1205,'Saint James'),(73,1206,'Saint Mary'),(73,1207,'Saint Thomas'),(73,1208,'St. Elizabeth'),(73,1209,'Trelawny'),(73,1210,'Westmoreland'),(74,1211,'Martinique'),(75,1212,'Aguascalientes'),(75,1213,'Baja California'),(75,1214,'Baja California Sur'),(75,1215,'Campeche'),(75,1216,'Chiapas'),(75,1217,'Chihuahua'),(75,1218,'Coahuila'),(75,1219,'Colima'),(75,1220,'Durango'),(75,1221,'Guanajuato'),(75,1222,'Guerrero'),(75,1223,'Hidalgo'),(75,1224,'Jalisco'),(75,1225,'Mexico'),(75,1226,'Michoacan'),(75,1227,'Morelos'),(75,1228,'Nayarit'),(75,1229,'Nuevo Leon'),(75,1230,'Oaxaca'),(75,1231,'Puebla'),(75,1232,'Queretaro'),(75,1233,'Quintana Roo'),(75,1234,'San Luis Potosi'),(75,1235,'Sinaloa'),(75,1236,'Sonora'),(75,1237,'Tabasco'),(75,1238,'Tamaulipas'),(75,1239,'The Federal District'),(75,1240,'Tlaxcala'),(75,1241,'Veracruz-Llave'),(75,1242,'Yucatan'),(75,1243,'Zacatecas'),(76,1244,'Saint Anthony'),(76,1245,'Saint Georges'),(76,1246,'Saint Peter'),(77,1247,'Atlantico Norte'),(77,1248,'Atlantico Sur'),(77,1249,'Boaco'),(77,1250,'Carazo'),(77,1251,'Chinandega'),(77,1252,'Chontales'),(77,1253,'Esteli'),(77,1254,'Granada'),(77,1255,'Jinotega'),(77,1256,'Leon'),(77,1257,'Madriz'),(77,1258,'Managua'),(77,1259,'Masaya'),(77,1260,'Matagalpa'),(77,1261,'Nueva Segovia'),(77,1262,'Rio San Juan'),(77,1263,'Rivas'),(78,1264,'Bocas del Toro'),(78,1265,'Chiriqui'),(78,1266,'Cocle'),(78,1267,'Colon'),(78,1268,'Darien'),(78,1269,'Embera'),(78,1270,'Herrera'),(78,1271,'Kuna Yala'),(78,1272,'Los Santos'),(78,1273,'Ngobe-Bugle'),(78,1274,'Panama'),(78,1275,'Veraguas'),(79,1276,'Adjuntas'),(79,1277,'Aguada'),(79,1278,'Aguadilla'),(79,1279,'Aguas Buenas'),(79,1280,'Aibonito'),(79,1281,'Anasco'),(79,1282,'Arecibo'),(79,1283,'Arroyo'),(79,1284,'Barceloneta'),(79,1285,'Barranquitas'),(79,1286,'Bayamon'),(79,1287,'Cabo Rojo'),(79,1288,'Caguas'),(79,1289,'Camuy'),(79,1290,'Canovanas'),(79,1291,'Carolina'),(79,1292,'Catano'),(79,1293,'Cayey'),(79,1294,'Ceiba'),(79,1295,'Ciales'),(79,1296,'Cidra'),(79,1297,'Coamo'),(79,1298,'Comerio'),(79,1299,'Corozal'),(79,1300,'Culebra'),(79,1301,'Dorado'),(79,1302,'Fajardo'),(79,1303,'Florida'),(79,1304,'Guanica'),(79,1305,'Guayama'),(79,1306,'Guayanilla'),(79,1307,'Guaynabo'),(79,1308,'Gurabo'),(79,1309,'Hatillo'),(79,1310,'Hormigueros'),(79,1311,'Humacao'),(79,1312,'Isabela'),(79,1313,'Juana Diaz'),(79,1314,'Lajas'),(79,1315,'Lares'),(79,1316,'Las Marias'),(79,1317,'Las Piedras'),(79,1318,'Loiza'),(79,1319,'Luquillo'),(79,1320,'Manati'),(79,1321,'Maricao'),(79,1322,'Maunabo'),(79,1323,'Mayaguez'),(79,1324,'Moca'),(79,1325,'Morovis'),(79,1326,'Municipio de Jayuya'),(79,1327,'Municipio de Juncos'),(79,1328,'Naguabo'),(79,1329,'Naranjito'),(79,1330,'Orocovis'),(79,1331,'Patillas'),(79,1332,'Penuelas'),(79,1333,'Ponce'),(79,1334,'Quebradillas'),(79,1335,'Rincon'),(79,1336,'Rio Grande'),(79,1337,'Sabana Grande'),(79,1338,'Salinas'),(79,1339,'San German'),(79,1340,'San Juan'),(79,1341,'San Lorenzo'),(79,1342,'San Sebastian'),(79,1343,'Santa Isabel Municipio'),(79,1344,'Toa Alta'),(79,1345,'Toa Baja'),(79,1346,'Trujillo Alto'),(79,1347,'Utuado'),(79,1348,'Vega Alta'),(79,1349,'Vega Baja'),(79,1350,'Vieques'),(79,1351,'Villalba'),(79,1352,'Yabucoa'),(79,1353,'Yauco'),(80,1354,'Christ Church Nichola Town'),(80,1355,'Saint Anne Sandy Point'),(80,1356,'Saint George Basseterre'),(80,1357,'Saint George Gingerland'),(80,1358,'Saint James Windwa'),(80,1359,'Saint John Capesterre'),(80,1360,'Saint John Figtree'),(80,1361,'Saint Mary Cayon'),(80,1362,'Saint Paul Capesterre'),(80,1363,'Saint Paul Charlestown'),(80,1364,'Saint Peter Basseterre'),(80,1365,'Saint Thomas Lowland'),(80,1366,'Saint Thomas Middle Island'),(80,1367,'Trinity Palmetto Point'),(81,1368,'Anse-la-Raye'),(81,1369,'Castries'),(81,1370,'Choiseul'),(81,1371,'Dauphin'),(81,1372,'Dennery'),(81,1373,'Gros-Islet'),(81,1374,'Laborie'),(81,1375,'Micoud'),(81,1376,'Praslin'),(81,1377,'Soufriere'),(81,1378,'Vieux-Fort'),(82,1379,'Saint-Pierre'),(83,1380,'Charlotte'),(83,1381,'Grenadines'),(83,1382,'Saint Andrew'),(83,1383,'Saint David'),(83,1384,'Saint George'),(83,1385,'Saint Patrick'),(84,1386,'Arima'),(84,1387,'Chaguanas'),(84,1388,'Couva-Tabaquite-Talparo'),(84,1389,'Diego Martin'),(84,1390,'Eastern Tobago'),(84,1391,'Mayaro'),(84,1392,'Penal/Debe'),(84,1393,'Point Fortin'),(84,1394,'Port-of-Spain'),(84,1395,'Princes Town'),(84,1396,'San Fernando'),(84,1397,'San Juan/Laventille'),(84,1398,'Sangre Grande'),(84,1399,'Siparia'),(84,1400,'Tobago'),(84,1401,'Tunapuna/Piarco'),(85,1402,'Alabama'),(85,1403,'Alaska'),(85,1404,'Arizona'),(85,1405,'Arkansas'),(85,1406,'California'),(85,1407,'Colorado'),(85,1408,'Connecticut'),(85,1409,'Delaware'),(85,1410,'Florida'),(85,1411,'Georgia'),(85,1412,'Hawaii'),(85,1413,'Idaho'),(85,1414,'Illinois'),(85,1415,'Indiana'),(86,1416,'Buenos Aires'),(86,1417,'Buenos Aires F.D.'),(86,1418,'Catamarca'),(86,1419,'Chaco'),(86,1420,'Chubut'),(86,1421,'Cordoba'),(86,1422,'Corrientes'),(86,1423,'Entre Rios'),(86,1424,'Formosa'),(86,1425,'Jujuy'),(86,1426,'La Pampa'),(86,1427,'La Rioja'),(86,1428,'Mendoza'),(86,1429,'Misiones'),(86,1430,'Neuquen'),(86,1431,'Rio Negro'),(86,1432,'Salta'),(86,1433,'San Juan'),(86,1434,'San Luis'),(86,1435,'Santa Cruz'),(86,1436,'Santa Fe'),(86,1437,'Santiago del Estero'),(86,1438,'Tierra del Fuego'),(86,1439,'Tucuman'),(87,1440,'Chuquisaca'),(87,1441,'Cochabamba'),(87,1442,'El Beni'),(87,1443,'La Paz'),(87,1444,'Oruro'),(87,1445,'Pando'),(87,1446,'Potosi'),(87,1447,'Santa Cruz'),(87,1448,'Tarija'),(88,1449,'Acre'),(88,1450,'Alagoas'),(88,1451,'Amapa'),(88,1452,'Amazonas'),(88,1453,'Bahia'),(88,1454,'Ceara'),(88,1455,'Distrito Federal'),(88,1456,'Estado de Minas Gerais'),(88,1457,'Estado de Pernambuco'),(88,1458,'Estado do Espirito Santo'),(88,1459,'Goias'),(88,1460,'Maranhao'),(88,1461,'Mato Grosso'),(88,1462,'Mato Grosso do Sul'),(88,1463,'Para'),(88,1464,'Paraiba'),(88,1465,'Parana'),(88,1466,'Piaui'),(88,1467,'Rio de Janeiro'),(88,1468,'Rio Grande do Norte'),(88,1469,'Rio Grande do Sul'),(88,1470,'Rondonia'),(88,1471,'Roraima'),(88,1472,'Santa Catarina'),(88,1473,'Sao Paulo'),(88,1474,'Sergipe'),(88,1475,'Tocantins'),(89,1476,'Aisen del General Carlos IbaNez del Campo'),(89,1477,'Antofagasta'),(89,1478,'Araucania'),(89,1479,'Atacama'),(89,1480,'Bio-Bio'),(89,1481,'Coquimbo'),(89,1482,'Libertador General Bernardo OHiggins'),(89,1483,'Los Lagos'),(89,1484,'Magallanes y Antartica Chilena'),(89,1485,'Maule'),(89,1486,'Region de Arica y Parinacota'),(89,1487,'Region de Los Rios'),(89,1488,'Region Metropolitana'),(89,1489,'Tarapaca'),(89,1490,'Valparaiso'),(90,1491,'Amazonas'),(90,1492,'Antioquia'),(90,1493,'Arauca'),(90,1494,'Archipielago de San Andres, Providencia y Santa Catalina'),(90,1495,'Atlantico'),(90,1496,'Bogota D.C.'),(90,1497,'Bolivar'),(90,1498,'Boyaca'),(90,1499,'Caldas'),(90,1500,'Caqueta'),(90,1501,'Casanare'),(90,1502,'Cauca'),(90,1503,'Cesar'),(90,1504,'Choco'),(90,1505,'Cordoba'),(90,1506,'Cundinamarca'),(90,1507,'Guainia'),(90,1508,'Guaviare'),(90,1509,'Huila'),(90,1510,'La Guajira'),(90,1511,'Magdalena'),(90,1512,'Meta'),(90,1513,'NariNo'),(90,1514,'Norte de Santander'),(90,1515,'Putumayo'),(90,1516,'Quindio'),(90,1517,'Risaralda'),(90,1518,'Santander'),(90,1519,'Sucre'),(90,1520,'Tolima'),(90,1521,'Valle del Cauca'),(90,1522,'Vaupes'),(90,1523,'Vichada'),(91,1524,'Azuay'),(91,1525,'Bolivar'),(91,1526,'CaNar'),(91,1527,'Carchi'),(91,1528,'Chimborazo'),(91,1529,'Cotopaxi'),(91,1530,'El Oro'),(91,1531,'Esmeraldas'),(91,1532,'Galapagos'),(91,1533,'Guayas'),(91,1534,'Imbabura'),(91,1535,'Loja'),(91,1536,'Los Rios'),(91,1537,'Manabi'),(91,1538,'Morona-Santiago'),(91,1539,'Napo'),(91,1540,'Orellana'),(91,1541,'Pastaza'),(91,1542,'Pichincha'),(91,1543,'Santa Elena'),(91,1544,'Santo Domingo de los Tsachilas'),(91,1545,'Sucumbios'),(91,1546,'Tungurahua'),(91,1547,'Zamora-Chinchipe'),(92,1548,'Guyane'),(93,1549,'Barima-Waini'),(93,1550,'Cuyuni-Mazaruni'),(93,1551,'Demerara-Mahaica'),(93,1552,'East Berbice-Corentyne'),(93,1553,'Essequibo Islands-West Demerara'),(93,1554,'Mahaica-Berbice'),(93,1555,'Pomeroon-Supenaam'),(93,1556,'Potaro-Siparuni'),(93,1557,'Upper Demerara-Berbice'),(93,1558,'Upper Takutu-Upper Essequibo'),(94,1559,'Alto Paraguay'),(94,1560,'Alto Parana'),(94,1561,'Amambay'),(94,1562,'Asuncion'),(94,1563,'Boqueron'),(94,1564,'Caaguazu'),(94,1565,'Caazapa'),(94,1566,'Canindeyu'),(94,1567,'Central'),(94,1568,'Concepcion'),(94,1569,'Cordillera'),(94,1570,'Guaira'),(94,1571,'Itapua'),(94,1572,'Misiones'),(94,1573,'Neembucu'),(94,1574,'Paraguari'),(94,1575,'Presidente Hayes'),(94,1576,'San Pedro'),(95,1577,'Amazonas'),(95,1578,'Ancash'),(95,1579,'Apurimac'),(95,1580,'Arequipa'),(95,1581,'Ayacucho'),(95,1582,'Cajamarca'),(95,1583,'Callao'),(95,1584,'Cusco'),(95,1585,'Huancavelica'),(95,1586,'Huanuco'),(95,1587,'Ica'),(95,1588,'Junin'),(95,1589,'La Libertad'),(95,1590,'Lambayeque'),(95,1591,'Lima'),(95,1592,'Loreto'),(95,1593,'Madre de Dios'),(95,1594,'Moquegua'),(95,1595,'Pasco'),(95,1596,'Piura'),(95,1597,'Puno'),(95,1598,'San Martin'),(95,1599,'Tacna'),(95,1600,'Tumbes'),(95,1601,'Ucayali'),(96,1602,'Brokopondo'),(96,1603,'Commewijne'),(96,1604,'Coronie'),(96,1605,'Marowijne'),(96,1606,'Nickerie'),(96,1607,'Para'),(96,1608,'Paramaribo'),(96,1609,'Saramacca'),(96,1610,'Sipaliwini'),(96,1611,'Wanica'),(97,1612,'Artigas'),(97,1613,'Canelones'),(97,1614,'Cerro Largo'),(97,1615,'Colonia'),(97,1616,'Durazno'),(97,1617,'Flores'),(97,1618,'Florida'),(97,1619,'Lavalleja'),(97,1620,'Maldonado'),(97,1621,'Montevideo'),(97,1622,'Paysandu'),(97,1623,'Rio Negro'),(97,1624,'Rivera'),(97,1625,'Rocha'),(97,1626,'Iowa'),(97,1627,'Kansas'),(97,1628,'Kentucky'),(97,1629,'Louisiana'),(97,1630,'Maine'),(97,1631,'Maryland'),(97,1632,'Massachusetts'),(97,1633,'Michigan'),(97,1634,'Minnesota'),(97,1635,'Mississippi'),(97,1636,'Missouri'),(97,1637,'Montana'),(97,1638,'Nebraska'),(97,1639,'Nevada'),(97,1640,'New Hampshire'),(97,1641,'New Jersey'),(97,1642,'New Mexico'),(97,1643,'New York'),(97,1644,'North Carolina'),(97,1645,'North Dakota'),(97,1646,'Ohio'),(97,1647,'Oklahoma'),(97,1648,'Oregon'),(97,1649,'Pennsylvania'),(97,1650,'Rhode Island'),(97,1651,'South Carolina'),(97,1652,'South Dakota'),(97,1653,'Tennessee'),(97,1654,'Texas'),(97,1655,'Utah'),(97,1656,'Vermont'),(97,1657,'Virginia'),(97,1658,'Washington'),(97,1659,'Washington, D.C.'),(97,1660,'West Virginia'),(97,1661,'Wisconsin'),(97,1662,'Wyoming'),(98,1663,'Amazonas'),(98,1664,'Anzoategui'),(98,1665,'Apure'),(98,1666,'Aragua'),(98,1667,'Barinas'),(98,1668,'Bolivar'),(98,1669,'Carabobo'),(98,1670,'Cojedes'),(98,1671,'Delta Amacuro'),(98,1672,'Dependencias Federales'),(98,1673,'Distrito Capital'),(98,1674,'Falcon'),(98,1675,'Guarico'),(98,1676,'Isla Margarita'),(98,1677,'Lara'),(98,1678,'Merida'),(98,1679,'Miranda'),(98,1680,'Monagas'),(98,1681,'Portuguesa'),(98,1682,'Sucre'),(98,1683,'Tachira'),(98,1684,'Trujillo'),(98,1685,'Vargas'),(98,1686,'Yaracuy'),(98,1687,'Zulia'),(99,1688,'Saint Croix Island'),(99,1689,'Saint John Island'),(99,1690,'Saint Thomas Island'),(100,1691,'Antarctica'),(101,1692,'Badakhshan'),(101,1693,'Badghis'),(101,1694,'Baghlan'),(101,1695,'Balkh'),(101,1696,'Bamian'),(101,1697,'Farah'),(101,1698,'Faryab'),(101,1699,'Ghazni'),(101,1700,'Ghowr'),(101,1701,'Helmand'),(101,1702,'Herat'),(101,1703,'Jowzjan'),(101,1704,'Kabul'),(101,1705,'Kandahar'),(101,1706,'Kapisa'),(101,1707,'Khowst'),(101,1708,'Konar'),(101,1709,'Kunduz'),(101,1710,'Laghman'),(101,1711,'Lowgar'),(101,1712,'Nangarhar'),(101,1713,'Nimruz'),(101,1714,'Nurestan'),(101,1715,'Oruzgan'),(101,1716,'Paktia'),(101,1717,'Paktika'),(101,1718,'Panjshir'),(101,1719,'Parvan'),(101,1720,'Samangan'),(101,1721,'Sar-e Pol'),(101,1722,'Takhar'),(101,1723,'Vardak'),(101,1724,'Wilayat-e Daykundi'),(101,1725,'Zabul'),(101,1726,'Badakhshan'),(101,1727,'Badghis'),(101,1728,'Baghlan'),(101,1729,'Balkh'),(101,1730,'Bamian'),(101,1731,'Farah'),(101,1732,'Faryab'),(101,1733,'Ghazni'),(101,1734,'Ghowr'),(101,1735,'Helmand'),(101,1736,'Herat'),(101,1737,'Jowzjan'),(101,1738,'Kabul'),(101,1739,'Kandahar'),(101,1740,'Kapisa'),(101,1741,'Khowst'),(101,1742,'Konar'),(101,1743,'Kunduz'),(101,1744,'Laghman'),(101,1745,'Lowgar'),(101,1746,'Nangarhar'),(101,1747,'Nimruz'),(101,1748,'Nurestan'),(101,1749,'Oruzgan'),(101,1750,'Paktia'),(101,1751,'Paktika'),(101,1752,'Panjshir'),(101,1753,'Parvan'),(101,1754,'Samangan'),(101,1755,'Sar-e Pol'),(101,1756,'Takhar'),(101,1757,'Vardak'),(101,1758,'Wilayat-e Daykundi'),(101,1759,'Zabul'),(102,1760,'Aragatsotn'),(102,1761,'Ararat'),(102,1762,'Armavir'),(102,1763,'Gegharkunik'),(102,1764,'Kotayk'),(102,1765,'Lorri'),(102,1766,'Shirak'),(102,1767,'Syunik'),(102,1768,'Tavush'),(102,1769,'Vayots Dzor'),(102,1770,'Yerevan'),(103,1771,'Abseron'),(103,1772,'Agcabadi'),(103,1773,'Agdam'),(103,1774,'Agdas'),(103,1775,'Agstafa'),(103,1776,'Agsu'),(103,1777,'Astara'),(103,1778,'Baki'),(103,1779,'Balakan'),(103,1780,'Beylaqan'),(103,1781,'Bilasuvar'),(103,1782,'Barda'),(103,1783,'Cabray?l'),(103,1784,'Calilabad'),(103,1785,'Daskasan'),(103,1786,'Davaci'),(103,1787,'Fuzuli'),(103,1788,'Goranboy'),(103,1789,'Goycay'),(103,1790,'Goygol Rayon'),(103,1791,'Gadabay'),(103,1792,'Ganca'),(103,1793,'Hac?qabul'),(103,1794,'?misli'),(103,1795,'?smay?ll?'),(103,1796,'Kurdamir'),(103,1797,'Kalbacar'),(103,1798,'Lac?n'),(103,1799,'Lerik'),(103,1800,'Lankaran'),(103,1801,'Masall?'),(103,1802,'Mingacevir'),(103,1803,'Naftalan'),(103,1804,'Nakhichevan'),(103,1805,'Neftcala'),(103,1806,'Oguz'),(103,1807,'Qazax'),(103,1808,'Qobustan'),(103,1809,'Quba'),(103,1810,'Qubadl?'),(103,1811,'Qusar'),(103,1812,'Qabala'),(103,1813,'Qax'),(103,1814,'Saatl?'),(103,1815,'Sabirabad'),(103,1816,'Salyan'),(103,1817,'samax?'),(103,1818,'Samux'),(103,1819,'Shaki City'),(103,1820,'Siyazan'),(103,1821,'Sumqayit'),(103,1822,'susa'),(103,1823,'saki'),(103,1824,'samkir'),(103,1825,'Tovuz'),(103,1826,'Tartar'),(103,1827,'Ucar'),(103,1828,'Xacmaz'),(103,1829,'Xankandi'),(103,1830,'X?z?'),(103,1831,'Xocal?'),(103,1832,'Xocavand'),(103,1833,'Yard?ml?'),(103,1834,'Yevlax'),(103,1835,'Yevlax City'),(103,1836,'Zaqatala'),(103,1837,'Zangilan'),(103,1838,'Zardab'),(103,1839,'ali Bayramli'),(104,1840,'Capital Governorate'),(104,1841,'Central Governorate'),(104,1842,'Muharraq'),(104,1843,'Northern Governorate'),(104,1844,'Southern Governorate'),(105,1845,'Barisal'),(105,1846,'Chittagong'),(105,1847,'Dhaka'),(105,1848,'Khulna'),(105,1849,'Rajshahi'),(105,1850,'Rangpur'),(105,1851,'Rangpur Division'),(105,1852,'Sylhet'),(106,1853,'Bumthang'),(106,1854,'Chhukha'),(106,1855,'Chirang'),(106,1856,'Daga'),(106,1857,'Gasa'),(106,1858,'Geylegphug'),(106,1859,'Ha'),(106,1860,'Lhuntshi'),(106,1861,'Mongar'),(106,1862,'Paro'),(106,1863,'Pemagatsel'),(106,1864,'Punakha'),(106,1865,'Samchi'),(106,1866,'Samdrup Jongkhar'),(106,1867,'Shemgang'),(106,1868,'Tashigang'),(106,1869,'Thimphu'),(106,1870,'Tongsa'),(106,1871,'Trashi Yangste'),(106,1872,'Wangdi Phodrang'),(107,1873,'British Indian Ocean Territory'),(108,1874,'Belait'),(108,1875,'Brunei and Muara'),(108,1876,'Temburong'),(108,1877,'Tutong'),(109,1878,'Kampong Cham'),(109,1879,'Kampong Chhnang'),(109,1880,'Kampong Thum'),(109,1881,'Kandal'),(109,1882,'Kaoh Kong'),(109,1883,'Khett Banteay Mean Choay'),(109,1884,'Khett Batdambang'),(109,1885,'Khett Kampong Sp?'),(109,1886,'Khett Kampot'),(109,1887,'Khett Keb'),(109,1888,'Khett Pailin'),(109,1889,'Khett Preah Seihanu'),(109,1890,'Khett Rotanokiri'),(109,1891,'Khett Siem Reab'),(109,1892,'Kracheh'),(109,1893,'Krong Phnum Penh'),(109,1894,'Mondol Kiri'),(109,1895,'otar Meanchey'),(109,1896,'Pouthisat'),(109,1897,'Preah Vihear'),(109,1898,'Prey Veng'),(109,1899,'Stoeng Treng'),(109,1900,'Svay Rieng'),(109,1901,'Takev'),(110,1902,'Andijon'),(110,1903,'Anhui Sheng'),(110,1904,'Beijing'),(110,1905,'Chongqing Shi'),(110,1906,'Fujian'),(110,1907,'Gansu Sheng'),(110,1908,'Guangdong Sheng'),(110,1909,'Guangxi Zhuangzu Zizhiqu'),(110,1910,'Guizhou Sheng'),(110,1911,'Hainan'),(110,1912,'Hebei'),(110,1913,'Heilongjiang Sheng'),(110,1914,'Henan Sheng'),(110,1915,'Hubei'),(110,1916,'Hunan'),(110,1917,'Inner Mongolia'),(110,1918,'Jiangsu Sheng'),(110,1919,'Jiangxi'),(110,1920,'Jilin Sheng'),(110,1921,'Liaoning'),(110,1922,'Ningxia Huizu Zizhiqu'),(110,1923,'Qinghai Sheng'),(110,1924,'Shaanxi Sheng'),(110,1925,'Shandong Sheng'),(110,1926,'Shanghai Shi'),(110,1927,'Shanxi Sheng'),(110,1928,'Sichuan'),(110,1929,'Tianjin Shi'),(110,1930,'Tibet Autonomous Region'),(110,1931,'Xinjiang Uygur Zizhiqu'),(110,1932,'Yunnan'),(110,1933,'Zhejiang Sheng'),(110,1934,'Andijon'),(110,1935,'Anhui Sheng'),(110,1936,'Beijing'),(110,1937,'Chongqing Shi'),(110,1938,'Fujian'),(110,1939,'Gansu Sheng'),(110,1940,'Guangdong Sheng'),(110,1941,'Guangxi Zhuangzu Zizhiqu'),(110,1942,'Guizhou Sheng'),(110,1943,'Hainan'),(110,1944,'Hebei'),(110,1945,'Heilongjiang Sheng'),(110,1946,'Henan Sheng'),(110,1947,'Hubei'),(110,1948,'Hunan'),(110,1949,'Inner Mongolia'),(110,1950,'Jiangsu Sheng'),(110,1951,'Jiangxi'),(110,1952,'Jilin Sheng'),(110,1953,'Liaoning'),(110,1954,'Ningxia Huizu Zizhiqu'),(110,1955,'Qinghai Sheng'),(110,1956,'Shaanxi Sheng'),(110,1957,'Shandong Sheng'),(110,1958,'Shanghai Shi'),(110,1959,'Shanxi Sheng'),(110,1960,'Sichuan'),(110,1961,'Tianjin Shi'),(110,1962,'Tibet Autonomous Region'),(110,1963,'Xinjiang Uygur Zizhiqu'),(110,1964,'Yunnan'),(110,1965,'Zhejiang Sheng'),(110,1966,'Andijon'),(110,1967,'Anhui Sheng'),(110,1968,'Beijing'),(110,1969,'Chongqing Shi'),(110,1970,'Fujian'),(110,1971,'Gansu Sheng'),(110,1972,'Guangdong Sheng'),(110,1973,'Guangxi Zhuangzu Zizhiqu'),(110,1974,'Guizhou Sheng'),(110,1975,'Hainan'),(110,1976,'Hebei'),(110,1977,'Heilongjiang Sheng'),(110,1978,'Henan Sheng'),(110,1979,'Hubei'),(110,1980,'Hunan'),(110,1981,'Inner Mongolia'),(110,1982,'Jiangsu Sheng'),(110,1983,'Jiangxi'),(110,1984,'Jilin Sheng'),(110,1985,'Liaoning'),(110,1986,'Ningxia Huizu Zizhiqu'),(110,1987,'Qinghai Sheng'),(110,1988,'Shaanxi Sheng'),(110,1989,'Shandong Sheng'),(110,1990,'Shanghai Shi'),(110,1991,'Shanxi Sheng'),(110,1992,'Sichuan'),(110,1993,'Tianjin Shi'),(110,1994,'Tibet Autonomous Region'),(110,1995,'Xinjiang Uygur Zizhiqu'),(110,1996,'Yunnan'),(110,1997,'Zhejiang Sheng'),(111,1998,'Famagusta'),(111,1999,'Kyrenia'),(111,2000,'Larnaca'),(111,2001,'Limassol'),(111,2002,'Nicosia'),(111,2003,'Paphos'),(112,2004,'Abkhazia'),(112,2005,'Ajaria'),(112,2006,'Guria'),(112,2007,'Imereti'),(112,2008,'Kakheti'),(112,2009,'Kvemo Kartli'),(112,2010,'Mtskheta-Mtianeti'),(112,2011,'Racha-Lechkhumi and Kvemo Svaneti'),(112,2012,'Samegrelo and Zemo Svaneti'),(112,2013,'Samtskhe-Javakheti'),(112,2014,'Shida Kartli'),(112,2015,'Tbilisi'),(113,2016,'Central and Western'),(113,2017,'Eastern'),(113,2018,'Kowloon City'),(113,2019,'Kwai Tsing'),(113,2020,'Kwon Tong'),(113,2021,'Sai Kung'),(113,2022,'Sha Tin'),(113,2023,'Sham Shui Po'),(113,2024,'Southern'),(113,2025,'Tai Po'),(113,2026,'Tsuen Wan'),(113,2027,'Tuen Mun'),(113,2028,'Wan Chai'),(113,2029,'Wong Tai Sin'),(113,2030,'Yau Tsim Mong'),(113,2031,'Yuen Long'),(114,2032,'Andaman and Nicobar Islands'),(114,2033,'Andhra Pradesh'),(114,2034,'Arunachal Pradesh'),(114,2035,'Assam'),(114,2036,'Bengal'),(114,2037,'Bihar'),(114,2038,'Chandigarh'),(114,2039,'Chhattisgarh'),(114,2040,'Dadra and Nagar Haveli'),(114,2041,'Daman and Diu'),(114,2042,'Goa'),(114,2043,'Gujarat'),(114,2044,'Haryana'),(114,2045,'Himachal Pradesh'),(114,2046,'Jharkhand'),(114,2047,'Karnataka'),(114,2048,'Kashmir'),(114,2049,'Kerala'),(114,2050,'Laccadives'),(114,2051,'Madhya Pradesh'),(114,2052,'Maharashtra'),(114,2053,'Manipur'),(114,2054,'Meghalaya'),(114,2055,'Mizoram'),(114,2056,'Nagaland'),(114,2057,'NCT'),(114,2058,'Orissa'),(114,2059,'Puducherry'),(114,2060,'Punjab'),(114,2061,'Rajasthan'),(114,2062,'Sikkim'),(114,2063,'Tamil Nadu'),(114,2064,'Tripura'),(114,2065,'Uttar Pradesh'),(114,2066,'Uttarakhand'),(114,2067,'West Bengal'),(115,2068,'Aceh'),(115,2069,'Bali'),(115,2070,'Bangka-Belitung'),(115,2071,'Banten'),(115,2072,'Bengkulu'),(115,2073,'Central Java'),(115,2074,'Central Sulawesi'),(115,2075,'Daerah Istimewa Yogyakarta'),(115,2076,'Distrito Dili'),(115,2077,'East Java'),(115,2078,'East Kalimantan'),(115,2079,'East Nusa Tenggara'),(115,2080,'Gorontalo'),(115,2081,'Irian Jaya Barat'),(115,2082,'Jakarta Raya'),(115,2083,'Jambi'),(115,2084,'Kalimantan Tengah'),(115,2085,'Lampung'),(115,2086,'Maluku'),(115,2087,'Maluku Utara'),(115,2088,'North Sulawesi'),(115,2089,'North Sumatra'),(115,2090,'Nusa Tenggara Barat'),(115,2091,'Papua'),(115,2092,'Riau'),(115,2093,'Riau Islands'),(115,2094,'South Kalimantan'),(115,2095,'South Sulawesi'),(115,2096,'South Sumatra'),(115,2097,'Sulawesi Barat'),(115,2098,'Sulawesi Tenggara'),(115,2099,'West Java'),(115,2100,'West Kalimantan'),(115,2101,'West Sumatra'),(116,2102,'Ardabil'),(116,2103,'azzarbayjan-e Gharbi'),(116,2104,'Bushehr'),(116,2105,'Chahar MaHall va Bakhtiari'),(116,2106,'East Azarbaijan'),(116,2107,'Esfahan'),(116,2108,'Fars'),(116,2109,'Gilan'),(116,2110,'Golestan'),(116,2111,'Hamadan'),(116,2112,'Hormozgan'),(116,2113,'ilam'),(116,2114,'Kerman'),(116,2115,'Kermanshah'),(116,2116,'Khorasan-e Jonubi'),(116,2117,'Khorasan-e Shomali'),(116,2118,'Khuzestan'),(116,2119,'Kohgiluyeh va Buyer AHmad'),(116,2120,'Kordestan'),(116,2121,'Lorestan'),(116,2122,'Markazi'),(116,2123,'Mazandaran'),(116,2124,'Ostan-e Alborz'),(116,2125,'Qazvin'),(116,2126,'Qom'),(116,2127,'Razavi Khorasan'),(116,2128,'Semnan'),(116,2129,'Sistan va Baluchestan'),(116,2130,'Tehran'),(116,2131,'Yazd'),(116,2132,'Zanjan'),(116,2133,'Ardabil'),(116,2134,'azzarbayjan-e Gharbi'),(116,2135,'Bushehr'),(116,2136,'Chahar MaHall va Bakhtiari'),(116,2137,'East Azarbaijan'),(116,2138,'Esfahan'),(116,2139,'Fars'),(116,2140,'Gilan'),(116,2141,'Golestan'),(116,2142,'Hamadan'),(116,2143,'Hormozgan'),(116,2144,'ilam'),(116,2145,'Kerman'),(116,2146,'Kermanshah'),(116,2147,'Khorasan-e Jonubi'),(116,2148,'Khorasan-e Shomali'),(116,2149,'Khuzestan'),(116,2150,'Kohgiluyeh va Buyer AHmad'),(116,2151,'Kordestan'),(116,2152,'Lorestan'),(116,2153,'Markazi'),(116,2154,'Mazandaran'),(116,2155,'Ostan-e Alborz'),(116,2156,'Qazvin'),(116,2157,'Qom'),(116,2158,'Razavi Khorasan'),(116,2159,'Semnan'),(116,2160,'Sistan va Baluchestan'),(116,2161,'Tehran'),(116,2162,'Yazd'),(116,2163,'Zanjan'),(117,2164,'Al Basrah'),(117,2165,'Al Muthanna'),(117,2166,'Al Qadisiyah'),(117,2167,'An Najaf'),(117,2168,'Anbar'),(117,2169,'Arbil'),(117,2170,'As Sulaymaniyah'),(117,2171,'At Tamim'),(117,2172,'Babil'),(117,2173,'Baghdad'),(117,2174,'Dahuk'),(117,2175,'Dhi Qar'),(117,2176,'Diyala'),(117,2177,'Karbala'),(117,2178,'Maysan'),(117,2179,'Ninawa'),(117,2180,'salaH ad Din'),(117,2181,'Wasit'),(118,2182,'Central District'),(118,2183,'Haifa'),(118,2184,'Jerusalem District'),(118,2185,'Northern District'),(118,2186,'Southern District'),(118,2187,'Tel Aviv'),(118,2188,'West Bank'),(119,2189,'Ajlun'),(119,2190,'Amman'),(119,2191,'Aqaba'),(119,2192,'Balqa'),(119,2193,'Irbid'),(119,2194,'Jerash'),(119,2195,'Karak'),(119,2196,'Madaba'),(119,2197,'Mafraq'),(119,2198,'Maan'),(119,2199,'Tafielah'),(119,2200,'Zarqa'),(120,2201,'Almaty'),(120,2202,'Almaty Qalasy'),(120,2203,'Aqmola'),(120,2204,'Aqtobe'),(120,2205,'Astana Qalasy'),(120,2206,'Atyrau'),(120,2207,'Batys Qazaqstan'),(120,2208,'Bayqongyr Qalasy'),(120,2209,'East Kazakhstan'),(120,2210,'Mangghystau'),(120,2211,'Ongtustik Qazaqstan'),(120,2212,'Pavlodar'),(120,2213,'Qaraghandy'),(120,2214,'Qostanay'),(120,2215,'Qyzylorda'),(120,2216,'Soltustik Qazaqstan'),(120,2217,'Zhambyl'),(120,2218,'Almaty'),(120,2219,'Almaty Qalasy'),(120,2220,'Aqmola'),(120,2221,'Aqtobe'),(120,2222,'Astana Qalasy'),(120,2223,'Atyrau'),(120,2224,'Batys Qazaqstan'),(120,2225,'Bayqongyr Qalasy'),(120,2226,'East Kazakhstan'),(120,2227,'Mangghystau'),(120,2228,'Ongtustik Qazaqstan'),(120,2229,'Pavlodar'),(120,2230,'Qaraghandy'),(120,2231,'Qostanay'),(120,2232,'Qyzylorda'),(120,2233,'Soltustik Qazaqstan'),(120,2234,'Zhambyl'),(121,2235,'Chagang-do'),(121,2236,'Gangwon'),(121,2237,'Hamgyong-bukto'),(121,2238,'Hamgyong-namdo'),(121,2239,'Hwanghae-bukto'),(121,2240,'Hwanghae-namdo'),(121,2241,'Najin Sonbong-si'),(121,2242,'Pyongan-bukto'),(121,2243,'Pyongan-namdo'),(121,2244,'Pyongyang-si'),(121,2245,'Yanggang-do'),(122,2246,'Busan'),(122,2247,'Daegu'),(122,2248,'Daejeon'),(122,2249,'Gangwon'),(122,2250,'Gwangju'),(122,2251,'Gyeonggi'),(122,2252,'Incheon'),(122,2253,'Jeju'),(122,2254,'North Chungcheong'),(122,2255,'North Gyeongsang'),(122,2256,'North Jeolla'),(122,2257,'Seoul'),(122,2258,'South Chungcheong'),(122,2259,'South Gyeongsang'),(122,2260,'South Jeolla'),(122,2261,'Ulsan'),(123,2262,'Al AHmadi'),(123,2263,'Al Farwaniyah'),(123,2264,'Al Jahra'),(123,2265,'Al asimah'),(123,2266,'Hawalli'),(123,2267,'Muhafazat Mubarak al Kabir'),(124,2268,'Andijon'),(124,2269,'Batken'),(124,2270,'Bishkek'),(124,2271,'Chuy'),(124,2272,'Jalal-Abad'),(124,2273,'Naryn'),(124,2274,'Osh'),(124,2275,'Talas'),(124,2276,'Ysyk-Kol'),(125,2277,'Attapu'),(125,2278,'Bokeo'),(125,2279,'Bolikhamxai'),(125,2280,'Champasak'),(125,2281,'Houaphan'),(125,2282,'Khammouan'),(125,2283,'Khoueng Viangchan'),(125,2284,'Louangphabang'),(125,2285,'Loungnamtha'),(125,2286,'Oudomxai'),(125,2287,'Phongsali'),(125,2288,'Salavan'),(125,2289,'Savannahkhet'),(125,2290,'Viangchan'),(125,2291,'Xekong'),(125,2292,'Xiagnabouli'),(125,2293,'Xiangkhoang'),(126,2294,'adazu Novads'),(126,2295,'Aglonas Novads'),(126,2296,'Aizkraukles Rajons'),(126,2297,'Aizputes Novads'),(126,2298,'Aknistes Novads'),(126,2299,'Alojas Novads'),(126,2300,'Alsungas Novads'),(126,2301,'Aluksnes Rajons'),(126,2302,'Amatas Novads'),(126,2303,'Apes Novads'),(126,2304,'Auces Novads'),(126,2305,'Babites Novads'),(126,2306,'Baldones Novads'),(126,2307,'Baltinavas Novads'),(126,2308,'Balvu Rajons'),(126,2309,'Bauskas Rajons'),(126,2310,'Beverinas Novads'),(126,2311,'Brocenu Novads'),(126,2312,'Burtnieku Novads'),(126,2313,'Carnikavas Novads'),(126,2314,'Cesu Rajons'),(126,2315,'Cesvaines Novads'),(126,2316,'Ciblas Novads'),(126,2317,'Dagdas Novads'),(126,2318,'Daugavpils'),(126,2319,'Daugavpils Rajons'),(126,2320,'Dobeles Rajons'),(126,2321,'Dundagas Novads'),(126,2322,'Durbes Novads'),(126,2323,'Engures Novads'),(126,2324,'erglu Novads'),(126,2325,'Garkalnes Novads'),(126,2326,'Grobinas Novads'),(126,2327,'Gulbenes Rajons'),(126,2328,'Iecavas Novads'),(126,2329,'IksKiles Novads'),(126,2330,'Ilukstes Novads'),(126,2331,'Incukalna Novads'),(126,2332,'Jaunjelgavas Novads'),(126,2333,'Jaunpiebalgas Novads'),(126,2334,'Jaunpils Novads'),(126,2335,'Jekabpils Rajons'),(126,2336,'Jelgava'),(126,2337,'Jelgavas Rajons'),(126,2338,'Jurmala'),(126,2339,'Kandavas Novads'),(126,2340,'Karsavas Novads'),(126,2341,'Keguma Novads'),(126,2342,'Kekavas Novads'),(126,2343,'Kocenu Novads'),(126,2344,'Kokneses Novads'),(126,2345,'Kraslavas Rajons'),(126,2346,'Krimuldas Novads'),(126,2347,'Krustpils Novads'),(126,2348,'Kuldigas Rajons'),(126,2349,'Lielvardes Novads'),(126,2350,'Liepaja'),(126,2351,'Liepajas Rajons'),(126,2352,'Ligatnes Novads'),(126,2353,'Limbazu Rajons'),(126,2354,'Livanu Novads'),(126,2355,'Lubanas Novads'),(126,2356,'Ludzas Rajons'),(126,2357,'Madonas Rajons'),(126,2358,'Malpils Novads'),(126,2359,'Marupes Novads'),(126,2360,'Mazsalacas Novads'),(126,2361,'Nauksenu Novads'),(126,2362,'Neretas Novads'),(126,2363,'Nicas Novads'),(126,2364,'Ogres Rajons'),(126,2365,'Olaines Novads'),(126,2366,'Ozolnieku Novads'),(126,2367,'Pargaujas Novads'),(126,2368,'Pavilostas Novads'),(126,2369,'Plavinu Novads'),(126,2370,'Preilu Rajons'),(126,2371,'Priekules Novads'),(126,2372,'Priekulu Novads'),(126,2373,'Raunas Novads'),(126,2374,'Rezekne'),(126,2375,'Rezeknes Rajons'),(126,2376,'Riebinu Novads'),(126,2377,'Riga'),(126,2378,'Rigas Rajons'),(126,2379,'Rojas Novads'),(126,2380,'Ropazu Novads'),(126,2381,'Rucavas Novads'),(126,2382,'Rugaju Novads'),(126,2383,'Rujienas Novads'),(126,2384,'Rundales Novads'),(126,2385,'Salacgrivas Novads'),(126,2386,'Salas Novads'),(126,2387,'Salaspils Novads'),(126,2388,'Saldus Rajons'),(126,2389,'Saulkrastu Novads'),(126,2390,'Sejas Novads'),(126,2391,'Siguldas Novads'),(126,2392,'Skriveru Novads'),(126,2393,'Skrundas Novads'),(126,2394,'Smiltenes Novads'),(126,2395,'Stopinu Novads'),(126,2396,'Strencu Novads'),(126,2397,'Talsu Rajons'),(126,2398,'Tervetes Novads'),(126,2399,'Tukuma Rajons'),(126,2400,'Vainodes Novads'),(126,2401,'Valkas Rajons'),(126,2402,'Valmieras Rajons'),(126,2403,'Varaklanu Novads'),(126,2404,'Varkavas Novads'),(126,2405,'Vecpiebalgas Novads'),(126,2406,'Vecumnieku Novads'),(126,2407,'Ventspils'),(126,2408,'Ventspils Rajons'),(126,2409,'Viesites Novads'),(126,2410,'Vilakas Novads'),(126,2411,'Vilanu Novads'),(126,2412,'Zilupes Novads'),(126,2413,'adazu Novads'),(126,2414,'Aglonas Novads'),(126,2415,'Aizkraukles Rajons'),(126,2416,'Aizputes Novads'),(126,2417,'Aknistes Novads'),(126,2418,'Alojas Novads'),(126,2419,'Alsungas Novads'),(126,2420,'Aluksnes Rajons'),(126,2421,'Amatas Novads'),(126,2422,'Apes Novads'),(126,2423,'Auces Novads'),(126,2424,'Babites Novads'),(126,2425,'Baldones Novads'),(126,2426,'Baltinavas Novads'),(126,2427,'Balvu Rajons'),(126,2428,'Bauskas Rajons'),(126,2429,'Beverinas Novads'),(126,2430,'Brocenu Novads'),(126,2431,'Burtnieku Novads'),(126,2432,'Carnikavas Novads'),(126,2433,'Cesu Rajons'),(126,2434,'Cesvaines Novads'),(126,2435,'Ciblas Novads'),(126,2436,'Dagdas Novads'),(126,2437,'Daugavpils'),(126,2438,'Daugavpils Rajons'),(126,2439,'Dobeles Rajons'),(126,2440,'Dundagas Novads'),(126,2441,'Durbes Novads'),(126,2442,'Engures Novads'),(126,2443,'erglu Novads'),(126,2444,'Garkalnes Novads'),(126,2445,'Grobinas Novads'),(126,2446,'Gulbenes Rajons'),(126,2447,'Iecavas Novads'),(126,2448,'IksKiles Novads'),(126,2449,'Ilukstes Novads'),(126,2450,'Incukalna Novads'),(126,2451,'Jaunjelgavas Novads'),(126,2452,'Jaunpiebalgas Novads'),(126,2453,'Jaunpils Novads'),(126,2454,'Jekabpils Rajons'),(126,2455,'Jelgava'),(126,2456,'Jelgavas Rajons'),(126,2457,'Jurmala'),(126,2458,'Kandavas Novads'),(126,2459,'Karsavas Novads'),(126,2460,'Keguma Novads'),(126,2461,'Kekavas Novads'),(126,2462,'Kocenu Novads'),(126,2463,'Kokneses Novads'),(126,2464,'Kraslavas Rajons'),(126,2465,'Krimuldas Novads'),(126,2466,'Krustpils Novads'),(126,2467,'Kuldigas Rajons'),(126,2468,'Lielvardes Novads'),(126,2469,'Liepaja'),(126,2470,'Liepajas Rajons'),(126,2471,'Ligatnes Novads'),(126,2472,'Limbazu Rajons'),(126,2473,'Livanu Novads'),(126,2474,'Lubanas Novads'),(126,2475,'Ludzas Rajons'),(126,2476,'Madonas Rajons'),(126,2477,'Malpils Novads'),(126,2478,'Marupes Novads'),(126,2479,'Mazsalacas Novads'),(126,2480,'Nauksenu Novads'),(126,2481,'Neretas Novads'),(126,2482,'Nicas Novads'),(126,2483,'Ogres Rajons'),(126,2484,'Olaines Novads'),(126,2485,'Ozolnieku Novads'),(126,2486,'Pargaujas Novads'),(126,2487,'Pavilostas Novads'),(126,2488,'Plavinu Novads'),(126,2489,'Preilu Rajons'),(126,2490,'Priekules Novads'),(126,2491,'Priekulu Novads'),(126,2492,'Raunas Novads'),(126,2493,'Rezekne'),(126,2494,'Rezeknes Rajons'),(126,2495,'Riebinu Novads'),(126,2496,'Riga'),(126,2497,'Rigas Rajons'),(126,2498,'Rojas Novads'),(126,2499,'Ropazu Novads'),(126,2500,'Rucavas Novads'),(126,2501,'Rugaju Novads'),(126,2502,'Rujienas Novads'),(126,2503,'Rundales Novads'),(126,2504,'Salacgrivas Novads'),(126,2505,'Salas Novads'),(126,2506,'Salaspils Novads'),(126,2507,'Saldus Rajons'),(126,2508,'Saulkrastu Novads'),(126,2509,'Sejas Novads'),(126,2510,'Siguldas Novads'),(126,2511,'Skriveru Novads'),(126,2512,'Skrundas Novads'),(126,2513,'Smiltenes Novads'),(126,2514,'Stopinu Novads'),(126,2515,'Strencu Novads'),(126,2516,'Talsu Rajons'),(126,2517,'Tervetes Novads'),(126,2518,'Tukuma Rajons'),(126,2519,'Vainodes Novads'),(126,2520,'Valkas Rajons'),(126,2521,'Valmieras Rajons'),(126,2522,'Varaklanu Novads'),(126,2523,'Varkavas Novads'),(126,2524,'Vecpiebalgas Novads'),(126,2525,'Vecumnieku Novads'),(126,2526,'Ventspils'),(126,2527,'Ventspils Rajons'),(126,2528,'Viesites Novads'),(126,2529,'Vilakas Novads'),(126,2530,'Vilanu Novads'),(126,2531,'Zilupes Novads'),(127,2532,'Aakkar'),(127,2533,'Baalbek-Hermel'),(127,2534,'Beqaa'),(127,2535,'Beyrouth'),(127,2536,'Liban-Nord'),(127,2537,'Liban-Sud'),(127,2538,'Mont-Liban'),(127,2539,'Nabatiye'),(128,2540,'Macau'),(129,2541,'Johor'),(129,2542,'Kedah'),(129,2543,'Kelantan'),(129,2544,'Kuala Lumpur'),(129,2545,'Labuan'),(129,2546,'Melaka'),(129,2547,'Negeri Sembilan'),(129,2548,'Pahang'),(129,2549,'Perak'),(129,2550,'Perlis'),(129,2551,'Pulau Pinang'),(129,2552,'Putrajaya'),(129,2553,'Sabah'),(129,2554,'Sarawak'),(129,2555,'Selangor'),(129,2556,'Terengganu'),(130,2557,'Baa Atholhu'),(130,2558,'Central Province'),(130,2559,'Dhaalu Atholhu'),(130,2560,'Gaafu Alifu Atholhu'),(130,2561,'Gnyaviyani Atoll'),(130,2562,'Haa Dhaalu Atholhu'),(130,2563,'Kaafu Atholhu'),(130,2564,'Laamu'),(130,2565,'Lhaviyani Atholhu'),(130,2566,'Maale'),(130,2567,'Noonu Atholhu'),(130,2568,'North Central Province'),(130,2569,'Raa Atholhu'),(130,2570,'Seenu'),(130,2571,'Shaviyani Atholhu'),(130,2572,'South Province'),(130,2573,'Thaa Atholhu'),(130,2574,'Upper North Province'),(130,2575,'Upper South Province'),(130,2576,'Vaavu Atholhu'),(131,2577,'Arhangay'),(131,2578,'Bayan-olgiy'),(131,2579,'Bayanhongor'),(131,2580,'Bulgan'),(131,2581,'Central Aymag'),(131,2582,'Darhan Uul'),(131,2583,'Dzavhan'),(131,2584,'East Aimak'),(131,2585,'East Gobi Aymag'),(131,2586,'Govi-Altay'),(131,2587,'Govi-Sumber'),(131,2588,'Hentiy'),(131,2589,'Hovd'),(131,2590,'Hovsgol'),(131,2591,'Middle Govi'),(131,2592,'Orhon'),(131,2593,'ovorhangay'),(131,2594,'Selenge'),(131,2595,'South Gobi Aymag'),(131,2596,'Suhbaatar'),(131,2597,'Ulaanbaatar'),(131,2598,'Uvs'),(132,2599,'Ayeyarwady'),(132,2600,'Bago'),(132,2601,'Chin'),(132,2602,'Kachin'),(132,2603,'Kayah'),(132,2604,'Kayin'),(132,2605,'Magway'),(132,2606,'Mandalay'),(132,2607,'Mon'),(132,2608,'Rakhine'),(132,2609,'Sagain'),(132,2610,'Shan'),(132,2611,'Tanintharyi'),(132,2612,'Yangon'),(133,2613,'Central Region'),(133,2614,'Eastern Region'),(133,2615,'Far Western Region'),(133,2616,'Mid Western Region'),(133,2617,'Western Region'),(134,2618,'Ad Dakhiliyah'),(134,2619,'Al Batinah'),(134,2620,'Al Wusta'),(134,2621,'Ash Sharqiyah'),(134,2622,'AZ Zahirah'),(134,2623,'Masqat'),(134,2624,'Muhafazat al Buraymi'),(134,2625,'Muhafazat Musandam'),(134,2626,'Zufar'),(135,2627,'Azad Kashmir'),(135,2628,'Balochistan'),(135,2629,'Federally Administered Tribal Areas'),(135,2630,'Gilgit-Baltistan'),(135,2631,'Islamabad'),(135,2632,'North West Frontier Province'),(135,2633,'Punjab'),(135,2634,'Sindh'),(136,2635,'Gaza Strip'),(136,2636,'West Bank'),(137,2637,'Autonomous Region in Muslim Mindanao'),(137,2638,'Bicol'),(137,2639,'Cagayan Valley'),(137,2640,'Calabarzon'),(137,2641,'Caraga'),(137,2642,'Central Luzon'),(137,2643,'Central Visayas'),(137,2644,'Cordillera Administrative Region'),(137,2645,'Davao'),(137,2646,'Eastern Visayas'),(137,2647,'Ilocos'),(137,2648,'Mimaropa'),(137,2649,'National Capital Region'),(137,2650,'Northern Mindanao'),(137,2651,'Soccsksargen'),(137,2652,'Western Visayas'),(137,2653,'Zamboanga Peninsula'),(138,2654,'Ad DawHah'),(138,2655,'Al Ghuwayriyah'),(138,2656,'Al Jumayliyah'),(138,2657,'Al Khawr'),(138,2658,'Al Wakrah'),(138,2659,'Ar Rayyan'),(138,2660,'Baladiyat aZ Zaayin'),(138,2661,'Jarayan al Batinah'),(138,2662,'Madinat ash Shamal'),(138,2663,'Umm salal'),(139,2664,'Adygeya'),(139,2665,'Altay'),(139,2666,'Altayskiy'),(139,2667,'Amur'),(139,2668,'Arkhangelskaya'),(139,2669,'Astrakhan'),(139,2670,'Bashkortostan'),(139,2671,'Belgorod'),(139,2672,'Brjansk'),(139,2673,'Buryatiya'),(139,2674,'Chechnya'),(139,2675,'Chelyabinsk Oblast'),(139,2676,'Chukotskiy Avtonomnyy Okrug'),(139,2677,'Chuvashia'),(139,2678,'Dagestan'),(139,2679,'Ingushetiya'),(139,2680,'Irkutsk'),(139,2681,'Ivanovo'),(139,2682,'Jaroslavl'),(139,2683,'Jewish Autonomous Oblast'),(139,2684,'Kabardino-Balkariya'),(139,2685,'Kaliningrad'),(139,2686,'Kalmykiya'),(139,2687,'Kaluga'),(139,2688,'Kamtsjatka'),(139,2689,'Karachayevo-Cherkesiya'),(139,2690,'Kareliya'),(139,2691,'Kemerovo'),(139,2692,'Khabarovsk Krai'),(139,2693,'Khakasiya'),(139,2694,'Khanty-Mansiyskiy Avtonomnyy Okrug'),(139,2695,'Kirov'),(139,2696,'Komi'),(139,2697,'Kostroma'),(139,2698,'Krasnodarskiy'),(139,2699,'Krasnoyarskiy'),(139,2700,'Kurgan'),(139,2701,'Kursk'),(139,2702,'Leningrad'),(139,2703,'Lipetsk'),(139,2704,'Magadan'),(139,2705,'Mariy-El'),(139,2706,'Mordoviya'),(139,2707,'Moscow'),(139,2708,'Moskovskaya'),(139,2709,'Murmansk'),(139,2710,'Nenetskiy Avtonomnyy Okrug'),(139,2711,'Nizjnij Novgorod'),(139,2712,'North Ossetia'),(139,2713,'Novgorod'),(139,2714,'Novosibirsk'),(139,2715,'Omsk'),(139,2716,'Orenburg'),(139,2717,'Orjol'),(139,2718,'Penza'),(139,2719,'Perm'),(139,2720,'Primorskiy'),(139,2721,'Pskov'),(139,2722,'Rjazan'),(139,2723,'Rostov'),(139,2724,'Sakha'),(139,2725,'Sakhalin'),(139,2726,'Samara'),(139,2727,'Sankt-Peterburg'),(139,2728,'Saratov'),(139,2729,'Smolensk'),(139,2730,'Stavropolskiy'),(139,2731,'Sverdlovsk'),(139,2732,'Tambov'),(139,2733,'Tatarstan'),(139,2734,'Tjumen'),(139,2735,'Tomsk'),(139,2736,'Tula'),(139,2737,'Tverskaya'),(139,2738,'Tyva'),(139,2739,'Udmurtiya'),(139,2740,'Uljanovsk'),(139,2741,'Vladimir'),(139,2742,'Volgograd'),(139,2743,'Vologda'),(139,2744,'Voronezj'),(139,2745,'Yamalo-Nenetskiy Avtonomnyy Okrug'),(139,2746,'Zabaykalskiy Kray'),(139,2747,'Adygeya'),(139,2748,'Altay'),(139,2749,'Altayskiy'),(139,2750,'Amur'),(139,2751,'Arkhangelskaya'),(139,2752,'Astrakhan'),(139,2753,'Bashkortostan'),(139,2754,'Belgorod'),(139,2755,'Brjansk'),(139,2756,'Buryatiya'),(139,2757,'Chechnya'),(139,2758,'Chelyabinsk Oblast'),(139,2759,'Chukotskiy Avtonomnyy Okrug'),(139,2760,'Chuvashia'),(139,2761,'Dagestan'),(139,2762,'Ingushetiya'),(139,2763,'Irkutsk'),(139,2764,'Ivanovo'),(139,2765,'Jaroslavl'),(139,2766,'Jewish Autonomous Oblast'),(139,2767,'Kabardino-Balkariya'),(139,2768,'Kaliningrad'),(139,2769,'Kalmykiya'),(139,2770,'Kaluga'),(139,2771,'Kamtsjatka'),(139,2772,'Karachayevo-Cherkesiya'),(139,2773,'Kareliya'),(139,2774,'Kemerovo'),(139,2775,'Khabarovsk Krai'),(139,2776,'Khakasiya'),(139,2777,'Khanty-Mansiyskiy Avtonomnyy Okrug'),(139,2778,'Kirov'),(139,2779,'Komi'),(139,2780,'Kostroma'),(139,2781,'Krasnodarskiy'),(139,2782,'Krasnoyarskiy'),(139,2783,'Kurgan'),(139,2784,'Kursk'),(139,2785,'Leningrad'),(139,2786,'Lipetsk'),(139,2787,'Magadan'),(139,2788,'Mariy-El'),(139,2789,'Mordoviya'),(139,2790,'Moscow'),(139,2791,'Moskovskaya'),(139,2792,'Murmansk'),(139,2793,'Nenetskiy Avtonomnyy Okrug'),(139,2794,'Nizjnij Novgorod'),(139,2795,'North Ossetia'),(139,2796,'Novgorod'),(139,2797,'Novosibirsk'),(139,2798,'Omsk'),(139,2799,'Orenburg'),(139,2800,'Orjol'),(139,2801,'Penza'),(139,2802,'Perm'),(139,2803,'Primorskiy'),(139,2804,'Pskov'),(139,2805,'Rjazan'),(139,2806,'Rostov'),(139,2807,'Sakha'),(139,2808,'Sakhalin'),(139,2809,'Samara'),(139,2810,'Sankt-Peterburg'),(139,2811,'Saratov'),(139,2812,'Smolensk'),(139,2813,'Stavropolskiy'),(139,2814,'Sverdlovsk'),(139,2815,'Tambov'),(139,2816,'Tatarstan'),(139,2817,'Tjumen'),(139,2818,'Tomsk'),(139,2819,'Tula'),(139,2820,'Tverskaya'),(139,2821,'Tyva'),(139,2822,'Udmurtiya'),(139,2823,'Uljanovsk'),(139,2824,'Vladimir'),(139,2825,'Volgograd'),(139,2826,'Vologda'),(139,2827,'Voronezj'),(139,2828,'Yamalo-Nenetskiy Avtonomnyy Okrug'),(139,2829,'Zabaykalskiy Kray'),(139,2830,'Adygeya'),(139,2831,'Altay'),(139,2832,'Altayskiy'),(139,2833,'Amur'),(139,2834,'Arkhangelskaya'),(139,2835,'Astrakhan'),(139,2836,'Bashkortostan'),(139,2837,'Belgorod'),(139,2838,'Brjansk'),(139,2839,'Buryatiya'),(139,2840,'Chechnya'),(139,2841,'Chelyabinsk Oblast'),(139,2842,'Chukotskiy Avtonomnyy Okrug'),(139,2843,'Chuvashia'),(139,2844,'Dagestan'),(139,2845,'Ingushetiya'),(139,2846,'Irkutsk'),(139,2847,'Ivanovo'),(139,2848,'Jaroslavl'),(139,2849,'Jewish Autonomous Oblast'),(139,2850,'Kabardino-Balkariya'),(139,2851,'Kaliningrad'),(139,2852,'Kalmykiya'),(139,2853,'Kaluga'),(139,2854,'Kamtsjatka'),(139,2855,'Karachayevo-Cherkesiya'),(139,2856,'Kareliya'),(139,2857,'Kemerovo'),(139,2858,'Khabarovsk Krai'),(139,2859,'Khakasiya'),(139,2860,'Khanty-Mansiyskiy Avtonomnyy Okrug'),(139,2861,'Kirov'),(139,2862,'Komi'),(139,2863,'Kostroma'),(139,2864,'Krasnodarskiy'),(139,2865,'Krasnoyarskiy'),(139,2866,'Kurgan'),(139,2867,'Kursk'),(139,2868,'Leningrad'),(139,2869,'Lipetsk'),(139,2870,'Magadan'),(139,2871,'Mariy-El'),(139,2872,'Mordoviya'),(139,2873,'Moscow'),(139,2874,'Moskovskaya'),(139,2875,'Murmansk'),(139,2876,'Nenetskiy Avtonomnyy Okrug'),(139,2877,'Nizjnij Novgorod'),(139,2878,'North Ossetia'),(139,2879,'Novgorod'),(139,2880,'Novosibirsk'),(139,2881,'Omsk'),(139,2882,'Orenburg'),(139,2883,'Orjol'),(139,2884,'Penza'),(139,2885,'Perm'),(139,2886,'Primorskiy'),(139,2887,'Pskov'),(139,2888,'Rjazan'),(139,2889,'Rostov'),(139,2890,'Sakha'),(139,2891,'Sakhalin'),(139,2892,'Samara'),(139,2893,'Sankt-Peterburg'),(139,2894,'Saratov'),(139,2895,'Smolensk'),(139,2896,'Stavropolskiy'),(139,2897,'Sverdlovsk'),(139,2898,'Tambov'),(139,2899,'Tatarstan'),(139,2900,'Tjumen'),(139,2901,'Tomsk'),(139,2902,'Tula'),(139,2903,'Tverskaya'),(139,2904,'Tyva'),(139,2905,'Udmurtiya'),(139,2906,'Uljanovsk'),(139,2907,'Vladimir'),(139,2908,'Volgograd'),(139,2909,'Vologda'),(139,2910,'Voronezj'),(139,2911,'Yamalo-Nenetskiy Avtonomnyy Okrug'),(139,2912,'Zabaykalskiy Kray'),(140,2913,'Al BaHah'),(140,2914,'Al Jawf'),(140,2915,'Al Madinah'),(140,2916,'Al Qasim'),(140,2917,'Ar Riyad'),(140,2918,'Ash Sharqiyah'),(140,2919,'Hail'),(140,2920,'Jizan'),(140,2921,'Makkah'),(140,2922,'Mintaqat Asir'),(140,2923,'Najran'),(140,2924,'Northern Borders Region'),(140,2925,'Tabuk'),(141,2926,'Singapore'),(142,2927,'Central'),(142,2928,'North Central'),(142,2929,'North Eastern'),(142,2930,'North Western'),(142,2931,'Northern Province'),(142,2932,'Sabaragamuwa'),(142,2933,'Southern'),(142,2934,'Uva'),(142,2935,'Western'),(143,2936,'Al-Hasakah'),(143,2937,'Aleppo'),(143,2938,'Ar-Raqqah'),(143,2939,'As-Suwayda'),(143,2940,'Damascus City'),(143,2941,'Daraa'),(143,2942,'Deir ez-Zor'),(143,2943,'Hama'),(143,2944,'Homs'),(143,2945,'Idlib'),(143,2946,'Latakia'),(143,2947,'Quneitra'),(143,2948,'Rif-dimashq'),(143,2949,'Tartus'),(143,2950,'Stockholm'),(143,2951,'Uppsala'),(143,2952,'Varmland'),(143,2953,'Vasterbotten'),(143,2954,'Vasternorrland'),(143,2955,'Vastmanland'),(143,2956,'Vastra Gotaland'),(144,2957,'Fukien'),(144,2958,'Kaohsiung'),(144,2959,'Taipei'),(144,2960,'Taiwan'),(145,2961,'Dushanbe'),(145,2962,'Gorno-Badakhshan'),(145,2963,'Khatlon'),(145,2964,'Region of Republican Subordination'),(145,2965,'Sughd'),(146,2966,'Amnat Charoen'),(146,2967,'Ang Thong'),(146,2968,'Bangkok'),(146,2969,'Buriram'),(146,2970,'Chachoengsao'),(146,2971,'Chai Nat'),(146,2972,'Chaiyaphum'),(146,2973,'Chanthaburi'),(146,2974,'Chiang Mai'),(146,2975,'Chiang Rai'),(146,2976,'Chon Buri'),(146,2977,'Chumphon'),(146,2978,'Kalasin'),(146,2979,'Kamphaeng Phet'),(146,2980,'Kanchanaburi'),(146,2981,'Khon Kaen'),(146,2982,'Krabi'),(146,2983,'Lampang'),(146,2984,'Lamphun'),(146,2985,'Loei'),(146,2986,'Lop Buri'),(146,2987,'Mae Hong Son'),(146,2988,'Maha Sarakham'),(146,2989,'Mukdahan'),(146,2990,'Nakhon Nayok'),(146,2991,'Nakhon Pathom'),(146,2992,'Nakhon Phanom'),(146,2993,'Nakhon Ratchasima'),(146,2994,'Nakhon Sawan'),(146,2995,'Nakhon Si Thammarat'),(146,2996,'Nan'),(146,2997,'Narathiwat'),(146,2998,'Nong Bua Lamphu'),(146,2999,'Nong Khai'),(146,3000,'Nonthaburi'),(146,3001,'Pathum Thani'),(146,3002,'Pattani'),(146,3003,'Phangnga'),(146,3004,'Phatthalung'),(146,3005,'Phayao'),(146,3006,'Phetchabun'),(146,3007,'Phetchaburi'),(146,3008,'Phichit'),(146,3009,'Phitsanulok'),(146,3010,'Phra Nakhon Si Ayutthaya'),(146,3011,'Phrae'),(146,3012,'Phuket Province'),(146,3013,'Prachin Buri'),(146,3014,'Prachuap Khiri Khan'),(146,3015,'Ranong'),(146,3016,'Ratchaburi'),(146,3017,'Rayong'),(146,3018,'Roi Et'),(146,3019,'Sa Kaeo'),(146,3020,'Sakon Nakhon'),(146,3021,'Samut Prakan'),(146,3022,'Samut Sakhon'),(146,3023,'Samut Songkhram'),(146,3024,'Sara Buri'),(146,3025,'Satun'),(146,3026,'Sing Buri'),(146,3027,'Sisaket'),(146,3028,'Songkhla'),(146,3029,'Sukhothai'),(146,3030,'Suphan Buri'),(146,3031,'Surat Thani'),(146,3032,'Surin'),(146,3033,'Tak'),(146,3034,'Trang'),(146,3035,'Trat'),(146,3036,'Ubon Ratchathani'),(146,3037,'Udon Thani'),(146,3038,'Uthai Thani'),(146,3039,'Uttaradit'),(146,3040,'Yala'),(146,3041,'Yasothon'),(147,3042,'Bobonaro'),(147,3043,'Distrito Aileu'),(147,3044,'Distrito Ainaro'),(147,3045,'Distrito Bacau'),(147,3046,'Distrito Cova Lima'),(147,3047,'Distrito Dili'),(147,3048,'Distrito Lautem'),(147,3049,'Distrito Liquica'),(147,3050,'Distrito Manatuto'),(147,3051,'Distrito Oecussi-Ambeno'),(147,3052,'Distrito Viqueque'),(147,3053,'Ermera'),(147,3054,'Manufahi'),(148,3055,'Ahal'),(148,3056,'Balkan'),(148,3057,'Dasoguz'),(148,3058,'Lebap'),(148,3059,'Mary'),(149,3060,'Avtonomna Respublika Krym'),(149,3061,'Cherkaska'),(149,3062,'Chernihivska'),(149,3063,'Chernivetska'),(149,3064,'Dnipropetrovska'),(149,3065,'Donetska'),(149,3066,'Ivano-Frankivska'),(149,3067,'Kharkivska'),(149,3068,'Kherson'),(149,3069,'Khmelnytska'),(149,3070,'Kiev'),(149,3071,'Kirovohradska'),(149,3072,'Lvivska'),(149,3073,'Luhanska'),(149,3074,'Misto Kyyiv'),(149,3075,'Misto Sevastopol'),(149,3076,'Mykolayivska'),(149,3077,'Odessa'),(149,3078,'Poltava'),(149,3079,'Rivnenska'),(149,3080,'Sumy'),(149,3081,'Ternopilska'),(149,3082,'Vinnytska'),(149,3083,'Volynska'),(149,3084,'Zakarpatska'),(149,3085,'Zaporizka'),(149,3086,'Zhytomyrska'),(149,3087,'Avtonomna Respublika Krym'),(149,3088,'Cherkaska'),(149,3089,'Chernihivska'),(149,3090,'Chernivetska'),(149,3091,'Dnipropetrovska'),(149,3092,'Donetska'),(149,3093,'Ivano-Frankivska'),(149,3094,'Kharkivska'),(149,3095,'Kherson'),(149,3096,'Khmelnytska'),(149,3097,'Kiev'),(149,3098,'Kirovohradska'),(149,3099,'Lvivska'),(149,3100,'Luhanska'),(149,3101,'Misto Kyyiv'),(149,3102,'Misto Sevastopol'),(149,3103,'Mykolayivska'),(149,3104,'Odessa'),(149,3105,'Poltava'),(149,3106,'Rivnenska'),(149,3107,'Sumy'),(149,3108,'Ternopilska'),(149,3109,'Vinnytska'),(149,3110,'Volynska'),(149,3111,'Zakarpatska'),(149,3112,'Zaporizka'),(149,3113,'Zhytomyrska'),(150,3114,'Abu Dhabi'),(150,3115,'Ajman'),(150,3116,'Al Fujayrah'),(150,3117,'Ash Shariqah'),(150,3118,'Dubayy'),(150,3119,'Ras al Khaymah'),(150,3120,'Umm al Qaywayn'),(151,3121,'Andijon'),(151,3122,'Buxoro'),(151,3123,'Fergana'),(151,3124,'Jizzax'),(151,3125,'Karakalpakstan'),(151,3126,'Namangan'),(151,3127,'Navoiy'),(151,3128,'Qashqadaryo'),(151,3129,'Samarqand'),(151,3130,'Sirdaryo'),(151,3131,'Surxondaryo'),(151,3132,'Toshkent'),(151,3133,'Toshkent Shahri'),(151,3134,'Xorazm'),(152,3135,'An Giang'),(152,3136,'Ba R?a-Vung Tau'),(152,3137,'Bac Giang'),(152,3138,'Bac Kan'),(152,3139,'Bac Lieu'),(152,3140,'Bac Ninh'),(152,3141,'Ben Tre'),(152,3142,'Binh Duong'),(152,3143,'Binh Phuoc'),(152,3144,'Binh Thuan'),(152,3145,'Binh D?nh'),(152,3146,'Ca Mau'),(152,3147,'Can Tho'),(152,3148,'Cao Bang'),(152,3149,'Gia Lai'),(152,3150,'Ha Giang'),(152,3151,'Ha Nam'),(152,3152,'Ha Noi'),(152,3153,'Ha Tay'),(152,3154,'Ha Tinh'),(152,3155,'Hai Duong'),(152,3156,'Hai Phong'),(152,3157,'Hau Giang'),(152,3158,'Ho Chi Minh'),(152,3159,'Hoa Binh'),(152,3160,'Hung Yen'),(152,3161,'Huyen Dien Bien'),(152,3162,'Khanh Hoa'),(152,3163,'Kien Giang'),(152,3164,'Kon Tum'),(152,3165,'Lai Chau'),(152,3166,'Lam Dong'),(152,3167,'Lang Son'),(152,3168,'Lao Cai'),(152,3169,'Long An'),(152,3170,'Nam D?nh'),(152,3171,'Nghe An'),(152,3172,'Ninh Binh'),(152,3173,'Ninh Thuan'),(152,3174,'Phu Tho'),(152,3175,'Phu Yen'),(152,3176,'Quang Binh'),(152,3177,'Quang Nam'),(152,3178,'Quang Ngai'),(152,3179,'Quang Ninh'),(152,3180,'Quang Tri'),(152,3181,'Soc Trang'),(152,3182,'Son La'),(152,3183,'Tay Ninh'),(152,3184,'Thai Binh'),(152,3185,'Thai Nguyen'),(152,3186,'Thanh Hoa'),(152,3187,'Thua Thien-Hue'),(152,3188,'Tien Giang'),(152,3189,'Tra Vinh'),(152,3190,'Tuyen Quang'),(152,3191,'Vinh Long'),(152,3192,'Vinh Phuc'),(152,3193,'Yen Bai'),(152,3194,'Da Nang'),(152,3195,'Dac Lak'),(152,3196,'Dak Nong'),(152,3197,'Dong Nai'),(152,3198,'Dong Thap'),(153,3199,'Abyan'),(153,3200,'Aden'),(153,3201,'Al Bayda'),(153,3202,'Al Hudaydah'),(153,3203,'Al Mahrah'),(153,3204,'Al Mahwit'),(153,3205,'Amanat Al Asimah'),(153,3206,'Hadramawt'),(153,3207,'Muhafazat ad Dali'),(153,3208,'Muhafazat al Jawf'),(153,3209,'Muhafazat Dhamar'),(153,3210,'Muhafazat Hajjah'),(153,3211,'Muhafazat Ibb'),(153,3212,'Muhafazat Lahij'),(153,3213,'Muhafazat Marib'),(153,3214,'Muhafazat Raymah'),(153,3215,'Muhafazat sadah'),(153,3216,'Muhafazat Shabwah'),(153,3217,'Muhafazat Taizz'),(153,3218,'Omran'),(153,3219,'Sanaa'),(154,3220,'Brando'),(154,3221,'Eckero'),(154,3222,'Finstrom'),(154,3223,'Foglo'),(154,3224,'Geta'),(154,3225,'Hammarland'),(154,3226,'Jomala'),(154,3227,'Kokar'),(154,3228,'Kumlinge'),(154,3229,'Lemland'),(154,3230,'Lumparland'),(154,3231,'Mariehamn'),(154,3232,'Saltvik'),(154,3233,'Sottunga'),(154,3234,'Sund'),(154,3235,'Vardo'),(155,3236,'Berat'),(155,3237,'Diber'),(155,3238,'Durres'),(155,3239,'Elbasan'),(155,3240,'Fier'),(155,3241,'Gjirokaster'),(155,3242,'Korce'),(155,3243,'Kukes'),(155,3244,'Lezhe'),(155,3245,'Shkoder'),(155,3246,'Tirane'),(155,3247,'Vlore'),(156,3248,'Parroquia dAndorra la Vella'),(156,3249,'Parroquia dEncamp'),(156,3250,'Parroquia dEscaldes-Engordany'),(156,3251,'Parroquia dOrdino'),(156,3252,'Parroquia de Canillo'),(156,3253,'Parroquia de la Massana'),(156,3254,'Parroquia de Sant Julia de Loria'),(157,3255,'Burgenland'),(157,3256,'Carinthia'),(157,3257,'Lower Austria'),(157,3258,'Salzburg'),(157,3259,'Styria'),(157,3260,'Tyrol'),(157,3261,'Upper Austria'),(157,3262,'Vienna'),(157,3263,'Vorarlberg'),(158,3264,'Brestskaya Voblasts'),(158,3265,'Homyelskaya Voblasts'),(158,3266,'Horad Minsk'),(158,3267,'Hrodzyenskaya Voblasts'),(158,3268,'Mahilyowskaya Voblasts'),(158,3269,'Minskaya Voblasts'),(158,3270,'Vitsyebskaya Voblasts'),(159,3271,'Brussels Capital Region'),(159,3272,'Flanders'),(159,3273,'Walloon Region'),(160,3274,'Brcko'),(160,3275,'Federation of Bosnia and Herzegovina'),(160,3276,'Republika Srpska'),(161,3277,'Blagoevgrad'),(161,3278,'Burgas'),(161,3279,'Dobrich'),(161,3280,'Gabrovo'),(161,3281,'Khaskovo'),(161,3282,'Kurdzhali'),(161,3283,'Kyustendil'),(161,3284,'Lovech'),(161,3285,'Montana'),(161,3286,'Oblast Sofiya-Grad'),(161,3287,'Pazardzhit'),(161,3288,'Pernik'),(161,3289,'Pleven'),(161,3290,'Plovdiv'),(161,3291,'Razgrad'),(161,3292,'Ruse'),(161,3293,'Shumen'),(161,3294,'Silistra'),(161,3295,'Sliven'),(161,3296,'Smolyan'),(161,3297,'Sofiya'),(161,3298,'Stara Zagora'),(161,3299,'Turgovishte'),(161,3300,'Varna'),(161,3301,'Veliko Turnovo'),(161,3302,'Vidin'),(161,3303,'Vratsa'),(161,3304,'Yambol'),(162,3305,'Bjelovarsko-Bilogorska'),(162,3306,'Brodsko-Posavska'),(162,3307,'Dubrovacko-Neretvanska'),(162,3308,'Grad Zagreb'),(162,3309,'Istarska'),(162,3310,'Karlovacka'),(162,3311,'Koprivnicko-Krizevacka'),(162,3312,'Krapinsko-Zagorska'),(162,3313,'Licko-Senjska'),(162,3314,'Medimurska'),(162,3315,'Osjecko-Baranjska'),(162,3316,'Pozesko-Slavonska'),(162,3317,'Primorsko-Goranska'),(162,3318,'Sibensko-Kniniska'),(162,3319,'Sisacko-Moslavacka'),(162,3320,'Splitsko-Dalmatinska'),(162,3321,'Varazdinska'),(162,3322,'Virovitick-Podravska'),(162,3323,'Vukovarsko-Srijemska'),(162,3324,'Zadarska'),(162,3325,'Zagrebacka'),(163,3326,'Hlavni Mesto Praha'),(163,3327,'Jihocesky Kraj'),(163,3328,'Karlovarsky Kraj'),(163,3329,'Kralovehradecky Kraj'),(163,3330,'Liberecky Kraj'),(163,3331,'Moravskoslezsky Kraj'),(163,3332,'Olomoucky Kraj'),(163,3333,'Pardubicky Kraj'),(163,3334,'Plzensky Kraj'),(163,3335,'South Moravian Region'),(163,3336,'Stredocesky Kraj'),(163,3337,'Ustecky Kraj'),(163,3338,'Vysocina'),(163,3339,'Vysocina Kraj'),(163,3340,'Zlinsky Kraj'),(164,3341,'Capital Region'),(164,3342,'Central Jutland'),(164,3343,'North Jutland'),(164,3344,'South Denmark'),(164,3345,'Zealand'),(165,3346,'Harjumaa'),(165,3347,'Hiiumaa'),(165,3348,'Ida-Virumaa'),(165,3349,'Jarvamaa'),(165,3350,'Jogevamaa'),(165,3351,'Laane-Virumaa'),(165,3352,'Laanemaa'),(165,3353,'Parnumaa'),(165,3354,'Polvamaa'),(165,3355,'Raplamaa'),(165,3356,'Saaremaa'),(165,3357,'Tartumaa'),(165,3358,'Valgamaa'),(165,3359,'Viljandimaa'),(165,3360,'Vorumaa'),(166,3361,'Eysturoy'),(166,3362,'Norooyar'),(166,3363,'Sandoy'),(166,3364,'Streymoy'),(166,3365,'Suouroy'),(166,3366,'Vagar'),(167,3367,'Lapland'),(167,3368,'Oulu'),(167,3369,'Province of Eastern Finland'),(167,3370,'Province of Southern Finland'),(167,3371,'Western Finland'),(168,3372,'Alsace'),(168,3373,'Aquitaine'),(168,3374,'Auvergne'),(168,3375,'Basse-Normandie'),(168,3376,'Bourgogne'),(168,3377,'Brittany'),(168,3378,'Centre'),(168,3379,'Champagne-Ardenne'),(168,3380,'Corsica'),(168,3381,'Franche-Comte'),(168,3382,'Haute-Normandie'),(168,3383,'Ile-de-France'),(168,3384,'Languedoc-Roussillon'),(168,3385,'Limousin'),(168,3386,'Lorraine'),(168,3387,'Midi-Pyrenees'),(168,3388,'Nord-Pas-de-Calais'),(168,3389,'Pays de la Loire'),(168,3390,'Picardie'),(168,3391,'Poitou-Charentes'),(168,3392,'Provence-Alpes-Cote dAzur'),(168,3393,'Rhone-Alpes'),(169,3394,'Baden-Wurttemberg'),(169,3395,'Bayern'),(169,3396,'Berlin'),(169,3397,'Brandenburg'),(169,3398,'Bremen'),(169,3399,'Hamburg'),(169,3400,'Hessen'),(169,3401,'Mecklenburg-Vorpommern'),(169,3402,'Niedersachsen'),(169,3403,'Nordrhein-Westfalen'),(169,3404,'Rheinland-Pfalz'),(169,3405,'Saarland'),(169,3406,'Sachsen'),(169,3407,'Sachsen-Anhalt'),(169,3408,'Schleswig-Holstein'),(169,3409,'Thuringen'),(170,3410,'Chios'),(170,3411,'Lefkada'),(170,3412,'Nomos Achaias'),(170,3413,'Nomos Aitolias kai Akarnanias'),(170,3414,'Nomos Argolidos'),(170,3415,'Nomos Arkadias'),(170,3416,'Nomos Artas'),(170,3417,'Nomos Attikis'),(170,3418,'Nomos Chalkidikis'),(170,3419,'Nomos Chanias'),(170,3420,'Nomos Dodekanisou'),(170,3421,'Nomos Dramas'),(170,3422,'Nomos Evrou'),(170,3423,'Nomos Evrytanias'),(170,3424,'Nomos Evvoias'),(170,3425,'Nomos Florinis'),(170,3426,'Nomos Fokidos'),(170,3427,'Nomos Fthiotidos'),(170,3428,'Nomos Grevenon'),(170,3429,'Nomos Ileias'),(170,3430,'Nomos Imathias'),(170,3431,'Nomos Ioanninon'),(170,3432,'Nomos Irakleiou'),(170,3433,'Nomos Kardhitsas'),(170,3434,'Nomos Kastorias'),(170,3435,'Nomos Kavalas'),(170,3436,'Nomos Kefallinias'),(170,3437,'Nomos Kerkyras'),(170,3438,'Nomos Kilkis'),(170,3439,'Nomos Korinthias'),(170,3440,'Nomos Kozanis'),(170,3441,'Nomos Kykladon'),(170,3442,'Nomos Lakonias'),(170,3443,'Nomos Larisis'),(170,3444,'Nomos Lasithiou'),(170,3445,'Nomos Lesvou'),(170,3446,'Nomos Magnisias'),(170,3447,'Nomos Messinias'),(170,3448,'Nomos Pellis'),(170,3449,'Nomos Pierias'),(170,3450,'Nomos Prevezis'),(170,3451,'Nomos Rethymnis'),(170,3452,'Nomos Rodopis'),(170,3453,'Nomos Samou'),(170,3454,'Nomos Serron'),(170,3455,'Nomos Thesprotias'),(170,3456,'Nomos Thessalonikis'),(170,3457,'Nomos Voiotias'),(170,3458,'Nomos Xanthis'),(170,3459,'Nomos Zakynthou'),(170,3460,'Trikala'),(171,3461,'Guernsey'),(172,3462,'Bacs-Kiskun'),(172,3463,'Baranya'),(172,3464,'Bekes'),(172,3465,'Borsod-Abauj-Zemplen'),(172,3466,'Budapest'),(172,3467,'Csongrad'),(172,3468,'Fejer'),(172,3469,'Gyor-Moson-Sopron'),(172,3470,'Hajdu-Bihar'),(172,3471,'Heves'),(172,3472,'Jasz-Nagykun-Szolnok'),(172,3473,'Komarom-Esztergom'),(172,3474,'Nograd'),(172,3475,'Pest'),(172,3476,'Somogy'),(172,3477,'Szabolcs-Szatmar-Bereg'),(172,3478,'Tolna'),(172,3479,'Vas'),(172,3480,'Veszprem'),(172,3481,'Zala'),(173,3482,'Capital Region'),(173,3483,'East'),(173,3484,'Northeast'),(173,3485,'Northwest'),(173,3486,'South'),(173,3487,'Southern Peninsula'),(173,3488,'West'),(173,3489,'Westfjords'),(174,3490,'Connaught'),(174,3491,'Leinster'),(174,3492,'Munster'),(174,3493,'Ulster'),(175,3494,'Isle of Man'),(176,3495,'Abruzzo'),(176,3496,'Aosta Valley'),(176,3497,'Apulia'),(176,3498,'Basilicate'),(176,3499,'Calabria'),(176,3500,'Campania'),(176,3501,'Emilia-Romagna'),(176,3502,'Friuli Venezia Giulia'),(176,3503,'Latium'),(176,3504,'Liguria'),(176,3505,'Lombardy'),(176,3506,'Molise'),(176,3507,'Piedmont'),(176,3508,'Sardinia'),(176,3509,'Sicily'),(176,3510,'The Marches'),(176,3511,'Trentino-Alto Adige'),(176,3512,'Tuscany'),(176,3513,'Umbria'),(176,3514,'Veneto'),(177,3515,'Jersey'),(178,3516,'Balzers'),(178,3517,'Eschen'),(178,3518,'Gamprin'),(178,3519,'Mauren'),(178,3520,'Planken'),(178,3521,'Ruggell'),(178,3522,'Schaan'),(178,3523,'Schellenberg'),(178,3524,'Triesen'),(178,3525,'Triesenberg'),(178,3526,'Vaduz'),(179,3527,'Alytaus Apskritis'),(179,3528,'Kauno Apskritis'),(179,3529,'Klaipedos Apskritis'),(179,3530,'Marijampoles Apskritis'),(179,3531,'Panevezio Apskritis'),(179,3532,'Siauliu Apskritis'),(179,3533,'Taurages Apskritis'),(179,3534,'Telsiu Apskritis'),(179,3535,'Utenos Apskritis'),(179,3536,'Vilniaus Apskritis'),(180,3537,'Diekirch'),(180,3538,'Grevenmacher'),(180,3539,'Luxembourg'),(181,3540,'Aracinovo'),(181,3541,'Berovo'),(181,3542,'Bitola'),(181,3543,'Bogdanci'),(181,3544,'Bogovinje'),(181,3545,'Bosilovo'),(181,3546,'Brvenica'),(181,3547,'Cair'),(181,3548,'Caska'),(181,3549,'Centar Zupa'),(181,3550,'Cesinovo'),(181,3551,'Cucer-Sandevo'),(181,3552,'Debar'),(181,3553,'Delcevo'),(181,3554,'Demir Hisar'),(181,3555,'Demir Kapija'),(181,3556,'Dojran'),(181,3557,'Dolneni'),(181,3558,'Drugovo'),(181,3559,'Gazi Baba'),(181,3560,'Gevgelija'),(181,3561,'Gostivar'),(181,3562,'Gradsko'),(181,3563,'Ilinden'),(181,3564,'Jegunovce'),(181,3565,'Karbinci'),(181,3566,'Karpos'),(181,3567,'Kavadarci'),(181,3568,'Kicevo'),(181,3569,'Kisela Voda'),(181,3570,'Kocani'),(181,3571,'Konce'),(181,3572,'Kratovo'),(181,3573,'Kriva Palanka'),(181,3574,'Krivogastani'),(181,3575,'Krusevo'),(181,3576,'Kumanovo'),(181,3577,'Lozovo'),(181,3578,'Makedonska Kamenica'),(181,3579,'Makedonski Brod'),(181,3580,'Mogila'),(181,3581,'Negotino'),(181,3582,'Novaci'),(181,3583,'Novo Selo'),(181,3584,'Ohrid'),(181,3585,'Opstina Aerodrom'),(181,3586,'Opstina Butel'),(181,3587,'Opstina Debarca'),(181,3588,'Opstina Lipkovo'),(181,3589,'Opstina Rankovce'),(181,3590,'Opstina Rostusa'),(181,3591,'Oslomej'),(181,3592,'Pehcevo'),(181,3593,'Petrovec'),(181,3594,'Plasnica'),(181,3595,'Prilep'),(181,3596,'Probistip'),(181,3597,'Radovis'),(181,3598,'Resen'),(181,3599,'Rosoman'),(181,3600,'Saraj'),(181,3601,'Sopiste'),(181,3602,'Staro Nagoricane'),(181,3603,'Stip'),(181,3604,'Struga'),(181,3605,'Strumica'),(181,3606,'Studenicani'),(181,3607,'Suto Orizari'),(181,3608,'Sveti Nikole'),(181,3609,'Tearce'),(181,3610,'Tetovo'),(181,3611,'Valandovo'),(181,3612,'Vasilevo'),(181,3613,'Veles'),(181,3614,'Vevcani'),(181,3615,'Vinica'),(181,3616,'Vranestica'),(181,3617,'Vrapciste'),(181,3618,'Zajas'),(181,3619,'Zelenikovo'),(181,3620,'Zelino'),(181,3621,'Zrnovci'),(182,3622,'Balti'),(182,3623,'Bender'),(182,3624,'Calarasi'),(182,3625,'Causeni'),(182,3626,'Chisinau'),(182,3627,'Dubasari'),(182,3628,'Gagauzia'),(182,3629,'Raionul Anenii Noi'),(182,3630,'Raionul Basarabeasca'),(182,3631,'Raionul Briceni'),(182,3632,'Raionul Cahul'),(182,3633,'Raionul Cantemir'),(182,3634,'Raionul Cimislia'),(182,3635,'Raionul Criuleni'),(182,3636,'Raionul Donduseni'),(182,3637,'Raionul Drochia'),(182,3638,'Raionul Edinet'),(182,3639,'Raionul Falesti'),(182,3640,'Raionul Floresti'),(182,3641,'Raionul Glodeni'),(182,3642,'Raionul Hincesti'),(182,3643,'Raionul Ialoveni'),(182,3644,'Raionul Leova'),(182,3645,'Raionul Nisporeni'),(182,3646,'Raionul Ocnita'),(182,3647,'Raionul Orhei'),(182,3648,'Raionul Rezina'),(182,3649,'Raionul Riscani'),(182,3650,'Raionul Singerei'),(182,3651,'Raionul Soldanesti'),(182,3652,'Raionul Soroca'),(182,3653,'Raionul Straseni'),(182,3654,'Raionul Taraclia'),(182,3655,'Raionul Telenesti'),(182,3656,'Raionul Ungheni'),(182,3657,'Stefan-Voda'),(182,3658,'Stinga Nistrului'),(183,3659,'Commune de Monaco'),(184,3660,'Drenthe'),(184,3661,'Flevoland'),(184,3662,'Gelderland'),(184,3663,'Limburg'),(184,3664,'North Brabant'),(184,3665,'North Holland'),(184,3666,'Overijssel'),(184,3667,'Province of Groningen'),(184,3668,'Provincie Friesland'),(184,3669,'South Holland'),(184,3670,'Utrecht'),(184,3671,'Zeeland'),(185,3672,'Akershus county'),(185,3673,'Aust-Agder county'),(185,3674,'Buskerud county'),(185,3675,'Finnmark'),(185,3676,'Hedmark county'),(185,3677,'Hordaland'),(185,3678,'More og Romsdal'),(185,3679,'Nord-Trondelag'),(185,3680,'Nordland'),(185,3681,'Oppland county'),(185,3682,'Oslo'),(185,3683,'Rogaland'),(185,3684,'Sogn og Fjordane'),(185,3685,'Sor-Trondelag'),(185,3686,'Telemark county'),(185,3687,'Troms'),(185,3688,'Vest-Agder'),(185,3689,'Vestfold county'),(185,3690,'Ostfold'),(186,3691,'Greater Poland Voivodeship'),(186,3692,'Kujawsko-Pomorskie'),(186,3693,'Lesser Poland Voivodeship'),(186,3694,'Lower Silesian Voivodeship'),(186,3695,'Lublin Voivodeship'),(186,3696,'Lubusz'),(186,3697,'Masovian Voivodeship'),(186,3698,'Opole Voivodeship'),(186,3699,'Podlasie'),(186,3700,'Pomeranian Voivodeship'),(186,3701,'Silesian Voivodeship'),(186,3702,'Subcarpathian Voivodeship'),(186,3703,'Swietokrzyskie'),(186,3704,'Warmian-Masurian Voivodeship'),(186,3705,'West Pomeranian Voivodeship'),(186,3706,'?odz Voivodeship'),(187,3707,'Aveiro'),(187,3708,'Azores'),(187,3709,'Beja'),(187,3710,'Braga'),(187,3711,'Braganca'),(187,3712,'Castelo Branco'),(187,3713,'Coimbra'),(187,3714,'Evora'),(187,3715,'Faro'),(187,3716,'Guarda'),(187,3717,'Leiria'),(187,3718,'Lisbon'),(187,3719,'Madeira'),(187,3720,'Portalegre'),(187,3721,'Porto'),(187,3722,'Santarem'),(187,3723,'Setubal'),(187,3724,'Viana do Castelo'),(187,3725,'Vila Real'),(187,3726,'Viseu'),(188,3727,'Alba'),(188,3728,'Arad'),(188,3729,'Arges'),(188,3730,'Bacau'),(188,3731,'Bihor'),(188,3732,'Bistrita-Nasaud'),(188,3733,'Botosani'),(188,3734,'Braila'),(188,3735,'Brasov'),(188,3736,'Bucuresti'),(188,3737,'Buzau'),(188,3738,'Calarasi'),(188,3739,'Caras-Severin'),(188,3740,'Cluj'),(188,3741,'Constanta'),(188,3742,'Covasna'),(188,3743,'Dambovita'),(188,3744,'Dolj'),(188,3745,'Galati'),(188,3746,'Giurgiu'),(188,3747,'Gorj'),(188,3748,'Harghita'),(188,3749,'Hunedoara'),(188,3750,'Ialomita'),(188,3751,'Iasi'),(188,3752,'Ilfov'),(188,3753,'Judetul Vrancea'),(188,3754,'Maramures'),(188,3755,'Mehedinti'),(188,3756,'Mures'),(188,3757,'Neamt'),(188,3758,'Olt'),(188,3759,'Prahova'),(188,3760,'Salaj'),(188,3761,'Satu Mare'),(188,3762,'Sibiu'),(188,3763,'Suceava'),(188,3764,'Teleorman'),(188,3765,'Timis'),(188,3766,'Tulcea'),(188,3767,'Valcea'),(188,3768,'Vaslui'),(188,3769,'Vrancea'),(189,3770,'Acquaviva'),(189,3771,'Borgo Maggiore'),(189,3772,'Chiesanuova'),(189,3773,'Domagnano'),(189,3774,'Faetano'),(189,3775,'Fiorentino'),(189,3776,'Montegiardino'),(189,3777,'San Marino'),(189,3778,'Serravalle'),(190,3779,'Banskobystricky'),(190,3780,'Bratislavsky'),(190,3781,'Kosicky'),(190,3782,'Nitriansky'),(190,3783,'Presovsky'),(190,3784,'South Moravian Region'),(190,3785,'Trenciansky'),(190,3786,'Trnavsky'),(190,3787,'Zilinsky'),(191,3788,'Ajdovscina'),(191,3789,'Beltinci'),(191,3790,'Benedikt'),(191,3791,'Bistrica ob Sotli'),(191,3792,'Bled'),(191,3793,'Bloke'),(191,3794,'Bohinj'),(191,3795,'Borovnica'),(191,3796,'Bovec'),(191,3797,'Braslovce'),(191,3798,'Brda'),(191,3799,'Brezice'),(191,3800,'Brezovica'),(191,3801,'Cankova'),(192,3802,'Andalusia'),(192,3803,'Aragon'),(192,3804,'Asturias'),(192,3805,'Autonomous Region of Navarre'),(192,3806,'Balearic Islands'),(192,3807,'Basque Country'),(192,3808,'Canary Islands'),(192,3809,'Cantabria'),(192,3810,'Castille and Leon'),(192,3811,'Castille-La Mancha'),(192,3812,'Catalonia'),(192,3813,'Ceuta'),(192,3814,'Extremadura'),(192,3815,'Galicia'),(192,3816,'Shabeellaha Hoose'),(192,3817,'Sool'),(192,3818,'Togdheer'),(192,3819,'Woqooyi Galbeed'),(193,3820,'Jan Mayen'),(193,3821,'Svalbard'),(193,3822,'White Nile'),(194,3823,'Blekinge'),(194,3824,'Dalarna'),(194,3825,'Gavleborg'),(194,3826,'Gotland'),(194,3827,'Halland'),(194,3828,'Jamtland'),(194,3829,'Jonkoping'),(194,3830,'Kalmar'),(194,3831,'Kronoberg'),(194,3832,'Norrbotten'),(194,3833,'Orebro'),(194,3834,'Ostergotland'),(194,3835,'Skane'),(194,3836,'Sodermanland'),(195,3837,'Aargau'),(195,3838,'Appenzell Ausserrhoden'),(195,3839,'Basel-Country'),(195,3840,'Basle-Ville'),(195,3841,'Bern'),(195,3842,'Fribourg'),(195,3843,'Geneva'),(195,3844,'Glarus'),(195,3845,'Graubunden'),(195,3846,'Jura'),(195,3847,'Kanton Appenzell Innerrhoden'),(195,3848,'Lucerne'),(195,3849,'Neuchatel'),(195,3850,'Nidwalden'),(195,3851,'Obwalden'),(195,3852,'Saint Gallen'),(195,3853,'Schaffhausen'),(195,3854,'Schwyz'),(195,3855,'Solothurn'),(195,3856,'Thurgau'),(195,3857,'Ticino'),(195,3858,'Uri'),(195,3859,'Valais'),(195,3860,'Vaud'),(195,3861,'Zug'),(195,3862,'Zurich'),(196,3863,'England'),(196,3864,'N Ireland'),(196,3865,'Scotland'),(196,3866,'Wales'),(197,3867,'Eastern District'),(197,3868,'Manua'),(197,3869,'Swains Island'),(197,3870,'Western District'),(198,3871,'Australian Capital Territory'),(198,3872,'New South Wales'),(198,3873,'Northern Territory'),(198,3874,'Queensland'),(198,3875,'South Australia'),(198,3876,'Tasmania'),(198,3877,'Victoria'),(198,3878,'Western Australia'),(199,3879,'Central'),(199,3880,'Eastern'),(199,3881,'Northern'),(199,3882,'Rotuma'),(199,3883,'Western'),(200,3884,'Iles Australes'),(200,3885,'Iles du Vent'),(200,3886,'Iles Marquises'),(200,3887,'Iles Sous-le-Vent'),(200,3888,'Iles Tuamotu-Gambier'),(201,3889,'Ailinglaplap Atoll'),(201,3890,'Ailuk Atoll'),(201,3891,'Arno Atoll'),(201,3892,'Aur Atoll'),(201,3893,'Ebon Atoll'),(201,3894,'Enewetak Atoll'),(201,3895,'Jabat Island'),(201,3896,'Jaluit Atoll'),(201,3897,'Kili Island'),(201,3898,'Kwajalein Atoll'),(201,3899,'Lae Atoll'),(201,3900,'Lib Island'),(201,3901,'Likiep Atoll'),(201,3902,'Majuro Atoll'),(201,3903,'Maloelap Atoll'),(201,3904,'Mejit Island'),(201,3905,'Mili Atoll'),(201,3906,'Namdrik Atoll'),(201,3907,'Namu Atoll'),(201,3908,'Rongelap Atoll'),(201,3909,'Ujae Atoll'),(201,3910,'Ujelang'),(201,3911,'Utrik Atoll'),(201,3912,'Wotho Atoll'),(201,3913,'Wotje Atoll'),(202,3914,'Chuuk'),(202,3915,'Kosrae'),(202,3916,'Pohnpei'),(202,3917,'Yap'),(203,3918,'Aiwo'),(203,3919,'Anabar'),(203,3920,'Anetan'),(203,3921,'Anibare'),(203,3922,'Baiti'),(203,3923,'Buada'),(203,3924,'Ewa'),(203,3925,'Ijuw'),(203,3926,'Uaboe'),(203,3927,'Yaren'),(204,3928,'Province des iles Loyaute'),(204,3929,'Province Nord'),(204,3930,'Province Sud'),(205,3931,'Auckland'),(205,3932,'Bay of Plenty'),(205,3933,'Canterbury'),(205,3934,'Chatham Islands'),(205,3935,'Gisborne'),(205,3936,'Hawkes Bay'),(205,3937,'Manawatu-Wanganui'),(205,3938,'Marlborough'),(205,3939,'Nelson'),(205,3940,'Northland'),(205,3941,'Otago'),(205,3942,'Southland'),(205,3943,'Taranaki'),(205,3944,'Tasman'),(205,3945,'Waikato'),(205,3946,'Wellington'),(205,3947,'West Coast'),(206,3948,'Northern Islands Municipality'),(206,3949,'Rota Municipality'),(206,3950,'Saipan Municipality'),(206,3951,'Tinian Municipality'),(207,3952,'Aimeliik'),(207,3953,'Airai'),(207,3954,'Angaur'),(207,3955,'Kayangel'),(207,3956,'Koror'),(207,3957,'Melekeok'),(207,3958,'Ngaraard'),(207,3959,'Ngarchelong'),(207,3960,'Ngardmau'),(207,3961,'Ngatpang'),(207,3962,'Ngchesar'),(207,3963,'Ngiwal'),(207,3964,'Peleliu'),(207,3965,'Sonsorol'),(207,3966,'State of Hatohobei'),(207,3967,'State of Ngeremlengui'),(208,3968,'Bougainville'),(208,3969,'Central Province'),(208,3970,'Chimbu'),(208,3971,'East New Britain'),(208,3972,'East Sepik'),(208,3973,'Eastern Highlands'),(208,3974,'Enga'),(208,3975,'Gulf'),(208,3976,'Madang'),(208,3977,'Manus'),(208,3978,'Milne Bay'),(208,3979,'Morobe'),(208,3980,'National Capital District'),(208,3981,'New Ireland'),(208,3982,'Northern Province'),(208,3983,'Sandaun'),(208,3984,'Southern Highlands'),(208,3985,'West New Britain'),(208,3986,'Western Highlands'),(208,3987,'Western Province'),(209,3988,'Aiga-i-le-Tai'),(209,3989,'Atua'),(209,3990,'A ana'),(209,3991,'Fa asaleleaga'),(209,3992,'Gagaifomauga'),(209,3993,'Gaga emauga'),(209,3994,'Palauli'),(209,3995,'Satupa itea'),(209,3996,'Tuamasaga'),(209,3997,'Vaisigano'),(209,3998,'Vaa-o-Fonoti'),(210,3999,'Central Province'),(210,4000,'Choiseul'),(210,4001,'Guadalcanal'),(210,4002,'Isabel'),(210,4003,'Makira'),(210,4004,'Malaita'),(210,4005,'Rennell and Bellona'),(210,4006,'Temotu'),(210,4007,'Western Province'),(211,4008,'Atafu'),(211,4009,'Fakaofo'),(211,4010,'Nukunonu'),(212,4011,'Eua'),(212,4012,'Haapai'),(212,4013,'Niuas'),(212,4014,'Tongatapu'),(212,4015,'Vavau'),(213,4016,'Funafuti'),(213,4017,'Nanumanga'),(213,4018,'Nanumea'),(213,4019,'Niutao'),(213,4020,'Nui'),(213,4021,'Nukufetau'),(213,4022,'Nukulaelae'),(213,4023,'Vaitupu'),(214,4024,'Baker Island'),(214,4025,'Howland Island'),(214,4026,'Jarvis Island'),(215,4027,'Malampa'),(215,4028,'Penama'),(215,4029,'Sanma'),(215,4030,'Shefa'),(215,4031,'Tafea'),(215,4032,'Torba'),(215,4033,'Salto'),(215,4034,'San Jose'),(215,4035,'Soriano'),(215,4036,'Tacuarembo'),(215,4037,'Treinta y Tres'),(216,4038,'Circonscription dAlo'),(216,4039,'Circonscription dUvea'),(216,4040,'Circonscription de Sigave'),(1,1,'Adrar'),(1,2,'Ain Defla'),(1,3,'Ain Temouchent'),(1,4,'Alger'),(1,5,'Annaba'),(1,6,'Batna'),(1,7,'Bechar'),(1,8,'Bejaia'),(1,9,'Biskra'),(1,10,'Blida'),(1,11,'Bordj Bou Arreridj'),(1,12,'Bouira'),(1,13,'Boumerdes'),(1,14,'Chlef'),(1,15,'Constantine'),(1,16,'Djelfa'),(1,17,'El Bayadh'),(1,18,'El Oued'),(1,19,'El Tarf'),(1,20,'Ghardaia'),(1,21,'Guelma'),(1,22,'Illizi'),(1,23,'Jijel'),(1,24,'Khenchela'),(1,25,'Laghouat'),(1,26,'Mascara'),(1,27,'Medea'),(1,28,'Mila'),(1,29,'Mostaganem'),(1,30,'Msila'),(1,31,'Naama '),(1,32,'Oran'),(1,33,'Ouargla'),(1,34,'Oum el Bouaghi'),(1,35,'Relizane'),(1,36,'Saida'),(1,37,'Setif'),(1,38,'Sidi Bel Abbes'),(1,39,'Skikda'),(1,40,'Souk Ahras'),(1,41,'Tamanghasset'),(1,42,'Tebessa'),(1,43,'Tiaret'),(1,44,'Tindouf'),(1,45,'Tipaza'),(1,46,'Tissemsilt'),(1,47,'Tizi Ouzou'),(1,48,'Tlemcen'),(2,49,'Bengo'),(2,50,'Benguela'),(2,51,'Bie'),(2,52,'Cabinda'),(2,53,'Cuando Cubango'),(2,54,'Cuanza Norte'),(2,55,'Cuanza Sul'),(2,56,'Cunene'),(2,57,'Huambo'),(2,58,'Huila'),(2,59,'Luanda'),(2,60,'Lunda Norte'),(2,61,'Lunda Sul'),(2,62,'Malanje'),(2,63,'Moxico'),(2,64,'Namibe'),(2,65,'Uige'),(2,66,'Zaire'),(3,67,'Alibori'),(3,68,'Atakora'),(3,69,'Atlantique'),(3,70,'Borgou'),(3,71,'Collines'),(3,72,'Donga'),(3,73,'Kouffo'),(3,74,'Littoral'),(3,75,'Mono'),(3,76,'Plateau'),(3,77,'Queme'),(3,78,'Zou'),(4,79,'Central'),(4,80,'Ghanzi'),(4,81,'Kgalagadi'),(4,82,'Kgatleng'),(4,83,'Kweneng'),(4,84,'North East'),(4,85,'North West'),(4,86,'South East'),(4,87,'Southern'),(5,88,'Boucle du Mouhoun'),(5,89,'Cascades'),(5,90,'Centre'),(5,91,'Centre-Est'),(5,92,'Centre-Nord'),(5,93,'Centre-Ouest'),(5,94,'Centre-Sud'),(5,95,'Est'),(5,96,'Hauts-Bassins'),(5,97,'Nord'),(5,98,'Plateau-Central'),(5,99,'Sahel'),(5,100,'Sud-Ouest'),(6,101,'Bubanza'),(6,102,'Bujumbura Mairie'),(6,103,'Bujumbura Rural'),(6,104,'Bururi'),(6,105,'Cankuzo'),(6,106,'Cibitoke'),(6,107,'Gitega'),(6,108,'Karuzi'),(6,109,'Kayanza'),(6,110,'Kirundo'),(6,111,'Makamba'),(6,112,'Muramvya'),(6,113,'Muyinga'),(6,114,'Mwaro'),(6,115,'Ngozi'),(6,116,'Rutana'),(6,117,'Ruyigi'),(7,118,'Adamaoua Province'),(7,119,'Centre Region'),(7,120,'East Province'),(7,121,'Far North Province'),(7,122,'Littoral Province'),(7,123,'North Province'),(7,124,'North-West Region'),(7,125,'South Province'),(7,126,'South-West Region'),(7,127,'West Province'),(8,128,'Boa Vista'),(8,129,'Brava'),(8,130,'Concelho da Ribeira Brava'),(8,131,'Concelho de Ribeira Grande de Santiago'),(8,132,'Concelho de Santa Catarina do Fogo'),(8,133,'Concelho de Sao Lourenco dos Orgaos'),(8,134,'Concelho de Sao Salvador do Mundo'),(8,135,'Concelho do Porto Novo'),(8,136,'Concelho do Tarrafal de Sao Nicolau'),(8,137,'Maio'),(8,138,'Mosteiros'),(8,139,'Paul'),(8,140,'Praia'),(8,141,'Ribeira Grande'),(8,142,'Sal'),(8,143,'Santa Catarina'),(8,144,'Santa Cruz'),(8,145,'Sao Domingos'),(8,146,'Sao Filipe'),(8,147,'Sao Miguel'),(8,148,'Sao Vicente'),(8,149,'Tarrafal'),(9,150,'Bamingui-Bangoran'),(9,151,'Bangui'),(9,152,'Basse-Kotto'),(9,153,'Haut-Mbomou'),(9,154,'Haute-Kotto'),(9,155,'Kemo'),(9,156,'Lobaye'),(9,157,'Mambere-Kadei'),(9,158,'Mbomou'),(9,159,'Nana-Grebizi'),(9,160,'Nana-Mambere'),(9,161,'Ombella-Mpoko'),(9,162,'Ouaka'),(9,163,'Ouham'),(9,164,'Ouham-Pende'),(9,165,'Sangha-Mbaere'),(9,166,'Vakaga'),(10,167,'Batha'),(10,168,'Biltine'),(10,169,'Chari-Baguirmi'),(10,170,'Ennedi'),(10,171,'Guera'),(10,172,'Kanem'),(10,173,'Lac'),(10,174,'Logone Occidental'),(10,175,'Logone Oriental'),(10,176,'Mayo-Kebbi'),(10,177,'Moyen-Chari'),(10,178,'Ouaddai'),(10,179,'Region de la Ville de NDjamena'),(10,180,'Region du Barh el Gazel'),(10,181,'Region du Borkou'),(10,182,'Region du Hadjer-Lamis'),(10,183,'Region du Mandoul'),(10,184,'Region du Mayo-Kebbi Ouest'),(10,185,'Region du Sila'),(10,186,'Region du Tibesti'),(10,187,'Salamat'),(10,188,'Tandjile'),(10,189,'Batha'),(10,190,'Biltine'),(10,191,'Chari-Baguirmi'),(10,192,'Ennedi'),(10,193,'Guera'),(10,194,'Kanem'),(10,195,'Lac'),(10,196,'Logone Occidental'),(10,197,'Logone Oriental'),(10,198,'Mayo-Kebbi'),(10,199,'Moyen-Chari'),(10,200,'Ouaddai'),(10,201,'Region de la Ville de NDjamena'),(10,202,'Region du Barh el Gazel'),(10,203,'Region du Borkou'),(10,204,'Region du Hadjer-Lamis'),(10,205,'Region du Mandoul'),(10,206,'Region du Mayo-Kebbi Ouest'),(10,207,'Region du Sila'),(10,208,'Region du Tibesti'),(10,209,'Salamat'),(10,210,'Tandjile'),(11,211,'Anjouan'),(11,212,'Grande Comore'),(11,213,'Moheli'),(12,214,'Bouenza'),(12,215,'Brazzaville'),(12,216,'Cuvette'),(12,217,'Cuvette-Ouest'),(12,218,'Lekoumou'),(12,219,'Likouala'),(12,220,'Niari'),(12,221,'Nyanga'),(12,222,'Plateaux'),(12,223,'Pointe-Noire'),(12,224,'Pool'),(12,225,'Sangha'),(13,226,'Bandundu'),(13,227,'Bas-Congo'),(13,228,'Equateur'),(13,229,'Kasai-Occidental'),(13,230,'Kasai-Oriental'),(13,231,'Katanga'),(13,232,'Kinshasa'),(13,233,'Maniema'),(13,234,'Nord-Kivu'),(13,235,'Orientale'),(13,236,'Sud-Kivu'),(14,237,'Agneby'),(14,238,'Bafing'),(14,239,'Bas-Sassandra'),(14,240,'Denguele'),(14,241,'Dix-Huit Montagnes'),(14,242,'Fromager'),(14,243,'Haut-Sassandra'),(14,244,'Lacs'),(14,245,'Lagunes'),(14,246,'Marahoue'),(14,247,'Moyen-Comoe'),(14,248,'Nzi-Comoe'),(14,249,'Savanes'),(14,250,'Sud-Bandama'),(14,251,'Sud-Comoe'),(14,252,'Vallee du Bandama'),(14,253,'Worodougou'),(14,254,'Zanzan'),(15,255,'Ali Sabieh'),(15,256,'Arta'),(15,257,'Dikhil'),(15,258,'Djibouti'),(15,259,'Obock'),(15,260,'Tadjourah'),(16,261,'Ad Daqahliyah'),(16,262,'Al Bahr al Ahmar'),(16,263,'Al Buhayrah'),(16,264,'Al Fayyum'),(16,265,'Al Gharbiyah'),(16,266,'Al Ismailiyah'),(16,267,'Al Jizah'),(16,268,'Al Minufiyah'),(16,269,'Al Minya'),(16,270,'Al Qahirah'),(16,271,'Al Qalyubiyah'),(16,272,'Al Wadi al Jadid'),(16,273,'Alexandria'),(16,274,'As Suways'),(16,275,'Aswan'),(16,276,'Asyut'),(16,277,'Bani Suwayf'),(16,278,'Bur Said'),(16,279,'Dumyat'),(16,280,'Eastern Province'),(16,281,'Janub Sina'),(16,282,'Kafr ash Shaykh'),(16,283,'Matruh'),(16,284,'Muhafazat al Uqsur'),(16,285,'Qina'),(16,286,'Shamal Sina'),(16,287,'Suhaj'),(17,288,'Annobon'),(17,289,'Bioko Norte'),(17,290,'Bioko Sur'),(17,291,'Centro Sur'),(17,292,'Kie-Ntem'),(17,293,'Litoral'),(17,294,'Wele-Nzas'),(18,295,'Anseba'),(18,296,'Debub'),(18,297,'Debubawi Keyih Bahri'),(18,298,'Gash Barka'),(18,299,'Maakel'),(18,300,'Semenawi Keyih Bahri'),(19,301,'Adis Abeba'),(19,302,'Afar Regional State'),(19,303,'Dire Dawa Region'),(19,304,'Gambela'),(19,305,'Somalia Regional State'),(19,306,'SSNPR'),(19,307,'The State of Amhara'),(19,308,'The State of Benshangul/Gumuz'),(19,309,'The State of Harari People'),(19,310,'The State of Oromia'),(19,311,'Tigray Regional State'),(20,312,'Kerguelen'),(21,313,'Estuaire'),(21,314,'Haut-Ogooue'),(21,315,'Moyen-Ogooue'),(21,316,'Ngounie'),(21,317,'Nyanga'),(21,318,'Ogooue-Ivindo'),(21,319,'Ogooue-Lolo'),(21,320,'Ogooue-Maritime'),(21,321,'Woleu-Ntem'),(22,322,'Banjul'),(22,323,'Central River'),(22,324,'Lower River'),(22,325,'North Bank'),(22,326,'Upper River'),(22,327,'Western'),(23,328,'Ashanti'),(23,329,'Brong-Ahafo'),(23,330,'Central'),(23,331,'Eastern'),(23,332,'Greater Accra'),(23,333,'Northern'),(23,334,'Upper East'),(23,335,'Upper West'),(23,336,'Volta'),(23,337,'Western'),(24,338,'Bafata'),(24,339,'Beyla'),(24,340,'Boke'),(24,341,'Conakry'),(24,342,'Dinguiraye'),(24,343,'Dubreka'),(24,344,'Faranah'),(24,345,'Forecariah'),(24,346,'Gabu'),(24,347,'Gueckedou'),(24,348,'Kankan'),(24,349,'Kindia'),(24,350,'Kissidougou'),(24,351,'Koundara'),(24,352,'Labe'),(24,353,'Mamou'),(24,354,'Mandiana'),(24,355,'Nzerekore'),(25,356,'Bafata'),(25,357,'Biombo'),(25,358,'Bissau Autonomous Region'),(25,359,'Bolama and Bijagos'),(25,360,'Cacheu'),(25,361,'Gabu'),(25,362,'Oio'),(25,363,'Quinara'),(25,364,'Tombali'),(26,365,'Central'),(26,366,'Coast'),(26,367,'Eastern'),(26,368,'Nairobi Area'),(26,369,'North-Eastern'),(26,370,'Nyanza'),(26,371,'Rift Valley'),(26,372,'Western'),(27,373,'Berea'),(27,374,'Butha-Buthe'),(27,375,'Leribe'),(27,376,'Mafeteng'),(27,377,'Maseru'),(27,378,'Mohales Hoek'),(27,379,'Mokhotlong'),(27,380,'Qachas Nek'),(27,381,'Quthing'),(27,382,'Thaba-Tseka'),(28,383,'Bomi'),(28,384,'Bong'),(28,385,'Gbarpolu'),(28,386,'Grand Bassa'),(28,387,'Grand Cape Mount'),(28,388,'Grand Gedeh'),(28,389,'Grand Kru'),(28,390,'Lofa'),(28,391,'Margibi'),(28,392,'Maryland'),(28,393,'Montserrado'),(28,394,'Nimba'),(28,395,'River Cess'),(28,396,'River Gee'),(28,397,'Sinoe'),(29,398,'Al Jabal al Akhdar'),(29,399,'Al Jufrah'),(29,400,'Al Kufrah'),(29,401,'Al Marj'),(29,402,'An Nuqat al Khams'),(29,403,'Ash Shati'),(29,404,'Az Zawiyah'),(29,405,'Banghazi'),(29,406,'Darnah'),(29,407,'Ghat'),(29,408,'Misratah'),(29,409,'Murzuq'),(29,410,'Nalut'),(29,411,'Sabha'),(29,412,'Shabiyat al Butnan'),(29,413,'Shabiyat al Jabal al Gharbi'),(29,414,'Shabiyat al Jafarah'),(29,415,'Shabiyat al Marqab'),(29,416,'Shabiyat al Wahat'),(29,417,'Shabiyat Wadi al Hayat'),(29,418,'Surt'),(29,419,'Tarabulus'),(30,420,'Antananarivo'),(30,421,'Antsiranana'),(30,422,'Fianarantsoa'),(30,423,'Mahajanga'),(30,424,'Toamasina'),(30,425,'Toliara'),(31,426,'Central Region'),(31,427,'Northern Region'),(31,428,'Southern Region'),(32,429,'Bamako'),(32,430,'Gao'),(32,431,'Kayes'),(32,432,'Kidal'),(32,433,'Koulikoro'),(32,434,'Mopti'),(32,435,'Segou'),(32,436,'Sikasso'),(32,437,'Tombouctou'),(33,438,'Adrar'),(33,439,'Assaba'),(33,440,'Brakna'),(33,441,'Dakhlet Nouadhibou'),(33,442,'Gorgol'),(33,443,'Guidimaka'),(33,444,'Hodh ech Chargui'),(33,445,'Inchiri'),(33,446,'Nouakchott'),(33,447,'Tagant'),(33,448,'Tiris Zemmour'),(33,449,'Trarza'),(33,450,'Wilaya du Hodh el Gharbi'),(34,451,'Agalega Islands'),(34,452,'Black River'),(34,453,'Flacq'),(34,454,'Grand Port'),(34,455,'Moka'),(34,456,'Pamplemousses'),(34,457,'Plaines Wilhems'),(34,458,'Port Louis'),(34,459,'Riviere du Rempart'),(34,460,'Rodrigues'),(34,461,'Savanne'),(35,462,'Acoua'),(35,463,'Dzaoudzi'),(35,464,'Mamoudzou'),(36,465,'Chaouia-Ouardigha'),(36,466,'Doukkala-Abda'),(36,467,'Fes-Boulemane'),(36,468,'Gharb-Chrarda-Beni Hssen'),(36,469,'Grand Casablanca'),(36,470,'Guelmim-Es Smara'),(36,471,'Marrakech-Tensift-Al Haouz'),(36,472,'Meknes-Tafilalet'),(36,473,'Oriental'),(36,474,'Oued ed Dahab-Lagouira'),(36,475,'Rabat-Sale-Zemmour-Zaer'),(36,476,'Souss-Massa-Draa'),(36,477,'Tadla-Azilal'),(36,478,'Tanger-Tetouan'),(36,479,'Taza-Al Hoceima-Taounate'),(37,480,'Cabo Delgado'),(37,481,'Gaza'),(37,482,'Inhambane'),(37,483,'Manica'),(37,484,'Maputo'),(37,485,'Maputo City'),(37,486,'Nampula'),(37,487,'Niassa'),(37,488,'Sofala'),(37,489,'Tete'),(37,490,'Zambezia'),(38,491,'Caprivi'),(38,492,'Erongo'),(38,493,'Hardap'),(38,494,'Karas'),(38,495,'Khomas'),(38,496,'Kunene'),(38,497,'Ohangwena'),(38,498,'Omaheke'),(38,499,'Omusati'),(38,500,'Oshana'),(38,501,'Oshikoto'),(38,502,'Otjozondjupa'),(39,503,'Agadez'),(39,504,'Diffa'),(39,505,'Dosso'),(39,506,'Maradi'),(39,507,'Niamey'),(39,508,'Tahoua'),(39,509,'Tillaberi'),(39,510,'Zinder'),(40,511,'Abia'),(40,512,'Abuja Federal Capital Territory'),(40,513,'Adamawa'),(40,514,'Adamawa State'),(40,515,'Akwa Ibom'),(40,516,'Anambra'),(40,517,'Bauchi'),(40,518,'Bayelsa'),(40,519,'Benue State'),(40,520,'Borno'),(40,521,'Cross River'),(40,522,'Delta'),(40,523,'Ebonyi'),(40,524,'Edo'),(40,525,'Ekiti'),(40,526,'Enugu'),(40,527,'Gombe'),(40,528,'Imo'),(40,529,'Jigawa State'),(40,530,'Kaduna'),(40,531,'Kano'),(40,532,'Katsina'),(40,533,'Kebbi'),(40,534,'Kogi'),(40,535,'Kwara'),(40,536,'Lagos'),(40,537,'Nassarawa'),(40,538,'Niger'),(40,539,'Ogun'),(40,540,'Ondo'),(40,541,'Osun'),(40,542,'Oyo'),(40,543,'Plateau'),(40,544,'Rivers'),(40,545,'Sokoto'),(40,546,'Taraba'),(40,547,'Yobe'),(40,548,'Zamfara'),(41,549,'Reunion'),(42,550,'Eastern Province'),(42,551,'Kigali City'),(42,552,'Northern Province'),(42,553,'Southern Province'),(42,554,'Western Province'),(43,555,'Principe'),(43,556,'Sao Tome'),(44,557,'Dakar'),(44,558,'Diourbel'),(44,559,'Fatick'),(44,560,'Kaffrine'),(44,561,'Kaolack'),(44,562,'Kedougou'),(44,563,'Kolda'),(44,564,'Louga'),(44,565,'Matam'),(44,566,'Saint-Louis'),(44,567,'Sedhiou'),(44,568,'Tambacounda'),(44,569,'Thies'),(44,570,'Ziguinchor'),(45,571,'Anse Boileau'),(45,572,'Anse Royale'),(45,573,'Beau Vallon'),(45,574,'Bel Ombre'),(45,575,'Cascade'),(45,576,'English River'),(45,577,'Inner Islands'),(45,578,'Port Glaud'),(45,579,'Takamaka'),(46,580,'Eastern Province'),(46,581,'Northern Province'),(46,582,'Southern Province'),(46,583,'Western Area'),(47,584,'Awdal'),(47,585,'Bakool'),(47,586,'Banaadir'),(47,587,'Bari'),(47,588,'Bay'),(47,589,'Galguduud'),(47,590,'Gedo'),(47,591,'Hiiraan'),(47,592,'Lower Juba'),(47,593,'Middle Juba'),(47,594,'Middle Shabele'),(47,595,'Mudug'),(47,596,'Nugaal'),(47,597,'Sanaag'),(47,598,'Celje'),(47,599,'Cerklje Na Gorenjskem'),(47,600,'Cerknica'),(47,601,'Cerkno'),(47,602,'Cerkvenjak'),(47,603,'Crensovci'),(47,604,'Crna na Koroskem'),(47,605,'Crnomelj'),(47,606,'Destrnik'),(47,607,'Divaca'),(47,608,'Dobje'),(47,609,'Dobrepolje'),(47,610,'Dobrna'),(47,611,'Dobrova-Horjul-Polhov Gradec'),(47,612,'Dobrovnik-Dobronak'),(47,613,'Dol Pri Ljubljani'),(47,614,'Dolenjske Toplice'),(47,615,'Domzale'),(47,616,'Dornava'),(47,617,'Dravograd'),(47,618,'Duplek'),(47,619,'Gorenja Vas-Poljane'),(47,620,'Gorisnica'),(47,621,'Gornja Radgona'),(47,622,'Gornji Grad'),(47,623,'Gornji Petrovci'),(47,624,'Grad'),(47,625,'Grosuplje'),(47,626,'Hajdina'),(47,627,'Hoce-Slivnica'),(47,628,'Hodos-Hodos'),(47,629,'Horjul'),(47,630,'Hrastnik'),(47,631,'Hrpelje-Kozina'),(47,632,'Idrija'),(47,633,'Ig'),(47,634,'Ilirska Bistrica'),(47,635,'Ivancna Gorica'),(47,636,'Izola-Isola'),(47,637,'Jesenice'),(47,638,'Jezersko'),(47,639,'Jursinci'),(47,640,'Kamnik'),(47,641,'Kanal'),(47,642,'Kidricevo'),(47,643,'Kobarid'),(47,644,'Kobilje'),(47,645,'Kocevje'),(47,646,'Komen'),(47,647,'Komenda'),(47,648,'Koper-Capodistria'),(47,649,'Kostel'),(47,650,'Kozje'),(47,651,'Kranj'),(47,652,'Kranjska Gora'),(47,653,'Krizevci'),(47,654,'Krsko'),(47,655,'Kungota'),(47,656,'Kuzma'),(47,657,'Lasko'),(47,658,'Lenart'),(47,659,'Lendava-Lendva'),(47,660,'Litija'),(47,661,'Ljubljana'),(47,662,'Ljubno'),(47,663,'Ljutomer'),(47,664,'Logatec'),(47,665,'Loska Dolina'),(47,666,'Loski Potok'),(47,667,'Lovrenc na Pohorju'),(47,668,'Luce'),(47,669,'Lukovica'),(47,670,'Majsperk'),(47,671,'Maribor'),(47,672,'Markovci'),(47,673,'Medvode'),(47,674,'Menges'),(47,675,'Metlika'),(47,676,'Mezica'),(47,677,'Miklavz na Dravskem Polju'),(47,678,'Miren-Kostanjevica'),(47,679,'Mirna Pec'),(47,680,'Mislinja'),(47,681,'Moravce'),(47,682,'Moravske Toplice'),(47,683,'Mozirje'),(47,684,'Murska Sobota'),(47,685,'Muta'),(47,686,'Naklo'),(47,687,'Nazarje'),(47,688,'Nova Gorica'),(47,689,'Novo Mesto'),(47,690,'Odranci'),(47,691,'Oplotnica'),(47,692,'Ormoz'),(47,693,'Osilnica'),(47,694,'Pesnica'),(47,695,'Piran-Pirano'),(47,696,'Pivka'),(47,697,'Podcetrtek'),(47,698,'Podlehnik'),(47,699,'Podvelka'),(47,700,'Polzela'),(47,701,'Postojna'),(47,702,'Prebold'),(47,703,'Preddvor'),(47,704,'Prevalje'),(47,705,'Ptuj'),(47,706,'Puconci'),(47,707,'Race-Fram'),(47,708,'Radece'),(47,709,'Radenci'),(47,710,'Radlje ob Dravi'),(47,711,'Radovljica'),(47,712,'Ravne na Koroskem'),(47,713,'Razkrizje'),(47,714,'Ribnica'),(47,715,'Ribnica na Pohorju'),(47,716,'Rogaska Slatina'),(47,717,'Rogasovci'),(47,718,'Rogatec'),(47,719,'Ruse'),(47,720,'Salovci'),(47,721,'Selnica ob Dravi'),(47,722,'Semic'),(47,723,'Sempeter-Vrtojba'),(47,724,'Sencur'),(47,725,'Sentilj'),(47,726,'Sentjernej'),(47,727,'Sentjur pri Celju'),(47,728,'Sevnica'),(47,729,'Sezana'),(47,730,'Skocjan'),(47,731,'Skofja Loka'),(47,732,'Skofljica'),(47,733,'Slovenj Gradec'),(47,734,'Slovenska Bistrica'),(47,735,'Slovenska Konjice'),(47,736,'Smarje pri Jelsah'),(47,737,'Smartno ob Paki'),(47,738,'Smartno pri Litiji'),(47,739,'Sodrazica'),(47,740,'Solcava'),(47,741,'Sostanj'),(47,742,'Starse'),(47,743,'Store'),(47,744,'Sveta Ana'),(47,745,'Sveti Andraz v Slovenskih Goricah'),(47,746,'Sveti Jurij'),(47,747,'Tabor'),(47,748,'Tisina'),(47,749,'Tolmin'),(47,750,'Trbovlje'),(47,751,'Trebnje'),(47,752,'Trnovska Vas'),(47,753,'Trzic'),(47,754,'Trzin'),(47,755,'Turnisce'),(47,756,'Velenje'),(47,757,'Velika Polana'),(47,758,'Velike Lasce'),(47,759,'Verzej'),(47,760,'Videm'),(47,761,'Vipava'),(47,762,'Vitanje'),(47,763,'Vodice'),(47,764,'Vojnik'),(47,765,'Vransko'),(47,766,'Vrhnika'),(47,767,'Vuzenica'),(47,768,'Zagorje ob Savi'),(47,769,'Zalec'),(47,770,'Zavrc'),(47,771,'Zelezniki'),(47,772,'Zetale'),(47,773,'Ziri'),(47,774,'Zirovnica'),(47,775,'Zrece'),(47,776,'Zuzemberk'),(48,777,'Eastern Cape'),(48,778,'Free State'),(48,779,'Gauteng'),(48,780,'KwaZulu-Natal'),(48,781,'Limpopo'),(48,782,'Mpumalanga'),(48,783,'North-West'),(48,784,'Northern Cape'),(48,785,'Western Cape'),(49,786,'Al Qadarif'),(49,787,'Blue Nile'),(49,788,'Gezira'),(49,789,'Kassala State'),(49,790,'Khartoum'),(49,791,'Nile'),(49,792,'Northern Darfur State'),(49,793,'Northern Kordofan State'),(49,794,'Northern State'),(49,795,'Red Sea'),(49,796,'Sinnar State'),(49,797,'Southern Darfur State'),(49,798,'Southern Kordofan'),(49,799,'Western Darfur'),(49,800,'La Rioja'),(49,801,'Madrid'),(49,802,'Melilla'),(49,803,'Murcia'),(49,804,'Valencia'),(50,805,'Hhohho'),(50,806,'Lubombo'),(50,807,'Manzini'),(50,808,'Shiselweni'),(51,809,'Arusha'),(51,810,'Dar es Salaam'),(51,811,'Dodoma'),(51,812,'Eastern Province'),(51,813,'Iringa'),(51,814,'Kagera'),(51,815,'Kigoma'),(51,816,'Kilimanjaro'),(51,817,'Lindi'),(51,818,'Manyara'),(51,819,'Mara'),(51,820,'Mbeya'),(51,821,'Morogoro'),(51,822,'Mtwara'),(51,823,'Mwanza'),(51,824,'Pemba North'),(51,825,'Pemba South'),(51,826,'Pwani'),(51,827,'Rukwa'),(51,828,'Ruvuma'),(51,829,'Shinyanga'),(51,830,'Singida'),(51,831,'Tabora'),(51,832,'Tanga'),(51,833,'Zanzibar Central/South'),(51,834,'Zanzibar North'),(51,835,'Zanzibar Urban/West'),(52,836,'Centrale'),(52,837,'Collines'),(52,838,'Donga'),(52,839,'Kara'),(52,840,'Maritime'),(52,841,'Mono'),(52,842,'Northern'),(52,843,'Plateaux'),(52,844,'Savanes'),(52,845,'Volta'),(53,846,'Al Mahdiyah'),(53,847,'Al Munastir'),(53,848,'Al Qasrayn'),(53,849,'Al Qayrawan'),(53,850,'Ariana'),(53,851,'Bajah'),(53,852,'Banzart'),(53,853,'Bin Arus'),(53,854,'Gouvernorat de la Manouba'),(53,855,'Jundubah'),(53,856,'Kef'),(53,857,'Madanin'),(53,858,'Nabul'),(53,859,'Qabis'),(53,860,'Qafsah'),(53,861,'Qibili'),(53,862,'Safaqis'),(53,863,'Sidi Bu Zayd'),(53,864,'Silyanah'),(53,865,'Susah'),(53,866,'Tatawin'),(53,867,'Tawzar'),(53,868,'Tunis'),(53,869,'Zaghwan'),(54,870,'Abim'),(54,871,'Adjumani'),(54,872,'Alebtong'),(54,873,'Amolatar'),(54,874,'Amudat'),(54,875,'Amuria'),(54,876,'Amuru'),(54,877,'Apac'),(54,878,'Arua'),(54,879,'Budaka'),(54,880,'Bududa'),(54,881,'Bugiri'),(54,882,'Buhweju'),(54,883,'Bukedea'),(54,884,'Bukomansimbi'),(54,885,'Bukwa'),(54,886,'Bulambuli'),(54,887,'Bulisa'),(54,888,'Bundibugyo'),(54,889,'Bushenyi'),(54,890,'Busia'),(54,891,'Butaleja'),(54,892,'Dokolo'),(54,893,'Gomba'),(54,894,'Gulu'),(54,895,'Hoima'),(54,896,'Ibanda'),(54,897,'Iganga'),(54,898,'Isingiro'),(54,899,'Jinja'),(54,900,'Kaabong'),(54,901,'Kabale'),(54,902,'Kabarole'),(54,903,'Kaberamaido'),(54,904,'Kalangala'),(54,905,'Kaliro'),(54,906,'Kampala'),(54,907,'Kampala District'),(54,908,'Kamuli'),(54,909,'Kamwenge'),(54,910,'Kanungu'),(54,911,'Kapchorwa'),(54,912,'Kasese'),(54,913,'Katakwi'),(54,914,'Kayunga'),(54,915,'Kibale'),(54,916,'Kibuku'),(54,917,'Kiruhura'),(54,918,'Kisoro'),(54,919,'Kitgum'),(54,920,'Koboko'),(54,921,'Kotido'),(54,922,'Kumi'),(54,923,'Kyankwanzi'),(54,924,'Kyegegwa'),(54,925,'Kyenjojo'),(54,926,'Lamwo District'),(54,927,'Lira'),(54,928,'Luuka'),(54,929,'Luwero'),(54,930,'Lyantonde'),(54,931,'Manafwa'),(54,932,'Maracha'),(54,933,'Masaka'),(54,934,'Masindi'),(54,935,'Mayuge'),(54,936,'Mbale'),(54,937,'Mbarara'),(54,938,'Mitoma'),(54,939,'Mityana'),(54,940,'Moroto'),(54,941,'Moyo'),(54,942,'Mpigi'),(54,943,'Mubende'),(54,944,'Mukono'),(54,945,'Nakapiripirit'),(54,946,'Nakaseke'),(54,947,'Nakasongola'),(54,948,'Namayingo'),(54,949,'Namutumba'),(54,950,'Napak'),(54,951,'Nebbi'),(54,952,'Ntoroko'),(54,953,'Ntungamo'),(54,954,'Nwoya'),(54,955,'Nwoya District'),(54,956,'Otuke'),(54,957,'Oyam'),(54,958,'Pader'),(54,959,'Pallisa'),(54,960,'Rakai'),(54,961,'Rubirizi'),(54,962,'Rukungiri'),(54,963,'Sembabule'),(54,964,'Soroti'),(54,965,'Tororo'),(54,966,'Wakiso'),(54,967,'Yumbe'),(55,968,'Adrar'),(55,969,'Oued Ed-Dahab-Lagouira'),(55,970,'Tiris Zemmour'),(56,971,'Central'),(56,972,'Copperbelt'),(56,973,'Eastern'),(56,974,'Luapula'),(56,975,'Lusaka'),(56,976,'North-Western'),(56,977,'Northern'),(56,978,'Southern'),(56,979,'Western'),(57,980,'Bulawayo'),(57,981,'Harare Province'),(57,982,'Manicaland'),(57,983,'Mashonaland Central'),(57,984,'Mashonaland East'),(57,985,'Mashonaland West'),(57,986,'Masvingo'),(57,987,'Matabeleland North'),(57,988,'Matabeleland South'),(57,989,'Midlands'),(58,990,'Barbuda'),(58,991,'Saint George'),(58,992,'Saint John'),(58,993,'Saint Mary'),(58,994,'Saint Paul'),(58,995,'Saint Peter'),(58,996,'Saint Philip'),(59,997,'Acklins and Crooked Islands'),(59,998,'Berry Islands District'),(59,999,'Bimini'),(59,1000,'Black Point District'),(59,1001,'Cat Island'),(59,1002,'Central Abaco District'),(59,1003,'Central Andros District'),(59,1004,'Central Eleuthera District'),(59,1005,'Crooked Island and Long Cay District'),(59,1006,'East Grand Bahama District'),(59,1007,'Exuma'),(59,1008,'Freeport'),(59,1009,'Governors Harbour'),(59,1010,'Harbour Island'),(59,1011,'Hope Town District'),(59,1012,'Inagua'),(59,1013,'Long Island'),(59,1014,'Mangrove Cay District'),(59,1015,'Marsh Harbour'),(59,1016,'Mayaguana'),(59,1017,'Moores Island District'),(59,1018,'New Providence'),(59,1019,'North Abaco District'),(59,1020,'North Andros District'),(59,1021,'North Eleuthera District'),(59,1022,'Ragged Island'),(59,1023,'Rum Cay District'),(59,1024,'San Salvador'),(59,1025,'South Abaco District'),(59,1026,'South Andros District'),(59,1027,'South Eleuthera District'),(59,1028,'Spanish Wells District'),(59,1029,'West Grand Bahama District'),(60,1030,'Christ Church'),(60,1031,'Saint Andrew'),(60,1032,'Saint George'),(60,1033,'Saint James'),(60,1034,'Saint John'),(60,1035,'Saint Joseph'),(60,1036,'Saint Lucy'),(60,1037,'Saint Michael'),(60,1038,'Saint Peter'),(60,1039,'Saint Philip'),(60,1040,'Saint Thomas'),(61,1041,'Belize'),(61,1042,'Cayo'),(61,1043,'Corozal'),(61,1044,'Orange Walk'),(61,1045,'Stann Creek'),(61,1046,'Toledo'),(62,1047,'Alberta'),(62,1048,'British Columbia'),(62,1049,'Manitoba'),(62,1050,'New Brunswick'),(62,1051,'Newfoundland and Labrador'),(62,1052,'Northwest Territories'),(62,1053,'Nova Scotia'),(62,1054,'Nunavut'),(62,1055,'Ontario'),(62,1056,'Prince Edward Island'),(62,1057,'Quebec'),(62,1058,'Saskatchewan'),(62,1059,'Yukon'),(63,1060,'Alajuela'),(63,1061,'Cartago'),(63,1062,'Guanacaste'),(63,1063,'Heredia'),(63,1064,'Limon'),(63,1065,'Puntarenas'),(63,1066,'San Jose'),(64,1067,'Artemisa'),(64,1068,'Camaguey'),(64,1069,'Ciego de Avila'),(64,1070,'Cienfuegos'),(64,1071,'Ciudad de La Habana'),(64,1072,'Granma'),(64,1073,'Guantanamo'),(64,1074,'Holguin'),(64,1075,'Isla de la Juventud'),(64,1076,'Las Tunas'),(64,1077,'Matanzas'),(64,1078,'Mayabeque'),(64,1079,'Pinar del Rio'),(64,1080,'Sancti Spiritus'),(64,1081,'Santiago de Cuba'),(64,1082,'Villa Clara'),(65,1083,'Saint Andrew'),(65,1084,'Saint David'),(65,1085,'Saint George'),(65,1086,'Saint John'),(65,1087,'Saint Joseph'),(65,1088,'Saint Luke'),(65,1089,'Saint Mark'),(65,1090,'Saint Patrick'),(65,1091,'Saint Paul'),(65,1092,'Saint Peter'),(66,1093,'Azua'),(66,1094,'Baoruco'),(66,1095,'Barahona'),(66,1096,'Dajabon'),(66,1097,'Distrito Nacional'),(66,1098,'Duarte'),(66,1099,'El Seibo'),(66,1100,'Elias Pina'),(66,1101,'Espaillat'),(66,1102,'Hato Mayor'),(66,1103,'Hermanas Mirabal'),(66,1104,'Independencia'),(66,1105,'La Altagracia'),(66,1106,'La Romana'),(66,1107,'La Vega'),(66,1108,'Maria Trinidad Sanchez'),(66,1109,'Monsenor Nouel'),(66,1110,'Monte Cristi'),(66,1111,'Monte Plata'),(66,1112,'Pedernales'),(66,1113,'Peravia'),(66,1114,'Puerto Plata'),(66,1115,'Samana'),(66,1116,'San Cristobal'),(66,1117,'San Jose de Ocoa'),(66,1118,'San Juan'),(66,1119,'San Pedro de Macoris'),(66,1120,'Sanchez Ramirez'),(66,1121,'Santiago'),(66,1122,'Santiago Rodriguez'),(66,1123,'Santo Domingo'),(66,1124,'Valverde'),(67,1125,'Ahuachapan'),(67,1126,'Cabanas'),(67,1127,'Chalatenango'),(67,1128,'Cuscatlan'),(67,1129,'La Libertad'),(67,1130,'La Paz'),(67,1131,'La Union'),(67,1132,'Morazan'),(67,1133,'San Miguel'),(67,1134,'San Salvador'),(67,1135,'San Vicente'),(67,1136,'Santa Ana'),(67,1137,'Sonsonate'),(67,1138,'Usulutan'),(68,1139,'Kujalleq'),(68,1140,'Qaasuitsup'),(68,1141,'Qeqqata'),(68,1142,'Sermersooq'),(69,1143,'Carriacou and Petite Martinique'),(69,1144,'Saint Andrew'),(69,1145,'Saint David'),(69,1146,'Saint George'),(70,1147,'Alta Verapaz'),(70,1148,'Baja Verapaz'),(70,1149,'Chimaltenango'),(70,1150,'Chiquimula'),(70,1151,'El Progreso'),(70,1152,'Escuintla'),(70,1153,'Guatemala'),(70,1154,'Huehuetenango'),(70,1155,'Izabal'),(70,1156,'Jalapa'),(70,1157,'Jutiapa'),(70,1158,'Peten'),(70,1159,'Quetzaltenango'),(70,1160,'Quiche'),(70,1161,'Retalhuleu'),(70,1162,'Sacatepequez'),(70,1163,'San Marcos'),(70,1164,'Santa Rosa'),(70,1165,'Solola'),(70,1166,'Suchitepequez'),(70,1167,'Totonicapan'),(70,1168,'Zacapa'),(71,1169,'Artibonite'),(71,1170,'Centre'),(71,1171,'Grand Anse'),(71,1172,'Nippes'),(71,1173,'Nord'),(71,1174,'Nord-Est'),(71,1175,'Nord-Ouest'),(71,1176,'Ouest'),(71,1177,'Sud'),(71,1178,'Sud-Est'),(72,1179,'Atlantida'),(72,1180,'Bay Islands'),(72,1181,'Choluteca'),(72,1182,'Colon'),(72,1183,'Comayagua'),(72,1184,'Copan'),(72,1185,'Cortes'),(72,1186,'El Paraiso'),(72,1187,'Francisco Morazan'),(72,1188,'Gracias a Dios'),(72,1189,'Intibuca'),(72,1190,'La Paz'),(72,1191,'Lempira'),(72,1192,'Ocotepeque'),(72,1193,'Olancho'),(72,1194,'Santa Barbara'),(72,1195,'Valle'),(72,1196,'Yoro'),(73,1197,'Clarendon'),(73,1198,'Hanover Parish'),(73,1199,'Kingston'),(73,1200,'Manchester'),(73,1201,'Portland'),(73,1202,'Saint Andrew'),(73,1203,'Saint Ann'),(73,1204,'Saint Catherine'),(73,1205,'Saint James'),(73,1206,'Saint Mary'),(73,1207,'Saint Thomas'),(73,1208,'St. Elizabeth'),(73,1209,'Trelawny'),(73,1210,'Westmoreland'),(74,1211,'Martinique'),(75,1212,'Aguascalientes'),(75,1213,'Baja California'),(75,1214,'Baja California Sur'),(75,1215,'Campeche'),(75,1216,'Chiapas'),(75,1217,'Chihuahua'),(75,1218,'Coahuila'),(75,1219,'Colima'),(75,1220,'Durango'),(75,1221,'Guanajuato'),(75,1222,'Guerrero'),(75,1223,'Hidalgo'),(75,1224,'Jalisco'),(75,1225,'Mexico'),(75,1226,'Michoacan'),(75,1227,'Morelos'),(75,1228,'Nayarit'),(75,1229,'Nuevo Leon'),(75,1230,'Oaxaca'),(75,1231,'Puebla'),(75,1232,'Queretaro'),(75,1233,'Quintana Roo'),(75,1234,'San Luis Potosi'),(75,1235,'Sinaloa'),(75,1236,'Sonora'),(75,1237,'Tabasco'),(75,1238,'Tamaulipas'),(75,1239,'The Federal District'),(75,1240,'Tlaxcala'),(75,1241,'Veracruz-Llave'),(75,1242,'Yucatan'),(75,1243,'Zacatecas'),(76,1244,'Saint Anthony'),(76,1245,'Saint Georges'),(76,1246,'Saint Peter'),(77,1247,'Atlantico Norte'),(77,1248,'Atlantico Sur'),(77,1249,'Boaco'),(77,1250,'Carazo'),(77,1251,'Chinandega'),(77,1252,'Chontales'),(77,1253,'Esteli'),(77,1254,'Granada'),(77,1255,'Jinotega'),(77,1256,'Leon'),(77,1257,'Madriz'),(77,1258,'Managua'),(77,1259,'Masaya'),(77,1260,'Matagalpa'),(77,1261,'Nueva Segovia'),(77,1262,'Rio San Juan'),(77,1263,'Rivas'),(78,1264,'Bocas del Toro'),(78,1265,'Chiriqui'),(78,1266,'Cocle'),(78,1267,'Colon'),(78,1268,'Darien'),(78,1269,'Embera'),(78,1270,'Herrera'),(78,1271,'Kuna Yala'),(78,1272,'Los Santos'),(78,1273,'Ngobe-Bugle'),(78,1274,'Panama'),(78,1275,'Veraguas'),(79,1276,'Adjuntas'),(79,1277,'Aguada'),(79,1278,'Aguadilla'),(79,1279,'Aguas Buenas'),(79,1280,'Aibonito'),(79,1281,'Anasco'),(79,1282,'Arecibo'),(79,1283,'Arroyo'),(79,1284,'Barceloneta'),(79,1285,'Barranquitas'),(79,1286,'Bayamon'),(79,1287,'Cabo Rojo'),(79,1288,'Caguas'),(79,1289,'Camuy'),(79,1290,'Canovanas'),(79,1291,'Carolina'),(79,1292,'Catano'),(79,1293,'Cayey'),(79,1294,'Ceiba'),(79,1295,'Ciales'),(79,1296,'Cidra'),(79,1297,'Coamo'),(79,1298,'Comerio'),(79,1299,'Corozal'),(79,1300,'Culebra'),(79,1301,'Dorado'),(79,1302,'Fajardo'),(79,1303,'Florida'),(79,1304,'Guanica'),(79,1305,'Guayama'),(79,1306,'Guayanilla'),(79,1307,'Guaynabo'),(79,1308,'Gurabo'),(79,1309,'Hatillo'),(79,1310,'Hormigueros'),(79,1311,'Humacao'),(79,1312,'Isabela'),(79,1313,'Juana Diaz'),(79,1314,'Lajas'),(79,1315,'Lares'),(79,1316,'Las Marias'),(79,1317,'Las Piedras'),(79,1318,'Loiza'),(79,1319,'Luquillo'),(79,1320,'Manati'),(79,1321,'Maricao'),(79,1322,'Maunabo'),(79,1323,'Mayaguez'),(79,1324,'Moca'),(79,1325,'Morovis'),(79,1326,'Municipio de Jayuya'),(79,1327,'Municipio de Juncos'),(79,1328,'Naguabo'),(79,1329,'Naranjito'),(79,1330,'Orocovis'),(79,1331,'Patillas'),(79,1332,'Penuelas'),(79,1333,'Ponce'),(79,1334,'Quebradillas'),(79,1335,'Rincon'),(79,1336,'Rio Grande'),(79,1337,'Sabana Grande'),(79,1338,'Salinas'),(79,1339,'San German'),(79,1340,'San Juan'),(79,1341,'San Lorenzo'),(79,1342,'San Sebastian'),(79,1343,'Santa Isabel Municipio'),(79,1344,'Toa Alta'),(79,1345,'Toa Baja'),(79,1346,'Trujillo Alto'),(79,1347,'Utuado'),(79,1348,'Vega Alta'),(79,1349,'Vega Baja'),(79,1350,'Vieques'),(79,1351,'Villalba'),(79,1352,'Yabucoa'),(79,1353,'Yauco'),(80,1354,'Christ Church Nichola Town'),(80,1355,'Saint Anne Sandy Point'),(80,1356,'Saint George Basseterre'),(80,1357,'Saint George Gingerland'),(80,1358,'Saint James Windwa'),(80,1359,'Saint John Capesterre'),(80,1360,'Saint John Figtree'),(80,1361,'Saint Mary Cayon'),(80,1362,'Saint Paul Capesterre'),(80,1363,'Saint Paul Charlestown'),(80,1364,'Saint Peter Basseterre'),(80,1365,'Saint Thomas Lowland'),(80,1366,'Saint Thomas Middle Island'),(80,1367,'Trinity Palmetto Point'),(81,1368,'Anse-la-Raye'),(81,1369,'Castries'),(81,1370,'Choiseul'),(81,1371,'Dauphin'),(81,1372,'Dennery'),(81,1373,'Gros-Islet'),(81,1374,'Laborie'),(81,1375,'Micoud'),(81,1376,'Praslin'),(81,1377,'Soufriere'),(81,1378,'Vieux-Fort'),(82,1379,'Saint-Pierre'),(83,1380,'Charlotte'),(83,1381,'Grenadines'),(83,1382,'Saint Andrew'),(83,1383,'Saint David'),(83,1384,'Saint George'),(83,1385,'Saint Patrick'),(84,1386,'Arima'),(84,1387,'Chaguanas'),(84,1388,'Couva-Tabaquite-Talparo'),(84,1389,'Diego Martin'),(84,1390,'Eastern Tobago'),(84,1391,'Mayaro'),(84,1392,'Penal/Debe'),(84,1393,'Point Fortin'),(84,1394,'Port-of-Spain'),(84,1395,'Princes Town'),(84,1396,'San Fernando'),(84,1397,'San Juan/Laventille'),(84,1398,'Sangre Grande'),(84,1399,'Siparia'),(84,1400,'Tobago'),(84,1401,'Tunapuna/Piarco'),(85,1402,'Alabama'),(85,1403,'Alaska'),(85,1404,'Arizona'),(85,1405,'Arkansas'),(85,1406,'California'),(85,1407,'Colorado'),(85,1408,'Connecticut'),(85,1409,'Delaware'),(85,1410,'Florida'),(85,1411,'Georgia'),(85,1412,'Hawaii'),(85,1413,'Idaho'),(85,1414,'Illinois'),(85,1415,'Indiana'),(86,1416,'Buenos Aires'),(86,1417,'Buenos Aires F.D.'),(86,1418,'Catamarca'),(86,1419,'Chaco'),(86,1420,'Chubut'),(86,1421,'Cordoba'),(86,1422,'Corrientes'),(86,1423,'Entre Rios'),(86,1424,'Formosa'),(86,1425,'Jujuy'),(86,1426,'La Pampa'),(86,1427,'La Rioja'),(86,1428,'Mendoza'),(86,1429,'Misiones'),(86,1430,'Neuquen'),(86,1431,'Rio Negro'),(86,1432,'Salta'),(86,1433,'San Juan'),(86,1434,'San Luis'),(86,1435,'Santa Cruz'),(86,1436,'Santa Fe'),(86,1437,'Santiago del Estero'),(86,1438,'Tierra del Fuego'),(86,1439,'Tucuman'),(87,1440,'Chuquisaca'),(87,1441,'Cochabamba'),(87,1442,'El Beni'),(87,1443,'La Paz'),(87,1444,'Oruro'),(87,1445,'Pando'),(87,1446,'Potosi'),(87,1447,'Santa Cruz'),(87,1448,'Tarija'),(88,1449,'Acre'),(88,1450,'Alagoas'),(88,1451,'Amapa'),(88,1452,'Amazonas'),(88,1453,'Bahia'),(88,1454,'Ceara'),(88,1455,'Distrito Federal'),(88,1456,'Estado de Minas Gerais'),(88,1457,'Estado de Pernambuco'),(88,1458,'Estado do Espirito Santo'),(88,1459,'Goias'),(88,1460,'Maranhao'),(88,1461,'Mato Grosso'),(88,1462,'Mato Grosso do Sul'),(88,1463,'Para'),(88,1464,'Paraiba'),(88,1465,'Parana'),(88,1466,'Piaui'),(88,1467,'Rio de Janeiro'),(88,1468,'Rio Grande do Norte'),(88,1469,'Rio Grande do Sul'),(88,1470,'Rondonia'),(88,1471,'Roraima'),(88,1472,'Santa Catarina'),(88,1473,'Sao Paulo'),(88,1474,'Sergipe'),(88,1475,'Tocantins'),(89,1476,'Aisen del General Carlos IbaNez del Campo'),(89,1477,'Antofagasta'),(89,1478,'Araucania'),(89,1479,'Atacama'),(89,1480,'Bio-Bio'),(89,1481,'Coquimbo'),(89,1482,'Libertador General Bernardo OHiggins'),(89,1483,'Los Lagos'),(89,1484,'Magallanes y Antartica Chilena'),(89,1485,'Maule'),(89,1486,'Region de Arica y Parinacota'),(89,1487,'Region de Los Rios'),(89,1488,'Region Metropolitana'),(89,1489,'Tarapaca'),(89,1490,'Valparaiso'),(90,1491,'Amazonas'),(90,1492,'Antioquia'),(90,1493,'Arauca'),(90,1494,'Archipielago de San Andres, Providencia y Santa Catalina'),(90,1495,'Atlantico'),(90,1496,'Bogota D.C.'),(90,1497,'Bolivar'),(90,1498,'Boyaca'),(90,1499,'Caldas'),(90,1500,'Caqueta'),(90,1501,'Casanare'),(90,1502,'Cauca'),(90,1503,'Cesar'),(90,1504,'Choco'),(90,1505,'Cordoba'),(90,1506,'Cundinamarca'),(90,1507,'Guainia'),(90,1508,'Guaviare'),(90,1509,'Huila'),(90,1510,'La Guajira'),(90,1511,'Magdalena'),(90,1512,'Meta'),(90,1513,'NariNo'),(90,1514,'Norte de Santander'),(90,1515,'Putumayo'),(90,1516,'Quindio'),(90,1517,'Risaralda'),(90,1518,'Santander'),(90,1519,'Sucre'),(90,1520,'Tolima'),(90,1521,'Valle del Cauca'),(90,1522,'Vaupes'),(90,1523,'Vichada'),(91,1524,'Azuay'),(91,1525,'Bolivar'),(91,1526,'CaNar'),(91,1527,'Carchi'),(91,1528,'Chimborazo'),(91,1529,'Cotopaxi'),(91,1530,'El Oro'),(91,1531,'Esmeraldas'),(91,1532,'Galapagos'),(91,1533,'Guayas'),(91,1534,'Imbabura'),(91,1535,'Loja'),(91,1536,'Los Rios'),(91,1537,'Manabi'),(91,1538,'Morona-Santiago'),(91,1539,'Napo'),(91,1540,'Orellana'),(91,1541,'Pastaza'),(91,1542,'Pichincha'),(91,1543,'Santa Elena'),(91,1544,'Santo Domingo de los Tsachilas'),(91,1545,'Sucumbios'),(91,1546,'Tungurahua'),(91,1547,'Zamora-Chinchipe'),(92,1548,'Guyane'),(93,1549,'Barima-Waini'),(93,1550,'Cuyuni-Mazaruni'),(93,1551,'Demerara-Mahaica'),(93,1552,'East Berbice-Corentyne'),(93,1553,'Essequibo Islands-West Demerara'),(93,1554,'Mahaica-Berbice'),(93,1555,'Pomeroon-Supenaam'),(93,1556,'Potaro-Siparuni'),(93,1557,'Upper Demerara-Berbice'),(93,1558,'Upper Takutu-Upper Essequibo'),(94,1559,'Alto Paraguay'),(94,1560,'Alto Parana'),(94,1561,'Amambay'),(94,1562,'Asuncion'),(94,1563,'Boqueron'),(94,1564,'Caaguazu'),(94,1565,'Caazapa'),(94,1566,'Canindeyu'),(94,1567,'Central'),(94,1568,'Concepcion'),(94,1569,'Cordillera'),(94,1570,'Guaira'),(94,1571,'Itapua'),(94,1572,'Misiones'),(94,1573,'Neembucu'),(94,1574,'Paraguari'),(94,1575,'Presidente Hayes'),(94,1576,'San Pedro'),(95,1577,'Amazonas'),(95,1578,'Ancash'),(95,1579,'Apurimac'),(95,1580,'Arequipa'),(95,1581,'Ayacucho'),(95,1582,'Cajamarca'),(95,1583,'Callao'),(95,1584,'Cusco'),(95,1585,'Huancavelica'),(95,1586,'Huanuco'),(95,1587,'Ica'),(95,1588,'Junin'),(95,1589,'La Libertad'),(95,1590,'Lambayeque'),(95,1591,'Lima'),(95,1592,'Loreto'),(95,1593,'Madre de Dios'),(95,1594,'Moquegua'),(95,1595,'Pasco'),(95,1596,'Piura'),(95,1597,'Puno'),(95,1598,'San Martin'),(95,1599,'Tacna'),(95,1600,'Tumbes'),(95,1601,'Ucayali'),(96,1602,'Brokopondo'),(96,1603,'Commewijne'),(96,1604,'Coronie'),(96,1605,'Marowijne'),(96,1606,'Nickerie'),(96,1607,'Para'),(96,1608,'Paramaribo'),(96,1609,'Saramacca'),(96,1610,'Sipaliwini'),(96,1611,'Wanica'),(97,1612,'Artigas'),(97,1613,'Canelones'),(97,1614,'Cerro Largo'),(97,1615,'Colonia'),(97,1616,'Durazno'),(97,1617,'Flores'),(97,1618,'Florida'),(97,1619,'Lavalleja'),(97,1620,'Maldonado'),(97,1621,'Montevideo'),(97,1622,'Paysandu'),(97,1623,'Rio Negro'),(97,1624,'Rivera'),(97,1625,'Rocha'),(97,1626,'Iowa'),(97,1627,'Kansas'),(97,1628,'Kentucky'),(97,1629,'Louisiana'),(97,1630,'Maine'),(97,1631,'Maryland'),(97,1632,'Massachusetts'),(97,1633,'Michigan'),(97,1634,'Minnesota'),(97,1635,'Mississippi'),(97,1636,'Missouri'),(97,1637,'Montana'),(97,1638,'Nebraska'),(97,1639,'Nevada'),(97,1640,'New Hampshire'),(97,1641,'New Jersey'),(97,1642,'New Mexico'),(97,1643,'New York'),(97,1644,'North Carolina'),(97,1645,'North Dakota'),(97,1646,'Ohio'),(97,1647,'Oklahoma'),(97,1648,'Oregon'),(97,1649,'Pennsylvania'),(97,1650,'Rhode Island'),(97,1651,'South Carolina'),(97,1652,'South Dakota'),(97,1653,'Tennessee'),(97,1654,'Texas'),(97,1655,'Utah'),(97,1656,'Vermont'),(97,1657,'Virginia'),(97,1658,'Washington'),(97,1659,'Washington, D.C.'),(97,1660,'West Virginia'),(97,1661,'Wisconsin'),(97,1662,'Wyoming'),(98,1663,'Amazonas'),(98,1664,'Anzoategui'),(98,1665,'Apure'),(98,1666,'Aragua'),(98,1667,'Barinas'),(98,1668,'Bolivar'),(98,1669,'Carabobo'),(98,1670,'Cojedes'),(98,1671,'Delta Amacuro'),(98,1672,'Dependencias Federales'),(98,1673,'Distrito Capital'),(98,1674,'Falcon'),(98,1675,'Guarico'),(98,1676,'Isla Margarita'),(98,1677,'Lara'),(98,1678,'Merida'),(98,1679,'Miranda'),(98,1680,'Monagas'),(98,1681,'Portuguesa'),(98,1682,'Sucre'),(98,1683,'Tachira'),(98,1684,'Trujillo'),(98,1685,'Vargas'),(98,1686,'Yaracuy'),(98,1687,'Zulia'),(99,1688,'Saint Croix Island'),(99,1689,'Saint John Island'),(99,1690,'Saint Thomas Island'),(100,1691,'Antarctica'),(101,1692,'Badakhshan'),(101,1693,'Badghis'),(101,1694,'Baghlan'),(101,1695,'Balkh'),(101,1696,'Bamian'),(101,1697,'Farah'),(101,1698,'Faryab'),(101,1699,'Ghazni'),(101,1700,'Ghowr'),(101,1701,'Helmand'),(101,1702,'Herat'),(101,1703,'Jowzjan'),(101,1704,'Kabul'),(101,1705,'Kandahar'),(101,1706,'Kapisa'),(101,1707,'Khowst'),(101,1708,'Konar'),(101,1709,'Kunduz'),(101,1710,'Laghman'),(101,1711,'Lowgar'),(101,1712,'Nangarhar'),(101,1713,'Nimruz'),(101,1714,'Nurestan'),(101,1715,'Oruzgan'),(101,1716,'Paktia'),(101,1717,'Paktika'),(101,1718,'Panjshir'),(101,1719,'Parvan'),(101,1720,'Samangan'),(101,1721,'Sar-e Pol'),(101,1722,'Takhar'),(101,1723,'Vardak'),(101,1724,'Wilayat-e Daykundi'),(101,1725,'Zabul'),(101,1726,'Badakhshan'),(101,1727,'Badghis'),(101,1728,'Baghlan'),(101,1729,'Balkh'),(101,1730,'Bamian'),(101,1731,'Farah'),(101,1732,'Faryab'),(101,1733,'Ghazni'),(101,1734,'Ghowr'),(101,1735,'Helmand'),(101,1736,'Herat'),(101,1737,'Jowzjan'),(101,1738,'Kabul'),(101,1739,'Kandahar'),(101,1740,'Kapisa'),(101,1741,'Khowst'),(101,1742,'Konar'),(101,1743,'Kunduz'),(101,1744,'Laghman'),(101,1745,'Lowgar'),(101,1746,'Nangarhar'),(101,1747,'Nimruz'),(101,1748,'Nurestan'),(101,1749,'Oruzgan'),(101,1750,'Paktia'),(101,1751,'Paktika'),(101,1752,'Panjshir'),(101,1753,'Parvan'),(101,1754,'Samangan'),(101,1755,'Sar-e Pol'),(101,1756,'Takhar'),(101,1757,'Vardak'),(101,1758,'Wilayat-e Daykundi'),(101,1759,'Zabul'),(102,1760,'Aragatsotn'),(102,1761,'Ararat'),(102,1762,'Armavir'),(102,1763,'Gegharkunik'),(102,1764,'Kotayk'),(102,1765,'Lorri'),(102,1766,'Shirak'),(102,1767,'Syunik'),(102,1768,'Tavush'),(102,1769,'Vayots Dzor'),(102,1770,'Yerevan'),(103,1771,'Abseron'),(103,1772,'Agcabadi'),(103,1773,'Agdam'),(103,1774,'Agdas'),(103,1775,'Agstafa'),(103,1776,'Agsu'),(103,1777,'Astara'),(103,1778,'Baki'),(103,1779,'Balakan'),(103,1780,'Beylaqan'),(103,1781,'Bilasuvar'),(103,1782,'Barda'),(103,1783,'Cabray?l'),(103,1784,'Calilabad'),(103,1785,'Daskasan'),(103,1786,'Davaci'),(103,1787,'Fuzuli'),(103,1788,'Goranboy'),(103,1789,'Goycay'),(103,1790,'Goygol Rayon'),(103,1791,'Gadabay'),(103,1792,'Ganca'),(103,1793,'Hac?qabul'),(103,1794,'?misli'),(103,1795,'?smay?ll?'),(103,1796,'Kurdamir'),(103,1797,'Kalbacar'),(103,1798,'Lac?n'),(103,1799,'Lerik'),(103,1800,'Lankaran'),(103,1801,'Masall?'),(103,1802,'Mingacevir'),(103,1803,'Naftalan'),(103,1804,'Nakhichevan'),(103,1805,'Neftcala'),(103,1806,'Oguz'),(103,1807,'Qazax'),(103,1808,'Qobustan'),(103,1809,'Quba'),(103,1810,'Qubadl?'),(103,1811,'Qusar'),(103,1812,'Qabala'),(103,1813,'Qax'),(103,1814,'Saatl?'),(103,1815,'Sabirabad'),(103,1816,'Salyan'),(103,1817,'samax?'),(103,1818,'Samux'),(103,1819,'Shaki City'),(103,1820,'Siyazan'),(103,1821,'Sumqayit'),(103,1822,'susa'),(103,1823,'saki'),(103,1824,'samkir'),(103,1825,'Tovuz'),(103,1826,'Tartar'),(103,1827,'Ucar'),(103,1828,'Xacmaz'),(103,1829,'Xankandi'),(103,1830,'X?z?'),(103,1831,'Xocal?'),(103,1832,'Xocavand'),(103,1833,'Yard?ml?'),(103,1834,'Yevlax'),(103,1835,'Yevlax City'),(103,1836,'Zaqatala'),(103,1837,'Zangilan'),(103,1838,'Zardab'),(103,1839,'ali Bayramli'),(104,1840,'Capital Governorate'),(104,1841,'Central Governorate'),(104,1842,'Muharraq'),(104,1843,'Northern Governorate'),(104,1844,'Southern Governorate'),(105,1845,'Barisal'),(105,1846,'Chittagong'),(105,1847,'Dhaka'),(105,1848,'Khulna'),(105,1849,'Rajshahi'),(105,1850,'Rangpur'),(105,1851,'Rangpur Division'),(105,1852,'Sylhet'),(106,1853,'Bumthang'),(106,1854,'Chhukha'),(106,1855,'Chirang'),(106,1856,'Daga'),(106,1857,'Gasa'),(106,1858,'Geylegphug'),(106,1859,'Ha'),(106,1860,'Lhuntshi'),(106,1861,'Mongar'),(106,1862,'Paro'),(106,1863,'Pemagatsel'),(106,1864,'Punakha'),(106,1865,'Samchi'),(106,1866,'Samdrup Jongkhar'),(106,1867,'Shemgang'),(106,1868,'Tashigang'),(106,1869,'Thimphu'),(106,1870,'Tongsa'),(106,1871,'Trashi Yangste'),(106,1872,'Wangdi Phodrang'),(107,1873,'British Indian Ocean Territory'),(108,1874,'Belait'),(108,1875,'Brunei and Muara'),(108,1876,'Temburong'),(108,1877,'Tutong'),(109,1878,'Kampong Cham'),(109,1879,'Kampong Chhnang'),(109,1880,'Kampong Thum'),(109,1881,'Kandal'),(109,1882,'Kaoh Kong'),(109,1883,'Khett Banteay Mean Choay'),(109,1884,'Khett Batdambang'),(109,1885,'Khett Kampong Sp?'),(109,1886,'Khett Kampot'),(109,1887,'Khett Keb'),(109,1888,'Khett Pailin'),(109,1889,'Khett Preah Seihanu'),(109,1890,'Khett Rotanokiri'),(109,1891,'Khett Siem Reab'),(109,1892,'Kracheh'),(109,1893,'Krong Phnum Penh'),(109,1894,'Mondol Kiri'),(109,1895,'otar Meanchey'),(109,1896,'Pouthisat'),(109,1897,'Preah Vihear'),(109,1898,'Prey Veng'),(109,1899,'Stoeng Treng'),(109,1900,'Svay Rieng'),(109,1901,'Takev'),(110,1902,'Andijon'),(110,1903,'Anhui Sheng'),(110,1904,'Beijing'),(110,1905,'Chongqing Shi'),(110,1906,'Fujian'),(110,1907,'Gansu Sheng'),(110,1908,'Guangdong Sheng'),(110,1909,'Guangxi Zhuangzu Zizhiqu'),(110,1910,'Guizhou Sheng'),(110,1911,'Hainan'),(110,1912,'Hebei'),(110,1913,'Heilongjiang Sheng'),(110,1914,'Henan Sheng'),(110,1915,'Hubei'),(110,1916,'Hunan'),(110,1917,'Inner Mongolia'),(110,1918,'Jiangsu Sheng'),(110,1919,'Jiangxi'),(110,1920,'Jilin Sheng'),(110,1921,'Liaoning'),(110,1922,'Ningxia Huizu Zizhiqu'),(110,1923,'Qinghai Sheng'),(110,1924,'Shaanxi Sheng'),(110,1925,'Shandong Sheng'),(110,1926,'Shanghai Shi'),(110,1927,'Shanxi Sheng'),(110,1928,'Sichuan'),(110,1929,'Tianjin Shi'),(110,1930,'Tibet Autonomous Region'),(110,1931,'Xinjiang Uygur Zizhiqu'),(110,1932,'Yunnan'),(110,1933,'Zhejiang Sheng'),(110,1934,'Andijon'),(110,1935,'Anhui Sheng'),(110,1936,'Beijing'),(110,1937,'Chongqing Shi'),(110,1938,'Fujian'),(110,1939,'Gansu Sheng'),(110,1940,'Guangdong Sheng'),(110,1941,'Guangxi Zhuangzu Zizhiqu'),(110,1942,'Guizhou Sheng'),(110,1943,'Hainan'),(110,1944,'Hebei'),(110,1945,'Heilongjiang Sheng'),(110,1946,'Henan Sheng'),(110,1947,'Hubei'),(110,1948,'Hunan'),(110,1949,'Inner Mongolia'),(110,1950,'Jiangsu Sheng'),(110,1951,'Jiangxi'),(110,1952,'Jilin Sheng'),(110,1953,'Liaoning'),(110,1954,'Ningxia Huizu Zizhiqu'),(110,1955,'Qinghai Sheng'),(110,1956,'Shaanxi Sheng'),(110,1957,'Shandong Sheng'),(110,1958,'Shanghai Shi'),(110,1959,'Shanxi Sheng'),(110,1960,'Sichuan'),(110,1961,'Tianjin Shi'),(110,1962,'Tibet Autonomous Region'),(110,1963,'Xinjiang Uygur Zizhiqu'),(110,1964,'Yunnan'),(110,1965,'Zhejiang Sheng'),(110,1966,'Andijon'),(110,1967,'Anhui Sheng'),(110,1968,'Beijing'),(110,1969,'Chongqing Shi'),(110,1970,'Fujian'),(110,1971,'Gansu Sheng'),(110,1972,'Guangdong Sheng'),(110,1973,'Guangxi Zhuangzu Zizhiqu'),(110,1974,'Guizhou Sheng'),(110,1975,'Hainan'),(110,1976,'Hebei'),(110,1977,'Heilongjiang Sheng'),(110,1978,'Henan Sheng'),(110,1979,'Hubei'),(110,1980,'Hunan'),(110,1981,'Inner Mongolia'),(110,1982,'Jiangsu Sheng'),(110,1983,'Jiangxi'),(110,1984,'Jilin Sheng'),(110,1985,'Liaoning'),(110,1986,'Ningxia Huizu Zizhiqu'),(110,1987,'Qinghai Sheng'),(110,1988,'Shaanxi Sheng'),(110,1989,'Shandong Sheng'),(110,1990,'Shanghai Shi'),(110,1991,'Shanxi Sheng'),(110,1992,'Sichuan'),(110,1993,'Tianjin Shi'),(110,1994,'Tibet Autonomous Region'),(110,1995,'Xinjiang Uygur Zizhiqu'),(110,1996,'Yunnan'),(110,1997,'Zhejiang Sheng'),(111,1998,'Famagusta'),(111,1999,'Kyrenia'),(111,2000,'Larnaca'),(111,2001,'Limassol'),(111,2002,'Nicosia'),(111,2003,'Paphos'),(112,2004,'Abkhazia'),(112,2005,'Ajaria'),(112,2006,'Guria'),(112,2007,'Imereti'),(112,2008,'Kakheti'),(112,2009,'Kvemo Kartli'),(112,2010,'Mtskheta-Mtianeti'),(112,2011,'Racha-Lechkhumi and Kvemo Svaneti'),(112,2012,'Samegrelo and Zemo Svaneti'),(112,2013,'Samtskhe-Javakheti'),(112,2014,'Shida Kartli'),(112,2015,'Tbilisi'),(113,2016,'Central and Western'),(113,2017,'Eastern'),(113,2018,'Kowloon City'),(113,2019,'Kwai Tsing'),(113,2020,'Kwon Tong'),(113,2021,'Sai Kung'),(113,2022,'Sha Tin'),(113,2023,'Sham Shui Po'),(113,2024,'Southern'),(113,2025,'Tai Po'),(113,2026,'Tsuen Wan'),(113,2027,'Tuen Mun'),(113,2028,'Wan Chai'),(113,2029,'Wong Tai Sin'),(113,2030,'Yau Tsim Mong'),(113,2031,'Yuen Long'),(114,2032,'Andaman and Nicobar Islands'),(114,2033,'Andhra Pradesh'),(114,2034,'Arunachal Pradesh'),(114,2035,'Assam'),(114,2036,'Bengal'),(114,2037,'Bihar'),(114,2038,'Chandigarh'),(114,2039,'Chhattisgarh'),(114,2040,'Dadra and Nagar Haveli'),(114,2041,'Daman and Diu'),(114,2042,'Goa'),(114,2043,'Gujarat'),(114,2044,'Haryana'),(114,2045,'Himachal Pradesh'),(114,2046,'Jharkhand'),(114,2047,'Karnataka'),(114,2048,'Kashmir'),(114,2049,'Kerala'),(114,2050,'Laccadives'),(114,2051,'Madhya Pradesh'),(114,2052,'Maharashtra'),(114,2053,'Manipur'),(114,2054,'Meghalaya'),(114,2055,'Mizoram'),(114,2056,'Nagaland'),(114,2057,'NCT'),(114,2058,'Orissa'),(114,2059,'Puducherry'),(114,2060,'Punjab'),(114,2061,'Rajasthan'),(114,2062,'Sikkim'),(114,2063,'Tamil Nadu'),(114,2064,'Tripura'),(114,2065,'Uttar Pradesh'),(114,2066,'Uttarakhand'),(114,2067,'West Bengal'),(115,2068,'Aceh'),(115,2069,'Bali'),(115,2070,'Bangka-Belitung'),(115,2071,'Banten'),(115,2072,'Bengkulu'),(115,2073,'Central Java'),(115,2074,'Central Sulawesi'),(115,2075,'Daerah Istimewa Yogyakarta'),(115,2076,'Distrito Dili'),(115,2077,'East Java'),(115,2078,'East Kalimantan'),(115,2079,'East Nusa Tenggara'),(115,2080,'Gorontalo'),(115,2081,'Irian Jaya Barat'),(115,2082,'Jakarta Raya'),(115,2083,'Jambi'),(115,2084,'Kalimantan Tengah'),(115,2085,'Lampung'),(115,2086,'Maluku'),(115,2087,'Maluku Utara'),(115,2088,'North Sulawesi'),(115,2089,'North Sumatra'),(115,2090,'Nusa Tenggara Barat'),(115,2091,'Papua'),(115,2092,'Riau'),(115,2093,'Riau Islands'),(115,2094,'South Kalimantan'),(115,2095,'South Sulawesi'),(115,2096,'South Sumatra'),(115,2097,'Sulawesi Barat'),(115,2098,'Sulawesi Tenggara'),(115,2099,'West Java'),(115,2100,'West Kalimantan'),(115,2101,'West Sumatra'),(116,2102,'Ardabil'),(116,2103,'azzarbayjan-e Gharbi'),(116,2104,'Bushehr'),(116,2105,'Chahar MaHall va Bakhtiari'),(116,2106,'East Azarbaijan'),(116,2107,'Esfahan'),(116,2108,'Fars'),(116,2109,'Gilan'),(116,2110,'Golestan'),(116,2111,'Hamadan'),(116,2112,'Hormozgan'),(116,2113,'ilam'),(116,2114,'Kerman'),(116,2115,'Kermanshah'),(116,2116,'Khorasan-e Jonubi'),(116,2117,'Khorasan-e Shomali'),(116,2118,'Khuzestan'),(116,2119,'Kohgiluyeh va Buyer AHmad'),(116,2120,'Kordestan'),(116,2121,'Lorestan'),(116,2122,'Markazi'),(116,2123,'Mazandaran'),(116,2124,'Ostan-e Alborz'),(116,2125,'Qazvin'),(116,2126,'Qom'),(116,2127,'Razavi Khorasan'),(116,2128,'Semnan'),(116,2129,'Sistan va Baluchestan'),(116,2130,'Tehran'),(116,2131,'Yazd'),(116,2132,'Zanjan'),(116,2133,'Ardabil'),(116,2134,'azzarbayjan-e Gharbi'),(116,2135,'Bushehr'),(116,2136,'Chahar MaHall va Bakhtiari'),(116,2137,'East Azarbaijan'),(116,2138,'Esfahan'),(116,2139,'Fars'),(116,2140,'Gilan'),(116,2141,'Golestan'),(116,2142,'Hamadan'),(116,2143,'Hormozgan'),(116,2144,'ilam'),(116,2145,'Kerman'),(116,2146,'Kermanshah'),(116,2147,'Khorasan-e Jonubi'),(116,2148,'Khorasan-e Shomali'),(116,2149,'Khuzestan'),(116,2150,'Kohgiluyeh va Buyer AHmad'),(116,2151,'Kordestan'),(116,2152,'Lorestan'),(116,2153,'Markazi'),(116,2154,'Mazandaran'),(116,2155,'Ostan-e Alborz'),(116,2156,'Qazvin'),(116,2157,'Qom'),(116,2158,'Razavi Khorasan'),(116,2159,'Semnan'),(116,2160,'Sistan va Baluchestan'),(116,2161,'Tehran'),(116,2162,'Yazd'),(116,2163,'Zanjan'),(117,2164,'Al Basrah'),(117,2165,'Al Muthanna'),(117,2166,'Al Qadisiyah'),(117,2167,'An Najaf'),(117,2168,'Anbar'),(117,2169,'Arbil'),(117,2170,'As Sulaymaniyah'),(117,2171,'At Tamim'),(117,2172,'Babil'),(117,2173,'Baghdad'),(117,2174,'Dahuk'),(117,2175,'Dhi Qar'),(117,2176,'Diyala'),(117,2177,'Karbala'),(117,2178,'Maysan'),(117,2179,'Ninawa'),(117,2180,'salaH ad Din'),(117,2181,'Wasit'),(118,2182,'Central District'),(118,2183,'Haifa'),(118,2184,'Jerusalem District'),(118,2185,'Northern District'),(118,2186,'Southern District'),(118,2187,'Tel Aviv'),(118,2188,'West Bank'),(119,2189,'Ajlun'),(119,2190,'Amman'),(119,2191,'Aqaba'),(119,2192,'Balqa'),(119,2193,'Irbid'),(119,2194,'Jerash'),(119,2195,'Karak'),(119,2196,'Madaba'),(119,2197,'Mafraq'),(119,2198,'Maan'),(119,2199,'Tafielah'),(119,2200,'Zarqa'),(120,2201,'Almaty'),(120,2202,'Almaty Qalasy'),(120,2203,'Aqmola'),(120,2204,'Aqtobe'),(120,2205,'Astana Qalasy'),(120,2206,'Atyrau'),(120,2207,'Batys Qazaqstan'),(120,2208,'Bayqongyr Qalasy'),(120,2209,'East Kazakhstan'),(120,2210,'Mangghystau'),(120,2211,'Ongtustik Qazaqstan'),(120,2212,'Pavlodar'),(120,2213,'Qaraghandy'),(120,2214,'Qostanay'),(120,2215,'Qyzylorda'),(120,2216,'Soltustik Qazaqstan'),(120,2217,'Zhambyl'),(120,2218,'Almaty'),(120,2219,'Almaty Qalasy'),(120,2220,'Aqmola'),(120,2221,'Aqtobe'),(120,2222,'Astana Qalasy'),(120,2223,'Atyrau'),(120,2224,'Batys Qazaqstan'),(120,2225,'Bayqongyr Qalasy'),(120,2226,'East Kazakhstan'),(120,2227,'Mangghystau'),(120,2228,'Ongtustik Qazaqstan'),(120,2229,'Pavlodar'),(120,2230,'Qaraghandy'),(120,2231,'Qostanay'),(120,2232,'Qyzylorda'),(120,2233,'Soltustik Qazaqstan'),(120,2234,'Zhambyl'),(121,2235,'Chagang-do'),(121,2236,'Gangwon'),(121,2237,'Hamgyong-bukto'),(121,2238,'Hamgyong-namdo'),(121,2239,'Hwanghae-bukto'),(121,2240,'Hwanghae-namdo'),(121,2241,'Najin Sonbong-si'),(121,2242,'Pyongan-bukto'),(121,2243,'Pyongan-namdo'),(121,2244,'Pyongyang-si'),(121,2245,'Yanggang-do'),(122,2246,'Busan'),(122,2247,'Daegu'),(122,2248,'Daejeon'),(122,2249,'Gangwon'),(122,2250,'Gwangju'),(122,2251,'Gyeonggi'),(122,2252,'Incheon'),(122,2253,'Jeju'),(122,2254,'North Chungcheong'),(122,2255,'North Gyeongsang'),(122,2256,'North Jeolla'),(122,2257,'Seoul'),(122,2258,'South Chungcheong'),(122,2259,'South Gyeongsang'),(122,2260,'South Jeolla'),(122,2261,'Ulsan'),(123,2262,'Al AHmadi'),(123,2263,'Al Farwaniyah'),(123,2264,'Al Jahra'),(123,2265,'Al asimah'),(123,2266,'Hawalli'),(123,2267,'Muhafazat Mubarak al Kabir'),(124,2268,'Andijon'),(124,2269,'Batken'),(124,2270,'Bishkek'),(124,2271,'Chuy'),(124,2272,'Jalal-Abad'),(124,2273,'Naryn'),(124,2274,'Osh'),(124,2275,'Talas'),(124,2276,'Ysyk-Kol'),(125,2277,'Attapu'),(125,2278,'Bokeo'),(125,2279,'Bolikhamxai'),(125,2280,'Champasak'),(125,2281,'Houaphan'),(125,2282,'Khammouan'),(125,2283,'Khoueng Viangchan'),(125,2284,'Louangphabang'),(125,2285,'Loungnamtha'),(125,2286,'Oudomxai'),(125,2287,'Phongsali'),(125,2288,'Salavan'),(125,2289,'Savannahkhet'),(125,2290,'Viangchan'),(125,2291,'Xekong'),(125,2292,'Xiagnabouli'),(125,2293,'Xiangkhoang'),(126,2294,'adazu Novads'),(126,2295,'Aglonas Novads'),(126,2296,'Aizkraukles Rajons'),(126,2297,'Aizputes Novads'),(126,2298,'Aknistes Novads'),(126,2299,'Alojas Novads'),(126,2300,'Alsungas Novads'),(126,2301,'Aluksnes Rajons'),(126,2302,'Amatas Novads'),(126,2303,'Apes Novads'),(126,2304,'Auces Novads'),(126,2305,'Babites Novads'),(126,2306,'Baldones Novads'),(126,2307,'Baltinavas Novads'),(126,2308,'Balvu Rajons'),(126,2309,'Bauskas Rajons'),(126,2310,'Beverinas Novads'),(126,2311,'Brocenu Novads'),(126,2312,'Burtnieku Novads'),(126,2313,'Carnikavas Novads'),(126,2314,'Cesu Rajons'),(126,2315,'Cesvaines Novads'),(126,2316,'Ciblas Novads'),(126,2317,'Dagdas Novads'),(126,2318,'Daugavpils'),(126,2319,'Daugavpils Rajons'),(126,2320,'Dobeles Rajons'),(126,2321,'Dundagas Novads'),(126,2322,'Durbes Novads'),(126,2323,'Engures Novads'),(126,2324,'erglu Novads'),(126,2325,'Garkalnes Novads'),(126,2326,'Grobinas Novads'),(126,2327,'Gulbenes Rajons'),(126,2328,'Iecavas Novads'),(126,2329,'IksKiles Novads'),(126,2330,'Ilukstes Novads'),(126,2331,'Incukalna Novads'),(126,2332,'Jaunjelgavas Novads'),(126,2333,'Jaunpiebalgas Novads'),(126,2334,'Jaunpils Novads'),(126,2335,'Jekabpils Rajons'),(126,2336,'Jelgava'),(126,2337,'Jelgavas Rajons'),(126,2338,'Jurmala'),(126,2339,'Kandavas Novads'),(126,2340,'Karsavas Novads'),(126,2341,'Keguma Novads'),(126,2342,'Kekavas Novads'),(126,2343,'Kocenu Novads'),(126,2344,'Kokneses Novads'),(126,2345,'Kraslavas Rajons'),(126,2346,'Krimuldas Novads'),(126,2347,'Krustpils Novads'),(126,2348,'Kuldigas Rajons'),(126,2349,'Lielvardes Novads'),(126,2350,'Liepaja'),(126,2351,'Liepajas Rajons'),(126,2352,'Ligatnes Novads'),(126,2353,'Limbazu Rajons'),(126,2354,'Livanu Novads'),(126,2355,'Lubanas Novads'),(126,2356,'Ludzas Rajons'),(126,2357,'Madonas Rajons'),(126,2358,'Malpils Novads'),(126,2359,'Marupes Novads'),(126,2360,'Mazsalacas Novads'),(126,2361,'Nauksenu Novads'),(126,2362,'Neretas Novads'),(126,2363,'Nicas Novads'),(126,2364,'Ogres Rajons'),(126,2365,'Olaines Novads'),(126,2366,'Ozolnieku Novads'),(126,2367,'Pargaujas Novads'),(126,2368,'Pavilostas Novads'),(126,2369,'Plavinu Novads'),(126,2370,'Preilu Rajons'),(126,2371,'Priekules Novads'),(126,2372,'Priekulu Novads'),(126,2373,'Raunas Novads'),(126,2374,'Rezekne'),(126,2375,'Rezeknes Rajons'),(126,2376,'Riebinu Novads'),(126,2377,'Riga'),(126,2378,'Rigas Rajons'),(126,2379,'Rojas Novads'),(126,2380,'Ropazu Novads'),(126,2381,'Rucavas Novads'),(126,2382,'Rugaju Novads'),(126,2383,'Rujienas Novads'),(126,2384,'Rundales Novads'),(126,2385,'Salacgrivas Novads'),(126,2386,'Salas Novads'),(126,2387,'Salaspils Novads'),(126,2388,'Saldus Rajons'),(126,2389,'Saulkrastu Novads'),(126,2390,'Sejas Novads'),(126,2391,'Siguldas Novads'),(126,2392,'Skriveru Novads'),(126,2393,'Skrundas Novads'),(126,2394,'Smiltenes Novads'),(126,2395,'Stopinu Novads'),(126,2396,'Strencu Novads'),(126,2397,'Talsu Rajons'),(126,2398,'Tervetes Novads'),(126,2399,'Tukuma Rajons'),(126,2400,'Vainodes Novads'),(126,2401,'Valkas Rajons'),(126,2402,'Valmieras Rajons'),(126,2403,'Varaklanu Novads'),(126,2404,'Varkavas Novads'),(126,2405,'Vecpiebalgas Novads'),(126,2406,'Vecumnieku Novads'),(126,2407,'Ventspils'),(126,2408,'Ventspils Rajons'),(126,2409,'Viesites Novads'),(126,2410,'Vilakas Novads'),(126,2411,'Vilanu Novads'),(126,2412,'Zilupes Novads'),(126,2413,'adazu Novads'),(126,2414,'Aglonas Novads'),(126,2415,'Aizkraukles Rajons'),(126,2416,'Aizputes Novads'),(126,2417,'Aknistes Novads'),(126,2418,'Alojas Novads'),(126,2419,'Alsungas Novads'),(126,2420,'Aluksnes Rajons'),(126,2421,'Amatas Novads'),(126,2422,'Apes Novads'),(126,2423,'Auces Novads'),(126,2424,'Babites Novads'),(126,2425,'Baldones Novads'),(126,2426,'Baltinavas Novads'),(126,2427,'Balvu Rajons'),(126,2428,'Bauskas Rajons'),(126,2429,'Beverinas Novads'),(126,2430,'Brocenu Novads'),(126,2431,'Burtnieku Novads'),(126,2432,'Carnikavas Novads'),(126,2433,'Cesu Rajons'),(126,2434,'Cesvaines Novads'),(126,2435,'Ciblas Novads'),(126,2436,'Dagdas Novads'),(126,2437,'Daugavpils'),(126,2438,'Daugavpils Rajons'),(126,2439,'Dobeles Rajons'),(126,2440,'Dundagas Novads'),(126,2441,'Durbes Novads'),(126,2442,'Engures Novads'),(126,2443,'erglu Novads'),(126,2444,'Garkalnes Novads'),(126,2445,'Grobinas Novads'),(126,2446,'Gulbenes Rajons'),(126,2447,'Iecavas Novads'),(126,2448,'IksKiles Novads'),(126,2449,'Ilukstes Novads'),(126,2450,'Incukalna Novads'),(126,2451,'Jaunjelgavas Novads'),(126,2452,'Jaunpiebalgas Novads'),(126,2453,'Jaunpils Novads'),(126,2454,'Jekabpils Rajons'),(126,2455,'Jelgava'),(126,2456,'Jelgavas Rajons'),(126,2457,'Jurmala'),(126,2458,'Kandavas Novads'),(126,2459,'Karsavas Novads'),(126,2460,'Keguma Novads'),(126,2461,'Kekavas Novads'),(126,2462,'Kocenu Novads'),(126,2463,'Kokneses Novads'),(126,2464,'Kraslavas Rajons'),(126,2465,'Krimuldas Novads'),(126,2466,'Krustpils Novads'),(126,2467,'Kuldigas Rajons'),(126,2468,'Lielvardes Novads'),(126,2469,'Liepaja'),(126,2470,'Liepajas Rajons'),(126,2471,'Ligatnes Novads'),(126,2472,'Limbazu Rajons'),(126,2473,'Livanu Novads'),(126,2474,'Lubanas Novads'),(126,2475,'Ludzas Rajons'),(126,2476,'Madonas Rajons'),(126,2477,'Malpils Novads'),(126,2478,'Marupes Novads'),(126,2479,'Mazsalacas Novads'),(126,2480,'Nauksenu Novads'),(126,2481,'Neretas Novads'),(126,2482,'Nicas Novads'),(126,2483,'Ogres Rajons'),(126,2484,'Olaines Novads'),(126,2485,'Ozolnieku Novads'),(126,2486,'Pargaujas Novads'),(126,2487,'Pavilostas Novads'),(126,2488,'Plavinu Novads'),(126,2489,'Preilu Rajons'),(126,2490,'Priekules Novads'),(126,2491,'Priekulu Novads'),(126,2492,'Raunas Novads'),(126,2493,'Rezekne'),(126,2494,'Rezeknes Rajons'),(126,2495,'Riebinu Novads'),(126,2496,'Riga'),(126,2497,'Rigas Rajons'),(126,2498,'Rojas Novads'),(126,2499,'Ropazu Novads'),(126,2500,'Rucavas Novads'),(126,2501,'Rugaju Novads'),(126,2502,'Rujienas Novads'),(126,2503,'Rundales Novads'),(126,2504,'Salacgrivas Novads'),(126,2505,'Salas Novads'),(126,2506,'Salaspils Novads'),(126,2507,'Saldus Rajons'),(126,2508,'Saulkrastu Novads'),(126,2509,'Sejas Novads'),(126,2510,'Siguldas Novads'),(126,2511,'Skriveru Novads'),(126,2512,'Skrundas Novads'),(126,2513,'Smiltenes Novads'),(126,2514,'Stopinu Novads'),(126,2515,'Strencu Novads'),(126,2516,'Talsu Rajons'),(126,2517,'Tervetes Novads'),(126,2518,'Tukuma Rajons'),(126,2519,'Vainodes Novads'),(126,2520,'Valkas Rajons'),(126,2521,'Valmieras Rajons'),(126,2522,'Varaklanu Novads'),(126,2523,'Varkavas Novads'),(126,2524,'Vecpiebalgas Novads'),(126,2525,'Vecumnieku Novads'),(126,2526,'Ventspils'),(126,2527,'Ventspils Rajons'),(126,2528,'Viesites Novads'),(126,2529,'Vilakas Novads'),(126,2530,'Vilanu Novads'),(126,2531,'Zilupes Novads'),(127,2532,'Aakkar'),(127,2533,'Baalbek-Hermel'),(127,2534,'Beqaa'),(127,2535,'Beyrouth'),(127,2536,'Liban-Nord'),(127,2537,'Liban-Sud'),(127,2538,'Mont-Liban'),(127,2539,'Nabatiye'),(128,2540,'Macau'),(129,2541,'Johor'),(129,2542,'Kedah'),(129,2543,'Kelantan'),(129,2544,'Kuala Lumpur'),(129,2545,'Labuan'),(129,2546,'Melaka'),(129,2547,'Negeri Sembilan'),(129,2548,'Pahang'),(129,2549,'Perak'),(129,2550,'Perlis'),(129,2551,'Pulau Pinang'),(129,2552,'Putrajaya'),(129,2553,'Sabah'),(129,2554,'Sarawak'),(129,2555,'Selangor'),(129,2556,'Terengganu'),(130,2557,'Baa Atholhu'),(130,2558,'Central Province'),(130,2559,'Dhaalu Atholhu'),(130,2560,'Gaafu Alifu Atholhu'),(130,2561,'Gnyaviyani Atoll'),(130,2562,'Haa Dhaalu Atholhu'),(130,2563,'Kaafu Atholhu'),(130,2564,'Laamu'),(130,2565,'Lhaviyani Atholhu'),(130,2566,'Maale'),(130,2567,'Noonu Atholhu'),(130,2568,'North Central Province'),(130,2569,'Raa Atholhu'),(130,2570,'Seenu'),(130,2571,'Shaviyani Atholhu'),(130,2572,'South Province'),(130,2573,'Thaa Atholhu'),(130,2574,'Upper North Province'),(130,2575,'Upper South Province'),(130,2576,'Vaavu Atholhu'),(131,2577,'Arhangay'),(131,2578,'Bayan-olgiy'),(131,2579,'Bayanhongor'),(131,2580,'Bulgan'),(131,2581,'Central Aymag'),(131,2582,'Darhan Uul'),(131,2583,'Dzavhan'),(131,2584,'East Aimak'),(131,2585,'East Gobi Aymag'),(131,2586,'Govi-Altay'),(131,2587,'Govi-Sumber'),(131,2588,'Hentiy'),(131,2589,'Hovd'),(131,2590,'Hovsgol'),(131,2591,'Middle Govi'),(131,2592,'Orhon'),(131,2593,'ovorhangay'),(131,2594,'Selenge'),(131,2595,'South Gobi Aymag'),(131,2596,'Suhbaatar'),(131,2597,'Ulaanbaatar'),(131,2598,'Uvs'),(132,2599,'Ayeyarwady'),(132,2600,'Bago'),(132,2601,'Chin'),(132,2602,'Kachin'),(132,2603,'Kayah'),(132,2604,'Kayin'),(132,2605,'Magway'),(132,2606,'Mandalay'),(132,2607,'Mon'),(132,2608,'Rakhine'),(132,2609,'Sagain'),(132,2610,'Shan'),(132,2611,'Tanintharyi'),(132,2612,'Yangon'),(133,2613,'Central Region'),(133,2614,'Eastern Region'),(133,2615,'Far Western Region'),(133,2616,'Mid Western Region'),(133,2617,'Western Region'),(134,2618,'Ad Dakhiliyah'),(134,2619,'Al Batinah'),(134,2620,'Al Wusta'),(134,2621,'Ash Sharqiyah'),(134,2622,'AZ Zahirah'),(134,2623,'Masqat'),(134,2624,'Muhafazat al Buraymi'),(134,2625,'Muhafazat Musandam'),(134,2626,'Zufar'),(135,2627,'Azad Kashmir'),(135,2628,'Balochistan'),(135,2629,'Federally Administered Tribal Areas'),(135,2630,'Gilgit-Baltistan'),(135,2631,'Islamabad'),(135,2632,'North West Frontier Province'),(135,2633,'Punjab'),(135,2634,'Sindh'),(136,2635,'Gaza Strip'),(136,2636,'West Bank'),(137,2637,'Autonomous Region in Muslim Mindanao'),(137,2638,'Bicol'),(137,2639,'Cagayan Valley'),(137,2640,'Calabarzon'),(137,2641,'Caraga'),(137,2642,'Central Luzon'),(137,2643,'Central Visayas'),(137,2644,'Cordillera Administrative Region'),(137,2645,'Davao'),(137,2646,'Eastern Visayas'),(137,2647,'Ilocos'),(137,2648,'Mimaropa'),(137,2649,'National Capital Region'),(137,2650,'Northern Mindanao'),(137,2651,'Soccsksargen'),(137,2652,'Western Visayas'),(137,2653,'Zamboanga Peninsula'),(138,2654,'Ad DawHah'),(138,2655,'Al Ghuwayriyah'),(138,2656,'Al Jumayliyah'),(138,2657,'Al Khawr'),(138,2658,'Al Wakrah'),(138,2659,'Ar Rayyan'),(138,2660,'Baladiyat aZ Zaayin'),(138,2661,'Jarayan al Batinah'),(138,2662,'Madinat ash Shamal'),(138,2663,'Umm salal'),(139,2664,'Adygeya'),(139,2665,'Altay'),(139,2666,'Altayskiy'),(139,2667,'Amur'),(139,2668,'Arkhangelskaya'),(139,2669,'Astrakhan'),(139,2670,'Bashkortostan'),(139,2671,'Belgorod'),(139,2672,'Brjansk'),(139,2673,'Buryatiya'),(139,2674,'Chechnya'),(139,2675,'Chelyabinsk Oblast'),(139,2676,'Chukotskiy Avtonomnyy Okrug'),(139,2677,'Chuvashia'),(139,2678,'Dagestan'),(139,2679,'Ingushetiya'),(139,2680,'Irkutsk'),(139,2681,'Ivanovo'),(139,2682,'Jaroslavl'),(139,2683,'Jewish Autonomous Oblast'),(139,2684,'Kabardino-Balkariya'),(139,2685,'Kaliningrad'),(139,2686,'Kalmykiya'),(139,2687,'Kaluga'),(139,2688,'Kamtsjatka'),(139,2689,'Karachayevo-Cherkesiya'),(139,2690,'Kareliya'),(139,2691,'Kemerovo'),(139,2692,'Khabarovsk Krai'),(139,2693,'Khakasiya'),(139,2694,'Khanty-Mansiyskiy Avtonomnyy Okrug'),(139,2695,'Kirov'),(139,2696,'Komi'),(139,2697,'Kostroma'),(139,2698,'Krasnodarskiy'),(139,2699,'Krasnoyarskiy'),(139,2700,'Kurgan'),(139,2701,'Kursk'),(139,2702,'Leningrad'),(139,2703,'Lipetsk'),(139,2704,'Magadan'),(139,2705,'Mariy-El'),(139,2706,'Mordoviya'),(139,2707,'Moscow'),(139,2708,'Moskovskaya'),(139,2709,'Murmansk'),(139,2710,'Nenetskiy Avtonomnyy Okrug'),(139,2711,'Nizjnij Novgorod'),(139,2712,'North Ossetia'),(139,2713,'Novgorod'),(139,2714,'Novosibirsk'),(139,2715,'Omsk'),(139,2716,'Orenburg'),(139,2717,'Orjol'),(139,2718,'Penza'),(139,2719,'Perm'),(139,2720,'Primorskiy'),(139,2721,'Pskov'),(139,2722,'Rjazan'),(139,2723,'Rostov'),(139,2724,'Sakha'),(139,2725,'Sakhalin'),(139,2726,'Samara'),(139,2727,'Sankt-Peterburg'),(139,2728,'Saratov'),(139,2729,'Smolensk'),(139,2730,'Stavropolskiy'),(139,2731,'Sverdlovsk'),(139,2732,'Tambov'),(139,2733,'Tatarstan'),(139,2734,'Tjumen'),(139,2735,'Tomsk'),(139,2736,'Tula'),(139,2737,'Tverskaya'),(139,2738,'Tyva'),(139,2739,'Udmurtiya'),(139,2740,'Uljanovsk'),(139,2741,'Vladimir'),(139,2742,'Volgograd'),(139,2743,'Vologda'),(139,2744,'Voronezj'),(139,2745,'Yamalo-Nenetskiy Avtonomnyy Okrug'),(139,2746,'Zabaykalskiy Kray'),(139,2747,'Adygeya'),(139,2748,'Altay'),(139,2749,'Altayskiy'),(139,2750,'Amur'),(139,2751,'Arkhangelskaya'),(139,2752,'Astrakhan'),(139,2753,'Bashkortostan'),(139,2754,'Belgorod'),(139,2755,'Brjansk'),(139,2756,'Buryatiya'),(139,2757,'Chechnya'),(139,2758,'Chelyabinsk Oblast'),(139,2759,'Chukotskiy Avtonomnyy Okrug'),(139,2760,'Chuvashia'),(139,2761,'Dagestan'),(139,2762,'Ingushetiya'),(139,2763,'Irkutsk'),(139,2764,'Ivanovo'),(139,2765,'Jaroslavl'),(139,2766,'Jewish Autonomous Oblast'),(139,2767,'Kabardino-Balkariya'),(139,2768,'Kaliningrad'),(139,2769,'Kalmykiya'),(139,2770,'Kaluga'),(139,2771,'Kamtsjatka'),(139,2772,'Karachayevo-Cherkesiya'),(139,2773,'Kareliya'),(139,2774,'Kemerovo'),(139,2775,'Khabarovsk Krai'),(139,2776,'Khakasiya'),(139,2777,'Khanty-Mansiyskiy Avtonomnyy Okrug'),(139,2778,'Kirov'),(139,2779,'Komi'),(139,2780,'Kostroma'),(139,2781,'Krasnodarskiy'),(139,2782,'Krasnoyarskiy'),(139,2783,'Kurgan'),(139,2784,'Kursk'),(139,2785,'Leningrad'),(139,2786,'Lipetsk'),(139,2787,'Magadan'),(139,2788,'Mariy-El'),(139,2789,'Mordoviya'),(139,2790,'Moscow'),(139,2791,'Moskovskaya'),(139,2792,'Murmansk'),(139,2793,'Nenetskiy Avtonomnyy Okrug'),(139,2794,'Nizjnij Novgorod'),(139,2795,'North Ossetia'),(139,2796,'Novgorod'),(139,2797,'Novosibirsk'),(139,2798,'Omsk'),(139,2799,'Orenburg'),(139,2800,'Orjol'),(139,2801,'Penza'),(139,2802,'Perm'),(139,2803,'Primorskiy'),(139,2804,'Pskov'),(139,2805,'Rjazan'),(139,2806,'Rostov'),(139,2807,'Sakha'),(139,2808,'Sakhalin'),(139,2809,'Samara'),(139,2810,'Sankt-Peterburg'),(139,2811,'Saratov'),(139,2812,'Smolensk'),(139,2813,'Stavropolskiy'),(139,2814,'Sverdlovsk'),(139,2815,'Tambov'),(139,2816,'Tatarstan'),(139,2817,'Tjumen'),(139,2818,'Tomsk'),(139,2819,'Tula'),(139,2820,'Tverskaya'),(139,2821,'Tyva'),(139,2822,'Udmurtiya'),(139,2823,'Uljanovsk'),(139,2824,'Vladimir'),(139,2825,'Volgograd'),(139,2826,'Vologda'),(139,2827,'Voronezj'),(139,2828,'Yamalo-Nenetskiy Avtonomnyy Okrug'),(139,2829,'Zabaykalskiy Kray'),(139,2830,'Adygeya'),(139,2831,'Altay'),(139,2832,'Altayskiy'),(139,2833,'Amur'),(139,2834,'Arkhangelskaya'),(139,2835,'Astrakhan'),(139,2836,'Bashkortostan'),(139,2837,'Belgorod'),(139,2838,'Brjansk'),(139,2839,'Buryatiya'),(139,2840,'Chechnya'),(139,2841,'Chelyabinsk Oblast'),(139,2842,'Chukotskiy Avtonomnyy Okrug'),(139,2843,'Chuvashia'),(139,2844,'Dagestan'),(139,2845,'Ingushetiya'),(139,2846,'Irkutsk'),(139,2847,'Ivanovo'),(139,2848,'Jaroslavl'),(139,2849,'Jewish Autonomous Oblast'),(139,2850,'Kabardino-Balkariya'),(139,2851,'Kaliningrad'),(139,2852,'Kalmykiya'),(139,2853,'Kaluga'),(139,2854,'Kamtsjatka'),(139,2855,'Karachayevo-Cherkesiya'),(139,2856,'Kareliya'),(139,2857,'Kemerovo'),(139,2858,'Khabarovsk Krai'),(139,2859,'Khakasiya'),(139,2860,'Khanty-Mansiyskiy Avtonomnyy Okrug'),(139,2861,'Kirov'),(139,2862,'Komi'),(139,2863,'Kostroma'),(139,2864,'Krasnodarskiy'),(139,2865,'Krasnoyarskiy'),(139,2866,'Kurgan'),(139,2867,'Kursk'),(139,2868,'Leningrad'),(139,2869,'Lipetsk'),(139,2870,'Magadan'),(139,2871,'Mariy-El'),(139,2872,'Mordoviya'),(139,2873,'Moscow'),(139,2874,'Moskovskaya'),(139,2875,'Murmansk'),(139,2876,'Nenetskiy Avtonomnyy Okrug'),(139,2877,'Nizjnij Novgorod'),(139,2878,'North Ossetia'),(139,2879,'Novgorod'),(139,2880,'Novosibirsk'),(139,2881,'Omsk'),(139,2882,'Orenburg'),(139,2883,'Orjol'),(139,2884,'Penza'),(139,2885,'Perm'),(139,2886,'Primorskiy'),(139,2887,'Pskov'),(139,2888,'Rjazan'),(139,2889,'Rostov'),(139,2890,'Sakha'),(139,2891,'Sakhalin'),(139,2892,'Samara'),(139,2893,'Sankt-Peterburg'),(139,2894,'Saratov'),(139,2895,'Smolensk'),(139,2896,'Stavropolskiy'),(139,2897,'Sverdlovsk'),(139,2898,'Tambov'),(139,2899,'Tatarstan'),(139,2900,'Tjumen'),(139,2901,'Tomsk'),(139,2902,'Tula'),(139,2903,'Tverskaya'),(139,2904,'Tyva'),(139,2905,'Udmurtiya'),(139,2906,'Uljanovsk'),(139,2907,'Vladimir'),(139,2908,'Volgograd'),(139,2909,'Vologda'),(139,2910,'Voronezj'),(139,2911,'Yamalo-Nenetskiy Avtonomnyy Okrug'),(139,2912,'Zabaykalskiy Kray'),(140,2913,'Al BaHah'),(140,2914,'Al Jawf'),(140,2915,'Al Madinah'),(140,2916,'Al Qasim'),(140,2917,'Ar Riyad'),(140,2918,'Ash Sharqiyah'),(140,2919,'Hail'),(140,2920,'Jizan'),(140,2921,'Makkah'),(140,2922,'Mintaqat Asir'),(140,2923,'Najran'),(140,2924,'Northern Borders Region'),(140,2925,'Tabuk'),(141,2926,'Singapore'),(142,2927,'Central'),(142,2928,'North Central'),(142,2929,'North Eastern'),(142,2930,'North Western'),(142,2931,'Northern Province'),(142,2932,'Sabaragamuwa'),(142,2933,'Southern'),(142,2934,'Uva'),(142,2935,'Western'),(143,2936,'Al-Hasakah'),(143,2937,'Aleppo'),(143,2938,'Ar-Raqqah'),(143,2939,'As-Suwayda'),(143,2940,'Damascus City'),(143,2941,'Daraa'),(143,2942,'Deir ez-Zor'),(143,2943,'Hama'),(143,2944,'Homs'),(143,2945,'Idlib'),(143,2946,'Latakia'),(143,2947,'Quneitra'),(143,2948,'Rif-dimashq'),(143,2949,'Tartus'),(143,2950,'Stockholm'),(143,2951,'Uppsala'),(143,2952,'Varmland'),(143,2953,'Vasterbotten'),(143,2954,'Vasternorrland'),(143,2955,'Vastmanland'),(143,2956,'Vastra Gotaland'),(144,2957,'Fukien'),(144,2958,'Kaohsiung'),(144,2959,'Taipei'),(144,2960,'Taiwan'),(145,2961,'Dushanbe'),(145,2962,'Gorno-Badakhshan'),(145,2963,'Khatlon'),(145,2964,'Region of Republican Subordination'),(145,2965,'Sughd'),(146,2966,'Amnat Charoen'),(146,2967,'Ang Thong'),(146,2968,'Bangkok'),(146,2969,'Buriram'),(146,2970,'Chachoengsao'),(146,2971,'Chai Nat'),(146,2972,'Chaiyaphum'),(146,2973,'Chanthaburi'),(146,2974,'Chiang Mai'),(146,2975,'Chiang Rai'),(146,2976,'Chon Buri'),(146,2977,'Chumphon'),(146,2978,'Kalasin'),(146,2979,'Kamphaeng Phet'),(146,2980,'Kanchanaburi'),(146,2981,'Khon Kaen'),(146,2982,'Krabi'),(146,2983,'Lampang'),(146,2984,'Lamphun'),(146,2985,'Loei'),(146,2986,'Lop Buri'),(146,2987,'Mae Hong Son'),(146,2988,'Maha Sarakham'),(146,2989,'Mukdahan'),(146,2990,'Nakhon Nayok'),(146,2991,'Nakhon Pathom'),(146,2992,'Nakhon Phanom'),(146,2993,'Nakhon Ratchasima'),(146,2994,'Nakhon Sawan'),(146,2995,'Nakhon Si Thammarat'),(146,2996,'Nan'),(146,2997,'Narathiwat'),(146,2998,'Nong Bua Lamphu'),(146,2999,'Nong Khai'),(146,3000,'Nonthaburi'),(146,3001,'Pathum Thani'),(146,3002,'Pattani'),(146,3003,'Phangnga'),(146,3004,'Phatthalung'),(146,3005,'Phayao'),(146,3006,'Phetchabun'),(146,3007,'Phetchaburi'),(146,3008,'Phichit'),(146,3009,'Phitsanulok'),(146,3010,'Phra Nakhon Si Ayutthaya'),(146,3011,'Phrae'),(146,3012,'Phuket Province'),(146,3013,'Prachin Buri'),(146,3014,'Prachuap Khiri Khan'),(146,3015,'Ranong'),(146,3016,'Ratchaburi'),(146,3017,'Rayong'),(146,3018,'Roi Et'),(146,3019,'Sa Kaeo'),(146,3020,'Sakon Nakhon'),(146,3021,'Samut Prakan'),(146,3022,'Samut Sakhon'),(146,3023,'Samut Songkhram'),(146,3024,'Sara Buri'),(146,3025,'Satun'),(146,3026,'Sing Buri'),(146,3027,'Sisaket'),(146,3028,'Songkhla'),(146,3029,'Sukhothai'),(146,3030,'Suphan Buri'),(146,3031,'Surat Thani'),(146,3032,'Surin'),(146,3033,'Tak'),(146,3034,'Trang'),(146,3035,'Trat'),(146,3036,'Ubon Ratchathani'),(146,3037,'Udon Thani'),(146,3038,'Uthai Thani'),(146,3039,'Uttaradit'),(146,3040,'Yala'),(146,3041,'Yasothon'),(147,3042,'Bobonaro'),(147,3043,'Distrito Aileu'),(147,3044,'Distrito Ainaro'),(147,3045,'Distrito Bacau'),(147,3046,'Distrito Cova Lima'),(147,3047,'Distrito Dili'),(147,3048,'Distrito Lautem'),(147,3049,'Distrito Liquica'),(147,3050,'Distrito Manatuto'),(147,3051,'Distrito Oecussi-Ambeno'),(147,3052,'Distrito Viqueque'),(147,3053,'Ermera'),(147,3054,'Manufahi'),(148,3055,'Ahal'),(148,3056,'Balkan'),(148,3057,'Dasoguz'),(148,3058,'Lebap'),(148,3059,'Mary'),(149,3060,'Avtonomna Respublika Krym'),(149,3061,'Cherkaska'),(149,3062,'Chernihivska'),(149,3063,'Chernivetska'),(149,3064,'Dnipropetrovska'),(149,3065,'Donetska'),(149,3066,'Ivano-Frankivska'),(149,3067,'Kharkivska'),(149,3068,'Kherson'),(149,3069,'Khmelnytska'),(149,3070,'Kiev'),(149,3071,'Kirovohradska'),(149,3072,'Lvivska'),(149,3073,'Luhanska'),(149,3074,'Misto Kyyiv'),(149,3075,'Misto Sevastopol'),(149,3076,'Mykolayivska'),(149,3077,'Odessa'),(149,3078,'Poltava'),(149,3079,'Rivnenska'),(149,3080,'Sumy'),(149,3081,'Ternopilska'),(149,3082,'Vinnytska'),(149,3083,'Volynska'),(149,3084,'Zakarpatska'),(149,3085,'Zaporizka'),(149,3086,'Zhytomyrska'),(149,3087,'Avtonomna Respublika Krym'),(149,3088,'Cherkaska'),(149,3089,'Chernihivska'),(149,3090,'Chernivetska'),(149,3091,'Dnipropetrovska'),(149,3092,'Donetska'),(149,3093,'Ivano-Frankivska'),(149,3094,'Kharkivska'),(149,3095,'Kherson'),(149,3096,'Khmelnytska'),(149,3097,'Kiev'),(149,3098,'Kirovohradska'),(149,3099,'Lvivska'),(149,3100,'Luhanska'),(149,3101,'Misto Kyyiv'),(149,3102,'Misto Sevastopol'),(149,3103,'Mykolayivska'),(149,3104,'Odessa'),(149,3105,'Poltava'),(149,3106,'Rivnenska'),(149,3107,'Sumy'),(149,3108,'Ternopilska'),(149,3109,'Vinnytska'),(149,3110,'Volynska'),(149,3111,'Zakarpatska'),(149,3112,'Zaporizka'),(149,3113,'Zhytomyrska'),(150,3114,'Abu Dhabi'),(150,3115,'Ajman'),(150,3116,'Al Fujayrah'),(150,3117,'Ash Shariqah'),(150,3118,'Dubayy'),(150,3119,'Ras al Khaymah'),(150,3120,'Umm al Qaywayn'),(151,3121,'Andijon'),(151,3122,'Buxoro'),(151,3123,'Fergana'),(151,3124,'Jizzax'),(151,3125,'Karakalpakstan'),(151,3126,'Namangan'),(151,3127,'Navoiy'),(151,3128,'Qashqadaryo'),(151,3129,'Samarqand'),(151,3130,'Sirdaryo'),(151,3131,'Surxondaryo'),(151,3132,'Toshkent'),(151,3133,'Toshkent Shahri'),(151,3134,'Xorazm'),(152,3135,'An Giang'),(152,3136,'Ba R?a-Vung Tau'),(152,3137,'Bac Giang'),(152,3138,'Bac Kan'),(152,3139,'Bac Lieu'),(152,3140,'Bac Ninh'),(152,3141,'Ben Tre'),(152,3142,'Binh Duong'),(152,3143,'Binh Phuoc'),(152,3144,'Binh Thuan'),(152,3145,'Binh D?nh'),(152,3146,'Ca Mau'),(152,3147,'Can Tho'),(152,3148,'Cao Bang'),(152,3149,'Gia Lai'),(152,3150,'Ha Giang'),(152,3151,'Ha Nam'),(152,3152,'Ha Noi'),(152,3153,'Ha Tay'),(152,3154,'Ha Tinh'),(152,3155,'Hai Duong'),(152,3156,'Hai Phong'),(152,3157,'Hau Giang'),(152,3158,'Ho Chi Minh'),(152,3159,'Hoa Binh'),(152,3160,'Hung Yen'),(152,3161,'Huyen Dien Bien'),(152,3162,'Khanh Hoa'),(152,3163,'Kien Giang'),(152,3164,'Kon Tum'),(152,3165,'Lai Chau'),(152,3166,'Lam Dong'),(152,3167,'Lang Son'),(152,3168,'Lao Cai'),(152,3169,'Long An'),(152,3170,'Nam D?nh'),(152,3171,'Nghe An'),(152,3172,'Ninh Binh'),(152,3173,'Ninh Thuan'),(152,3174,'Phu Tho'),(152,3175,'Phu Yen'),(152,3176,'Quang Binh'),(152,3177,'Quang Nam'),(152,3178,'Quang Ngai'),(152,3179,'Quang Ninh'),(152,3180,'Quang Tri'),(152,3181,'Soc Trang'),(152,3182,'Son La'),(152,3183,'Tay Ninh'),(152,3184,'Thai Binh'),(152,3185,'Thai Nguyen'),(152,3186,'Thanh Hoa'),(152,3187,'Thua Thien-Hue'),(152,3188,'Tien Giang'),(152,3189,'Tra Vinh'),(152,3190,'Tuyen Quang'),(152,3191,'Vinh Long'),(152,3192,'Vinh Phuc'),(152,3193,'Yen Bai'),(152,3194,'Da Nang'),(152,3195,'Dac Lak'),(152,3196,'Dak Nong'),(152,3197,'Dong Nai'),(152,3198,'Dong Thap'),(153,3199,'Abyan'),(153,3200,'Aden'),(153,3201,'Al Bayda'),(153,3202,'Al Hudaydah'),(153,3203,'Al Mahrah'),(153,3204,'Al Mahwit'),(153,3205,'Amanat Al Asimah'),(153,3206,'Hadramawt'),(153,3207,'Muhafazat ad Dali'),(153,3208,'Muhafazat al Jawf'),(153,3209,'Muhafazat Dhamar'),(153,3210,'Muhafazat Hajjah'),(153,3211,'Muhafazat Ibb'),(153,3212,'Muhafazat Lahij'),(153,3213,'Muhafazat Marib'),(153,3214,'Muhafazat Raymah'),(153,3215,'Muhafazat sadah'),(153,3216,'Muhafazat Shabwah'),(153,3217,'Muhafazat Taizz'),(153,3218,'Omran'),(153,3219,'Sanaa'),(154,3220,'Brando'),(154,3221,'Eckero'),(154,3222,'Finstrom'),(154,3223,'Foglo'),(154,3224,'Geta'),(154,3225,'Hammarland'),(154,3226,'Jomala'),(154,3227,'Kokar'),(154,3228,'Kumlinge'),(154,3229,'Lemland'),(154,3230,'Lumparland'),(154,3231,'Mariehamn'),(154,3232,'Saltvik'),(154,3233,'Sottunga'),(154,3234,'Sund'),(154,3235,'Vardo'),(155,3236,'Berat'),(155,3237,'Diber'),(155,3238,'Durres'),(155,3239,'Elbasan'),(155,3240,'Fier'),(155,3241,'Gjirokaster'),(155,3242,'Korce'),(155,3243,'Kukes'),(155,3244,'Lezhe'),(155,3245,'Shkoder'),(155,3246,'Tirane'),(155,3247,'Vlore'),(156,3248,'Parroquia dAndorra la Vella'),(156,3249,'Parroquia dEncamp'),(156,3250,'Parroquia dEscaldes-Engordany'),(156,3251,'Parroquia dOrdino'),(156,3252,'Parroquia de Canillo'),(156,3253,'Parroquia de la Massana'),(156,3254,'Parroquia de Sant Julia de Loria'),(157,3255,'Burgenland'),(157,3256,'Carinthia'),(157,3257,'Lower Austria'),(157,3258,'Salzburg'),(157,3259,'Styria'),(157,3260,'Tyrol'),(157,3261,'Upper Austria'),(157,3262,'Vienna'),(157,3263,'Vorarlberg'),(158,3264,'Brestskaya Voblasts'),(158,3265,'Homyelskaya Voblasts'),(158,3266,'Horad Minsk'),(158,3267,'Hrodzyenskaya Voblasts'),(158,3268,'Mahilyowskaya Voblasts'),(158,3269,'Minskaya Voblasts'),(158,3270,'Vitsyebskaya Voblasts'),(159,3271,'Brussels Capital Region'),(159,3272,'Flanders'),(159,3273,'Walloon Region'),(160,3274,'Brcko'),(160,3275,'Federation of Bosnia and Herzegovina'),(160,3276,'Republika Srpska'),(161,3277,'Blagoevgrad'),(161,3278,'Burgas'),(161,3279,'Dobrich'),(161,3280,'Gabrovo'),(161,3281,'Khaskovo'),(161,3282,'Kurdzhali'),(161,3283,'Kyustendil'),(161,3284,'Lovech'),(161,3285,'Montana'),(161,3286,'Oblast Sofiya-Grad'),(161,3287,'Pazardzhit'),(161,3288,'Pernik'),(161,3289,'Pleven'),(161,3290,'Plovdiv'),(161,3291,'Razgrad'),(161,3292,'Ruse'),(161,3293,'Shumen'),(161,3294,'Silistra'),(161,3295,'Sliven'),(161,3296,'Smolyan'),(161,3297,'Sofiya'),(161,3298,'Stara Zagora'),(161,3299,'Turgovishte'),(161,3300,'Varna'),(161,3301,'Veliko Turnovo'),(161,3302,'Vidin'),(161,3303,'Vratsa'),(161,3304,'Yambol'),(162,3305,'Bjelovarsko-Bilogorska'),(162,3306,'Brodsko-Posavska'),(162,3307,'Dubrovacko-Neretvanska'),(162,3308,'Grad Zagreb'),(162,3309,'Istarska'),(162,3310,'Karlovacka'),(162,3311,'Koprivnicko-Krizevacka'),(162,3312,'Krapinsko-Zagorska'),(162,3313,'Licko-Senjska'),(162,3314,'Medimurska'),(162,3315,'Osjecko-Baranjska'),(162,3316,'Pozesko-Slavonska'),(162,3317,'Primorsko-Goranska'),(162,3318,'Sibensko-Kniniska'),(162,3319,'Sisacko-Moslavacka'),(162,3320,'Splitsko-Dalmatinska'),(162,3321,'Varazdinska'),(162,3322,'Virovitick-Podravska'),(162,3323,'Vukovarsko-Srijemska'),(162,3324,'Zadarska'),(162,3325,'Zagrebacka'),(163,3326,'Hlavni Mesto Praha'),(163,3327,'Jihocesky Kraj'),(163,3328,'Karlovarsky Kraj'),(163,3329,'Kralovehradecky Kraj'),(163,3330,'Liberecky Kraj'),(163,3331,'Moravskoslezsky Kraj'),(163,3332,'Olomoucky Kraj'),(163,3333,'Pardubicky Kraj'),(163,3334,'Plzensky Kraj'),(163,3335,'South Moravian Region'),(163,3336,'Stredocesky Kraj'),(163,3337,'Ustecky Kraj'),(163,3338,'Vysocina'),(163,3339,'Vysocina Kraj'),(163,3340,'Zlinsky Kraj'),(164,3341,'Capital Region'),(164,3342,'Central Jutland'),(164,3343,'North Jutland'),(164,3344,'South Denmark'),(164,3345,'Zealand'),(165,3346,'Harjumaa'),(165,3347,'Hiiumaa'),(165,3348,'Ida-Virumaa'),(165,3349,'Jarvamaa'),(165,3350,'Jogevamaa'),(165,3351,'Laane-Virumaa'),(165,3352,'Laanemaa'),(165,3353,'Parnumaa'),(165,3354,'Polvamaa'),(165,3355,'Raplamaa'),(165,3356,'Saaremaa'),(165,3357,'Tartumaa'),(165,3358,'Valgamaa'),(165,3359,'Viljandimaa'),(165,3360,'Vorumaa'),(166,3361,'Eysturoy'),(166,3362,'Norooyar'),(166,3363,'Sandoy'),(166,3364,'Streymoy'),(166,3365,'Suouroy'),(166,3366,'Vagar'),(167,3367,'Lapland'),(167,3368,'Oulu'),(167,3369,'Province of Eastern Finland'),(167,3370,'Province of Southern Finland'),(167,3371,'Western Finland'),(168,3372,'Alsace'),(168,3373,'Aquitaine'),(168,3374,'Auvergne'),(168,3375,'Basse-Normandie'),(168,3376,'Bourgogne'),(168,3377,'Brittany'),(168,3378,'Centre'),(168,3379,'Champagne-Ardenne'),(168,3380,'Corsica'),(168,3381,'Franche-Comte'),(168,3382,'Haute-Normandie'),(168,3383,'Ile-de-France'),(168,3384,'Languedoc-Roussillon'),(168,3385,'Limousin'),(168,3386,'Lorraine'),(168,3387,'Midi-Pyrenees'),(168,3388,'Nord-Pas-de-Calais'),(168,3389,'Pays de la Loire'),(168,3390,'Picardie'),(168,3391,'Poitou-Charentes'),(168,3392,'Provence-Alpes-Cote dAzur'),(168,3393,'Rhone-Alpes'),(169,3394,'Baden-Wurttemberg'),(169,3395,'Bayern'),(169,3396,'Berlin'),(169,3397,'Brandenburg'),(169,3398,'Bremen'),(169,3399,'Hamburg'),(169,3400,'Hessen'),(169,3401,'Mecklenburg-Vorpommern'),(169,3402,'Niedersachsen'),(169,3403,'Nordrhein-Westfalen'),(169,3404,'Rheinland-Pfalz'),(169,3405,'Saarland'),(169,3406,'Sachsen'),(169,3407,'Sachsen-Anhalt'),(169,3408,'Schleswig-Holstein'),(169,3409,'Thuringen'),(170,3410,'Chios'),(170,3411,'Lefkada'),(170,3412,'Nomos Achaias'),(170,3413,'Nomos Aitolias kai Akarnanias'),(170,3414,'Nomos Argolidos'),(170,3415,'Nomos Arkadias'),(170,3416,'Nomos Artas'),(170,3417,'Nomos Attikis'),(170,3418,'Nomos Chalkidikis'),(170,3419,'Nomos Chanias'),(170,3420,'Nomos Dodekanisou'),(170,3421,'Nomos Dramas'),(170,3422,'Nomos Evrou'),(170,3423,'Nomos Evrytanias'),(170,3424,'Nomos Evvoias'),(170,3425,'Nomos Florinis'),(170,3426,'Nomos Fokidos'),(170,3427,'Nomos Fthiotidos'),(170,3428,'Nomos Grevenon'),(170,3429,'Nomos Ileias'),(170,3430,'Nomos Imathias'),(170,3431,'Nomos Ioanninon'),(170,3432,'Nomos Irakleiou'),(170,3433,'Nomos Kardhitsas'),(170,3434,'Nomos Kastorias'),(170,3435,'Nomos Kavalas'),(170,3436,'Nomos Kefallinias'),(170,3437,'Nomos Kerkyras'),(170,3438,'Nomos Kilkis'),(170,3439,'Nomos Korinthias'),(170,3440,'Nomos Kozanis'),(170,3441,'Nomos Kykladon'),(170,3442,'Nomos Lakonias'),(170,3443,'Nomos Larisis'),(170,3444,'Nomos Lasithiou'),(170,3445,'Nomos Lesvou'),(170,3446,'Nomos Magnisias'),(170,3447,'Nomos Messinias'),(170,3448,'Nomos Pellis'),(170,3449,'Nomos Pierias'),(170,3450,'Nomos Prevezis'),(170,3451,'Nomos Rethymnis'),(170,3452,'Nomos Rodopis'),(170,3453,'Nomos Samou'),(170,3454,'Nomos Serron'),(170,3455,'Nomos Thesprotias'),(170,3456,'Nomos Thessalonikis'),(170,3457,'Nomos Voiotias'),(170,3458,'Nomos Xanthis'),(170,3459,'Nomos Zakynthou'),(170,3460,'Trikala'),(171,3461,'Guernsey'),(172,3462,'Bacs-Kiskun'),(172,3463,'Baranya'),(172,3464,'Bekes'),(172,3465,'Borsod-Abauj-Zemplen'),(172,3466,'Budapest'),(172,3467,'Csongrad'),(172,3468,'Fejer'),(172,3469,'Gyor-Moson-Sopron'),(172,3470,'Hajdu-Bihar'),(172,3471,'Heves'),(172,3472,'Jasz-Nagykun-Szolnok'),(172,3473,'Komarom-Esztergom'),(172,3474,'Nograd'),(172,3475,'Pest'),(172,3476,'Somogy'),(172,3477,'Szabolcs-Szatmar-Bereg'),(172,3478,'Tolna'),(172,3479,'Vas'),(172,3480,'Veszprem'),(172,3481,'Zala'),(173,3482,'Capital Region'),(173,3483,'East'),(173,3484,'Northeast'),(173,3485,'Northwest'),(173,3486,'South'),(173,3487,'Southern Peninsula'),(173,3488,'West'),(173,3489,'Westfjords'),(174,3490,'Connaught'),(174,3491,'Leinster'),(174,3492,'Munster'),(174,3493,'Ulster'),(175,3494,'Isle of Man'),(176,3495,'Abruzzo'),(176,3496,'Aosta Valley'),(176,3497,'Apulia'),(176,3498,'Basilicate'),(176,3499,'Calabria'),(176,3500,'Campania'),(176,3501,'Emilia-Romagna'),(176,3502,'Friuli Venezia Giulia'),(176,3503,'Latium'),(176,3504,'Liguria'),(176,3505,'Lombardy'),(176,3506,'Molise'),(176,3507,'Piedmont'),(176,3508,'Sardinia'),(176,3509,'Sicily'),(176,3510,'The Marches'),(176,3511,'Trentino-Alto Adige'),(176,3512,'Tuscany'),(176,3513,'Umbria'),(176,3514,'Veneto'),(177,3515,'Jersey'),(178,3516,'Balzers'),(178,3517,'Eschen'),(178,3518,'Gamprin'),(178,3519,'Mauren'),(178,3520,'Planken'),(178,3521,'Ruggell'),(178,3522,'Schaan'),(178,3523,'Schellenberg'),(178,3524,'Triesen'),(178,3525,'Triesenberg'),(178,3526,'Vaduz'),(179,3527,'Alytaus Apskritis'),(179,3528,'Kauno Apskritis'),(179,3529,'Klaipedos Apskritis'),(179,3530,'Marijampoles Apskritis'),(179,3531,'Panevezio Apskritis'),(179,3532,'Siauliu Apskritis'),(179,3533,'Taurages Apskritis'),(179,3534,'Telsiu Apskritis'),(179,3535,'Utenos Apskritis'),(179,3536,'Vilniaus Apskritis'),(180,3537,'Diekirch'),(180,3538,'Grevenmacher'),(180,3539,'Luxembourg'),(181,3540,'Aracinovo'),(181,3541,'Berovo'),(181,3542,'Bitola'),(181,3543,'Bogdanci'),(181,3544,'Bogovinje'),(181,3545,'Bosilovo'),(181,3546,'Brvenica'),(181,3547,'Cair'),(181,3548,'Caska'),(181,3549,'Centar Zupa'),(181,3550,'Cesinovo'),(181,3551,'Cucer-Sandevo'),(181,3552,'Debar'),(181,3553,'Delcevo'),(181,3554,'Demir Hisar'),(181,3555,'Demir Kapija'),(181,3556,'Dojran'),(181,3557,'Dolneni'),(181,3558,'Drugovo'),(181,3559,'Gazi Baba'),(181,3560,'Gevgelija'),(181,3561,'Gostivar'),(181,3562,'Gradsko'),(181,3563,'Ilinden'),(181,3564,'Jegunovce'),(181,3565,'Karbinci'),(181,3566,'Karpos'),(181,3567,'Kavadarci'),(181,3568,'Kicevo'),(181,3569,'Kisela Voda'),(181,3570,'Kocani'),(181,3571,'Konce'),(181,3572,'Kratovo'),(181,3573,'Kriva Palanka'),(181,3574,'Krivogastani'),(181,3575,'Krusevo'),(181,3576,'Kumanovo'),(181,3577,'Lozovo'),(181,3578,'Makedonska Kamenica'),(181,3579,'Makedonski Brod'),(181,3580,'Mogila'),(181,3581,'Negotino'),(181,3582,'Novaci'),(181,3583,'Novo Selo'),(181,3584,'Ohrid'),(181,3585,'Opstina Aerodrom'),(181,3586,'Opstina Butel'),(181,3587,'Opstina Debarca'),(181,3588,'Opstina Lipkovo'),(181,3589,'Opstina Rankovce'),(181,3590,'Opstina Rostusa'),(181,3591,'Oslomej'),(181,3592,'Pehcevo'),(181,3593,'Petrovec'),(181,3594,'Plasnica'),(181,3595,'Prilep'),(181,3596,'Probistip'),(181,3597,'Radovis'),(181,3598,'Resen'),(181,3599,'Rosoman'),(181,3600,'Saraj'),(181,3601,'Sopiste'),(181,3602,'Staro Nagoricane'),(181,3603,'Stip'),(181,3604,'Struga'),(181,3605,'Strumica'),(181,3606,'Studenicani'),(181,3607,'Suto Orizari'),(181,3608,'Sveti Nikole'),(181,3609,'Tearce'),(181,3610,'Tetovo'),(181,3611,'Valandovo'),(181,3612,'Vasilevo'),(181,3613,'Veles'),(181,3614,'Vevcani'),(181,3615,'Vinica'),(181,3616,'Vranestica'),(181,3617,'Vrapciste'),(181,3618,'Zajas'),(181,3619,'Zelenikovo'),(181,3620,'Zelino'),(181,3621,'Zrnovci'),(182,3622,'Balti'),(182,3623,'Bender'),(182,3624,'Calarasi'),(182,3625,'Causeni'),(182,3626,'Chisinau'),(182,3627,'Dubasari'),(182,3628,'Gagauzia'),(182,3629,'Raionul Anenii Noi'),(182,3630,'Raionul Basarabeasca'),(182,3631,'Raionul Briceni'),(182,3632,'Raionul Cahul'),(182,3633,'Raionul Cantemir'),(182,3634,'Raionul Cimislia'),(182,3635,'Raionul Criuleni'),(182,3636,'Raionul Donduseni'),(182,3637,'Raionul Drochia'),(182,3638,'Raionul Edinet'),(182,3639,'Raionul Falesti'),(182,3640,'Raionul Floresti'),(182,3641,'Raionul Glodeni'),(182,3642,'Raionul Hincesti'),(182,3643,'Raionul Ialoveni'),(182,3644,'Raionul Leova'),(182,3645,'Raionul Nisporeni'),(182,3646,'Raionul Ocnita'),(182,3647,'Raionul Orhei'),(182,3648,'Raionul Rezina'),(182,3649,'Raionul Riscani'),(182,3650,'Raionul Singerei'),(182,3651,'Raionul Soldanesti'),(182,3652,'Raionul Soroca'),(182,3653,'Raionul Straseni'),(182,3654,'Raionul Taraclia'),(182,3655,'Raionul Telenesti'),(182,3656,'Raionul Ungheni'),(182,3657,'Stefan-Voda'),(182,3658,'Stinga Nistrului'),(183,3659,'Commune de Monaco'),(184,3660,'Drenthe'),(184,3661,'Flevoland'),(184,3662,'Gelderland'),(184,3663,'Limburg'),(184,3664,'North Brabant'),(184,3665,'North Holland'),(184,3666,'Overijssel'),(184,3667,'Province of Groningen'),(184,3668,'Provincie Friesland'),(184,3669,'South Holland'),(184,3670,'Utrecht'),(184,3671,'Zeeland'),(185,3672,'Akershus county'),(185,3673,'Aust-Agder county'),(185,3674,'Buskerud county'),(185,3675,'Finnmark'),(185,3676,'Hedmark county'),(185,3677,'Hordaland'),(185,3678,'More og Romsdal'),(185,3679,'Nord-Trondelag'),(185,3680,'Nordland'),(185,3681,'Oppland county'),(185,3682,'Oslo'),(185,3683,'Rogaland'),(185,3684,'Sogn og Fjordane'),(185,3685,'Sor-Trondelag'),(185,3686,'Telemark county'),(185,3687,'Troms'),(185,3688,'Vest-Agder'),(185,3689,'Vestfold county'),(185,3690,'Ostfold'),(186,3691,'Greater Poland Voivodeship'),(186,3692,'Kujawsko-Pomorskie'),(186,3693,'Lesser Poland Voivodeship'),(186,3694,'Lower Silesian Voivodeship'),(186,3695,'Lublin Voivodeship'),(186,3696,'Lubusz'),(186,3697,'Masovian Voivodeship'),(186,3698,'Opole Voivodeship'),(186,3699,'Podlasie'),(186,3700,'Pomeranian Voivodeship'),(186,3701,'Silesian Voivodeship'),(186,3702,'Subcarpathian Voivodeship'),(186,3703,'Swietokrzyskie'),(186,3704,'Warmian-Masurian Voivodeship'),(186,3705,'West Pomeranian Voivodeship'),(186,3706,'?odz Voivodeship'),(187,3707,'Aveiro'),(187,3708,'Azores'),(187,3709,'Beja'),(187,3710,'Braga'),(187,3711,'Braganca'),(187,3712,'Castelo Branco'),(187,3713,'Coimbra'),(187,3714,'Evora'),(187,3715,'Faro'),(187,3716,'Guarda'),(187,3717,'Leiria'),(187,3718,'Lisbon'),(187,3719,'Madeira'),(187,3720,'Portalegre'),(187,3721,'Porto'),(187,3722,'Santarem'),(187,3723,'Setubal'),(187,3724,'Viana do Castelo'),(187,3725,'Vila Real'),(187,3726,'Viseu'),(188,3727,'Alba'),(188,3728,'Arad'),(188,3729,'Arges'),(188,3730,'Bacau'),(188,3731,'Bihor'),(188,3732,'Bistrita-Nasaud'),(188,3733,'Botosani'),(188,3734,'Braila'),(188,3735,'Brasov'),(188,3736,'Bucuresti'),(188,3737,'Buzau'),(188,3738,'Calarasi'),(188,3739,'Caras-Severin'),(188,3740,'Cluj'),(188,3741,'Constanta'),(188,3742,'Covasna'),(188,3743,'Dambovita'),(188,3744,'Dolj'),(188,3745,'Galati'),(188,3746,'Giurgiu'),(188,3747,'Gorj'),(188,3748,'Harghita'),(188,3749,'Hunedoara'),(188,3750,'Ialomita'),(188,3751,'Iasi'),(188,3752,'Ilfov'),(188,3753,'Judetul Vrancea'),(188,3754,'Maramures'),(188,3755,'Mehedinti'),(188,3756,'Mures'),(188,3757,'Neamt'),(188,3758,'Olt'),(188,3759,'Prahova'),(188,3760,'Salaj'),(188,3761,'Satu Mare'),(188,3762,'Sibiu'),(188,3763,'Suceava'),(188,3764,'Teleorman'),(188,3765,'Timis'),(188,3766,'Tulcea'),(188,3767,'Valcea'),(188,3768,'Vaslui'),(188,3769,'Vrancea'),(189,3770,'Acquaviva'),(189,3771,'Borgo Maggiore'),(189,3772,'Chiesanuova'),(189,3773,'Domagnano'),(189,3774,'Faetano'),(189,3775,'Fiorentino'),(189,3776,'Montegiardino'),(189,3777,'San Marino'),(189,3778,'Serravalle'),(190,3779,'Banskobystricky'),(190,3780,'Bratislavsky'),(190,3781,'Kosicky'),(190,3782,'Nitriansky'),(190,3783,'Presovsky'),(190,3784,'South Moravian Region'),(190,3785,'Trenciansky'),(190,3786,'Trnavsky'),(190,3787,'Zilinsky'),(191,3788,'Ajdovscina'),(191,3789,'Beltinci'),(191,3790,'Benedikt'),(191,3791,'Bistrica ob Sotli'),(191,3792,'Bled'),(191,3793,'Bloke'),(191,3794,'Bohinj'),(191,3795,'Borovnica'),(191,3796,'Bovec'),(191,3797,'Braslovce'),(191,3798,'Brda'),(191,3799,'Brezice'),(191,3800,'Brezovica'),(191,3801,'Cankova'),(192,3802,'Andalusia'),(192,3803,'Aragon'),(192,3804,'Asturias'),(192,3805,'Autonomous Region of Navarre'),(192,3806,'Balearic Islands'),(192,3807,'Basque Country'),(192,3808,'Canary Islands'),(192,3809,'Cantabria'),(192,3810,'Castille and Leon'),(192,3811,'Castille-La Mancha'),(192,3812,'Catalonia'),(192,3813,'Ceuta'),(192,3814,'Extremadura'),(192,3815,'Galicia'),(192,3816,'Shabeellaha Hoose'),(192,3817,'Sool'),(192,3818,'Togdheer'),(192,3819,'Woqooyi Galbeed'),(193,3820,'Jan Mayen'),(193,3821,'Svalbard'),(193,3822,'White Nile'),(194,3823,'Blekinge'),(194,3824,'Dalarna'),(194,3825,'Gavleborg'),(194,3826,'Gotland'),(194,3827,'Halland'),(194,3828,'Jamtland'),(194,3829,'Jonkoping'),(194,3830,'Kalmar'),(194,3831,'Kronoberg'),(194,3832,'Norrbotten'),(194,3833,'Orebro'),(194,3834,'Ostergotland'),(194,3835,'Skane'),(194,3836,'Sodermanland'),(195,3837,'Aargau'),(195,3838,'Appenzell Ausserrhoden'),(195,3839,'Basel-Country'),(195,3840,'Basle-Ville'),(195,3841,'Bern'),(195,3842,'Fribourg'),(195,3843,'Geneva'),(195,3844,'Glarus'),(195,3845,'Graubunden'),(195,3846,'Jura'),(195,3847,'Kanton Appenzell Innerrhoden'),(195,3848,'Lucerne'),(195,3849,'Neuchatel'),(195,3850,'Nidwalden'),(195,3851,'Obwalden'),(195,3852,'Saint Gallen'),(195,3853,'Schaffhausen'),(195,3854,'Schwyz'),(195,3855,'Solothurn'),(195,3856,'Thurgau'),(195,3857,'Ticino'),(195,3858,'Uri'),(195,3859,'Valais'),(195,3860,'Vaud'),(195,3861,'Zug'),(195,3862,'Zurich'),(196,3863,'England'),(196,3864,'N Ireland'),(196,3865,'Scotland'),(196,3866,'Wales'),(197,3867,'Eastern District'),(197,3868,'Manua'),(197,3869,'Swains Island'),(197,3870,'Western District'),(198,3871,'Australian Capital Territory'),(198,3872,'New South Wales'),(198,3873,'Northern Territory'),(198,3874,'Queensland'),(198,3875,'South Australia'),(198,3876,'Tasmania'),(198,3877,'Victoria'),(198,3878,'Western Australia'),(199,3879,'Central'),(199,3880,'Eastern'),(199,3881,'Northern'),(199,3882,'Rotuma'),(199,3883,'Western'),(200,3884,'Iles Australes'),(200,3885,'Iles du Vent'),(200,3886,'Iles Marquises'),(200,3887,'Iles Sous-le-Vent'),(200,3888,'Iles Tuamotu-Gambier'),(201,3889,'Ailinglaplap Atoll'),(201,3890,'Ailuk Atoll'),(201,3891,'Arno Atoll'),(201,3892,'Aur Atoll'),(201,3893,'Ebon Atoll'),(201,3894,'Enewetak Atoll'),(201,3895,'Jabat Island'),(201,3896,'Jaluit Atoll'),(201,3897,'Kili Island'),(201,3898,'Kwajalein Atoll'),(201,3899,'Lae Atoll'),(201,3900,'Lib Island'),(201,3901,'Likiep Atoll'),(201,3902,'Majuro Atoll'),(201,3903,'Maloelap Atoll'),(201,3904,'Mejit Island'),(201,3905,'Mili Atoll'),(201,3906,'Namdrik Atoll'),(201,3907,'Namu Atoll'),(201,3908,'Rongelap Atoll'),(201,3909,'Ujae Atoll'),(201,3910,'Ujelang'),(201,3911,'Utrik Atoll'),(201,3912,'Wotho Atoll'),(201,3913,'Wotje Atoll'),(202,3914,'Chuuk'),(202,3915,'Kosrae'),(202,3916,'Pohnpei'),(202,3917,'Yap'),(203,3918,'Aiwo'),(203,3919,'Anabar'),(203,3920,'Anetan'),(203,3921,'Anibare'),(203,3922,'Baiti'),(203,3923,'Buada'),(203,3924,'Ewa'),(203,3925,'Ijuw'),(203,3926,'Uaboe'),(203,3927,'Yaren'),(204,3928,'Province des iles Loyaute'),(204,3929,'Province Nord'),(204,3930,'Province Sud'),(205,3931,'Auckland'),(205,3932,'Bay of Plenty'),(205,3933,'Canterbury'),(205,3934,'Chatham Islands'),(205,3935,'Gisborne'),(205,3936,'Hawkes Bay'),(205,3937,'Manawatu-Wanganui'),(205,3938,'Marlborough'),(205,3939,'Nelson'),(205,3940,'Northland'),(205,3941,'Otago'),(205,3942,'Southland'),(205,3943,'Taranaki'),(205,3944,'Tasman'),(205,3945,'Waikato'),(205,3946,'Wellington'),(205,3947,'West Coast'),(206,3948,'Northern Islands Municipality'),(206,3949,'Rota Municipality'),(206,3950,'Saipan Municipality'),(206,3951,'Tinian Municipality'),(207,3952,'Aimeliik'),(207,3953,'Airai'),(207,3954,'Angaur'),(207,3955,'Kayangel'),(207,3956,'Koror'),(207,3957,'Melekeok'),(207,3958,'Ngaraard'),(207,3959,'Ngarchelong'),(207,3960,'Ngardmau'),(207,3961,'Ngatpang'),(207,3962,'Ngchesar'),(207,3963,'Ngiwal'),(207,3964,'Peleliu'),(207,3965,'Sonsorol'),(207,3966,'State of Hatohobei'),(207,3967,'State of Ngeremlengui'),(208,3968,'Bougainville'),(208,3969,'Central Province'),(208,3970,'Chimbu'),(208,3971,'East New Britain'),(208,3972,'East Sepik'),(208,3973,'Eastern Highlands'),(208,3974,'Enga'),(208,3975,'Gulf'),(208,3976,'Madang'),(208,3977,'Manus'),(208,3978,'Milne Bay'),(208,3979,'Morobe'),(208,3980,'National Capital District'),(208,3981,'New Ireland'),(208,3982,'Northern Province'),(208,3983,'Sandaun'),(208,3984,'Southern Highlands'),(208,3985,'West New Britain'),(208,3986,'Western Highlands'),(208,3987,'Western Province'),(209,3988,'Aiga-i-le-Tai'),(209,3989,'Atua'),(209,3990,'A ana'),(209,3991,'Fa asaleleaga'),(209,3992,'Gagaifomauga'),(209,3993,'Gaga emauga'),(209,3994,'Palauli'),(209,3995,'Satupa itea'),(209,3996,'Tuamasaga'),(209,3997,'Vaisigano'),(209,3998,'Vaa-o-Fonoti'),(210,3999,'Central Province'),(210,4000,'Choiseul'),(210,4001,'Guadalcanal'),(210,4002,'Isabel'),(210,4003,'Makira'),(210,4004,'Malaita'),(210,4005,'Rennell and Bellona'),(210,4006,'Temotu'),(210,4007,'Western Province'),(211,4008,'Atafu'),(211,4009,'Fakaofo'),(211,4010,'Nukunonu'),(212,4011,'Eua'),(212,4012,'Haapai'),(212,4013,'Niuas'),(212,4014,'Tongatapu'),(212,4015,'Vavau'),(213,4016,'Funafuti'),(213,4017,'Nanumanga'),(213,4018,'Nanumea'),(213,4019,'Niutao'),(213,4020,'Nui'),(213,4021,'Nukufetau'),(213,4022,'Nukulaelae'),(213,4023,'Vaitupu'),(214,4024,'Baker Island'),(214,4025,'Howland Island'),(214,4026,'Jarvis Island'),(215,4027,'Malampa'),(215,4028,'Penama'),(215,4029,'Sanma'),(215,4030,'Shefa'),(215,4031,'Tafea'),(215,4032,'Torba'),(215,4033,'Salto'),(215,4034,'San Jose'),(215,4035,'Soriano'),(215,4036,'Tacuarembo'),(215,4037,'Treinta y Tres'),(216,4038,'Circonscription dAlo'),(216,4039,'Circonscription dUvea'),(216,4040,'Circonscription de Sigave');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `student` */

/*Table structure for table `sundry creditors` */

DROP TABLE IF EXISTS `sundry creditors`;

CREATE TABLE `sundry creditors` (
  `l_name` varchar(1000) NOT NULL DEFAULT '',
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1 COMMENT='Table with abuse reports';

/*Data for the table `sundry creditors` */

insert  into `sundry creditors`(`l_name`,`debit`,`credit`,`trans_id`,`id`,`date`) values ('sdsmhdg mbdvgfjbgsdfv hsdfgweh',NULL,'0',NULL,116,NULL),('Ardhendu Chasdgf',NULL,'0',NULL,90,NULL),('Software Deve',NULL,'0',NULL,103,NULL);

/*Table structure for table `sundry debtors` */

DROP TABLE IF EXISTS `sundry debtors`;

CREATE TABLE `sundry debtors` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

/*Data for the table `sundry debtors` */

insert  into `sundry debtors`(`l_name`,`debit`,`credit`,`trans_id`,`id`,`date`) values ('SoumyaBAsak123','0.00',NULL,NULL,10,NULL),('   ','0',NULL,NULL,36,NULL),('Soumya Nandi','0.00','0',NULL,55,NULL),('Santu 2015 Vat 14587596365412 13.4 %','1000000000000000000000000000000000000000000000000000000000000000000000000000000','0',NULL,66,NULL),('Sourav Das','0',NULL,NULL,51,NULL),('Soumya Dey','0',NULL,NULL,43,NULL),('aaaa','0.00','0',NULL,44,NULL),('Imran Ji','50000',NULL,NULL,46,NULL),('Soumya','0',NULL,NULL,50,NULL),('Sourav','0',NULL,NULL,53,NULL),('Soumya Basakk','0',NULL,NULL,56,NULL),('sefsf','0',NULL,NULL,63,NULL),('Ardhendu','0',NULL,NULL,60,NULL),('dff','0.00','0',NULL,62,NULL),('Ranjan Singh','1000.00',NULL,NULL,64,NULL),('XYZ@abc.com','122222222222222222222222222222222222222222222222222222224444444444444444444444444444444444444444444876666666666666666666666666666666666666666666666666666666666666666666666666666666666','0',NULL,67,NULL),('Rahul Enterprise','0.00',NULL,NULL,68,NULL),('Somu','0.00','0',NULL,69,NULL),('Santu Chall','0',NULL,NULL,72,NULL),('Siiiiii','0.00','0',NULL,73,NULL),('sjgdjhgfjhjhsfgs','0.00','0',NULL,74,NULL),('dgsgsgsgs','0.00','0',NULL,75,NULL);

/*Table structure for table `tax 2015 vat no. 14567896325648` */

DROP TABLE IF EXISTS `tax 2015 vat no. 14567896325648`;

CREATE TABLE `tax 2015 vat no. 14567896325648` (
  `l_name` varchar(1000) DEFAULT NULL,
  `debit` varchar(1000) DEFAULT NULL,
  `credit` varchar(1000) DEFAULT NULL,
  `trans_id` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tax 2015 vat no. 14567896325648` */

insert  into `tax 2015 vat no. 14567896325648`(`l_name`,`debit`,`credit`,`trans_id`,`id`,`date`) values ('Santu 2015 VAT 20133456&345231 5%',NULL,'1245.24',NULL,1,NULL);

/*Table structure for table `trans_vtp_temp` */

DROP TABLE IF EXISTS `trans_vtp_temp`;

CREATE TABLE `trans_vtp_temp` (
  `vtp_trans_date` varchar(1000) DEFAULT NULL,
  `vtp_ledger` varchar(1000) DEFAULT NULL,
  `vtp_debit` double DEFAULT NULL,
  `vtp_credit` double DEFAULT NULL,
  `vtp_get_id` varchar(1000) DEFAULT NULL,
  `vtp_type` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `trans_vtp_temp` */

/*Table structure for table `trial_balance_demo` */

DROP TABLE IF EXISTS `trial_balance_demo`;

CREATE TABLE `trial_balance_demo` (
  `particular` varchar(1000) DEFAULT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `trial_balance_demo` */

insert  into `trial_balance_demo`(`particular`,`debit`,`credit`) values ('Capital Account',0,0),(' ',0,0),('  DFDF',0,0),('Fixed Asset',0,0),('  Sourav Basak',0,0),('Current Asset',0,0),('Current Asset',0,0),('    Sundry Debtors',1.22222222222222e+182,0),('         ',0,0),('      aaaa',0,0),('      Ardhendu',0,0),('      dff',0,0),('      dgsgsgsgs',0,0),('      Imran Ji',50000,0),('      Rahul Enterprise',0,0),('      Ranjan Singh',1000,0),('      Santu 2015 Vat 14587596365412 13.4 %',1e+078,0),('      Santu Chall',0,0),('      sefsf',0,0),('      Siiiiii',0,0),('      sjgdjhgfjhjhsfgs',0,0),('      Somu',0,0),('      Soumya',0,0),('      Soumya Basakk',0,0),('      Soumya Dey',0,0),('      Soumya Nandi',0,0),('      SoumyaBAsak123',0,0),('      Sourav',0,0),('      Sourav Das',0,0),('      XYZ@abc.com',1.22222222222222e+182,0),('    Sundry Creditor',0,0),('      Ardhendu Chasdgf',0,0),('      sdsmhdg mbdvgfjbgsdfv hsdfgweh',0,0),('      Software Deve',0,0),('Sales Account',0,0),('Purchase Account',0,0),('Direct Expense',0,0),('Direct Income',0,0),('Indirect Expense',0,0),('Indirect Income',0,0),('Cash',0,0),('Bank',0,0);

/*Table structure for table `tv` */

DROP TABLE IF EXISTS `tv`;

CREATE TABLE `tv` (
  `inv_id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_p_id` varchar(1000) DEFAULT '0',
  `p_name` varchar(1000) NOT NULL,
  `inv_open` varchar(1000) DEFAULT '0',
  `inv_sale` varchar(1000) DEFAULT '0',
  `inv_purchase` varchar(1000) DEFAULT '0',
  `trans_id` varchar(1000) DEFAULT NULL,
  `inv_open_amount` double DEFAULT '0',
  `inv_pur_amount` double DEFAULT '0',
  `inv_sale_amount` double DEFAULT '0',
  PRIMARY KEY (`inv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Table for inventory reports';

/*Data for the table `tv` */

/*Table structure for table `tyuiguviiu` */

DROP TABLE IF EXISTS `tyuiguviiu`;

CREATE TABLE `tyuiguviiu` (
  `inv_id` int(11) NOT NULL AUTO_INCREMENT,
  `inv_p_id` varchar(1000) DEFAULT '0',
  `p_name` varchar(1000) NOT NULL,
  `inv_open` varchar(1000) DEFAULT '0',
  `inv_sale` varchar(1000) DEFAULT '0',
  `inv_purchase` varchar(1000) DEFAULT '0',
  `trans_id` varchar(1000) DEFAULT NULL,
  `inv_open_amount` double DEFAULT '0',
  `inv_pur_amount` double DEFAULT '0',
  `inv_sale_amount` double DEFAULT '0',
  PRIMARY KEY (`inv_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Table for inventory reports';

/*Data for the table `tyuiguviiu` */

/*Table structure for table `unit` */

DROP TABLE IF EXISTS `unit`;

CREATE TABLE `unit` (
  `u_name` varchar(255) NOT NULL,
  `u_value` varchar(1000) DEFAULT NULL,
  `u_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`u_id`,`u_name`),
  KEY `u_name` (`u_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `unit` */

insert  into `unit`(`u_name`,`u_value`,`u_id`,`flag`) values ('Pieces','Pcs',2,0),('Litre','ltr',3,0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(1000) DEFAULT NULL,
  `user_pass` varchar(1000) DEFAULT NULL,
  `user_name` varchar(1000) DEFAULT NULL,
  `user_dob` varchar(1000) DEFAULT NULL,
  `user_type` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`user_id`,`user_pass`,`user_name`,`user_dob`,`user_type`) values (1,'user','Basak_123','Soumya Basak','26-10-1992','admin'),(2,'admin','admin','santu chall','20-10-1986','admin'),(3,'imran','123456','Md Imran','22-10-2014','user'),(4,'sourajit','sourajit','Sourajit','1985','user'),(6,'Ardhen','ardhen','Ardhen','1988','admin'),(7,'con1','abcd','con','15-jan-1980','user');

/*Table structure for table `user_activity_table` */

DROP TABLE IF EXISTS `user_activity_table`;

CREATE TABLE `user_activity_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `query_type` varchar(2000) DEFAULT NULL,
  `table_name` varchar(2000) DEFAULT NULL,
  `create_date` varchar(2000) DEFAULT NULL,
  `create_user` varchar(2000) DEFAULT NULL,
  `update_date` varchar(2000) DEFAULT NULL,
  `update_user` varchar(2000) DEFAULT NULL,
  `value` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=latin1;

/*Data for the table `user_activity_table` */

insert  into `user_activity_table`(`id`,`query_type`,`table_name`,`create_date`,`create_user`,`update_date`,`update_user`,`value`) values (121,'delete','vendor','Tue Jan 27 14:58:42 IST 2015','admin','Wed Jan 28 17:58:11 IST 2015','null','Software Deve'),(122,'delete','customer','Tue Jan 27 15:03:17 IST 2015','admin','Wed Jan 28 17:01:12 IST 2015','null','Soumya Basakk'),(123,'delete','ledger','Tue Jan 27 15:29:47 IST 2015','null','Wed Jan 28 15:47:40 IST 2015','null','DFDF'),(124,'delete','ledger','Tue Jan 27 15:53:43 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','Soumya Saha'),(125,'delete','acc_group','Tue Jan 27 16:27:18 IST 2015','con1','Wed Jan 28 16:21:22 IST 2015','admin','CST AND VAT'),(126,'delete','acc_group','Tue Jan 27 16:31:13 IST 2015','admin','Wed Jan 28 16:21:22 IST 2015','admin','Soumya Basak'),(127,'delete','inv_group','Tue Jan 27 16:45:10 IST 2015','admin','Thu Jan 29 11:15:14 IST 2015','null','Mobile Android'),(128,'delete','inv_group','Tue Jan 27 16:54:21 IST 2015','admin','Thu Jan 29 11:15:14 IST 2015','null','Mobile1'),(129,'update','inv_group','Tue Jan 27 17:04:40 IST 2015','admin','Thu Jan 29 11:15:25 IST 2015','null','Mobile'),(130,'delete','unit','Tue Jan 27 17:32:50 IST 2015','admin','Tue Jan 27 18:55:58 IST 2015','admin','Litre'),(131,'delete','unit','Tue Jan 27 17:53:10 IST 2015','admin','Tue Jan 27 18:55:58 IST 2015','admin','Miles'),(132,'delete','product','Tue Jan 27 17:58:03 IST 2015','admin','Tue Jan 27 18:54:21 IST 2015','admin','SIM'),(133,'delete','godown','Tue Jan 27 18:15:28 IST 2015','admin','Tue Jan 27 18:55:19 IST 2015','admin','Dumdum'),(134,'delete','godown','Tue Jan 27 18:17:54 IST 2015','admin','Tue Jan 27 18:55:19 IST 2015','admin','Dumdum'),(135,'delete','godown','Tue Jan 27 18:22:27 IST 2015','admin','Tue Jan 27 18:55:19 IST 2015','admin','Topsia'),(136,'delete','ledger','Tue Jan 27 18:42:15 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','sdvgsdfg'),(137,'delete','acc_group','Tue Jan 27 18:45:08 IST 2015','admin','Wed Jan 28 16:21:22 IST 2015','admin','Student1'),(138,'delete','customer','Tue Jan 27 18:46:28 IST 2015','admin','Wed Jan 28 17:01:12 IST 2015','null','Ardhendu'),(139,'delete','customer','Tue Jan 27 18:47:41 IST 2015','admin','Wed Jan 28 17:01:12 IST 2015','null','Ardhendu'),(140,'delete','vendor','Tue Jan 27 18:48:20 IST 2015','admin','Wed Jan 28 17:58:11 IST 2015','null','Imran'),(141,'delete','unit','Tue Jan 27 18:52:28 IST 2015','admin','Tue Jan 27 18:55:58 IST 2015','admin','Kilogramsd'),(142,'delete','product','Tue Jan 27 18:53:41 IST 2015','admin','Tue Jan 27 18:54:21 IST 2015','admin','Pen'),(143,'delete','godown','Tue Jan 27 18:55:00 IST 2015','admin','Tue Jan 27 18:55:19 IST 2015','admin','Dumdum'),(144,'delete','unit','Tue Jan 27 18:55:42 IST 2015','admin','Tue Jan 27 18:55:58 IST 2015','admin','Santu'),(145,'delete','customer','Tue Jan 27 19:03:58 IST 2015','admin','Wed Jan 28 17:01:12 IST 2015','null','sefsf'),(146,'delete','customer','Tue Jan 27 19:04:07 IST 2015','admin','Wed Jan 28 17:01:12 IST 2015','null','dff'),(147,'delete','vendor','Tue Jan 27 19:04:47 IST 2015','admin','Wed Jan 28 17:58:11 IST 2015','null','dfgdgfd'),(148,'delete','acc_group','Tue Jan 27 19:10:07 IST 2015','admin','Wed Jan 28 16:21:22 IST 2015','admin','dgdgfdf'),(149,'delete','ledger','Tue Jan 27 19:11:43 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','Sourav Basak'),(150,'delete','ledger','Wed Jan 28 11:03:16 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','Soumya Basak'),(151,'delete','ledger','Wed Jan 28 11:37:47 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','Imran 210'),(152,'delete','ledger','Wed Jan 28 11:37:51 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','Imran 210'),(153,'delete','ledger','Wed Jan 28 11:38:18 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','Imran 210'),(154,'delete','ledger','Wed Jan 28 11:45:08 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','Santu Tax 4%'),(155,'delete','acc_group','Wed Jan 28 11:49:03 IST 2015','admin','Wed Jan 28 16:21:22 IST 2015','admin','Tax 2015 Vat No. 14567896325648'),(156,'delete','ledger','Wed Jan 28 13:14:35 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','Soumya'),(157,'delete','ledger','Wed Jan 28 13:15:00 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','SoumyaBasak01'),(158,'insert','ledger','Wed Jan 28 13:15:08 IST 2015','admin','Wed Jan 28 15:56:57 IST 2015','null',''),(159,'delete','ledger','Wed Jan 28 14:27:36 IST 2015','null','Wed Jan 28 15:47:40 IST 2015','null','Santu 2015 VAT 20133456&345231 5%'),(160,'delete','ledger','Wed Jan 28 15:04:42 IST 2015','null','Wed Jan 28 15:47:40 IST 2015','null','Soumya_Basak_01'),(161,'delete','ledger','Wed Jan 28 15:09:59 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','Coconut_Tree-23 Vat No. - 14785296369874 Sri Lanka'),(162,'delete','ledger','Wed Jan 28 15:15:13 IST 2015','admin','Wed Jan 28 15:47:40 IST 2015','null','Coconut_Tree-23 Vat No. - 14785296369874'),(163,'delete','customer','Wed Jan 28 15:34:44 IST 2015','null','Wed Jan 28 17:01:12 IST 2015','null','Santu 2015 Vat 14587596365412 13.4 %'),(164,'delete','customer','Wed Jan 28 15:39:01 IST 2015','null','Wed Jan 28 17:01:12 IST 2015','null','XYZ@abc.com'),(165,'update','acc_group','Wed Jan 28 15:41:41 IST 2015','null','Wed Jan 28 16:21:30 IST 2015','admin','Park Circus'),(166,'delete','ledger','Wed Jan 28 15:43:27 IST 2015','null','Wed Jan 28 15:47:40 IST 2015','null','Santu Desktop Application Software Vat 34.456%'),(167,'delete','ledger','Wed Jan 28 15:47:04 IST 2015','null','Wed Jan 28 15:47:40 IST 2015','null','Ardhendu Sourajit Santu'),(168,'insert','ledger','Wed Jan 28 15:48:19 IST 2015','null','Wed Jan 28 15:49:15 IST 2015','null','Ardhendu Sourajit'),(169,'insert','ledger','Wed Jan 28 15:48:29 IST 2015','null','Wed Jan 28 15:49:15 IST 2015','null','Ardhendu Sourajit'),(170,'insert','ledger','Wed Jan 28 15:49:09 IST 2015','null','Wed Jan 28 15:49:15 IST 2015','null','Ardhendu Sourajit'),(171,'insert','ledger','Wed Jan 28 15:49:15 IST 2015','null','Wed Jan 28 15:49:15 IST 2015','null','Ardhendu Sourajit'),(172,'update','ledger','Wed Jan 28 15:50:25 IST 2015','null','Wed Jan 28 15:50:49 IST 2015','null','Santukfxjghlk'),(173,'insert','ledger','Wed Jan 28 15:56:05 IST 2015','null','Wed Jan 28 15:56:09 IST 2015','null','gdgdgf'),(174,'insert','ledger','Wed Jan 28 15:56:07 IST 2015','null','Wed Jan 28 15:56:09 IST 2015','null','gdgdgf'),(175,'insert','ledger','Wed Jan 28 15:56:08 IST 2015','null','Wed Jan 28 15:56:09 IST 2015','null','gdgdgf'),(176,'insert','ledger','Wed Jan 28 15:56:08 IST 2015','null','Wed Jan 28 15:56:09 IST 2015','null','gdgdgf'),(177,'insert','ledger','Wed Jan 28 15:56:08 IST 2015','null','Wed Jan 28 15:56:09 IST 2015','null','gdgdgf'),(178,'insert','ledger','Wed Jan 28 15:56:09 IST 2015','null','Wed Jan 28 15:56:09 IST 2015','null','gdgdgf'),(179,'insert','ledger','Wed Jan 28 15:56:56 IST 2015','null','Wed Jan 28 15:56:57 IST 2015','null',''),(180,'insert','ledger','Wed Jan 28 15:57:02 IST 2015','null','Wed Jan 28 15:57:02 IST 2015','null','dxgdgdg'),(181,'insert','ledger','Wed Jan 28 15:58:09 IST 2015','null','Wed Jan 28 15:58:10 IST 2015','null','sffsffgg'),(182,'insert','ledger','Wed Jan 28 15:58:10 IST 2015','null','Wed Jan 28 15:58:10 IST 2015','null','sffsffgg'),(183,'insert','ledger','Wed Jan 28 15:59:48 IST 2015','null','Wed Jan 28 15:59:48 IST 2015','null','guysdgsdgsdgshyg'),(184,'insert','ledger','Wed Jan 28 16:03:08 IST 2015','null','Wed Jan 28 16:03:09 IST 2015','null','dgdjkfgdfj'),(185,'insert','ledger','Wed Jan 28 16:04:15 IST 2015','null','Wed Jan 28 16:04:15 IST 2015','null','jkgdshdghsk'),(186,'insert','ledger','Wed Jan 28 16:06:44 IST 2015','null','Wed Jan 28 16:06:44 IST 2015','null','Ramu'),(187,'update','ledger','Wed Jan 28 16:08:17 IST 2015','null','Wed Jan 28 16:08:34 IST 2015','null','ggggggg'),(188,'insert','ledger','Wed Jan 28 16:10:47 IST 2015','null','Wed Jan 28 16:10:47 IST 2015','null','Rahul Enterprise'),(189,'delete','acc_group','Wed Jan 28 16:14:01 IST 2015','admin','Wed Jan 28 16:21:22 IST 2015','admin','Soumya'),(190,'delete','customer','Wed Jan 28 16:24:01 IST 2015','null','Wed Jan 28 17:01:12 IST 2015','null','Somu'),(191,'update','customer','Wed Jan 28 16:47:48 IST 2015','null','Wed Jan 28 17:01:20 IST 2015','null','Santu Chall'),(192,'insert','customer','Wed Jan 28 17:16:00 IST 2015','null','Wed Jan 28 17:16:00 IST 2015','null','Siiiiii'),(193,'delete','vendor','Wed Jan 28 17:44:01 IST 2015','null','Wed Jan 28 17:58:11 IST 2015','null','chdsghjsgfjhsgfjhsgfjhsgfjhsgfshfgshkgfkjsfgkjsfgskfskhfghskgfshkfgskhfgskhfgskgfskhfgksfgksgfkh'),(194,'insert','customer','Wed Jan 28 17:44:27 IST 2015','null','Wed Jan 28 17:44:27 IST 2015','null','sjgdjhgfjhjhsfgs'),(195,'insert','customer','Wed Jan 28 17:44:54 IST 2015','null','Wed Jan 28 17:44:54 IST 2015','null','dgsgsgsgs'),(196,'update','vendor','Wed Jan 28 18:00:03 IST 2015','null','Wed Jan 28 18:00:28 IST 2015','null','sdsmhdg mbdvgfjbgsdfv hsdfgweh'),(197,'delete','inv_group','Wed Jan 28 18:03:26 IST 2015','null','Thu Jan 29 11:15:14 IST 2015','null','R'),(198,'delete','inv_group','Wed Jan 28 18:16:23 IST 2015','null','Thu Jan 29 11:15:14 IST 2015','null','Mobile'),(199,'update','inv_group','Thu Jan 29 11:21:41 IST 2015','null','Thu Jan 29 11:38:30 IST 2015','null','RAM');

/*Table structure for table `user_table` */

DROP TABLE IF EXISTS `user_table`;

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(1000) DEFAULT NULL,
  `created_by` varchar(1000) DEFAULT NULL,
  `last_edited` varchar(1000) DEFAULT NULL,
  `creation_date` varchar(1000) DEFAULT NULL,
  `last_updated_date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_table` */

/*Table structure for table `user_table1` */

DROP TABLE IF EXISTS `user_table1`;

CREATE TABLE `user_table1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(1000) DEFAULT NULL,
  `created_by` varchar(1000) DEFAULT NULL,
  `last_edited` varchar(1000) DEFAULT NULL,
  `creation_date` varchar(1000) DEFAULT NULL,
  `last_updated_date` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_table1` */

/*Table structure for table `vendor` */

DROP TABLE IF EXISTS `vendor`;

CREATE TABLE `vendor` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `v_name` varchar(255) NOT NULL,
  `v_under` varchar(1000) DEFAULT NULL,
  `v_dob` varchar(1000) DEFAULT NULL,
  `v_gender` varchar(1000) DEFAULT NULL,
  `v_address` varchar(1000) DEFAULT NULL,
  `v_city` varchar(1000) DEFAULT NULL,
  `v_state` varchar(1000) DEFAULT NULL,
  `v_pin` varchar(1000) DEFAULT NULL,
  `v_country` varchar(1000) DEFAULT NULL,
  `v_eid` varchar(1000) DEFAULT NULL,
  `v_mb_no` varchar(1000) DEFAULT NULL,
  `v_ph_no` varchar(1000) DEFAULT NULL,
  `v_vat_no` varchar(1000) DEFAULT NULL,
  `v_cst_no` varchar(1000) DEFAULT NULL,
  `v_pan` varchar(1000) DEFAULT NULL,
  `opening_balance` double DEFAULT NULL,
  `v_company_name` varchar(1000) DEFAULT NULL,
  `falg` int(11) DEFAULT '0',
  PRIMARY KEY (`v_id`,`v_name`),
  KEY `v_name` (`v_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `vendor` */

insert  into `vendor`(`v_id`,`v_name`,`v_under`,`v_dob`,`v_gender`,`v_address`,`v_city`,`v_state`,`v_pin`,`v_country`,`v_eid`,`v_mb_no`,`v_ph_no`,`v_vat_no`,`v_cst_no`,`v_pan`,`opening_balance`,`v_company_name`,`falg`) values (14,'sdsmhdg mbdvgfjbgsdfv hsdfgweh','Sundry Creditors','','null','','','Select','','Select','','','+65465474674','','','',0,'',0);

/* Trigger structure for table `godown_detail` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `stock_transfer_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `stock_transfer_product` AFTER INSERT ON `godown_detail` FOR EACH ROW BEGIN
     UPDATE product
    SET flag = 1
    WHERE product_name = NEW.item;
    END */$$


DELIMITER ;

/* Trigger structure for table `godown_detail` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_stock_transfer_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_stock_transfer_product` AFTER DELETE ON `godown_detail` FOR EACH ROW BEGIN
     UPDATE product
    SET flag = 0
    WHERE product_name = OLD.item;
    END */$$


DELIMITER ;

/* Trigger structure for table `ledger` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `acc_group_ledger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `acc_group_ledger` AFTER INSERT ON `ledger` FOR EACH ROW BEGIN
	 UPDATE acc_group
    SET flag = 1
    WHERE g_name = NEW.l_under;
    END */$$


DELIMITER ;

/* Trigger structure for table `ledger` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_acc_group_ledger` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_acc_group_ledger` AFTER DELETE ON `ledger` FOR EACH ROW BEGIN
     UPDATE acc_group
    SET flag = 0
    WHERE g_name = OLD.l_under;
    END */$$


DELIMITER ;

/* Trigger structure for table `product` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `unit_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `unit_product` BEFORE INSERT ON `product` FOR EACH ROW BEGIN
     UPDATE unit
    SET flag = 1
    WHERE u_name = NEW.p_unit;
    END */$$


DELIMITER ;

/* Trigger structure for table `product` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `inv_group_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `inv_group_product` AFTER INSERT ON `product` FOR EACH ROW BEGIN
	 UPDATE inv_group
    SET flag = 1
    WHERE inv_g_name = NEW.p_group;
    END */$$


DELIMITER ;

/* Trigger structure for table `product` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_unit_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_unit_product` BEFORE DELETE ON `product` FOR EACH ROW BEGIN
       UPDATE unit
    SET flag = 0
    WHERE u_name = OLD.p_unit;
    END */$$


DELIMITER ;

/* Trigger structure for table `product` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_inv_group_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_inv_group_product` AFTER DELETE ON `product` FOR EACH ROW BEGIN
     UPDATE inv_group
    SET flag = 0
    WHERE inv_g_name = OLD.p_group;
    END */$$


DELIMITER ;

/* Trigger structure for table `purchase_table1` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `godown_transaction1` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `godown_transaction1` BEFORE INSERT ON `purchase_table1` FOR EACH ROW BEGIN
	 UPDATE godown
    SET flag = 1
    WHERE gd_name = NEW.purchase_gd_name;
	
    END */$$


DELIMITER ;

/* Trigger structure for table `purchase_table1` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_godown_transaction1` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_godown_transaction1` AFTER DELETE ON `purchase_table1` FOR EACH ROW BEGIN
     UPDATE godown
    SET flag = 0
    WHERE gd_name = OLD.purchase_gd_name;
    END */$$


DELIMITER ;

/* Trigger structure for table `purchase_table2` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `purchase_table2_unit` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `purchase_table2_unit` BEFORE INSERT ON `purchase_table2` FOR EACH ROW BEGIN
	UPDATE unit
    SET flag = 1
    WHERE u_name = NEW.purchase_unit;
    END */$$


DELIMITER ;

/* Trigger structure for table `purchase_table2` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `purchase_table2_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `purchase_table2_product` AFTER INSERT ON `purchase_table2` FOR EACH ROW BEGIN
     UPDATE product
    SET flag = 1
    WHERE product_name = NEW.purchase_item;
    END */$$


DELIMITER ;

/* Trigger structure for table `purchase_table2` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_purchase_table2_unit` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_purchase_table2_unit` BEFORE DELETE ON `purchase_table2` FOR EACH ROW BEGIN
    UPDATE unit
    SET flag = 0
    WHERE u_name = OLD.purchase_unit;
    END */$$


DELIMITER ;

/* Trigger structure for table `purchase_table2` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_purchase_table2_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_purchase_table2_product` AFTER DELETE ON `purchase_table2` FOR EACH ROW BEGIN
     UPDATE product
    SET flag = 0
    WHERE product_name = OLD.purchase_item;
    END */$$


DELIMITER ;

/* Trigger structure for table `sale_table1` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `godown_transaction` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `godown_transaction` AFTER INSERT ON `sale_table1` FOR EACH ROW BEGIN
	 UPDATE godown
    SET flag = 1
    WHERE gd_name = NEW.sale_gd_name;
	
    END */$$


DELIMITER ;

/* Trigger structure for table `sale_table1` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_godown_transaction` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_godown_transaction` AFTER DELETE ON `sale_table1` FOR EACH ROW BEGIN
    UPDATE godown
    SET flag = 0
    WHERE gd_name = OLD.sale_gd_name;
    END */$$


DELIMITER ;

/* Trigger structure for table `sale_table2` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `sale_table2_unit` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `sale_table2_unit` BEFORE INSERT ON `sale_table2` FOR EACH ROW BEGIN
	UPDATE unit
    SET flag = 1
    WHERE u_name = NEW.sale_unit;
    END */$$


DELIMITER ;

/* Trigger structure for table `sale_table2` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `sale_table2_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `sale_table2_product` AFTER INSERT ON `sale_table2` FOR EACH ROW BEGIN
     UPDATE product
    SET flag = 1
    WHERE product_name = NEW.sale_item;
    END */$$


DELIMITER ;

/* Trigger structure for table `sale_table2` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_sale_table2_unit` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_sale_table2_unit` BEFORE DELETE ON `sale_table2` FOR EACH ROW BEGIN
    UPDATE unit
    SET flag = 0
    WHERE u_name = OLD.sale_unit;
    END */$$


DELIMITER ;

/* Trigger structure for table `sale_table2` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `del_sale_table2_product` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `del_sale_table2_product` AFTER DELETE ON `sale_table2` FOR EACH ROW BEGIN
      UPDATE product
    SET flag = 0
    WHERE product_name = OLD.sale_item;
    END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
