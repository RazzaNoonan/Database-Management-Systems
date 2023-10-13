
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


DROP TABLE IF EXISTS `animaldetails`;
CREATE TABLE IF NOT EXISTS `animaldetails` (
  `animalNum` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `petOwnersNum` tinyint(3) UNSIGNED NOT NULL,
  `medicationNum` tinyint(3) UNSIGNED NOT NULL,
  `foodNum` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `breed` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `appointmentNum` tinyint(3) UNSIGNED NOT NULL,
  `DOB` date NOT NULL,
  `weight` varchar(45) NOT NULL,
  `billId` tinyint(3) UNSIGNED NOT NULL,
  `animalImage` longblob,
  `Picture_Path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`animalNum`),
  KEY `appointmentNum` (`appointmentNum`),
  KEY `billId` (`billId`),
  KEY `petOwnersNum` (`petOwnersNum`),
  KEY `medicationNum` (`medicationNum`),
  KEY `foodNum` (`foodNum`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO `animaldetails` (`animalNum`, `petOwnersNum`, `medicationNum`, `foodNum`, `name`, `breed`, `gender`, `address`, `appointmentNum`, `DOB`, `weight`, `billId`, `animalImage`, `Picture_Path`) VALUES
(1, 1, 1, 1, 'jasper', 'golden retriever', 'Male', 'Longford', 1, '2000-02-23', '20kg', 1, NULL, '/Golden-retriever-dog-breed.jpg'),
(2, 2, 2, 2, 'rodge', 'Labrador', 'female', 'Dublin', 2, '2000-02-23', '20kg', 2, NULL, '/Labrador-dog-breed.jpg'),
(3, 3, 3, 3, 'Doge', 'Rotwiler', 'male', 'Dublin', 2, '2000-01-23', '20kg', 3, NULL, '/Rottweiler-dog-breed.jpg');



DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appointmentNum` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `medicationNum` tinyint(3) UNSIGNED NOT NULL,
  `staffNum` tinyint(3) UNSIGNED NOT NULL,
  `appointmentDateTime` datetime NOT NULL,
  `location` varchar(45) NOT NULL,
  `vet` varchar(45) NOT NULL,
  `symptoms` varchar(45) NOT NULL,
  `diagnosis` varchar(45) NOT NULL,
  `medication` varchar(45) NOT NULL,
  PRIMARY KEY (`appointmentNum`),
  KEY `medicationNum` (`medicationNum`),
  KEY `staffNum` (`staffNum`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



INSERT INTO `appointment` (`appointmentNum`, `medicationNum`, `staffNum`, `appointmentDateTime`, `location`, `vet`, `symptoms`, `diagnosis`, `medication`) VALUES
(1, 1, 1, '2004-05-23 14:25:10', 'Longford', 'McGrath', 'Scour', 'flu', 'Drontal'),
(2, 2, 2, '2004-05-23 14:25:10', 'Longford', 'McGrath', 'Scour', 'rabbies', 'Seresto');



DROP TABLE IF EXISTS `billing`;
CREATE TABLE IF NOT EXISTS `billing` (
  `billId` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `appDate` date NOT NULL,
  `method` enum('Cash','Revolut','cheque','Credit Card') DEFAULT NULL,
  `paymentStatus` enum('full','partial') DEFAULT NULL,
  `cost` decimal(6,2) NOT NULL,
  PRIMARY KEY (`billId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO `billing` (`billId`, `name`, `appDate`, `method`, `paymentStatus`, `cost`) VALUES
(1, 'Sinead', '2021-01-01', 'Cash', 'full', '50.00'),
(2, 'Maria', '2021-01-01', 'Revolut', 'full', '100.00'),
(3, 'orla', '2021-01-01', 'Credit Card', 'partial', '100.00');



DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `foodNum` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `foodType` enum('dog','cat') DEFAULT NULL,
  `suplier` varchar(45) NOT NULL,
  `sizeFood` varchar(45) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `QuantityinStock` varchar(45) NOT NULL,
  `foodImage` longblob,
  `Picture_Path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`foodNum`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO `food` (`foodNum`, `foodType`, `suplier`, `sizeFood`, `price`, `QuantityinStock`, `foodImage`, `Picture_Path`) VALUES
(1, 'dog', 'doggy', '3 bags', '15.00', '10', NULL, '/dogFood.jpg'),
(2, 'cat', 'Kats', '10 bags', '30.00', '10', NULL, '/dogFood.jpg'),
(3, 'dog', 'much', '15 bags', '20.00', '10', NULL, '/dogFood.jpg');


DROP TABLE IF EXISTS `medication`;
CREATE TABLE IF NOT EXISTS `medication` (
  `medicationNum` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `cause` varchar(45) NOT NULL,
  PRIMARY KEY (`medicationNum`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO `medication` (`medicationNum`, `name`, `description`, `price`, `cause`) VALUES
(1, 'zertec', '1ml per 50kb twice daily', '12.50', 'scour'),
(2, 'Drontal', '2ml per 50kb Once daily', '15.00', 'rabbies'),
(3, 'Seresto', 'Apply twice daily', '10.00', 'Fela and tick');



DROP TABLE IF EXISTS `petowners`;
CREATE TABLE IF NOT EXISTS `petowners` (
  `petOwnersNum` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `ccDetails` varchar(45) NOT NULL,
  `pets` varchar(45) NOT NULL,
  `petOwnerImage` longblob,
  `Picture_Path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`petOwnersNum`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO `petowners` (`petOwnersNum`, `name`, `address`, `ccDetails`, `pets`, `petOwnerImage`, `Picture_Path`) VALUES
(1, 'sinead', 'Longford', '4319-3200-1876-0098', 'Golden-retriever', NULL, '/petOwnerImg.png'),
(2, 'maria', 'Dublin', '4319-3200-1876-0056', 'Rotwiler', NULL, '/petOwnerImg.png'),
(3, 'orla', 'Galway', '4319-3200-1876-0056', 'Labrador', NULL, '/petOwnerImg.png');



DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `staffNum` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `bio` varchar(45) NOT NULL,
  `salary` decimal(6,2) NOT NULL,
  `iban` varchar(45) NOT NULL,
  `staffImage` longblob,
  `Picture_Path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`staffNum`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;



INSERT INTO `staff` (`staffNum`, `name`, `address`, `bio`, `salary`, `iban`, `staffImage`, `Picture_Path`) VALUES
(1, 'ronan', 'edgeworthstown', 'Staff', '500.00', '1888-iban', NULL, '/staff-6-16.png'),
(2, 'sean', 'edgeworthstown', 'Staff', '500.00', '1777-iban', NULL, '/staff-6-16.png'),
(3, 'eoghan', 'edgeworthstown', 'Staff', '500.00', '1666-iban', NULL, '/staff-6-16.png');


ALTER TABLE `animaldetails`
  ADD CONSTRAINT `animaldetails_ibfk_1` FOREIGN KEY (`appointmentNum`) REFERENCES `appointment` (`appointmentNum`),
  ADD CONSTRAINT `animaldetails_ibfk_2` FOREIGN KEY (`billId`) REFERENCES `billing` (`billId`),
  ADD CONSTRAINT `animaldetails_ibfk_3` FOREIGN KEY (`petOwnersNum`) REFERENCES `petowners` (`petOwnersNum`),
  ADD CONSTRAINT `animaldetails_ibfk_4` FOREIGN KEY (`medicationNum`) REFERENCES `medication` (`medicationNum`),
  ADD CONSTRAINT `animaldetails_ibfk_5` FOREIGN KEY (`foodNum`) REFERENCES `food` (`foodNum`);


ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`medicationNum`) REFERENCES `medication` (`medicationNum`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`staffNum`) REFERENCES `staff` (`staffNum`);
COMMIT;


