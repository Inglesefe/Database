CREATE TABLE user_role (
  iduserrole int NOT NULL AUTO_INCREMENT,
  iduser int NOT NULL,
  idrole int NOT NULL,
  PRIMARY KEY (iduserrole),
  UNIQUE KEY UK_user_role (iduser,idrole),
  KEY FK_user_role_user_idx (iduser),
  KEY FK_user_role_role_idx (idrole),
  CONSTRAINT FK_user_role_role FOREIGN KEY (idrole) REFERENCES role (idrole) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT FK_user_role_user FOREIGN KEY (iduser) REFERENCES user (iduser) ON DELETE CASCADE ON UPDATE CASCADE
);