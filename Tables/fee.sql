CREATE TABLE fee (
  idfee INT NOT NULL AUTO_INCREMENT,
  idregistration INT NOT NULL,
  value FLOAT NOT NULL,
  number SMALLINT NOT NULL,
  idincometype INT NOT NULL,
  dueDate DATE NOT NULL,
  PRIMARY KEY (idfee),
  INDEX FK_fee_registration_idx (idregistration ASC),
  INDEX FK_fee_income_type_idx (idincometype ASC),
  CONSTRAINT FK_fee_registration FOREIGN KEY (idregistration) REFERENCES registration (idregistration) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_fee_income_type FOREIGN KEY (idincometype) REFERENCES income_type (idincometype) ON DELETE NO ACTION ON UPDATE NO ACTION
);
