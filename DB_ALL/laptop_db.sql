-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2024 lúc 01:22 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptop_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(5, 3, 2, 'Razer Blade 14 Gaming', 52130000, 1, 'Razer1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `new`
--

CREATE TABLE `new` (
  `title` varchar(225) NOT NULL,
  `image` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `new`
--

INSERT INTO `new` (`title`, `image`, `content`, `id`) VALUES
('', 'tgdd-asus-vivobook-gaming-k3605-01.jpg', 'ASUS Gaming Vivobook K3605ZF hoàn hảo cho game thủ với giá chỉ 17.99 triệu đồng\r\nASUS Gaming Vivobook K3605ZF được trang bị Intel Core i5-12500H thế hệ 12, mang lại hiệu năng vượt trội để xử lý mượt mà mọi tác vụ. Với 12 nhân và 16 luồng, xung nhịp tối đa lên đến 4.5 GHz, con chip này đảm bảo bạn sẽ không gặp phải bất kỳ tình trạng giật lag nào, ngay cả khi đang chạy các ứng dụng nặng.\r\n\r\nBên cạnh đó, card đồ họa rời NVIDIA GeForce RTX 2050 không chỉ giúp bạn chiến mượt các tựa game AAA ở cài đặt cao mà còn hỗ trợ tăng tốc quá trình làm việc với các ứng dụng đồ họa, chỉnh sửa video và dựng hình 3D.', 1),
('', 'laptop-2345.jpg', 'Khám phá ngay dòng laptop HP trang bị vi xử lý Ryzen 5 và Ryzen 7 với giá cực hấp dẫn chỉ từ 13.2 triệu tại Thế Giới Di Động. Ưu đãi trả góp 0% lãi suất, duyệt nhanh chóng, trả trước chỉ từ 0 đồng, giúp bạn dễ dàng sở hữu. Đặc biệt, học sinh sinh viên còn được giảm thêm lên đến 400K, cơ hội tuyệt vời để trang bị một chiếc laptop mạnh mẽ cho việc học tập và làm việc.\r\nThời gian khuyến mãi: Dự kiến đến hết 30/09/2024.\r\n\r\nLưu ý:\r\n\r\nKhuyến mãi có thể kết thúc sớm trước thời hạn nếu hết số lượng sản phẩm hoặc thông tin khuyến mãi có thay đổi.\r\nÔ sản phẩm chưa hiển thị ưu đãi chính xác, để hiện ưu đãi chính xác, khách cần bấm Xem chi tiết.\r\nƯu đãi tặng kèm:\r\n\r\nHSSV giảm thêm đến 400K.\r\nGiảm thêm đến 3 triệu cho tân sinh viên.\r\nTrả góp 0%, trả trước từ 0 đồng.', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(3, 3, 'Phan Thiên Khải', '0384104942', 'phanthienkhai111@gmail.com', 'MoMo', '12, Nguyễn Văn Bảo, Phường 4, TP.Hồ Chí Minh, Hồ Chí Minh, Việt Nam - 1234', 'Razer Blade 14 Gaming (52.130.000<span>đ</span> x 1)', 52130000, '2024-09-26', 'completed'),
(4, 3, 'Phan Thiên Khải', '0384104942', 'phanthienkhai111@gmail.com', 'ZaloPay', '12, Nguyễn Văn Bảo, Phường 4, TP.Hồ Chí Minh, Hồ Chí Minh, Việt Nam - 1234', 'Laptop Asus Vivobook X415EA-EB640W (12.999.000<span>đ</span> x 1)', 12999000, '2024-09-28', 'completed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `warranty` int(11) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`, `description`, `warranty`, `manufacturer`) VALUES
(1, 'Asus ExpertBook B5402CB i5', 'Asus', 22000000, 'latop.png', 'Sản phẩm với cấu hình mạnh mẽ, với con chip cân tất cả mọi tựa game hiện nay!', 24, 'Asus'),
(2, 'Razer Blade 14 Gaming', 'Razer', 52130000, 'Razer1.jpg', NULL, NULL, NULL),
(3, 'Laptop Acer Predator PH315-51', 'Acer', 20500000, 'acer1.png', NULL, NULL, NULL),
(4, 'Laptop MSI Gaming Katana GF66', 'Msi', 21490000, 'MSI-Katana-GF66-14.png', NULL, NULL, NULL),
(5, 'Laptop Asus Vivobook X415EA-EB640W', 'Asus', 12999000, 'asusvivobookx415.png', NULL, NULL, NULL),
(6, 'Laptop MSI Gaming GF63 -Black- 15.6', 'Msi', 20390000, 'GF63-11UD-473VN__15390.jpg', NULL, NULL, NULL),
(7, 'Razer Blade 14 2017', 'Razer', 22500000, 'Razer-Blade-14-2017.jpg', NULL, NULL, NULL),
(8, 'Laptop Acer Aspire 3 A315', 'Acer', 11390000, 'laptop_acer_aspire.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(3, 'Phan Thiên Khải', 'phanthienkhai111@gmail.com', '0384104942', '722efb822db49574f7cdc65bafc8436d4b0e2acd', '12, Nguyễn Văn Bảo, Phường 4, TP.Hồ Chí Minh, Hồ Chí Minh, Việt Nam - 1234');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `new`
--
ALTER TABLE `new`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
