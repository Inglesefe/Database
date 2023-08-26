CREATE TABLE `parameter` (
  `idparameter` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`idparameter`),
  UNIQUE KEY `UK_parameter_name` (`name`)
);
