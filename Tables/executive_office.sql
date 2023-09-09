CREATE TABLE executive_office (
  idexecutiveoffice int NOT NULL AUTO_INCREMENT,
  idoffice int NOT NULL,
  idaccountexecutive int NOT NULL,
  PRIMARY KEY (idexecutiveoffice),
  UNIQUE KEY UK_executive_office (idoffice,idaccountexecutive),
  KEY FK_executive_office_office_idx (idoffice),
  KEY FK_executive_office_executive_idx (idaccountexecutive),
  CONSTRAINT FK_executive_office_executive FOREIGN KEY (idaccountexecutive) REFERENCES account_executive (idaccountexecutive) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_executive_office_office FOREIGN KEY (idoffice) REFERENCES office (idoffice)
);
