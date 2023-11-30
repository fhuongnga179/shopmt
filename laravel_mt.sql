-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th10 30, 2023 lúc 09:46 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_mt`
--

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
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(2, 'Sản phẩm thân thiện', 0, 'Giải pháp hiệu quả cho việc tái chế với thùng rác đa ngăn và bình phân loại rác, giúp tối ưu hóa quy trình xử lý rác thải.', '<ul>\r\n	<li>Th&ugrave;ng r&aacute;c t&aacute;i chế.</li>\r\n	<li>B&igrave;nh ph&acirc;n loại r&aacute;c.</li>\r\n	<li>Dụng cụ n&acirc;ng cao quy tr&igrave;nh t&aacute;i chế.</li>\r\n</ul>', NULL, 1, '2023-11-29 23:34:20', '2023-11-29 23:34:20'),
(3, 'Thiết bị tiết kiệm năng lượng', 0, 'Sự kết hợp của đèn LED tiết kiệm năng lượng, ổ cắm thông minh và thiết bị điều khiển nhiệt độ, tạo nên không gian số thông minh và tiết kiệm nguồn lực.', '<ul>\r\n	<li>Đ&egrave;n LED tiết kiệm năng lượng.</li>\r\n	<li>Ổ cắm th&ocirc;ng minh.</li>\r\n	<li>Thiết bị điều khiển nhiệt độ th&ocirc;ng minh.</li>\r\n</ul>', NULL, 1, '2023-11-29 23:35:23', '2023-11-29 23:35:23'),
(7, 'Máy Lọc Không Khí', 0, 'Máy lọc không khí giúp làm sạch không gian sống hiệu quả, đảm bảo an toàn sức khỏe người dùng.', '<p>M&aacute;y lọc kh&ocirc;ng kh&iacute; l&agrave; một thiết bị được thiết kế để loại bỏ c&aacute;c tạp chất g&acirc;y hại khỏi kh&ocirc;ng kh&iacute;, gi&uacute;p cải thiện chất lượng kh&ocirc;ng kh&iacute; trong m&ocirc;i trường sống hoặc l&agrave;m việc. C&oacute; nhiều loại m&aacute;y lọc kh&ocirc;ng kh&iacute; tr&ecirc;n thị trường, nhưng ch&uacute;ng thường c&oacute; c&aacute;c t&iacute;nh năng chung như:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Lọc c&aacute;c hạt bụi v&agrave; phấn tr&ecirc;n kh&ocirc;ng kh&iacute;:</strong> M&aacute;y lọc n&agrave;y thường sử dụng bộ lọc HEPA để giữ lại c&aacute;c hạt nhỏ như bụi, phấn, vi khuẩn, v&agrave; c&aacute;c tạp chất kh&aacute;c.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Lọc kh&iacute; &ocirc; nhiễm:</strong> Một số m&aacute;y lọc kh&ocirc;ng kh&iacute; c&oacute; thể loại bỏ c&aacute;c chất &ocirc; nhiễm như kh&iacute; độc hại, kh&iacute; g&acirc;y m&ugrave;i kh&oacute; chịu, hay c&aacute;c chất g&acirc;y dị ứng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>K&iacute;ch thước v&agrave; diện t&iacute;ch phủ lớn:</strong> M&aacute;y lọc kh&ocirc;ng kh&iacute; thường được thiết kế với k&iacute;ch thước v&agrave; diện t&iacute;ch phủ rộng, đảm bảo c&oacute; thể xử l&yacute; lượng kh&ocirc;ng kh&iacute; lớn trong một kh&ocirc;ng gian cụ thể.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chế độ hoạt động đa dạng:</strong> Nhiều m&aacute;y lọc kh&ocirc;ng kh&iacute; c&oacute; c&aacute;c chế độ hoạt động kh&aacute;c nhau như chế độ tối, chế độ tự động, hay chế độ ngủ để tiết kiệm năng lượng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hiển thị chất lượng kh&ocirc;ng kh&iacute;:</strong> Một số m&aacute;y c&oacute; m&agrave;n h&igrave;nh hiển thị chất lượng kh&ocirc;ng kh&iacute; hiện tại, gi&uacute;p người d&ugrave;ng theo d&otilde;i v&agrave; kiểm so&aacute;t mức độ sạch của kh&ocirc;ng kh&iacute; xung quanh.</p>\r\n	</li>\r\n</ol>', NULL, 1, '2023-11-30 00:38:52', '2023-11-30 00:38:52'),
(8, 'Máy Lọc Nước', 0, 'Lọc nước', '<p>Lọc</p>', NULL, 1, '2023-11-30 00:56:22', '2023-11-30 00:56:22'),
(9, 'Thiết bị xử lý nước thải sinh hoạt', 0, '', '<p>Nước thải sinh hoạt thường chứa nhiều tạp chất, th&agrave;nh phần chủ yếu l&agrave; chất hữu cơ, chiếm tr&ecirc;n 52%, chất v&ocirc; cơ khoảng 48% v&agrave; một số lượng lớn c&aacute;c vi sinh vật g&acirc;y bệnh như virus v&agrave; vi khuẩn (tả, lỵ, thương h&agrave;n...). Trong nước thải sinh hoạt cũng c&oacute; một phần c&aacute;c vi khuẩn kh&ocirc;ng c&oacute; hại, gi&uacute;p ph&acirc;n hủy chất thải.</p>', NULL, 1, '2023-11-30 01:10:43', '2023-11-30 01:18:41');

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
(5, '2021_05_26_121348_create_menus_table', 1),
(6, '2021_05_29_085033_create_products_table', 1),
(7, '2021_05_29_085458_update_table_product', 1),
(8, '2021_05_30_091352_create_sliders_table', 1),
(9, '2021_06_07_115343_create_customers_table', 1),
(10, '2021_06_07_115353_create_carts_table', 1),
(11, '2021_06_11_035047_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(1, 'Bàn chải tre', 'Bàn chải bằng tre hạn chế số lượng rác nhựa thải ra ngoài môi trường', '<p>Th&acirc;n b&agrave;n chải được l&agrave;m từ chất liệu tre quen thuộc với người Việt, c&oacute; thể d&ugrave;ng để t&aacute;i chế th&agrave;nh ph&acirc;n b&oacute;n hoặc c&oacute; thể đốt đi sau khi sử dụng. Đặc biệt, b&agrave;n chải tre khi đốt sẽ kh&ocirc;ng tạo ra kh&iacute; độc, kh&ocirc;ng g&acirc;y ảnh hưởng đến sức khỏe của con người v&agrave; m&ocirc;i trường. Trong m&ocirc;i trường tự nhi&ecirc;n, th&acirc;n b&agrave;i chải tre sẽ ph&acirc;n hủy trong khoảng v&agrave;i tuần cho đến 10 năm, t&ugrave;y thuộc v&agrave;o điều kiện m&ocirc;i trường</p>', 2, 15000, NULL, 1, '2023-11-29 23:44:15', '2023-11-29 23:45:10', '/storage/uploads/2023/11/30/Ban chai tre.jpg'),
(2, 'Bình nước giữ nhiệt bằng tre', 'Bình nước giữ nhiệt bằng tre thân thiện với môi trường', '<p>Tương tự với ống h&uacute;t, ly nhựa d&ugrave;ng một lần cũng l&agrave; một trong những loại r&aacute;c thải kh&oacute; ph&acirc;n hủy nhất, từ 400 &ndash; 1000 năm. Để cải thiện m&ocirc;i trường, bạn n&ecirc;n sử dụng b&igrave;nh nước c&aacute; nh&acirc;n để đựng nước mỗi khi đi đến qu&agrave; nước, qu&aacute;n c&agrave; ph&ecirc;, thay v&igrave; sử dụng ly nhựa m&agrave; qu&aacute;n cung cấp</p>', 2, 250000, 247000, 1, '2023-11-29 23:47:27', '2023-11-29 23:47:27', '/storage/uploads/2023/11/30/Binh nuoc tre.jpg'),
(3, 'Bông tắm xơ mướp', 'Bông tắm xơ mướp dễ phân hủy, không gây hại cho môi trường', '<p>B&ocirc;ng tắm xơ mướp l&agrave; một m&oacute;n đồ d&ugrave;ng ph&ograve;ng tắm được l&agrave;m từ thực vật ho&agrave;n to&agrave;n, n&ecirc;n khi thải ra ngo&agrave;i m&ocirc;i trường, n&oacute; chỉ mất khoảng v&agrave;i th&aacute;ng để ph&acirc;n hủy ho&agrave;n to&agrave;n. Với sản phẩm n&agrave;y, bạn c&oacute; thể sử dụng để tắm trong khoảng 2 th&aacute;ng. Chất lượng sản phẩm kh&ocirc;ng hề thua k&eacute;m so với những loại b&ocirc;ng bằng nhựa</p>', 2, 25000, NULL, 1, '2023-11-29 23:49:26', '2023-11-29 23:49:26', '/storage/uploads/2023/11/30/Bong tam xo muop.jpg'),
(4, 'Hộp bã mía', 'Hộp bã mía đã được nhiều nhà hàng thực phẩm lựa chọn kinh doanh', '<p>Hộp b&atilde; m&iacute;a c&oacute; khả năng bảo quản thức ăn ngắn hạn, c&oacute; thể l&agrave;m n&oacute;ng trực tiếp trong l&ograve; vi s&oacute;ng hoặc cấp đ&ocirc;ng đến 40 độ C m&agrave; kh&ocirc;ng tạo ra chất độc trong thực phẩm.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, sản phẩm được l&agrave;m từ sợi b&atilde; m&iacute;a tự nhi&ecirc;n 100%, ph&acirc;n hủy sinh học chỉ trong v&agrave;i tuần khi bị thải ra b&ecirc;n ngo&agrave;i. Gi&aacute; th&agrave;nh của sản phẩm c&oacute; thể sẽ cao hơn hộp giấy tr&aacute;ng nhựa, nhưng đ&acirc;y ch&iacute;nh l&agrave; tương lai của xu hướng sống xanh &ndash; l&agrave; khi tất cả ch&uacute;ng ta đều ưu ti&ecirc;n cho những&nbsp;<strong>vật dụng th&acirc;n thiện với m&ocirc;i trường</strong></p>', 2, 125000, 120000, 1, '2023-11-29 23:53:47', '2023-11-29 23:53:47', '/storage/uploads/2023/11/30/Hop ba mia.jpg'),
(5, 'Xà phòng thiên nhiên', 'Xà phòng thiên nhiên vừa tốt cho da, vừa bảo vệ môi trường', '<p>Những loại x&agrave; ph&ograve;ng n&agrave;y được chiết xuất phần lớn từ những dưỡng chất trong tự nhi&ecirc;n. Khi bị thải ra dạng nước, ch&uacute;ng sẽ c&oacute; khả năng tự ph&acirc;n hủy sinh học, kh&ocirc;ng g&acirc;y ra sự &ocirc; nhiễm nặng nề tr&ecirc;n h&agrave;nh tinh n&agrave;y như những chất h&oacute;a học kh&aacute;c. Mặt kh&aacute;c, x&agrave; ph&ograve;ng thi&ecirc;n nhi&ecirc;n thường kh&ocirc;ng c&oacute; SLS hay SLES, đ&acirc;y đều l&agrave; những th&agrave;nh phần khiến cho tr&aacute;i đất bị n&oacute;ng l&ecirc;n to&agrave;n cầu trong những năm gần đ&acirc;y.</p>', 2, 60000, NULL, 1, '2023-11-29 23:55:06', '2023-11-29 23:55:06', '/storage/uploads/2023/11/30/Xa bong thien nhien.jpg'),
(6, 'Vải sáp ong', 'Vải sáp ong có khả năng bảo quản thực phẩm tốt', '<p>Vải s&aacute;p ong chống thấm nước tốt, đ&aacute;p ứng được nhu cầu bảo quản thực phẩm của người d&ugrave;ng. Bạn c&oacute; thể giặt vải sau mỗi lần sử dụng để d&ugrave;ng được nhiều lần. Sản phẩm cũng c&oacute; khả năng ph&acirc;n hủy sinh học tự nhi&ecirc;n, nhanh ch&oacute;ng. Nếu sử dụng vải bọc s&aacute;p ong để bảo quản thực phẩm, bạn c&oacute; thể g&oacute;p phần giảm thiểu được 300 &ndash; 500m m&agrave;ng bọc nhựa thải ra mỗi năm</p>', 2, 35000, 32000, 1, '2023-11-30 00:10:05', '2023-11-30 00:10:05', '/storage/uploads/2023/11/30/Vai sap ong.jpg'),
(7, 'Bóng đèn thông minh', 'Các cài đặt ánh sáng thường được thiết lập kịch bản có sẵn giúp gia chủ tiết kiệm năng lượng', '<p>Đ&egrave;n th&ocirc;ng minh tạo ra nhiệt &iacute;t hơn khoảng 70-90% so với b&oacute;ng đ&egrave;n truyền thống, điều n&agrave;y c&oacute; thể l&agrave;m giảm hơn nữa chi ph&iacute; l&agrave;m m&aacute;t ng&ocirc;i nh&agrave;. B&oacute;ng đ&egrave;n th&ocirc;ng minh cũng được đ&aacute;nh gi&aacute; l&agrave; c&oacute; tuổi thọ cao hơn 15 lần so với b&oacute;ng đ&egrave;n d&acirc;y t&oacute;c truyền thống, v&igrave; vậy bạn sẽ kh&ocirc;ng phải thay ch&uacute;ng thường xuy&ecirc;n</p>', 3, 300000, 280000, 1, '2023-11-30 00:14:32', '2023-11-30 00:25:36', '/storage/uploads/2023/11/30/bong-den-led-wifi-ezviz-lb1-6.jpg'),
(8, 'BỘ ĐIỀU KHIỂN TƯỚI TỰ ĐỘNG RAIN BIRD ESP-RZXE', 'Hệ thống bơm tưới tự động là một trong những yếu tố trong nhà thông minh giúp tiết kiệm năng lượng', '<p>C&aacute;c thiết bị nh&agrave; th&ocirc;ng minh gi&uacute;p tiết kiệm năng lượng v&agrave; hệ thống phun nước th&ocirc;ng minh cũng c&oacute; thể gi&uacute;p bạn tiết kiệm nước. C&aacute;c thiết bị nh&agrave; th&ocirc;ng minh n&agrave;y gi&uacute;p b&atilde;i cỏ của bạn kh&ocirc;ng bị ngập &uacute;ng với khả năng nhắm mục ti&ecirc;u ch&iacute;nh x&aacute;c để giảm l&atilde;ng ph&iacute; nước khi chăm s&oacute;c s&acirc;n vườn.</p>', 3, 4500000, 4499000, 1, '2023-11-30 00:19:26', '2023-11-30 00:19:26', '/storage/uploads/2023/11/30/tuoi tu dong.jpg'),
(9, 'Đồng hồ hiển thị nhiệt độ Autonics T4WI-N4NKCC-N', 'Kiểm soát và giảm tiêu thụ năng lượng theo nhu cầu thực tế.', '<p>Đồng hồ nhiệt độ</p>\r\n\r\n<p>T&iacute;nh năng điều khiển : Đốt n&oacute;ng / l&agrave;m lạnh</p>\r\n\r\n<p>Kiểu điều khiển : On/Off</p>\r\n\r\n<p>H&igrave;nh dạng : Hiển thị điện tử - ph&iacute;m điện tử</p>\r\n\r\n<p>Đầu d&ograve; loại K</p>\r\n\r\n<p>Ng&otilde; ra ch&iacute;nh : Relay (On/Off)</p>', 3, 800000, 750000, 1, '2023-11-30 00:21:59', '2023-11-30 00:21:59', '/storage/uploads/2023/11/30/do nhiet do.png'),
(10, 'Ổ Cắm Điện Thông Minh 1 Lỗ TP-Link Tapo P100 Trắng', 'Các ổ cắm có khả năng điều khiển từ xa, lên lịch trình hoặc được kết nối với các hệ thống thông minh để tối ưu hóa việc sử dụng năng lượng', '<p>-&nbsp;<strong>Nguồn điện</strong>: 220 - 240 V, 10 A</p>\r\n\r\n<p>-&nbsp;<strong>C&ocirc;ng suất</strong>: 2300 W</p>\r\n\r\n<p>-&nbsp;<strong>Số ổ cắm</strong>: 1 lỗ 2 chấu</p>\r\n\r\n<p>-&nbsp;<strong>C&aacute;ch kết nối</strong>: Wi-Fi 2.4 GHz, Wi-Fi IEEE 802.11b/g/n, Bluetooth 4.2 (chỉ d&ugrave;ng để c&agrave;i đặt)</p>\r\n\r\n<p>-&nbsp;<strong>K&iacute;ch thước</strong>: D&agrave;i 7 cm, rộng 5 cm, cao 7.5 cm</p>\r\n\r\n<p>-&nbsp;<strong>Tiện &iacute;ch</strong>: Hẹn giờ bật/tắt, chia sẻ quyền quản l&yacute;, điều khiển bằng giọng n&oacute;i, điều khiển bằng ứng dụng</p>', 3, 250000, 235000, 1, '2023-11-30 00:25:06', '2023-11-30 00:25:06', '/storage/uploads/2023/11/30/o cam thong minh.jpg'),
(11, 'Máy lọc không khí Electrolux FA31-202GY', 'Máy lọc không khí Electrolux FA31-202GY sở hữu thiết kế sang trọng, hiện đại cùng với công suất hoạt động từ 3.5W - 20W giúp lọc sạch hiệu quả phòng có diện tích 26m2. Sản phẩm phù hợp với phòng vừa và nhỏ như phòng khách, phòng ngủ.', '<p>Đặc điểm nổi bật</p>\r\n\r\n<ul>\r\n	<li>3 cấp lọc: lọc th&ocirc;, lọc than hoạt t&iacute;nh v&agrave; lọc Hepa 13 lọc 99.98% bụi PM 0.3, khử m&ugrave;i cho bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh.</li>\r\n	<li>C&ocirc;ng suất 3.5W - 20W ph&ugrave; hợp cho diện t&iacute;ch ph&ograve;ng 26 m2.</li>\r\n	<li>Cảm biến bụi laser (PM 1.0, PM 2.5 v&agrave; PM 10) đ&aacute;nh gi&aacute; chất lượng kh&ocirc;ng kh&iacute;, tự động điều chỉnh tốc độ lọc.</li>\r\n	<li>C&oacute; đ&egrave;n b&aacute;o chất lượng kh&ocirc;ng kh&iacute; 4 cấp theo m&agrave;u sắc dễ theo d&otilde;i.</li>\r\n	<li>Tự động b&aacute;o thay bộ lọc tiện lợi.</li>\r\n	<li>Độ ồn hoạt động thấp thoải m&aacute;i cho giấc ngủ của gia đ&igrave;nh.</li>\r\n	<li>Ra mắt năm 2020, thương hiệu Electrolux - Thụy Điển, sản xuất tại Trung Quốc.</li>\r\n</ul>', 7, 4290000, 3490000, 1, '2023-11-30 00:42:42', '2023-11-30 00:42:42', '/storage/uploads/2023/11/30/Máy lọc không khí Electrolux FA31-202GY 20W.jpg'),
(12, 'Máy lọc không khí Sharp FP-J30E-A 50W', 'Máy được trang bị bộ lọc HEPA cao cấp giúp loại bỏ bụi mịn PM 2.5, có khả năng lọc không khí với 3 tốc độ quạt ngủ - trung bình - cao tương ứng với lưu lượng gió 60 - 120 - 180 m3/h.', '<ul>\r\n	<li>3 tốc độ quạt, c&ocirc;ng suất 50W d&ugrave;ng cho ph&ograve;ng c&oacute; diện t&iacute;ch dưới 23 m2.</li>\r\n	<li>Diệt sạch 99,97% bụi mịn PM 2.5, bụi bẩn, m&ugrave;i kh&oacute;i thuốc nhờ 2 lớp lọc: lọc th&ocirc;, lọc Hepa.</li>\r\n	<li>Tăng c&ocirc;ng suất lọc sạch kh&ocirc;ng kh&iacute; nhanh với chế độ lọc Haze.</li>\r\n	<li>Ti&ecirc;u diệt nấm mốc, m&ugrave;i h&ocirc;i, virus nhờ c&ocirc;ng nghệ Plasmacluster ion với 7000 hạt ion/m3.</li>\r\n	<li>M&aacute;y hoạt động &ecirc;m &aacute;i với độ ồn 45 dB tương với &acirc;m thanh n&oacute;i chuyện b&igrave;nh thường.</li>\r\n	<li>Thương hiệu Sharp đến từ Nhật Bản, uy t&iacute;n, chất lượng sản xuất tại Th&aacute;i Lan.</li>\r\n</ul>', 7, 2500000, NULL, 1, '2023-11-30 00:44:58', '2023-11-30 00:44:58', '/storage/uploads/2023/11/30/Máy lọc không khí Sharp FP-J30E-A 50W.jpg'),
(13, 'Máy lọc không khí Sharp FP-J40E-W 23W', 'Máy lọc không khí Sharp FP-J40E-W có kiểu dáng gọn gàng, hiện đại, phù hợp với phòng có diện tích dưới 30m2. Sản phẩm vận hành êm ái, độ ồn chỉ từ 15 - 45dB tương đương với tiếng nói chuyện thì thầm, giúp mang lại sự thoải mái cho gia đình bạn', '<ul>\r\n	<li>Ph&ugrave; hợp ph&ograve;ng dưới 30 m&sup2; với c&ocirc;ng suất 23W.</li>\r\n	<li>Độ ồn thấp 15 - 45 dB tương đương &acirc;m thanh th&igrave; thầm cho trẻ giấc ngủ say.</li>\r\n	<li>Lọc sạch kh&ocirc;ng kh&iacute; đến 99.97% bụi mịn PM 2.5 với bộ lọc Hepa.</li>\r\n	<li>Khử m&ugrave;i, loại bỏ nấm mốc, virus tối ưu bằng c&ocirc;ng nghệ Plasmacluster Ion với 7000 hạt ion/cm3.</li>\r\n	<li>Tự động điều chỉnh c&ocirc;ng suất với cảm biến bụi, m&ugrave;i, &aacute;nh s&aacute;ng gi&uacute;p lọc hiệu quả, tiết kiệm điện.</li>\r\n	<li>Dễ d&agrave;ng kiểm so&aacute;t được chất lượng kh&ocirc;ng kh&iacute; với đ&egrave;n b&aacute;o tr&ecirc;n th&acirc;n m&aacute;y.</li>\r\n	<li>Sử dụng tiết kiệm điện với chế độ Inverter.</li>\r\n	<li>Đến từ nh&atilde;n hiệu nổi tiếng Nhật Bản - Sharp, sản xuất tại Th&aacute;i Lan.</li>\r\n</ul>', 7, NULL, NULL, 1, '2023-11-30 00:48:08', '2023-11-30 00:48:08', '/storage/uploads/2023/11/30/Máy lọc không khí Sharp FP-J40E-W 23W.jpg'),
(14, 'Máy lọc không khí Levoit Core 300s 15W', 'Máy lọc không khí Levoit Core 300s mang thiết kế hiện đại, màu trắng trang nhã, tinh tế phù hợp với không gian phòng ngủ, phòng khách có diện tích dưới 41m2. Sản phẩm vận hành êm ái, độ ồn cao nhất khoảng 47dB tương đương với tiếng mưa vừa phải.', '<ul>\r\n	<li>Thiết kế nhỏ gọn, trang nh&atilde;, hiện đại ph&ugrave; hợp với kh&ocirc;ng gian dưới 41m2.</li>\r\n	<li>Lọc được bụi mịn PM0.3 nhờ bộ lọc 3 lớp: m&agrave;ng lọc th&ocirc;, m&agrave;ng lọc than hoạt t&iacute;nh, m&agrave;ng lọc TRUE HEPA H13.</li>\r\n	<li>C&ocirc;ng suất 15W hoạt động &ecirc;m &aacute;i, tiết kiệm điện năng, độ ồn chỉ khoảng 47 dB.</li>\r\n	<li>C&ocirc;ng nghệ QuietKEAP giảm tiếng ồn, gi&uacute;p m&aacute;y hoạt động &ecirc;m &aacute;i khi ngủ.</li>\r\n	<li>C&ocirc;ng nghệ Air Turbo (VortexAir) với cửa h&uacute;t gi&oacute; 360 độ lọc sạch kh&ocirc;ng kh&iacute; theo mọi hướng, giảm bụi, chất g&acirc;y dị ứng v&agrave; m&ugrave;i h&ocirc;i trong nh&agrave;.</li>\r\n	<li>C&ocirc;ng nghệ AirSight Plus ph&aacute;t hiện chất lượng kh&ocirc;ng kh&iacute; v&agrave; tự động điều chỉnh tốc độ quạt để ph&ugrave; hợp với điều kiện hiện tại, độ nhạy cao để qu&eacute;t xung quanh kh&ocirc;ng kh&iacute; nhanh hơn v&agrave; ch&iacute;nh x&aacute;c hơn.</li>\r\n	<li>Hẹn giờ tắt tối đa 24 giờ.</li>\r\n	<li>Điều khiển từ xa th&ocirc;ng qua ứng dụng VeSync.</li>\r\n	<li>Thương hiệu Levoit - Mỹ, sản xuất tại Trung Quốc.</li>\r\n</ul>', 7, 3990000, 3750000, 1, '2023-11-30 00:49:58', '2023-11-30 00:49:58', '/storage/uploads/2023/11/30/Máy lọc không khí Levoit Core 300s 15W.jpg'),
(15, 'Máy Lọc Nước Nóng Lạnh Nguội 10 Lõi Karofi KAD-D61', 'Máy lọc nước nóng lạnh nguội 10 lõi Karofi KAD-D61 tích hợp màng lọc RO Purifim nhập khẩu từ Mỹ. Sản phẩm cho khả năng lọc nước vượt trội, loại bỏ hoàn toàn vi khuẩn và các chất gây bệnh tồn tại trong nước', '<ul>\r\n	<li>C&ocirc;ng suất l&agrave;m n&oacute;ng / l&agrave;m lạnh: 430W / 65W</li>\r\n	<li>C&ocirc;ng suất lọc l&ecirc;n đến 10 l&iacute;t/giờ</li>\r\n	<li>Hệ thống 10 l&otilde;i lọc hiệu suất cao</li>\r\n	<li>M&agrave;ng lọc RO Purifim Nhập khẩu Mỹ</li>\r\n	<li>C&ocirc;ng nghệ l&agrave;m lạnh chip điện tử si&ecirc;u &ecirc;m</li>\r\n	<li>Nhiệt độ l&agrave;m lạnh / l&agrave;m n&oacute;ng: 10-15 độ C / 85-95 độ C</li>\r\n</ul>', 8, 12990000, 10540000, 1, '2023-11-30 00:58:52', '2023-11-30 00:58:52', '/storage/uploads/2023/11/30/Máy Lọc Nước Nóng Lạnh Nguội 10 Lõi Karofi KAD-D61.webp'),
(16, 'Máy lọc nước nóng lạnh Karofi KAD-D66', 'Máy lọc nước Karofi D66 là dòng máy mới được Karofi cho ra mắt vào giữa năm 2021. Máy sở hữu 11 cấp lọc vùng tiện ích 2 vòi với 3 chức năng nóng-lạnh-nguội mang tới những trải nghiệm tiện nghi bậc nhất cho khách hàng.', '<p>- Hệ thống 11 l&otilde;i lọc mạnh mẽ ho&agrave;n to&agrave;n mới</p>\r\n\r\n<p>- Bổ sung l&otilde;i Nano silver Plus gấp đ&ocirc;i hiệu quả diệt khuẩn</p>\r\n\r\n<p>- Tiết kiệm 30% điện năng nhờ c&ocirc;ng nghệ bảo vệ nhiệt đa lớp</p>\r\n\r\n<p>- Bổ sung Hydrogen chống l&atilde;o h&oacute;a</p>\r\n\r\n<p>- M&agrave;ng RO chuẩn Mỹ</p>\r\n\r\n<p>- Chuẩn quốc gia nước uống trực tiếp QCVN 6-1:2010/BYT</p>', 8, 12750000, 9400000, 1, '2023-11-30 01:00:52', '2023-11-30 01:00:52', '/storage/uploads/2023/11/30/Máy lọc nước nóng lạnh Karofi KAD-D66.jpg'),
(17, 'Máy lọc nước RO nóng nguội lạnh Sunhouse SHR76210CK 10 lõi', 'Máy lọc nước Sunhouse có vẻ ngoài khá sang trọng, bắt mắt với bề mặt kính cường lực đính kèm họa tiết góp phần tăng thêm nét thẩm mỹ cũng như làm tiện nghi hơn cho không gian nhà bạn.\r\nThiết kế nhỏ gọn với dung tích là 9.53 lít và công suất lọc từ 10 - 15 lít nước/giờ đảm bảo đáp ứng tốt nhu cầu sử dụng nước của hầu hết các gia đình.', '<ul>\r\n	<li>M&agrave;ng lọc RO Dupont - USA&nbsp;<strong>loại bỏ 99% vi khuẩn&nbsp;</strong>v&agrave;</li>\r\n	<li>Đ&aacute;p ứng hiệu quả nhu cầu sử dụng với c&ocirc;ng suất lọc<strong>&nbsp;10 - 15 l&iacute;t/giờ.</strong></li>\r\n	<li>T&iacute;ch hợp 2 v&ograve;i nước:&nbsp;<strong>n&oacute;ng (nhiệt độ 85 độ C), lạnh (nhiệt độ 12 - 15 độ C).</strong></li>\r\n	<li>Thiết kế sang trọng, mặt k&iacute;nh cường lực.</li>\r\n	<li>Thương hiệu Sunhouse của Việt Nam - Sản xuất tại Việt Nam</li>\r\n</ul>', 8, 10550000, 8990000, 1, '2023-11-30 01:04:59', '2023-11-30 01:04:59', '/storage/uploads/2023/11/30/Máy lọc nước RO nóng nguội lạnh Sunhouse SHR76210CK 10 lõi.jpg'),
(18, 'Màng lọc UF-160 (liền vỏ)', 'Màng siêu lọc UF-160 là màng siêu lọc có cấu tạo dạng sợi rỗng, kích thước khe lọc từ 0,1~0,001micron (µm). Với kích thước nhỏ hơn cả vi khuẩn nên hoàn toàn có thể lọc sạch các tạp chất, loại bỏ dầu, mỡ, hydroxit kim loại, chất keo, nhũ tương, chất rắn lơ lửng, và hầu hết các phân tử lớn từ nước.', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Đặc điểm</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Th&ocirc;ng số</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>T&ecirc;n sản phẩm</p>\r\n			</td>\r\n			<td>\r\n			<p>M&agrave;ng UF-160</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lưu lượng thiết kế &nbsp;( L/m<sup>2</sup>h) 25&deg;C</td>\r\n			<td>\r\n			<p>60 &ndash; 160</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>pH</p>\r\n			</td>\r\n			<td>\r\n			<p>2-13</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nhiệt độ</p>\r\n			</td>\r\n			<td>\r\n			<p>5 &ndash; 45&deg;C</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tổn thất qua m&agrave;ng&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>0.04 &ndash; 0.08 MPa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&Aacute;p lực tối đa v&agrave;o m&agrave;ng&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>0.3 MPa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&Aacute;p lực l&agrave;m việc&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>0.2 MPa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>&Aacute;p lực tối đa rửa ngược m&agrave;ng&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p>0.15 MPa</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Độ đục tối đa</p>\r\n			</td>\r\n			<td>\r\n			<p>15 NTU</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>K&iacute;ch thước hạt đưa v&agrave;o lớn nhất</p>\r\n			</td>\r\n			<td>\r\n			<p>0.2 mm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nồng độ Clo</p>\r\n			</td>\r\n			<td>\r\n			<p>100 ppm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Nồng độ Clo chịu trong thời gian ngắn</p>\r\n			</td>\r\n			<td>\r\n			<p>200 ppm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Chỉ số nước ra ( SDI)</p>\r\n			</td>\r\n			<td>\r\n			<p>&lt; 3</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Độ đục nước đầu ra</p>\r\n			</td>\r\n			<td>\r\n			<p>0.1 NTU</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tỷ lệ loại bỏ SS</p>\r\n			</td>\r\n			<td>\r\n			<p>99,99%</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Tỷ lệ loại bỏ vi khuẩn, vi r&uacute;t v&agrave; t&aacute;c nh&acirc;n g&acirc;y bệnh</p>\r\n			</td>\r\n			<td>\r\n			<p>99,99%</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 9, 1300000, 1290000, 1, '2023-11-30 01:12:56', '2023-11-30 01:12:56', '/storage/uploads/2023/11/30/Màng lọc UF-160 (liền vỏ).webp'),
(19, 'Đệm vi sinh dạng cầu (quả cầu lọc nước)', 'Đệm vi sinh dạng cầu được thiết kế tự nó có khả năng lơ lửng trong nước nên nó cũng là một dạng của đệm vi sinh di động. Nhờ vào quá trình sục khí trong bể hiếu khí hoặc máy khuấy chìm trong bể kỵ khí mà đệm vi sinh dạng cầu có thể di chuyển khắp nơi trong bể xử lý.', '<ul>\r\n	<li>K&iacute;ch thước: (550x500x450)mm</li>\r\n	<li>Nhiệt độ l&agrave;m việc: 45 - 50 độ C.</li>\r\n	<li>Bề mặt ri&ecirc;ng: &ge; 200 - 220 m2/m3.</li>\r\n	<li>Độ rỗng xốp: &ge; 93%.</li>\r\n	<li>&Aacute;p suất l&agrave;m việc: 1 - 2 bar.</li>\r\n	<li>Vật liệu chế tạo: Nhựa PVC.</li>\r\n	<li>Xuất xứ: Việt Nam.</li>\r\n</ul>', 9, 2800000, NULL, 1, '2023-11-30 01:16:10', '2023-11-30 01:16:10', '/storage/uploads/2023/11/30/Đệm vi sinh dạng cầu (quả cầu lọc nước).webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$2mQMaC3dr8zRfuC.bXzW1u1y1B58PUkQ5My6v.dyTaHZrUNDWbk8m', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
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
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
