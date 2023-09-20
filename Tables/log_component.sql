CREATE TABLE log_component (
  idlog bigint NOT NULL AUTO_INCREMENT,
  date datetime NOT NULL,
  type char(1) NOT NULL,
  controller varchar(45) NOT NULL,
  method varchar(45) NOT NULL,
  input text NOT NULL,
  output text NOT NULL,
  iduser int NOT NULL,
  PRIMARY KEY (idlog),
  KEY FK_log_component_user_idx (iduser),
  CONSTRAINT FK_log_component_user FOREIGN KEY (iduser) REFERENCES user (iduser) ON DELETE RESTRICT ON UPDATE RESTRICT
);
