DROP DATABASE IF EXISTS stores;
-- CREATE DATABASE IF NOT EXISTS stores DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
CREATE DATABASE IF NOT EXISTS stores;
USE stores;

CREATE TABLE users (
	id Integer  PRIMARY KEY AUTO_INCREMENT,
	first_name varchar(50) COLLATE utf8mb4_vietnamese_ci  NOT NULL,
	last_name varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
	email varchar(30) UNIQUE NOT NULL,
	phone varchar(15) ,
	password varchar(50)  NOT NULL ,
	admin Boolean Default false,
	birth_day date,
	address TEXT COLLATE utf8mb4_vietnamese_ci,
	avatar_url BLOB NOT NULL,
	token_reset varchar(100),
	created_at Datetime,
	update_at Datetime
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
	created_at Datetime,
	update_at Datetime ,
	FOREIGN KEY (category_id) REFERENCES categories(id)
	ON DELETE SET NULL ON UPDATE CASCADE
	
);

DELIMITER $$

CREATE TRIGGER `before_insert_books` BEFORE INSERT ON `books`
 FOR EACH ROW 
SET NEW.update_at=CURRENT_TIMESTAMP,NEW.created_at=CURRENT_TIMESTAMP;
$$
DELIMITER ;

DELIMITER $$

CREATE TRIGGER `before_update_books` BEFORE UPDATE ON `books`
 FOR EACH ROW 
SET NEW.update_at=CURRENT_TIMESTAMP;
$$
DELIMITER ;

CREATE TABLE carts (
	id Integer PRIMARY KEY AUTO_INCREMENT,
	user_id Integer,
	action varchar(10) NOT NULL CHECK (status IN('pending','canceled', 'process', 'success')),
	price_total BIGINT NOT NULL Default 0,
	created_at Datetime ,
	update_at Datetime ,
	FOREIGN KEY (user_id) REFERENCES users(id)
	ON DELETE SET NULL ON UPDATE CASCADE
);


DELIMITER $$

CREATE TRIGGER `before_update_carts` BEFORE UPDATE ON `carts`
 FOR EACH ROW 
SET NEW.update_at=CURRENT_TIMESTAMP;
$$
DELIMITER ;

CREATE TABLE book_carts (
	id Integer PRIMARY KEY AUTO_INCREMENT,
	amount Integer Default 1,
	cart_id Integer,
	book_id Integer,
	created_at Datetime ,
	update_at Datetime ,
	FOREIGN KEY (book_id) REFERENCES books(id)
	ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY (cart_id) REFERENCES carts(id)
	ON DELETE SET NULL ON UPDATE CASCADE
);

DELIMITER $$

CREATE TRIGGER `before_insert_book_carts` BEFORE INSERT ON `book_carts`
 FOR EACH ROW 
SET NEW.update_at=CURRENT_TIMESTAMP,NEW.created_at=CURRENT_TIMESTAMP;
$$
DELIMITER ;

DELIMITER $$

CREATE TRIGGER `before_update_book_carts` BEFORE UPDATE ON `book_carts`
 FOR EACH ROW 
SET NEW.update_at=CURRENT_TIMESTAMP;
$$
DELIMITER ;

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
FOR EACH ROW 
BEGIN
DECLARE	amt INT;
DECLARE	id_book INT;
DECLARE done INT DEFAULT 0;
DECLARE cursor1 CURSOR FOR (SELECT book_carts.amount,book_carts.book_id
FROM book_carts  INNER JOIN books ON book_carts.book_id = books.id AND NEW.id = book_carts.cart_id);
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
	IF NEW.action = 'success' THEN
	  	OPEN cursor1;
	  	read_loop:LOOP
	  	FETCH cursor1 INTO amt,id_book;
        IF done THEN
      		LEAVE read_loop;
    	END IF;
		    UPDATE books
		    SET books.num_buy = books.num_buy + amt,
		      books.amount = books.amount - amt
		    WHERE books.id = id_book;
		END LOOP;
		CLOSE cursor1;
	END IF;
END


$$
DELIMITER ;

DELIMITER $$

CREATE TRIGGER `set_waitting_cart` BEFORE INSERT ON `carts`
 FOR EACH ROW 
SET NEW.action="waiting",NEW.update_at=CURRENT_TIMESTAMP,NEW.created_at=CURRENT_TIMESTAMP;
$$
DELIMITER ;

DELIMITER $$

CREATE TRIGGER `before_update_user` BEFORE UPDATE ON `users`
 FOR EACH ROW 
SET NEW.update_at=CURRENT_TIMESTAMP;
$$
DELIMITER ;

DELIMITER $$

CREATE TRIGGER `before_create_user` BEFORE INSERT ON `users`
 FOR EACH ROW 
 SET  NEW.avatar_url = CASE WHEN NEW.avatar_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.avatar_url END,
  NEW.password = MD5(NEW.password),NEW.update_at=CURRENT_TIMESTAMP,NEW.created_at=CURRENT_TIMESTAMP;
$$
DELIMITER ;
DELIMITER $$

CREATE TRIGGER `before_create_image` BEFORE INSERT ON `images`
 FOR EACH ROW SET  NEW.image_url = CASE WHEN NEW.image_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.image_url END;
	$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER `increase_cart` AFTER INSERT ON `book_carts`
 FOR EACH ROW UPDATE carts
SET carts.price_total = carts.price_total + NEW.amount* (
    
    SELECT DISTINCT books.sale 
    FROM book_carts 
    RIGHT OUTER JOIN books 
    ON book_carts.book_id = books.id
	WHERE NEW.book_id =books.id)
WHERE carts.id = NEW.cart_id
$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER `giam_tien_cart` AFTER DELETE ON `book_carts`
 FOR EACH ROW UPDATE carts
SET carts.price_total = carts.price_total - OLD.amount*(
    SELECT DISTINCT books.sale
    FROM books LEFT OUTER JOIN book_carts
    ON book_carts.book_id = books.id
    WHERE OLD.book_id = books.id 
)
WHERE carts.id = OLD.cart_id
$$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER `increase_cart_update` AFTER UPDATE ON `book_carts`
 FOR EACH ROW UPDATE carts
SET carts.price_total = carts.price_total + (NEW.amount - OLD.amount)*(
SELECT DISTINCT books.sale 
    FROM books LEFT OUTER JOIN book_carts 
    ON book_carts.book_id = books.id
    WHERE NEW.book_id = books.id)
WHERE carts.id = NEW.cart_id
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