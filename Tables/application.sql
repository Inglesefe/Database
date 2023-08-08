CREATE TABLE `application` (
  `idapplication` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idapplication`),
  UNIQUE INDEX `UK_application_name` (`name` ASC)
);