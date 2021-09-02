### Thêm database
 **CREATE DATABASE** customer
### Thêm bảng
```
  CREATE TABLE Customer (
	id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(50),
	date_of_birth DATE,
	phone_number VARCHAR(50),
	email VARCHAR(50)
);
```

### insert dữ liệu vào bảng (dùng mockaroo):
```
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (1, 'Yoshiko', 'Torrecilla', '5 Summit Parkway', '1988/05/27', '369 574 9110', 'ytorrecilla0@wp.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (2, 'Marv', 'Sweatman', '4 Toban Point', '1976/08/29', '139 604 0413', 'msweatman1@naver.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (3, 'Ernie', 'Regitz', '10734 Kenwood Crossing', '1970/05/07', '333 182 8267', 'eregitz2@tripod.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (4, 'Leoine', 'Jerdon', '1691 Bellgrove Street', '1977/09/26', '836 254 4119', 'ljerdon3@wufoo.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (5, 'Nikkie', 'Roger', '7080 Becker Place', '1975/02/14', '718 219 3521', 'nroger4@usa.gov');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (6, 'Keelia', 'Goulder', '9403 Blue Bill Park Lane', '1986/07/03', '668 750 7047', 'kgoulder5@illinois.edu');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (7, 'Sly', 'Heino', '6639 Mosinee Avenue', '1976/08/18', '542 888 6554', 'sheino6@squidoo.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (8, 'Bibbie', 'Secretan', '8986 Basil Drive', '1983/10/27', '227 648 1561', 'bsecretan7@icq.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (9, 'Kathryne', 'Hayball', '6323 Arkansas Lane', '1998/07/17', '186 394 7727', 'khayball8@wix.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (10, 'Jock', 'Bragginton', '66295 Becker Place', '1983/04/12', '191 390 6817', 'jbragginton9@dropbox.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (11, 'Quintus', 'Heinert', '69 Graceland Road', '1996/06/20', '215 755 3065', 'qheinerta@cyberchimps.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (12, 'Gertruda', 'Boldry', '019 Burning Wood Alley', '1992/05/14', '683 434 9754', 'gboldryb@stumbleupon.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (13, 'Kasey', 'Riddiford', '1 Roth Place', '1982/04/11', '736 978 8182', 'kriddifordc@nydailynews.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (14, 'Rebekkah', 'Fantham', '2 Russell Circle', '1973/04/17', '297 185 2875', 'rfanthamd@opera.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (15, 'Mateo', 'MacNulty', '83 Schmedeman Circle', '1984/04/08', '211 966 0544', 'mmacnultye@furl.net');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (16, 'Adrienne', 'Luce', '2 Buhler Street', '1972/02/28', '911 538 3714', 'alucef@theguardian.com');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (17, 'Ruttger', 'Peye', '634 Jana Junction', '1972/05/15', '549 500 0938', 'rpeyeg@so-net.ne.jp');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (18, 'Mellisent', 'Safe', '94285 Fallview Parkway', '1974/10/29', '244 784 8846', 'msafeh@shop-pro.jp');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (19, 'Georgina', 'Barrowcliff', '25 Packers Trail', '1987/05/26', '419 884 5397', 'gbarrowcliffi@drupal.org');
INSERT INTO Customer (id, first_name, last_name, address, date_of_birth, phone_number, email) values (20, 'Sayre', 'Knagges', '6 Onsgard Drive', '1985/02/19', '971 812 1933', 'sknaggesj@chronoengine.com');
```
### Kết quả trên php MyAdmin
![Kết quả trên php MyAdmin](https://user-images.githubusercontent.com/80322605/130350240-55e29f37-51ee-454c-aa63-54e0a64cfe44.png)

