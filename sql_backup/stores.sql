-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 03, 2017 lúc 05:48 PM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Cơ sở dữ liệu: `stores`
--
<<<<<<< HEAD
CREATE DATABASE IF NOT EXISTS `stores` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci;
=======
CREATE DATABASE IF NOT EXISTS `stores` DEFAULT CHARACTER SET utf8 COLLATE utf8_vietnamese_ci;
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8
USE `stores`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
<<<<<<< HEAD
  `author` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
=======
  `author` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `description` text COLLATE utf8_vietnamese_ci NOT NULL,
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8
  `price` bigint(20) DEFAULT '0',
  `num_buy` int(11) DEFAULT '0',
  `amount` int(11) DEFAULT '10',
  `sale` double DEFAULT '0',
  `star` int(11) DEFAULT '5',
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
=======
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `category_id`, `author`, `name`, `description`, `price`, `num_buy`, `amount`, `sale`, `star`, `created_at`, `update_at`) VALUES
(1, 2, ' Alexandre Dumas', 'Ba Người Lính Ngự Lâm', '\"Ba Người Lính Ngự Lâm là câu chuyện mở đầu trong bộ ba truyện Les trois Mousquetaires (Ba người lính ngự lâm), Vingt ans après (hai mươi năm sau) và Le Vicomte de Bragelonne (tử tước de Bragelonne).<br>Cuốn tiểu thuyết lấy bối cảnh là xã hội quý tộc vua chúa đầy âm mưu cả chính trị và tình ái đan xen của cung đình nước Pháp thế kỷ XVII. Nổi bật lên trên cả các bậc vua chúa đó, Dumas đặt nhân vật d’Artagnan và ba người lính ngự lâm vào trung tâm của mọi sự kiện và là những người hóa giải mọi âm mưu.\"', 169000, 0, 10, 118000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(2, 1, 'Mari Tamagawa', 'Mặc Kệ Thiên Hạ - Sống Như Người Nhật', '\"Mặc Kệ Thiên Hạ - Sống Như Người Nhật<br>Cuốn sách gối đầu giường cho những người hay lo lắng, sợ hãi và luôn thấy mình kém may mắn<br>Dành cho những ai muốn được sống là chính mình, cuộc đời của mình, tuổi trẻ của mình.\"', 79000, 0, 10, 63000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(3, 3, 'Nguyễn Nhật Ánh', 'Cô gái đến từ hôm qua', '\"Cô Gái Đến Từ Hôm Qua<br>Nếu ngày xưa còn bé, Thư luôn tự hào mình là cậu con trai thông minh có quyền bắt nạt và sai khiến các cô bé cùng lứa tuổi thì giờ đây khi lớn lên, anh luôn khổ sở khi thấy mình ngu ngơ và bị con gái “xỏ mũi”. Và điều nghịch lý ấy xem ra càng “trớ trêu’ hơn, khi như một định mệnh, Thư nhận ra Việt An, cô bạn học thông minh thường làm mình bối rối bấy lâu nay chính là Tiểu Li, con bé hàng xóm ngốc nghếch từng hứng chịu những trò nghịch ngợm của mình hồi xưa.\"', 80000, 0, 10, 56000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(4, 2, 'Harper Lee', 'Giết con chim nhại', '\"Giết Con Chim Nhại<br>Nào, hãy mở cuốn sách này ra. Bạn phải làm quen ngay với bố Atticus của hai anh em - Jem và Scout, ông bố luật sư có một cách riêng, để những đứa trẻ của mình cứng cáp và vững vàng hơn khi đón nhận những bức xúc không sao hiểu nổi trong cuộc sống. Bạn sẽ nhớ rất lâu người đàn ông thích trốn trong nhà Boo Radley, kẻ bị đám đông coi là lập dị đã chọn một cách rất riêng để gửi những món quà nhỏ cho Jem và Scout, và khi chúng lâm nguy, đã đột nhiên xuất hiện để che chở. Và tất nhiên, bạn không thể bỏ qua anh chàng Tom Robinson, kẻ bị kết án tử hình vì tội hãm hiếp một cô gái da trắng, sự thật thà và suy nghĩ quá đỗi đơn giản của anh lại dẫn đến một cái kết hết sức đau lòng, chỉ vì lý do anh là một người da đen.\"', 108000, 0, 10, 75600, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(5, 4, 'Dr. Blair Thomas Spalding', 'Hành Trình Về Phương Đông', '\"Hành Trình Về Phương Đông<br>Hành Trình Về Phương Đông mở ra một chân trời mới về Đông Tây gặp nhau, để khoa học Minh triết hội ngộ, để Hiện đại Cổ xưa giao duyên, để Đất Trời là một. Thế giới, vì vậy đã trở nên hài hòa hơn, rộng mở, diệu kỳ hơn và, do đó, nhân văn hơn.<br>Hành Trình Về Phương Đông kể về những trải nghiệm của một đoàn khoa học gồm các chuyên gia hàng đầu của Hội Khoa Học Hoàng Gia Anh được cử sang Ấn Độ nghiên cứu về huyền học và những khả năng siêu nhiên của con người. Suốt hai năm trời rong ruổi khắp các đền chùa Ấn Độ, chúng kiến nhiều pháp luật, nhiều cảnh mê tín dị đoan, thậm chí lừa đảo...của nhiều pháp sư, đạo sĩ...họ được tiếp xúc với những vị thế, họ được chứng kiến, trải nghiệm, hiểu biết sâu sắc về các khoa học cổ xưa và bí truyền của văn hóa Ấn Độ như Yoga, thiền định, thuật chiêm duyên, nghiệp báo, luật nhân quả, cõi sống và cõi chết....\"', 78000, 0, 10, 47000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(6, 4, 'Xiu-ying Wei', 'Bốn rưỡi sáng', '\"Harvard Bốn Rưỡi Sáng<br>Harvard bốn rưỡi sáng sử dụng hình ảnh Harvard như một biểu tượng xuyên suốt, kể lại các câu chuyện có tính cách điệu về Harvard như một phương thức nhằm thu hút bạn đọc đến với cuốn sách, để từ đó chuyển tải những chỉ dẫn, khuyến khích, gợi ý cùng thông điệp vừa thực dụng vừa bay bổngtới các bạn trẻ đang ngồi trên ghế nhà trường và chuẩn bị bước vào đời. Có nhiềuthông điệp giá trị và hữu ích mà bạn sẽ học thu hoạch được từ cuốn sách như:<br><br>Nếu không chăm chỉ, thiên tài cũng trắng tay<br<br>Nhiệt tình là sức mạnh thay đổi vận mệnh<br><br>Biết tự kiểm soát bản thân để vững bước thành công<br><br>Tri thức là vốn quý mà không kẻ trộm nào lấy được<br><br>Đừng bao giờ lãng phí thời gian vào những việc vô bổ…\"', 119000, 0, 10, 92820, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(7, 2, 'Paulo Coelho', 'Nhà giả kim', '\"Nhà Giả Kim<br>Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.<br>Tiểu thuyết Nhà giả kim của Paulo Coelho như một câu chuyện cổ tích giản dị, nhân ái, giàu chất thơ, thấm đẫm những minh triết huyền bí của phương Đông. Trong lần xuất bản đầu tiên tại Brazil vào năm 1988, sách chỉ bán được 900 bản. Nhưng, với số phận đặc biệt của cuốn sách dành cho toàn nhân loại, vượt ra ngoài biên giới quốc gia, Nhà giả kim đã làm rung động hàng triệu tâm hồn, trở thành một trong những cuốn sách bán chạy nhất mọi thời đại, và có thể làm thay đổi cuộc đời người đọc.<br>\"', 69000, 0, 10, 55000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(8, 5, 'Tina Seelig', 'Nếu tôi biết được khi còn 20', '\"Bạn có 5 đô la và 2 giờ đồng hồ để kinh doanh. Bạn sẽ làm gì? - Đây là một trong những ví dụ minh hoạ được nhắc đến trong cuốn sách Nếu Tôi Biết Được Khi Còn 20. Trả lời cho câu hỏi này có rất nhiều cách và với mỗi cách, tác giả lại chỉ ra những bài học nhỏ thôi nhưng hữu ích.<br>Cuốn sách được chia thành 10 chương với những vấn đề khách nhau theo một trình tự rõ ràng.\"', 64000, 0, 10, 45000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(9, 6, 'Dale Carnegie', 'Đắc nhân tâm', '\"Đắc Nhân Tâm - Được lòng người, là cuốn sách đưa ra các lời khuyên về cách thức cư xử, ứng xử và giao tiếp với mọi người để đạt được thành công trong cuộc sống. Gần 80 năm kể từ khi ra đời, Đắc Nhân Tâm là cuốn sách gối đầu giường của nhiều thế hệ luôn muốn hoàn thiện chính mình để vươn tới một cuộc sống tốt đẹp và thành công.\"', 30000, 0, 10, 25000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(10, 2, 'Shinkai Makoto', '5 Centimet Trên Giây', '\"5 Centimet Trên Giây<br>5cm/s không chỉ là vận tốc của những cánh anh đào rơi, mà còn là vận tốc khi chúng ta lặng lẽ bước qua đời nhau, đánh mất bao cảm xúc thiết tha nhất của tình yêu.<br>Bằng giọng văn tinh tế, truyền cảm, 5 centimet trên giây mang đến những khắc họa mới về tâm hồn và khả năng tồn tại của cảm xúc, bắt đầu từ tình yêu trong sáng, ngọt ngào của một cô bé và cậu bé. Ba giai đoạn, ba mảnh ghép, ba ngôi kể chuyện khác nhau nhưng đều xoay quanh nhân vật nam chính, người luôn bị ám ảnh bởi kí ức và những điều đã qua…\"', 50000, 0, 10, 40000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(11, 5, 'Trác Nhã', 'Khéo Ăn Nói Sẽ Có Được Thiên Hạ', '\"Khéo Ăn Nói Sẽ Có Được Thiên Hạ<br>Xã hội hiện đại, từ xin việc đến thăng chức, từ tình yêu đến hôn nhân, từ giao lưu đến hợp tác… không việc gì không cần tài ăn nói.<br><br>Khéo ăn nói giống như sở hữu loại “dầu bôi trơn” đảm bảo các mối quan hệ của bạn “vận hành” trơn tru. Không khéo ăn nói, gặp chuyện nhỏ mắc trở ngại, gặp chuyện lớn vấp thất bại.<br><br>Làm thế nào để nói năng trôi chảy? Làm thế nào để nói lời “đi vào lòng người”? Trong những dịp khác nhau, với những người khác nhau, ở những tình huống không giống nhau… có cuốn sách này gợi ý, bạn sẽ thành người khéo ăn nói.\"', 99000, 0, 10, 69000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(12, 7, 'Paul Kalanithi', 'Khi Hơi Thở Hóa Thinh Không', '\"Khi Hơi Thở Hóa Thinh Không là tự truyện của một bác sĩ bị mắc bệnh ung thư phổi. Trong cuốn sách này, tác giả đã chia sẻ những trải nghiệm từ khi mới bắt đầu học ngành y, tiếp xúc với bệnh nhân cho tới khi phát hiện ra mình bị ung thư và phải điều trị lâu dài.<br>Kalanithi rất yêu thích văn chương nên câu chuyện của anh đã được thuật lại theo một phong cách mượt mà, dung dị và đầy cảm xúc. Độc giả cũng được hiểu thêm về triết lý sống, triết lý nghề y của Kalanithi, thông qua ký ức về những ngày anh còn là sinh viên, rồi thực tập, cho đến khi chính thức hành nghề phẫu thuật thần kinh. “Đối với bệnh nhân và gia đình, phẫu thuật não là sự kiện bi thảm nhất mà họ từng phải đối mặt và nó có tác động như bất kỳ một biến cố lớn lao trong đời. Trong những thời điểm nguy cấp đó, câu hỏi không chỉ đơn thuần là sống hay chết mà còn là cuộc sống nào đáng sống.” – Kalanithi luôn biết cách đưa vào câu chuyện những suy nghĩ sâu sắc và đầy sự đồng cảm như thế.<br><br>Bạn bè và gia đình đã dành tặng những lời trìu mến nhất cho con người đáng kính trọng cả về tài năng lẫn nhân cách này. Dù không thể vượt qua cơn bệnh nan y, nhưng thông điệp của tác giả sẽ còn khiến người đọc nhớ mãi.\"', 109000, 0, 10, 79000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(13, 2, 'Hector Malot', 'Không Gia Đình', '\"Không Gia Đình là cuốn sách được xếp vào danh mục văn học thiếu nhi nhưng rõ ràng, với những gì Không Gia Đình đã kể thì đây là cuốn sách dành cho mọi lứa tuổi ở mọi quốc gia, mọi tầng lớp.<br><br>Không Gia Đình là một chuyến phiêu lưu mà Rêmi là nhân vật chính. Em nghèo khổ, em cô độc, em không có người thân. Cuộc đời Rêmi gắn liền với gánh xiếc rong, với những thử thách mà em gặp phải trên đường đời trải rộng khắp nước Pháp tươi đẹp. Rêmi lớn lên trong đau khổ, lang thang mọi nơi, bị tù đày... nhưng dù trong hoàn cảnh nào, em vẫn đứng thẳng lưng, ngẩng cao đầu, giữ phẩm chất làm người - điều em đã học từ cụ Vitali trong cuộc đời lang bạt của mình.<br><br>Không Gia Đình ca ngợi giá trị của lao động, của nhân cách và tình cảm. Cuốn sách mô tả những hình ảnh, những mảnh đời bấp bênh để làm nền cho niềm tin, cho tình người ấm áp.<br>Không Gia Đình thực sự là một cuốn sách hay và giá trị hơn cả một giá sách dạy phương pháp làm người.\"', 119000, 0, 10, 94200, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(14, 5, 'Satoshi Noguchi', 'Làm Chủ Giao Tiếp Để Thành Công', '\"Làm Chủ Giao Tiếp Để Thành Công<br>Giao tiếp là việc hằng ngày ai cũng phải làm, nhưng lại rất ít người trong chúng ta chịu đặt ra câu hỏi: “Giao tiếp như thế nào cho hiệu quả?”. Vì không chịu nâng cao kỹ năng đối thoại, chúng ta rất dễ thụ động trong các tình huống xã hội. VD: Khi bạn kể chuyện, người nghe dù rất chăm chú vẫn không hiểu bạn muốn nói gì. Nếu phải đứng trước đám đông phát biểu, bạn sẽ lúng túng như gà mắc tóc. Bạn rất tự tin khi gặp gỡ nhà tuyển dụng, nhưng cuối cùng lại không gây được ấn tượng nào với họ…<br><br>Việc đặt ra những câu hỏi như “Phải dùng giọng điệu thế nào cho hay?”, “Không nên nói điều gì để tránh gây nhàm chán”… chỉ mất thêm của bạn khoảng vài phút trước cuộc hội thoại nhưng lại tạo ra hiệu quả hoàn toàn khác biệt. Nếu muốn tiến bộ, hãy học hỏi và luyện tập từ những điều nhỏ nhất.<br><br>Cuốn sách “Làm chủ giao tiếp để thành công” của Satoshi Noguchi sẽ giúp bạn tìm ra các vấn đề để cải thiện kỹ năng giao tiếp và cung cấp các kỹ thuật nhằm giải quyết các vấn đề đó. Bên cạnh các lời khuyên, tác giả cũng liên tục đưa ra những ví dụ cụ thể, thực tế trong cuộc sống để độc giả dễ dàng tham khảo và áp dụng. Hãy nhớ rằng, mọi rào cản khó khăn trong khi trò chuyện đều có thể được phá vỡ. Ngưng trì hoãn, bắt đầu thay đổi và thực hành ngay hôm nay, bạn sẽ trở nên tự tin hơn rất nhiều trong lần tiếp theo phải “xử lý” các tình huống tương tác ngoài xã hội.\"', 85000, 0, 10, 59500, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(15, 5, 'Camilo Cruz', 'Ngày Xưa Có Một Con Bò', 'Dù muốn dù không thì trong mỗi người chúng ta đều đang nuôi ít nhất là 1 con bò và thậm chí là cả đàn bò. Đó là những con bò: bao biện, viện cớ, đổ lỗi, ỷ lại, mãi tự hào với quá khứ…', 62000, 0, 10, 50000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(16, 2, 'John Green', 'Khi Lỗi Thuộc Về Những Vì Sao', '\"Khi Lỗi Thuộc Về Những Vì Sao<br><br>Mặc dù phép màu y học đã giúp thu hẹp khối u và ban thêm vài năm sống cho Hazel nhưng cuộc đời cô bé đang ở vào giai đoạn cuối, từng chương kế tiếp được viết theo kết quả chẩn đoán. Nhưng khi có một nhân vật điển trai tên là Augustus Waters đột nhiên xuất hiện tại Hội Tương Trợ Bệnh Nhi Ung Thư, câu chuyện của Hazel sắp được viết lại hoàn toàn.<br><br>Sâu sắc, táo bạo, ngang tàng, và thô ráp, Khi lỗi thuộc về những vì sao là tác phẩm thương tâm và tham vọng nhất của John Green, tác giả của những giải thưởng, nhưng đồng thời lại khám phá một cách khéo léo nét hài hước, li kỳ, và bi thảm của việc sống và việc yêu.\"', 105000, 0, 10, 74000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(17, 5, 'Adam Khoo', 'Tôi Tài Giỏi - Bạn Cũng Thế', '\"Khi bạn cầm trên tay quyển sách này, có nghĩa là bạn đã có chiếc chìa khóa đến sự thành công cùng bảng hướng dẫn sử dụng.<br><br>Trong chúng ta, bất kỳ ai cũng muốn chính bản thân mình trở thành người tài giỏi, có thể giải quyết mọi vấn đề một cách hiệu quả nhất. Và để có được những điều đó quyển sách này sẽ giúp bạn bằng những hướng dẫn học tập chi tiết nhất.<br><br>Tác giả không chỉ đơn thuần giải thích người khác đã thành công như thế nào, mà còn nói làm sao để họ làm được như thế để giúp người đọc khám phá ra tiềm năng của bản thân, và phát huy điều đó. Ngoài ra, sách còn cung cấp những phương pháp học thông minh (như áp dụng các công cụ học bằng cả não bộ như Sơ Đồ Tư Duy, phát triển trí nhớ siêu việt để ghi nhớ các sự kiện, con số một cách dễ dàng, thành thạo việc quản lý thời gian và xác định mục tiêu). Adam Khoo đã cho thấy, tài giỏi mang lại sự tự tin như thế nào và còn hướng dẫn bạn cách thức trở thành người tài giỏi. Qua đó độc giả sẽ lập được kế hoạch cho cuộc đời của chính mình.<br><br>Tôi Tài Giỏi - Bạn Cũng Thế sẽ giúp tìm ra giải pháp tốt nhất cho mọi vấn đề, và giúp nhận ra cách thức để thành công. Tuy nhiên để làm một người tài giỏi thì người đọc cần đặt quyển sách xuống và thực thi ngay các kế hoạch. Đương nhiên, không phải chỉ chăm chỉ ngày một, ngày hai mà mỗi người phải thực hiện lâu dài, thậm chí cả đời thì mới đạt được những gì mình muốn.<br><br>Thật sự đây là một quyển sách rất tuyệt vời và bổ ích, đem lại cho chúng ta những kinh nghiệm quý báu. Một quyển sách không - thể - thiếu trong tủ sách!\"', 110000, 0, 10, 74000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(18, 8, 'Kuroyanagi Tetsuko', 'Totto-Chan Bên Cửa Sổ', '\"Totto-Chan Bên Cửa Sổ (Tái Bản)<br><br>Vừa vào lớp một được vài ngày, Totto-chan đã bị đuổi học!!!<br><br>Không còn cách nào khác, mẹ đành đưa Totto-chan đến một ngôi trường mới, trường Tomoe. Đấy là một ngôi trường kỳ lạ, lớp học thì ở trong toa xe điện cũ, học sinh thì được thoả thích thay đổi chỗ ngồi mỗi ngày, muốn học môn nào trước cũng được, chẳng những thế, khi đã học hết bài, các bạn còn được cô giáo cho đi dạo. Đặc biệt hơn ở đó còn có một thầy hiệu trưởng có thể chăm chú lắng nghe Totto-chan kể chuyện suốt bốn tiếng đồng hồ! Chính nhờ ngôi trường đó, một Totto-chan hiếu động, cá biệt đã thu nhận được những điều vô cùng quý giá để lớn lên thành một con người hoàn thiện, mạnh mẽ.<br><br>Totto-chan bên cửa sổ, là cuốn sách gối đầu giường của nhiều thế hệ trẻ em trên toàn thế giới suốt ba mươi năm nay. Sau khi xuất bản lần đầu vào năm 1981, cuốn sách đã gây được tiếng vang lớn không chỉ ở Nhật Bản mà còn trên toàn thế giới. Tính đến năm 2001, tổng số bản sách bán ra ở Nhật đã lên đến 9,3 triệu bản, trở thành một trong những cuốn sách bán chạy nhất trong lịch sử ngành xuất bản nước này. Cuốn sách đã được dịch ra 33 thứ tiếng khác nhau, như Anh, Pháp, Đức, Hàn Quốc, Trung Quốc…Khi bản tiếng Anh của Totto-chan được xuất bản tại Mỹ, tờ New York Times đã đăng liền hai bài giới thiệu trọn trang, một “vinh dự” hầu như không tác phẩm nào có được.\"', 80000, 0, 10, 64000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(19, 4, 'Rosie Nguyễn', 'Tuổi Trẻ Đáng Giá Bao Nhiêu', '\"Tuổi Trẻ Đáng Giá Bao Nhiêu<br><br>\"\"Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.<br><br>Bạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét, người ta chẳng hề bận lòng.<br><br>Bạn có chết mòn nơi xó tường với những ước mơ dang dở, đó không phải là việc của họ.<br><br>Suy cho cùng, quyết định là ở bạn. Muốn có điều gì hay không là tùy bạn.<br><br>Nên hãy làm những điều bạn thích. Hãy đi theo tiếng nói trái tim. Hãy sống theo cách bạn cho là mình nên sống.<br><br>Vì sau tất cả, chẳng ai quan tâm.\"\"\"', 70000, 9, 20, 59000, 5, '2017-12-03 23:41:56', '2017-12-03 23:41:56');

--
-- Bẫy `books`
--
DROP TRIGGER IF EXISTS `before_insert_books`;
DELIMITER $$
CREATE TRIGGER `before_insert_books` BEFORE INSERT ON `books` FOR EACH ROW SET NEW.update_at=CURRENT_TIMESTAMP,NEW.created_at=CURRENT_TIMESTAMP
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_books`;
DELIMITER $$
CREATE TRIGGER `before_update_books` BEFORE UPDATE ON `books` FOR EACH ROW SET NEW.update_at=CURRENT_TIMESTAMP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_carts`
--

DROP TABLE IF EXISTS `book_carts`;
CREATE TABLE IF NOT EXISTS `book_carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) DEFAULT '1',
  `cart_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`cart_id`,`book_id`),
  KEY `book_id` (`book_id`)
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
=======
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8

--
-- Bẫy `book_carts`
--
DROP TRIGGER IF EXISTS `before_insert_book_carts`;
DELIMITER $$
CREATE TRIGGER `before_insert_book_carts` BEFORE INSERT ON `book_carts` FOR EACH ROW SET NEW.update_at=CURRENT_TIMESTAMP,NEW.created_at=CURRENT_TIMESTAMP
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_book_carts`;
DELIMITER $$
CREATE TRIGGER `before_update_book_carts` BEFORE UPDATE ON `book_carts` FOR EACH ROW SET NEW.update_at=CURRENT_TIMESTAMP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
<<<<<<< HEAD
  `action` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
=======
  `action` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8
  `price_total` bigint(20) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
<<<<<<< HEAD
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
=======
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8

--
-- Bẫy `carts`
--
DROP TRIGGER IF EXISTS `before_update_carts`;
<<<<<<< HEAD
DELIMITER $$
CREATE TRIGGER `before_update_carts` BEFORE UPDATE ON `carts` FOR EACH ROW SET NEW.update_at=CURRENT_TIMESTAMP
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `increase_buy_book`;
=======
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8
DELIMITER $$
CREATE TRIGGER `before_update_carts` BEFORE UPDATE ON `carts` FOR EACH ROW SET NEW.update_at=CURRENT_TIMESTAMP
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `increase_buy_book`;
DELIMITER $$
CREATE TRIGGER `increase_buy_book` AFTER UPDATE ON `carts` FOR EACH ROW BEGIN
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
DROP TRIGGER IF EXISTS `set_waitting_cart`;
DELIMITER $$
CREATE TRIGGER `set_waitting_cart` BEFORE INSERT ON `carts` FOR EACH ROW SET NEW.action="waiting",NEW.update_at=CURRENT_TIMESTAMP,NEW.created_at=CURRENT_TIMESTAMP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
<<<<<<< HEAD
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
=======
  `name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Truyện ngắn'),
(2, 'Sách văn học'),
(3, 'Tiểu thuyết'),
(4, 'Sách Kỹ Năng Sống'),
(5, 'Sách kinh tế'),
(6, 'Ebook'),
(7, 'New Book'),
(8, 'Sách Thiếu Nhi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
<<<<<<< HEAD
  `description` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
=======
  `description` text COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_url` blob NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
=======
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `image_url`, `book_id`) VALUES
(1, 0x2f6c69622f696d616765732f62615f6368616e675f6c696e685f6e67755f6c616d2e6a7067, 1),
(2, 0x2f6c69622f696d616765732f6d61635f6b655f746869656e5f68612e6a7067, 2),
(3, 0x2f6c69622f696d616765732f636f5f6761695f64656e5f74755f686f6d5f7175612e6a7067, 3),
(4, 0x2f6c69622f696d616765732f676965745f636f6e5f6368696d5f6e68616e2e6a7067, 4),
(5, 0x2f6c69622f696d616765732f68616e685f7472696e685f76655f7068756f6e675f646f6e672e6a7067, 5),
(6, 0x2f6c69622f696d616765732f626f6e5f72756f695f73616e672e6a7067, 6),
(7, 0x2f6c69622f696d616765732f6e68615f6769615f6b696d2e6a7067, 7),
(8, 0x2f6c69622f696d616765732f6e65755f746f695f626965745f64756f635f6b68695f636f6e5f32302e6a7067, 8),
(9, 0x2f6c69622f696d616765732f6461635f6e68616e5f74616d2e6a7067, 9),
(10, 0x2f6c69622f696d616765732f355f63656e74696d65745f7472656e5f676961792e6a7067, 10),
(11, 0x2f6c69622f696d616765732f6b68656f5f616e5f6e6f695f73655f636f5f64756f635f746869656e5f68612e6a7067, 11),
(12, 0x2f6c69622f696d616765732f6b68695f686f695f74686f5f686f615f7468696e685f6b686f6e672e6a7067, 12),
(13, 0x2f6c69622f696d616765732f6b686f6e675f6769615f64696e682e6a7067, 13),
(14, 0x2f6c69622f696d616765732f6c616d5f6368755f6769616f5f746965705f7468616e685f636f6e672e6a7067, 14),
(15, 0x2f6c69622f696d616765732f6e6761795f7875615f636f5f6d6f745f636f6e5f626f2e6a7067, 15),
(16, 0x2f6c69622f696d616765732f6b68695f6c6f695f7468756f635f76655f6e68756e675f76695f73616f2e6a7067, 16),
(17, 0x2f6c69622f696d616765732f746f695f7461695f67696f692e6a7067, 17),
(18, 0x2f6c69622f696d616765732f746f74746f5f6368616e2e6a7067, 18),
(19, 0x2f6c69622f696d616765732f74756f695f7472655f64616e675f6769615f62616f5f6e686965752e6a7067, 19);

--
-- Bẫy `images`
--
DROP TRIGGER IF EXISTS `before_create_image`;
DELIMITER $$
CREATE TRIGGER `before_create_image` BEFORE INSERT ON `images` FOR EACH ROW SET  NEW.image_url = CASE WHEN NEW.image_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.image_url END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
<<<<<<< HEAD
  `first_name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `birth_day` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_vietnamese_ci,
  `avatar_url` blob NOT NULL,
  `token_reset` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
=======
  `first_name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `birth_day` date DEFAULT NULL,
  `address` text COLLATE utf8_vietnamese_ci,
  `avatar_url` blob NOT NULL,
  `token_reset` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `users` (`email`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;
=======
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `admin`, `birth_day`, `address`, `avatar_url`, `token_reset`, `created_at`, `update_at`) VALUES
(1, 'Nguyễn', 'Anh Việt', 'songvui000@gmail.com', '123456789', '25f9e794323b453885f5181f1b624d0b', 1, '2017-12-02', 'Dĩ An-Bình Dương', 0x2f6c69622f696d616765732f6176617461722f64656661756c742f6176617461722e706e67, 'NULL', '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(2, 'Nguyễn', 'Tường Vi', 'ntvi.cse@gmail.com', '123456789', '25f9e794323b453885f5181f1b624d0b', 1, '2017-12-02', 'Dĩ An-Bình Dương', 0x2f6c69622f696d616765732f6176617461722f64656661756c742f6176617461722e706e67, 'NULL', '2017-12-03 23:41:56', '2017-12-03 23:41:56'),
(3, 'Nguyễn ', 'Vi', 'vinguyen@gmail.com', '123456789', '25f9e794323b453885f5181f1b624d0b', 0, '2017-12-02', 'Dĩ An-Bình Dương', 0x2f6c69622f696d616765732f6176617461722f64656661756c742f6176617461722e706e67, 'NULL', '2017-12-03 23:41:56', '2017-12-03 23:41:56');

--
-- Bẫy `users`
--
DROP TRIGGER IF EXISTS `before_create_user`;
DELIMITER $$
<<<<<<< HEAD
CREATE TRIGGER `before_create_user` BEFORE INSERT ON `users` FOR EACH ROW SET  NEW.avatar_url = CASE WHEN NEW.avatar_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.avatar_url END,
=======
CREATE TRIGGER `before_create_user` BEFORE INSERT ON `users` FOR EACH ROW SET  NEW.avatar_url = CASE WHEN NEW.avatar_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.avatar_url END,
>>>>>>> fc39b51b809f9d4d4c2811e9577c8300dfed8ad8
  NEW.password = MD5(NEW.password),NEW.update_at=CURRENT_TIMESTAMP,NEW.created_at=CURRENT_TIMESTAMP
$$
DELIMITER ;
DROP TRIGGER IF EXISTS `before_update_user`;
DELIMITER $$
CREATE TRIGGER `before_update_user` BEFORE UPDATE ON `users` FOR EACH ROW SET NEW.update_at=CURRENT_TIMESTAMP
$$
DELIMITER ;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `book_carts`
--
ALTER TABLE `book_carts`
  ADD CONSTRAINT `book_carts_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `book_carts_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
