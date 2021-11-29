-- dbfinalproj.distributor definition

CREATE TABLE `distributor` (
  `Dist_ID` int NOT NULL AUTO_INCREMENT,
  `Brand` varchar(100) DEFAULT NULL,
  `Branch` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone_No` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Dist_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO distributor (Brand, Branch, Address, Email, Phone_No) VALUES('Generic', 'Dallas', '2800 Waterview Pkwy', 'hello@generic.com', '14690006666');
INSERT INTO distributor (Brand, Branch, Address, Email, Phone_No) VALUES('ACME', 'Allen', '2800 Waterview Pkwy', 'orders@acme.com', '16667778888');
INSERT INTO distributor (Brand, Branch, Address, Email, Phone_No) VALUES('Boring', 'Richardson', '2800 Waterview Pkwy', 'restocks@boring.com', '');