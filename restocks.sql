-- dbfinalproj.restocks definition

CREATE TABLE `restocks` (
  `Order_No` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) NOT NULL,
  `VM_No` int NOT NULL,
  `Dist_ID` int DEFAULT NULL,
  `Cost` float NOT NULL,
  `Date` datetime DEFAULT NULL,
  PRIMARY KEY (`Order_No`),
  KEY `restocks_FK` (`Dist_ID`),
  KEY `restocks_FK_1` (`Name`,`VM_No`),
  CONSTRAINT `restocks_FK` FOREIGN KEY (`Dist_ID`) REFERENCES `distributor` (`Dist_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `restocks_FK_1` FOREIGN KEY (`Name`, `VM_No`) REFERENCES `vendingmachineitem` (`Name`, `VM_No`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO restocks (Name, VM_No, Dist_ID, Cost, `Date`) VALUES('FineWater', 1, 1, 150, '2021-11-04 00:00:00');
INSERT INTO restocks (Name, VM_No, Dist_ID, Cost, `Date`) VALUES('FineWater', 2, 1, 100, '2021-11-04 00:00:00');
INSERT INTO restocks (Name, VM_No, Dist_ID, Cost, `Date`) VALUES('GenericWater', 2, 2, 150, '2021-11-03 00:00:00');
INSERT INTO restocks (Name, VM_No, Dist_ID, Cost, `Date`) VALUES('WaterBottle', 2, 3, 200, '2021-11-01 00:00:00');