-- dbfinalproj.payment definition

CREATE TABLE `payment` (
  `Card_No` char(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Exp_Date` datetime NOT NULL,
  `Security_Code` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Fname` varchar(100) NOT NULL,
  `Lname` varchar(100) NOT NULL,
  PRIMARY KEY (`Card_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO payment (Card_No, Exp_Date, Security_Code, Fname, Lname) VALUES('1111222233330000', '2023-03-01 00:00:00', '255', 'Ben', 'Hailey');
INSERT INTO payment (Card_No, Exp_Date, Security_Code, Fname, Lname) VALUES('1111222233334444', '2024-01-01 00:00:00', '101', 'Usaid', 'Malik');
INSERT INTO payment (Card_No, Exp_Date, Security_Code, Fname, Lname) VALUES('3333222211110000', '2023-06-01 00:00:00', '202', 'James', 'Grant');
INSERT INTO payment (Card_No, Exp_Date, Security_Code, Fname, Lname) VALUES('5555444433332222', '2022-01-01 00:00:00', '302', 'Bob', 'Brent');