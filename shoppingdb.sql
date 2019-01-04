-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.21


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema shopping
--

CREATE DATABASE IF NOT EXISTS shopping;
USE shopping;

--
-- Definition of table `tblcart`
--

DROP TABLE IF EXISTS `tblcart`;
CREATE TABLE `tblcart` (
  `serial_no` int(20) NOT NULL,
  `prod_id` varchar(20) DEFAULT NULL,
  `cart_qty` int(30) DEFAULT NULL,
  `order_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcart`
--

/*!40000 ALTER TABLE `tblcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcart` ENABLE KEYS */;


--
-- Definition of table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE `tblcategory` (
  `category_id` varchar(20) DEFAULT NULL,
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

/*!40000 ALTER TABLE `tblcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcategory` ENABLE KEYS */;


--
-- Definition of table `tblcomplaint`
--

DROP TABLE IF EXISTS `tblcomplaint`;
CREATE TABLE `tblcomplaint` (
  `COMPLAINT_NO` int(5) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `USER_ID` varchar(20) DEFAULT NULL,
  `MESSAGE` varchar(500) DEFAULT NULL,
  `COMPLAINT_DATE` date DEFAULT NULL,
  `COMPLAINT_STATUS` varchar(10) DEFAULT 'PENDING',
  `RESOLVE_DATE` date DEFAULT NULL,
  PRIMARY KEY (`COMPLAINT_NO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaint`
--

/*!40000 ALTER TABLE `tblcomplaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcomplaint` ENABLE KEYS */;


--
-- Definition of table `tblfeedback`
--

DROP TABLE IF EXISTS `tblfeedback`;
CREATE TABLE `tblfeedback` (
  `SERIAL_NO` int(5) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `USER_ID` varchar(20) DEFAULT NULL,
  `EMAIL_ID` varchar(40) DEFAULT NULL,
  `MOBILE_NO` bigint(13) DEFAULT NULL,
  `MESSAGE` varchar(500) DEFAULT NULL,
  `DATE_OF_FEEDBACK` date DEFAULT NULL,
  `VERIFICATION_CODE` int(5) DEFAULT NULL,
  PRIMARY KEY (`SERIAL_NO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfeedback`
--

/*!40000 ALTER TABLE `tblfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfeedback` ENABLE KEYS */;


--
-- Definition of table `tbllogin`
--

DROP TABLE IF EXISTS `tbllogin`;
CREATE TABLE `tbllogin` (
  `userid` varchar(20) NOT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `wmode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogin`
--

/*!40000 ALTER TABLE `tbllogin` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllogin` ENABLE KEYS */;


--
-- Definition of table `tbllogindetail`
--

DROP TABLE IF EXISTS `tbllogindetail`;
CREATE TABLE `tbllogindetail` (
  `userid` varchar(20) DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogindetail`
--

/*!40000 ALTER TABLE `tbllogindetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllogindetail` ENABLE KEYS */;


--
-- Definition of table `tbloffer`
--

DROP TABLE IF EXISTS `tbloffer`;
CREATE TABLE `tbloffer` (
  `serial_no` int(20) NOT NULL,
  `prod_id` varchar(20) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `offer_start` datetime DEFAULT NULL,
  `offer_end` datetime DEFAULT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbloffer`
--

/*!40000 ALTER TABLE `tbloffer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbloffer` ENABLE KEYS */;


--
-- Definition of table `tblorder`
--

DROP TABLE IF EXISTS `tblorder`;
CREATE TABLE `tblorder` (
  `order_id` varchar(30) NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `userid` varchar(20) DEFAULT NULL,
  `payment_id` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

/*!40000 ALTER TABLE `tblorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblorder` ENABLE KEYS */;


--
-- Definition of table `tblpassword`
--

DROP TABLE IF EXISTS `tblpassword`;
CREATE TABLE `tblpassword` (
  `pass_id` int(20) NOT NULL AUTO_INCREMENT,
  `pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`pass_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpassword`
--

/*!40000 ALTER TABLE `tblpassword` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpassword` ENABLE KEYS */;


--
-- Definition of table `tblpayment`
--

DROP TABLE IF EXISTS `tblpayment`;
CREATE TABLE `tblpayment` (
  `payment_id` varchar(30) NOT NULL,
  `payment_mode` varchar(30) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpayment`
--

/*!40000 ALTER TABLE `tblpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpayment` ENABLE KEYS */;


--
-- Definition of table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
CREATE TABLE `tblproduct` (
  `prod_id` varchar(20) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `prod_name` varchar(50) DEFAULT NULL,
  `batch_no` varchar(20) DEFAULT NULL,
  `photo_id` int(5) DEFAULT NULL,
  `mfg_by` varchar(50) DEFAULT NULL,
  `stock_qty` int(20) DEFAULT NULL,
  `category_id` varchar(20) DEFAULT NULL,
  `prod_desc` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

/*!40000 ALTER TABLE `tblproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproduct` ENABLE KEYS */;


--
-- Definition of table `tblproduct_photo`
--

DROP TABLE IF EXISTS `tblproduct_photo`;
CREATE TABLE `tblproduct_photo` (
  `serial_no` int(20) NOT NULL,
  `photo_id` int(5) DEFAULT NULL,
  `prod_photo` blob,
  PRIMARY KEY (`serial_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct_photo`
--

/*!40000 ALTER TABLE `tblproduct_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproduct_photo` ENABLE KEYS */;


--
-- Definition of table `tblregis_photo`
--

DROP TABLE IF EXISTS `tblregis_photo`;
CREATE TABLE `tblregis_photo` (
  `serial_no` int(20) NOT NULL,
  `photo_id` int(5) DEFAULT NULL,
  `user_photo` blob,
  PRIMARY KEY (`serial_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblregis_photo`
--

/*!40000 ALTER TABLE `tblregis_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblregis_photo` ENABLE KEYS */;


--
-- Definition of table `tblregistration`
--

DROP TABLE IF EXISTS `tblregistration`;
CREATE TABLE `tblregistration` (
  `userid` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `photo_id` int(5) DEFAULT NULL,
  `mailid` varchar(40) DEFAULT NULL,
  `mobile` varchar(14) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `registerIP` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblregistration`
--

/*!40000 ALTER TABLE `tblregistration` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblregistration` ENABLE KEYS */;


--
-- Definition of table `tblshipping`
--

DROP TABLE IF EXISTS `tblshipping`;
CREATE TABLE `tblshipping` (
  `ship_id` varchar(20) NOT NULL,
  `order_id` varchar(30) DEFAULT NULL,
  `ship_address` varchar(50) DEFAULT NULL,
  `ship_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ship_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblshipping`
--

/*!40000 ALTER TABLE `tblshipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblshipping` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
