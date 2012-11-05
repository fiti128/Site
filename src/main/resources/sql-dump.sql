/*
SQLyog Community v10.2 
MySQL - 5.5.25 : Database - legresproject
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`legresproject` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `legresproject`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `email` varchar(255) NOT NULL,
  `birthDate` varchar(255) DEFAULT NULL,
  `birthMonth` varchar(255) DEFAULT NULL,
  `birthYear` varchar(255) DEFAULT NULL,
  `children` bit(1) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `textarea` varchar(255) DEFAULT NULL,
  `webSite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`email`,`birthDate`,`birthMonth`,`birthYear`,`children`,`city`,`country`,`firstName`,`gender`,`lastName`,`nationality`,`password`,`phone`,`street`,`textarea`,`webSite`) values ('admin@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Admin',NULL,NULL,NULL,'adminPassword',NULL,NULL,NULL,NULL),('guest1@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Guest1',NULL,NULL,NULL,'guest1Password',NULL,NULL,NULL,NULL),('guest@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Guest',NULL,NULL,NULL,'guestPassword',NULL,NULL,NULL,NULL),('staff@gmail.com',NULL,NULL,NULL,NULL,NULL,NULL,'Staff',NULL,NULL,NULL,'staffPassword',NULL,NULL,NULL,NULL);

/*Table structure for table `account_roles` */

DROP TABLE IF EXISTS `account_roles`;

CREATE TABLE `account_roles` (
  `email` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`email`,`role`),
  KEY `FKE093662BA7A50F79` (`role`),
  KEY `FKE093662B1CB9201C` (`email`),
  CONSTRAINT `FKE093662B1CB9201C` FOREIGN KEY (`email`) REFERENCES `account` (`email`),
  CONSTRAINT `FKE093662BA7A50F79` FOREIGN KEY (`role`) REFERENCES `role` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_roles` */

insert  into `account_roles`(`email`,`role`) values ('admin@gmail.com','admin'),('staff@gmail.com','staff'),('guest1@gmail.com','user'),('guest@gmail.com','user');

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `deptId` bigint(20) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `sum` int(11) NOT NULL,
  `who` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deptId`),
  KEY `FK2072651CB9201C` (`email`),
  CONSTRAINT `FK2072651CB9201C` FOREIGN KEY (`email`) REFERENCES `account` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dept` */

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `MONEY` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `person` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `ROLE_ID` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`ROLE_ID`,`DESCRIPTION`) values ('admin','the most powerfull man on the world'),('staff','man with the power'),('user','just mortal');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
