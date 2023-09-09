CREATE TABLE consecutive_number (
  idconsecutivenumber int NOT NULL AUTO_INCREMENT,
  idconsecutivetype int NOT NULL,
  idcity int NOT NULL,
  number varchar(45) NOT NULL,
  PRIMARY KEY (idconsecutivenumber),
  KEY FK_consecutive_number_type_idx (idconsecutivetype),
  KEY FK_consecutive_number_city_idx (idcity),
  CONSTRAINT FK_consecutive_number_city FOREIGN KEY (idcity) REFERENCES city (idcity) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_consecutive_number_type FOREIGN KEY (idconsecutivetype) REFERENCES consecutive_type (idconsecutivetype) ON DELETE RESTRICT ON UPDATE RESTRICT
);
