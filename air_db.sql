--phpMyAdmin SQL Dump
--version 5.1.1
--https://www.phpmyadmin.net./
--
--Host: 127.0.0.1
--Generation Time:Mar 10, 2023 at 12:40 PM
--Server version: 10.4.19-MariaDB
--PHP Version: 8.0.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET 
@OLD_CHARECTER_SET_CLIENT=@@CHARECTER_SET_CLIENT*/;
/*!40101 SET
@OLD_CHARECTER_SET_RESULTS=@@CHARECTER_SET_RESULTS*/;
/*!40101 SET
@@OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION*/;
/!40101 SET NAMES air taxi management system/;

--
--Database: 'air_db'
--


--
-------------------------------------------------
----

--
--Table structure for table 'admin'
--
create database if not exists air_db;
use air_db;
CREATE TABLE IF NOT EXIST 'admin'(
'v_id' int(222) NOT NULL AUTO_INCREMENT,
'aimage' varchar(222) NOT NULL,
'atype' varchar(222) NOT NULL,
'seat' varchar(222) NOT NULL,
'price' varchar(222) NOT NULL,
'atext' text NOT NULL,
'location' varchar(222) NOT NULL,
'comfort' varchar(222) NOT NULL,
'charge' varchar(222),NOT NULL,
'fuel' varchar(222),NOT NULL,
'gps' varchar(222),NOT NULL,
'safety' varchar(222),NOT NULL,
'time' varchar(222),NOT NULL,
PRIMARY KEY('v_id') 
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=30;

INSERT into 'admin'('v_id','aimage','atype','seat','price','atext','location','comfort','charge','fuel','gps','safety','time') VALUES
(1,'volocopter.jpg','volocopter','2','Rs.499 per hour','electric','yes','autopilot','yes'),
(2,'13_seater_heli.jpg','helicopter','13','Rs.499 per hour','electric/aviation_gas','yes','airbags/emergency_door_with_parachutes','yes');

CREATE TABLE IF NOT EXISTS 'admin_dir'(
'b_id' int(222) NOT NULL AUTO_INCREMENT,
'username' varchar(222) NOT NULL,
'password' varchar(222) NOT NULL,
PRIMARY KEY('a_id')
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

INSERT INTO 'admin_dir'('a_id','username','password')VALUES
(1,'admin','admin');

-- ----------------------------------------------------

--
-- Table structure for table 'contact'
--
CREATE TABLE IF NOT EXISTS 'contact' (
'id' int(222) NOT NULL AUTO_INCREMENT,
'name' varchar(222) NOT NULL,
'email' varchar(222) NOT NULL,
'phone' varchar(222) NOT NULL,
'Message' varchar(222) NOT NULL,
PRIMARY KEY ('id') 
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=5;

-- ----------------------------------------------------

--
-- Tabel struceture for table 'personal'
--

CREATE TABLE IF NOT EXISTS 'personal' (
'p_id' int(11) NOT NULL AUTO_INCREMENT,
'pickup' varchar(222) NOT NULL,
'dropoff' varchar(222) NOT NULL,
'phone' int(222) NOT NULL,
'first' varchar(222) NOT NULL,
'mid' varchar(222) NOT NULL,
'last' varchar(222) NOT NULL,
'message' text NOT NULL,
'UPI_transaction_ID' int(12) NOT NULL,
'Reference_ID' int(12) NOT NULL,
'UTR_Number' int(12) NOT NULL,
'message' text NOT NULL,
PRIMARY KEY('p_id')
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26;

--
--Dumping data for table 'personal'
--

INSERT INTO 'personal' ('p_id','pickup','dropoff','phone','first','mid','last','UPI_transaction_ID','Reference_ID','UTR_Number','message')VALUES
(3,'MYSORE','NEW YORK','1234567891','Hrishikesh','V','Chaithanya','2345678901','3456789012','NA','nice service with software'),
(4,'MYSORE','LIVERPOOL',2345678901','Chirag','J','Rao','1234567891','4567890123','NA','good service');

-- --------------------------------------------------------

--
-- Table structure for table 'user_info'
--

CREATE TABLE IF NOT EXISTS 'user_info' (
'id' int(222) NOT NULL AUTO_INCREMENT,
'name' varchar(222) NOT NULL,
'email' varchar(222) NOT NULL,
'Dfrom' varchar(222) NOT NULL,
'Dto' varchar(222) NOT NULL,
'date' varchar(222) NOT NULL,
'time' varchar(222) NOT NULL,
'text' text NOT NULL,
'pack' varchar(222) NOT NULL,
PRIMARY KEY ('id')
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;