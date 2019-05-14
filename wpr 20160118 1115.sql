-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.73-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema wpr
--

CREATE DATABASE IF NOT EXISTS wpr;
USE wpr;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`name`,`username`,`password`) VALUES 
 (1,'ss','ss','123'),
 (2,'svs','svs','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `linkdb`
--

DROP TABLE IF EXISTS `linkdb`;
CREATE TABLE `linkdb` (
  `linkid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`linkid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `linkdb`
--

/*!40000 ALTER TABLE `linkdb` DISABLE KEYS */;
INSERT INTO `linkdb` (`linkid`,`link`,`description`) VALUES 
 (1,'javaworld.jsp','java coding tutorials'),
 (2,'javatpoint.jsp','java php android hibernate'),
 (3,'w3schools.jsp','html css php sql tutorials'),
 (4,'wikiepediamining.jsp','Data mining knowledge discovery database system'),
 (5,'wikiepediawarehouse.jsp','Data Warehouses'),
 (6,'basicjavaeg.jsp','basic java example'),
 (7,'simplifiedjava.jsp','java simple programs');
/*!40000 ALTER TABLE `linkdb` ENABLE KEYS */;


--
-- Definition of table `temp`
--

DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `link` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
INSERT INTO `temp` (`link`,`username`,`description`) VALUES 
 ('javaworld.jsp','aa','java coding tutorials'),
 ('javatpoint.jsp','aa','java php android hibernate'),
 ('basicjavaeg.jsp','aa','basic java example'),
 ('simplifiedjava.jsp','aa','java simple programs'),
 ('javaworld.jsp','aa','java coding tutorials'),
 ('javatpoint.jsp','aa','java php android hibernate'),
 ('basicjavaeg.jsp','aa','basic java example'),
 ('simplifiedjava.jsp','aa','java simple programs'),
 ('javaworld.jsp','aa','java coding tutorials'),
 ('javatpoint.jsp','aa','java php android hibernate'),
 ('basicjavaeg.jsp','aa','basic java example'),
 ('simplifiedjava.jsp','aa','java simple programs'),
 ('javaworld.jsp','aa','java simple programs'),
 ('javaworld.jsp','aa','java coding tutorials'),
 ('javatpoint.jsp','aa','java php android hibernate'),
 ('basicjavaeg.jsp','aa','basic java example'),
 ('simplifiedjava.jsp','aa','java simple programs'),
 ('javaworld.jsp','aa','java simple programs'),
 ('javaworld.jsp','aa','java simple programs'),
 ('javaworld.jsp','aa','java coding tutorials'),
 ('javatpoint.jsp','aa','java php android hibernate'),
 ('basicjavaeg.jsp','aa','basic java example'),
 ('simplifiedjava.jsp','aa','java simple programs');
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `mobno` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`name`,`mobno`,`dob`,`gender`,`email`,`password`) VALUES 
 (1,'bb','1234','1995-05-25','male','svs','svs');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog` (
  `username` varchar(45) NOT NULL,
  `link` varchar(45) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

/*!40000 ALTER TABLE `userlog` DISABLE KEYS */;
INSERT INTO `userlog` (`username`,`link`,`description`) VALUES 
 ('aa','simplifiedjava.jsp','java simple programs'),
 ('svs','basicjavaeg.jsp','java simple programs'),
 ('svs','javaworld.jsp','java simple programs');
/*!40000 ALTER TABLE `userlog` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
