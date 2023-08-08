CREATE TABLE `plan` (
  `idplan` INT NOT NULL AUTO_INCREMENT,
  `value` FLOAT NOT NULL,
  `installments_number` INT NOT NULL,
  `installment_value` FLOAT NOT NULL,
  `active` TINYINT NOT NULL,
  `description` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`idplan`)
);