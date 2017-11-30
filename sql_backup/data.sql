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
CREATE TABLE authors(
	id Integer PRIMARY KEY AUTO_INCREMENT,
	Name varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
 
);
CREATE TABLE books (
	id Integer PRIMARY KEY AUTO_INCREMENT,
	category_id Integer,
	author_id Integer,
	name varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
	description varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
	price BIGINT Default 0,
	num_buy Integer Default 0,
	amount Integer Default 10,
	sale real Default 0,
	star Integer Default 5,
	created_at Datetime  Default CURRENT_TIMESTAMP,
	update_at Datetime 	Default CURRENT_TIMESTAMP,
	FOREIGN KEY (category_id) REFERENCES categories(id)
	ON DELETE SET NULL ON UPDATE CASCADE,
	FOREIGN KEY (author_id) REFERENCES authors(id)
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
	id Integer PRIMARY AUTO_INCREMENT,
	book_id Integer NOT NULL,
	user_id Integer NOT NULL,
	description TEXT NOT NULL,
	FOREIGN KEY(book_id) REFERENCES books(id)
	ON DELETE SET NULL ON UPDATE CASCADE
	FOREIGN KEY(user_id) REFERENCES users(id)
	ON DELETE SET NULL ON UPDATE CASCADE

	)


ALTER TABLE book_carts
ADD CHECK (Amount > 0);

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
 FOR EACH ROW SET  NEW.avatar_url = CASE WHEN NEW.avatar_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.avatar_url END;
	$$
DELIMITER ;
DELIMITER $$

CREATE TRIGGER `before_create_image` BEFORE INSERT ON `images`
 FOR EACH ROW SET  NEW.image_url = CASE WHEN NEW.image_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.image_url END;
	$$
DELIMITER ;




INSERT INTO categories (name) VALUES 
('Loa'),
('MP3'),
('Phone');
INSERT INTO authors (name) VALUES
('JP'),
('JK'),
('Microlab'),
('AK'),
('FENDA');
INSERT INTO books (`name`, `price`, `category_id`, `author_id`, `created_at`, `Description`, `star`, `sale`, `num_buy`) VALUES
('1 Dàn 2.0 1 A130 Red', 179000, '1', '1', '2016-11-13', 'Thiết kế nhỏ gọn âm thanh sống động. Ok', 0, 0, 2),
('1 2 Remax RM-M1', 179000, '1', '2', '2016-11-13', 'Sản Phẩm 1 2 tích hợp FM Radio và Micro phone giúp bạn vừa có thể nghe nhạc, vừa có thể nhận và trả lời cuộc Đàm thoại thông qua kết nối 2. Hoặc làm nguồn phát trực tiếp và đồng thời chơi những Bản nhạc từ những thiết bị như USB,Thẻ nhớ…  thông qua những khe cắm tực tiếp trên loa.', 2.5, 2, 0),
('1 dàn 2.0 4 SN-462', 260000, '1', '2', '2016-11-14', 'Tương thích với Điện thoại,máy tính,laptop,máy tính bảng… Nghe nhạc,chơi game', 0, 0, 0),
('1 dàn 2.0 4 SN-467', 260000, '1', '2', '2016-11-14', 'Kích thước nhỏ gọn, có tính di động cao, phù hợp với nhiều không gian hoàn cảnh sử dụng như đi du lịch, nghe trong phòng,nơi làm việc...\r\n Thích hợp cho nhiều thiết công nghệ khác nhau: điện thoại, máy tính bảng, máy tính xách tay, máy tính để bàn, máy mp3…\r\n 1 SENICC SN-467 đáp ứng để thể hiện tất cả các âm ở dải âm tần 150-15khz\r\n Cho âm thanh khá chung thực\r\n 1 SENICC SN 467 có thể đáp ứng tần số 150-15kHz độ  và Tỷ lệ tín hiệu trên nhiễu của SENICC SN 467 là >60dB,\r\n 1 mini SENICC sử dụng nguồn 5V usb,Jack tín hiệu 3.5 mm  cho phép kết nối với hầu hết các thiết bị âm thanh Digital và phát âm thanh STREORIO', 0, 0, 0),
('1 bluetooth Rocky CR-X6', 750000, '1', '2', '2016-11-12', 'Thiết kế nhỏ gọn dễ thương.', 0, 0, 5),
('1 dàn 2.1 1 A960', 899000, '1', '1', '2016-11-13', 'Thuộc dòng loa 2.1 không quá cồng kềnh nhưng công suất đủ lớn để đảm báo phát âm chuẩn, to, rõ nét,…\r\nNgoài tính năng 2 thì còn có khe cắm thẻ nhớ và USB.\r\nRemote kèm theo hỗ trợ các chức năng chơi nhạc cơ bản.', 0, 0, 0),
('1 Remax 2 cao cấp RB-M7', 999000, '1', '2', '2016-11-14', 'Tương thích với tất cả các thiết bị thu phát bluetooth Kết nối không dây 4.0', 0, 0, 2),
('1 2 Creative Sound Blaster SPBL-Free', 2700000, '1', '2', '2016-11-16', 'Thiết kế Creative tương đương một bình thể thao, giúp cho bạn có thể gắn lên một chiếc xe đạp thể thao dễ dàng.', 0, 0, 1),
('1 2 Speaker System 1 M1', 1290000, '1', '2', '2016-11-13', '1 M1 khá gọn gàng với kích thước 202 x 168 x 350 mm và nặng chỉ 2.6 kg, cộng thêm việc trang bị quai xách ngay trên đỉnh loa, nên người dùng có thể dễ dàng mang 1 M1 theo bên mình. 1 M1 còn có thiết kế kiểu màng loa và cụm nút chức năng cùng các ngõ vào thiết yếu trên 1 M1 đều được bố trí ngay ở mặt trước khá tiện lợi.', 0, 0, 0),
('1 Dàn 2.0 1 A130 Blue', 179000, '1', '1', '2016-11-14', 'Thiết kế nhỏ, gọn, mang đến sự tiện lợi cao\r\nKhông dẫn nhiệt, không dẫn điện khi sử dụng trong 1 thời gian dài\r\nDễ sử dụng: tổ hợp phím điều khiển thiết kế đẹp mắt và thuận tiện trên dây nguồn\r\nThông số kỹ thuật: công suất 6W, tần số 50Hz - 20KHz mang đến không gian âm thanh sống động\r\nMàu sắc: Đen viền đỏ, Đen viền xanh', 0, 0, 0),
('1 mini Powermax TS-02 2', 299000, '1', '2', '2016-11-15', 'Sản Phẩm 1 2 tích hợp FM Radio và Micro phone giúp bạn vừa có thể nghe nhạc, vừa có thể nhận và trả lời cuộc Đàm thoại thông qua kết nối 2.\r\nHoặc làm nguồn phát trực tiếp và đồng thời chơi những Bản nhạc từ những thiết bị như USB,Thẻ nhớ…  thông qua những khe cắm tực tiếp trên loa', 0, 0, 0),
('1 dàn 2.1 Microlab M108U', 559000, '1', '2', '2016-11-12', 'Với thiết kế trang nhã, tiện dụng phù hợp cho hầu hết các nhu cầu nghe nhạc, dễ sử dụng. 1 sub cho âm trầm mạnh mẽ và các loa vệ tinh nhỏ gọn cho mức âm cao rõ ràng. Nhu cầu sử dụng giải trí đa phương tiện với thiết kế bên trong đường hầm phản xạ cho âm bass tốt hơn và khả năng kết hợp với nhiều thiết bị, chắc chắn loa Microlab M108U 2.1 sẽ mang đến cho bạn những phút giải trí tuyệt vời nhất.', 0, 0, 0),
('1 Powermax TM-01C 2', 599000, '1', '2', '2016-11-15', '1 di động 2 sử dụng công nghệ Supper Bass\r\nPIN gắn trong và tích hợp nhiều tính năng (TF Card,FM Radio,Line-in,2 Speaker)\r\nHình dáng mô phỏng Ống Kính Máy Chụp Hình và được cấu tạo hoàn toàn bằng kim loại\r\nSử dụng công nghệ cộng hưởng rung và Âm thanh định hướng toàn bộ 360', 0, 0, 0),
('1 Powermax CS-01 bluetooth', 899000, '1', '2', '2016-11-16', '1 Powermax CS- 01 2 tạo ấn tượng bởi ngoại hình vô cùng bắt mắt. Kiểu dáng nhỏ gọn giúp người dùng có thể dễ dàng mang theo đến bất cứ đâu. Thiết kế theo dạng hình tròn với nhiều khoang màu sắc khác nhau giúp sản phẩm trở nên thời trang và nổi bật hơn, đồng thời giúp âm thanh lan tỏa rộng hơn và đều hơn ở cả 4 phía.', 0, 0, 3),
('1 Rock Space 2', 999000, '1', '2', '2016-11-17', 'Tương thích với tất cả các thiết bị thu phát bluetooth Hỗ trợ thẻ TF / Đèn LED dùng được 10h.', 0, 0, 0),
('1 Dàn 4.1 1 A8900', 1499000, '1', '1', '2016-11-18', 'Hệ thống loa 4.1 có tổng công suất 90W\r\nCụm nút điều chỉnh linh hoạt\r\nMạnh mẽ, hiện đại\r\nKết nối giải trí đa phương tiện', 0, 0, 0),
('1 xách tay 2 & NFC 3 SRS-XB2', 1990000, '1', '2', '2016-11-12', 'Nhỏ gọn dễ dàng mang theo.', 0, 0, 0),
('1 Harman kardon SOUND STICK BT', 5990000, '1', '4', '2016-11-21', 'Thiết kế sáng tạo. \r\nÂm thanh chân thực.', 0, 0, 0),
('1 xách tay 2 Hi-res 3 SRS-HG1', 4290000, '1', '2', '2016-11-14', 'Thiết nhỏ gọn. Dễ dàng di chuyển.', 0, 0, 0),
('1 vi tính 1 A920', 740000, '1', '1', '2016-11-19', 'Tổng công suất: 30W\r\nCống suất loa siêu trầm: 15W\r\nBộ sản phẩm: 1 sub, 2 vệ tinh\r\nJack kết nối: 3.5mm\r\nKhe cắm USB/SD: Có\r\nBảo hành 3 tháng 1 đổi 1.', 0, 0, 0),
('1 vi tính 2 F203G', 490000, '1', '2', '2016-11-14', 'Thiết kế nhỏ gọn và tinh tế, giúp cho việc di chuyển hoặc mang đi xa trở nên dễ dàng.\r\nNhờ công suất 11W, loa cho âm thanh chân thật và sống động.\r\nĐiều chỉnh âm thanh theo ý muốn với nút tăng giảm Bass và đèn LED xanh báo hiệu.\r\nChất liệu gỗ giúp cho âm thanh ấm và không bị méo.\r\nKết nối dễ dàng và tương thích với laptop, MP3, điện thoại,...\r\nBảo hành 1 năm 1 đổi 1', 0, 0, 0),
('1 vi tính 2 F380X', 1350000, '1', '2', '2016-11-13', 'Thiết kế mạnh mẽ, đẹp mắt và tỉ mỉ với vòng tròn phát sáng ở trung tâm khi sử dụng.\r\nCông suất 54W mang đến âm thanh chất lượng cao, sống động và rõ nét.\r\nKết nối không dây với các thiết bị di động qua 2 4.0/ NFC.\r\nTrang bị thêm remote giúp cho việc điều chỉnh bài nhạc, tăng giảm âm lượng... thuận tiện hơn.\r\nNguồn: 220 - 240V.\r\nBảo hành 1 năm 1 đổi 1', 0, 0, 0),
('1 2 6000mAH JBL Pulse 2', 4900000, '1', '2', '2016-11-17', 'Âm thanh mạnh mẽ với công nghệ JBL Bass Radiator.\r\nThiết kế với khả năng chịu nước và bụi bẩn.\r\nDung lượng pin lên đến 6000mAh, cho thời gian phát nhạc lên đến 10 giờ.\r\nĐặc biệt là khả năng nhận dạng màu sắc của vật thể gần nó để thay đổi 7 màu sắc tương ứng với bài nhạc.\r\nCài đặt thêm app JBL connect để thay đổi cách mà ánh sáng trình diễn trên mặt loa.\r\nCó khả năng kết nối với nhiều thiết bị.\r\nBảo hành 3 tháng 1 đổi 1', 3, 1, 0),
('1 vi tính 2 U213A - 2.0', 220000, '1', '2', '2016-11-14', 'Thiết kế đơn giản với màu đen trơn nhưng rất tinh tế và đẹp mắt.\r\nKích thước nhỏ gọn thuận tiện cho việc di chuyển.\r\nVới góc nghiêng 11 độ giúp 1 phát âm thanh rộng hơn.\r\nKết nối dễ dàng và nhanh chóng với PC, laptop,...thông qua Jack 3.5mm.\r\nBảo hành 1 năm 1 đổi 1.', 0, 0, 0),
('1 2 Selfie iCutes MB-M515 Dơi Đen', 250000, '1', '2', '2016-11-18', 'Thiết kế nhỏ gọn, đẹp mắt.\r\nCó chức năng như Remote chụp ảnh thông qua 2.\r\nThời gian hoạt động: 2 - 4 giờ.\r\nThời gian sạc: 2 giờ.\r\nBảo hành 1 năm 1 đổi 1.', 0, 0, 0),
('1 vi tính 2 A111', 750000, '1', '2', '2016-11-21', 'Thiết kế đẹp mắt và đồng bộ.\r\nDễ dàng điểu chỉnh âm thanh theo ý muốn với nút tăng giảm âm Bass, Treble.\r\nCông suất 35W và tỉ số nén nhiễu 65db, mang đến chất lượng âm thanh ổn định và ít nhiễu khi âm thanh ở mức cực đại.\r\nDễ dàng tùy chỉnh với 3 nút: Play/Pause, Next, Previous.\r\nTương thích và kết nối dễ dàng với hầu hết thiết bị điện tử: laptop, 2, đầu CD,...\r\nBảo hành 1 năm 1 đổi 1.', 0, 0, 0),
('1 vi tính SoundMax A150-2.0', 300000, '1', '1', '2016-11-21', 'Tổng công suất: 5W x 2\r\nBộ sản phẩm: 2 loa\r\nJack kết nối: 3.5mm\r\nKhe cắm USB/SD: Không\r\nBảo hành 3 tháng 1 đổi 1. ', 0, 0, 0),
('1 2 Genius SP-920BT', 900000, '1', '2', '2016-11-15', 'Thiết kế nhỏ gọn, tiện dụng và đẹp mắt.\r\nThoải mái đàm thoại với nút nghe/nhận cuộc gọi, mic ngay trên thân loa.\r\nCông nghệ bluetooth 4.0 giúp kết nối nhanh chóng, dễ dàng với các thiết bị.\r\nKhoảng cách kết nối lên đến 30 mét.\r\nSử dụng pin lithium, dung lượng 1000mAh.\r\nBảo hành 1 năm 1 đổi 1', 0, 0, 0),
('1 vi tính 2 A521', 1050000, '1', '2', '2016-11-17', 'Thiết kế bề mặt loa không bám bẩn và vệ sinh khá dễ dàng.\r\nCông suất 52W mang đến âm thanh chất lượng cao, sống động và rõ nét.\r\nTích hợp thêm hai cổng kết nối dành riêng cho USB và thẻ nhớ MicroSD.\r\nThao tác dễ dàng với 3 nút điều khiển Play/Pause, Next và Previous.\r\nTương thích và dễ dàng kết nối với laptop, đầu CD/VCD,...\r\nBảo hành 1 năm 1 đổi 1. ', 0, 0, 0),
('MP3 3 Walkman NW-WS410', 1749000, '2', '3', '2016-11-15', 'Dung lượng 4G, sạc pin nhanh.', 0, 0, 0),
('Máy MP3 Walkman NW-E394', 1750000, '2', '3', '2016-11-21', '-Mặt trước vỏ ngoài làm từ nhôm nguyên chất.\r\n-Màn hình 1.77 inch, QQVGA (160 x 128), 65,536 màu\r\n-Chức năng chính: Nghe nhạc, xem hình, lưu trữ dữ liệu, FM.\r\n-Công nghệ âm thanh Bass Boost, Clear Audio+\r\n-5 band equalizer (Heavy / Pop / Jazz / Unique / Custom)\r\n-Cài đặt giờ và báo thức.', 0, 0, 1),
('3 NWZ-WH505', 3800000, '2', '3', '2016-11-17', 'Hãng sản xuất: SONY\r\nDung lượng bộ nhớ trong: 16GB', 0, 0, 1),
('4 iPod shuffle 2GB', 100000, '2', '4', '2016-11-18', 'Tiếng Việt', 0, 0, 0),
('4 iPod Nano 2011 8GB', 3550000, '2', '4', '2016-11-15', 'Nhỏ gọn kiểu dáng sang trọng.\r\nDung lượng 8G.', 0, 0, 0),
('4 iPod Shuffle 2012 2GB', 1600000, '2', '4', '2016-11-22', 'Tét tiếng việt', 0, 0, 3),
('2 ITECH V44', 1500000, '2', '4', '2016-11-20', 'Không có gì ấn tượng lắm.\r\nMiễn nhận xét.', 0, 0, 0),
('3 Walkman NWZ-W273', 1750000, '2', '3', '2016-11-17', 'Sang trọng thích hợp với người năng động.\r\nGiá cả phải chăng. Bền và có bảo hành.', 0, 0, 0),
('Transcend MP350 8GB', 990000, '2', '3', '2016-11-24', 'Rất đáng quan tâm, giá rẻ, sử dụng bảo hành 1 năm không bảo đảm.', 0, 0, 0),
('3 NWZ-B183F', 1190000, '2', '3', '2016-11-17', 'Một sản phẩm chất lượng tiền nào của nấy. Giá cả rẻ bất ngờ. Xài cả ngày.', 0, 0, 0),
('ASCENT RY-112 128MB', 800000, '2', '4', '2016-11-15', 'Tuy dung lượng không cao nhưng đáng để bỏ túi tiền.', 0, 0, 0),
('ASCENT RY-188 256MB', 1100000, '2', '4', '2016-11-22', 'Mô tả của em là không có mô tả nào.', 0, 0, 0),
('Transcend MP330 8GB', 1300000, '2', '3', '2016-11-15', 'Máy nghe nhạc hiện đại, dung lượng 3G xài mọi lúc, liên tục 8h.', 0, 0, 0),
('Transcend MP300 8GB', 990000, '2', '3', '2016-11-14', 'Nhỏ gọn tiện sử dụng.\r\nNặng 250 gram, dài 10cm.', 0, 0, 0),
('3 Walkman NWZ-B172P', 1080000, '2', '3', '2016-11-18', 'An toàn dễ sử dụng, kiểu dáng tao nhã.\r\nThích hợp với người trẻ tuổi tăng động có sở thích thể thao.', 0, 0, 0),
('3 Walkman SSE - BTR1', 5300000, '2', '3', '2016-11-15', 'Đắt nhưng xắt ra miếng. Thích hợp cho dân sành điệu.', 0, 0, 0),
('4 iPod Shuffle 4GB', 2000000, '2', '4', '2016-11-14', 'Tích hợp thẻ nhớ,bluetooth, ...\r\nKhuyến mãi 100%.', 0, 0, 0),
('3 Walkman NWZ-B173F', 1350000, '2', '3', '2016-11-17', 'Nhỏ như một chiếc USB, có tích hợp thẻ nhớ, bluetooth.\r\n', 0, 0, 0),
('Creative Zen Mozaic 4GB', 2190000, '2', '3', '2016-11-19', 'Hãng mới tung ra thị trường.', 0, 0, 0),
('5 ICOO A90 4GB', 1800000, '2', '5', '2016-11-20', 'Máy mới của hãng 5 đáng để trải nghiệm', 0, 0, 0),
('ICOO IX35', 2100000, '2', '5', '2016-12-01', 'Hơi bị chất lượng. Kiểu dáng như một chiếc điện thoại.', 0, 0, 0),
('5 N86 2GB', 580000, '2', '5', '2016-11-25', 'Hàng rẻ mà chất lượng.', 0, 0, 0);