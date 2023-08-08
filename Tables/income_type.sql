CREATE TABLE `income_type` (
  `idincometype` int NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idincometype`),
  UNIQUE KEY `UK_income_type` (`code`)
);
