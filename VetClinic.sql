Drop database if exists VetClinicDB;
Show databases;
create database VetClinicDB CHARACTER SET utf8 COLLATE UTF8_GENERAL_CI ;

Drop table if exists medication
Show databases;
Use VetClinicDB;

create table medication(
  medicationNum tinyint unsigned NOT NULL auto_increment,
  name varchar(45) NOT NULL,
  description varchar(45) NOT NULL,
  price DECIMAL(6,2) NOT NULL,
  cause varchar(45) NOT NULL,
  primary key (medicationNum)
) Engine=InnoDB;

INSERT INTO medication VALUES(1,'zertec','1ml per 50kb twice daily', 12.50, 'scour'),(2,'Drontal','2ml per 50kb Once daily', 15.00, 'rabbies'),(3,'Seresto','Apply twice daily', 10.00, 'Fela and tick');

Drop table if exists food;
Show databases;
Use VetClinicDB;

create table food(
  foodNum tinyint unsigned NOT NULL auto_increment,
  foodType ENUM('dog', 'cat'),
  suplier varchar(45) NOT NULL,
  sizeFood varchar(45) NOT NULL,
  price DECIMAL(6,2) NOT NULL,
  QuantityinStock varchar(45) NOT NULL,
  foodImage LONGBLOB DEFAULT NULL,           # Picture in DATABASE as BLOB (up to 4.2GB)
  Picture_Path varchar(200) DEFAULT NULL,   # Path to where picture is stored in file system
  primary key (foodNum)
) Engine=InnoDB;

INSERT INTO food VALUES(1,'dog','doggy', '3 bags', 15.00, '10', 
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/dogFood.jpg'),'/dogFood.jpg'),
(2,'cat','Kats', '10 bags', 30.00, '10', 
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/dogFood.jpg'),'/dogFood.jpg'),
(3,'dog','much', '15 bags', 20.00, '10', 
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/dogFood.jpg'),'/dogFood.jpg');

Drop table if exists staff;
Show databases;
Use VetClinicDB;

create table staff(
  staffNum tinyint unsigned NOT NULL auto_increment,
  name varchar(45) NOT NULL,
  address varchar(45) NOT NULL,
  bio varchar(45) NOT NULL,
  salary DECIMAL(6,2) NOT NULL,
  iban varchar(45) NOT NULL,
  staffImage LONGBLOB DEFAULT NULL,           # Picture in DATABASE as BLOB (up to 4.2GB)
  Picture_Path varchar(200) DEFAULT NULL,   # Path to where picture is stored in file system
  primary key (staffNum)
) Engine=InnoDB;


INSERT INTO staff VALUES(1, 'ronan', 'edgeworthstown', 'Staff', 500.00, '1888-iban',
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/staff-6-16.png'),'/staff-6-16.png'),
(2, 'sean', 'edgeworthstown', 'Staff', 500.00, '1777-iban',
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/staff-6-16.png'),'/staff-6-16.png'),
(3, 'eoghan', 'edgeworthstown', 'Staff', 500.00, '1666-iban',
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/staff-6-16.png'),'/staff-6-16.png');

Drop table if exists petOwners;
Show databases;
Use VetClinicDB;

create table petOwners(
  petOwnersNum tinyint unsigned NOT NULL auto_increment,
  name varchar(45) NOT NULL,
  address varchar(45) NOT NULL,
  ccDetails varchar(45) NOT NULL,
  pets varchar(45) NOT NULL,
  petOwnerImage LONGBLOB DEFAULT NULL,           # Picture in DATABASE as BLOB (up to 4.2GB)
  Picture_Path varchar(200) DEFAULT NULL,   # Path to where picture is stored in file system
  primary key (petOwnersNum)
) Engine=InnoDB;


INSERT INTO petOwners VALUES(1,'sinead','Longford', '4319-3200-1876-0098','Golden-retriever',
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/petOwnerImg.png'),'/petOwnerImg.png'),
(2,'maria','Dublin', '4319-3200-1876-0056','Rotwiler',
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/petOwnerImg.png'),'/petOwnerImg.png'),
(3,'orla','Galway', '4319-3200-1876-0056','Labrador',
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/petOwnerImg.png'),'/petOwnerImg.png');

Drop table if exists billing;
Show databases;
Use VetClinicDBB;

create table billing(
  billId tinyint unsigned NOT NULL auto_increment,
  name varchar(45) NOT NULL,
  appDate date NOT NULL,
  method ENUM('Cash','Revolut','cheque','Credit Card'),
  paymentStatus ENUM('full', 'partial'),
  cost DECIMAL(6,2) NOT NULL,
  primary key (billId)
) Engine=InnoDB; 


INSERT INTO billing VALUES(1,'Sinead','2021-01-01','Cash','full',50.00),(2,'Maria','2021-01-01','Revolut','full',100.00),(3,'orla','2021-01-01','Credit card','partial',100.00);


Drop table if exists appointment;
Show databases;
Use VetClinicDB;

create table appointment(
  appointmentNum tinyint unsigned NOT NULL auto_increment,
  medicationNum tinyint unsigned NOT NULL,
  staffNum tinyint unsigned NOT NULL,
  appointmentDateTime datetime NOT NULL,
  location varchar(45) NOT NULL,
  vet varchar(45) NOT NULL,
  symptoms varchar(45) NOT NULL,
  diagnosis varchar(45) NOT NULL,
  medication varchar(45) NOT NULL,
  primary key (appointmentNum),
  FOREIGN KEY (medicationNum) REFERENCES medication(medicationNum),
  FOREIGN KEY (staffNum) REFERENCES staff(staffNum)
) Engine=InnoDB;


INSERT INTO appointment VALUES(1,1,1,'2004-05-23T14:25:10','Longford','McGrath','Scour','flu','Drontal'),(2,2,2,'2004-05-23T14:25:10','Longford','McGrath','Scour','rabbies','Seresto');

Use VetClinicDB;
Show tables;
Drop table if exists AnimalDetails;

create table AnimalDetails (
  animalNum tinyint unsigned NOT NULL auto_increment,
  petOwnersNum tinyint unsigned NOT NULL,
  medicationNum tinyint unsigned NOT NULL,
  foodNum tinyint unsigned NOT NULL,
  name varchar(45) NOT NULL, 
  breed varchar(45) NOT NULL,
  gender varchar(45) NOT NULL,
  address varchar(45) NOT NULL,
  appointmentNum tinyint unsigned NOT NULL,
  DOB date NOT NULL,
  weight varchar(45) NOT NULL,
  billId tinyint unsigned NOT NULL,
  animalImage LONGBLOB DEFAULT NULL,           # Picture in DATABASE as BLOB (up to 4.2GB)
  Picture_Path varchar(200) DEFAULT NULL,   # Path to where picture is stored in file system
  PRIMARY KEY (animalNum),
  FOREIGN KEY (appointmentNum) REFERENCES appointment(appointmentNum),
  FOREIGN KEY (billId) REFERENCES billing(billId),
  FOREIGN KEY (petOwnersNum) REFERENCES petOwners(petOwnersNum),
  FOREIGN KEY (medicationNum) REFERENCES medication(medicationNum),
  FOREIGN KEY (foodNum) REFERENCES food(foodNum)
 ) Engine=InnoDB;
   

Insert into animalDetails values (1,1,1,1, 'jasper', 'golden retriever', 'Male', 'Longford', 1,'2000-02-23', '20kg', 1,
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/Golden-retriever-dog-breed.jpg'),'/Golden-retriever-dog-breed.jpg');
Insert into animalDetails values (2,2,2,2, 'rodge', 'Labrador', 'female', 'Dublin', 2,'2000-02-23', '20kg', 2,
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/Golden-retriever-dog-breed.jpg'),'/Golden-retriever-dog-breed.jpg');
Insert into animalDetails values (3,3,3,3, 'Doge', 'Rotwiler', 'male', 'Dublin', 2,'2000-01-23', '20kg', 3,
load_file('C:/Users/ronan/OneDrive - Atlantic TU/Year Three/Semester Two/Database/Golden-retriever-dog-breed.jpg'),'/Golden-retriever-dog-breed.jpg');
show warnings;