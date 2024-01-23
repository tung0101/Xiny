-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 18, 2024 lúc 11:53 AM
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
-- Cơ sở dữ liệu: `xiny_sql`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `MaSP` int(11) NOT NULL,
  `Anh1` varchar(500) DEFAULT NULL,
  `Anh2` varchar(500) DEFAULT NULL,
  `Anh3` varchar(500) DEFAULT NULL,
  `Anh4` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `anhsp`
--

INSERT INTO `anhsp` (`MaSP`, `Anh1`, `Anh2`, `Anh3`, `Anh4`) VALUES
(119, 'D324230_1.jpg', 'D324230_2.jpg', 'D324230_3.jpg', 'D324230_4.jpg'),
(121, 'D316230-1.jpg', 'D316230-2.jpg', 'D316230-3.jpg', 'D316230-4.jpg'),
(127, 'D259230-1.jpg', 'D259230-2.jpg', 'D259230-3.jpg', 'D259230-4.jpg'),
(128, 'D313230-1.jpg', 'D313230-2.jpg', 'D313230-3.jpg', 'D313230-4.jpg'),
(129, 'D314230-1.jpg', 'D314230-2.jpg', 'D314230-3.jpg', 'D314230-4.jpg'),
(130, 'D308230-1.jpg', 'D308230-2.jpg', 'D308230-3.jpg', 'D308230-4.jpg'),
(131, 'D318230-1.jpg', 'D318230-2.jpg', 'D318230-3.jpg', 'D318230-4.jpg'),
(134, 'D294230-1.jpg', 'D294230-2.jpg', 'D294230-3.jpg', 'D294230-4.jpg'),
(135, 'D284230-1.jpg', 'D284230-2.jpg', 'D284230-3.jpg', 'D284230-4.jpg'),
(136, 'D281230-1.jpg', 'D281230-2.jpg', 'D281230-3.jpg', 'D281230-4.jpg'),
(137, 'D270230-1.jpg', 'D270230-2.jpg', 'D270230-3.jpg', 'D270230-4.jpg'),
(138, 'D274230-1.jpg', 'D274230-2.jpg', 'D274230-3.jpg', 'D274230-4.jpg'),
(139, 'D300230-1.jpg', 'D300230-2.jpg', 'D300230-3.jpg', 'D300230-4.jpg'),
(140, 'D279230-1.jpg', 'D279230-2.jpg', 'D279230-3.jpg', 'D279230-4.jpg'),
(141, 'D179230-1.jpg', 'D179230-2.jpg', 'D179230-3.jpg', 'D179230-4.jpg'),
(142, 'D178230-1.jpg', 'D178230-2.jpg', 'D178230-3.jpg', 'D178230-4.jpg'),
(143, 'D215230-1.jpg', 'D215230-2.jpg', 'D215230-3.jpg', 'D215230-4.jpg'),
(144, 'D177230-1.jpg', 'D177230-2.jpg', 'D177230-3.jpg', 'D177230-4.jpg'),
(145, 'D140230-1.jpg', 'D140230-2.jpg', 'D140230-3.jpg', 'D140230-4.jpg'),
(146, 'D182230-1.jpg', 'D182230-2.jpg', 'D182230-3.jpg', ''),
(147, 'D278230-1.jpg', 'D278230-2.jpg', 'D278230-3.jpg', 'D278230-4.jpg'),
(148, 'D271230-1.jpg', 'D271230-2.jpg', 'D271230-3.jpg', 'D271230-4.jpg'),
(149, 'D23023-1.jpg', 'D23023-2.jpg', 'D23023-3.jpg', 'D23023-4.jpg'),
(150, 'D325230-1.jpg', 'D325230-2.jpg', 'D325230-3.jpg', 'D325230-4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`MaBL`, `MaSP`, `MaKH`, `NoiDung`, `ThoiGian`) VALUES
(21, 119, 16, 'rất đẹp', '2024-01-18 15:22:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `MaMau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`) VALUES
(70, 7, 3, 2449000, 7347000, '41', 'Trắng'),
(70, 11, 1, 4649000, 4649000, '39', 'none'),
(86, 4, 2, 3779000, 7558000, '37', 'none'),
(86, 53, 1, 1700000, 1700000, '42', 'none'),
(86, 70, 2, 1700000, 3400000, '41', 'Trắng'),
(87, 54, 2, 730000, 1460000, '42', 'Đen '),
(88, 4, 2, 3779000, 7558000, '36', 'none'),
(88, 12, 1, 2019000, 2019000, '39', 'Vàng'),
(89, 4, 1, 3779000, 3779000, '37', 'Hồng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MaSP` int(11) NOT NULL,
  `MaSize` varchar(50) NOT NULL,
  `MaMau` varchar(20) NOT NULL DEFAULT 'null',
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MaSP`, `MaSize`, `MaMau`, `SoLuong`) VALUES
(119, 'L', 'Trắng', 20),
(119, 'M', 'Trắng', 20),
(119, 'S', 'Trắng', 20),
(121, 'L', 'Xám', 20),
(121, 'M', 'Xám', 20),
(121, 'S', 'Xám', 20),
(127, 'L', 'Trắng', 50),
(127, 'M', 'Trắng', 50),
(127, 'S', 'Trắng', 50),
(128, 'L', 'Trắng', 50),
(128, 'M', 'Trắng', 50),
(128, 'S', 'Trắng', 50),
(129, 'M', 'Đen ', 50),
(129, 'S', 'Đen ', 50),
(130, 'L', 'Đen ', 60),
(130, 'M', 'Đen ', 60),
(131, 'L', 'Đen ', 50),
(131, 'M', 'Đen ', 50),
(131, 'S', 'Đen ', 50),
(134, 'L', 'Tím', 50),
(134, 'M', 'Tím', 50),
(135, 'L', 'Trắng', 20),
(136, 'M', 'Xanh', 20),
(137, 'L', 'Trắng', 20),
(137, 'M', 'Trắng', 20),
(138, 'L', 'Trắng', 20),
(138, 'M', 'Trắng', 20),
(139, 'L', 'Xanh', 20),
(139, 'M', 'Xanh', 20),
(140, 'L', 'Tím', 20),
(140, 'M', 'Tím', 20),
(141, 'L', 'Xanh', 20),
(141, 'M', 'Xanh', 20),
(142, 'L', 'Xanh', 20),
(142, 'M', 'Xanh', 20),
(143, 'L', 'Nâu', 60),
(143, 'M', 'Nâu', 60),
(144, 'M', 'Nâu', 40),
(144, 'S', 'Nâu', 40),
(145, 'L', 'Nâu', 20),
(145, 'M', 'Nâu', 20),
(145, 'S', 'Nâu', 20),
(146, 'L', 'Xám', 40),
(146, 'M', 'Xám', 40),
(146, 'S', 'Xám', 40),
(147, 'L', 'Đen ', 50),
(147, 'M', 'Đen ', 50),
(147, 'S', 'Đen ', 50),
(148, 'L', 'Đen ', 50),
(148, 'M', 'Đen ', 50),
(148, 'S', 'Đen ', 50),
(149, 'L', 'Trắng', 50),
(149, 'M', 'Trắng', 50),
(149, 'S', 'Trắng', 50),
(150, 'L', 'Trắng', 50),
(150, 'M', 'Trắng', 50),
(150, 'S', 'Trắng', 50);

--
-- Bẫy `chitietsanpham`
--
DELIMITER $$
CREATE TRIGGER `tongsl` AFTER UPDATE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_del` AFTER DELETE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = OLD.MaSP) WHERE MaSP = OLD.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_insert` AFTER INSERT ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Sản Phẩm Nổi Bật'),
(2, 'Sản Phẩm Mới'),
(3, 'Sản Phẩm bán chạy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `NgayDat` datetime DEFAULT current_timestamp(),
  `NgayGiao` datetime DEFAULT NULL,
  `TinhTrang` varchar(20) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `MaNVGH` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SDT` bigint(12) NOT NULL,
  `DiaChi` text NOT NULL,
  `MatKhau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `SDT`, `DiaChi`, `MatKhau`) VALUES
(6, 'Nguyễn Nam Cường', 'cuong@gmail.com', 1228923743, 'diachi', '123456'),
(16, 'Nguyễn Doãn Tùng', 'nguyendoantung12345@gmail.com', 348008939, 'Quận 12 HCM', 'abc123'),
(1, 'Nguyễn Đình Trí', 'tringuyen25071998@gmail.com', 778923743, '62/32 trần thánh tông - tân bình - hcm', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(50) DEFAULT NULL,
  `MoTa` varchar(11) DEFAULT NULL,
  `KM_PT` int(5) DEFAULT NULL,
  `TienKM` decimal(10,0) DEFAULT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `MoTa`, `KM_PT`, `TienKM`, `NgayBD`, `NgayKT`) VALUES
(1, 'Tri Ân Khách Hàng', 'sale', 0, 50000, '2020-01-01', '2024-01-31'),
(3, 'Vui Xuân - Đón Tết ', NULL, 0, 100000, '2019-12-19', '2020-02-29'),
(4, 'Khuyến Mãi Đặc Biệt', NULL, 0, 100000, '2019-12-19', '2020-01-31'),
(5, 'khuyễn mãi đặc biệt trị giá 500.000 đ', 'ok', 1, 500000, '2020-01-02', '2020-01-04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `MaMau` varchar(50) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`MaMau`) VALUES
('Đen '),
('Đen - Trắng'),
('Đỏ'),
('Hồng'),
('Kem'),
('Nâu'),
('Tím'),
('Trắng'),
('Trắng -Xanh'),
('Xám'),
('Xanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoinhan`
--

CREATE TABLE `nguoinhan` (
  `MaHD` int(11) NOT NULL,
  `TenNN` varchar(50) NOT NULL,
  `DiaChiNN` text NOT NULL,
  `SDTNN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoinhan`
--

INSERT INTO `nguoinhan` (`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`) VALUES
(70, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(86, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(87, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(88, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(89, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacc`
--

CREATE TABLE `nhacc` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacc`
--

INSERT INTO `nhacc` (`MaNCC`, `TenNCC`) VALUES
(1, 'Đầm mới về'),
(2, 'Đầm váy'),
(3, 'Mẫu sắp về');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `SDT` int(12) NOT NULL,
  `DiaChi` text NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `Quyen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Email`, `SDT`, `DiaChi`, `MatKhau`, `Quyen`) VALUES
(3, 'Admin', 'admin@gmail.com', 905027527, 'Số 451 Hoàng Diệu - Thành phố Đà Nẵng', 'admin', 1),
(4, 'Hương Nhung', 'nhung@gmail.com', 132465798, 'Số 451 Hoàng Diệu - Thành phố Đà Nẵng', '123456', 3),
(2, 'Nhân Viên Bán Hàng ', 'NVBH@gmail.com', 123456789, 'Đà Nẵng', '123456', 4),
(1, 'Quản Lý', 'thongkul@gmail.com', 778923743, '12 núi thàng - đà nẵng', '123456', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieugiamgia`
--

CREATE TABLE `phieugiamgia` (
  `id` varchar(200) NOT NULL,
  `TenPhieu` varchar(200) NOT NULL,
  `SoTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieugiamgia`
--

INSERT INTO `phieugiamgia` (`id`, `TenPhieu`, `SoTien`) VALUES
('dinhtri', 'phiếu của đình trí ', 100000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `NgayNhap` datetime NOT NULL DEFAULT current_timestamp(),
  `Note` varchar(100) DEFAULT NULL,
  `Size` varchar(50) NOT NULL,
  `Mau` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `Mau` varchar(100) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `Note` varchar(500) NOT NULL,
  `NgayXuat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`MaPX`, `MaNV`, `MaSP`, `Mau`, `Size`, `SoLuong`, `DonGia`, `TongTien`, `Note`, `NgayXuat`) VALUES
(5, 3, 4, 'none', '36', 40, 1000000, 40000000, 'test', '2020-01-10 21:18:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` int(11) NOT NULL,
  `Ten` varchar(100) NOT NULL,
  `MoTa` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id`, `Ten`, `MoTa`) VALUES
(1, 'Manager', 'chủ cửa hàng'),
(2, 'Project Manager', 'quản trị viên'),
(3, 'Quản lý Kho', ''),
(4, 'Nhân viên Bán Hàng', ''),
(5, 'Nhân viên giao hàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `MaDM` int(11) DEFAULT NULL,
  `MaNCC` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT 0,
  `MoTa` text DEFAULT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `AnhNen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaDM`, `MaNCC`, `SoLuong`, `MoTa`, `DonGia`, `AnhNen`) VALUES
(119, 'Đầm len dài tay cổ tròn khoét vai kiểu Pháp Xiny D324230', 2, 1, 60, 'Chi tiết sản phẩm: Đầm len dài tay cổ tròn khoét vai kiểu Pháp Xiny D334230\r\n\r\n- Chất liệu: Len dệt kim\r\n\r\n- Đặc tính:\r\n\r\nPhần áo là len dệt kim sở hữu sự mềm mại mang đến sự thoải mái và dễ chịu cho làn da của người mặc, chất len đanh, không bai nhão, lên đầm chuẩn form, giữ ấm tốt. \r\nChân váy voan lụa tạo sự mềm mại, form rũ thoáng mát và nữ tính\r\n- Form dáng: Đầm Chữ A, khoét vai\r\n\r\n2. Màu sắc: Be ( Eo chun co giãn)\r\n\r\n3. Size đầm: S, M, L( Eo co giãn) \r\n\r\nS: Cân nặng<53kg, Vai: 34cm, Váy dài: 118cm, Ngực: 84cm, Eo: 68-72cm(Co giãn)\r\n\r\nM: Cân nặng <57kg, Vai: 35cm, Váy dài: 119cm, Ngực: 88cm: Eo: 72-76cm ( Co giãn)\r\n\r\nL: Cân nặng < 62kg, Vai: 36cm,  Váy dài: 120cm, Ngực: 92cm: Eo: 76-80cm (Co giãn)\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Giặt tay ở nhiệt độ không quá 30 độ C\r\n\r\n- Không được dùng hóa chất tẩy. \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 420000, 'D324230.jpg'),
(121, 'Set đầm 3 mảnh phối áo chân váy thu đông Xiny D316230', 1, 1, 60, 'Chi tiết sản phẩm: Set đầm 3 mảnh phối áo cardigan chân váy thu đông Xiny D316230\r\n\r\n- Chất liệu: Áo len 2 dây, áo len cardigan, chân váy voan lưới\r\n- Đặc tính:  Áo len 2 dây mềm mỏng, kết hợp cùng áo cardigan thích hợp cho mùa thu, chân váy voan lưới đính ngọc trai mềm mại và bồng bềnh\r\n\r\n- Set 3 món: Áo 2 dây, Áo khoác, Chân váy\r\n\r\n- Màu sắc: Xám \r\n\r\n3. Size đầm: S, M, L,XL  (Eo bo co giãn)\r\n\r\nS: Cân nặng<53kg, Ngực< 84cm, Eo:Áo/Váy: 72/68cm, vai: 36.5cm, Chiều dài váy: 94cm\r\n\r\nM: Cân nặng<57kg, Ngực< 88cm, Eo:Áo/Váy: 76/72cm, vai: 37.5cm, Chiều dài váy: 95cm\r\n\r\nL: Cân nặng<62kg, Ngực< 92cm, Eo:Áo/Váy: 80/76cm, vai: 38.5cm, Chiều dài váy: 96cm\r\n\r\nXL: Cân nặng < 65kg, Ngực< 96cm, Eo:Áo/Váy: 84/80cm, vai: 39.5cm, Chiều dài váy: 97cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Không được dùng hóa chất tẩy.  \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 499000, 'D316230.jpg'),
(127, 'Đầm cổ vuông ren hoa nổi kiểu pháp Xiny D259230', 3, 1, 150, 'Chi tiết sản phẩm: Đầm cổ vuông ren hoa nổi kiểu pháp Xiny D259230\r\n\r\n- Chất liệu: Ren \r\n- Đặc tính: Chất ren mềm mỏng, thoáng mát, mang đến nét nữ tính, dịu dàng cho các quý cô.\r\n\r\n-Form dáng: Đầm cổ vuông, xoè chữ A\r\n\r\n- Màu sắc: Be\r\n\r\n3. Size đầm: S, M, L,XL\r\n\r\nS: Cân nặng<53kg, Ngực: 88cm, Eo: 66cm, Chiều dài váy: 111cm\r\n\r\nM: Cân nặng <57kg, Ngực: 92cm, Eo:70cm, Chiều dài váy: 112cm\r\n\r\nL: Cân nặng < 62kg, Ngực: 96cm, Eo:74cm, chiều dài váy: 113cm\r\n\r\nXL: Cân nặng < 65kg, Ngực: 100cm, Eo:78cm, chiều dài váy: 114cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Không được dùng hóa chất tẩy. \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C \r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 385000, 'D259230.jpg'),
(128, 'Đầm sơ mi cổ V eo bản lớn Xiny D313230', 2, 1, 150, 'Chi tiết sản phẩm: Đầm sơ mi cổ V eo bản lớn Xiny D313230\r\n\r\n- Chất liệu: kate lụa\r\n- Đặc tính: Vải được dệt cho bề mặt vô cùng mềm mịn và thoải mái. Khi sờ vào cho cảm giác vô cùng êm dịu và thoải mái.\r\n- Form dáng: Form suông chữ A kèm belt\r\n\r\n2. Màu sắc: Trắng\r\n\r\n3. Size đầm: S, M, L, XL (Form suông rộng thoải mái nên bầu bí thoải mái)\r\n\r\nS: Cân nặng<53kg, Ngực<96cm, Chiều rộng vai: 37cm, Eo: 72cm, chiều dài váy: 113cm\r\n\r\nM: Cân nặng <56kg, Ngực<100cm, Chiều rộng vai: 38cm, Eo: 76cm, chiều dài váy: 114cm\r\n\r\nL: Cân nặng < 60kg, Ngực<104cm, Chiều rộng vai: 39cm, Eo: 80cm, chiều dài váy: 115cm\r\n\r\nXL: Cân nặng 65kg, Ngực<108cm, Chiều rộng vai: 40cm, Eo: 84cm, chiều dài váy: 116cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Giặt tay ở nhiệt độ không quá 30 độ C\r\n\r\n- Không được dùng hóa chất tẩy. \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 350000, 'D313230.jpg'),
(129, 'Chân váy voan hoa xếp ly thanh lịch Xiny D314230', 2, 1, 100, 'Chi tiết sản phẩm: Chân váy voan hoa xếp ly thanh lịch Xiny D314230\r\n\r\n- Chất liệu: Voan\r\n- Đặc tính:  Voan có đặc trưng mỏng nhẹ, rất thoáng mát khi mặc, khả năng thấm hút mồ hôi tốt.\r\n\r\n- Form dáng: Chân váy xòe xếp li\r\n\r\n- Màu sắc: Xanh khói\r\n\r\n3. Size đầm: S, M, L,XL ( Eo co giãn)\r\n\r\nS: Cân nặng<53kg, Eo: 64-68cm, Chiều dài váy: 81cm\r\n\r\nM: Cân nặng <57kg, Eo: 68-72cm, Chiều dài váy: 82cm\r\n\r\nL: Cân nặng < 62kg, Eo: 72-76cm, Chiều dài váy: 83cm\r\n\r\nXL: Cân nặng < 65kg, Eo: 76-80cm, Chiều dài váy: 84cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Không được dùng hóa chất tẩy.  \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 255000, 'D314230.jpg'),
(130, 'Đầm cotton thêu ren tay lỡ Xiny D308230', 3, 1, 120, '​​​​​Chi tiết sản phẩm: Đầm cotton thêu ren tay lỡ Xiny D308230\r\n\r\n- Chất liệu: Cotton thêu nổi\r\n- Đặc tính:  Chất vải mềm mịn, không co giãn, thấm hút mồ hôi tốt\r\n\r\n- Form dáng: Đầm chữ A có lót\r\n\r\n- Màu sắc: Trắng\r\n\r\n3. Size đầm: S, M, L,XL  (Eo bo co giãn)\r\n\r\nS: Cân nặng<53kg, Ngực: 90cm, Eo: 80cm, chiều dài váy: 112cm\r\n\r\nM: Cân nặng <57kg, Ngực< 94cm, Eo< 84cm(Có dây rút), chiều dài váy: 113cm\r\n\r\nL: Cân nặng < 62kg, Ngực<98cm, Eo< 88cm(Có dây rút), Chiều dài váy: 114cm\r\n\r\nXL: Cân nặng < 65kg, Ngực< 102cm, Eo<92cm(Có dây rút), Chiều dài quần:115cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Không được dùng hóa chất tẩy.  \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 399000, 'D308230.jpg'),
(131, 'Đầm kiểu pháp cổ bẻ thêu ren Xiny D318230', 1, 1, 150, 'Chi tiết sản phẩm: Đầm kiểu pháp cổ bẻ thêu ren Xiny D318230\r\n\r\n- Chất liệu: Đủi lụa\r\n\r\n- Đặc tính: Chất vải mềm mịn,thấm hút mồ hôi tốt, thoáng mát thích hợp mặc mùa hè. Vải đủi lụa có độ bóng nhất định và có sự nhăn nhẹ.\r\n- Form dáng: Form suông chữ A, chiết eo\r\n\r\n2. Màu sắc: Xanh bộ đội ( Eo chun co giãn)\r\n\r\n3. Size đầm: S, M, L, XL (Form suông rộng thoải mái nên bầu bí thoải mái)\r\n\r\nS: Cân nặng<53kg, Ngực<100cm, Chiều rộng vai: 36cm, chiều dài váy: 111cm\r\n\r\nM: Cân nặng <56kg, Ngực<104cm, Chiều rộng vai: 37cm, chiều dài váy: 112cm\r\n\r\nL: Cân nặng < 60kg, Ngực<108cm, Chiều rộng vai: 38cm,chiều dài váy: 113cm\r\n\r\nXL: Cân nặng 65kg, Ngực<112cm, Chiều rộng vai: 39cm, chiều dài váy: 114cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Giặt tay ở nhiệt độ không quá 30 độ C\r\n\r\n- Không được dùng hóa chất tẩy. \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 355000, 'D318230.jpg'),
(134, 'Áo ren hoa đũi lụa dài tay Xiny D294230', 1, 3, 100, 'Chi tiết sản phẩm: Áo ren hoa đũi lụa dài tay Xiny D294230\r\n\r\n- Chất liệu:Đủi lụa\r\n- Đặc tính:  Chất vải mềm mịn,thấm hút mồ hôi tốt, thoáng mát thích hợp mặc mùa hè. Vải đủi lụa có độ bóng nhất định và có sự nhăn nhẹ.\r\n\r\n- Form dáng: Áo sơ mi\r\n\r\n- Màu sắc: Tím\r\n\r\n3. Size đầm:S, M, L,XL \r\n\r\nS: Cân nặng<53kg, Ngực:96cm, Chiều rộng vai: 36m, Chiều dài áo:63cm\r\n\r\nM: Cân nặng<57kg, Ngực:100cm, Chiều rộng vai: 37cm, Chiều dài áo:64cm\r\n\r\nL: Cân nặng < 62kg,  Ngực:104cm, Chiều rộng vai: 38cm, Chiều dài áo:65cm\r\n\r\nXL: Cân nặng < 65kg, Ngực:108cm, Chiều rộng vai: 39cm, Chiều dài áo:66cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Không được dùng hóa chất tẩy.  \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 295000, 'D294230.jpg'),
(135, 'Đầm thun sát nách chân váy ren lưới mùa hè Xiny D284230', 2, 1, 60, ' Chi tiết sản phẩm: Đầm thun sát nách chân váy ren lưới mùa hè Xiny D284230\n\n- Chất liệu: Chân váy voan lưới, áo thun tăm\n- Đặc tính:  Đầm liền áo thun tăm chất mềm mịn, thoáng mát, thấm hút mồ hôi tốt kết hợp chân váy voan lưới có lót tạo nên nét dịu dàng nữ tính nhưng vẫn vô cùng năng động\n\n- Form dáng: Đầm xoè sát nách \n\n- Màu sắc: Đen \n\n3. Size đầm: S, M, L,XL  \n\nS: Cân nặng<53kg, Ngực: 74cm, Eo chun co giãn, Chiều dài váy: 99cm\n\nM: Cân nặng <57kg, Ngực< 78cm, Eo chun co giãn, Chiều dài váy: 100cm\n\nL: Cân nặng < 62kg, Ngực<82cm, Eo chun co giãn, Chiều dài váy: 101cm\n\nXL: Cân nặng < 65kg, Ngực< 86cm, Eo chun co giãn,Chiều dài váy:102cm\n\n* Phương pháp đo thủ công nên có thể size số 1-3cm\n\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc. \n\n4. Hướng dẫn sử dụng và bảo quản:\n- Không được dùng hóa chất tẩy.  \n\n- Phơi treo\n\n- Ủi với nhiệt độ không quá 110 độ C\n\n- Không sấy khô bằng máy\n\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 299000, 'D284230.jpg'),
(136, '\r\nĐầm voan hoa dài tay cổ bèo mùa hè Xiny D281230\r\n', 2, 2, 60, '​​​​​Chi tiết sản phẩm: Đầm voan hoa dài tay cổ bèo mùa hè Xiny D281230\n\n- Chất liệu: Voan có lót\n- Đặc tính: Đầm voan sẽ mang lại cảm giác mát mẻ, thông thoáng, toát lên vẻ sang trọng, dịu dàng cho người mặc. Thiết kế kèm belt chiết eo tạo điểm nhấn, che mọi khuyết điểm\n\n- Form dáng: Đầm suông kèm belt vải\n\n- Màu sắc: Hoa nhí xanh\n\n3. Size đầm: S, M, L,XL,XXL ( Đầm dáng suông không giới hạn eo)\n\nS: Cân nặng<53kg, Ngực: 104cm, chiều dài váy: 114cm\n\nM: Cân nặng <57kg, Ngực: 108cm, Chiều dài váy: 115,5cm\n\nL: Cân nặng < 62kg, Ngực: 112cm, chiều dài váy: 116cm\n\nXL: Cân nặng < 65kg,Ngực: 116cm, Chiều dài váy: 118,5cm\n\n* Phương pháp đo thủ công nên có thể size số 1-3cm\n\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\n\n4. Hướng dẫn sử dụng và bảo quản:\n- Không được dùng hóa chất tẩy. \n\n- Phơi treo\n\n- Ủi với nhiệt độ không quá 110 độ C\n\n- Không sấy khô bằng máy\n\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 380000, 'D281230.jpg'),
(137, '\r\nĐầm thêu ren trắng tay lỡ Xiny D270230\r\n', 2, 3, 60, ' ​​​​​Chi tiết sản phẩm: Đầm voan ren trắng tay lỡ Xiny D270230\n\n- Chất liệu: Cotton thêu nổi\n- Đặc tính:  Chất vải mềm mịn, không co giãn, thấm hút mồ hôi tốt\n\n- Form dáng: Đầm chữ A có lót\n\n- Màu sắc: Trắng\n\n3. Size đầm: S, M, L,XL  (Eo bo co giãn)\n\nS: Cân nặng<53kg, Ngực: 90cm, Eo: 80cm, chiều dài váy: 112cm\n\nM: Cân nặng <57kg, Ngực< 94cm, Eo< 84cm(Có dây rút), chiều dài váy: 113cm\n\nL: Cân nặng < 62kg, Ngực<98cm, Eo< 88cm(Có dây rút), Chiều dài váy: 114cm\n\nXL: Cân nặng < 65kg, Ngực< 102cm, Eo<92cm(Có dây rút), Chiều dài quần:115cm\n\n* Phương pháp đo thủ công nên có thể size số 1-3cm\n\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\n\n4. Hướng dẫn sử dụng và bảo quản:\n- Không được dùng hóa chất tẩy.  \n\n- Phơi treo\n\n- Ủi với nhiệt độ không quá 110 độ C\n\n- Không sấy khô bằng máy\n\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 399000, 'D270230.jpg'),
(138, '\r\nĐầm voan gân tà xéo tay cánh tiên thanh lịch Xiny D274230\r\n', 2, 3, 60, ' Chi tiết sản phẩm: Đầm voan gân tà xéo tay cánh tiên thanh lịch Xiny D272230\n\n- Chất liệu: Voan gân có lót satin\n- Đặc tính: Chất vải voan có sự nhẹ nhàng, nhìn rất mềm mại, giúp các nàng trở nên dịu dàng, bay bổng và cực thoải mái.\n- Form dáng: Váy xoè\n\n2. Màu sắc: Trắng\n\n3. Size đầm: S, M, L \n\nS: Cân nặng<53kg, eo < 68cm\n\nM: Cân nặng <57kg, eo< 72cm\n\nL: Cân nặng < 62kg, eo< 76cm\n\n* Phương pháp đo thủ công nên có thể size số 1-3cm \n\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\n\n4. Hướng dẫn sử dụng và bảo quản:\n- Giặt tay ở nhiệt độ không quá 30 độ C\n\n- Không được dùng hóa chất tẩy. \n\n- Phơi treo\n\n- Ủi với nhiệt độ không quá 110 độ C\n\n- Không sấy khô bằng máy\n\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 365000, 'D274230.jpg'),
(139, '\r\nĐầm ren xanh ngọc bích tay lỡ Xiny D300230\r\n', 2, 3, 60, ' - Chất liệu: Cotton thêu nổi\n- Đặc tính:  Chất vải mềm mịn, không co giãn, thấm hút mồ hôi tốt\n\n- Form dáng: Đầm chữ A có lót\n\n- Màu sắc: Xanh Ngọc Bích\n\n3. Size đầm: S, M, L,XL  (Eo bo co giãn)\n\nS: Cân nặng<53kg, Ngực: 90cm, Eo: 80cm, chiều dài váy: 112cm\n\nM: Cân nặng <57kg, Ngực< 94cm, Eo< 84cm(Có dây rút), chiều dài váy: 113cm\n\nL: Cân nặng < 62kg, Ngực<98cm, Eo< 88cm(Có dây rút), Chiều dài váy: 114cm\n\nXL: Cân nặng < 65kg, Ngực< 102cm, Eo<92cm(Có dây rút), Chiều dài quần:115cm\n\n* Phương pháp đo thủ công nên có thể size số 1-3cm\n\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\n\n4. Hướng dẫn sử dụng và bảo quản:\n- Không được dùng hóa chất tẩy.  \n\n- Phơi treo\n\n- Ủi với nhiệt độ không quá 110 độ C\n\n- Không sấy khô bằng máy\n\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 399000, 'D300230.jpg'),
(140, '\r\nĐầm midi cổ tròn tay bông màu trơn Xiny D279230\r\n', 2, 2, 60, ' ​​​​​Chi tiết sản phẩm: Đầm midi cổ tròn tay bông màu trơn Xiny D279230\n\n- Chất liệu: Đủi lụa\n- Đặc tính:  Chất vải mềm mịn,thấm hút mồ hôi tốt, thoáng mát thích hợp mặc mùa hè. Vải đủi lụa có độ bóng nhất định và có sự nhăn nhẹ.\n\n- Form dáng: Đầm midi, có chiết eo bo chun. \n\n- Màu sắc: Tím lavender\n\n3. Size đầm: S, M, L,XL,XXL\n\nS: Cân nặng<53kg, Eo<73cm (chun co giãn), Chiều dài váy: 112cm\n\nM: Cân nặng <57kg, Eo< 77cm(chun co giãn), Chiều dài váy: 113.5cm\n\nL: Cân nặng < 62kg, Eo< 82cm(chun co giãn), Chiều dài váy: 115cm\n\nXL: Cân nặng < 65kg,Eo<86cm (chun co giãn), Chiều dài váy: 116.5m\n\nXLL:Cân nặng < 70kg,Eo<90cm (chun co giãn), Chiều dài váy: 117m\n\n* Phương pháp đo thủ công nên có thể size số 1-3cm\n\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\n\n4. Hướng dẫn sử dụng và bảo quản:\n- Không được dùng hóa chất tẩy. \n\n- Phơi treo\n\n- Ủi với nhiệt độ không quá 110 độ C\n\n- Không sấy khô bằng máy\n\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 399000, 'D279230.jpg'),
(141, '\r\nĐầm sơ mi tay lỡ cổ V đính cúc thanh lịch Xiny D179230\r\n', 2, 2, 60, 'Chi tiết sản phẩm: Đầm sơ mi tay lỡ cổ V  Xiny D179230\n\n- Chất liệu: Vải kate Lụa\n\n- Đặc tính: Chất vải mềm mịn, không thô cứng, không kích ứng với mọi loại da. Ngoài ra thấm hút mồ hôi tốt, tạo các giác thoáng mát khi mặc mùa hè, vải có độ bền cao, không nhăn, giữ form tốt.\n\n- Form dáng: Form chữ A, có chiết eo, kèm belt vải đen\n\n2. Màu sắc: Xanh đậm\n\n3. Size đầm: S, M, L, XL\n\nS: Cân nặng<53kg, eo: 66-70cm\nM: Cân nặng <57kg, eo: 70-74cm\nL: Cân nặng < 62kg, eo: 74-78cm\nXL: Cân nặng <70kg, eo 78-82cm\n* Phương pháp đo khác nhau nên có thể sai số 1-3cm\n\n4. Hướng dẫn sử dụng và bảo quản:\n\n- Giặt ở nhiệt độ không quá 30 độ C\n\n- Không được dùng hóa chất tẩy. \n\n- Có thể ủi ở nhiệt độ tối đa 100 độ C\n\n- Có thể giặt khô\n\n- Không sấy khô bằng máy\n\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 370000, 'D179230.jpg'),
(142, '\r\nĐầm voan chấm bi phối belt Xiny D178230\r\n', 2, 2, 60, ' Chi tiết sản phẩm: Đầm voan hoa nhí phối belt Xiny D178230\n\n- Chất liệu: Vải voan có lớp lót lụa\n\n- Đặc tính: Chất vải thoáng mát tạo cảm giác vô cùng thoải mái, vì vậy chiếc váy mang lại đồ phồng và nữ tính khi mặc.\n\n- Form dáng: Form suông chữ A, kèm belt\n\n2. Màu sắc: Xanh chấm bi\n\n3. Size đầm: S, M, L ( Đầm dáng xuông nên eo các chị có thể + 2-3cm nha)\n\nS: Cân nặng<53kg, eo: 62-65cm\nM: Cân nặng <57kg, eo: 66-70cm\nL: Cân nặng < 62kg, eo: 72-78cm\nBầu bí có thể bon chen được\n\n4. Hướng dẫn sử dụng và bảo quản:\n\n- Giặt ở nhiệt độ không quá 30 độ C\n\n- Không được dùng hóa chất tẩy. \n\n- Có thể ủi ở nhiệt độ tối đa 100 độ C\n\n- Có thể giặt khô\n\n- Không sấy khô bằng máy\n\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 399000, 'D178230.jpg'),
(143, 'Đầm voan suông cộc tay phối belt da Xiny D215230', 1, 2, 120, 'Chi tiết sản phẩm: Đầm voan suông cộc tay phối belt da Xiny D215230\r\n\r\n- Chất liệu: Voan có lót\r\n\r\n- Đặc tính: Đầm voan sẽ mang lại cảm giác mát mẻ, thông thoáng, toát lên vẻ sang trọng, dịu dàng cho người mặc. Thiết kế kèm belt chiết eo tạo điểm nhấn và vô cùng tôn dáng.\r\n\r\n- Form dáng: Dáng suông kèm belt\r\n\r\n2. Màu sắc: Hồng đất\r\n\r\n3. Size đầm: S, M, L (Đầm này form suông bầu bí có thể bon chen được nha)\r\n\r\nM: Cân nặng <57kg, Ngực <86cm, Độ dài váy: 110-112cm\r\nL: Cân nặng < 62kg, Ngực <90cm, Độ dài váy: 111-113cm\r\nXL: Cân nặng <70kg, Ngực< 94cm, Độ dài váy: 112-114cm \r\n* Vì Kích thước đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể chênh lệch về màu sắc\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n\r\n- Giặt tay ở nhiệt độ <40 độ C\r\n\r\n- Không vắt\r\n\r\n- Phơi nhỏ giọt\r\n\r\n- Không được dùng hóa chất tẩy. \r\n\r\n- Phơi treo thẳng\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 325000, 'D215230.jpg'),
(144, 'Chia sẻ Chân váy công sở xoè nâu tây Xiny D177230', 1, 2, 80, '​​​​​Chi tiết sản phẩm: Chân váy công sở xoè nâu tây Xiny D177230\r\n\r\n- Chất liệu: Kaki Dạ\r\n\r\n- Đặc tính: Vải mềm, độ bền cao, không bai xù, ít thấm nước và giữ form dáng tốt\r\n\r\n- Form dáng: Chân váy chữ A\r\n\r\n2. Màu sắc: Nâu cà phê\r\n\r\n3. Size đầm: S, M, L, XL (Eo bo chun nên các chị có thể + 2-4cm nha)\r\n\r\nS: Vòng eo: 60-68cm, Chiều dài váy: 72cm\r\nM: Vòng eo: 62-74cm, Chiều dài váy: 73cm\r\nL: Vòng eo: 74-78cm, Chiều dài váy: 74cm\r\nXL: Vòng eo: 78-82cm, Chiều dài váy: 75cm\r\n*Lưu ý: Phương pháp đo thủ công nên có thể sai số 1-3cm\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n\r\n- Giặt tay ở nhiệt độ không quá 40 độ\r\n\r\n- Không Tẩy\r\n\r\n- Phơi trong mát\r\n\r\n- Ủi nhiệt độ tối đa 110 độ C\r\n\r\n- Không sấy khô bằng máy.\r\n\r\n- Có thể giặt khô\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu', 199000, 'D177230.jpg'),
(145, 'Chia sẻ Đầm dài tay cổ V thanh lịch Xiny D140230', 1, 2, 60, 'Đầm dài tay cổ V thanh lịch Xiny D140230\r\nChất: tổng hợp\r\nThiết kế dài tay cổ V đính cúc', 325000, 'D140230.jpg'),
(146, 'Chia sẻ Đầm voan xếp li tay lỡ thanh lịch Xiny D182230', 1, 2, 120, 'Chi tiết sản phẩm: Đầm voan xếp li tay lỡ thanh lịch Xiny D182230\r\n\r\n- Chất liệu: Voan\r\n- Đặc tính: Váy đầm thiết kế vải voan nhẹ nhàng, mềm mát, form rũ rất dịu dàng và nữ tính, đầm chiết eo vô cùng tôn dáng\r\n\r\n- Form dáng: Đầm suông kèm belt vải chiết eo\r\n\r\n2. Màu sắc: Xám\r\n\r\n3. Size đầm: S, M, L,XL (Đầm suông nên eo thoải mái, bầu bí bon chen thoải mái ạ)\r\n\r\nS: Cân nặng<53kg, Eo< 66cm Ngực: 84cm, chiều dài váy: 122cm\r\n\r\nM: Cân nặng <57kg, Eo<70cm, Ngực< 88cm, chiều dài váy: 123cm\r\n\r\nL: Cân nặng < 62kg, Eo< 74cm Ngực<92cm, chiều dài váy: 124cm\r\n\r\nXL: Cân nặng< 66kg,Eo<78cm, Ngực<96cm, chiều dài váy: 125cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Giặt tay ở nhiệt độ không quá 40 độ C\r\n\r\n- Không được dùng hóa chất tẩy. \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 150 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 350000, 'D182230.jpg'),
(147, 'Chia sẻ Đầm maxi cổ V ren hoa nhí kiểu Pháp Xiny D278230', 1, 3, 150, 'Chi tiết sản phẩm: Đầm maxi cổ V ren hoa nhí kiểu Pháp Xiny D278230\r\n\r\n- Chất liệu: Voan kính\r\n- Đặc tính: Ngoài tính chất đặc trưng là mỏng nhẹ, voan kính còn mang đến sự óng ả và khiến những sản phẩm trở nên sang trọng, thu hút hơn.\r\n\r\n- Form dáng: Đầm maxi cổ V\r\n\r\n2. Màu sắc: Đen\r\n\r\n3. Size đầm: S, M, L,XL \r\n\r\nS: Cân nặng<53kg, Ngực: 85cm, Eo: 66-70cm, chiều dài váy: 125cm\r\n\r\nM: Cân nặng <57kg, Ngực: 89cm, Eo: 70-74cm, chiều dài váy: 126cm\r\n\r\nL: Cân nặng < 62kg, Ngực<93cm, Eo:74-78cm, chiều dài váy: 127cm \r\n\r\nXL: Cân nặng < 65kg, Ngực<97cm, Eo:78-82cm, Chiều dài váy: 128cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Không được dùng hóa chất tẩy. \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 399000, 'D278230.jpg'),
(148, 'Đầm body tay cánh tiên chấm bi cổ điển Xiny D271230', 3, 3, 150, 'Chi tiết sản phẩm: Đầm body tay cánh tiên chấm bi cổ điển Xiny D271230\r\n\r\n- Chất liệu: Thun lạnh phối ren\r\n- Đặc tính: Vải mềm mịn, trơn bóng, khi sờ tay vào mát lạnh. Khi mặc các trang phục vải thun lạnh sẽ rất thoải mái, nhờ khả thấm hút tốt, cũng không lo bị dính bết lên cơ thể.\r\n\r\n-Form dáng: Đầm suông kèm belt vải \r\n\r\n- Màu sắc: Đen\r\n\r\n3. Size đầm: S, M, L( Đầm dáng suông không giới hạn eo)\r\n\r\nS: Cân nặng<53kg, Ngực: 86cm, Eo: 66-70cm, chiều dài váy: 102cm\r\n\r\nM: Cân nặng <57kg, Ngực: 90cm, Eo: 70-74cm, Chiều dài váy: 103cm\r\n\r\nL: Cân nặng < 62kg, Ngực: 94cm, Eo: 74-77cm, chiều dài váy: 104cm\r\n\r\nXL: Cân nặng<65kg, Ngực: 98cm, Eo: 77-81cm, Chiều dài váy: 105cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Không được dùng hóa chất tẩy. \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 450000, 'D271230.jpg'),
(149, 'Đầm ren hoa nổi cổ V Xiny D23023', 1, 3, 150, 'Chi tiết sản phẩm: Đầm ren hoa nổi cổ V Xiny D23023\r\n\r\n- Chất liệu: Cotton Ren\r\n- Đặc tính: Chất liệu cotton thoáng mát kết hợp với ren trắng đại diện cho sự tinh khôi, mềm mại, mang đến nét nữ tính, dịu dàng cho các quý cô.\r\n- Form dáng: Xoè chữ A, Cổ V\r\n\r\n2. Màu sắc:Trắng\r\n\r\n3. Size đầm: S, M, L\r\nS: Cân nặng<53kg, Eo<68cm, Ngực<86cm, váy dài: 116cm\r\nM: Cân nặng <57kg, Eo<72cm, Ngực<90cm, Váy dài: 117cm\r\nL: Cân nặng< 60kg, Eo<76cm, Ngực<94cm, Váy dài:118cm \r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên màu sắc có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Không được dùng hóa chất tẩy. \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu', 399000, 'D23023.jpg'),
(150, 'Áo ren hoa đũi lụa dài tay Xiny D325230', 2, 3, 150, 'Chi tiết sản phẩm: Áo ren hoa đũi lụa dài tay Xiny D325230\r\n\r\n- Chất liệu:Đủi lụa\r\n- Đặc tính:  Chất vải mềm mịn,thấm hút mồ hôi tốt, thoáng mát thích hợp mặc mùa hè. Vải đủi lụa có độ bóng nhất định và có sự nhăn nhẹ.\r\n\r\n- Form dáng: Áo sơ mi\r\n\r\n- Màu sắc: Trắng\r\n\r\n3. Size đầm:S, M, L,XL \r\n\r\nS: Cân nặng<53kg, Ngực:96cm, Chiều rộng vai: 36m, Chiều dài áo:63cm\r\n\r\nM: Cân nặng<57kg, Ngực:100cm, Chiều rộng vai: 37cm, Chiều dài áo:64cm\r\n\r\nL: Cân nặng < 62kg,  Ngực:104cm, Chiều rộng vai: 38cm, Chiều dài áo:65cm\r\n\r\nXL: Cân nặng < 65kg, Ngực:108cm, Chiều rộng vai: 39cm, Chiều dài áo:66cm\r\n\r\n* Phương pháp đo thủ công nên có thể size số 1-3cm\r\n\r\n* Do ánh sáng nên có thể có sự chênh lệch màu sắc.\r\n\r\n4. Hướng dẫn sử dụng và bảo quản:\r\n- Không được dùng hóa chất tẩy.  \r\n\r\n- Phơi treo\r\n\r\n- Ủi với nhiệt độ không quá 110 độ C\r\n\r\n- Không sấy khô bằng máy\r\n\r\n- Lộn mặt trong của váy ra ngoài khi phơi tránh bị phai màu ', 295000, 'D325230.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `MaSP` int(11) NOT NULL,
  `MaKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamkhuyenmai`
--

INSERT INTO `sanphamkhuyenmai` (`MaSP`, `MaKM`) VALUES
(119, 1),
(127, 1),
(129, 1),
(131, 1),
(134, 3),
(136, 3),
(138, 3),
(141, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `MaSize` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`MaSize`) VALUES
('L'),
('M'),
('S'),
('XL');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`,`MaSP`,`MaKH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`,`Size`,`MaMau`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `Size` (`Size`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MaSP`,`MaSize`,`MaMau`),
  ADD KEY `MaSize` (`MaSize`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`MaMau`);

--
-- Chỉ mục cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaNV` (`MaNV`),
  ADD KEY `Quyen` (`Quyen`);

--
-- Chỉ mục cho bảng `phieugiamgia`
--
ALTER TABLE `phieugiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MauSP` (`MaSP`),
  ADD KEY `Mau` (`Mau`),
  ADD KEY `Size` (`Size`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Chỉ mục cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD PRIMARY KEY (`MaSP`,`MaKM`),
  ADD KEY `MaKH` (`MaKM`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`MaSize`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `MaPX` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
