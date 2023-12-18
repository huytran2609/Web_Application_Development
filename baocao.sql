-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 07, 2023 lúc 12:08 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baocao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `name`, `url`, `image`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Mùa đông', 'https://maxxsport.com.vn/bst-thu-dong-le-coq-sportif', '/template/images/slider_4.webp', 1, 1, '2022-11-22 23:15:38', '2022-12-07 08:00:12'),
(2, 'Thời trang tốt nhất', 'https://maxxsport.com.vn/le-coq-golf', '/template/images/slider_5.webp', 2, 1, '2022-11-22 23:16:41', '2022-11-22 23:16:41'),
(3, 'Thời trang thu đông', 'https://maxxsport.com.vn/bst-thu-dong', '/template/images/slider_1.webp', 3, 1, '2022-11-22 23:17:32', '2022-11-22 23:55:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_khachhangs`
--

CREATE TABLE `bill_khachhangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_money` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_khachhangs`
--

INSERT INTO `bill_khachhangs` (`id`, `total_money`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(300001, 675000, 1, 'Đã nhận đơn', '2022-10-31 17:00:00', NULL),
(300002, 675000, 2, 'Đã nhận đơn', '2022-11-01 17:00:00', NULL),
(300003, 675000, 3, 'Đã nhận đơn', '2022-11-02 17:00:00', NULL),
(300004, 585000, 4, 'Đã nhận đơn', '2022-11-03 17:00:00', NULL),
(300005, 690000, 5, 'Đã nhận đơn', '2022-11-04 17:00:00', NULL),
(300006, 900000, 6, 'Đã nhận đơn', '2022-11-05 17:00:00', NULL),
(300007, 2300000, 7, 'Đã nhận đơn', '2022-11-06 17:00:00', NULL),
(300008, 3400000, 8, 'Đã nhận đơn', '2022-11-07 17:00:00', NULL),
(300009, 4890000, 9, 'Đã nhận đơn', '2022-11-08 17:00:00', NULL),
(300010, 11250000, 10, 'Đã nhận đơn', '2022-11-09 17:00:00', NULL),
(300011, 0, 1, 'Chưa nhận đơn', '2022-11-28 15:11:09', NULL),
(300012, 0, 11, 'Chưa nhận đơn', '2022-11-28 15:11:09', NULL),
(300013, 225000, 11, 'Chưa nhận đơn', NULL, NULL),
(300014, 1075000, 11, 'Chưa nhận đơn', NULL, NULL),
(300022, 3175000, 17, 'Chưa nhận đơn', '2022-12-14 02:08:41', '2022-12-14 02:08:41'),
(300023, 400000, 18, 'Chưa nhận đơn', '2022-12-19 08:51:13', '2022-12-19 08:51:13'),
(300024, 2898000, 19, 'Chưa nhận đơn', '2022-12-19 09:10:03', '2022-12-19 09:10:03'),
(300025, 2500000, 25, 'Chưa nhận đơn', '2022-12-22 09:34:25', '2022-12-22 09:34:25'),
(300026, 850000, 20, 'Chưa nhận đơn', '2022-12-22 09:42:40', '2022-12-22 09:42:40'),
(300027, 200000, 20, 'Chưa nhận đơn', '2022-12-22 09:55:27', '2022-12-22 09:55:27'),
(300028, 2013500, 18, 'Chưa nhận đơn', '2022-12-26 08:47:42', '2022-12-26 08:47:42'),
(300029, 200000, 18, 'Chưa nhận đơn', '2022-12-26 08:50:59', '2022-12-26 08:50:59'),
(300030, 2250000, 18, 'Chưa nhận đơn', '2022-12-26 09:00:40', '2022-12-26 09:00:40'),
(300031, 3495000, 26, 'Chưa nhận đơn', '2022-12-26 20:07:58', '2022-12-26 20:07:58'),
(300032, 1435500, 1, 'Chưa nhận đơn', '2022-12-27 07:22:07', '2022-12-27 07:22:07'),
(300033, 453600, 27, 'Chưa nhận đơn', '2022-12-27 08:19:59', '2022-12-27 08:19:59'),
(300034, 2000000, 27, 'Chưa nhận đơn', '2022-12-27 08:33:35', '2022-12-27 08:33:35'),
(300035, 336600, 27, 'Chưa nhận đơn', '2022-12-27 08:49:54', '2022-12-27 08:49:54'),
(300036, 400000, 27, 'Chưa nhận đơn', '2022-12-27 13:47:39', '2022-12-27 13:47:39'),
(300037, 200000, 28, 'Chưa nhận đơn', '2022-12-27 13:49:04', '2022-12-27 13:49:04'),
(300038, 200000, 28, 'Chưa nhận đơn', '2022-12-27 13:51:17', '2022-12-27 13:51:17'),
(300039, 200000, 28, 'Chưa nhận đơn', '2022-12-27 13:52:11', '2022-12-27 13:52:11'),
(300040, 99000, 28, 'Chưa nhận đơn', '2022-12-27 13:52:36', '2022-12-27 13:52:36'),
(300041, 99000, 28, 'Chưa nhận đơn', '2022-12-27 13:54:08', '2022-12-27 13:54:08'),
(300042, 200000, 28, 'Chưa nhận đơn', '2022-12-27 13:54:45', '2022-12-27 13:54:45'),
(300043, 200000, 28, 'Chưa nhận đơn', '2022-12-27 13:55:41', '2022-12-27 13:55:41'),
(300044, 500000, 28, 'Chưa nhận đơn', '2022-12-27 13:56:18', '2022-12-27 13:56:18'),
(300045, 500000, 28, 'Chưa nhận đơn', '2022-12-27 13:57:18', '2022-12-27 13:57:18'),
(300046, 995000, 28, 'Chưa nhận đơn', '2022-12-27 13:57:56', '2022-12-27 13:57:56'),
(300047, 803000, 28, 'Chưa nhận đơn', '2022-12-27 13:58:46', '2022-12-27 13:58:46'),
(300048, 99000, 28, 'Chưa nhận đơn', '2022-12-27 13:59:43', '2022-12-27 13:59:43'),
(300049, 1395000, 28, 'Chưa nhận đơn', '2023-03-07 03:34:27', '2023-03-07 03:34:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_vanglais`
--

CREATE TABLE `bill_vanglais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_money` int(11) NOT NULL,
  `customer_phone_number` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_vanglais`
--

INSERT INTO `bill_vanglais` (`id`, `total_money`, `customer_phone_number`, `created_at`) VALUES
(700001, 0, '0123456789', '2022-11-10 17:00:00'),
(700002, 0, '0123456781', '2022-11-11 17:00:00'),
(700003, 0, '0123456782', '2022-11-12 17:00:00'),
(700004, 0, '0123456783', '2022-11-13 17:00:00'),
(700005, 0, '0123456784', '2022-11-14 17:00:00'),
(700006, 0, '0123456785', '2022-11-15 17:00:00'),
(700007, 0, '0123456786', '2022-11-16 17:00:00'),
(700008, 0, '0123456787', '2022-11-17 17:00:00'),
(700009, 0, '0123456788', '2022-11-18 17:00:00'),
(700010, 0, '0123456779', '2022-11-19 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(600) NOT NULL,
  `image` varchar(500) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `status` tinytext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `name`, `image`, `content`, `status`, `created_at`) VALUES
(1, 'Bí quyết lựa chọn đồ thể thao phù hợp với phong cách của bạn', 'https://file.hstatic.net/1000283722/file/phoi-quan-the-thao-sneaker_9fc45172188c4e3b89f23dfe8610dffb_grande.jpeg', 'Những chiếc quần thể thao từ lâu đã không còn gói gọn trong phạm vi các bộ môn thể thao nữa mà nó đang lan sang cả những set quần áo đi chơi, đi học trong tủ đồ của giới trẻ hiện nay. Xu hướng thời trang này có thể được áp dụng cho cả nam lẫn nữ vì đều tôn lên phong cách thể thao năng động, dễ mặc đi đến bất kỳ nơi đâu.\n\nVới quần thể thao, bạn sẽ dễ dàng kết hợp với áo thun trơn, áo hoodie đều được. Bạn có thể mặc quần thể thao kèm với sơ mi nhưng tốt nhất chỉ nên mặc sơ mi để khoác bên ngoài áo thun. Vì bản chất sơ mi được sinh ra không phải để bạn mặc thường xuyên với quần thể thao. Phong cách thể thao này chủ đạo ở tính đa năng, basic, vì thể bạn nên chọn các mẫu áo đi kèm với quần thể thao ở mức độ đơn giản, không quá rườm rà về các chi tiết, vì như thế sẽ làm mất đi tinh thần thể thao trong set đồ của mình.\n\nVà cuối cùng, một item không thể thiếu để hoàn thiện cho phong cách này đó chính là những đôi sneaker. Nói một cách khác, sneaker chính là một mảnh ghép hoàn hảo khiến cho phong cách thể thao này của bạn trở nên nổi bật hơn bao giờ hết.', '1', '2022-12-26 04:31:58'),
(2, 'Mệnh Kim dùng ví màu gì để năm mới nhiều tài lộc 2023', 'https://file.hstatic.net/1000283722/file/do-the-thao-full-set_836ffd007cb24a7f9366c34c55d8453e_grande.jpeg', 'Đây là mẫu thời trang thể thao theo dạng full set đồ thể thao bao gồm cả áo lẫn quần dài. Hailey Bieber là ngôi sao rất thường xuyên lăn xê mẫu thời trang full set như thế này. Sức hút của set đồ thể thao này nằm ở sự đơn giản, dễ mặc và có thể vừa mặc để chơi thể thao, vừa mặc để đi chơi, đi dạo phố cực kỳ tiện lợi.\n\nKết hợp cùng với set trang phục này đó chính là đôi giày thể thao sáng màu nhằm mang lại cho bạn một phong cách tươi sáng, ấn tượng và cá tính để bạn luôn tự tin xuất hiện mọi lúc mọi nơi.\nTrắng là tông màu hợp với da ngăm\nNếu hỏi da ngăm nên mặc màu gì thì màu trắng sẽ là câu trả lời đầu tiên mà Shopee dành cho bạn. Đây là một trong những màu dễ phối nhất và cực kì hợp rơ với làn da ngăm đen. Màu trắng giúp tăng độ tương phản để làm nổi bật nước da nâu khỏe đẹp. Bên cạnh đó bạn có thể dễ dàng phối màu trắng với bất kỳ tông màu nào khác.\n', '1', '2022-12-26 04:32:48'),
(3, '4 mẫu áo bán chạy nhất tháng 12 năm 2022 và xu hướng trong năm 2023', 'https://file.hstatic.net/1000283722/article/bst-sport-uitility-wear_60fa69d88638459f9124c77932f7e2f0.jpg', 'Bộ môn tennis có lẽ không còn xa lạ gì với mỗi chúng ta nữa, ngoài sự thanh lịch mà môn thể thao này mang lại thì phong cách thể thao tennis cũng rất thu hút được giới trẻ hiện nay, đặc biệt là các bạn nữ. Điểm nhấn của set đồ thể thao tennis này đó chính là chiếc chân váy xòe đặc trưng như những vận động viên tennis thường mặc để ra sân thi đấu. Với những chiếc váy này, bạn có thể mặc kèm với nhiều kiểu áo khác nhau, trong đó có thể bao gồm áo crop top, áo tennis bra, hoặc là có thể mặc kèm những kiểu áo thun trơn cũng không kém phần năng động và thời trang. Và tất nhiên không thể thiếu được những đôi sneaker để hoàn thiện cho set đồ của mình bạn nhé.Để chọn được một chiếc ví có màu sắc phù hợp để đem lại tài lộc và may mắn,  trước tiên bạn phải biết năm sinh của mình thuộc mệnh nào. Những người thuộc mệnh Mộc có năm sinh sau đây: 1929, 1942, 1943, 1950, 1951, 1958, 1959, 1972, 1973, 1980, 1981, 1988, 1989, 2002,…\n\nMệnh Mộc dùng ví màu gì hợp và kỵ ví màu gì?\nTheo phong thủy mệnh Mộc 2023, màu thuộc hành Mộc sẽ tương sinh, còn màu thuộc hành Thủy sẽ tương hợp. Từ đó mối quan hệ tương sinh giữa Thủy và Mộc chính là yếu tố ảnh hưởng đến mệnh Mộc dùng ví màu gì. Cụ thể là các màu sau:\n\nMàu thuộc hành Thủy: Màu đen, xanh dương.\nMàu thuộc hành Mộc: Xanh lá cây.\nBên cạnh đó, người thuộc mệnh Mộc kỵ với mệnh Thổ và mệnh Kim. Chính vì thế, ví có màu thuộc hai mệnh này thì không hợp mệnh Mộc: vàng sậm, nâu đất, bạc, vàng.', '1', '2022-12-26 05:32:01'),
(4, 'Xu hướng thời trang đang được giới trẻ ưa chuộng hiện nay', 'https://file.hstatic.net/1000283722/article/ziphaus-jf--5oturvc-unsplash_9a548772a8164241bb40a2f8dcc008ce.jpg', 'Có nhiều người cho rằng khi nhắc đến thời trang thể thao là nói đến những mẫu quần áo đơn giản, thoáng mát dành riêng cho những người tập thể thao. Thế nhưng thời trang luôn mang đến cho chúng ta những điều bất ngờ. Ngay cả những item mà bạn nghĩ rằng chỉ dành cho những người chơi thể thao cũng có thể kết hợp lại trở thành một những bộ quần áo ấn tượng.\n\nCuộc sống ngày càng đa dạng, năng động và linh hoạt hơn, buộc thời trang cũng phải thay đổi nhiều để đáp ứng thị hiếu nhu cầu của giới trẻ nói riêng và các khách hàng ở mọi lứa tuổi khác nói chung.\n\nTrong bài viết này, chúng tôi đã nghiên cứu và tập hợp lại những xu hướng thời trang thể thao đang được giới trẻ trong nước và trên toàn thế giới ưa chuộng, hy vọng có thể giúp bạn chọn được cho mình một phong cách ưng ý để tự tin hơn trong cuộc sống bạn nhé!Theo phong thủy mệnh Hoả 2023, Mộc và Hoả có mối quan hệ tương sinh. Màu thuộc hành Hoả sẽ tương sinh, còn màu thuộc hành Mộc sẽ tương hợp. Theo đó, bạn nên trồng cây hoặc hoa có màu thuộc hai mệnh này. Đó có thể là màu hoa, thân, lá,… đều được.\n\nMàu thuộc hành Mộc: xanh lá cây\nMàu thuộc hành Hỏa: đỏ, vàng, cam, hồng,…\nTop 8 cây phong thủy hợp mệnh Hỏa\nCây kim tiền\nCây kim tiền là loài cây phong thủy hợp mệnh Hỏa, tượng trưng cho sự giàu sang, phú quý. Loài cây này được nhiều người ưa chuộng đặt trong nhà, phòng làm việc, trang trí phòng khách, cửa hàng, hành lang lối đi,… Khi cây kim tiền nở hoa sẽ đem lại nhiều may mắn, tài lộc hơn nữa.\nCây hồng môn\nCây hồng môn là loài cây mọc thành bụi, sinh trưởng nhanh trong điều kiện khí hậu mát mẻ, ẩm ướt, không chịu được ánh nắng trực tiếp. Đây là loài cây phong thủy có màu đỏ rất phù hợp với người mệnh Hỏa. \n\nBên cạnh đó, cây hồng môn cũng là một loài hoa rất đẹp, sang trọng, màu sắc và hình dáng đa dạng, tượng trưng cho sự thanh cao, trong sạch. Hoa hồng môn có màu đỏ, nhụy vàng nhìn rất độc đáo và phù hợp với mệnh Hỏa 2023.\n\nCây kim ngân\nMệnh Hỏa hợp cây gì 2023? Đáp án là cây kim ngân với lá màu xanh đậm, xòe rộng như hình bàn tay. Đây là loài cây phong thủy đem đến tiền tài cho gia chủ đồng thời giúp họ giữ chặt tài sản. Do đó, người mệnh Hỏa trồng cây này làm cảnh, trang trí trong nhà rất phù hợp vì sẽ đem lại nhiều tài lộc, may mắn.\n\nCây bạch mã hoàng tử\nMột trong những cây hợp mệnh Hỏa 2023 chính là cây bạch mã hoàng tử. Hướng cây thẳng đứng mang ý nghĩa cho sự tiến tới, vươn lên và gặp nhiều thuận lợi trong công việc, cuộc sống. Đồng thời, tên gọi là bạch mã có ý nghĩa là sự tiến nhanh, thuận buồm xuôi gió và hanh thông trong mọi việc.', '1', '2022-12-26 05:32:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reply_id` int(11) DEFAULT 0,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `blog_id`, `customer_id`, `content`, `reply_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 27, 'Mình muốn mua áo thì làm như thế nào ạ?', 0, 0, '2022-12-27 13:40:27', '2022-12-27 13:40:27'),
(2, 4, 18, 'Mình thấy bài viết này cũng hay nha. Đúng bài viết mình đang tìm!', 0, 0, '2022-12-27 13:41:12', '2022-12-27 13:41:12'),
(3, 4, 20, 'Mình cũng thế ^^', 2, 0, '2022-12-27 13:41:57', '2022-12-27 13:41:57'),
(4, 4, 20, 'Mình mới mua hàng thử thì thấy có thanh toán online và các bước thanh toán rất dễ dàng ạ ^^', 1, 0, '2022-12-27 13:42:27', '2022-12-27 13:42:27'),
(5, 4, 20, 'Cảm ơn shop đã đem đến sản phẩm chuẩn chất lượng cho khách hàng ạ :>', 0, 0, '2022-12-27 13:43:12', '2022-12-27 13:43:12'),
(6, 3, 20, 'Quá ngầu ạ! Lúc nào giàu mình mua hết shop luôn :v', 0, 0, '2022-12-27 13:43:48', '2022-12-27 13:43:48'),
(7, 2, 20, 'Chúc mọi người năm mới an lành! <3', 0, 0, '2022-12-27 13:44:38', '2022-12-27 13:44:38'),
(8, 2, 20, 'Gửi thêm mấy trái tim nữa nèee <3 <3 <3', 7, 0, '2022-12-27 13:44:56', '2022-12-27 13:44:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `type`, `number`, `menu_id`, `product_id`, `active`, `start_date`, `end_date`, `status`) VALUES
(1, 'Deal sale mùa đông', 'Giảm theo tiền', 100000, 3, NULL, 1, '2022-12-07 00:00:00', '2022-12-08 23:59:59', 'Đã hết hạn'),
(2, 'Deal sale mùa đông', 'Giảm theo %', 10, 4, NULL, 0, '2022-12-08 00:00:00', '2022-12-29 00:00:00', 'Còn hạn'),
(3, 'Khuyến mãi noel', 'Giảm theo %', 10, 3, NULL, 1, '2022-12-25 00:00:00', '2022-12-30 00:00:00', 'Đã hết hạn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `spend` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `address`, `content`, `spend`, `created_at`, `updated_at`) VALUES
(1, 'Bùi Đức Duy', 'DDuy@gmail.com', 'password', '0924571581', '78 Nguyễn Trãi', 'khong', 2435500, '2022-11-19 09:50:41', '2022-12-27 07:22:07'),
(2, 'Nguyễn Duy', 'NDuy@gmail.com', 'password', '0924571571', '23 Đoàn Văn Cự', NULL, 500000, '2022-11-19 09:51:29', NULL),
(3, 'Hồ Bảo An', 'BAn@gmail.com', 'password', '0284571587', '45 Nguyễn Tri Phương', NULL, 2000000, '2022-11-19 09:51:53', NULL),
(4, 'Bùi Duy Thiện', 'DThien@gmail.com', 'password', '0924571577', '45 Nguyễn Thị Minh Khai', NULL, 3000000, '2022-11-19 09:52:09', NULL),
(5, 'Phạm Trọng Phúc', 'Phuc@gmail.com', 'password', '0906284014', '34/12A Nguyễn Thị Minh Khai', NULL, 1500000, '2022-11-19 09:52:31', NULL),
(6, 'Nguyễn Đông Nghi', 'Nghi@gmail.com', 'password', '0924571577', '245 Nguyễn Văn Trỗi', NULL, 900000, '2022-11-19 09:52:55', NULL),
(7, 'Nguyễn Văn Hoàng', 'hoang@gmail.com', 'password', '0924571555', '45 Lý Thái Tổ', NULL, 4000000, '2022-11-19 09:53:36', NULL),
(8, 'Nguyễn Văn Hiếu', 'hieu@gmail.com', 'password', '0358647854', '34 Nguyễn Khuyến', NULL, 1100000, '2022-11-19 09:53:36', NULL),
(9, 'Đào Văn Nam', 'nam@gmail.com', 'password', '0924571577', '23A Nguyễn Huệ', NULL, 1200000, '2022-11-19 09:55:20', NULL),
(10, 'Trần Tuấn Anh', 'tanh@gmail.com', 'password', '0924571587', '56/2 Đồng Khởi', NULL, 13000000, '2022-11-19 09:55:20', NULL),
(11, 'Thanh Huyền', 'huyen@gmail.com', 'password', '0912732193', '46 Căn', 'khong', 1075000, '2022-12-13 20:59:14', '2022-12-13 20:59:14'),
(17, 'Trần Tiến', 'tien@gmail.com', 'password', '0912732193', '46 Căn', 'khong', 3175000, '2022-12-14 02:08:41', '2022-12-14 02:08:41'),
(18, 'huy', 'ruakeu2002bee@gmail.com', 'password', '0987654565', '46 Căn', 'khong', 4863500, '2022-12-19 08:51:13', '2022-12-26 09:00:40'),
(19, 'Đức', 'ruakeu2002bee@gmail.com', '', '0984781192', 'ktx khu A', 'khong', 2898000, '2022-12-19 09:10:03', '2022-12-19 09:10:03'),
(20, 'Thảo Hồng', 'hong@gmail.com', 'password', '0987648237', 'ktx Khu A ĐHQG', 'khong', 1050000, '2022-12-21 08:01:41', '2022-12-22 09:55:27'),
(25, 'Văn Quyết', 'quyet@gmail.com', 'password', '0937482632', 'dt743, tan vinh hiep', 'khong', 2500000, '2022-12-22 09:18:06', '2022-12-22 09:34:25'),
(26, 'Ngọc Như', 'nhu@gmail.com', 'password', '0964095659', 'DT743, Tan Vinh Hiep', 'Đứng trước ngõ', 3495000, '2022-12-22 21:01:07', '2022-12-26 20:07:58'),
(27, 'Thai Tang Duc', 'thaitangduc16102002@gmail.com', '123456', '0375095226', 'Kí túc xá khu A', 'a', 3190200, '2022-12-27 08:19:19', '2022-12-27 13:47:39'),
(28, 'Anh', 'thaitangduc1@gmail.com', '123456', '03030303', 'Kí túc xá khu B', NULL, 5490000, '2022-12-27 13:48:44', '2023-03-07 03:34:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `c_t_h_d_s`
--

CREATE TABLE `c_t_h_d_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `c_t_h_d_s`
--

INSERT INTO `c_t_h_d_s` (`id`, `product_id`, `amount`, `unit_price`) VALUES
(300001, 200001, 2, 168000),
(300001, 200002, 1, 225000),
(300002, 200002, 1, 225000),
(300002, 200003, 2, 225000),
(300003, 200002, 1, 225000),
(300003, 200003, 1, 225000),
(300003, 200004, 1, 225000),
(300004, 200005, 2, 195000),
(300004, 200006, 1, 195000),
(300005, 200006, 2, 195000),
(300005, 200007, 1, 300000),
(300006, 200007, 3, 300000),
(300007, 200007, 2, 300000),
(300007, 200008, 2, 794000),
(300008, 200008, 4, 794000),
(300009, 200008, 2, 794000),
(300009, 200009, 2, 1595000),
(300010, 200010, 5, 2250000),
(300022, 200003, 1, 225000),
(300022, 200004, 2, 225000),
(300022, 200012, 1, 2500000),
(300023, 200017, 2, 200000),
(300024, 200012, 1, 2500000),
(300024, 200015, 2, 99000),
(300024, 200016, 1, 200000),
(300025, 200012, 1, 2500000),
(300026, 200008, 1, 794000),
(300027, 200016, 1, 200000),
(300028, 200004, 1, 225000),
(300028, 200005, 1, 195000),
(300028, 200009, 1, 1595000),
(300028, 200016, 1, 200000),
(300029, 200016, 1, 200000),
(300030, 200012, 1, 2500000),
(300031, 200011, 1, 995000),
(300031, 200012, 1, 2500000),
(300032, 200009, 1, 1595000),
(300033, 200001, 3, 168000),
(300034, 200017, 10, 200000),
(300035, 200015, 4, 99000),
(300036, 200099, 2, 200000),
(300037, 200098, 1, 200000),
(300038, 200099, 1, 200000),
(300039, 200098, 1, 200000),
(300040, 200097, 1, 99000),
(300041, 200097, 1, 99000),
(300042, 200098, 1, 200000),
(300043, 200098, 1, 200000),
(300044, 200100, 1, 500000),
(300045, 200100, 1, 500000),
(300046, 200093, 1, 995000),
(300047, 200059, 1, 803000),
(300048, 200097, 1, 99000),
(300049, 200011, 1, 995000),
(300049, 200017, 2, 200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'dc182493-8038-4c4b-9538-289e6ba1d320', 'database', 'default', '{\"uuid\":\"dc182493-8038-4c4b-9538-289e6ba1d320\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:29:\\\"thaitangduc16102002@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2022-12-27 15:49:56.959900\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendMail has been attempted too many times or run too long. The job may have previously timed out. in /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/Worker.php:746\nStack trace:\n#0 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(214): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/symfony/mailer/Transport/Smtp/Stream/AbstractStream.php(77): Illuminate\\Queue\\Worker->Illuminate\\Queue\\{closure}(14, Array)\n#2 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(345): Symfony\\Component\\Mailer\\Transport\\Smtp\\Stream\\AbstractStream->readLine()\n#3 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(275): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->getFullResponse()\n#4 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(213): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->start()\n#5 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/symfony/mailer/Transport/AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend(Object(Symfony\\Component\\Mailer\\SentMessage))\n#6 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(137): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#7 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(521): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send(Object(Symfony\\Component\\Mime\\Email), Object(Symfony\\Component\\Mailer\\DelayedEnvelope))\n#8 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(285): Illuminate\\Mail\\Mailer->sendSymfonyMessage(Object(Symfony\\Component\\Mime\\Email))\n#9 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(203): Illuminate\\Mail\\Mailer->send(\'mail.success\', Array, Object(Closure))\n#10 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#11 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(196): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#12 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(307): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#13 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\OrderShipped))\n#14 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\OrderShipped))\n#15 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/app/Jobs/SendMail.php(37): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\OrderShipped))\n#16 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#17 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#18 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#19 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#20 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#21 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#22 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#23 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#24 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#25 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#26 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#27 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#28 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#30 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#31 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#32 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#33 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(145): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#35 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(129): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#36 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#37 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#38 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#39 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#40 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Container/Container.php(651): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#41 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call(Array)\n#42 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Console/Command.php(151): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#44 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/symfony/console/Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/symfony/console/Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 /Applications/XAMPP/xamppfiles/htdocs/IS207_PhatTrienUngDungWeb_PROJECT/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 {main}', '2022-12-27 08:51:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(17, 'default', '{\"uuid\":\"58fe905b-147f-4353-8fe3-c84df4818d6e\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":2:{s:8:\\\"\\u0000*\\u0000email\\\";s:22:\\\"thaitangduc1@gmail.com\\\";s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-03-07 10:34:29.059279\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}}\"}}', 0, NULL, 1678185269, 1678185267);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `active`, `created_at`, `updated_at`, `image`) VALUES
(1, 'Nam', 0, '<p>C&aacute;c sản phẩm d&agrave;nh cho nam</p>', 1, '2022-11-19 01:28:26', '2022-11-19 01:28:26', '/template/images/banner-02.jpg'),
(2, 'Nữ', 0, '<p>C&aacute;c sản phẩm d&agrave;nh cho nữ</p>', 1, '2022-11-19 01:29:43', '2022-11-19 01:29:43', '/template/images/banner-01.jpg'),
(3, 'Áo nam', 1, '<p>Gồm c&aacute;c &aacute;o thể thao d&agrave;nh cho nam</p>', 1, '2022-11-19 01:30:03', '2022-11-19 01:30:03', NULL),
(4, 'Quần nam', 1, '<p>Gồm c&aacute;c quần thể thao d&agrave;nh cho nam</p>', 1, '2022-11-19 01:30:16', '2022-11-19 01:30:16', NULL),
(5, 'Giày nam', 1, '<p>Gồm c&aacute;c gi&agrave;y thể thao d&agrave;nh cho nam</p>', 1, '2022-11-19 01:30:33', '2022-11-19 01:30:33', NULL),
(6, 'Áo nữ', 2, '<p>Gồm c&aacute;c &aacute;o thể thao d&agrave;nh cho nữ</p>', 1, '2022-11-19 01:30:49', '2022-11-19 01:30:49', NULL),
(7, 'Quần nữ', 2, '<p>Gồm c&aacute;c quần thể thao d&agrave;nh cho nữ</p>', 1, '2022-11-19 01:31:00', '2022-11-19 01:31:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_22_145838_create_banners_table', 1),
(6, '2022_11_22_150046_create_bill_khachhangs_table', 1),
(7, '2022_11_22_150127_create_bill_vanglais_table', 1),
(8, '2022_11_22_150238_create_c_t_h_d_s_table', 1),
(9, '2022_11_22_150304_create_customers_table', 1),
(10, '2022_11_22_150327_create_menus_table', 1),
(11, '2022_11_22_150352_create_products_table', 1),
(12, '2022_12_07_142008_create_coupons_table', 2),
(13, '2022_12_11_074942_create_carts_table', 3),
(14, '2022_12_11_200005_create_failed_jobs_table', 3),
(15, '2022_12_19_121333_create_jobs_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `menu_id` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `original_price`, `price_sale`, `active`, `image`, `created_at`, `updated_at`) VALUES
(200001, 'Áo thun chạy bộ RUN DRY - Cho Nam - Xanh PETROL', 'Áo thun chạy bộ thoáng mát', '<p>&Aacute;o thun chạy bộ tho&aacute;ng m&aacute;t, mau kh&ocirc; d&agrave;nh cho người chạy bộ thường xuy&ecirc;n trong thời tiết n&oacute;ng (2 -3 lần/ tuần, cự ly tối đa 15km)Sản phẩm được sản xuất từ hạt vật liệu t&aacute;i chế, th&acirc;n thiện với m&ocirc;i trường.</p>', 3, 138000, 168000, 1, '/template/images/product-collection1', '2022-11-18 17:00:00', '2022-12-26 20:01:53'),
(200002, 'Áo thun chạy bộ RUN DRY - Cho Nam - Xanh dương', 'Mềm mại và thoáng khí vô cùng', 'Mềm mại và thoáng khí vô cùng, bạn sẽ không có cảm giác đang mặc áo thun này khi chạy bộ.Áo thun cực kỳ thoải mái, đến nỗi bạn sẽ thấy ngay rằng không thể đi chạy bộ mà thiếu nó.', 3, 195000, 225000, 1, '/template/images/product-collection2', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200003, 'Áo thun chạy bộ RUN DRY - Cho Nam - Xanh dương đậm', 'Mềm mại và thoáng khí vô cùng', 'Mềm mại và thoáng khí vô cùng, bạn sẽ không có cảm giác đang mặc áo thun này khi chạy bộ.Áo thun cực kỳ thoải mái, đến nỗi bạn sẽ thấy ngay rằng không thể đi chạy bộ mà thiếu nó.', 3, 195000, 225000, 1, '/template/images/product-collection3', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200004, 'Áo thun chạy bộ RUN DRY - Cho Nam - Màu be có vân', 'Mềm mại và thoáng khí vô cùng', 'Mềm mại và thoáng khí vô cùng, bạn sẽ không có cảm giác đang mặc áo thun này khi chạy bộ.Áo thun cực kỳ thoải mái, đến nỗi bạn sẽ thấy ngay rằng không thể đi chạy bộ mà thiếu nó.', 3, 195000, 225000, 1, '/template/images/product-collection4', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200005, 'Áo thun chạy bộ RUN DRY - Cho Nam - Kaki sẫm', 'Mềm mại và thoáng khí vô cùng', 'Mềm mại và thoáng khí vô cùng, bạn sẽ không có cảm giác đang mặc áo thun này khi chạy bộ.Áo thun cực kỳ thoải mái, đến nỗi bạn sẽ thấy ngay rằng không thể đi chạy bộ mà thiếu nó.', 3, 145000, 195000, 1, '/template/images/product-collection5', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200006, 'Áo thun chạy bộ RUN DRY - Cho Nam - Cam', 'Mềm mại và thoáng khí vô cùng', 'Mềm mại và thoáng khí vô cùng, bạn sẽ không có cảm giác đang mặc áo thun này khi chạy bộ.Áo thun cực kỳ thoải mái, đến nỗi bạn sẽ thấy ngay rằng không thể đi chạy bộ mà thiếu nó.', 3, 159000, 195000, 1, '/template/images/product-collection6', '2022-11-18 17:00:00', '2022-11-19 17:00:00'),
(200007, 'Giày chạy bộ Run One cho Nam - Xám', 'Giày này có đế xốp bằng EVA', 'Giày này có đế xốp bằng EVA nên thoải mái và có trọng lượng nhẹ cho người mới bắt đầu chạy bộ.', 5, 275000, 300000, 1, '/template/images/product-collection7', '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(200008, 'Giày chạy bộ Run Active Grip cho nam - Xám/Đen', 'Hỗ trợ và tạo độ bám', '<p>H&ocirc;̃ trợ và tạo đ&ocirc;̣ bám khi chạy b&ocirc;̣ ngoài trời.H&ocirc;̃ trợ và tạo đ&ocirc;̣ bám là hai y&ecirc;́u t&ocirc;́ giúp bạn t&acirc;̣p luy&ecirc;̣n t&ocirc;́t nh&acirc;́t khi chạy b&ocirc;̣ ngoài trời.</p>', 5, 795000, 794000, 1, '/template/images/product-collection8', '2022-11-17 17:00:00', '2022-12-26 01:30:44'),
(200009, 'GIÀY CHẠY BỘ KIPRUN LONG 2 CHO NAM - XANH DƯƠNG', 'Giày chạy bộ cho nam này với khả năng giảm chấn', 'Chúng tôi đã thiết kế giày chạy bộ cho nam này với khả năng giảm chấn và ổn định cho những đường tập và đường đua cho tới đường chạy marathon. Nhờ khả năng giảm chấn và độ ổn định, KIPRUN LONG 2 là sản phẩm lý tưởng để luyện tập và chạy bộ. Giày giúp bạn hoàn toàn yên tâm để hoàn thành nhiều dặm đường và về tới đích.\r\n\r\n', 5, 1199000, 1595000, 1, '/template/images/product-collection9', '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(200010, 'Giày chạy bộ Kiprun KD 800 cho nam - Trắng/Đỏ/Xanh dương', 'Giày chạy bộ siêu nhẹ', 'Giày chạy bộ siêu nhẹ, nhanh và bền này được thiết kế cho nam chạy bộ ngoài trời và thi đấu. Bạn muốn tìm loại giày nhẹ và có lực đẩy? Nhờ thành phần nhẹ, giày chạy bộ này có trọng lượng nhẹ và lực đẩy tốt để dùng khi tập luyện và thi đấu.', 5, 1995000, 2250000, 1, '/template/images/product-collection10', '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(200011, 'GIÀY CHẠY BỘ RUN SUPPORT CHO NAM - TRẮNG', 'giày chạy bộ này để đảm bảo giảm chấn, và nâng đỡ chân', '<p>Ch&uacute;ng t&ocirc;i đ&atilde; thiết kế gi&agrave;y chạy bộ n&agrave;y để đảm bảo giảm chấn, v&agrave; n&acirc;ng đỡ ch&acirc;n khi chạy bộ (mỗi tuần 3 lần, l&ecirc;n tới 1 tiếng).Bạn thường xuy&ecirc;n chạy bộ v&agrave; t&igrave;m kiếm đ&ocirc;i gi&agrave;y chạy giảm chấn v&agrave; n&acirc;ng đỡ ch&acirc;n tốt? Chọn gi&agrave;y RUN SUPPORT để đảm bảo lu&ocirc;n thoải m&aacute;i khi chạy bộ!</p>', 5, 895000, 995000, 1, '/template/images/product-collection11', '2022-11-17 17:00:00', '2022-12-26 20:11:38'),
(200012, 'Giày chạy bộ Kiprun KS900 cho nam - Đen/Cam', 'Giày chạy bộ ổn định và thoải mái', 'Giày chạy bộ ổn định và thoải mái có khả năng giảm chấn tốt được thiết kế cho nam sử dụng trên đường tập, đường đua cho tới đường chạy marathon. Nếu độ giảm chấn, sự thoải mái và ổn định là ưu tiên hàng đầu khi bạn chọn giày chạy bộ để có thể chạy hết quãng đường thì KS900 là giải pháp lý tưởng dành cho bạn! Hãy thử ngay!', 5, 2095000, 2500000, 1, '/template/images/product-collection12', '2022-11-17 17:00:00', '2022-11-19 17:00:00'),
(200013, 'Quần short chạy bộ Run Dry cho nam - Đen', 'Quần short chạy bộ nhẹ', 'Quần short chạy bộ nhẹ, mau khô phù hợp với người bắt đầu chạy bộ (1-2 lần/tuần, cự ly tối đa 10km)Sản phẩm được thiết kế có quần lót tam giác may trong, hỗ trợ tốt cho người chạy mà không cần quần lót. Sản phẩm có túi đựng chìa khóa bên trong thắt lưng.\r\n\r\n', 4, 125000, 200000, 1, '/template/images/product-collection13', '2022-11-16 17:00:00', '2022-11-19 17:00:00'),
(200014, 'Quần short chạy bộ Run Dry cho nam - Xám', 'Quần short nhẹ', 'Quần short nhẹ, thoáng mát phù hợp cho người mới bắt đầu chạy bộ, trong thời tiết nóng bức. (1-2 lần/tuần, cự ly tối đa 10km)Quần short nhẹ, thoáng mát với giá tốt nhất! Sản phẩm được thiết kế có quần lót tam giác may trong, hỗ trợ tốt cho người chạy mà không cần quần lót. Sản phẩm có túi đựng chìa khóa bên trong thắt lưng.', 4, 79000, 99000, 1, '/template/images/product-collection14', '2022-11-16 17:00:00', '2022-11-19 17:00:00'),
(200015, 'Quần short chạy bộ Run Dry cho nam - Xanh Petrol', 'Quần short nhẹ', 'Quần short nhẹ, thoáng mát phù hợp cho người mới bắt đầu chạy bộ, trong thời tiết nóng bức. (1-2 lần/tuần, cự ly tối đa 10km)Quần short nhẹ, thoáng mát với giá tốt nhất! Sản phẩm được thiết kế có quần lót tam giác may trong, hỗ trợ tốt cho người chạy mà không cần quần lót. Sản phẩm có túi đựng chìa khóa bên trong thắt lưng.\r\n', 4, 89000, 99000, 1, '/template/images/product-collection15', '2022-11-16 17:00:00', '2022-11-19 17:00:00'),
(200016, 'Quần short chạy bộ thoáng khí KALENJI RUN DRY cho nam - Xám', 'Quần short chạy bộ nhẹ và thoáng khí', 'Quần short chạy bộ nhẹ và thoáng khí, phù hợp để chạy bộ trong thời tiết ấm áp. Quần short nhẹ, thoáng khí giúp mồ hôi khô nhanh. Có sẵn quần lót trong, có thể mặc kèm quần lót riêng hoặc không. Có túi nhỏ để cất chìa khóa.', 4, 125000, 200000, 1, '/template/images/product-collection16', '2022-11-16 17:00:00', '2022-11-19 17:00:00'),
(200017, 'Quần short chạy bộ thoáng khí KALENJI RUN DRY cho nam - Xám navy', 'Quần short chạy bộ nhẹ và thoáng khí', 'Quần short chạy bộ nhẹ và thoáng khí, phù hợp để chạy bộ trong thời tiết ấm áp. Quần short nhẹ, thoáng khí giúp mồ hôi khô nhanh. Có sẵn quần lót trong, có thể mặc kèm quần lót riêng hoặc không. Có túi nhỏ để cất chìa khóa.', 4, 125000, 200000, 1, '/template/images/product-collection17', '2022-11-16 17:00:00', '2022-11-19 17:00:00'),
(200018, 'Quần short chạy bộ Kiprun Light cho nam - Đen', 'Quần short chạy bộ Kiprun Light', '<p>Quần short chạy bộ Kiprun Light c&oacute; trọng lượng nhẹ, ph&ugrave; hợp để chạy bộ trong thời ti&ecirc;́t nóng. Bạn đang t&igrave;m quần short chạy bộ nhẹ? Quần short chạy bộ Kiprun Light cho nam kh&ocirc;ng chỉ nhẹ m&agrave; c&ograve;n được thiết kế &iacute;t đường may nhất c&oacute; thể để mang lại sự thoải m&aacute;i tối đa.</p>', 4, 445000, 500000, 1, '/template/images/product-collection18', '2022-11-16 17:00:00', '2022-11-22 08:54:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần Anh Huy', 'ruakeu2002bee@gmail.com', NULL, '$2y$10$tCexWzF8upTj6syLz6ID.esB.MHVaXT.A7wPtgQrdOypRqxdNvc4a', NULL, '2022-11-19 01:26:11', '2022-11-19 01:26:11'),
(2, 'Nguyễn Thị Mỹ Trân', 'admin2@gmail.com', NULL, '$2y$10$BKQnH6NLtJPXoRfuVvAuQ.ZvaaE0TIEteneDGVr7FhjKieN41zlVe', '6SulIMM8xH8h8QdvSgoiCJc20aIjcKgMbjTZhG2eFELwQLhasDQczl1OTzZV', '2022-11-19 01:26:26', '2022-11-19 01:26:26'),
(3, 'Tôn Nữ Tố Quyên', 'admin3@gmail.com', NULL, '$2y$10$4ggDGjUkPqNi24VbCYHTHO54jb8qI7d3.gOL.cJXxHkiaHAbC3W5O', NULL, '2022-11-19 01:26:40', '2022-11-19 01:26:40'),
(4, 'Thái Tăng Đức', 'admin4@gmail.com', NULL, '$2y$10$4LocJv26hTA4e05523pWhOl0wMQeFYwCs4IkEeeq0rzqud46TIh3a', NULL, '2022-11-19 01:26:55', '2022-11-19 01:26:55');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_khachhangs`
--
ALTER TABLE `bill_khachhangs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_vanglais`
--
ALTER TABLE `bill_vanglais`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_CusCom` (`customer_id`),
  ADD KEY `FK_BlogCom` (`blog_id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `c_t_h_d_s`
--
ALTER TABLE `c_t_h_d_s`
  ADD PRIMARY KEY (`id`,`product_id`),
  ADD KEY `fk_chtd_pro_id` (`product_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `bill_khachhangs`
--
ALTER TABLE `bill_khachhangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300050;

--
-- AUTO_INCREMENT cho bảng `bill_vanglais`
--
ALTER TABLE `bill_vanglais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700011;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200021;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_BlogCom` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`),
  ADD CONSTRAINT `FK_CusCom` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Các ràng buộc cho bảng `c_t_h_d_s`
--
ALTER TABLE `c_t_h_d_s`
  ADD CONSTRAINT `fk_cthd_id` FOREIGN KEY (`id`) REFERENCES `bill_khachhangs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
