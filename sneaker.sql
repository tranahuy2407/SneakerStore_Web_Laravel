-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2023 lúc 10:10 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sneaker`
--

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
(5, '2023_11_28_164800_create_tbl_admin_table', 1),
(6, '2023_11_29_170345_create_tbl_category_product', 2),
(7, '2023_12_04_083359_create_tbl_brand_product', 3),
(8, '2023_12_04_094659_create_tbl_product', 4),
(9, '2023_12_09_203936_tbl_customer', 5),
(10, '2023_12_09_212259_tbl_shipping', 6),
(14, '2023_12_16_143223_tbl_payment', 7),
(15, '2023_12_16_143414_tbl_order', 7),
(16, '2023_12_16_143503_tbl_order_details', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Tran A Huy', '0343899504', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_desc` text NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(1, 'NIKE', 'Thương hiệu Nike là tiền thân của Blue Ribbon Sports (BRS), được thành lập bởi cựu sinh viên của đại học Oregon chính là Phil Knight, cùng với vị HLV của mình là ông Bill Bowerman thành lập vào ngày 25/1/1964. Ban đầu, công ty chỉ hoạt động tại vùng Eugene, Oregon với hoạt động là nhà phân phối giày Nhật Bản Onitsuka Tiger. Đa phần doanh thu của đơn vị thời điểm này chủ yếu đến từ việc bán giày trên xe ô tô của chính Phil Knight.', 0, NULL, NULL),
(3, 'Adidas', 'Adidas là một trong những thương hiệu thời trang lâu đời và đạt được nhiều thành công nhất định.Là một thương hiệu nổi tiếng, nhưng không phải ai cũng biết Adidas là của nước nào? Thực chất, đây là 1 tập đoàn đa quốc gia xuất xứ từ đất nước Đức. Đây được xem là một quốc gia phát triển mạnh, có thu nhập cao và là nơi sản sinh ra nhiều thương hiệu thời trang nổi tiếng và Adidas là một trong số đó.Sau khi biết được hãng Adidas của nước nào? Thì đây là một thương hiệu đến từ Đức, được hai anh em Adi Dassler và Rudolf thành lập vào năm 1924, là tiền thân là công ty Gebruder Dassler Schuhfabrik. Đây được xem là một fan cuồng của các môn thể thao hàng đầu như tennis, bóng đá,… Các dòng sản phẩm Adidas luôn được đánh giá cao về phong cách thời trang năng động, đáp ứng mong muốn của các vận động viên.', 0, NULL, NULL),
(4, 'MLB', 'MLB là từ viết tắt của Major League Baseball có nghĩa là tổ chức thể thao chuyên nghiệp của môn bóng chày. Vậy MLB là thương hiệu gì? thực chất đây là một công ty thời trang nổi tiếng có nguồn gốc xuất xứ đến từ đất nước Hàn Quốc, được thành lập vào năm 1997. Đồng thời đây là một công ty con của tập đoàn thời trang F&F nổi tiếng hàng đầu ở Hàn Quốc, chuyên sản xuất và phát triển các dòng sản phẩm thời trang mang đậm chất thể thao, nhất là hơi hướng môn bóng Chày.Trải qua hơn 2 thập kỷ hoạt động, hãng MLB đã gặt hái cho mình được rất nhiều thành công. Nhất là việc công ty có được giấy phép chính thức của Major League Baseball với cửa hàng MLB KOREA đầu tiên của hãng được mở thành công vào năm 1997. Cho đến nay, thương hiệu đã có được cho mình khoảng 300 cửa hàng tại Hàn Quốc và một số quốc gia Châu Á.\r\nVào năm 2019, shop MLB chính hãng đã có cửa hàng đầu tiên, chính thức tại Việt Nam và được nhiều tín đồ thời trang Việt ưa thích. Nhất là khi hãng cho ra mắt siêu phẩm giày MLB Authentic với phong cách sneaker độc đáo tạo được cơn sốt mạnh mẽ trên thị trường.\r\nĐiểm đặc biệt của các sản phẩm giày dép, quần áo MLB đều được thương hiệu sản xuất dựa trên cảm hứng môn thể thao bóng chày, đồng thời chính là sự kết hợp giữa thời trang đường phố và thể thao. Đây được xem là một trong những trào lưu mới thời điểm bấy giờ cho đến hiện nay để mang đậm chất thời trang hiện đại.', 0, NULL, NULL),
(5, 'Vans', 'Vans là thương hiệu giày thể thao, đặc biệt biểu tượng cho những môn thể thao mạo hiểm, dựa trên sự trẻ trung, tính hữu dụng và nâng cao phong cách cá nhân.', 0, NULL, NULL),
(6, 'Converse', 'Thành lập từ năm 1908, Converse đã trở nên nổi tiếng với những đôi giày thể thao độc đáo. Hiện nay, Converse đã và đang trở thành một trong những thương hiệu không thể thiếu đối với tủ đồ của các bạn trẻ ngày nay bởi phong cách đơn giản, thoải mái nhưng vẫn đậm chất thể thao.', 0, NULL, NULL),
(7, 'Crocs', 'Sang trọng, quý phái', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(10, 'Bata', 'Giày trẻ trung năng động', 0, NULL, NULL),
(12, 'Crocs', 'Dành cho phái đẹp', 0, NULL, NULL),
(13, 'Dép', 'Thuận tiện, thoải mái', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_phone`, `created_at`, `updated_at`) VALUES
(2, 'Trần A Huy', 'tranahuy247@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0343899504', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` double(8,2) NOT NULL,
  `customer_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_content` text NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `product_name`, `brand_id`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(12, 10, 'Giày NIKE KILLSHOT 2 \"MIDNIGHT NAVY\"', 1, 'Giày Nike Killshot 2 Midnight Navy là một trong những sản phẩm đình đám của thương hiệu giày đế kểt Nổi tiếng Nike. Được ra mắt từ năm 1982 và được nâng cấp với thiết kế mới lạ vào năm 2019, giày Nike Killshot 2 Midnight Navy không chỉ được lấy cảm hứng từ nền văn hóa thể thao mà còn từ phong cách', 'Bảo hành: Sản phẩm được bảo hành 6 tháng kể từ ngày mua (các vấn đề về hở keo, bung chỉ)\r\nGiới tính: Unisex\r\nMàu sắc: White/ navy', '2150000', 'NikeSkillShot328.jpeg', 0, NULL, NULL),
(13, 10, 'Giày MLB BigBall Chunky Diamond Monogram New York Yankees Black', 4, 'Là đôi giày với thiết kế hiện đại, thời trang đến từ thương hiệu nổi tiếng của Hàn Quốc với tone màu độc lạ mà bạn phải sở hữu ngay để trở thành một tín đồ thời trang thực thụ.', 'Giới tính: Unisex\r\n\r\nMàu sắc:  Cream/Black\r\n\r\nBảo hành: Sản phẩm được bảo hành 6 tháng kể từ ngày mua ( các vấn đề về hở keo, bung chỉ,...)', '2450000', 'MLB_BigBall33.jpeg', 0, NULL, NULL),
(14, 10, 'Giày Nike Air Jordan 1 Mid Retro Panda', 1, 'Nike Jordan 1 được thiết kế dựa trên những sản phẩm của Nike thời kì đó v dấu “swoosh” đặc trưng ở bên hông, logo Nike Air ở lưỡi gà và đặc biệt không thể thiếu đó là logo Air Jordan “Winged Basketball” đặt trưng. Jordan 1 sở hữu bộ đệm trứ danh “Air” ở gót, bộ đệm cổ chân cứng cáp để hạn chế chấn thương khi chơi bóng.', 'Bảo hành: Sản phẩm được bảo hành 6 tháng kể từ ngày mua (các vấn đề về hở keo, bung chỉ)\r\nGiới tính: Unisex\r\nMàu sắc: White/ Black', '4750000', 'NikeJD1_127.jpeg', 0, NULL, NULL),
(15, 10, 'Giày Adidas Forum Low \'White Red\'', 3, 'Giày Adidas Forum Low \'White Red\' được Adidas thiết kế với gam màu đơn giản và tinh tế, kết hợp giữa màu kem, logo 3 sọc đỏ và điểm nhấn nhất là logo Adidas màu vàng gold giúp toát lên vẻ đẹp của sản phẩm .', 'Bảo hành: Sản phẩm được bảo hành 6 tháng kể từ ngày mua (các vấn đề về hở keo, bung chỉ)', '2850000', 'AdidasForumLow174.jpeg', 0, NULL, NULL),
(16, 10, 'Giày VANS Slip On Knu Skool Black White', 5, 'Vans Old Skool Black là dòng giày được thiết kế đa dạng kiểu dáng bên thân giày. Kiểu dáng cổ điển, dễ vệ sinh, với đường may tỉ mỉ chắc chắn, đặc trưng mang đậm chất đường phố. Sản phẩm giúp hỗ trợ cho bạn hoạt động, di chuyển linh hoạt hơn.', 'Bảo hành: Sản phẩm được bảo hành 6 tháng kể từ ngày mua (các vấn đề về hở keo, bung chỉ)', '2150000', 'VanBasic163.jpeg', 0, NULL, NULL),
(17, 10, 'Giày Converse Chuck 70 At Cx Counter Climate', 6, 'Giày Converse Chuck 70 At Cx Counter Climate đem đến một phong cách thời trang hết sức cool ngầu, phần đế cao 5cm quen thuộc được uốn lượn mềm mại, tạo nên một phong cách rất riêng, độc lạ cá tính và đẹp mắt cho các fan nhà Convers', 'Giới tính: Unisex\r\n\r\nMàu sắc: Black White\r\n\r\nBảo hành: Sản phẩm được bảo hành 6 tháng kể từ ngày mua (các vấn đề về hở keo, bung chỉ)', '1550000', 'ConverseChuk7015.jpeg', 0, NULL, NULL),
(18, 13, 'Dép Adidas Adilette 22 Crystal White', 3, 'Dép Adidas Adilette 22 Crystal White có phối màu đơn giản dễ mang, dễ phối đồ. Thiết kế lạ mắt với dòng chữ ‘the brand with the 3 stripes’ thay cho các logo thương hiệu thường thấy cũng Adidas cũng chính là một điểm nhấn nhá thu hút cùng khả năng chống nước tuyệt đối', 'Giới tính: Unisex\r\n\r\nMàu sắc: White\r\n\r\nBảo hành: Sản phẩm được bảo hành 6 tháng kể từ ngày mua ( các vấn đề về hở keo, bung chỉ,...)', '1250000', 'DepAdidasAdidette174.jpeg', 0, NULL, NULL),
(19, 12, 'Dép MCM x Crocs White', 7, 'Đôi dép Classic Clog này được thiết kế với kiểu dáng đặc trưng của Crocs, mang đến sự thoải mái và tiện dụng cho người sử dụng. Chất liệu làm từ cao su đặc biệt, đôi dép này có độ bền cao và dễ dàng làm sạch. Bên cạnh đó, nó còn có đế gót cao và đế ngoài được thiết kế chống trượt, giúp bạn tự tin di chuyển trên mọi bề mặt.', 'Vòng đeo tay có khóa kéo lấy cảm hứng từ thắt lưng Visetos có thể tháo rời. Dây đeo gót chân Visetos có đệm lót. \r\n Đệm chân in logo MCM. Thành phần Croslite™', '10500000', 'MCM-x-CROCS-Classic-Clog-w-315.jpg', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `shipping_notes` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `shipping_notes`, `created_at`, `updated_at`) VALUES
(1, 'Trần A Huy', '232 An Hưng', '0343899504', 'tranahuy247@gmail.com', 'Giao hàng nhanh', NULL, NULL);

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
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Chỉ mục cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
