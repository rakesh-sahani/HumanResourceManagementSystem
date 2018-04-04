/*
SQLyog Community v12.06 (32 bit)
MySQL - 5.1.33-community : Database - hr
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hr` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hr`;

/*Table structure for table `attendence` */

DROP TABLE IF EXISTS `attendence`;

CREATE TABLE `attendence` (
  `Emp_id` int(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `Attend` varchar(20) DEFAULT NULL,
  KEY `Att` (`Emp_id`),
  CONSTRAINT `Att` FOREIGN KEY (`Emp_id`) REFERENCES `employ` (`Emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attendence` */

insert  into `attendence`(`Emp_id`,`Date`,`Time`,`Attend`) values (101,'2014-10-19','10:55:16 PM','Present');

/*Table structure for table `employ` */

DROP TABLE IF EXISTS `employ`;

CREATE TABLE `employ` (
  `Emp_Id` int(20) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `dept` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `mob` varchar(20) DEFAULT NULL,
  `salary` int(20) DEFAULT NULL,
  PRIMARY KEY (`Emp_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employ` */

insert  into `employ`(`Emp_Id`,`fname`,`lname`,`gender`,`dept`,`city`,`mob`,`salary`) values (101,'Rakesh','Sahani','male','Programming','NEW DELHI','9582161515',200000);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user_id` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`user_id`,`password`,`type`) values ('admin','admin','admin'),('emp@101','123','Employ');

/*Table structure for table `payslip` */

DROP TABLE IF EXISTS `payslip`;

CREATE TABLE `payslip` (
  `Emp_Id` int(20) DEFAULT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Salary` int(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  KEY `Pay` (`Emp_Id`),
  CONSTRAINT `Pay` FOREIGN KEY (`Emp_Id`) REFERENCES `employ` (`Emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payslip` */

insert  into `payslip`(`Emp_Id`,`Fname`,`Lname`,`Salary`,`Status`) values (101,'Rakesh','Sahani',200000,'Paid');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `Emp_Id` int(20) DEFAULT NULL,
  `Pid` int(20) NOT NULL,
  `Pname` varchar(40) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Pid`),
  KEY `Pro` (`Emp_Id`),
  CONSTRAINT `Pro` FOREIGN KEY (`Emp_Id`) REFERENCES `employ` (`Emp_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `project` */

insert  into `project`(`Emp_Id`,`Pid`,`Pname`,`Status`) values (101,201,'IITM Portal','Completed');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
