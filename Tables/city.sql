CREATE TABLE `city` (
  `idcity` INT NOT NULL AUTO_INCREMENT,
  `idcountry` INT NOT NULL,
  `code` CHAR(3) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idcity`),
  INDEX `FK_city_country_idx` (`idcountry` ASC),
  UNIQUE INDEX `UK_city` (`idcountry` ASC, `code` ASC),
  CONSTRAINT `FK_city_country` FOREIGN KEY (`idcountry`) REFERENCES `country` (`idcountry`) ON DELETE RESTRICT ON UPDATE RESTRICT
);