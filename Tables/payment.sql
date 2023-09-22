CREATE TABLE payment (
  idpayment BIGINT NOT NULL AUTO_INCREMENT,
  idpaymenttype INT NOT NULL,
  idfee INT NOT NULL,
  value FLOAT NOT NULL,
  date DATE NOT NULL,
  invoice VARCHAR(20) NOT NULL,
  proof VARCHAR(300) NOT NULL,
  PRIMARY KEY (idpayment),
  INDEX FK_payment_type_idx (idpaymenttype ASC),
  INDEX FK_payment_fee_idx (idfee ASC),
  CONSTRAINT FK_payment_type FOREIGN KEY (idpaymenttype) REFERENCES payment_type (idpaymenttype) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FK_payment_fee FOREIGN KEY (idfee) REFERENCES fee (idfee) ON DELETE NO ACTION ON UPDATE NO ACTION
);
