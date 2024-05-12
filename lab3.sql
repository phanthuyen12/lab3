-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 03:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `la_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `views`, `created_at`, `updated_at`, `kind`) VALUES
(1, 'Bài viết về công nghệ mới', 'Nội dung của bài viết về công nghệ mới', 100, '2024-05-11 10:33:49', '2024-05-11 10:46:31', 2),
(2, 'Hướng dẫn làm bánh mỳ Việt Nam', 'Nội dung của bài viết hướng dẫn làm bánh mỳ Việt Nam', 80, '2024-05-11 10:33:49', '2024-05-11 10:46:34', 2),
(3, 'Thủ tục làm visa đi Mỹ', 'Nội dung của bài viết về thủ tục làm visa đi Mỹ', 120, '2024-05-11 10:33:49', '2024-05-11 10:46:37', 3),
(4, 'Cẩm nang du lịch Hà Nội', 'Nội dung của bài viết cẩm nang du lịch Hà Nội', 90, '2024-05-11 10:33:49', '2024-05-11 10:46:43', 3),
(5, 'Phát triển kỹ năng viết báo cáo', 'Nội dung của bài viết về phát triển kỹ năng viết báo cáo', 110, '2024-05-11 10:33:49', '2024-05-11 10:46:46', 3),
(6, 'Cách làm bánh trung thu', 'Nội dung của bài viết cách làm bánh trung thu', 150, '2024-05-11 10:33:49', '2024-05-11 10:46:49', 4),
(7, 'Thực đơn hấp dẫn cho bữa tối gia đình', 'Nội dung của bài viết về thực đơn hấp dẫn cho bữa tối gia đình', 70, '2024-05-11 10:33:49', '2024-05-11 10:46:51', 5),
(8, 'Phòng tránh lây nhiễm Covid-19', 'Nội dung của bài viết về phòng tránh lây nhiễm Covid-19', 200, '2024-05-11 10:33:49', '2024-05-11 10:46:52', 5),
(9, 'Hướng dẫn sử dụng Photoshop', 'Nội dung của bài viết hướng dẫn sử dụng Photoshop', 180, '2024-05-11 10:33:49', '2024-05-11 10:46:54', 6),
(10, 'Top 10 điểm du lịch hấp dẫn ở Việt Nam', 'Nội dung của bài viết top 10 điểm du lịch hấp dẫn ở Việt Nam', 300, '2024-05-11 10:33:49', '2024-05-11 10:46:56', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tintype`
--

CREATE TABLE `tintype` (
  `id` int(11) NOT NULL,
  `ten_loai_tin` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `AnHien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tintype`
--

INSERT INTO `tintype` (`id`, `ten_loai_tin`, `created_at`, `updated_at`, `AnHien`) VALUES
(1, 'Tin Tức Thế Giới', '2024-05-12 13:18:44', '2024-05-12 13:25:02', 2),
(2, 'Tin Tức Trong Nước', '2024-05-12 13:18:44', '2024-05-12 13:25:04', 1),
(3, 'Kinh Doanh', '2024-05-12 13:18:44', '2024-05-12 13:25:07', 1),
(4, 'Giáo Dục', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(5, 'Công Nghệ', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(6, 'Y Tế', '2024-05-12 13:18:44', '2024-05-12 13:25:08', 1),
(7, 'Thể Thao', '2024-05-12 13:18:44', '2024-05-12 13:25:12', 1),
(8, 'Giải Trí', '2024-05-12 13:18:44', '2024-05-12 13:25:14', 1),
(9, 'Âm Nhạc', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(10, 'Phim Ảnh', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(11, 'Thời Trang', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(12, 'Du Lịch', '2024-05-12 13:18:44', '2024-05-12 13:25:17', 1),
(13, 'Ẩm Thực', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(14, 'Xe Cộ', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(15, 'Khoa Học', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(16, 'Môi Trường', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(17, 'Pháp Luật', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(18, 'Xã Hội', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(19, 'Văn Hóa', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0),
(20, 'Thông Tin Kinh Tế', '2024-05-12 13:18:44', '2024-05-12 13:18:44', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_loai_tin_id` (`kind`);

--
-- Indexes for table `tintype`
--
ALTER TABLE `tintype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tintype`
--
ALTER TABLE `tintype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_loai_tin_id` FOREIGN KEY (`kind`) REFERENCES `tintype` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
