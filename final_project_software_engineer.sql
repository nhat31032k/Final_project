-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 20, 2021 lúc 04:21 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

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
  `username` varchar(50) NOT NULL,
  `password` varchar(150) NOT NULL,
  `ID_type_account` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`ID`, `username`, `password`, `ID_type_account`) VALUES
(1, 'admin', 'cb651434582e537d616574aeed434df1c91538147f9fa20e7aca68ce20d71d2fa1afed7447cb1eeb607d204352e6b7139fae81adcd1f26bad5e37e8425e43449', 1),
(2, 'A0101', 'd05be662bb4fc19dd07e200c9dc7c8f38e4192856bb1626e657270928ccebe8d724f0abd21e934f99e864224bba02793956eb73bce2e711b4f81d107feee8531', 3),
(3, 'A0102', '73484c807d8251e1a734bdf07f907fb4d5f49ca30fb4a841c5a2614da855c85a04e1379822cbd4aaa8b0b146a8acad6e54f9b92b57bdd8c22282c97281aa3f58', 3),
(4, 'A0103', '5320386d83c888e5b5a2b10977b18252e193a30e416509563c8e9865061025387d8d19f22b702df98aa0d007879db45f7acaab45c177ff9608342a95a55b9b64', 3),
(5, 'A0104', '56abd68c70ac9adc735ea3fd753d4faa6f20aa82bc89c95e3328350071c026296f72c4e363c561c7451e3e2868d88a8d095ae462c230e389b25bf6360adee549', 3),
(6, 'B0105', '5ab8f98f238b51e53bb4d3db5e9cb3930744e2534d0b9c8071fcbff6de1829cf198b4a18c8ccdd79425fb2bb6ef41f8f66d62716d433e836393a514bb47542fc', 3),
(7, 'B0106', '61b723acd39303205f132104ac78c720a6d3dd78e70607fb1548c69ddff932f4ac3cd88c78e04028065007adc178385e7922107a753567e9ab49e7bf41ff0d5b', 3),
(8, 'B0107', '88fbfc5b75901e11f9491eb977f14785022339a2ed8a9b89098d0b8e354fd3d4f52703956ca3f4b934fb44acd910d87999cf1fbb0061448c1063a1a85f70ebdd', 3),
(9, 'B0108', '6f278770c956966863b7d0b532036dada123bcefe310dd547990f0465afc66c2a7cb1499e5e825097bbaf6ceeacd3e36329ec716d6d8b6785188ed287959804b', 3),
(10, 'C0109', '411eccf64ebce9726fb6f6682ad0b1a60303b1d40e5942494ed7e29beacf7d97f5233011188c95c6ce2ddb4d1f6d65b4f1f49320a9fb9ab1aa22ade15c2ada9e', 3),
(11, 'C0110', '574003adc8a30692a5ae10ed6506cebbb679b75e21b8626496c4cb31268c82483fb7af632dbef1bafa7b9a9d57aac4d3eaccfacef6d445040feac5553efeb7e6', 3),
(15, 'staff', 'd26b404f160d70c9a350557da18d5b0ffd3b4a6575f84471a40a4a5882a19b9c00eef234dbc832ffadd6d98db6ef0bf05695731e25f4c8006d9a95ec6f662c2a', 2),
(16, 'doannguyenlam', 'e5434ab56bd30560e16fbead7ea4a672152809e183377e0a99282a7c49a712545e5cfe2e125f9eca9f69052e48f995fb8d0f8b0288ab15a3b15c50abf5b8c15c', 2);

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
(1, '2021-04-07', '08:00:00', '17:00:00', 'Quản lý an toàn', 1),
(2, '2021-04-07', '08:00:00', '17:00:00', 'Quản lý ngân sách', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contracts`
--

CREATE TABLE `contracts` (
  `id` int(4) NOT NULL,
  `date_created` date NOT NULL,
  `date_expiration` date NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `id_user` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contracts`
--

INSERT INTO `contracts` (`id`, `date_created`, `date_expiration`, `price`, `status`, `id_user`) VALUES
(1, '2021-04-07', '2050-04-07', 1500000000, 'paid', 2),
(2, '2021-05-07', '2050-05-07', 1500000000, 'unpaid', 3),
(3, '2021-03-07', '2050-06-07', 1500000000, 'paid', 4),
(4, '2021-02-07', '2050-07-07', 1500000000, 'unpaid', 5),
(5, '2021-01-07', '2050-08-07', 2147483647, 'paid', 6),
(6, '2021-02-07', '2050-09-07', 2147483647, 'paid', 7),
(7, '2021-03-07', '2050-10-07', 2147483647, 'unpaid', 8),
(8, '2021-04-07', '2050-11-07', 2147483647, 'paid', 9),
(9, '2021-05-07', '2050-12-07', 2147483647, 'paid', 10),
(10, '2021-05-07', '2050-12-07', 2147483647, 'unpaid', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `date_post` date NOT NULL DEFAULT current_timestamp(),
  `content` text NOT NULL,
  `author` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `date_post`, `content`, `author`) VALUES
(1, 'THÔNG BÁO VỀ VIỆC PHÒNG CHỐNG DỊCH', '2021-04-08', 'Người dân trong chung cư đeo khẩu trang khi đi ra ngoài để phòng dịch an toàn', '1'),
(2, 'THÔNG BÁO GIÁ TIỀN NƯỚC TĂNG', '2021-05-12', 'Tiền nước từ ngày 12/05/2021 sẽ tăng', '0'),
(3, 'THÔNG BÁO VỀ VIỆC ÁP DỤNG GIỜ TRÁI DẤT', '2021-05-13', '00 giờ ngày 13/05/2021 toàn chung cư sẽ cúp điện áp dụng giờ trái đất', '0'),
(4, 'THỐNG BÁO VỀ VIỆC ĐỖ XE TRONG HẤM', '2021-05-14', 'Từ ngày 14/05/2021 người dân có nhà trong chung cư sẽ được tạo thẻ giữ xe', '0'),
(5, 'THÔNG BÁO VỀ VIỆC KHẢO PHUN KHỬ KHUẨN COVID TOÀN CHUNG CƯ', '2021-05-15', '3 giờ ngày 15/05/2021 toàn chung cư sẽ được phun khử khuẩn', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `person`
--

CREATE TABLE `person` (
  `ID` int(4) NOT NULL,
  `ID_person` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `avt` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `person`
--

INSERT INTO `person` (`ID`, `ID_person`, `name`, `email`, `phone_number`, `birthday`, `avt`) VALUES
(1, 2, 'Nguyễn Văn A', 'A@gmail.com', '0123456789', '0000-00-00', 'https://bootdey.com/img/Content/avatar/avatar1.png'),
(2, 3, 'Nguyễn Văn B', 'B@gmail.com', '0524353454', '1991-02-03', 'https://bootdey.com/img/Content/avatar/avatar2.png'),
(3, 4, 'Nguyễn Văn C', 'C@gmail.com', '0909234323', '1993-03-05', 'https://bootdey.com/img/Content/avatar/avatar3.png'),
(4, 5, 'Nguyễn Văn D', 'D@gmail.com', '0912312343', '1993-03-30', 'https://bootdey.com/img/Content/avatar/avatar4.png'),
(5, 6, 'Nguyễn Văn E', 'E@gmail.com', '0932423355', '1988-03-03', 'https://bootdey.com/img/Content/avatar/avatar5.png'),
(6, 7, 'Nguyễn Văn F', 'F@gmail.com', '0907343123', '1993-10-03', 'https://bootdey.com/img/Content/avatar/avatar6.png'),
(7, 8, 'Nguyễn Văn G', 'G@gmail.com', '0945487235', '1977-12-13', 'https://bootdey.com/img/Content/avatar/avatar7.png'),
(8, 9, 'Nguyễn Văn H', 'H@gmail.com', '0902342342', '1978-05-05', 'https://bootdey.com/img/Content/avatar/avatar8.png'),
(9, 10, 'Nguyễn Văn I', 'I@gmail.com', '0909123126', '1978-12-05', 'https://bootdey.com/img/Content/avatar/avatar1.png'),
(10, 11, 'Nguyễn Văn J', 'J@gmail.com', '0909234632', '1978-11-05', 'https://bootdey.com/img/Content/avatar/avatar2.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room`
--

CREATE TABLE `room` (
  `ID` int(11) NOT NULL,
  `room_name` varchar(5) NOT NULL,
  `ID_type_room` int(1) NOT NULL,
  `status` varchar(11) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `room`
--

INSERT INTO `room` (`ID`, `room_name`, `ID_type_room`, `status`, `img`) VALUES
(1, 'A0101', 1, 'unavailable', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(2, 'A0102', 1, 'unavailable', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(3, 'A0103', 1, 'unavailable', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(4, 'A0104', 1, 'unavailable', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(5, 'B0105', 2, 'unavailable', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(6, 'B0106', 2, 'unavailable', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(7, 'B0107', 2, 'unavailable', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(8, 'B0108', 2, 'unavailable', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(9, 'C0109', 3, 'unavailable', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(10, 'C0110', 3, 'unavailable', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(11, 'A0201', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(12, 'A0202', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(13, 'A0203', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(14, 'A0204', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(15, 'B0205', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(16, 'B0206', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(17, 'B0207', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(18, 'B0208', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(19, 'C0209', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(20, 'C0210', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(21, 'A0301', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(22, 'A0302', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(23, 'A0303', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(24, 'A0304', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(25, 'B0305', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(26, 'B0306', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(27, 'B0307', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(28, 'B0308', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(29, 'C0309', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(30, 'C0310', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(31, 'A0401', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(32, 'A0402', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(33, 'A0403', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(34, 'A0404', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(35, 'B0405', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(36, 'B0406', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(37, 'B0407', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(38, 'B0408', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(39, 'C0409', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(40, 'C0410', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(41, 'A0501', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(42, 'A0502', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(43, 'A0503', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(44, 'A0504', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(45, 'B0505', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(46, 'B0506', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(47, 'B0507', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(48, 'B0508', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(49, 'C0509', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(50, 'C0510', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(51, 'A0601', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(52, 'A0602', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(53, 'A0603', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(54, 'A0604', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(55, 'B0605', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(56, 'B0606', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(57, 'B0607', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(58, 'B0608', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(59, 'C0609', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(60, 'C0610', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(61, 'A0701', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(62, 'A0702', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(63, 'A0703', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(64, 'A0704', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(65, 'B0705', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(66, 'B0706', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(67, 'B0707', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(68, 'B0708', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(69, 'C0709', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(70, 'C0710', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(71, 'A0801', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(72, 'A0802', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(73, 'A0803', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(74, 'A0804', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(75, 'B0805', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(76, 'B0806', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(77, 'B0807', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(78, 'B0808', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(79, 'C0809', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(80, 'C0810', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(81, 'A0901', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(82, 'A0902', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(83, 'A0903', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(84, 'A0904', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(85, 'B0905', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(86, 'B0906', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(87, 'B0907', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(88, 'B0908', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(89, 'C0909', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(90, 'C0910', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(91, 'A1001', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(92, 'A1002', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(93, 'A1003', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(94, 'A1004', 1, 'available', 'https://www.expat.com/upload/housing/664571/1606721293232_2730701-full_size_3x2-t1606721462.jpg'),
(95, 'B1005', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(96, 'B1006', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(97, 'B1007', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(98, 'B1008', 2, 'available', 'https://pix10.agoda.net/hotelImages/7180364/0/fb94e8331fdb78b11de64c66d7d33aa6.jpg?s=1024x768'),
(99, 'C1009', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU'),
(100, 'C1010', 3, 'available', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWBaPuOX3lFZGw7i2NAlqxyCeQ6njxlqrz6Q&usqp=CAU');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `salary`
--

CREATE TABLE `salary` (
  `id` int(4) NOT NULL,
  `month` date DEFAULT NULL,
  `luongcoban` float NOT NULL,
  `phucap` float NOT NULL,
  `thuong` float NOT NULL,
  `id_staff` int(4) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `salary`
--

INSERT INTO `salary` (`id`, `month`, `luongcoban`, `phucap`, `thuong`, `id_staff`, `status`) VALUES
(1, NULL, 5000000, 200000, 500000, 16, 0),
(2, NULL, 7000000, 300000, 500000, 15, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `ID` int(6) NOT NULL,
  `room_name` varchar(5) CHARACTER SET utf8 NOT NULL,
  `month` date NOT NULL DEFAULT current_timestamp(),
  `dien` int(10) NOT NULL,
  `nuoc` int(10) NOT NULL,
  `internet` int(10) NOT NULL,
  `rac` int(10) NOT NULL,
  `giuxe` int(10) NOT NULL,
  `khac` int(10) NOT NULL,
  `status` varchar(7) NOT NULL,
  `sodukhadung` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`ID`, `room_name`, `month`, `dien`, `nuoc`, `internet`, `rac`, `giuxe`, `khac`, `status`, `sodukhadung`) VALUES
(1, 'A0101', '2021-04-08', 500000, 200000, 200000, 20000, 50000, 0, 'paid', 36807800),
(2, 'A0102', '2021-04-08', 600000, 100000, 300000, 20000, 50000, 0, 'unpaid', 5000000),
(3, 'A0103', '2021-04-08', 400000, 200000, 200000, 30000, 50000, 0, 'paid', 39475000),
(4, 'A0104', '2021-04-08', 500000, 200000, 200000, 20000, 50000, 0, 'paid', 5000000),
(5, 'B0105', '2021-04-08', 500000, 200000, 200000, 20000, 50000, 0, 'paid', 5000000),
(6, 'B0106', '2021-04-08', 3000000, 2000000, 1000000, 20000, 1500000, 25000, 'unpaid', 5000000),
(7, 'B0107', '2021-04-08', 3000000, 2000000, 1000000, 20000, 1500000, 25000, 'unpaid', 5000000),
(8, 'B0108', '2021-04-08', 3000000, 2000000, 1000000, 20000, 1500000, 25000, 'unpaid', 5000000),
(9, 'C0109', '2021-04-08', 2000000, 2000000, 2000000, 20000, 1500000, 25000, 'unpaid', 5000000),
(10, 'C0110', '2021-04-08', 500000, 200000, 200000, 20000, 50000, 0, 'paid', 4000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff`
--

CREATE TABLE `staff` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `position` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `avt` varchar(500) NOT NULL,
  `id_account` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `staff`
--

INSERT INTO `staff` (`id`, `name`, `email`, `phone_number`, `birthday`, `position`, `address`, `avt`, `id_account`) VALUES
(1, 'Doan Nguyen Lam', 'pnq0505@gmail.com', '0123456789', '0000-00-00', 'Bảo vệ', '1 Huỳnh Tấn Phát, Quận 7,Tp.HCM', 'https://bootdey.com/img/Content/avatar/avatar1.png', 16),
(2, 'Đinh Tiến Bình', 'tbn@gmail.com', '0345345425', '2000-05-02', 'Kế Toán', '2 Huỳnh Tấn Phát, Quận 7,Tp.HCM', 'https://bootdey.com/img/Content/avatar/avatar2.png', 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_room`
--

CREATE TABLE `type_room` (
  `ID_type_room` int(1) NOT NULL,
  `dien_tich` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `bath` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `type_room`
--

INSERT INTO `type_room` (`ID_type_room`, `dien_tich`, `price`, `bath`, `description`) VALUES
(1, 80, 1500000000, 2, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar quam id dui posuere blandit.'),
(2, 100, 2147483647, 3, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar quam id dui posuere blandit.'),
(3, 130, 2147483647, 3, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Curabitur aliquet quam id dui posuere blandit. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar quam id dui posuere blandit.');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

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
-- Chỉ mục cho bảng `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idUser_account` (`id_user`);

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
  ADD KEY `fk_IDPerson_ID_account` (`ID_person`);

--
-- Chỉ mục cho bảng `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_IDtypeRoom_TypeRoom` (`ID_type_room`);

--
-- Chỉ mục cho bảng `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idStaff_salary` (`id_staff`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idAccount_Staff` (`id_account`);

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
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- AUTO_INCREMENT cho bảng `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `person`
--
ALTER TABLE `person`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `room`
--
ALTER TABLE `room`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT cho bảng `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT cho bảng `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `fk_idUser_account` FOREIGN KEY (`id_user`) REFERENCES `account` (`ID`);

--
-- Các ràng buộc cho bảng `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `fk_IDPerson_ID_account` FOREIGN KEY (`ID_person`) REFERENCES `account` (`ID`);

--
-- Các ràng buộc cho bảng `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_IDtypeRoom_TypeRoom` FOREIGN KEY (`ID_type_room`) REFERENCES `type_room` (`ID_type_room`);

--
-- Các ràng buộc cho bảng `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `fk_idStaff_salary` FOREIGN KEY (`id_staff`) REFERENCES `account` (`ID`);

--
-- Các ràng buộc cho bảng `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fk_idAccount_Staff` FOREIGN KEY (`id_account`) REFERENCES `account` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
