-- dbfinalproj.transactions definition

CREATE TABLE `transactions` (
  `Transaction_No` int NOT NULL AUTO_INCREMENT,
  `VM_No` int NOT NULL,
  `Card_No` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Amt` float NOT NULL,
  `Name` varchar(100) NOT NULL,
  PRIMARY KEY (`Transaction_No`),
  KEY `Transactions_FK_1` (`VM_No`),
  KEY `transactions_FK` (`Card_No`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO transactions (VM_No, Card_No, Amt, Name) VALUES(1, '1111222233334444', 0.99, 'FineWater');
INSERT INTO transactions (VM_No, Card_No, Amt, Name) VALUES(1, '1111222233334444', 0.99, 'FineWater');
INSERT INTO transactions (VM_No, Card_No, Amt, Name) VALUES(2, '1111222233330000', 2.01, 'GenericWater');
INSERT INTO transactions (VM_No, Card_No, Amt, Name) VALUES(2, '5555444433332222', 2.99, 'WaterBottle');
INSERT INTO transactions (VM_No, Card_No, Amt, Name) VALUES(3, '3333222211110000', 4.99, 'GreatSoda');