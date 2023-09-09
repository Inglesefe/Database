CREATE TABLE registration_scale (
  idregistrationscale int NOT NULL AUTO_INCREMENT,
  idregistration int NOT NULL,
  idscale int NOT NULL,
  idaccountexecutive int NOT NULL,
  PRIMARY KEY (idregistrationscale),
  KEY FK_registration_scale_registration_idx (idregistration),
  KEY FK_registration_scale_scale_idx (idscale),
  KEY FK_registration_scale_executive_idx (idaccountexecutive),
  CONSTRAINT FK_registration_scale_executive FOREIGN KEY (idaccountexecutive) REFERENCES account_executive (idaccountexecutive) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_registration_scale_registration FOREIGN KEY (idregistration) REFERENCES registration (idregistration) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT FK_registration_scale_scale FOREIGN KEY (idscale) REFERENCES scale (idscale) ON DELETE RESTRICT ON UPDATE RESTRICT
);
