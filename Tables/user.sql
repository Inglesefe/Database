CREATE TABLE user (
  iduser int NOT NULL AUTO_INCREMENT,
  login varchar(100) NOT NULL,
  name varchar(100) NOT NULL,
  password varchar(128) NOT NULL,
  active tinyint NOT NULL,
  PRIMARY KEY (iduser),
  UNIQUE KEY UK_user_login (login)
);