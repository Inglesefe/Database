CREATE TABLE beneficiary (
  idbeneficiary INT NOT NULL AUTO_INCREMENT,
  idowner INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  ididentificationtype INT NOT NULL,
  identification VARCHAR(45) NOT NULL,
  relationship VARCHAR(45) NOT NULL,
  PRIMARY KEY (idbeneficiary),
  INDEX FK_beneficiary_owner_idx (idowner ASC),
  INDEX FK_beneficiary_identification_type_idx (ididentificationtype ASC),
  UNIQUE INDEX UK_beneficiary (idowner ASC, ididentificationtype ASC, identification ASC),
  CONSTRAINT FK_beneficiary_owner FOREIGN KEY (idowner) REFERENCES owner (idowner) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_beneficiary_identification_type FOREIGN KEY (ididentificationtype) REFERENCES identification_type (ididentificationtype) ON DELETE RESTRICT ON UPDATE RESTRICT
);
