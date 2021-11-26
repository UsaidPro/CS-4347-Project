-- dbfinalproj.vendingmachineunit definition

CREATE TABLE `vendingmachineunit` (
  `VM_No` int NOT NULL AUTO_INCREMENT,
  `Functioning_Status` tinyint(1) NOT NULL,
  `Within_Building` tinyint(1) NOT NULL,
  `Model` varchar(100) DEFAULT NULL,
  `Change_Amt` int NOT NULL,
  `Temperature` float DEFAULT NULL,
  PRIMARY KEY (`VM_No`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO vendingmachineunit (Functioning_Status, Within_Building, Model, Change_Amt, Temperature) VALUES(1, 1, 'IndoorSodaV1', 15, 60);
INSERT INTO vendingmachineunit (Functioning_Status, Within_Building, Model, Change_Amt, Temperature) VALUES(1, 0, 'OutdoorSodaV1', 18, 65);
INSERT INTO vendingmachineunit (Functioning_Status, Within_Building, Model, Change_Amt, Temperature) VALUES(0, 1, 'IndoorSodaV0', 5, NULL);