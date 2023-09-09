CREATE TABLE account_number (
  idaccountnumber int NOT NULL AUTO_INCREMENT,
  idaccounttype int NOT NULL,
  idcity int NOT NULL,
  number varchar(15) NOT NULL,
  PRIMARY KEY (idaccountnumber),
  KEY FK_account_number_type_idx (idaccounttype),
  KEY FK_account_number_city_idx (idcity),
  CONSTRAINT FK_account_number_city FOREIGN KEY (idcity) REFERENCES city (idcity) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_account_number_type FOREIGN KEY (idaccounttype) REFERENCES account_type (idaccounttype) ON DELETE RESTRICT ON UPDATE RESTRICT
);
