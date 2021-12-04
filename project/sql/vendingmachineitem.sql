-- dbfinalproj.vendingmachineitem definition

CREATE TABLE `vendingmachineitem` (
  `Name` varchar(100) NOT NULL,
  `VM_No` int NOT NULL,
  `Price` float NOT NULL,
  `Number_of_items` int NOT NULL,
  PRIMARY KEY (`Name`,`VM_No`),
  KEY `vendingmachineitem_FK` (`VM_No`),
  CONSTRAINT `vendingmachineitem_FK` FOREIGN KEY (`VM_No`) REFERENCES `vendingmachineunit` (`VM_No`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `vendingmachineitem_FK_1` FOREIGN KEY (`Name`) REFERENCES `tempcontrol` (`Name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO vendingmachineitem (Name, VM_No, Price, Number_of_items) VALUES('FineWater', 1, 0.99, 4);
INSERT INTO vendingmachineitem (Name, VM_No, Price, Number_of_items) VALUES('FineWater', 2, 0.99, 2);
INSERT INTO vendingmachineitem (Name, VM_No, Price, Number_of_items) VALUES('GenericWater', 2, 1.99, 2);
INSERT INTO vendingmachineitem (Name, VM_No, Price, Number_of_items) VALUES('GreatSoda', 3, 4.99, 1);
INSERT INTO vendingmachineitem (Name, VM_No, Price, Number_of_items) VALUES('WaterBottle', 2, 2.99, 4);
INSERT INTO vendingmachineitem (Name, VM_No, Price, Number_of_items) VALUES('WaterBottle', 3, 2.99, 3);