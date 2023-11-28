-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 04, 2023 lúc 08:11 AM
-- Phiên bản máy phục vụ: 10.3.39-MariaDB-log-cll-lve
-- Phiên bản PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lrwcbrks_dulichviet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_user` varchar(100) NOT NULL,
  `id_post` int(11) NOT NULL,
  `cmt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_user`, `id_post`, `cmt`) VALUES
(59, 'tanchan679@gmail.com', 13, '<p>gfgfd</p>'),
(81, 'admin', 14, '<p>dgf</p>'),
(82, 'admin', 14, '<p>gfdgfd</p>'),
(83, 'admin', 14, '<p>Test nhe cai cmt</p><p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment_travelviewing`
--

CREATE TABLE `comment_travelviewing` (
  `id` int(11) NOT NULL,
  `id_user` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_post` int(11) NOT NULL,
  `cmt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment_travelviewing`
--

INSERT INTO `comment_travelviewing` (`id`, `id_user`, `id_post`, `cmt`) VALUES
(1, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 4, '\0\0\0t\0\0\0e\0\0\0s\0\0\0t\0\0\0 \0\0\0c\0\0\0m\0\0\0t'),
(2, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 4, '\0\0\0<\0\0\0p\0\0\0>\0\0\0T\0\0\0h\0\0\0u\0\0\0 \0\0\0c\0\0\0m\0\0\0t\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(3, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 4, '\0\0\0<\0\0\0p\0\0\0>\0\0\0h\0\0\0a\0\0\0h\0\0\0a\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(4, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 3, '\0\0\0<\0\0\0p\0\0\0>\0\0\0h\0\0\0f\0\0\0h\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(5, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 3, '\0\0\0<\0\0\0p\0\0\0>\0\0\0d\0\0\0h\0\0\0g\0\0\0f\0\0\0h\0\0\0f\0\0\0j\0\0\0g\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(6, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 3, '\0\0\0<\0\0\0p\0\0\0>\0\0\0d\0\0\0h\0\0\0g\0\0\0f\0\0\0h\0\0\0f\0\0\0j\0\0\0g\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(7, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 3, '\0\0\0<\0\0\0p\0\0\0>\0\0\0d\0\0\0h\0\0\0g\0\0\0f\0\0\0h\0\0\0f\0\0\0j\0\0\0g\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(8, '\0\0\0a\0\0\0d\0\0\0m\0\0\0i\0\0\0n', 4, '\0\0\0<\0\0\0p\0\0\0>\0\0\0d\0\0\0a\0\0\0s\0\0\0d\0\0\0a\0\0\0s\0\0\0d\0\0\0s\0\0\0<\0\0\0/\0\0\0p\0\0\0>'),
(9, 'admin', 9, 'hkkhj'),
(10, 'admin', 9, 'gjhjhg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `posts` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `name`, `avatar`, `posts`) VALUES
(13, 'Tour Philippines 5N4Ä: vui háº¿t náº¥c á»Ÿ thiÃªn Ä‘Æ°á»ng El Nido â€“ â€œhÃ²n ngá»c cá»§a Palawanâ€', './upload/image/Du-Lich_1.jpg', '<h2>Tour Philippines 5N4Ä: vui háº¿t náº¥c á»Ÿ thi&ecirc;n Ä‘Æ°á»ng El Nido &ndash; &ldquo;h&ograve;n ngá»c cá»§a Palawan&rdquo;</h2>\r\n\r\n<p><strong>Äáº£o Helicopter</strong></p>\r\n\r\n<p>Äáº£o Helicopter (hay Ä‘áº£o Dilumacad) l&agrave; má»™t h&ograve;n Ä‘áº£o nhá» náº±m á»Ÿ vá»‹nh Bacuit, El Nido, Ä‘iá»ƒm Ä‘áº¿n th&uacute; vá»‹ trong&nbsp;<strong>tour Philippines 5N4Ä</strong>. Sá»Ÿ dÄ© c&oacute; c&aacute;i t&ecirc;n n&agrave;y v&igrave; Ä‘áº£o c&oacute; h&igrave;nh d&aacute;ng giá»‘ng má»™t chiáº¿c trá»±c thÄƒng, Ä‘Æ°á»£c nh&igrave;n tháº¥y r&otilde; nháº¥t tá»« â€‹â€‹â€‹â€‹tr&ecirc;n cao. Äáº£o c&oacute; b&atilde;i biá»ƒn c&aacute;t tráº¯ng d&agrave;i, ráº¥t l&yacute; tÆ°á»Ÿng Ä‘á»ƒ bÆ¡i lá»™i v&agrave; táº¯m náº¯ng. NÆ°á»›c biá»ƒn á»Ÿ Ä‘&acirc;y trong v&agrave; xanh, ráº¥t ph&ugrave; há»£p Ä‘á»ƒ láº·n báº±ng á»‘ng thá»Ÿ. C&oacute; má»™t sá»‘ Ä‘á»‹a Ä‘iá»ƒm láº·n quanh Ä‘áº£o, nÆ¡i báº¡n c&oacute; thá»ƒ chi&ecirc;m ngÆ°á»¡ng sinh váº­t biá»ƒn nhÆ° c&aacute;c ráº¡n san h&ocirc;, c&aacute; v&agrave; r&ugrave;a.</p>\r\n\r\n<p><a href=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-1.jpg\"><img alt=\"tour-philippines-ivivu-1\" src=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-1.jpg\" style=\"height:640px; width:640px\" /></a></p>\r\n\r\n<p><a href=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-2.jpg\"><img alt=\"tour-philippines-ivivu-2\" src=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-2.jpg\" style=\"height:480px; width:640px\" /></a></p>\r\n\r\n<p>Äáº£o Trá»±c ThÄƒng nh&igrave;n tá»« tr&ecirc;n cao.</p>\r\n'),
(17, 'Du lá»‹ch VÅ©ng TÃ u: Cáº©m nang tá»« A Ä‘áº¿n Z (update thÃ´n...', './upload/image/Anh 1_Cau Vang - Sun World Ba Na Hills.jpg', '<h2>Tour Philippines 5N4Ä: vui háº¿t náº¥c á»Ÿ thi&ecirc;n Ä‘Æ°á»ng El Nido &ndash; &ldquo;h&ograve;n ngá»c cá»§a Palawan&rdquo;</h2>\r\n\r\n<p><strong>Äáº£o Helicopter</strong></p>\r\n\r\n<p>Äáº£o Helicopter (hay Ä‘áº£o Dilumacad) l&agrave; má»™t h&ograve;n Ä‘áº£o nhá» náº±m á»Ÿ vá»‹nh Bacuit, El Nido, Ä‘iá»ƒm Ä‘áº¿n th&uacute; vá»‹ trong&nbsp;<strong>tour Philippines 5N4Ä</strong>. Sá»Ÿ dÄ© c&oacute; c&aacute;i t&ecirc;n n&agrave;y v&igrave; Ä‘áº£o c&oacute; h&igrave;nh d&aacute;ng giá»‘ng má»™t chiáº¿c trá»±c thÄƒng, Ä‘Æ°á»£c nh&igrave;n tháº¥y r&otilde; nháº¥t tá»« â€‹â€‹â€‹â€‹tr&ecirc;n cao. Äáº£o c&oacute; b&atilde;i biá»ƒn c&aacute;t tráº¯ng d&agrave;i, ráº¥t l&yacute; tÆ°á»Ÿng Ä‘á»ƒ bÆ¡i lá»™i v&agrave; táº¯m náº¯ng. NÆ°á»›c biá»ƒn á»Ÿ Ä‘&acirc;y trong v&agrave; xanh, ráº¥t ph&ugrave; há»£p Ä‘á»ƒ láº·n báº±ng á»‘ng thá»Ÿ. C&oacute; má»™t sá»‘ Ä‘á»‹a Ä‘iá»ƒm láº·n quanh Ä‘áº£o, nÆ¡i báº¡n c&oacute; thá»ƒ chi&ecirc;m ngÆ°á»¡ng sinh váº­t biá»ƒn nhÆ° c&aacute;c ráº¡n san h&ocirc;, c&aacute; v&agrave; r&ugrave;a.</p>\r\n\r\n<p><a href=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-1.jpg\"><img alt=\"tour-philippines-ivivu-1\" src=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-1.jpg\" style=\"height:640px; width:640px\" /></a></p>\r\n\r\n<p><a href=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-2.jpg\"><img alt=\"tour-philippines-ivivu-2\" src=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-2.jpg\" style=\"height:480px; width:640px\" /></a></p>\r\n\r\n<p>Äáº£o Trá»±c ThÄƒng nh&igrave;n tá»« tr&ecirc;n cao.</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `travelviewing`
--

CREATE TABLE `travelviewing` (
  `id` int(11) NOT NULL,
  `title` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iva1` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iva2` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iva3` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Dday` date NOT NULL,
  `time` int(11) NOT NULL,
  `startingplace` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ToLocation` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Numberofseats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `travelviewing`
--

INSERT INTO `travelviewing` (`id`, `title`, `iva1`, `iva2`, `iva3`, `content`, `code`, `Dday`, `time`, `startingplace`, `ToLocation`, `Numberofseats`) VALUES
(8, 'Vá»«a thá»©c dáº­y Ä‘Ã£ say náº¯ng Ä‘áº§u ngÃ y BÃ£i MÃ´n', './upload/image/Du-Lich_1.jpg', './upload/image/Anh 1_Cau Vang - Sun World Ba Na Hills.jpg', '\0\0\0.\0\0\0/\0\0\0u\0\0\0p\0\0\0l\0\0\0o\0\0\0a\0\0\0d\0\0\0/\0\0\0i\0\0\0m\0\0\0a\0\0\0g\0\0\0e\0\0\0/\0\0\03\0\0\04\0\0\0-\0\0\0h\0\0\0i\0\0\0n\0\0\0h\0\0\0-\0\0\0a\0\0\0n\0\0\0h\0\0\0-\0\0\0t\0\0\0h\0\0\0i\0\0\0e\0\0\0n\0\0\0-\0\0\0n\0\0\0h\0\0\0i\0\0\0e\0\0\0n\0\0\0-\0\0\0d\0\0\0e\0\0\0p\0\0\0-\0\0\0n\0\0\0h\0\0\0a\0\0\0t\0\0\0-\0\0\01\0\0\08\0\0\03\0\0\0-\0\0\01\0\0\0.\0\0\0j\0\0\0p\0\0\0g', '<h2>Cho&agrave;ng tá»‰nh sau Ä‘&ecirc;m say giáº¥c trong lá»u du lá»‹ch á»Ÿ B&atilde;i M&ocirc;n (Ph&uacute; Y&ecirc;n), nháº­n ra m&igrave;nh Ä‘ang Ä‘&oacute;n tia náº¯ng Ä‘áº§u ti&ecirc;n tr&ecirc;n Ä‘áº¥t liá»n nÆ°á»›c Viá»‡t, l&agrave; cáº£m gi&aacute;c ráº¥t láº¡.</h2>\r\n\r\n<p>MÅ©i Äiá»‡n cá»§a Ph&uacute; Y&ecirc;n Ä‘Æ°á»£c cho l&agrave; Ä‘iá»ƒm cá»±c Ä‘&ocirc;ng cá»§a Viá»‡t Nam. V&agrave; B&atilde;i M&ocirc;n náº±m ká» ngay dÆ°á»›i ch&acirc;n MÅ©i Äiá»‡n, l&agrave; b&atilde;i biá»ƒn há»©ng &aacute;nh náº¯ng mai Ä‘áº§u ti&ecirc;n tr&ecirc;n Ä‘áº¥t liá»n nÆ°á»›c ta.</p>\r\n\r\n<p><a href=\"https://images2.thanhnien.vn/528068263637045248/2023/11/2/base64-16989410038571274415584.jpeg\" target=\"_blank\" title=\"CÃ³ hai cÃ¡ch Ä‘á»ƒ trá»Ÿ thÃ nh ngÆ°á»i Ä‘Ã³n bÃ¬nh minh sá»›m nháº¥t bÃªn bá» Biá»ƒn ÄÃ´ng. Má»™t lÃ , xuáº¥t phÃ¡t tháº­t sá»›m Ä‘áº¿n BÃ£i MÃ´n trÆ°á»›c khi máº·t trá»i lÃªn. Hai lÃ , cáº¯m tráº¡i qua Ä‘Ãªm ngay trÃªn bÃ£i cÃ¡t. Trong áº£nh, nhÃ³m du khÃ¡ch Ä‘áº¿n BÃ£i MÃ´n tá»« hÃ´m trÆ°á»›c, dá»±ng lá»u Äƒn uá»‘ng, vui chÆ¡i, hÃ´m sau thá»©c dáº­y vá»›i con náº¯ng Ä‘áº§u ngÃ y\"><img alt=\"Vá»«a thá»©c dáº­y Ä‘Ã£ say náº¯ng Ä‘áº§u ngÃ y BÃ£i MÃ´n - áº¢nh 1.\" id=\"img_644560513390977024\" src=\"https://images2.thanhnien.vn/528068263637045248/2023/11/2/base64-16989410038571274415584.jpeg\" title=\"Vá»«a thá»©c dáº­y Ä‘Ã£ say náº¯ng Ä‘áº§u ngÃ y BÃ£i MÃ´n - áº¢nh 1.\" /></a></p>\r\n\r\n<p>C&oacute; hai c&aacute;ch Ä‘á»ƒ trá»Ÿ th&agrave;nh ngÆ°á»i Ä‘&oacute;n b&igrave;nh minh sá»›m nháº¥t b&ecirc;n bá» Biá»ƒn Ä&ocirc;ng. Má»™t l&agrave;, xuáº¥t ph&aacute;t tháº­t sá»›m Ä‘áº¿n B&atilde;i M&ocirc;n trÆ°á»›c khi máº·t trá»i l&ecirc;n. Hai l&agrave;, cáº¯m tráº¡i qua Ä‘&ecirc;m ngay tr&ecirc;n b&atilde;i c&aacute;t. Trong áº£nh, nh&oacute;m du kh&aacute;ch Ä‘áº¿n B&atilde;i M&ocirc;n tá»« h&ocirc;m trÆ°á»›c, dá»±ng lá»u Äƒn uá»‘ng, vui chÆ¡i, h&ocirc;m sau thá»©c dáº­y vá»›i con náº¯ng Ä‘áº§u ng&agrave;y</p>\r\n\r\n<p>TR&Iacute; MINH</p>\r\n\r\n<p><a href=\"https://images2.thanhnien.vn/528068263637045248/2023/11/2/base64-1698941003973411728345.jpeg\" target=\"_blank\" title=\"Nhiá»u ngÆ°á»i Ä‘á»‹a phÆ°Æ¡ng cÅ©ng chá»n cÃ¡ch á»Ÿ láº¡i qua Ä‘Ãªm trÃªn bÃ£i cÃ¡t, sÃ¡ng sá»›m thá»©c dáº­y chá»©ng kiáº¿n cáº£nh máº·t trá»i má»c trÃªn biá»ƒn. &quot;NhÃ  tÃ´i á»Ÿ cÃ¡ch BÃ£i MÃ´n hÆ¡n 70 cÃ¢y sá»‘ nÃªn Ä‘áº¿n Ä‘Ã¢y tá»« chiá»u, cáº¯m tráº¡i rá»“i á»Ÿ láº¡i buá»•i tá»‘i Ä‘á»ƒ sá»›m bá»¯a sau dáº­y cho thong tháº£&quot;, anh HoÃ ng ÄÄƒng VÆ°Æ¡ng, ngÆ°á»i dÃ¢n á»Ÿ H.Äá»“ng XuÃ¢n, PhÃº YÃªn cho biáº¿t\"><img alt=\"Vá»«a thá»©c dáº­y Ä‘Ã£ say náº¯ng Ä‘áº§u ngÃ y BÃ£i MÃ´n - áº¢nh 2.\" id=\"img_644560800892473344\" src=\"https://images2.thanhnien.vn/528068263637045248/2023/11/2/base64-1698941003973411728345.jpeg\" title=\"Vá»«a thá»©c dáº­y Ä‘Ã£ say náº¯ng Ä‘áº§u ngÃ y BÃ£i MÃ´n - áº¢nh 2.\" /></a></p>\r\n\r\n<p>Nhiá»u ngÆ°á»i Ä‘á»‹a phÆ°Æ¡ng cÅ©ng chá»n c&aacute;ch á»Ÿ láº¡i qua Ä‘&ecirc;m tr&ecirc;n b&atilde;i c&aacute;t, s&aacute;ng sá»›m thá»©c dáº­y chá»©ng kiáº¿n cáº£nh máº·t trá»i má»c tr&ecirc;n biá»ƒn. &quot;Nh&agrave; t&ocirc;i á»Ÿ c&aacute;ch B&atilde;i M&ocirc;n hÆ¡n 70 c&acirc;y sá»‘ n&ecirc;n Ä‘áº¿n Ä‘&acirc;y tá»« chiá»u, cáº¯m tráº¡i rá»“i á»Ÿ láº¡i buá»•i tá»‘i Ä‘á»ƒ sá»›m bá»¯a sau dáº­y cho thong tháº£&quot;, anh Ho&agrave;ng ÄÄƒng VÆ°Æ¡ng, ngÆ°á»i d&acirc;n á»Ÿ H.Äá»“ng Xu&acirc;n, Ph&uacute; Y&ecirc;n cho biáº¿t</p>\r\n\r\n<p>TR&Iacute; MINH</p>\r\n\r\n<p><a href=\"https://images2.thanhnien.vn/528068263637045248/2023/11/2/base64-1698941004100992727369.jpeg\" target=\"_blank\" title=\"BÃ£i MÃ´n náº±m trá»n giá»¯a hai mÅ©i Ä‘áº¥t chá»“m ra Biá»ƒn ÄÃ´ng gá»“m MÅ©i Äiá»‡n vÃ  MÅ©i Náº¡y. TrÃªn Ä‘á»‰nh MÅ©i Äiá»‡n cÃ³ ngá»n háº£i Ä‘Äƒng hÆ¡n 100 tuá»•i, táº§m nhÃ¬n bao quÃ¡t, toÃ n cáº£nh ban mai. Tuy nhiÃªn, Ä‘á»ƒ Ä‘áº¿n Ä‘Ã³, pháº£i leo 400 báº­c thang dÃ i khoáº£ng ná»­a cÃ¢y sá»‘ Ä‘Æ°á»ng nÃºi dá»‘c, nÃªn nhiá»u ngÆ°á»i chá»n cÃ¡ch á»Ÿ dÆ°á»›i bÃ£i\"><img alt=\"Vá»«a thá»©c dáº­y Ä‘Ã£ say náº¯ng Ä‘áº§u ngÃ y BÃ£i MÃ´n - áº¢nh 3.\" id=\"img_644561166716260352\" src=\"https://images2.thanhnien.vn/528068263637045248/2023/11/2/base64-1698941004100992727369.jpeg\" title=\"Vá»«a thá»©c dáº­y Ä‘Ã£ say náº¯ng Ä‘áº§u ngÃ y BÃ£i MÃ´n - áº¢nh 3.\" /></a></p>\r\n\r\n<p>B&atilde;i M&ocirc;n náº±m trá»n giá»¯a hai mÅ©i Ä‘áº¥t chá»“m ra Biá»ƒn Ä&ocirc;ng gá»“m MÅ©i Äiá»‡n v&agrave; MÅ©i Náº¡y. Tr&ecirc;n Ä‘á»‰nh MÅ©i Äiá»‡n c&oacute; ngá»n háº£i Ä‘Äƒng hÆ¡n 100 tuá»•i, táº§m nh&igrave;n bao qu&aacute;t, to&agrave;n cáº£nh ban mai. Tuy nhi&ecirc;n, Ä‘á»ƒ Ä‘áº¿n Ä‘&oacute;, pháº£i leo 400 báº­c thang d&agrave;i khoáº£ng ná»­a c&acirc;y sá»‘ Ä‘Æ°á»ng n&uacute;i dá»‘c, n&ecirc;n nhiá»u ngÆ°á»i chá»n c&aacute;ch á»Ÿ dÆ°á»›i b&atilde;i</p>\r\n\r\n<p>TR&Iacute; MINH</p>\r\n\r\n<p><a href=\"https://images2.thanhnien.vn/528068263637045248/2023/11/2/base64-16989410042542023019981.jpeg\" target=\"_blank\" title=\"Khu vá»±c nÃ y khÃ´ng cÃ³ nhÃ  dÃ¢n, háº§u nhÆ° khÃ´ng cÃ³ dá»‹ch vá»¥. Äáº§u Ä‘Æ°á»ng vÃ o, cÃ³ quÃ¡n nhá» bÃ¡n nÆ°á»›c giáº£i khÃ¡t, thá»©c Äƒn, cho thuÃª má»™t sá»‘ váº­t dá»¥ng. Tuy váº­y, khÃ¡ch Ä‘áº¿n á»Ÿ qua Ä‘Ãªm hay tham quan trong ngÃ y Ä‘á»u tá»± mang theo Ä‘á»“ dÃ¹ng, thá»©c Äƒn nÆ°á»›c uá»‘ng\"><img alt=\"Vá»«a thá»©c dáº­y Ä‘Ã£ say náº¯ng Ä‘áº§u ngÃ y BÃ£i MÃ´n - áº¢nh 4.\" id=\"img_644561533342400512\" src=\"https://images2.thanhnien.vn/528068263637045248/2023/11/2/base64-16989410042542023019981.jpeg\" title=\"Vá»«a thá»©c dáº­y Ä‘Ã£ say náº¯ng Ä‘áº§u ngÃ y BÃ£i MÃ´n - áº¢nh 4.\" /></a></p>\r\n\r\n<p>Khu vá»±c n&agrave;y kh&ocirc;ng c&oacute; nh&agrave; d&acirc;n, háº§u nhÆ° kh&ocirc;ng c&oacute; dá»‹ch vá»¥. Äáº§u Ä‘Æ°á»ng v&agrave;o, c&oacute; qu&aacute;n nhá» b&aacute;n nÆ°á»›c giáº£i kh&aacute;t, thá»©c Äƒn, cho thu&ecirc; má»™t sá»‘ váº­t dá»¥ng. Tuy váº­y, kh&aacute;ch Ä‘áº¿n á»Ÿ qua Ä‘&ecirc;m hay tham quan trong ng&agrave;y Ä‘á»u tá»± mang theo Ä‘á»“ d&ugrave;ng, thá»©c Äƒn nÆ°á»›c uá»‘ng</p>\r\n', 'HFGHhj76', '2021-03-03', 3, 'HÃ  Ná»™i', 'HMC SiÃªu cáº¥p Vip Pro', 15),
(9, 'Du lá»‹ch Philippines: Cáº©m nang tá»« A Ä‘áº¿n Z', './upload/image/Du-Lich_1.jpg', './upload/image/Anh 1_Cau Vang - Sun World Ba Na Hills.jpg', '../upload/image/noavata.jpg', '<h2>Tour Philippines 5N4Ä: vui háº¿t náº¥c á»Ÿ thi&ecirc;n Ä‘Æ°á»ng El Nido &ndash; &ldquo;h&ograve;n ngá»c cá»§a Palawan&rdquo;</h2>\r\n\r\n<p><strong>Äáº£o Helicopter</strong></p>\r\n\r\n<p>Äáº£o Helicopter (hay Ä‘áº£o Dilumacad) l&agrave; má»™t h&ograve;n Ä‘áº£o nhá» náº±m á»Ÿ vá»‹nh Bacuit, El Nido, Ä‘iá»ƒm Ä‘áº¿n th&uacute; vá»‹ trong&nbsp;<strong>tour Philippines 5N4Ä</strong>. Sá»Ÿ dÄ© c&oacute; c&aacute;i t&ecirc;n n&agrave;y v&igrave; Ä‘áº£o c&oacute; h&igrave;nh d&aacute;ng giá»‘ng má»™t chiáº¿c trá»±c thÄƒng, Ä‘Æ°á»£c nh&igrave;n tháº¥y r&otilde; nháº¥t tá»« â€‹â€‹â€‹â€‹tr&ecirc;n cao. Äáº£o c&oacute; b&atilde;i biá»ƒn c&aacute;t tráº¯ng d&agrave;i, ráº¥t l&yacute; tÆ°á»Ÿng Ä‘á»ƒ bÆ¡i lá»™i v&agrave; táº¯m náº¯ng. NÆ°á»›c biá»ƒn á»Ÿ Ä‘&acirc;y trong v&agrave; xanh, ráº¥t ph&ugrave; há»£p Ä‘á»ƒ láº·n báº±ng á»‘ng thá»Ÿ. C&oacute; má»™t sá»‘ Ä‘á»‹a Ä‘iá»ƒm láº·n quanh Ä‘áº£o, nÆ¡i báº¡n c&oacute; thá»ƒ chi&ecirc;m ngÆ°á»¡ng sinh váº­t biá»ƒn nhÆ° c&aacute;c ráº¡n san h&ocirc;, c&aacute; v&agrave; r&ugrave;a.</p>\r\n\r\n<p><a href=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-1.jpg\"><img alt=\"tour-philippines-ivivu-1\" src=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-1.jpg\" style=\"height:640px; width:640px\" /></a></p>\r\n\r\n<p><a href=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-2.jpg\"><img alt=\"tour-philippines-ivivu-2\" src=\"https://cdn3.ivivu.com/2023/10/tour-philippines-ivivu-2.jpg\" style=\"height:480px; width:640px\" /></a></p>\r\n\r\n<p>Äáº£o Trá»±c ThÄƒng nh&igrave;n tá»« tr&ecirc;n cao.</p>\r\n', 'HFGHFG4576', '5221-12-15', 3, 'Ha Noi', 'Ha Giang', 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(24) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `address` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `phonenumber`, `address`) VALUES
(0, 'admin', '11111111', 'Admin', '0347194217', '................................'),
(10, 'tanchan67g9@gmail.com', '11111111', 'Test User', '654645', '645645654645'),
(11, 'test@gmail.com', '11111111', 'Test User', '113', 'moutain'),
(15, 'hgjfhg@gfd.com', '123456', 'hạnh', '656565', 'jgh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment_travelviewing`
--
ALTER TABLE `comment_travelviewing`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `travelviewing`
--
ALTER TABLE `travelviewing`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `name` (`id`,`email`,`password`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `comment_travelviewing`
--
ALTER TABLE `comment_travelviewing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `travelviewing`
--
ALTER TABLE `travelviewing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
