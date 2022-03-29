-- Car Ad
INSERT INTO CarAd VALUES('Lakeland Ledger', '2021-10-26', 600.75, 10, 'Jim Friendly', '775', '8675309');
INSERT INTO CarAd VALUES('Detroit News', '2019-10-18', 12000.12, 10, 'Jim Friendly', '775', '8675309');
INSERT INTO CarAd VALUES('New York Times', '2001-8-17', 180.50, 10, 'Jim Friendly', '775', '8675309');
INSERT INTO CarAd VALUES('Channel 5 News', '2020-11-29', 3000, 100, 'Sally Friendly', '775', '8675310');
INSERT INTO CarAd VALUES('Super Bowl', '2015-2-1', 1500000.01, 1, 'Jim Friendly', '775', '8675309');

-- Car Customer
INSERT INTO CarCustomer VALUES(1000, 'Joe', 'Schmo', '2000 Ingraham Ave', 'Lakeland', 'FL', '33801', '863', '1234567', '7823134', 'Lakeland Ledger', 1);
INSERT INTO CarCustomer(firstName, lastName, street, city, `state`, zip, areaCode, phoneNumber) 
    VALUES('Jane', 'Schmo', '2000 Ingraham Ave', 'Lakeland', 'FL', '33801', '863', '7361528');
INSERT INTO CarCustomer(firstName, lastName, street, city, `state`, zip, areaCode, phoneNumber) 
    VALUES('Henry', 'Ford', '1780 Massachusetts Ave', 'Lakeland', 'FL', '33801', '863', '9674283');
INSERT INTO CarCustomer(firstName, lastName, street, city, `state`, zip, areaCode, phoneNumber) 
    VALUES('Hiro', 'Protagonist', '3300 Florida S Ave', 'Lakeland', 'FL', '33801', '863', '8362718');
INSERT INTO CarCustomer(firstName, lastName, street, city, `state`, zip, areaCode, phoneNumber) 
    VALUES('John', 'Pond', '1234 Socrum Loop', 'Lakeland', 'FL', '33801', '863', '5558271');

-- New Car
INSERT INTO CarNewCar VALUES('3VW2K7AJ2EM236699', 'Honda', 'Civic', 21250, '2020-10-15', 'Honda Plant', 4, 4, 3000, 5, 'red', '2021-5-28', 2);
INSERT INTO CarNewCar VALUES('1LNHM87A55Y632680', 'Honda', 'Civic', 22250, '2020-10-18', 'Honda Plant', 4, 4, 2950, 5, 'black', '2021-5-28', 1);
INSERT INTO CarNewCar VALUES('1N4AL11D35C314806', 'Honda', 'Civic', 28250, '2020-10-11', 'Honda Plant', 4, 4, 3050, 5, 'rainbow', '2021-5-28', 0);
INSERT INTO CarNewCar VALUES('WBAAZ33455KP91600', 'Honda', 'Pilot', 30000, '2020-8-15', 'Honda Plant', 4, 4, 3500, 6, 'green', '2021-5-28', 3);
INSERT INTO CarNewCar VALUES('JTEES41A782048735', 'Honda', 'Accord', 20000, '2020-9-20', 'Honda Plant', 4, 4, 2500, 5, 'orange', '2021-5-28', 5);

-- Car Options Menu
INSERT INTO CarOptionsMenu VALUES('Premuim Surround Sound', 500.50);
INSERT INTO CarOptionsMenu VALUES('Tinted Windows', 1025.69);
INSERT INTO CarOptionsMenu VALUES('Heated Seats', 100);
INSERT INTO CarOptionsMenu VALUES('4 Wheel Drive', 2000.22);
INSERT INTO CarOptionsMenu VALUES('Sun Roof', 1500.56);

-- New Car Options
INSERT INTO CarNewCarOptions VALUES('1N4AL11D35C314806', 'Premium Surround Sound');
INSERT INTO CarNewCarOptions VALUES('1N4AL11D35C314806', 'Tinted Windows');
INSERT INTO CarNewCarOptions VALUES('WBAAZ33455KP91600', '4 Wheel Drive');
INSERT INTO CarNewCarOptions VALUES('JTEES41A782048735', 'Sun Roof');
INSERT INTO CarNewCarOptions VALUES('3VW2K7AJ2EM236699', 'Heated Seats');

-- Car Customization Menu
INSERT INTO CarCustomizationMenu VALUES('Carbon Fiber Spoiler', 750);
INSERT INTO CarCustomizationMenu VALUES('Tinted Rear Window', 1000);
INSERT INTO CarCustomizationMenu VALUES('Tinted Front Window', 2000);
INSERT INTO CarCustomizationMenu VALUES('4WD', 1500);
INSERT INTO CarCustomizationMenu VALUES('Sun Roof', 2500);

-- Car Salesperson
INSERT INTO CarSalesperson VALUES(1, 'Sean', 'Hout', 'Partridge Ln', 'Winter Haven', 'FL', '33801', '863', '9382617', '775', '8675308', '978', '6186451', '2019-7-18');
INSERT INTO CarSalesperson VALUES(2, 'Jenny', 'Hout', 'Partridge Ln', 'Winter Haven', 'FL', '33801', '863', '9387463', '775', '8675301', '978', '6187461', '2019-8-14');
INSERT INTO CarSalesperson VALUES(3, 'Jill', 'Bill', 'Massachusetts', 'Winter Haven', 'FL', '33801', '863', '9389921', '775', '8675309', '978', '6186471', '2016-10-18');
INSERT INTO CarSalesperson VALUES(4, 'Jack', 'Henry', 'Singer Ave', 'Lakeland', 'FL', '33803', '863', '9576253', '775', '8675617', '742', '9965412', '2019-10-18');
INSERT INTO CarSalesperson VALUES(5, 'Seamus', 'Knight', 'Alabaster', 'Tampa', 'FL', '33601', '625', '7562647', '775', '8675306', '764', '8674518', '2021-5-19');


-- Car Registration
INSERT INTO CarRegistration VALUES('7777777777', 'ABC 123D', 5.50);
INSERT INTO CarRegistration VALUES('6385961738', 'HVE THE6', 40.50);
INSERT INTO CarRegistration VALUES('9562718294', 'MYA SSHR', 15.50);
INSERT INTO CarRegistration VALUES('7459192847', 'HON DASR', 70.10);
INSERT INTO CarRegistration VALUES('7562819832', 'SHA VE54', 12.12);

-- Car Insurance
INSERT INTO CarInsurance VALUES('99945138432', 'Geico', '3615 Florida Ave S Suite 910', 'Lakeland', 'FL', '33803', '863', '4007460', '2018-6-15', '2023-6-15');
INSERT INTO CarInsurance VALUES('75616172747', 'Geico', '3615 Florida Ave S Suite 910', 'Lakeland', 'FL', '33803', '863', '4007460', '2019-6-15', '2024-6-15');
INSERT INTO CarInsurance VALUES('93826172844', 'Geico', '3615 Florida Ave S Suite 910', 'Lakeland', 'FL', '33803', '863', '4007460', '2020-6-15', '2025-6-15');
INSERT INTO CarInsurance VALUES('74718284757', 'Heacock Insurance', '100 E Main St', 'Lakeland', 'FL', '33801', '863', '6832228', '2021-5-28', '2026-5-28');
INSERT INTO CarInsurance VALUES('75616718328', 'Heacock Insurance', '100 E Main St', 'Lakeland', 'FL', '33801', '863', '6832228', '2021-2-3', '2031-2-3');

-- Car Financing
INSERT INTO CarFinancing VALUES('89854721548', 'MidFlorida Credit Union', '129 S Kentucky Ave Ste. 100', 'Lakeland', 'FL', '33801', '863', '6883733', '2021-11-4', 20000, 277.77, 72);
INSERT INTO CarFinancing VALUES('77567173646', 'MidFlorida Credit Union', '129 S Kentucky Ave Ste. 100', 'Lakeland', 'FL', '33801', '863', '6883733', '2021-11-5', 33000, 460.15, 72);
INSERT INTO CarFinancing VALUES('57261637547', 'MidFlorida Credit Union', '129 S Kentucky Ave Ste. 100', 'Lakeland', 'FL', '33801', '863', '6883733', '2021-11-6', 50000, 645.15, 72);
INSERT INTO CarFinancing VALUES('74627218485', 'MidFlorida Credit Union', '129 S Kentucky Ave Ste. 100', 'Lakeland', 'FL', '33801', '863', '6883733', '2021-11-7', 70000, 845.15, 72);
INSERT INTO CarFinancing VALUES('87581819394', 'MidFlorida Credit Union', '129 S Kentucky Ave Ste. 100', 'Lakeland', 'FL', '33801', '863', '6883733', '2021-11-8', 90000, 1045.15, 72);

-- Car Warrantee
INSERT INTO CarWarrantee VALUES('Extended', 400, 5);
INSERT INTO CarWarrantee VALUES('Standard', 300, 3);
INSERT INTO CarWarrantee VALUES('Minimal', 250, 2);
INSERT INTO CarWarrantee VALUES('Barebone', 150, 1);
INSERT INTO CarWarrantee VALUES('Super', 1000, 10);

-- Car Used Car
INSERT INTO CarUsedCar VALUES('JH4CC2550NC003182', 'Acura', 'Vigor', 4, 4, 2300, 5, 'White', 1992, 15000, 2000.00);
INSERT INTO CarUsedCar VALUES('WA1LKAFP1AA007546', 'Audi', 'Q5', 4, 4, 2500, 5, 'White', 2010, 3000, 2500.00);
INSERT INTO CarUsedCar VALUES('JH4KA8270MC000405', 'Acura', 'Legend', 4, 4, 2000, 5, 'Black', 1991, 45000, 200.00);
INSERT INTO CarUsedCar VALUES('1GTEK19RXVE536195', 'GMC', 'Sierra 1500', 8, 4, 4000, 6, 'Grey', 1997, 10000, 1000.00);
INSERT INTO CarUsedCar VALUES('2B3ED56F5RH142129', 'Dodge', 'Intrepid', 4, 4, 3000, 5, 'Blue', 1994, 6400, 5000.00);

-- Car Used Car Features
INSERT INTO CarUsedCarFeatures VALUES('JH4CC2550NC003182', 'Tinted Windows');
INSERT INTO CarUsedCarFeatures VALUES('2B3ED56F5RH142129', 'Tinted Windows');
INSERT INTO CarUsedCarFeatures VALUES('JH4CC2550NC003182', 'Premium Surround Sound');
INSERT INTO CarUsedCarFeatures VALUES('JH4CC2550NC003182', 'Heated Seats');
INSERT INTO CarUsedCarFeatures VALUES('2B3ED56F5RH142129', '4 Wheel Drive');

-- Car Sale
INSERT INTO CarSale VALUES(1000, '2021-11-5', 33152.50, 312.00, 100, 2000, 30000.00, 30000.00, 5464.50, 1300.00, 0, 1000, 1, '1N4AL11D35C314806', NULL, '99945138432', 'Geico', '89854721548', 'MidFlorida Credit Union', 'JH4CC2550NC003182', '7777777777', 'Extended');
INSERT INTO CarSale VALUES(1001, '2021-11-6', 35162.60, 352.00, 150, 0, 33000.00, 33000.00, 2162.60, 1400.00, 5, 1001, 2, 'JTEES41A782048735', NULL, '74718284757', 'Heacock Insurance', '77567173646', 'MidFlorida Credit Union', NULL, '6385961738', 'Standard');
INSERT INTO CarSale VALUES(1002, '2021-11-7', 59000.00, 400.00, 75, 0, 50000.00, 50000.00, 9000.00, 2000.00, 3, 1003, 1, NULL, 'JH4CC2550NC003182', '93826172844', 'Geico', '57261637547', 'MidFlorida Credit Union', NULL, '9562718294', 'Minimal');
INSERT INTO CarSale VALUES(1003, '2021-11-8', 100000.00, 999.00, 100, 0, 90000.00, 90000.00, 10000.00, 10000.00, 0, 1004, 3,'1LNHM87A55Y632680', NULL, '75616718328', 'Heacock Insurance', '87581819394', 'MidFlorida Credit Union', NULL, '7459192847', 'Standard');
INSERT INTO CarSale VALUES(1004, '2019-12-5', 1200.69, 120.06, 35.50, 200.00, 0, 1000.69, 0, 10.00, 10000, 1002, 4, NULL, '1GTEK19RXVE536195', '75616172747', 'Geico', NULL, NULL, 'JH4KA8270MC000405', '7562819832', 'Super');

-- Car Sale Custom Item
INSERT INTO CarSale_CustomItem VALUES(1000, 'Carbon Fiber Spoiler');
INSERT INTO CarSale_CustomItem VALUES(1000, 'Sun Roof');
INSERT INTO CarSale_CustomItem VALUES(1000, 'Tinted Front Window');
INSERT INTO CarSale_CustomItem VALUES(1000, 'Tinted Rear Window');
INSERT INTO CarSale_CustomItem VALUES(1000, '4WD');

-- Car Survey
INSERT INTO CarSurvey VALUES(1000, 8.4, 9.8, 9.9, 1000);
INSERT INTO CarSurvey VALUES(1001, 9.9, 5.5, 8.9, 1001);
INSERT INTO CarSurvey VALUES(1002, 8.5, 5.2, 1.3, 1002);
INSERT INTO CarSurvey VALUES(1003, 7.7, 7.7, 7.7, 1003);
INSERT INTO CarSurvey VALUES(1004, 9.9, 9.9, 9.9, 1004);
