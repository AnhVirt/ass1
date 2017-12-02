-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2017 lúc 06:29 AM
-- Phiên bản máy phục vụ: 10.1.28-MariaDB
-- Phiên bản PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `stores`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `price` bigint(20) DEFAULT '0',
  `num_buy` int(11) DEFAULT '0',
  `amount` int(11) DEFAULT '10',
  `sale` double DEFAULT '0',
  `star` int(11) DEFAULT '5',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `category_id`, `author`, `name`, `description`, `price`, `num_buy`, `amount`, `sale`, `star`, `created_at`, `update_at`) VALUES
(1, 2, ' Alexandre Dumas', 'Ba NgÆ°á»i LÃ­nh Ngá»± LÃ¢m', '\"Ba NgÆ°á»i LÃ­nh Ngá»± LÃ¢m lÃ  cÃ¢u chuyá»‡n má»Ÿ Ä‘áº§u trong bá»™ ba truyá»‡n Les trois Mousquetaires (Ba ngÆ°á»i lÃ­nh ngá»± lÃ¢m), Vingt ans aprÃ¨s (hai mÆ°Æ¡i nÄƒm sau) vÃ  Le Vicomte de Bragelonne (tá»­ tÆ°á»›c de Bragelonne).\n\nCuá»‘n tiá»ƒu thuyáº¿t láº¥y bá»‘i cáº£nh lÃ  xÃ£ há»™i quÃ½ tá»™c vua chÃºa Ä‘áº§y Ã¢m mÆ°u cáº£ chÃ­nh trá»‹ vÃ  tÃ¬nh Ã¡i Ä‘an xen cá»§a cung Ä‘Ã¬nh nÆ°á»›c PhÃ¡p tháº¿ ká»· XVII. Ná»•i báº­t lÃªn trÃªn cáº£ cÃ¡c báº­c vua chÃºa Ä‘Ã³, Dumas Ä‘áº·t nhÃ¢n váº­t dâ€™Artagnan vÃ  ba ngÆ°á»i lÃ­nh ngá»± lÃ¢m vÃ o trung tÃ¢m cá»§a má»i sá»± kiá»‡n vÃ  lÃ  nhá»¯ng ngÆ°á»i hÃ³a giáº£i má»i Ã¢m mÆ°u.\n\nBa ngÆ°á»i ngá»± lÃ¢m cÃ¹ng chÃ ng trai tráº» tÃ i nÄƒng, ngang ngÆ°á»£c dâ€™Artagnan Ä‘Ã£ táº¡o nÃªn má»™t â€œboybandâ€ tuyá»‡t vá»i, chiáº¿n Ä‘áº¥u cho cÃ´ng lÃ½, ngÄƒn cháº·n â€œngÃ²i ná»•â€ chiáº¿n sá»± vÃ  giÃ nh láº¡i nhá»¯ng gÃ¬ Ä‘Ã£ máº¥t. Vá»›i cÃ¢u kháº©u hiá»‡u â€œMá»™t ngÆ°á»i vÃ¬ má»i ngÆ°á»i, má»i ngÆ°á»i vÃ¬ má»™t ngÆ°á»iâ€, cÃ¡c chÃ ng ngá»± lÃ¢m chuáº©n bá»‹ sáºµn sÃ ng Ä‘á»ƒ lao vÃ o cuá»™c chiáº¿n Ä‘áº§y hiá»ƒm nguy vÃ  ká»‹ch tÃ­nh, lÃ´i cuá»‘n báº¡n Ä‘á»c khÃ´ng thá»ƒ rá»i máº¯t Ä‘áº¿n táº­n trang sÃ¡ch cuá»‘i cÃ¹ng.\"', 169000, 0, 10, 118000, 5, '2017-12-01 22:45:00', '2017-12-01 22:45:00'),
(2, 1, 'Mari Tamagawa', 'Máº·c Ká»‡ ThiÃªn Háº¡ - Sá»‘ng NhÆ° NgÆ°á»i Nháº­t', '\"Máº·c Ká»‡ ThiÃªn Háº¡ - Sá»‘ng NhÆ° NgÆ°á»i Nháº­t\n\n\nCuá»‘n sÃ¡ch gá»‘i Ä‘áº§u giÆ°á»ng cho nhá»¯ng ngÆ°á»i hay lo láº¯ng, sá»£ hÃ£i vÃ  luÃ´n tháº¥y mÃ¬nh kÃ©m may máº¯n\n\nDÃ nh cho nhá»¯ng ai muá»‘n Ä‘Æ°á»£c sá»‘ng lÃ  chÃ­nh mÃ¬nh, cuá»™c Ä‘á»i cá»§a mÃ¬nh, tuá»•i tráº» cá»§a mÃ¬nh.\n\nÄÃ£ Ä‘áº¿n lÃºc báº¡n nÃªn dá»«ng tÃ¬m kiáº¿m sá»± an á»§i á»Ÿ ngÆ°á»i khÃ¡c, hoáº·c chá» Ä‘á»£i sá»± giÃºp Ä‘á»¡ tá»« má»™t ai Ä‘Ã³. Bá»Ÿi an á»§i hay giÃºp Ä‘á»¡ vá» máº·t cáº£m xÃºc Ä‘Ã´i khi giá»‘ng nhÆ° con dao hai lÆ°á»¡i. NÃ³ cÃ³ thá»ƒ giÃºp báº¡n chá»‘ng Ä‘á»¡ lo Ã¢u hay muá»™n phiá»n nháº¥t thá»i, nhÆ°ng láº¡i Ä‘áº©y báº¡n chÃ¬m sÃ¢u hÆ¡n vÃ o nhá»¯ng cáº£m xÃºc tiÃªu cá»±c Ä‘Ã³. Giá»‘ng nhÆ° má»™t Ä‘á»©a tráº» khi váº¥p ngÃ£, báº¡n mong Ä‘á»£i má»™t sá»± xoa dá»‹u tá»« ngÆ°á»i lá»›n, mÃ  quÃªn máº¥t ráº±ng sá»± â€œhá»— trá»£â€ áº¥y chá»‰ cÃ ng khiáº¿n báº¡n mÃ£i cháº³ng thá»ƒ nÃ o â€œbiáº¿t Ä‘iâ€.\n\nVÃ  Máº·c há»‡ thiÃªn háº¡, sá»‘ng nhÆ° ngÆ°á»i Nháº­t chÃ­nh lÃ  cuá»‘n sÃ¡ch dÃ nh cho nhá»¯ng ngÆ°á»i muá»‘n Ä‘i báº±ng chÃ­nh Ä‘Ã´i chÃ¢n mÃ¬nh. DÃ nh cho nhá»¯ng ngÆ°á»i muá»‘n gáº¡t bá» nhá»¯ng ná»—i sá»£ bá»Ÿi chÃ­nh tay mÃ¬nh, chá»© khÃ´ng cáº§u cá»©u báº¥t kÃ¬ sá»± trá»£ giÃºp nÃ o.\n\nHÃ£y thá»­ sá»‘ng má»™t ngÃ y â€œmáº·c ká»‡ thiÃªn háº¡â€, máº·c ká»‡ nhá»¯ng lá»i nháº­n xÃ©t tá»« ngÆ°á»i khÃ¡c. HÃ£y thá»­ sá»‘ng má»™t ngÃ y báº¡n cho phÃ©p mÃ¬nh tá»« bá», tá»« bá» nhá»¯ng thá»© khÃ³ khÄƒn, ngá»•n ngang lo láº¯ng. HÃ£y thá»­ sá»‘ng má»™t ngÃ y báº¡n trÃ¢n trá»ng má»i cung báº­c cáº£m xÃºc bÃªn trong con ngÆ°á»i báº¡n.\n\nâ€œNáº¿u báº¡n cÃ³ thá»ƒ tháº³ng tháº¯n Ä‘á»‘i diá»‡n vá»›i báº£n thÃ¢n vÃ  tá»« bá» nhá»¯ng thá»© Ä‘ang giam cáº§m báº¡n, báº¡n sáº½ trá»Ÿ thÃ nh con ngÆ°á»i cÃ³ chÃ­nh kiáº¿n, biáº¿t quÃ½ trá»ng hÆ¡n vÃ  Ä‘áº·t nhá»¯ng cáº£m xÃºc cá»§a báº£n thÃ¢n lÃªn trÃªn má»i Ã¡nh nhÃ¬n cá»§a ngÆ°á»i khÃ¡c.â€\n\nMari Tamagawa khuyáº¿n khÃ­ch má»—i ngÆ°á»i nÃªn sá»‘ng tháº­t vÃ  ngÆ°ng phÃ¡n xÃ©t báº£n thÃ¢n. Tháº­t lÃ£ng phÃ­ khi báº¡n Ä‘á»ƒ cuá»™c Ä‘á»i mÃ¬nh pháº£i tráº£i qua nhá»¯ng thÃ¡ng ngÃ y khá»• sá»Ÿ chá»‰ vÃ¬ cÃ¡i nhÃ¬n cá»§a ngÆ°á»i khÃ¡c. CÅ©ng Ä‘á»«ng tin vÃ o nhá»¯ng â€œchiáº¿c phaoâ€ cá»©u cÃ¡nh mÃ  báº¡n nháº§m tÆ°á»Ÿng ráº±ng sáº½ giÃºp mÃ¬nh rÅ© bá» Ä‘Æ°á»£c má»i lo láº¯ng. Tá»•n thÆ°Æ¡ng tÃ¢m lÃ­, Ã¡p lá»±c hay ná»—i sá»£â€¦ cá»§a báº£n thÃ¢n, chÃºng ta pháº£i Ä‘á»‘i máº·t vá»›i nÃ³, chiáº¿n Ä‘áº¥u vÃ  tá»± chá»¯a trá»‹ cho chÃ­nh mÃ¬nh.\n\nÄÃ£ Ä‘áº¿n lÃºc báº¡n cáº§n pháº£i nÃ³i lá»i táº¡m biá»‡t vá»›i cuá»™c sá»‘ng Ä‘áº§y Ã¢u lo Ä‘ang rÃºt cáº¡n nÄƒng lÆ°á»£ng cá»§a báº¡n. Cuá»™c Ä‘á»i cá»§a báº¡n khÃ´ng thuá»™c vá» ai khÃ¡c, cuá»™c Ä‘á»i cá»§a báº¡n thuá»™c vá» báº¡n. ThÃ¡ng 3 nÃ y hÃ£y Ä‘á»ƒ â€œMáº·c ká»‡ thiÃªn háº¡, sá»‘ng nhÆ° ngÆ°á»i Nháº­tâ€ giÃºp báº¡n báº¯t Ä‘áº§u cuá»™c Ä‘á»i má»›i, cuá»™c Ä‘á»i mang tÃªn chÃ­nh mÃ¬nh.\"', 79000, 0, 10, 63000, 5, '2017-12-01 21:30:00', '2017-12-01 21:31:00'),
(3, 3, 'Nguyá»…n Nháº­t Ãnh', 'CÃ´ gÃ¡i Ä‘áº¿n tá»« hÃ´m qua', '\"CÃ´ GÃ¡i Äáº¿n Tá»« HÃ´m Qua\n\nNáº¿u ngÃ y xÆ°a cÃ²n bÃ©, ThÆ° luÃ´n tá»± hÃ o mÃ¬nh lÃ  cáº­u con trai thÃ´ng minh cÃ³ quyá»n báº¯t náº¡t vÃ  sai khiáº¿n cÃ¡c cÃ´ bÃ© cÃ¹ng lá»©a tuá»•i thÃ¬ giá» Ä‘Ã¢y khi lá»›n lÃªn, anh luÃ´n khá»• sá»Ÿ khi tháº¥y mÃ¬nh ngu ngÆ¡ vÃ  bá»‹ con gÃ¡i â€œxá» mÅ©iâ€. VÃ  Ä‘iá»u nghá»‹ch lÃ½ áº¥y xem ra cÃ ng â€œtrá»› trÃªuâ€™ hÆ¡n, khi nhÆ° má»™t Ä‘á»‹nh má»‡nh, ThÆ° nháº­n ra Viá»‡t An, cÃ´ báº¡n há»c thÃ´ng minh thÆ°á»ng lÃ m mÃ¬nh bá»‘i rá»‘i báº¥y lÃ¢u nay chÃ­nh lÃ  Tiá»ƒu Li, con bÃ© hÃ ng xÃ³m ngá»‘c ngháº¿ch tá»«ng há»©ng chá»‹u nhá»¯ng trÃ² nghá»‹ch ngá»£m cá»§a mÃ¬nh há»“i xÆ°a.\n\n\"', 80000, 0, 10, 56000, 5, '2017-12-01 21:38:00', '2017-12-01 21:38:00'),
(4, 2, 'Harper Lee', 'Giáº¿t con chim nháº¡i', '\"Giáº¿t Con Chim Nháº¡i \n\nNÃ o, hÃ£y má»Ÿ cuá»‘n sÃ¡ch nÃ y ra. Báº¡n pháº£i lÃ m quen ngay vá»›i bá»‘ Atticus cá»§a hai anh em - Jem vÃ  Scout, Ã´ng bá»‘ luáº­t sÆ° cÃ³ má»™t cÃ¡ch riÃªng, Ä‘á»ƒ nhá»¯ng Ä‘á»©a tráº» cá»§a mÃ¬nh cá»©ng cÃ¡p vÃ  vá»¯ng vÃ ng hÆ¡n khi Ä‘Ã³n nháº­n nhá»¯ng bá»©c xÃºc khÃ´ng sao hiá»ƒu ná»•i trong cuá»™c sá»‘ng. Báº¡n sáº½ nhá»› ráº¥t lÃ¢u ngÆ°á»i Ä‘Ã n Ã´ng thÃ­ch trá»‘n trong nhÃ  Boo Radley, káº» bá»‹ Ä‘Ã¡m Ä‘Ã´ng coi lÃ  láº­p dá»‹ Ä‘Ã£ chá»n má»™t cÃ¡ch ráº¥t riÃªng Ä‘á»ƒ gá»­i nhá»¯ng mÃ³n quÃ  nhá» cho Jem vÃ  Scout, vÃ  khi chÃºng lÃ¢m nguy, Ä‘Ã£ Ä‘á»™t nhiÃªn xuáº¥t hiá»‡n Ä‘á»ƒ che chá»Ÿ. VÃ  táº¥t nhiÃªn, báº¡n khÃ´ng thá»ƒ bá» qua anh chÃ ng Tom Robinson, káº» bá»‹ káº¿t Ã¡n tá»­ hÃ¬nh vÃ¬ tá»™i hÃ£m hiáº¿p má»™t cÃ´ gÃ¡i da tráº¯ng, sá»± tháº­t thÃ  vÃ  suy nghÄ© quÃ¡ Ä‘á»—i Ä‘Æ¡n giáº£n cá»§a anh láº¡i dáº«n Ä‘áº¿n má»™t cÃ¡i káº¿t háº¿t sá»©c Ä‘au lÃ²ng, chá»‰ vÃ¬ lÃ½ do anh lÃ  má»™t ngÆ°á»i da Ä‘en.\n\nCho dÃ¹ Ä‘Æ°á»£c ká»ƒ dÆ°á»›i gÃ³c nhÃ¬n cá»§a má»™t cÃ´ bÃ©, cuá»‘n sÃ¡ch Giáº¿t con chim nháº¡i khÃ´ng nÃ© trÃ¡nh báº¥t ká»³ váº¥n Ä‘á» nÃ o, gai gÃ³c hay lá»›n lao, sÃ¢u xa hay phá»©c táº¡p: náº¡n phÃ¢n biá»‡t chá»§ng tá»™c, nhá»¯ng Ä‘á»‹nh kiáº¿n kháº¯t khe, sá»± trá»ng nam khinh ná»¯â€¦ GÃ³c nhÃ¬n tráº» thÆ¡ lÃ  má»™t dáº¥u áº¥n Ä‘áº­m nÃ©t vÃ  cÅ©ng lÃ  Ä‘áº·c sáº¯c trong Giáº¿t con chim nháº¡i. Trong sÃ¡ng, há»“n nhiÃªn vÃ  Ä‘áº§y cáº£m xÃºc, nhá»¯ng cÃ¢u chuyá»‡n tÆ°á»Ÿng nhÆ° cháº³ng cÃ³ gÃ¬ to tÃ¡t gieo vÃ o ngÆ°á»i Ä‘á»c háº¡t máº§m yÃªu thÆ°Æ¡ng.\n\nGáº§n 50 nÄƒm tá»« ngÃ y Ä‘áº§u ra máº¯t, Giáº¿t con chim nháº¡i, tÃ¡c pháº©m Ä‘áº§u tay vÃ  cÅ©ng lÃ  cuá»‘i cÃ¹ng cá»§a ná»¯ nhÃ  vÄƒn Má»¹ Harper Lee váº«n Ä‘áº§y sá»©c hÃºt vá»›i Ä‘á»™c giáº£ á»Ÿ nhiá»u lá»©a tuá»•i.\n\nThÃ´ng Ä‘iá»‡p yÃªu thÆ°Æ¡ng tráº£i kháº¯p cÃ¡c chÆ°Æ¡ng sÃ¡ch lÃ  má»™t trong nhá»¯ng lÃ½ do khiáº¿n Giáº¿t con chim nháº¡i giá»¯ sá»©c sá»‘ng lÃ¢u bá»n cá»§a mÃ¬nh trong trÃ¡i tim Ä‘á»™c giáº£ á»Ÿ nhiá»u quá»‘c gia, nhiá»u tháº¿ há»‡. Nhá»¯ng Ä‘á»™c giáº£ nhÃ­ tÃ¬m cho mÃ¬nh cÃ¡c trÃ² nghá»‹ch ngá»£m vÃ  cÃ¡ch nhÃ¬n dÃ­ dá»m vá» tháº¿ giá»›i xung quanh. NgÆ°á»i lá»›n láº¡i tÃ¬m ra Ä‘iá»u thÃº vá»‹ sÃ¢u xa trong tÃ¬nh cha con nhÃ  Atticus, vÃ  Ä‘áº·c biá»‡t lÃ  tÃ¬nh ngÆ°á»i trong cuá»™c sá»‘ng, nhÆ° bÃ© Scout quáº£ quyáº¿t nÃ³i â€œem nghÄ© chá»‰ cÃ³ má»™t háº¡ng ngÆ°á»i. ÄÃ³ lÃ  ngÆ°á»iâ€.\"', 108000, 0, 10, 75600, 5, '2017-12-01 21:44:00', '2017-12-01 21:44:00'),
(5, 4, 'Dr. Blair Thomas Spalding', 'HÃ nh TrÃ¬nh Vá» PhÆ°Æ¡ng ÄÃ´ng', '\"HÃ nh TrÃ¬nh Vá» PhÆ°Æ¡ng ÄÃ´ng\n\nHÃ nh TrÃ¬nh Vá» PhÆ°Æ¡ng ÄÃ´ng má»Ÿ ra má»™t chÃ¢n trá»i má»›i vá» ÄÃ´ng TÃ¢y gáº·p nhau, Ä‘á»ƒ khoa há»c Minh triáº¿t há»™i ngá»™, Ä‘á»ƒ Hiá»‡n Ä‘áº¡i Cá»• xÆ°a giao duyÃªn, Ä‘á»ƒ Äáº¥t Trá»i lÃ  má»™t. Tháº¿ giá»›i, vÃ¬ váº­y Ä‘Ã£ trá»Ÿ nÃªn hÃ i hÃ²a hÆ¡n, rá»™ng má»Ÿ, diá»‡u ká»³ hÆ¡n vÃ , do Ä‘Ã³, nhÃ¢n vÄƒn hÆ¡n.\n\nHÃ nh TrÃ¬nh Vá» PhÆ°Æ¡ng ÄÃ´ng ká»ƒ vá» nhá»¯ng tráº£i nghiá»‡m cá»§a má»™t Ä‘oÃ n khoa há»c gá»“m cÃ¡c chuyÃªn gia hÃ ng Ä‘áº§u cá»§a Há»™i Khoa Há»c HoÃ ng Gia Anh Ä‘Æ°á»£c cá»­ sang áº¤n Äá»™ nghiÃªn cá»©u vá» huyá»n há»c vÃ  nhá»¯ng kháº£ nÄƒng siÃªu nhiÃªn cá»§a con ngÆ°á»i. Suá»‘t hai nÄƒm trá»i rong ruá»•i kháº¯p cÃ¡c Ä‘á»n chÃ¹a áº¤n Äá»™, chÃºng kiáº¿n nhiá»u phÃ¡p luáº­t, nhiá»u cáº£nh mÃª tÃ­n dá»‹ Ä‘oan, tháº­m chÃ­ lá»«a Ä‘áº£o...cá»§a nhiá»u phÃ¡p sÆ°, Ä‘áº¡o sÄ©...há» Ä‘Æ°á»£c tiáº¿p xÃºc vá»›i nhá»¯ng vá»‹ tháº¿, há» Ä‘Æ°á»£c chá»©ng kiáº¿n, tráº£i nghiá»‡m, hiá»ƒu biáº¿t sÃ¢u sáº¯c vá» cÃ¡c khoa há»c cá»• xÆ°a vÃ  bÃ­ truyá»n cá»§a vÄƒn hÃ³a áº¤n Äá»™ nhÆ° Yoga, thiá»n Ä‘á»‹nh, thuáº­t chiÃªm duyÃªn, nghiá»‡p bÃ¡o, luáº­t nhÃ¢n quáº£, cÃµi sá»‘ng vÃ  cÃµi cháº¿t....\n\nÄÃºng lÃºc má»™t cuá»™c Ä‘á»‘i thoáº¡i cá»Ÿi má»Ÿ vÃ  chÃ¢n thÃ nh Ä‘ang sáº¯p diá»…n ra vá»›i cÃ¡c Ä‘áº¡o sÄ© báº­c tháº§y, thÃ¬ Ä‘oÃ n nháº­n Ä‘Æ°á»£c tá»‘i háº­u thu tá»« chÃ­nh quyá»n Anh Quá»‘c lÃ  pháº£i ngá»«ng ngay viá»‡c nghiÃªn cá»©u, tá»©c kháº¯c há»“i hÆ°Æ¡ng vÃ  bá»‹ buá»™c pháº£i im láº·ng, khÃ´ng Ä‘Æ°á»£c phÃ¡t ngÃ´n vá» báº¥t cá»© Ä‘iá»u gÃ¬ mÃ  há» Ä‘Ã£ chá»©ng nghiá»‡m. Sau cÃ¹ng ba nhÃ  khoa há»c trong Ä‘oÃ n Ä‘Ã£ cháº¥p nháº­n bá» láº¡i táº¥t cáº£ sau lÆ°ng, á»Ÿ láº¡i áº¤n Äá»™ tiáº¿p tá»¥c nghiÃªn cá»©u vÃ  cuá»‘i cÃ¹ng trá»Ÿ thÃ nh tu sÄ©. Trong sá»‘ Ä‘Ã³ cÃ³ giÃ¡o sÆ° Salding- tÃ¡c giáº£ há»“i kÃ½ Ä‘áº·c biá»‡t nÃ y.\"', 78000, 0, 10, 47000, 5, '2017-12-01 21:47:00', '2017-12-01 21:47:00'),
(6, 4, 'Xiu-ying Wei', 'Bá»‘n rÆ°á»¡i sÃ¡ng', '\"Harvard Bá»‘n RÆ°á»¡i SÃ¡ng\n\nHarvard bá»‘n rÆ°á»¡i sÃ¡ng sá»­ dá»¥ng hÃ¬nh áº£nh Harvard nhÆ° má»™t biá»ƒu tÆ°á»£ng xuyÃªn suá»‘t, ká»ƒ láº¡i cÃ¡c cÃ¢u chuyá»‡n cÃ³ tÃ­nh cÃ¡ch Ä‘iá»‡u vá» Harvard nhÆ° má»™t phÆ°Æ¡ng thá»©c nháº±m thu hÃºt báº¡n Ä‘á»c Ä‘áº¿n vá»›i cuá»‘n sÃ¡ch, Ä‘á»ƒ tá»« Ä‘Ã³ chuyá»ƒn táº£i nhá»¯ng chá»‰ dáº«n, khuyáº¿n khÃ­ch, gá»£i Ã½ cÃ¹ng thÃ´ng Ä‘iá»‡p vá»«a thá»±c dá»¥ng vá»«a bay bá»•ngtá»›i cÃ¡c báº¡n tráº» Ä‘ang ngá»“i trÃªn gháº¿ nhÃ  trÆ°á»ng vÃ  chuáº©n bá»‹ bÆ°á»›c vÃ o Ä‘á»i. CÃ³ nhiá»uthÃ´ng Ä‘iá»‡p giÃ¡ trá»‹ vÃ  há»¯u Ã­ch mÃ  báº¡n sáº½ há»c thu hoáº¡ch Ä‘Æ°á»£c tá»« cuá»‘n sÃ¡ch nhÆ°:\n\nNáº¿u khÃ´ng chÄƒm chá»‰, thiÃªn tÃ i cÅ©ng tráº¯ng tay\n\nNhiá»‡t tÃ¬nh lÃ  sá»©c máº¡nh thay Ä‘á»•i váº­n má»‡nh\n\nBiáº¿t tá»± kiá»ƒm soÃ¡t báº£n thÃ¢n Ä‘á»ƒ vá»¯ng bÆ°á»›c thÃ nh cÃ´ng\n\nTri thá»©c lÃ  vá»‘n quÃ½ mÃ  khÃ´ng káº» trá»™m nÃ o láº¥y Ä‘Æ°á»£c\n\nÄá»«ng bao giá» lÃ£ng phÃ­ thá»i gian vÃ o nhá»¯ng viá»‡c vÃ´ bá»•â€¦\n\nâ€œAi cÅ©ng lÃ  ngÆ°á»i cáº§m lÃ¡i váº­n má»‡nh cá»§a chÃ­nh mÃ¬nh. VÃ  tá»± tin chÃ­nh lÃ  la bÃ n chá»‰ hÆ°á»›ng cho con thuyá»n cá»§a Ä‘á»i ngÆ°á»i. NgÆ°á»i ta thÃ nh cÃ´ng hay khÃ´ng, háº¡nh phÃºc hay khÃ´ng, Ä‘iá»u cá»‘t yáº¿u nháº¥t lÃ  cÃ³ táº¡o láº­p Ä‘Æ°á»£c niá»m tin vá»¯ng cháº¯c hay khÃ´ng?â€ \n--- Harvard bá»‘n rÆ°á»¡i sÃ¡ng.\"', 119000, 0, 10, 92820, 5, '2017-12-01 21:50:00', '2017-12-01 21:50:00'),
(7, 2, 'Paulo Coelho', 'NhÃ  giáº£ kim', '\"NhÃ  Giáº£ Kim\n\nTáº¥t cáº£ nhá»¯ng tráº£i nghiá»‡m trong chuyáº¿n phiÃªu du theo Ä‘uá»•i váº­n má»‡nh cá»§a mÃ¬nh Ä‘Ã£ giÃºp Santiago tháº¥u hiá»ƒu Ä‘Æ°á»£c Ã½ nghÄ©a sÃ¢u xa nháº¥t cá»§a háº¡nh phÃºc, hÃ²a há»£p vá»›i vÅ© trá»¥ vÃ  con ngÆ°á»i.\n\nTiá»ƒu thuyáº¿t NhÃ  giáº£ kim cá»§a Paulo Coelho nhÆ° má»™t cÃ¢u chuyá»‡n cá»• tÃ­ch giáº£n dá»‹, nhÃ¢n Ã¡i, giÃ u cháº¥t thÆ¡, tháº¥m Ä‘áº«m nhá»¯ng minh triáº¿t huyá»n bÃ­ cá»§a phÆ°Æ¡ng ÄÃ´ng. Trong láº§n xuáº¥t báº£n Ä‘áº§u tiÃªn táº¡i Brazil vÃ o nÄƒm 1988, sÃ¡ch chá»‰ bÃ¡n Ä‘Æ°á»£c 900 báº£n. NhÆ°ng, vá»›i sá»‘ pháº­n Ä‘áº·c biá»‡t cá»§a cuá»‘n sÃ¡ch dÃ nh cho toÃ n nhÃ¢n loáº¡i, vÆ°á»£t ra ngoÃ i biÃªn giá»›i quá»‘c gia, NhÃ  giáº£ kim Ä‘Ã£ lÃ m rung Ä‘á»™ng hÃ ng triá»‡u tÃ¢m há»“n, trá»Ÿ thÃ nh má»™t trong nhá»¯ng cuá»‘n sÃ¡ch bÃ¡n cháº¡y nháº¥t má»i thá»i Ä‘áº¡i, vÃ  cÃ³ thá»ƒ lÃ m thay Ä‘á»•i cuá»™c Ä‘á»i ngÆ°á»i Ä‘á»c.\n\nâ€œNhÆ°ng nhÃ  luyá»‡n kim Ä‘an khÃ´ng quan tÃ¢m máº¥y Ä‘áº¿n nhá»¯ng Ä‘iá»u áº¥y. Ã”ng Ä‘Ã£ tá»«ng tháº¥y nhiá»u ngÆ°á»i Ä‘áº¿n rá»“i Ä‘i, trong khi á»‘c Ä‘áº£o vÃ  sa máº¡c váº«n lÃ  á»‘c Ä‘áº£o vÃ  sa máº¡c. Ã”ng Ä‘Ã£ tháº¥y vua chÃºa vÃ  káº» Äƒn xin Ä‘i qua biá»ƒn cÃ¡t nÃ y, cÃ¡i biá»ƒn cÃ¡t thÆ°á»ng xuyÃªn thay hÃ¬nh Ä‘á»•i dáº¡ng vÃ¬ giÃ³ thá»•i nhÆ°ng váº«n mÃ£i mÃ£i lÃ  biá»ƒn cÃ¡t mÃ  Ã´ng Ä‘Ã£ biáº¿t tá»« thuá»Ÿ nhá». Tuy váº­y, tá»± Ä‘Ã¡y lÃ²ng mÃ¬nh, Ã´ng khÃ´ng thá»ƒ khÃ´ng cáº£m tháº¥y vui trÆ°á»›c háº¡nh phÃºc cá»§a má»—i ngÆ°á»i lá»¯ khÃ¡ch, sau bao ngÃ y chá»‰ cÃ³ cÃ¡t vÃ ng vá»›i trá»i xanh nay Ä‘Æ°á»£c tháº¥y chÃ  lÃ  xanh tÆ°Æ¡i hiá»‡n ra trÆ°á»›c máº¯t. â€˜CÃ³ thá»ƒ ThÆ°á»£ng Ä‘áº¿ táº¡o ra sa máº¡c chá»‰ Ä‘á»ƒ cho con ngÆ°á»i biáº¿t quÃ½ trá»ng cÃ¢y chÃ  lÃ ,â€™ Ã´ng nghÄ©.â€\n\n- TrÃ­ch NhÃ  giáº£ kim\"', 69000, 0, 10, 55000, 5, '2017-12-01 21:52:00', '2017-12-01 21:53:00'),
(8, 5, 'Tina Seelig', 'Náº¿u tÃ´i biáº¿t Ä‘Æ°á»£c khi cÃ²n 20', '\"Báº¡n cÃ³ 5 Ä‘Ã´ la vÃ  2 giá» Ä‘á»“ng há»“ Ä‘á»ƒ kinh doanh. Báº¡n sáº½ lÃ m gÃ¬? - ÄÃ¢y lÃ  má»™t trong nhá»¯ng vÃ­ dá»¥ minh hoáº¡ Ä‘Æ°á»£c nháº¯c Ä‘áº¿n trong cuá»‘n sÃ¡ch Náº¿u TÃ´i Biáº¿t ÄÆ°á»£c Khi CÃ²n 20. Tráº£ lá»i cho cÃ¢u há»i nÃ y cÃ³ ráº¥t nhiá»u cÃ¡ch vÃ  vá»›i má»—i cÃ¡ch, tÃ¡c giáº£ láº¡i chá»‰ ra nhá»¯ng bÃ i há»c nhá» thÃ´i nhÆ°ng há»¯u Ã­ch.\n\nCuá»‘n sÃ¡ch Ä‘Æ°á»£c chia thÃ nh 10 chÆ°Æ¡ng vá»›i nhá»¯ng váº¥n Ä‘á» khÃ¡ch nhau theo má»™t trÃ¬nh tá»± rÃµ rÃ ng.\n\nTrong cáº£ cuá»‘n sÃ¡ch, nhá»¯ng triáº¿t lÃ½ kinh doanh Ä‘Æ¡n giáº£n Ä‘Æ°á»£c minh hoáº¡ báº±ng nhá»¯ng vÃ­ dá»¥ cá»¥ thá»ƒ vÃ  sÃ¡ng táº¡o. Nhá»¯ng tÃ¬nh huá»‘ng kinh doanh Ä‘Æ°á»£c Ä‘áº·t ra, cÃ³ thÃ nh cÃ´ng vÃ  cÃ³ cáº£ tháº¥t báº¡i, váº¥n Ä‘á» lÃ  cÃ¡ch Ä‘á»‘i máº·t vá»›i nÃ³.\n\nNáº¿u TÃ´i Biáº¿t ÄÆ°á»£c Khi CÃ²n 20 gáº§n gÅ©i vá»›i nhá»¯ng bÃ i há»c bá»• Ã­ch. NgÃ´n tá»« Ä‘Æ¡n giáº£n, dá»… hiá»ƒu chuyá»ƒn táº£i má»™t cÃ¡ch trá»n váº¹n nhá»¯ng hÃ m Ã½ sÃ¢u sáº¯c cá»§a tÃ¡c giáº£.\n\nÂ©\n\nNhá»¯ng bÆ°á»›c ngoáº·t lá»›n cá»§a cuá»™c Ä‘á»i nhÆ° rá»i xa giáº£ng Ä‘Æ°á»ng Ãªm áº£ hoáº·c khá»Ÿi Ä‘áº§u má»™t sá»± nghiá»‡p má»›i thÆ°á»ng khiáº¿n ta nhá»¥t chÃ­. Pháº£i Ä‘á»‘i máº·t vá»›i má»™t rá»«ng nhá»¯ng lá»±a chá»n trong khi hiá»ƒu ráº±ng sáº½ cháº³ng cÃ³ ai cho ta biáº¿t mÃ¬nh Ä‘ang lá»±a chá»n Ä‘Ãºng hay sai tháº­t Ä‘Ã¡ng sá»£. Cháº³ng cÃ³ con Ä‘Æ°á»ng váº½ sáºµn hay cÃ´ng thá»©c viáº¿t sáºµn nÃ o cho thÃ nh cÃ´ng, tháº­m chÃ­ viá»‡c quyáº¿t Ä‘á»‹nh mÃ¬nh nÃªn báº¯t Ä‘áº§u tháº¿ nÃ o vÃ  á»Ÿ Ä‘Ã¢u cÅ©ng Ä‘Ã£ ráº¥t khÃ³ khÄƒn rá»“i.\n\nHiá»ƒu Ä‘Æ°á»£c nhá»¯ng khÃ³ khÄƒn, Ä‘áº·c biá»‡t cá»§a nhá»¯ng ngÆ°á»i tráº», trÆ°á»›c cÃ¡c bÆ°á»›c ngoáº·t nhÆ° tháº¿ trong cuá»™c Ä‘á»i, tÃ¡c giáº£ â€“ má»™t doanh nhÃ¢n, má»™t giÃ¡o viÃªn, má»™t nhÃ  khoa há»c â€“ Ä‘Ã£ dá»“n tÃ¢m huyáº¿t viáº¿t nÃªn nhá»¯ng chia sáº» tuy nháº¹ nhÃ ng vÃ  khiÃªm nhÆ°á»ng, nhÆ°ng tháº­t sÃ¢u sáº¯c. Nhá»¯ng trang sÃ¡ch chá»©a Ä‘áº§y vÃ­ dá»¥ thÃº vá»‹, cáº£ trong phÃ²ng há»c láº«n trong phÃ²ng há»p, vá» nhá»¯ng con ngÆ°á»i sáºµn sÃ ng pháº¥n Ä‘áº¥u Ä‘á»ƒ vÆ°á»£t xa cÃ¡c tiÃªu chuáº©n á»Ÿ má»©c â€œvá»«a Ä‘á»§â€, thÃ¡ch thá»©c cÃ¡c giáº£ Ä‘á»‹nh hay quan Ä‘iá»ƒm Ä‘Ã£ thÃ nh lá»‘i mÃ²n, khÃ´ng bao giá» bá» lá»¡ cÆ¡ há»™i Ä‘á»ƒ vÆ°Æ¡n tá»›i tiá»m nÄƒng cao nháº¥t, vÃ  nhá» Ä‘Ã³ Ä‘áº¡t tá»›i nhá»¯ng thÃ nh cÃ´ng vang dá»™i.\n\nThÃ´ng qua quyá»ƒn sÃ¡ch, tÃ¡c giáº£ cÃ²n muá»‘n cÃ¡c Ä‘á»™c giáº£, Ä‘áº·c biá»‡t lÃ  Ä‘á»™c giáº£ tráº», sáº½ Ä‘Æ°á»£c trang bá»‹ Ä‘á»§ sá»± tá»± tin Ä‘á»ƒ biáº¿n cÄƒng tháº³ng thÃ nh sá»± hÃ o há»©ng, biáº¿n thá»­ thÃ¡ch thÃ nh cÃ¡c cÆ¡ há»™i, vÃ  cá»© sau má»—i láº§n váº¥p ngÃ£ láº¡i Ä‘á»©ng lÃªn trÆ°á»Ÿng thÃ nh hÆ¡n.\n\nThÃ´ng Ä‘iá»‡p cá»‘t lÃµi cá»§a quyá»ƒn sÃ¡ch cÃ³ thá»ƒ tÃ³m gá»n nhÆ° sau: â€œHÃ£y cho phÃ©p mÃ¬nh tÃ¡o báº¡o vÃ  xuáº¥t sáº¯c!â€\n\nXem Review sÃ¡ch: Náº¿u TÃ´i Biáº¿t ÄÆ°á»£c Khi CÃ²n 20\n\n\"', 64000, 0, 10, 45000, 5, '2017-12-01 21:54:00', '2017-12-01 21:54:00'),
(9, 6, 'Dale Carnegie', 'Äáº¯c nhÃ¢n tÃ¢m', '\"Äáº¯c NhÃ¢n TÃ¢m - ÄÆ°á»£c lÃ²ng ngÆ°á»i, lÃ  cuá»‘n sÃ¡ch Ä‘Æ°a ra cÃ¡c lá»i khuyÃªn vá» cÃ¡ch thá»©c cÆ° xá»­, á»©ng xá»­ vÃ  giao tiáº¿p vá»›i má»i ngÆ°á»i Ä‘á»ƒ Ä‘áº¡t Ä‘Æ°á»£c thÃ nh cÃ´ng trong cuá»™c sá»‘ng. Gáº§n 80 nÄƒm ká»ƒ tá»« khi ra Ä‘á»i, Äáº¯c NhÃ¢n TÃ¢m lÃ  cuá»‘n sÃ¡ch gá»‘i Ä‘áº§u giÆ°á»ng cá»§a nhiá»u tháº¿ há»‡ luÃ´n muá»‘n hoÃ n thiá»‡n chÃ­nh mÃ¬nh Ä‘á»ƒ vÆ°Æ¡n tá»›i má»™t cuá»™c sá»‘ng tá»‘t Ä‘áº¹p vÃ  thÃ nh cÃ´ng.\n\nÄáº¯c NhÃ¢n TÃ¢m cá»¥ thá»ƒ vÃ  chi tiáº¿t vá»›i nhá»¯ng chá»‰ dáº«n Ä‘á»ƒ dáº«n Ä‘áº¡o ngÆ°á»i, Ä‘á»ƒ gÃ¢y thiá»‡n cáº£m vÃ  dáº«n dáº¯t ngÆ°á»i khÃ¡c,... nhá»¯ng hÆ°á»›ng dáº«n áº¥y, qua thá»i gian, cÃ³ thá»ƒ khÃ´ng cÃ²n thÃ­ch há»£p trong cuá»™c sá»‘ng hiá»‡n Ä‘áº¡i nhÆ°ng náº¿u ngÆ°á»i Ä‘á»c cÃ³ thá»ƒ cáº£m vÃ  hiá»ƒu Ä‘Æ°á»£c nhá»¯ng thÃ´ng Ä‘iá»‡p tÃ¡c giáº£ muá»‘n truyá»n Ä‘áº¡t thÃ¬ viá»‡c Ã¡p dá»¥ng nÃ³ vÃ o cuá»™c sá»‘ng trá»Ÿ nÃªn dá»… dÃ ng vÃ  hiá»‡u quáº£.\n\nÄáº¯c NhÃ¢n TÃ¢m, tá»« má»™t cuá»‘n sÃ¡ch, hÃ´m nay Ä‘Ã£ trá»Ÿ thÃ nh má»™t danh tá»« Ä‘á»ƒ chá»‰ má»™t lá»‘i sá»‘ng mÃ  á»Ÿ Ä‘Ã³ con ngÆ°á»i ta cÆ° xá»­ linh hoáº¡t vÃ  tháº¥u tÃ¬nh Ä‘áº¡t lÃ½. LÃ½ thuyáº¿t muÃ´n thuá»Ÿ váº«n lÃ  nhá»¯ng quy táº¯c cháº¿t, nhÆ°ng NhÃ¢n TÃ¢m lÃ  sá»‘ng, lÃ  biáº¿n Ä‘á»•i. Báº¡n hÃ£y thá»­ Ä‘á»c \"\"Äáº¯c NhÃ¢n tÃ¢m\"\" vÃ  tá»± mÃ¬nh chiÃªm nghiá»‡m nhá»¯ng cÃ¡i Ä‘ang diá»…n ra trong Ä‘á»i thá»±c hiá»‡n há»¯u, cháº¯c cháº¯n báº¡n sáº½ cÃ³ nhá»¯ng bÃ i há»c cho riÃªng mÃ¬nh.\n\nÂ©\n\n\"\"Äáº¯c nhÃ¢n tÃ¢m\"\" cá»§a Dale Carnegie lÃ  quyá»ƒn sÃ¡ch ná»•i tiáº¿ng nháº¥t, bÃ¡n cháº¡y nháº¥t  vÃ  cÃ³ táº§m áº£nh hÆ°á»Ÿng nháº¥t cá»§a má»i thá»i Ä‘áº¡i...\n\nSÃ¡ch Ä‘Ã£ Ä‘Æ°á»£c chuyá»ƒn ngá»¯ sang háº§u háº¿t cÃ¡c thá»© tiáº¿ng trÃªn tháº¿ giá»›i vÃ  cÃ³ máº·t á»Ÿ hÃ ng trÄƒm quá»‘c gia. ÄÃ¢y lÃ  cuá»‘n sÃ¡ch liÃªn tá»¥c Ä‘á»©ng Ä‘áº§u danh má»¥c sÃ¡ch bÃ¡n cháº¡y nháº¥t do thá»i bÃ¡o NewYork Times bÃ¬nh chá»n suá»‘t 10 nÄƒm liá»n.\"', 30000, 0, 10, 25000, 5, '2017-12-01 21:57:00', '2017-12-01 21:57:00'),
(10, 2, 'Shinkai Makoto', '5 Centimet TrÃªn GiÃ¢y', '\"5 Centimet TrÃªn GiÃ¢y\n\n5cm/s khÃ´ng chá»‰ lÃ  váº­n tá»‘c cá»§a nhá»¯ng cÃ¡nh anh Ä‘Ã o rÆ¡i, mÃ  cÃ²n lÃ  váº­n tá»‘c khi chÃºng ta láº·ng láº½ bÆ°á»›c qua Ä‘á»i nhau, Ä‘Ã¡nh máº¥t bao cáº£m xÃºc thiáº¿t tha nháº¥t cá»§a tÃ¬nh yÃªu.\n\nBáº±ng giá»ng vÄƒn tinh táº¿, truyá»n cáº£m, 5 centimet trÃªn giÃ¢y mang Ä‘áº¿n nhá»¯ng kháº¯c há»a má»›i vá» tÃ¢m há»“n vÃ  kháº£ nÄƒng tá»“n táº¡i cá»§a cáº£m xÃºc, báº¯t Ä‘áº§u tá»« tÃ¬nh yÃªu trong sÃ¡ng, ngá»t ngÃ o cá»§a má»™t cÃ´ bÃ© vÃ  cáº­u bÃ©. Ba giai Ä‘oáº¡n, ba máº£nh ghÃ©p, ba ngÃ´i ká»ƒ chuyá»‡n khÃ¡c nhau nhÆ°ng Ä‘á»u xoay quanh nhÃ¢n váº­t nam chÃ­nh, ngÆ°á»i luÃ´n bá»‹ Ã¡m áº£nh bá»Ÿi kÃ­ á»©c vÃ  nhá»¯ng Ä‘iá»u Ä‘Ã£ quaâ€¦\n\nKhÃ¡c vá»›i nhá»¯ng cÃ¢u chuyá»‡n cuá»‘n báº¡n cháº¡y má»™t máº¡ch, truyá»‡n nÃ y khÃ³ mÃ  Ä‘á»c nhanh. NgÃ³n tay báº¡n háº³n sáº½ ngá»«ng láº¡i cáº£ trÄƒm láº§n trÃªn má»—i trang sÃ¡ch. Chá»‰ vÃ¬ má»™t cá»­ Ä‘á»™ng ráº¥t kháº½, má»™t cÃ¢u thoáº¡i, hay má»™t xÃºc cáº£m báº¥t chá»£t cÃ³ thá»ƒ sáº½ Ä‘Ã¡nh thá»©c nhá»¯ng Ä‘iá»u tÆ°á»Ÿng chá»«ng Ä‘Ã£ ngá»§ quÃªn trong tiá»m thá»©c, nhÆ° ngá»n Ä‘Ã¨n vá»«a Ä‘Æ°á»£c báº­t sÃ¡ng trong tÃ¢m trÃ­ báº¡n. VÃ  rá»“i cÃ³ lÃºc nÃ³ vÆ°á»£t quÃ¡ giá»›i háº¡n chá»‹u Ä‘á»±ng, báº¡n quyáº¿t Ä‘á»‹nh gáº¥p cuá»‘n sÃ¡ch láº¡i chá»‰ Ä‘á»ƒ táº­n hÆ°á»Ÿng chÃºt Ã¡nh sÃ¡ng tá»« ngá»n Ä‘Ã¨n, hay Ä‘Æ¡n giáº£n lÃ  Ä‘á»ƒ váº¿t thÆ°Æ¡ng trong lÃ²ng mÃ¬nh cÃ³ thá»i gian tá»± tÃ¬m xoa dá»‹u.\"', 50000, 0, 10, 40000, 5, '2017-12-01 22:00:00', '2017-12-01 22:00:00'),
(11, 5, 'TrÃ¡c NhÃ£', 'KhÃ©o Ä‚n NÃ³i Sáº½ CÃ³ ÄÆ°á»£c ThiÃªn Háº¡', '\"KhÃ©o Ä‚n NÃ³i Sáº½ CÃ³ ÄÆ°á»£c ThiÃªn Háº¡\n\nXÃ£ há»™i hiá»‡n Ä‘áº¡i, tá»« xin viá»‡c Ä‘áº¿n thÄƒng chá»©c, tá»« tÃ¬nh yÃªu Ä‘áº¿n hÃ´n nhÃ¢n, tá»« giao lÆ°u Ä‘áº¿n há»£p tÃ¡câ€¦ khÃ´ng viá»‡c gÃ¬ khÃ´ng cáº§n tÃ i Äƒn nÃ³i.\n\nKhÃ©o Äƒn nÃ³i giá»‘ng nhÆ° sá»Ÿ há»¯u loáº¡i â€œdáº§u bÃ´i trÆ¡nâ€ Ä‘áº£m báº£o cÃ¡c má»‘i quan há»‡ cá»§a báº¡n â€œváº­n hÃ nhâ€ trÆ¡n tru. KhÃ´ng khÃ©o Äƒn nÃ³i, gáº·p chuyá»‡n nhá» máº¯c trá»Ÿ ngáº¡i, gáº·p chuyá»‡n lá»›n váº¥p tháº¥t báº¡i.\n\nLÃ m tháº¿ nÃ o Ä‘á»ƒ nÃ³i nÄƒng trÃ´i cháº£y? LÃ m tháº¿ nÃ o Ä‘á»ƒ nÃ³i lá»i â€œÄ‘i vÃ o lÃ²ng ngÆ°á»iâ€? Trong nhá»¯ng dá»‹p khÃ¡c nhau, vá»›i nhá»¯ng ngÆ°á»i khÃ¡c nhau, á»Ÿ nhá»¯ng tÃ¬nh huá»‘ng khÃ´ng giá»‘ng nhauâ€¦ cÃ³ cuá»‘n sÃ¡ch nÃ y gá»£i Ã½, báº¡n sáº½ thÃ nh ngÆ°á»i khÃ©o Äƒn nÃ³i.\"', 99000, 0, 10, 69000, 5, '2017-12-01 22:01:00', '2017-12-01 22:01:00'),
(12, 7, 'Paul Kalanithi', 'Khi HÆ¡i Thá»Ÿ HÃ³a Thinh KhÃ´ng', '\"Khi HÆ¡i Thá»Ÿ HÃ³a Thinh KhÃ´ng lÃ  tá»± truyá»‡n cá»§a má»™t bÃ¡c sÄ© bá»‹ máº¯c bá»‡nh ung thÆ° phá»•i. Trong cuá»‘n sÃ¡ch nÃ y, tÃ¡c giáº£ Ä‘Ã£ chia sáº» nhá»¯ng tráº£i nghiá»‡m tá»« khi má»›i báº¯t Ä‘áº§u há»c ngÃ nh y, tiáº¿p xÃºc vá»›i bá»‡nh nhÃ¢n cho tá»›i khi phÃ¡t hiá»‡n ra mÃ¬nh bá»‹ ung thÆ° vÃ  pháº£i Ä‘iá»u trá»‹ lÃ¢u dÃ i.\n\nKalanithi ráº¥t yÃªu thÃ­ch vÄƒn chÆ°Æ¡ng nÃªn cÃ¢u chuyá»‡n cá»§a anh Ä‘Ã£ Ä‘Æ°á»£c thuáº­t láº¡i theo má»™t phong cÃ¡ch mÆ°á»£t mÃ , dung dá»‹ vÃ  Ä‘áº§y cáº£m xÃºc. Äá»™c giáº£ cÅ©ng Ä‘Æ°á»£c hiá»ƒu thÃªm vá» triáº¿t lÃ½ sá»‘ng, triáº¿t lÃ½ nghá» y cá»§a Kalanithi, thÃ´ng qua kÃ½ á»©c vá» nhá»¯ng ngÃ y anh cÃ²n lÃ  sinh viÃªn, rá»“i thá»±c táº­p, cho Ä‘áº¿n khi chÃ­nh thá»©c hÃ nh nghá» pháº«u thuáº­t tháº§n kinh. â€œÄá»‘i vá»›i bá»‡nh nhÃ¢n vÃ  gia Ä‘Ã¬nh, pháº«u thuáº­t nÃ£o lÃ  sá»± kiá»‡n bi tháº£m nháº¥t mÃ  há» tá»«ng pháº£i Ä‘á»‘i máº·t vÃ  nÃ³ cÃ³ tÃ¡c Ä‘á»™ng nhÆ° báº¥t ká»³ má»™t biáº¿n cá»‘ lá»›n lao trong Ä‘á»i. Trong nhá»¯ng thá»i Ä‘iá»ƒm nguy cáº¥p Ä‘Ã³, cÃ¢u há»i khÃ´ng chá»‰ Ä‘Æ¡n thuáº§n lÃ  sá»‘ng hay cháº¿t mÃ  cÃ²n lÃ  cuá»™c sá»‘ng nÃ o Ä‘Ã¡ng sá»‘ng.â€ â€“ Kalanithi luÃ´n biáº¿t cÃ¡ch Ä‘Æ°a vÃ o cÃ¢u chuyá»‡n nhá»¯ng suy nghÄ© sÃ¢u sáº¯c vÃ  Ä‘áº§y sá»± Ä‘á»“ng cáº£m nhÆ° tháº¿.\n\nBáº¡n bÃ¨ vÃ  gia Ä‘Ã¬nh Ä‘Ã£ dÃ nh táº·ng nhá»¯ng lá»i trÃ¬u máº¿n nháº¥t cho con ngÆ°á»i Ä‘Ã¡ng kÃ­nh trá»ng cáº£ vá» tÃ i nÄƒng láº«n nhÃ¢n cÃ¡ch nÃ y. DÃ¹ khÃ´ng thá»ƒ vÆ°á»£t qua cÆ¡n bá»‡nh nan y, nhÆ°ng thÃ´ng Ä‘iá»‡p cá»§a tÃ¡c giáº£ sáº½ cÃ²n khiáº¿n ngÆ°á»i Ä‘á»c nhá»› mÃ£i.\"', 109000, 0, 10, 79000, 5, '2017-12-01 22:04:00', '2017-12-01 22:04:00'),
(13, 2, 'Hector Malot', 'KhÃ´ng Gia ÄÃ¬nh', '\"KhÃ´ng Gia ÄÃ¬nh lÃ  cuá»‘n sÃ¡ch Ä‘Æ°á»£c xáº¿p vÃ o danh má»¥c vÄƒn há»c thiáº¿u nhi nhÆ°ng rÃµ rÃ ng, vá»›i nhá»¯ng gÃ¬ KhÃ´ng Gia ÄÃ¬nh Ä‘Ã£ ká»ƒ thÃ¬ Ä‘Ã¢y lÃ  cuá»‘n sÃ¡ch dÃ nh cho má»i lá»©a tuá»•i á»Ÿ má»i quá»‘c gia, má»i táº§ng lá»›p.\n\nKhÃ´ng Gia ÄÃ¬nh lÃ  má»™t chuyáº¿n phiÃªu lÆ°u mÃ  RÃªmi lÃ  nhÃ¢n váº­t chÃ­nh. Em nghÃ¨o khá»•, em cÃ´ Ä‘á»™c, em khÃ´ng cÃ³ ngÆ°á»i thÃ¢n. Cuá»™c Ä‘á»i RÃªmi gáº¯n liá»n vá»›i gÃ¡nh xiáº¿c rong, vá»›i nhá»¯ng thá»­ thÃ¡ch mÃ  em gáº·p pháº£i trÃªn Ä‘Æ°á»ng Ä‘á»i tráº£i rá»™ng kháº¯p nÆ°á»›c PhÃ¡p tÆ°Æ¡i Ä‘áº¹p. RÃªmi lá»›n lÃªn trong Ä‘au khá»•, lang thang má»i nÆ¡i, bá»‹ tÃ¹ Ä‘Ã y... nhÆ°ng dÃ¹ trong hoÃ n cáº£nh nÃ o, em váº«n Ä‘á»©ng tháº³ng lÆ°ng, ngáº©ng cao Ä‘áº§u, giá»¯ pháº©m cháº¥t lÃ m ngÆ°á»i - Ä‘iá»u em Ä‘Ã£ há»c tá»« cá»¥ Vitali trong cuá»™c Ä‘á»i lang báº¡t cá»§a mÃ¬nh.\n\nKhÃ´ng Gia ÄÃ¬nh ca ngá»£i giÃ¡ trá»‹ cá»§a lao Ä‘á»™ng, cá»§a nhÃ¢n cÃ¡ch vÃ  tÃ¬nh cáº£m. Cuá»‘n sÃ¡ch mÃ´ táº£ nhá»¯ng hÃ¬nh áº£nh, nhá»¯ng máº£nh Ä‘á»i báº¥p bÃªnh Ä‘á»ƒ lÃ m ná»n cho niá»m tin, cho tÃ¬nh ngÆ°á»i áº¥m Ã¡p.\n\nKhÃ´ng Gia ÄÃ¬nh thá»±c sá»± lÃ  má»™t cuá»‘n sÃ¡ch hay vÃ  giÃ¡ trá»‹ hÆ¡n cáº£ má»™t giÃ¡ sÃ¡ch dáº¡y phÆ°Æ¡ng phÃ¡p lÃ m ngÆ°á»i.\"', 119000, 0, 10, 94200, 5, '2017-12-01 22:06:00', '2017-12-01 22:06:00'),
(14, 5, 'Satoshi Noguchi', 'LÃ m Chá»§ Giao Tiáº¿p Äá»ƒ ThÃ nh CÃ´ng', '\"LÃ m Chá»§ Giao Tiáº¿p Äá»ƒ ThÃ nh CÃ´ng\n\nGiao tiáº¿p lÃ  viá»‡c háº±ng ngÃ y ai cÅ©ng pháº£i lÃ m, nhÆ°ng láº¡i ráº¥t Ã­t ngÆ°á»i trong chÃºng ta chá»‹u Ä‘áº·t ra cÃ¢u há»i: â€œGiao tiáº¿p nhÆ° tháº¿ nÃ o cho hiá»‡u quáº£?â€. VÃ¬ khÃ´ng chá»‹u nÃ¢ng cao ká»¹ nÄƒng Ä‘á»‘i thoáº¡i, chÃºng ta ráº¥t dá»… thá»¥ Ä‘á»™ng trong cÃ¡c tÃ¬nh huá»‘ng xÃ£ há»™i. VD: Khi báº¡n ká»ƒ chuyá»‡n, ngÆ°á»i nghe dÃ¹ ráº¥t chÄƒm chÃº váº«n khÃ´ng hiá»ƒu báº¡n muá»‘n nÃ³i gÃ¬. Náº¿u pháº£i Ä‘á»©ng trÆ°á»›c Ä‘Ã¡m Ä‘Ã´ng phÃ¡t biá»ƒu, báº¡n sáº½ lÃºng tÃºng nhÆ° gÃ  máº¯c tÃ³c. Báº¡n ráº¥t tá»± tin khi gáº·p gá»¡ nhÃ  tuyá»ƒn dá»¥ng, nhÆ°ng cuá»‘i cÃ¹ng láº¡i khÃ´ng gÃ¢y Ä‘Æ°á»£c áº¥n tÆ°á»£ng nÃ o vá»›i há»â€¦\n\nViá»‡c Ä‘áº·t ra nhá»¯ng cÃ¢u há»i nhÆ° â€œPháº£i dÃ¹ng giá»ng Ä‘iá»‡u tháº¿ nÃ o cho hay?â€, â€œKhÃ´ng nÃªn nÃ³i Ä‘iá»u gÃ¬ Ä‘á»ƒ trÃ¡nh gÃ¢y nhÃ m chÃ¡nâ€â€¦ chá»‰ máº¥t thÃªm cá»§a báº¡n khoáº£ng vÃ i phÃºt trÆ°á»›c cuá»™c há»™i thoáº¡i nhÆ°ng láº¡i táº¡o ra hiá»‡u quáº£ hoÃ n toÃ n khÃ¡c biá»‡t. Náº¿u muá»‘n tiáº¿n bá»™, hÃ£y há»c há»i vÃ  luyá»‡n táº­p tá»« nhá»¯ng Ä‘iá»u nhá» nháº¥t.\n\nCuá»‘n sÃ¡ch â€œLÃ m chá»§ giao tiáº¿p Ä‘á»ƒ thÃ nh cÃ´ngâ€ cá»§a Satoshi Noguchi sáº½ giÃºp báº¡n tÃ¬m ra cÃ¡c váº¥n Ä‘á» Ä‘á»ƒ cáº£i thiá»‡n ká»¹ nÄƒng giao tiáº¿p vÃ  cung cáº¥p cÃ¡c ká»¹ thuáº­t nháº±m giáº£i quyáº¿t cÃ¡c váº¥n Ä‘á» Ä‘Ã³. BÃªn cáº¡nh cÃ¡c lá»i khuyÃªn, tÃ¡c giáº£ cÅ©ng liÃªn tá»¥c Ä‘Æ°a ra nhá»¯ng vÃ­ dá»¥ cá»¥ thá»ƒ, thá»±c táº¿ trong cuá»™c sá»‘ng Ä‘á»ƒ Ä‘á»™c giáº£ dá»… dÃ ng tham kháº£o vÃ  Ã¡p dá»¥ng. HÃ£y nhá»› ráº±ng, má»i rÃ o cáº£n khÃ³ khÄƒn trong khi trÃ² chuyá»‡n Ä‘á»u cÃ³ thá»ƒ Ä‘Æ°á»£c phÃ¡ vá»¡. NgÆ°ng trÃ¬ hoÃ£n, báº¯t Ä‘áº§u thay Ä‘á»•i vÃ  thá»±c hÃ nh ngay hÃ´m nay, báº¡n sáº½ trá»Ÿ nÃªn tá»± tin hÆ¡n ráº¥t nhiá»u trong láº§n tiáº¿p theo pháº£i â€œxá»­ lÃ½â€ cÃ¡c tÃ¬nh huá»‘ng tÆ°Æ¡ng tÃ¡c ngoÃ i xÃ£ há»™i.\"', 85000, 0, 10, 59500, 5, '2017-12-01 22:08:00', '2017-12-01 22:08:00'),
(15, 5, 'Camilo Cruz', 'NgÃ y XÆ°a CÃ³ Má»™t Con BÃ²', 'DÃ¹ muá»‘n dÃ¹ khÃ´ng thÃ¬ trong má»—i ngÆ°á»i chÃºng ta Ä‘á»u Ä‘ang nuÃ´i Ã­t nháº¥t lÃ  1 con bÃ² vÃ  tháº­m chÃ­ lÃ  cáº£ Ä‘Ã n bÃ². ÄÃ³ lÃ  nhá»¯ng con bÃ²: bao biá»‡n, viá»‡n cá»›, Ä‘á»• lá»—i, á»· láº¡i, mÃ£i tá»± hÃ o vá»›i quÃ¡ khá»©â€¦', 62000, 0, 10, 50000, 5, '2017-12-01 23:04:00', '2017-12-01 23:04:00'),
(16, 2, 'John Green', 'Khi Lá»—i Thuá»™c Vá» Nhá»¯ng VÃ¬ Sao', '\"Khi Lá»—i Thuá»™c Vá» Nhá»¯ng VÃ¬ Sao\n\nMáº·c dÃ¹ phÃ©p mÃ u y há»c Ä‘Ã£ giÃºp thu háº¹p khá»‘i u vÃ  ban thÃªm vÃ i nÄƒm sá»‘ng cho Hazel nhÆ°ng cuá»™c Ä‘á»i cÃ´ bÃ© Ä‘ang á»Ÿ vÃ o giai Ä‘oáº¡n cuá»‘i, tá»«ng chÆ°Æ¡ng káº¿ tiáº¿p Ä‘Æ°á»£c viáº¿t theo káº¿t quáº£ cháº©n Ä‘oÃ¡n. NhÆ°ng khi cÃ³ má»™t nhÃ¢n váº­t Ä‘iá»ƒn trai tÃªn lÃ  Augustus Waters Ä‘á»™t nhiÃªn xuáº¥t hiá»‡n táº¡i Há»™i TÆ°Æ¡ng Trá»£ Bá»‡nh Nhi Ung ThÆ°, cÃ¢u chuyá»‡n cá»§a Hazel sáº¯p Ä‘Æ°á»£c viáº¿t láº¡i hoÃ n toÃ n.\n\nSÃ¢u sáº¯c, tÃ¡o báº¡o, ngang tÃ ng, vÃ  thÃ´ rÃ¡p, Khi lá»—i thuá»™c vá» nhá»¯ng vÃ¬ sao lÃ  tÃ¡c pháº©m thÆ°Æ¡ng tÃ¢m vÃ  tham vá»ng nháº¥t cá»§a John Green, tÃ¡c giáº£ cá»§a nhá»¯ng giáº£i thÆ°á»Ÿng, nhÆ°ng Ä‘á»“ng thá»i láº¡i khÃ¡m phÃ¡ má»™t cÃ¡ch khÃ©o lÃ©o nÃ©t hÃ i hÆ°á»›c, li ká»³, vÃ  bi tháº£m cá»§a viá»‡c sá»‘ng vÃ  viá»‡c yÃªu.\"', 105000, 0, 10, 74000, 5, '2017-12-01 22:10:00', '2017-12-01 22:10:00'),
(17, 5, 'Adam Khoo', 'TÃ´i TÃ i Giá»i - Báº¡n CÅ©ng Tháº¿', '\"Khi báº¡n cáº§m trÃªn tay quyá»ƒn sÃ¡ch nÃ y, cÃ³ nghÄ©a lÃ  báº¡n Ä‘Ã£ cÃ³ chiáº¿c chÃ¬a khÃ³a Ä‘áº¿n sá»± thÃ nh cÃ´ng cÃ¹ng báº£ng hÆ°á»›ng dáº«n sá»­ dá»¥ng.\n\nTrong chÃºng ta, báº¥t ká»³ ai cÅ©ng muá»‘n chÃ­nh báº£n thÃ¢n mÃ¬nh trá»Ÿ thÃ nh ngÆ°á»i tÃ i giá»i, cÃ³ thá»ƒ giáº£i quyáº¿t má»i váº¥n Ä‘á» má»™t cÃ¡ch hiá»‡u quáº£ nháº¥t. VÃ  Ä‘á»ƒ cÃ³ Ä‘Æ°á»£c nhá»¯ng Ä‘iá»u Ä‘Ã³ quyá»ƒn sÃ¡ch nÃ y sáº½ giÃºp báº¡n báº±ng nhá»¯ng hÆ°á»›ng dáº«n há»c táº­p chi tiáº¿t nháº¥t.\n\nTÃ¡c giáº£ khÃ´ng chá»‰ Ä‘Æ¡n thuáº§n giáº£i thÃ­ch ngÆ°á»i khÃ¡c Ä‘Ã£ thÃ nh cÃ´ng nhÆ° tháº¿ nÃ o, mÃ  cÃ²n nÃ³i lÃ m sao Ä‘á»ƒ há» lÃ m Ä‘Æ°á»£c nhÆ° tháº¿ Ä‘á»ƒ giÃºp ngÆ°á»i Ä‘á»c khÃ¡m phÃ¡ ra tiá»m nÄƒng cá»§a báº£n thÃ¢n, vÃ  phÃ¡t huy Ä‘iá»u Ä‘Ã³. NgoÃ i ra, sÃ¡ch cÃ²n cung cáº¥p nhá»¯ng phÆ°Æ¡ng phÃ¡p há»c thÃ´ng minh (nhÆ° Ã¡p dá»¥ng cÃ¡c cÃ´ng cá»¥ há»c báº±ng cáº£ nÃ£o bá»™ nhÆ° SÆ¡ Äá»“ TÆ° Duy, phÃ¡t triá»ƒn trÃ­ nhá»› siÃªu viá»‡t Ä‘á»ƒ ghi nhá»› cÃ¡c sá»± kiá»‡n, con sá»‘ má»™t cÃ¡ch dá»… dÃ ng, thÃ nh tháº¡o viá»‡c quáº£n lÃ½ thá»i gian vÃ  xÃ¡c Ä‘á»‹nh má»¥c tiÃªu). Adam Khoo Ä‘Ã£ cho tháº¥y, tÃ i giá»i mang láº¡i sá»± tá»± tin nhÆ° tháº¿ nÃ o vÃ  cÃ²n hÆ°á»›ng dáº«n báº¡n cÃ¡ch thá»©c trá»Ÿ thÃ nh ngÆ°á»i tÃ i giá»i. Qua Ä‘Ã³ Ä‘á»™c giáº£ sáº½ láº­p Ä‘Æ°á»£c káº¿ hoáº¡ch cho cuá»™c Ä‘á»i cá»§a chÃ­nh mÃ¬nh.\n\nTÃ´i TÃ i Giá»i - Báº¡n CÅ©ng Tháº¿ sáº½ giÃºp tÃ¬m ra giáº£i phÃ¡p tá»‘t nháº¥t cho má»i váº¥n Ä‘á», vÃ  giÃºp nháº­n ra cÃ¡ch thá»©c Ä‘á»ƒ thÃ nh cÃ´ng. Tuy nhiÃªn Ä‘á»ƒ lÃ m má»™t ngÆ°á»i tÃ i giá»i thÃ¬ ngÆ°á»i Ä‘á»c cáº§n Ä‘áº·t quyá»ƒn sÃ¡ch xuá»‘ng vÃ  thá»±c thi ngay cÃ¡c káº¿ hoáº¡ch. ÄÆ°Æ¡ng nhiÃªn, khÃ´ng pháº£i chá»‰ chÄƒm chá»‰ ngÃ y má»™t, ngÃ y hai mÃ  má»—i ngÆ°á»i pháº£i thá»±c hiá»‡n lÃ¢u dÃ i, tháº­m chÃ­ cáº£ Ä‘á»i thÃ¬ má»›i Ä‘áº¡t Ä‘Æ°á»£c nhá»¯ng gÃ¬ mÃ¬nh muá»‘n.\n\nTháº­t sá»± Ä‘Ã¢y lÃ  má»™t quyá»ƒn sÃ¡ch ráº¥t tuyá»‡t vá»i vÃ  bá»• Ã­ch, Ä‘em láº¡i cho chÃºng ta nhá»¯ng kinh nghiá»‡m quÃ½ bÃ¡u. Má»™t quyá»ƒn sÃ¡ch khÃ´ng - thá»ƒ - thiáº¿u trong tá»§ sÃ¡ch!\"', 110000, 0, 10, 74000, 5, '2017-12-01 22:12:00', '2017-12-01 22:12:00'),
(18, 8, 'Kuroyanagi Tetsuko', 'Totto-Chan BÃªn Cá»­a Sá»•', '\"Totto-Chan BÃªn Cá»­a Sá»• (TÃ¡i Báº£n)\n\nVá»«a vÃ o lá»›p má»™t Ä‘Æ°á»£c vÃ i ngÃ y, Totto-chan Ä‘Ã£ bá»‹ Ä‘uá»•i há»c!!!\n\nKhÃ´ng cÃ²n cÃ¡ch nÃ o khÃ¡c, máº¹ Ä‘Ã nh Ä‘Æ°a Totto-chan Ä‘áº¿n má»™t ngÃ´i trÆ°á»ng má»›i, trÆ°á»ng Tomoe. Äáº¥y lÃ  má»™t ngÃ´i trÆ°á»ng ká»³ láº¡, lá»›p há»c thÃ¬ á»Ÿ trong toa xe Ä‘iá»‡n cÅ©, há»c sinh thÃ¬ Ä‘Æ°á»£c thoáº£ thÃ­ch thay Ä‘á»•i chá»— ngá»“i má»—i ngÃ y, muá»‘n há»c mÃ´n nÃ o trÆ°á»›c cÅ©ng Ä‘Æ°á»£c, cháº³ng nhá»¯ng tháº¿, khi Ä‘Ã£ há»c háº¿t bÃ i, cÃ¡c báº¡n cÃ²n Ä‘Æ°á»£c cÃ´ giÃ¡o cho Ä‘i dáº¡o. Äáº·c biá»‡t hÆ¡n á»Ÿ Ä‘Ã³ cÃ²n cÃ³ má»™t tháº§y hiá»‡u trÆ°á»Ÿng cÃ³ thá»ƒ chÄƒm chÃº láº¯ng nghe Totto-chan ká»ƒ chuyá»‡n suá»‘t bá»‘n tiáº¿ng Ä‘á»“ng há»“! ChÃ­nh nhá» ngÃ´i trÆ°á»ng Ä‘Ã³, má»™t Totto-chan hiáº¿u Ä‘á»™ng, cÃ¡ biá»‡t Ä‘Ã£ thu nháº­n Ä‘Æ°á»£c nhá»¯ng Ä‘iá»u vÃ´ cÃ¹ng quÃ½ giÃ¡ Ä‘á»ƒ lá»›n lÃªn thÃ nh má»™t con ngÆ°á»i hoÃ n thiá»‡n, máº¡nh máº½.\n\nTotto-chan bÃªn cá»­a sá»•, lÃ  cuá»‘n sÃ¡ch gá»‘i Ä‘áº§u giÆ°á»ng cá»§a nhiá»u tháº¿ há»‡ tráº» em trÃªn toÃ n tháº¿ giá»›i suá»‘t ba mÆ°Æ¡i nÄƒm nay. Sau khi xuáº¥t báº£n láº§n Ä‘áº§u vÃ o nÄƒm 1981, cuá»‘n sÃ¡ch Ä‘Ã£ gÃ¢y Ä‘Æ°á»£c tiáº¿ng vang lá»›n khÃ´ng chá»‰ á»Ÿ Nháº­t Báº£n mÃ  cÃ²n trÃªn toÃ n tháº¿ giá»›i. TÃ­nh Ä‘áº¿n nÄƒm 2001, tá»•ng sá»‘ báº£n sÃ¡ch bÃ¡n ra á»Ÿ Nháº­t Ä‘Ã£ lÃªn Ä‘áº¿n 9,3 triá»‡u báº£n, trá»Ÿ thÃ nh má»™t trong nhá»¯ng cuá»‘n sÃ¡ch bÃ¡n cháº¡y nháº¥t trong lá»‹ch sá»­ ngÃ nh xuáº¥t báº£n nÆ°á»›c nÃ y. Cuá»‘n sÃ¡ch Ä‘Ã£ Ä‘Æ°á»£c dá»‹ch ra 33 thá»© tiáº¿ng khÃ¡c nhau, nhÆ° Anh, PhÃ¡p, Äá»©c, HÃ n Quá»‘c, Trung Quá»‘câ€¦Khi báº£n tiáº¿ng Anh cá»§a Totto-chan Ä‘Æ°á»£c xuáº¥t báº£n táº¡i Má»¹, tá» New York Times Ä‘Ã£ Ä‘Äƒng liá»n hai bÃ i giá»›i thiá»‡u trá»n trang, má»™t â€œvinh dá»±â€ háº§u nhÆ° khÃ´ng tÃ¡c pháº©m nÃ o cÃ³ Ä‘Æ°á»£c.\"', 80000, 0, 10, 64000, 5, '2017-12-01 22:13:00', '2017-12-01 22:13:00'),
(19, 4, 'Rosie Nguyá»…n', 'Tuá»•i Tráº» ÄÃ¡ng GiÃ¡ Bao NhiÃªu', '\"Tuá»•i Tráº» ÄÃ¡ng GiÃ¡ Bao NhiÃªu\n\n\"\"Báº¡n há»‘i tiáº¿c vÃ¬ khÃ´ng náº¯m báº¯t láº¥y má»™t cÆ¡ há»™i nÃ o Ä‘Ã³, cháº³ng cÃ³ ai pháº£i máº¥t ngá»§.\n\nBáº¡n tráº£i qua nhá»¯ng ngÃ y thÃ¡ng nháº¡t nháº½o vá»›i cÃ´ng viá»‡c báº¡n cÄƒm ghÃ©t, ngÆ°á»i ta cháº³ng há» báº­n lÃ²ng.\n\nBáº¡n cÃ³ cháº¿t mÃ²n nÆ¡i xÃ³ tÆ°á»ng vá»›i nhá»¯ng Æ°á»›c mÆ¡ dang dá»Ÿ, Ä‘Ã³ khÃ´ng pháº£i lÃ  viá»‡c cá»§a há».\n\nSuy cho cÃ¹ng, quyáº¿t Ä‘á»‹nh lÃ  á»Ÿ báº¡n. Muá»‘n cÃ³ Ä‘iá»u gÃ¬ hay khÃ´ng lÃ  tÃ¹y báº¡n.\n\nNÃªn hÃ£y lÃ m nhá»¯ng Ä‘iá»u báº¡n thÃ­ch. HÃ£y Ä‘i theo tiáº¿ng nÃ³i trÃ¡i tim. HÃ£y sá»‘ng theo cÃ¡ch báº¡n cho lÃ  mÃ¬nh nÃªn sá»‘ng.\n\nVÃ¬ sau táº¥t cáº£, cháº³ng ai quan tÃ¢m.\"\"\"', 70000, 9, 20, 59000, 5, '2017-12-01 22:15:00', '2017-12-01 22:15:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_carts`
--

CREATE TABLE `book_carts` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT '1',
  `cart_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(10) NOT NULL,
  `price_total` bigint(20) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Bẫy `carts`
--
DELIMITER $$
CREATE TRIGGER `increase_buy_book` AFTER UPDATE ON `carts` FOR EACH ROW BEGIN
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Truyá»‡n ngáº¯n'),
(2, 'SÃ¡ch vÄƒn há»c'),
(3, 'Tiá»ƒu thuyáº¿t'),
(4, 'SÃ¡ch Ká»¹ NÄƒng Sá»‘ng'),
(5, 'SÃ¡ch kinh táº¿'),
(6, 'Ebook'),
(7, 'New Book'),
(8, 'SÃ¡ch Thiáº¿u Nhi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_url` blob NOT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
DELIMITER $$
CREATE TRIGGER `before_create_image` BEFORE INSERT ON `images` FOR EACH ROW SET  NEW.image_url = CASE WHEN NEW.image_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.image_url END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `birth_day` datetime DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci,
  `avatar_url` blob NOT NULL,
  `token_reset` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `password`, `admin`, `birth_day`, `address`, `avatar_url`, `token_reset`, `created_at`, `update_at`) VALUES
(1, 'Nguyá»…n', 'Anh Viá»‡t', 'songvui000@gmail.com', '123456789', '25f9e794323b453885f5181f1b624d0b', 1, '2017-12-02 00:00:00', 'DÄ© An-BÃ¬nh DÆ°Æ¡ng', 0x2f6c69622f696d616765732f6176617461722f64656661756c742f6176617461722e706e67, 'NULL', '2017-12-02 10:17:00', '2017-12-02 10:17:00'),
(2, 'Nguyá»…n', 'TÆ°á»ng Vi', 'ntvi.cse@gmail.com', '123456789', '25f9e794323b453885f5181f1b624d0b', 1, '2017-12-02 00:00:00', 'DÄ© An-BÃ¬nh DÆ°Æ¡ng', 0x2f6c69622f696d616765732f6176617461722f64656661756c742f6176617461722e706e67, 'NULL', '2017-12-02 10:17:00', '2017-12-02 10:17:00'),
(3, 'Nguyá»…n ', 'Vi', 'vinguyen@gmail.com', '123456789', '25f9e794323b453885f5181f1b624d0b', 0, '2017-12-02 00:00:00', 'DÄ© An-BÃ¬nh DÆ°Æ¡ng', 0x2f6c69622f696d616765732f6176617461722f64656661756c742f6176617461722e706e67, 'NULL', '2017-12-02 10:21:00', '2017-12-02 10:21:00');

--
-- Bẫy `users`
--
DELIMITER $$
CREATE TRIGGER `before_create_user` BEFORE INSERT ON `users` FOR EACH ROW SET  NEW.avatar_url = CASE WHEN NEW.avatar_url IS NULL THEN 'https://www.shareicon.net/data/2017/05/09/885769_user_512x512.png' ELSE NEW.avatar_url END,
  NEW.password = MD5(NEW.password)
$$
DELIMITER ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `book_carts`
--
ALTER TABLE `book_carts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`cart_id`,`book_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `users` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `book_carts`
--
ALTER TABLE `book_carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
