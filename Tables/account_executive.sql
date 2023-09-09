CREATE TABLE account_executive (
  idaccountexecutive int NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  ididentificationtype int NOT NULL,
  identification varchar(45) NOT NULL,
  PRIMARY KEY (idaccountexecutive),
  UNIQUE KEY UK_prod_executive (ididentificationtype,identification),
  KEY FK_account_executive_identification_type_idx (ididentificationtype),
  CONSTRAINT FK_account_executive_identification_type FOREIGN KEY (ididentificationtype) REFERENCES identification_type (ididentificationtype) ON DELETE RESTRICT ON UPDATE RESTRICT
);
