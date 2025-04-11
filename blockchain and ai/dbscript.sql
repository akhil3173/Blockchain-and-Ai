/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.45-community-nt : Database - cbmlhealth
*********************************************************************
Server version : 5.0.45-community-nt
*/


create database if not exists `cbmlhealth`;

USE `cbmlhealth`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL auto_increment,
  `password` varchar(128) NOT NULL,
  `last_login` datetime default NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

insert into `auth_user` values 
(1,'pbkdf2_sha256$120000$Z1SUXRwG8zXV$sCHnCIHpidKRaCjrd/CedjGi9EkLEjEXhT+tG50XZcY=','2019-06-07 04:39:18',1,'admin','','','lx160cm@gmail.com',1,1,'2019-06-07 04:39:07');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `converginblockchain_docotrtregistrationmodel` */

DROP TABLE IF EXISTS `converginblockchain_docotrtregistrationmodel`;

CREATE TABLE `converginblockchain_docotrtregistrationmodel` (
  `id` int(11) NOT NULL auto_increment,
  `doctorname` varchar(60) NOT NULL,
  `loginid` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `mobile` varchar(60) NOT NULL,
  `emailid` varchar(60) NOT NULL,
  `locality` varchar(60) NOT NULL,
  `address` varchar(600) NOT NULL,
  `city` varchar(60) NOT NULL,
  `state` varchar(60) NOT NULL,
  `authkey` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `emailid` (`emailid`),
  UNIQUE KEY `loginid` (`loginid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `converginblockchain_docotrtregistrationmodel` */

insert into `converginblockchain_docotrtregistrationmodel` values 
(1,'aadi','alex','alex','9849098490','madhana@aol.com','Hyderabad','HYDERABD','Hyderabad','TS','waiting','waiting'),
(2,'shiva','shivareddy','shivareddy','9849012345','sivakumar.datapoint@gmail.com','Tirupati','#101,Sai Swarnalatha Residency, Tirupati','Tirupati','Andhrapradesh','26673652','activated'),
(3,'ahsapatel','ashapatel','asha','9701237890','ashapatel123@gmail.com','Hydeabad','Flat No:402, Sri Sai Rams Swarnalatha estates, Ameerpet','Hyderabad','Telangana','93075685','activated'),
(4,'Meghana','12','123','7780110618','meghana.datapoint@gmail.com','Hyd','Sr nagar','Hyd','Telangana','45575709','activated'),
(5,'Maggi','Maggi','123','7780110618','meghana.datapoint7@gmail.com','Hyderabad','Sr nagar','Hyd','Telangana','waiting','waiting');

/*Table structure for table `converginblockchain_patientregistrationmodel` */

DROP TABLE IF EXISTS `converginblockchain_patientregistrationmodel`;

CREATE TABLE `converginblockchain_patientregistrationmodel` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(60) NOT NULL,
  `loginid` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `mobile` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `locality` varchar(60) NOT NULL,
  `address` varchar(600) NOT NULL,
  `city` varchar(60) NOT NULL,
  `state` varchar(60) NOT NULL,
  `authkey` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `loginid` (`loginid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `converginblockchain_patientregistrationmodel` */

insert into `converginblockchain_patientregistrationmodel` values 
(1,'manjusha','manjusha','manjusha','9849098490','lx160cm@gmail.com','Hydearabd','H.No:17-41, Door No 401,\r\nMalkajgiri, Hyderabad','Hyderabad','Telangana','waiting','waiting'),
(2,'meghana','arumalla','arumalla','9849012345','arumallameghana@gmail.com','Hyderabad','Hyderabad','Hyderabad','Telangana','19000727','activated'),
(3,'gowri madhana','balakaya','balakaya','9849098490','madhana@aol.com','Hyderabad','Hyderabd','hyderabd','Telangana','58746739','activated'),
(4,'Maggi','Maggi','123','7780110618','meghana.datapoint@gmail.com','Hyderabad','Sr nagar','Hyd','Telangana','39745850','activated');

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) default NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL auto_increment,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert into `django_session` values 
('0unfx4sdw4h11kdvdjh28zmuumq99vit','YTI1ZWY3OTM0YzBmNGU4Zjc1NTBlNWM2NTFjMWExMWRlZmIxNzk2MDp7InVzZXJpZCI6MiwibG9nZ2VkdXNlciI6Im1lZ2hhbmEiLCJkb2NpZCI6NSwibG9nZ2VkZG9jIjoiTWFnZ2kifQ==','2019-07-11 10:49:35');

/*Table structure for table `doctors_doctorreplaysysmptoms` */

DROP TABLE IF EXISTS `doctors_doctorreplaysysmptoms`;

CREATE TABLE `doctors_doctorreplaysysmptoms` (
  `id` int(11) NOT NULL auto_increment,
  `patientid` int(11) default NULL,
  `sysid` int(11) default NULL,
  `patinetname` varchar(100) NOT NULL,
  `docid` int(11) default NULL,
  `doctorname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `patinetallsymptoms` varchar(1000) NOT NULL,
  `diseasname` varchar(1000) NOT NULL,
  `descriptions` varchar(1000) NOT NULL,
  `reqdate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `prescription1` varchar(1000) NOT NULL,
  `prescription2` varchar(1000) NOT NULL,
  `prescription3` varchar(1000) NOT NULL,
  `price` float default NULL,
  `blkchMoney` float default NULL,
  `respdate` timestamp NOT NULL default '0000-00-00 00:00:00',
  `status` varchar(1000) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `doctors_doctorreplaysysmptoms` */

insert into `doctors_doctorreplaysysmptoms` values 
(1,2,1,'meghana',3,'ahsapatel','arumallameghana@gmail.com','9849012345','Hyderabad','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 16:02:42','Medicine 1','Medicine 2','Medicine 3',568,56.8,'2019-06-26 16:01:06','purchase'),
(2,2,2,'meghana',3,'ahsapatel','arumallameghana@gmail.com','9849012345','Hyderabad','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:32:23','Total Hamara','Shadi Mubarak','Koinc=90',5890,589,'2019-06-26 17:31:53','purchase'),
(3,2,3,'meghana',3,'ahsapatel','arumallameghana@gmail.com','9849012345','Hyderabad','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:34:37','Mokhitham','Mara mara','Runkani',589,58.9,'2019-06-26 17:33:58','purchase'),
(4,2,4,'meghana',3,'ahsapatel','arumallameghana@gmail.com','9849012345','Hyderabad','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:38:48','one','two','three',560,56,'2019-06-26 17:38:27','purchase'),
(5,2,5,'meghana',3,'ahsapatel','arumallameghana@gmail.com','9849012345','Hyderabad','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:48:02','zczxcSC','dssdfd','sdfsdfsdfdsf',445,44.5,'2019-06-26 17:47:36','purchase'),
(6,2,6,'meghana',3,'ahsapatel','arumallameghana@gmail.com','9849012345','Hyderabad','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:53:46','M1','m2','m3',584,58.4,'2019-06-26 17:53:08','purchase'),
(7,2,6,'meghana',3,'ahsapatel','arumallameghana@gmail.com','9849012345','Hyderabad','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:53:08','M1','m2','m3',584,58.4,'2019-06-27 14:36:27','waiting'),
(8,4,7,'Maggi',4,'Meghana','meghana.datapoint@gmail.com','7780110618','Hyd','Shortnessofbreath,Weightlossorgain','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-27 15:07:11','Cold act,paracetmal','','',1000,100,'2019-06-27 15:04:30','purchase');

/*Table structure for table `patients_blkchainapproach` */

DROP TABLE IF EXISTS `patients_blkchainapproach`;

CREATE TABLE `patients_blkchainapproach` (
  `id` int(11) NOT NULL auto_increment,
  `docname` varchar(100) NOT NULL,
  `docid` int(11) default NULL,
  `patientname` varchar(100) NOT NULL,
  `patientid` int(11) default NULL,
  `disease` varchar(100) NOT NULL,
  `price` float default NULL,
  `sysmptid` int(11) default NULL,
  `ledgerbalance` float default NULL,
  `tranxid` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `patients_blkchainapproach` */

insert into `patients_blkchainapproach` values 
(1,'ahsapatel',3,'meghana',2,'Plague',568,1,56.8,'108651758808'),
(2,'ahsapatel',3,'meghana',2,'Plague',5890,2,589,'743909948141'),
(3,'ahsapatel',3,'meghana',2,'Plague',589,3,58.9,'210302826412'),
(7,'ahsapatel',3,'meghana',2,'Plague',445,5,44.5,'932373283081'),
(8,'ahsapatel',3,'meghana',2,'Plague',584,6,58.4,'864981326715'),
(9,'ahsapatel',3,'meghana',2,'Plague',584,6,58.4,'335545184890'),
(10,'ahsapatel',3,'meghana',2,'Plague',584,6,58.4,'999875208692'),
(11,'ahsapatel',3,'meghana',2,'Plague',584,6,58.4,'582608467492'),
(12,'ahsapatel',3,'meghana',2,'Plague',584,6,58.4,'603103222690'),
(13,'ahsapatel',3,'meghana',2,'Plague',584,6,58.4,'487881832411'),
(14,'ahsapatel',3,'meghana',2,'Plague',584,6,58.4,'726772977650'),
(15,'ahsapatel',3,'meghana',2,'Plague',584,6,58.4,'485827221766'),
(16,'ahsapatel',3,'meghana',2,'Plague',584,6,58.4,'175275889369'),
(17,'ahsapatel',3,'meghana',2,'Plague',584,6,58.4,'837134848662'),
(18,'Meghana',4,'Maggi',4,'Plague',1000,7,100,'136675051996');

/*Table structure for table `patients_patientsymptomsanalysis` */

DROP TABLE IF EXISTS `patients_patientsymptomsanalysis`;

CREATE TABLE `patients_patientsymptomsanalysis` (
  `id` int(11) NOT NULL auto_increment,
  `patintid` int(11) NOT NULL,
  `patinetname` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `patinetallsymptoms` varchar(60) NOT NULL,
  `diseasname` varchar(60) NOT NULL,
  `descriptions` varchar(800) NOT NULL,
  `createdon` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `status` varchar(50) default 'waiting',
  `docname` varchar(50) default 'notassigned',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `patients_patientsymptomsanalysis` */

insert into `patients_patientsymptomsanalysis` values 
(1,2,'meghana','arumallameghana@gmail.com','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 16:01:06','given','ahsapatel'),
(2,2,'meghana','arumallameghana@gmail.com','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:31:53','given','ahsapatel'),
(3,2,'meghana','arumallameghana@gmail.com','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:33:58','given','ahsapatel'),
(4,2,'meghana','arumallameghana@gmail.com','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:38:27','given','ahsapatel'),
(5,2,'meghana','arumallameghana@gmail.com','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:47:36','given','ahsapatel'),
(6,2,'meghana','arumallameghana@gmail.com','diarrhoea','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-26 17:53:08','given','ahsapatel'),
(7,4,'Maggi','meghana.datapoint@gmail.com','Shortnessofbreath,Weightlossorgain','Plague','a serious (sometimes fatal) infection of rodents caused by Yersinia pestis and accidentally transmitted to humans by the bite of a flea that has bitten an infected animal','2019-06-27 15:04:30','given','Meghana');

/*Table structure for table `patients_transactionsstore` */

DROP TABLE IF EXISTS `patients_transactionsstore`;

CREATE TABLE `patients_transactionsstore` (
  `id` int(11) NOT NULL auto_increment,
  `docid` int(11) default NULL,
  `patientid` int(11) default NULL,
  `nameoncard` varchar(100) NOT NULL,
  `cvv` int(11) default NULL,
  `cardnumber` varchar(100) NOT NULL,
  `expiredate` varchar(100) NOT NULL,
  `tranxid` varchar(100) NOT NULL,
  `price` float default NULL,
  `ledgerbalance` float default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `patients_transactionsstore` */

insert into `patients_transactionsstore` values 
(1,3,2,'Radha',562,'5550121256568080','January/2020','108651758808',568,56.8),
(2,3,2,'Anuradha',588,'8800580036905528','January/2020','743909948141',5890,589),
(3,3,2,'Mourney ',589,'8800565622558989','January/2020','210302826412',589,58.9),
(7,3,2,'Rajini',589,'5566125565603322','January/2020','932373283081',445,44.5),
(8,3,2,'Water',589,'8800565680809090','January/2020','864981326715',584,58.4),
(9,3,2,'Water',589,'8800565680809090','January/2020','335545184890',584,58.4),
(10,3,2,'Water',589,'8800565680809090','January/2020','999875208692',584,58.4),
(11,3,2,'Water',589,'8800565680809090','January/2020','582608467492',584,58.4),
(12,3,2,'Water',589,'8800565680809090','January/2020','603103222690',584,58.4),
(13,3,2,'Water',589,'8800565680809090','January/2020','487881832411',584,58.4),
(14,3,2,'Water',589,'8800565680809090','January/2020','726772977650',584,58.4),
(15,3,2,'Water',589,'8800565680809090','January/2020','485827221766',584,58.4),
(16,3,2,'Water',589,'8800565680809090','January/2020','175275889369',584,58.4),
(17,3,2,'Water',589,'8800565680809090','January/2020','837134848662',584,58.4),
(18,4,4,'Maggi',812,'9676358258987456','May/2021','136675051996',1000,100);
