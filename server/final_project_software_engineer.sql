-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 24, 2021 lúc 05:59 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `final_project_software_engineer`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `ID` int(4) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(150) NOT NULL,
  `ID_type_account` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`ID`, `username`, `password`, `ID_type_account`) VALUES
(2, 'admin_2', '123123', 1),
(3, 'staff_1', '123123', 2),
(4, 'staff_2', '123123', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `ID` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `id_account` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`ID`, `name`, `birthday`, `id_account`) VALUES
(1, 'admin 1', '2021-04-08', 2),
(2, 'admin 1', '2021-04-08', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `assignment`
--

CREATE TABLE `assignment` (
  `ID` int(6) NOT NULL,
  `date` date NOT NULL,
  `time_start` time NOT NULL,
  `time_finish` time NOT NULL,
  `job_name` varchar(100) NOT NULL,
  `id_staff` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `assignment`
--

INSERT INTO `assignment` (`ID`, `date`, `time_start`, `time_finish`, `job_name`, `id_staff`) VALUES
(1, '2021-04-07', '08:00:00', '17:00:00', 'job 1', 1),
(2, '2021-04-07', '08:00:00', '17:00:00', 'job 2', 3),
(3, '2021-04-07', '08:00:00', '17:00:00', 'job 3', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `date_post` datetime NOT NULL DEFAULT current_timestamp(),
  `content` text NOT NULL,
  `id_admin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `date_post`, `content`, `id_admin`) VALUES
(4, 'news 2', '2021-04-08 21:28:12', 'content 2', 1),
(5, 'news 3', '2021-04-08 21:28:20', 'content 3', 1),
(6, 'news 3', '2021-04-08 21:30:18', 'content 3', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `person`
--

CREATE TABLE `person` (
  `ID` int(4) NOT NULL,
  `ID_person` varchar(12) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `room_name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `person`
--

INSERT INTO `person` (`ID`, `ID_person`, `name`, `email`, `phone_number`, `birthday`, `room_name`) VALUES
(1, '123123123', 'Choco Soon', 'choco@gmail.com', '3214569870', '1999-03-02', 'C6.4'),
(2, '13123124', 'Phạm Ngọc Quốc', 'pnq0505@gmail.com', '0123456789', '2000-05-03', 'C6.3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `ID` int(11) NOT NULL,
  `room_name` varchar(5) NOT NULL,
  `ID_type_room` int(2) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`ID`, `room_name`, `ID_type_room`, `status`) VALUES
(1, 'A101', 1, 'available'),
(2, 'A102', 1, 'available'),
(3, 'A103', 2, 'unavailable'),
(4, 'A104', 1, 'available'),
(5, 'A201', 1, 'available'),
(6, 'A202', 2, 'available'),
(7, 'A203', 1, 'available'),
(8, 'A204', 1, 'unavailable'),
(9, 'A301', 3, 'available'),
(10, 'A302', 1, 'available'),
(11, 'A303', 3, 'unavailable'),
(12, 'A304', 1, 'available');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `ID` int(6) NOT NULL,
  `room_name` varchar(5) CHARACTER SET utf8 NOT NULL,
  `month` timestamp NOT NULL DEFAULT current_timestamp(),
  `dien` int(10) NOT NULL,
  `nuoc` int(10) NOT NULL,
  `internet` int(10) NOT NULL,
  `rac` int(10) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`ID`, `room_name`, `month`, `dien`, `nuoc`, `internet`, `rac`, `status`) VALUES
(1, 'C6.1', '2021-04-08 14:48:18', 2000000, 2000000, 2000000, 2000000, 'paid'),
(2, 'C6.2', '2021-04-08 14:49:22', 3000000, 2000000, 1000000, 3000000, 'unpaid'),
(4, 'C6.1', '2021-04-08 14:51:34', 3000000, 2000000, 1000000, 3000000, 'unpaid');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `position` varchar(50) NOT NULL,
  `username_account` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `staff`
--

INSERT INTO `staff` (`id_staff`, `name`, `email`, `phone_number`, `birthday`, `position`, `username_account`) VALUES
(1, 'Phạm Ngọc Quốc', 'pnq0505@gmail.com', '0123456789', '2000-05-03', 'admin', 'admin_1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_room`
--

CREATE TABLE `type_room` (
  `ID_type_room` int(1) NOT NULL,
  `name_type_room` varchar(10) NOT NULL,
  `dien_tich` int(2) NOT NULL,
  `so_phong` int(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID_person` (`ID_person`) USING BTREE;

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Chỉ mục cho bảng `type_room`
--
ALTER TABLE `type_room`
  ADD PRIMARY KEY (`ID_type_room`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `assignment`
--
ALTER TABLE `assignment`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `person`
--
ALTER TABLE `person`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
