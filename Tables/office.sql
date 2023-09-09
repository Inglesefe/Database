CREATE TABLE office (
  idoffice int NOT NULL AUTO_INCREMENT,
  idcity int NOT NULL,
  name varchar(100) NOT NULL,
  address varchar(200) NOT NULL,
  PRIMARY KEY (idoffice),
  KEY FK_office_city_idx (idcity),
  CONSTRAINT FK_office_city FOREIGN KEY (idcity) REFERENCES city (idcity) ON DELETE RESTRICT ON UPDATE RESTRICT
);
