-- dbfinalproj.tempcontrol definition

CREATE TABLE `tempcontrol` (
  `Name` varchar(100) NOT NULL,
  `Temperature_Required` float NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO tempcontrol (Name, Temperature_Required) VALUES('FineWater', 65);
INSERT INTO tempcontrol (Name, Temperature_Required) VALUES('GenericWater', 70);
INSERT INTO tempcontrol (Name, Temperature_Required) VALUES('GreatSoda', 60);
INSERT INTO tempcontrol (Name, Temperature_Required) VALUES('WaterBottle', 68);
