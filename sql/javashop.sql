/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 8.0.30 : Database - javashop
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE
DATABASE /*!32312 IF NOT EXISTS*/`javashop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE
`javashop`;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product`
(
    `proid`      int         NOT NULL AUTO_INCREMENT COMMENT '产品编号',
    `proname`    varchar(64) NOT NULL COMMENT '产品名称',
    `proprice`   varchar(64) NOT NULL COMMENT '产品价格',
    `proaddress` varchar(64) NOT NULL COMMENT '产品产地',
    `proimage`   varchar(128) DEFAULT NULL COMMENT '产品样图',
    PRIMARY KEY (`proid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `product` */
/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo`
(
    `userid`   int         NOT NULL AUTO_INCREMENT COMMENT '用户编号',
    `username` varchar(64) NOT NULL COMMENT '用户名',
    `pwd`      varchar(64) NOT NULL COMMENT '密码',
    PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `userinfo` */

insert into `userinfo`(`userid`, `username`, `pwd`)
values (1, 'admin', 'admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
