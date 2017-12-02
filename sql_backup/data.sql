DROP DATABASE IF EXISTS stores;
CREATE DATABASE stores;
USE stores;

CREATE TABLE users (
	id Integer  PRIMARY KEY AUTO_INCREMENT,
	first_name varchar(50) COLLATE utf8mb4_vietnamese_ci  NOT NULL,
	last_name varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
	email varchar(30) UNIQUE NOT NULL,
	phone varchar(15) ,
	password varchar(50)  NOT NULL ,
	admin Boolean Default false,
	birth_day Datetime,
	address TEXT COLLATE utf8mb4_vietnamese_ci,
	avatar_url BLOB NOT NULL,
	token_reset varchar(100),
	created_at Datetime  Default CURRENT_TIMESTAMP,
	update_at Datetime 	Default CURRENT_TIMESTAMP
);

CREATE UNIQUE INDEX users
ON users (email);

CREATE TABLE categories(
	id Integer PRIMARY KEY AUTO_INCREMENT,
	name varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
);

CREATE TABLE books (
	id Integer PRIMARY KEY AUTO_INCREMENT,
	category_id Integer,
	author varchar(50),
	name varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
	description text COLLATE utf8mb4_vietnamese_ci NOT NULL,
	price BIGINT Default 0,
	num_buy Integer Default 0,
	amount Integer Default 10,
	sale real Default 0,
	star Integer Default 5,
	created_at Datetime  Default CURRENT_TIMESTAMP,
	update_at Datetime 	Default CURRENT_TIMESTAMP,
	FOREIGN KEY (category_id) REFERENCES categories(id)
	ON DELETE SET NULL ON UPDATE CASCADE
	
);


CREATE TABLE carts (
	id Integer PRIMARY KEY AUTO_INCREMENT,
	user_id Integer,
	action varchar(10) NOT NULL CHECK (status IN('pending','canceled', 'process', 'success')),
	price_total BIGINT NOT NULL Default 0,
	created_at Datetime Default CURRENT_TIMESTAMP,
	update_at Datetime Default CURRENT_TIMESTAMP,
	FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE SET NULL ON UPDATE CASCADE
);
CREATE TABLE book_carts (
	id Integer PRIMARY KEY AUTO_INCREMENT,
	amount Integer Default 1,
	cart_id Integer,
	book_id Integer,
	created_at Datetime  Default CURRENT_TIMESTAMP,
	update_at Datetime  Default CURRENT_TIMESTAMP,
	FOREIGN KEY (book_id) REFERENCES books(id)
	ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY (cart_id) REFERENCES carts(id)
	ON DELETE SET NULL ON UPDATE CASCADE
);
CREATE TABLE images(
	id Integer PRIMARY KEY AUTO_INCREMENT,
	image_url BLOB NOT NULL,
	book_id Integer,
	FOREIGN KEY(book_id) REFERENCES books(id)
	ON DELETE SET NULL ON UPDATE CASCADE
);


CREATE TABLE comments(
	id Integer PRIMARY KEY AUTO_INCREMENT,
	book_id Integer,
	user_id Integer,
	description TEXT NOT NULL,
	FOREIGN KEY(book_id) REFERENCES books(id)
	ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY(user_id) REFERENCES users(id)
	ON DELETE SET NULL ON UPDATE CASCADE
);

ALTER TABLE book_carts
ADD CHECK (amount > 0);

CREATE UNIQUE INDEX item
ON book_carts (cart_id,book_id);


DELIMITER $$
CREATE TRIGGER `increase_buy_book` AFTER UPDATE ON `carts`
 FOR EACH ROW BEGIN
DECLARE amt INT;
DECLARE id_book INT;
  IF NEW.action = 'success' THEN
    SELECT book_carts.amount,book_carts.book_id INTO amt,id_book
    FROM book_carts  INNER JOIN books 
    ON book_carts.book_id = books.id AND NEW.id = book_carts.cart_id;
    UPDATE books
    SET books.num_buy = books.num_buy + amt,
      books.amount = books.amount - amt
    WHERE books.id = id_book;
  END IF;
END


$$
DELIMITER ;


DELIMITER $$

CREATE TRIGGER `before_create_user` BEFORE INSERT ON `users`
 FOR EACH ROW 
 SET  NEW.avatar_url = CASE WHEN NEW.avatar_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.avatar_url END,
  NEW.password = MD5(NEW.password);
$$
DELIMITER ;
DELIMITER $$

CREATE TRIGGER `before_create_image` BEFORE INSERT ON `images`
 FOR EACH ROW SET  NEW.image_url = CASE WHEN NEW.image_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.image_url END;
	$$
DELIMITER ;


LOAD DATA LOCAL INFILE 'C:/indexXamp/ass1/lib/database/category.csv' INTO TABLE categories
    fields terminated by ';'
	lines terminated by '\r\n'
	ignore 1 lines;
LOAD DATA LOCAL INFILE 'C:/indexXamp/ass1/lib/database/books.csv' INTO TABLE books
    fields terminated by ';'
	lines terminated by '\r\n'
	ignore 1 lines;
LOAD DATA LOCAL INFILE 'C:/indexXamp/ass1/lib/database/image.csv' INTO TABLE images
    fields terminated by ';'
	lines terminated by '\r\n'
	ignore 1 lines;	
LOAD DATA LOCAL INFILE 'C:/indexXamp/ass1/lib/database/users.csv' INTO TABLE users
    fields terminated by ';'
	lines terminated by '\r\n'
	ignore 1 lines;