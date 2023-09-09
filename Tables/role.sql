CREATE TABLE role (
  idrole INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (idrole),
  UNIQUE INDEX UK_role_name (name ASC)
);