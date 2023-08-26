CREATE TABLE `prod_executive` (
  `idprodexecutive` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `ididentificationtype` int NOT NULL,
  `identification` varchar(45) NOT NULL,
  `idparent` int NOT NULL,
  `idoffice` int NOT NULL,
  PRIMARY KEY (`idprodexecutive`),
  UNIQUE KEY `UK_prod_executive` (`ididentificationtype`,`identification`),
  KEY `FK_prod_executive_id_type_idx` (`ididentificationtype`),
  KEY `FK_office_idx` (`idoffice`),
  KEY `FK_prod_executive_parent_idx` (`idparent`),
  CONSTRAINT `FK_office` FOREIGN KEY (`idoffice`) REFERENCES `office` (`idoffice`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_prod_executive_id_type` FOREIGN KEY (`ididentificationtype`) REFERENCES `identification_type` (`ididentificationtype`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_prod_executive_parent` FOREIGN KEY (`idparent`) REFERENCES `prod_executive` (`idprodexecutive`) ON DELETE RESTRICT ON UPDATE RESTRICT
);
