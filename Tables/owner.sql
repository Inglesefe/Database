CREATE TABLE `owner` (
  `idowner` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `identification` VARCHAR(20) NOT NULL,
  `ididentificationtype` INT NOT NULL,
  `address_home` VARCHAR(500) NOT NULL,
  `address_office` VARCHAR(500) NOT NULL,
  `phone_home` VARCHAR(45) NOT NULL,
  `phone_office` VARCHAR(45) NOT NULL,
  `email` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`idowner`),
  INDEX `FK_owner_identification_type_idx` (`ididentificationtype` ASC),
  INDEX `UK_owner` (`identification` ASC, `ididentificationtype` ASC),
  CONSTRAINT `FK_owner_identification_type` FOREIGN KEY (`ididentificationtype`) REFERENCES `identification_type` (`ididentificationtype`) ON DELETE RESTRICT ON UPDATE RESTRICT
);
