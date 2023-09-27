CREATE TABLE notification (
  idnotification int NOT NULL AUTO_INCREMENT,
  date datetime NOT NULL,
  `to` varchar(200) NOT NULL,
  subject varchar(200) NOT NULL,
  content text NOT NULL,
  iduser int NOT NULL,
  PRIMARY KEY (idnotification),
  KEY FK_user_idx (iduser),
  CONSTRAINT FK_user FOREIGN KEY (iduser) REFERENCES user (iduser) ON DELETE RESTRICT ON UPDATE RESTRICT
);
