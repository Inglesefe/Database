CREATE TABLE application_role (
  idapplicationrole INT NOT NULL AUTO_INCREMENT,
  idapplication INT NOT NULL,
  idrole INT NOT NULL,
  PRIMARY KEY (idapplicationrole),
  UNIQUE INDEX UK_application_role (idapplication ASC, idrole ASC),
  INDEX FK_application_role_role_idx (idrole ASC),
  INDEX FK_application_role_application_idx (idapplication ASC),
  CONSTRAINT FK_application_role_application FOREIGN KEY (idapplication) REFERENCES application (idapplication) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_application_role_role FOREIGN KEY (idrole) REFERENCES role (idrole) ON DELETE CASCADE ON UPDATE CASCADE
);