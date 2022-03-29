

-- Initial Relational Model for Friendly Cars Dealership 
CREATE DATABASE SemesterProject;
USE SemesterProject;

-- CarAd(placedIn, initialDate, totalCost, frequency, contactPerson, areaCode, 
-- phoneNumber) 
CREATE TABLE CarAd(
	`placedIn` VARCHAR(40) NOT NULL,
	`initialDate` DATE NOT NULL,
	`totalCost` DECIMAL(9,2),
	`frequency` SMALLINT,
	`contactPerson` VARCHAR(40),
	`areaCode` VARCHAR(3),
	`phoneNumber` VARCHAR(7),
	PRIMARY KEY (`placedIn`, `initialDate`)
);
 
-- CarCustomer(custId, firstName, lastName, street, city, state, zip, areaCode, 
-- phoneNumber, driversLicNo,  referredBy, adSeen)
CREATE TABLE CarCustomer(
	`custId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`firstName` VARCHAR(20),
	`lastName` VARCHAR(20),
	`street` VARCHAR(40),
	`city` VARCHAR(20),
	`state` VARCHAR(2),
	`zip` VARCHAR(5),
	`areaCode` VARCHAR(3),
	`phoneNumber` VARCHAR(7),
	`driversLicNo` VARCHAR(20),
	`referredBy` VARCHAR(20),
	`adSeen` BOOLEAN
); 
 
-- CarNewCar(VIN, make, model, listPrice, dateManufactured, placeManufactured, 
-- cylinders, doors, weight, capacity, color, delDate, delMiles) 
CREATE TABLE CarNewCar(
	VIN VARCHAR(17),
	make VARCHAR(15), 
	model VARCHAR(10), 	
	listPrice DECIMAL(9, 2), 
	dateManufactured DATE, 
	placeManufactured VARCHAR(25), 
	cylinders TINYINT unsigned, 
	doors TINYINT unsigned, 
	weight INT unsigned, 
	capacity SMALLINT unsigned, 
	color VARCHAR(15), 
	delDate DATE, 
	delMiles TINYINT,
	PRIMARY KEY (VIN)
); 
-- CarOptionsMenu(carOption, price)
CREATE TABLE CarOptionsMenu(
	carOption VARCHAR(30), 
	price DECIMAL(7,2),
	PRIMARY KEY (carOption)
);  
 
-- CarNewCar-Options(VIN, carOption) 
CREATE TABLE CarNewCarOptions(
	VIN VARCHAR(25),
	carOption VARCHAR(30),
	PRIMARY KEY (VIN, carOption)
); 
 
-- CarCustomizationMenu(customItem, price) 
CREATE TABLE CarCustomizationMenu(
	customItem VARCHAR(30), 
	price DECIMAL(7,2), 
	PRIMARY KEY(customItem)
); 
-- CarSalesperson(empId, firstName, lastName, street, city, state, zip, homeAreaCode, 
-- homePhoneNumber, office AreaCode, officePhoneNumber, cellAreaCode, 
-- cellPhoneNumber, dateHired) 
CREATE TABLE CarSalesperson(
	empId TINYINT unsigned, 
	firstName VARCHAR(15), 
	lastName VARCHAR(15), 
	street VARCHAR(40),
	city VARCHAR(15), 
	state VARCHAR(2), 
	zip VARCHAR(5), 
	homeAreaCode VARCHAR(3), 
	homePhoneNumber VARCHAR(7), 
	officeAreaCode VARCHAR(3), 
	officePhoneNumber VARCHAR(7), 
	cellAreaCode VARCHAR(3), 
	cellPhoneNumber VARCHAR(7), 
	dateHired DATE,
	PRIMARY KEY (empId)
); 

-- CarRegistration(registrationNo, plateNo, fee) 
CREATE TABLE CarRegistration(
	registrationNo VARCHAR(10), -- I am fairly sure that Registration Number and plate number are the same
	plateNo VARCHAR(8),         -- But I'll leave them seperate because the solution says to? 
	fee DECIMAL(5, 2),
	PRIMARY KEY (registrationNo)
); 
-- CarInsurance(InsPolicyNo, companyName, street, city, state, zip, AreaCode, 
-- PhoneNumber, startDate, endDate) 
CREATE TABLE CarInsurance(
	InsPolicyNo VARCHAR(20), 
	companyName VARCHAR(20), 
	street VARCHAR(40), -- needs to contain whole street address 
	city VARCHAR(15), 
	state VARCHAR(2), 
	zip VARCHAR(5), 
	AreaCode VARCHAR(3), 
	PhoneNumber VARCHAR(7), 
	startDate DATE, 
	endDate DATE,
	PRIMARY KEY(InsPolicyNo, companyName)
);
-- CarFinancing(FinPolicyNo, companyName, street, city, state, zip, AreaCode, 
-- PhoneNumber, startDate, amountFinanced, rate, numberMonths) 
CREATE TABLE CarFinancing(
	`FinPolicyNo` VARCHAR(20) NOT NULL,
	`companyName` VARCHAR(40) NOT NULL,
	`street` VARCHAR(40),
	`city` VARCHAR(15),
	`state` VARCHAR(2),
	`zip` VARCHAR(5),
	`areaCode` VARCHAR(3),
	`phoneNumber` VARCHAR(7),
	`startDate` DATE,
	`amountFinanced` DECIMAL(8,2),
	`rate` DECIMAL(8,2),
	`numberMonths` SMALLINT,
	PRIMARY KEY (`FinPolicyNo`, `companyName`)
);
-- CarWarrantee(warType, cost, period) 
CREATE TABLE CarWarrantee(
	`warType` VARCHAR(20) NOT NULL PRIMARY KEY,
	`cost` DECIMAL(6,2),
	`period` SMALLINT
);
-- CarUsed Car(VIN, make, model, cylinders, doors, weight, capacity, color, modelYear, 
-- mileage, bookValue) 
CREATE TABLE CarUsedCar(
	`VIN` VARCHAR(17) NOT NULL PRIMARY KEY,
	`make` VARCHAR(15),
	`model` VARCHAR(15),
	`cylinders` TINYINT UNSIGNED,
	`doors` TINYINT UNSIGNED,
	`weight` SMALLINT UNSIGNED,
	`capacity` TINYINT UNSIGNED,
	`color` VARCHAR(15),
	`modelYear` SMALLINT UNSIGNED,
	`mileage` MEDIUMINT UNSIGNED,
	`bookValue` DECIMAL(8,2)
);
-- CarUsedCarFeatures(VIN, feature) 
CREATE TABLE CarUsedCarFeatures(
	`VIN` VARCHAR(17) NOT NULL,
	`feature` VARCHAR(40) NOT NULL,
	PRIMARY KEY (`VIN`, `feature`)
);
-- CarSale(invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount, 
-- financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId, 
-- newCarVIN, usedCarVIN insPolNo, insCoName, finPolNo,finCoName, tradeInVIN, 
-- registrationNo, warType) 
CREATE TABLE CarSale(
	`invoiceNo` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`saleDate` DATE,
	`salePrice` DECIMAL(8,2),
	`tax` DECIMAL(8,2),
	`registrationFee` DECIMAL(6,2),
	`tradeInAmount` DECIMAL(7,2),
	`financedAmount` DECIMAL(8,2),
	`amountPaid` DECIMAL(8,2),
	`amountDue` DECIMAL(8,2),
	`commission` DECIMAL(10,2),
	`saleMiles` INT,
	`custID` INT NOT NULL,
	`empID` TINYINT UNSIGNED NOT NULL,
	`newCarVIN` VARCHAR(17),
	`usedCarVIN` VARCHAR(17),
	`InsPolNo` VARCHAR(20),
	`insCoName` VARCHAR(20),
	`FinPolNo` VARCHAR(20),
	`finCoName` VARCHAR(40),
	`tradeInVIN` VARCHAR(17),
	`registrationNo` VARCHAR(20),
	`warType` VARCHAR(10),
	FOREIGN KEY (`empID`) REFERENCES CarSalesperson(`empID`) ON UPDATE CASCADE,
	FOREIGN KEY (`custID`) REFERENCES CarCustomer(`custID`) ON UPDATE CASCADE,
	FOREIGN KEY (`newCarVIN`) REFERENCES CarNewCar(`VIN`) ON UPDATE CASCADE, -- restrict is default
	FOREIGN KEY (`usedCarVIN`) REFERENCES CarUsedCar(`VIN`) ON UPDATE CASCADE,
	FOREIGN KEY (`InsPolNo`, `insCoName`) REFERENCES CarInsurance(`InsPolicyNo`, `companyName`) ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY (`FinPolNo`, `finCoName`) REFERENCES CarFinancing(`FinPolicyNo`, `companyName`) ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY (`registrationNo`) REFERENCES CarRegistration(`registrationNo`) ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY (`warType`) REFERENCES CarWarrantee(`warType`) ON DELETE SET NULL ON UPDATE CASCADE
); 
 
-- CarSale_CustomItem(invoiceNo, customItem) 
CREATE TABLE CarSale_CustomItem(
	`invoiceNo` INT NOT NULL,
	`customItem` VARCHAR(40) NOT NULL,
	PRIMARY KEY (`invoiceNo`, `customItem`),
	FOREIGN KEY (`invoiceNo`) REFERENCES CarSale(`invoiceNo`) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (`customItem`) REFERENCES CarCustomizationMenu(`customItem`) ON DELETE CASCADE ON UPDATE CASCADE 
);
 
-- CarSurvey(surveyNumber, dealershipRating, carRating, salespersonRating, invoiceNo)
CREATE TABLE CarSurvey(
	`surveyNumber` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`dealershipRating` DECIMAL(2,1),
	`carRating` DECIMAL(2,1),
	`salespersonRating` DECIMAL(2,1),
	`invoiceNo` INT,
	FOREIGN KEY (`invoiceNo`) REFERENCES CarSale(`invoiceNo`) ON DELETE SET NULL ON UPDATE CASCADE
);
