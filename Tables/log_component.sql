CREATE TABLE `log_component` (
  `idlog` bigint NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `type` char(1) NOT NULL,
  `component` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `iduser` int DEFAULT NULL,
  PRIMARY KEY (`idlog`),
  KEY `FK_log_component_user_idx` (`iduser`),
  CONSTRAINT `FK_log_component_user` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE RESTRICT ON UPDATE RESTRICT);
