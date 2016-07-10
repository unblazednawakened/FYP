-- phpMyAdmin SQL Dump
-- version 2.9.1.1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Jun 09, 2016 at 01:28 PM
-- Server version: 5.0.27
-- PHP Version: 5.2.0
-- 
-- Database: `fyp`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `account`
-- 

CREATE TABLE `account` (
  `account_id` int(11) NOT NULL auto_increment,
  `last_name` varchar(45) collate latin1_general_ci NOT NULL,
  `first_name` varchar(45) collate latin1_general_ci NOT NULL,
  `username` varchar(45) collate latin1_general_ci NOT NULL,
  `password` varchar(60) collate latin1_general_ci NOT NULL,
  `email` varchar(45) collate latin1_general_ci NOT NULL,
  `phone_number` varchar(45) collate latin1_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL default '1',
  `role_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  PRIMARY KEY  (`account_id`),
  KEY `fk_account_role1_idx` (`role_id`),
  KEY `fk_account_outlet1_idx` (`outlet_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=47 ;

-- 
-- Dumping data for table `account`
-- 

INSERT INTO `account` VALUES (46, 'Jing', 'Alice', 'alicejing', '5a1671818cda24664e9ebfb1733f78aa2b12ed12', 'alicejing@gmail.com', '85127533', 1, 2, 3);
INSERT INTO `account` VALUES (45, 'Boon', 'Anwar', 'anwar', '6ea4264c2ca25ce5ca5337acea7d6888d960df42', 'boon@gmail.com', '91235234', 1, 1, 0);
INSERT INTO `account` VALUES (44, 'Tan', 'Joey', 'joey', '56a580ad3befc663da709977ba17447ffa133c85', 'joey@gmail.com', '92134567', 1, 1, 0);
INSERT INTO `account` VALUES (43, 'Chua', 'Lynn', 'lynnchua', '6839fe94d54aa03348375ebbf81239d42b5ac98f', 'lynnchua@gmail.com', '83452752', 1, 1, 0);
INSERT INTO `account` VALUES (42, 'Lim', 'Amos', 'amoslim', '7ead097a1ffb349cf2d6a5cba1c3ac1261e591aa', 'amos@gmail.com', '85127533', 1, 2, 2);
INSERT INTO `account` VALUES (41, 'Tan', 'Regenia', 'regeniatan', '8ff31914451b686ba0b3425c53d34f7358e9b6e6', 'regenia@hotmail.com', '91234568', 1, 3, 0);
INSERT INTO `account` VALUES (40, 'Operator', 'Central', 'central', '233ec5bda5fa468329234788b4ee61711ea3041e', 'centraloperator@gmail.com', '93456788', 1, 3, 0);
INSERT INTO `account` VALUES (39, 'Salesperson', 'Salesperson', 'salesperson', '4cac9e7de2ee412b1da8dee4a762b376de6e2685', 'salesperson@gmail.com', '91772522', 1, 2, 4);
INSERT INTO `account` VALUES (38, 'Admin', 'Admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@gmail.com', '92235572', 1, 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `customer`
-- 

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL auto_increment,
  `last_name` varchar(45) collate latin1_general_ci NOT NULL,
  `first_name` varchar(45) collate latin1_general_ci NOT NULL,
  `username` varchar(45) collate latin1_general_ci NOT NULL,
  `password` varchar(45) collate latin1_general_ci NOT NULL,
  `email` varchar(45) collate latin1_general_ci NOT NULL,
  `phone_number` varchar(45) collate latin1_general_ci NOT NULL,
  `address` varchar(180) collate latin1_general_ci NOT NULL,
  `postalcode` varchar(45) collate latin1_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `customer`
-- 

INSERT INTO `customer` VALUES (11, 'Yi', 'Wei', 'weiyi', 'fd91203a74ff0914c021072af2e358e52e91c4fa', 'weiyi@gmail.com', '85119963', '129 Clarence Ln, Block 129 #08-12', '140129', 1);
INSERT INTO `customer` VALUES (10, 'Lim', 'Victoria', 'victorialim', 'fee92d68986cae3bbab6780f2ccfeec31222753e', 'vicotria@gmail.com', '85437654', 'Blk 538 UPPER CROSS STREET #10-29', '50538', 0);
INSERT INTO `customer` VALUES (9, 'Tan', 'Vivian', 'viviantan', '56c5c7a4b14d4503727c31594a2bcfdeeedcf168', 'vivian@gmail.com', '91234567', '153 Yishun Street 11 #02-12', '760153', 1);
INSERT INTO `customer` VALUES (8, 'One', 'Customer', 'customer', 'b39f008e318efd2bb988d724a161b61c6909677f', 'customer@gmail.com', '92455884', 'Jurong East Central, BLK 134 #13-120', '600134', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `delivery`
-- 

CREATE TABLE `delivery` (
  `delivery_address` varchar(180) collate latin1_general_ci NOT NULL,
  `delivery_postal_code` varchar(6) collate latin1_general_ci NOT NULL,
  `delivery_id` int(11) NOT NULL auto_increment,
  `status_id` int(11) NOT NULL,
  `timeslot_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY  (`delivery_id`),
  KEY `fk_delivery_zone1_idx` (`zone_id`),
  KEY `fk_delivery_timeslot1_idx` (`timeslot_id`),
  KEY `fk_delivery_driver1_idx` (`driver_id`),
  KEY `fk_delivery_account1_idx` (`account_id`),
  KEY `fk_delivery_outlet1_idx` (`outlet_id`),
  KEY `fk_delivery_status1_idx` (`status_id`),
  KEY `fk_delivery_customer1_idx` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `delivery`
-- 

INSERT INTO `delivery` VALUES ('153 Yishun Street 11 #02-12', '760153', 6, 1, 1, 0, 39, 1, 4, '2016-06-11', 9);
INSERT INTO `delivery` VALUES ('153 Yishun Street 11 #02-12', '760153', 10, 1, 1, 0, 42, 1, 2, '2016-06-11', 9);

-- --------------------------------------------------------

-- 
-- Table structure for table `driver`
-- 

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL auto_increment,
  `driver_name` varchar(45) collate latin1_general_ci NOT NULL,
  `password` varchar(45) collate latin1_general_ci NOT NULL,
  `phone_number` varchar(45) collate latin1_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`driver_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=15 ;

-- 
-- Dumping data for table `driver`
-- 

INSERT INTO `driver` VALUES (13, 'driver', 'fdda0c46f953c1a45bdc520849be1e4edf4e228c', '91487263', 1);
INSERT INTO `driver` VALUES (14, 'kenny', '1bb8649a5ca2388333c2c19ae84b380b9c8efe0a', '87698652', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `outlet`
-- 

CREATE TABLE `outlet` (
  `outlet_id` int(11) NOT NULL auto_increment,
  `outlet_name` varchar(45) collate latin1_general_ci NOT NULL,
  `outlet_address` varchar(180) collate latin1_general_ci NOT NULL,
  `outlet_postal_code` varchar(6) collate latin1_general_ci NOT NULL,
  `outlet_phone_number` int(8) NOT NULL,
  `active` tinyint(1) NOT NULL default '1',
  PRIMARY KEY  (`outlet_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `outlet`
-- 

INSERT INTO `outlet` VALUES (1, 'Northpoint', '930 Yishun Ave 2  #03-61 to 67  Northpoint Shopping Centre', '576909', 67577695, 1);
INSERT INTO `outlet` VALUES (2, 'Raffles City', 'Raffles City Shopping Centre 252 North Bridge', '179103', 63396777, 1);
INSERT INTO `outlet` VALUES (3, 'Vivo', '109 North Bridge Road Funan Digitalife Mall, ', '179097', 63345432, 1);
INSERT INTO `outlet` VALUES (4, 'Woodlands', '1 Woodlands Square', '738099', 62195462, 1);
INSERT INTO `outlet` VALUES (5, 'Jurong Point', '1 Jurong West Central 3, #03-34 to 39', '648886', 67952135, 1);
INSERT INTO `outlet` VALUES (6, 'Bedok Point', '799 New Upper Changi Road,  #B1-01/02, #B1-16/32 and #B1-K1/K14', '467351', 64467218, 1);
INSERT INTO `outlet` VALUES (7, 'Kallang Wave', '1 Stadium Place, #02-09/10 ', '397628', 67025171, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `postalcode`
-- 

CREATE TABLE `postalcode` (
  `postalcode_id` int(11) NOT NULL auto_increment,
  `identify_first_2_no` varchar(45) collate latin1_general_ci NOT NULL,
  `zone_id` int(11) NOT NULL,
  PRIMARY KEY  (`postalcode_id`),
  KEY `fk_postalcode_zone1_idx` (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `postalcode`
-- 

INSERT INTO `postalcode` VALUES (1, '76', 1);
INSERT INTO `postalcode` VALUES (2, '50', 2);
INSERT INTO `postalcode` VALUES (3, '14', 3);
INSERT INTO `postalcode` VALUES (4, '60', 4);

-- --------------------------------------------------------

-- 
-- Table structure for table `role`
-- 

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL auto_increment,
  `role_name` varchar(45) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `role`
-- 

INSERT INTO `role` VALUES (1, 'admin');
INSERT INTO `role` VALUES (2, 'salesperson');
INSERT INTO `role` VALUES (3, 'central operator');
INSERT INTO `role` VALUES (4, 'customers');
INSERT INTO `role` VALUES (5, 'driver');

-- --------------------------------------------------------

-- 
-- Table structure for table `status`
-- 

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL auto_increment,
  `status_name` varchar(45) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `status`
-- 

INSERT INTO `status` VALUES (1, 'Created');
INSERT INTO `status` VALUES (2, 'Assigned');
INSERT INTO `status` VALUES (3, 'Completed');
INSERT INTO `status` VALUES (4, 'Failed');

-- --------------------------------------------------------

-- 
-- Table structure for table `timeslot`
-- 

CREATE TABLE `timeslot` (
  `timeslot_id` int(11) NOT NULL auto_increment,
  `timeslot_name` varchar(45) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`timeslot_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `timeslot`
-- 

INSERT INTO `timeslot` VALUES (1, 'Morning');
INSERT INTO `timeslot` VALUES (2, 'Afternoon');
INSERT INTO `timeslot` VALUES (3, 'Night');

-- --------------------------------------------------------

-- 
-- Table structure for table `zone`
-- 

CREATE TABLE `zone` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_name` varchar(45) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `zone`
-- 

INSERT INTO `zone` VALUES (1, 'North');
INSERT INTO `zone` VALUES (2, 'South');
INSERT INTO `zone` VALUES (3, 'East');
INSERT INTO `zone` VALUES (4, 'West');

-- --------------------------------------------------------

-- 
-- Table structure for table `zone_availability`
-- 

CREATE TABLE `zone_availability` (
  `zone_availability_id` int(11) NOT NULL auto_increment,
  `availability` int(11) NOT NULL,
  `timeslot_id` varchar(45) collate latin1_general_ci NOT NULL,
  `zone_id` int(11) NOT NULL,
  PRIMARY KEY  (`zone_availability_id`),
  KEY `fk_zone_availability_zone1_idx` (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `zone_availability`
-- 

INSERT INTO `zone_availability` VALUES (1, 5, '1', 1);
INSERT INTO `zone_availability` VALUES (2, 5, '2', 1);
INSERT INTO `zone_availability` VALUES (3, 5, '3', 1);
INSERT INTO `zone_availability` VALUES (4, 5, '1', 1);
INSERT INTO `zone_availability` VALUES (5, 5, '2', 1);
INSERT INTO `zone_availability` VALUES (6, 5, '3', 1);
