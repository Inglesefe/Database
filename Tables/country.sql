CREATE TABLE `country` (
  `idcountry` int NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`idcountry`),
  UNIQUE KEY `UK_country_code` (`code`)
);
