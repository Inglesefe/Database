CREATE TABLE `log_db` (
  `idlog` bigint NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `action` char(1) NOT NULL,
  `idtable` bigint NOT NULL,
  `table` varchar(200) NOT NULL,
  `sql` text NOT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`idlog`),
  KEY `FK_log_user_idx` (`iduser`),
  CONSTRAINT `FK_log_user` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE RESTRICT ON UPDATE RESTRICT);
