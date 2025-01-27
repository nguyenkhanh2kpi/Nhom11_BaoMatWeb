CREATE DATABASE BookStore
GO

USE [BookStore]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 12/17/2022 12:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[TongTien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 12/17/2022 12:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[MaLoai] [int] NULL,
	[TenDM] [nvarchar](50) NULL,
	[isDeleted] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/17/2022 12:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[MaGH] [int] NULL,
	[TongTien] [int] NULL,
	[ThoiGian] [date] NULL,
	[MaTrangThai] [int] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[NgayNhanHang] [date] NULL,
	[PhuongThucThanhToan] [int] NULL,
	[TenNguoiNhan] [nvarchar](100) NULL,
	[SoDienThoai] [nchar](10) NULL,
	[Email] [nvarchar](100) NULL,
 CONSTRAINT [PK__DonHang__272586613E74F270] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/17/2022 12:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[TenTK] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MK] [nvarchar](100) NULL,
	[NNMK] [nvarchar](100) NULL,
	[IsVerify] [int] NULL,
	[IsUser] [int] NULL,
	[IsAdmin] [int] NULL,
	[IsShiper] [int] NULL,
 CONSTRAINT [PK__KhachHan__2725CF1EE5CD86E5] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 12/17/2022 12:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/17/2022 12:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaDM] [int] NULL,
	[TenSP] [nvarchar](100) NULL,
	[MoTa] [nvarchar](4000) NULL,
	[GiaGoc] [int] NULL,
	[GiaBanThuong] [int] NULL,
	[GiaKhuyenMai] [int] NULL,
	[SoLuong] [int] NULL,
	[Anh] [nvarchar](100) NULL,
	[MoTaNgan] [nvarchar](4000) NULL,
	[isDeleted] [int] NULL,
	[SoLuongDaBan] [int] NULL,
 CONSTRAINT [PK__SanPham__2725081C41C3F363] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThai]    Script Date: 12/17/2022 12:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThai](
	[MaTrangThai] [int] IDENTITY(1,1) NOT NULL,
	[TenTrangThai] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (19, 28, 1, 110000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (20, 28, 1, 110000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (66, 27, 1, 110000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (68, 28, 1, 110000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (69, 34, 1, 21000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (71, 41, 1, 150000)
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaSP], [SoLuong], [TongTien]) VALUES (72, 41, 1, 150000)
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (1, 4, N'Tiểu thuyết', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (2, 3, N'Truyện', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (3, 5, N'Tâm lý học', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (4, 6, N'Đời sống', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (5, 1, N'Chính trị xã hội', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (6, 2, N'Khoa học và đời sống', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (7, 7, N'Văn học ', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (8, 1, N'Tư tưởng', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (9, 1, N'Tư tưởng', 1)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (10, 1, N'fa', 1)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (11, 1, N'as', 1)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (12, 1, N'Lịch sử đảng', 0)
INSERT [dbo].[DanhMuc] ([MaDM], [MaLoai], [TenDM], [isDeleted]) VALUES (13, 3, N'OnePiece', 0)
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (19, 23, NULL, 110000, CAST(N'2022-11-30' AS Date), 4, N'', CAST(N'2022-12-14' AS Date), 0, N'', N'          ', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (20, 23, NULL, 110000, CAST(N'2022-11-30' AS Date), 4, N'', CAST(N'2022-12-14' AS Date), 0, N'', N'          ', N'')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (66, 21, NULL, 110000, CAST(N'2022-12-02' AS Date), 2, N'10 gò Xoài Phường BHH A quận Bình Tân, TP.HCM', NULL, 0, N'quan', N'0385542672', N'cobedt1234@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (68, 21, NULL, 110000, CAST(N'2022-12-04' AS Date), 2, N'10 Go Xoai', NULL, 0, N'Nguyễn Vũ Minh Quân', N'0385542672', N'cobedt123@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (69, 21, NULL, 21000, CAST(N'2022-12-13' AS Date), 2, N'10 gò Xoài Phường BHH A quận Bình Tân, TP.HCM', NULL, 0, N'quan', N'0385542672', N'c@gmail.com')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (71, 28, NULL, 150000, CAST(N'2022-12-13' AS Date), 5, N'10 gò Xoài Phường BHH A quận Bình Tân, TP.HCM', NULL, 0, N'cv', N'0923021322', N'khoakhaukhinh@gmail.com                   ')
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [MaGH], [TongTien], [ThoiGian], [MaTrangThai], [DiaChi], [NgayNhanHang], [PhuongThucThanhToan], [TenNguoiNhan], [SoDienThoai], [Email]) VALUES (72, 25, NULL, 150000, CAST(N'2022-12-14' AS Date), 5, N'10 gò Xoài Phường BHH A quận Bình Tân, TP.HCM', CAST(N'2022-12-14' AS Date), 0, N'Nguyễn Vũ Minh Quyen', N'0385542672', N'cobedt1234@gmail.com')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (21, N'Nguyễn Vũ Minh Quân', N'quan21112002', N'cobedt123@gmail.com', N'0385542672', N'10 Go Xoai', N'Thanhmy123', N'Thanhmy123', 1, 1, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (23, N'quan', N'quan', NULL, NULL, NULL, N'1', N'1', 1, 1, 1, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (25, N'Nguyễn Vũ Minh Quyen', N'quan211120021234', N'cobedt1234@gmail.com', N'0385542672', NULL, N'1', N'1', 1, 1, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (26, N'Nguyễn Vũ Minh Quân', N'long', N'cobedt1234@gmail.com', N'0385542672', NULL, N'1', N'1', 1, 1, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (27, N'cuong', NULL, N'123', N'03855426734', N'10 gò Xoài Phường BHH A quận Bình Tân, TP.HCM', NULL, NULL, NULL, 0, 0, 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [TenTK], [Email], [Phone], [DiaChi], [MK], [NNMK], [IsVerify], [IsUser], [IsAdmin], [IsShiper]) VALUES (28, N'cv', NULL, N'khoakhaukhinh@gmail.com                   ', N'0923021322', N'10 gò Xoài Phường BHH A quận Bình Tân, TP.HCM', NULL, NULL, NULL, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (1, N'Chính trị')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (2, N'Khoa Học')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (3, N'Thiếu nhi')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (4, N'Tiểu Thuyết')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (5, N'Tâm Lý')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (6, N'Sefl Help')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (7, N'Văn Học')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (23, 1, N'Harry Potter và viên đá phù thủy ', N'<p>Đ&acirc;y l&agrave; cuốn đầu trong loạt tiểu thuyết Harry Potter v&agrave; l&agrave; tiểu thuyết đầu tay của J. K. Rowling. Nội dung s&aacute;ch kể về Harry Potter, một ph&ugrave; thủy thiếu ni&ecirc;n chỉ biết về tiềm năng ph&eacute;p thuật của m&igrave;nh sau khi nhận thư mời nhập học tại Học viện Ma thuật v&agrave; Ph&aacute;p thuật Hogwarts v&agrave;o đ&uacute;ng v&agrave;o dịp sinh nhật thứ mười một</p>', 100000, 120000, 110000, 20, N'shop-cart/assets/img/harrypotter.jpg', N'<p>Cuộc h&agrave;nh tr&igrave;nh của Harry v&agrave; những người bạn</p>
<p>&nbsp;</p>', 0, 11)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (24, 2, N'Doraemon tập 1', N'<p>Ch&agrave;o mừng tất cả c&aacute;c bạn đ&atilde; đến với bộ truyện tranh nổi tiếng Doremon, c&acirc;u chuyện về ch&uacute; m&egrave;o m&aacute;y th&ocirc;ng m&igrave;nh v&agrave; cậu b&eacute; Nobita hậu đậu nhưng tốt bụng. D&ugrave; bạn l&agrave; trẻ em hay đ&atilde; trưởng th&agrave;nh rồi th&igrave; chắc chắn, ch&uacute; &egrave;o &uacute; th&ocirc;ng minh với những bảo bối thần kỳ đ&atilde; trở th&agrave;nh một phần tuổi thơ kh&ocirc;ng thể thiếu với mỗi người. Vậy c&aacute;c bạn c&oacute; nhớ Doremon đ&atilde; đến với Nobita như thế n&agrave;o kh&ocirc;ng?</p>', 100000, 120000, 110000, 40, N'shop-cart/assets/img/Doraemon1.jpg', N'<p>Tập truyện về cuộc gặp gỡ giữa Nobita v&agrave; Doraemon</p>
<p>&nbsp;</p>', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (25, 2, N'Doraemon tập 2', N'<div class="wp-content">
<p>Những c&acirc;u chuyện về ch&uacute; m&egrave;o m&aacute;y th&ocirc;ng minh Doraemon v&agrave; nh&oacute;m bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa ch&uacute;ng ta bước v&agrave;o thế giới hồn nhi&ecirc;n, trong s&aacute;ng đầy ắp tiếng cười với một kho bảo bối k&igrave; diệu - những bảo bối biến ước mơ của ch&uacute;ng ta th&agrave;nh sự thật. Nhưng tr&ecirc;n tất cả Doraemon l&agrave; hiện th&acirc;n của t&igrave;nh bạn cao đẹp, của niềm kh&aacute;t khao vươn tới những tầm cao.</p>
<p><strong>Những bảo bối xuất hiện lần đầu:</strong>&nbsp;<u>B&aacute;nh m&igrave; gi&uacute;p tr&iacute; nhớ</u>,&nbsp;<u>Roboko</u>, Đ&egrave;n kinh dị, Chu&ocirc;ng giấc mơ,&nbsp;<u>Taro trung thực</u>, Dải lụa bồng bềnh, Gương dối tr&aacute;,&nbsp;<u>Khăn tr&ugrave;m thời gian</u>, Bộ đồ nghề "b&oacute;i đ&acirc;u tr&uacute;ng đ&oacute;",&nbsp;<u>Đ&egrave;n &aacute;nh trăng</u>,&nbsp;<u>Huy hiệu nam ch&acirc;m N-S</u>, T&agrave;u th&aacute;m hiểu l&ograve;ng đất, Bộ dụng cụ "Chủ nhật giải tr&iacute; với nh&agrave;", Mặt trời nh&acirc;n tạo (nằm trong bộ bảo bối), M&aacute;y truyền cảm, B&atilde;i trượt tuyết mini, M&aacute;y thu nhỏ tế b&agrave;o, Th&ugrave;ng thư nhận trước hồi &acirc;m.</p>
</div>', 100000, 120000, 110000, 30, N'shop-cart/assets/img/Doraemon2.jpg', N'<p>C&acirc;u chuyện nối tiếp cuộc gặp gỡ Nobita v&agrave; Doraemon</p>', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (26, 13, N'OnePiece tập 1', N'<p>Sau khi được đồng đội gi&uacute;p cản ch&acirc;n lũ quản l&iacute;, cuối c&ugrave;ng Luffy đ&atilde; l&ecirc;n được s&acirc;n thượng v&agrave; chạm mặt Kaido!? Trong khi đ&oacute;, đ&aacute;m l&acirc;u la b&ecirc;n dưới sảnh tr&igrave;nh diễn vẫn kh&ocirc;ng ngừng th&aacute;ch chiến&hellip; C&ocirc;ng cuộc chinh phạt lớn chưa từng thấy tại đảo Quỷ vẫn đang n&oacute;ng hơn bao giờ hết!!<br>Những chuyến phi&ecirc;u lưu tr&ecirc;n đại dương xoay quanh &ldquo;ONE PIECE&rdquo; lại bắt đầu!!</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 100000, 120000, 110000, 50, N'shop-cart/assets/img/OnePiece.jpg', N'<p>H&agrave;nh tr&igrave;nh trở th&agrave;nh vua hải tặc</p>', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (27, 1, N'Nhà giả kim', N'<p>Tất cả những trải nghiệm trong chuyến phi&ecirc;u du theo đuổi vận mệnh của m&igrave;nh đ&atilde; gi&uacute;p Santiago thấu hiểu được &yacute; nghĩa s&acirc;u xa nhất của hạnh ph&uacute;c, h&ograve;a hợp với vũ trụ v&agrave; con người.</p>
<p>Tiểu thuyết&nbsp;<strong>Nh&agrave; giả kim&nbsp;</strong>của&nbsp;<strong>Paulo Coelho&nbsp;</strong>như một c&acirc;u chuyện cổ t&iacute;ch giản dị, nh&acirc;n &aacute;i, gi&agrave;u chất thơ, thấm đẫm những minh triết huyền b&iacute; của phương Đ&ocirc;ng. Trong lần xuất bản đầu ti&ecirc;n tại Brazil v&agrave;o năm 1988, s&aacute;ch chỉ b&aacute;n được 900 bản. Nhưng, với số phận đặc biệt của cuốn s&aacute;ch d&agrave;nh cho to&agrave;n nh&acirc;n loại, vượt ra ngo&agrave;i bi&ecirc;n giới quốc gia,&nbsp;<strong>Nh&agrave; giả kim&nbsp;</strong>đ&atilde; l&agrave;m rung động h&agrave;ng triệu t&acirc;m hồn, trở th&agrave;nh một trong những cuốn s&aacute;ch b&aacute;n chạy nhất mọi thời đại, v&agrave; c&oacute; thể l&agrave;m thay đổi cuộc đời người đọc.</p>
<p>&ldquo;Nhưng nh&agrave; luyện kim đan kh&ocirc;ng quan t&acirc;m mấy đến những điều ấy. &Ocirc;ng đ&atilde; từng thấy nhiều người đến rồi đi, trong khi ốc đảo v&agrave; sa mạc vẫn l&agrave; ốc đảo v&agrave; sa mạc. &Ocirc;ng đ&atilde; thấy vua ch&uacute;a v&agrave; kẻ ăn xin đi qua biển c&aacute;t n&agrave;y, c&aacute;i biển c&aacute;t thường xuy&ecirc;n thay h&igrave;nh đổi dạng v&igrave; gi&oacute; thổi nhưng vẫn m&atilde;i m&atilde;i l&agrave; biển c&aacute;t m&agrave; &ocirc;ng đ&atilde; biết từ thuở nhỏ. Tuy vậy, tự đ&aacute;y l&ograve;ng m&igrave;nh, &ocirc;ng kh&ocirc;ng thể kh&ocirc;ng cảm thấy vui trước hạnh ph&uacute;c của mỗi người lữ kh&aacute;ch, sau bao ng&agrave;y chỉ c&oacute; c&aacute;t v&agrave;ng với trời xanh nay được thấy ch&agrave; l&agrave; xanh tươi hiện ra trước mắt. &lsquo;C&oacute; thể Thượng đế tạo ra sa mạc chỉ để cho con người biết qu&yacute; trọng c&acirc;y ch&agrave; l&agrave;,&rsquo; &ocirc;ng nghĩ.&rdquo;</p>', 100000, 120000, 110000, 0, N'shop-cart/assets/img/nhagiakim.jpg', N'<p>Một c&acirc;u chuyện phi&ecirc;u lưu&nbsp;</p>', 0, 2)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (28, 6, N'Đắc nhân tâm', N'<p><strong>Đắc nh&acirc;n t&acirc;m của</strong>&nbsp;Dale Carnegie l&agrave; quyển s&aacute;ch nổi tiếng nhất, b&aacute;n chạy nhất v&agrave; c&oacute; tầm ảnh hưởng nhất của mọi thời đại. T&aacute;c phẩm đ&atilde; được chuyển ngữ sang hầu hết c&aacute;c thứ tiếng tr&ecirc;n thế giới v&agrave; c&oacute; mặt ở h&agrave;ng trăm quốc gia. Đ&acirc;y l&agrave; quyển s&aacute;ch duy nhất về thể loại self-help li&ecirc;n tục đứng đầu danh mục s&aacute;ch b&aacute;n chạy nhất (best-selling Books) do b&aacute;o The New York Times b&igrave;nh chọn suốt 10 năm liền.</p>
<p>Ri&ecirc;ng bản tiếng Anh của s&aacute;ch đ&atilde; b&aacute;n được hơn 15 triệu bản tr&ecirc;n thế giới. T&aacute;c phẩm c&oacute; sức lan toả v&ocirc; c&ugrave;ng rộng lớn - d&ugrave; bạn đi đến bất cứ đ&acirc;u, bất kỳ quốc gia n&agrave;o cũng đều c&oacute; thể nh&igrave;n thấy. T&aacute;c phẩm được đ&aacute;nh gi&aacute; l&agrave; quyển s&aacute;ch đầu ti&ecirc;n v&agrave; hay nhất, c&oacute; ảnh hưởng l&agrave;m thay đổi cuộc đời của h&agrave;ng triệu người tr&ecirc;n thế giới.</p>
<p>Kh&ocirc;ng c&ograve;n nữa kh&aacute;i niệm giới hạn Đắc Nh&acirc;n T&acirc;m l&agrave; nghệ thuật thu phục l&ograve;ng người, l&agrave; l&agrave;m cho tất cả mọi người y&ecirc;u mến m&igrave;nh. Đắc nh&acirc;n t&acirc;m v&agrave; c&aacute;i T&agrave;i trong mỗi người ch&uacute;ng ta. Đắc Nh&acirc;n T&acirc;m trong &yacute; nghĩa đ&oacute; cần được thụ đắc bằng sự hiểu r&otilde; bản th&acirc;n, th&agrave;nh thật với ch&iacute;nh m&igrave;nh, hiểu biết v&agrave; quan t&acirc;m đến những người xung quanh để nh&igrave;n ra v&agrave; khơi gợi những tiềm năng ẩn khuất nơi họ, gi&uacute;p họ ph&aacute;t triển l&ecirc;n một tầm cao mới. Đ&acirc;y ch&iacute;nh l&agrave; nghệ thuật cao nhất về con người v&agrave; ch&iacute;nh l&agrave; &yacute; nghĩa s&acirc;u sắc nhất đ&uacute;c kết từ những nguy&ecirc;n tắc v&agrave;ng của Dale Carnegie.</p>', 35000, 40000, 37000, 15, N'shop-cart/assets/img/dacnhantam.jpg', N'<p>B&agrave;i học về cuộc sống</p>', 0, 4)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (29, 3, N'Bản chất của dối trá', N'<p>Hầu hết ch&uacute;ng ta đều nghĩ m&igrave;nh trung thực, nhưng, tr&ecirc;n thực tế, tất cả ch&uacute;ng ta đều dối tr&aacute;. Từ Washington đến Phố Wall, từ lớp học đến nơi l&agrave;m việc, h&agrave;nh vi phi đạo đức xuất hiện ở khắp mọi nơi. Kh&ocirc;ng ai trong ch&uacute;ng l&agrave; ngoại lệ, cho d&ugrave; đ&oacute; l&agrave; một lời n&oacute;i kh&ocirc;ng g&acirc;y hại (white lie) đến c&aacute;c b&aacute;o c&aacute;o t&agrave;i ch&iacute;nh gian lận.<br><br>Trong cuốn s&aacute;ch Bản chất của dối tr&aacute;, cuốn s&aacute;ch từng đoạt giải thưởng lớn - t&aacute;c giả s&aacute;ch b&aacute;n chạy nhất, Dan Ariely cho thấy tại sao một số điều dễ n&oacute;i dối hơn những điều kh&aacute;c, l&agrave;m thế n&agrave;o để gặp &iacute;t vấn đề hơn ch&uacute;ng ta tưởng hơn khi bị lừa dối, v&agrave; c&aacute;ch hoạt động kinh doanh đ&atilde; mở đường cho c&aacute;c h&agrave;nh vi phi đạo đức, cả cố &yacute; lẫn v&ocirc; &yacute; như thế n&agrave;o. Ariely đ&atilde; kh&aacute;m ph&aacute; ra c&aacute;ch thức hoạt động của c&aacute;c h&agrave;nh vi phi đạo đức trong cuộc sống ri&ecirc;ng, c&ocirc;ng việc v&agrave; ch&iacute;nh trị, v&agrave; n&oacute; đ&atilde; ảnh hưởng đến tất cả ch&uacute;ng ta như thế n&agrave;o, ngay cả khi ch&uacute;ng ta nghĩ m&igrave;nh c&oacute; những ti&ecirc;u chuẩn đạo đức cao. Ariely cũng x&aacute;c định những g&igrave; gi&uacute;p ch&uacute;ng ta trung thực, chỉ đường cho việc trở th&agrave;nh người c&oacute; đạo đức hơn trong cuộc sống h&agrave;ng ng&agrave;y của ch&uacute;ng ta.<br><br>Với những ph&aacute;t hiện từ ch&iacute;nh t&aacute;c giả lẫn những ph&aacute;t hiện học thuật, cuốn s&aacute;ch sẽ thay đổi c&aacute;ch ch&uacute;ng ta nh&igrave;n nhận ch&iacute;nh m&igrave;nh, h&agrave;nh động của bản th&acirc;n v&agrave; những người kh&aacute;c.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 12000, 10000, 11000, 10, N'shop-cart/assets/img/banchatcuadoitra.jpg', N'<p>Khi con người hiểu r&otilde; về dối tr&aacute;</p>', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (30, 4, N'Tôi tự học', N'<p>S&aacute;ch &ldquo;T&ocirc;i tự học&rdquo; của t&aacute;c giả Nguyễn Duy Cần đề cập đến kh&aacute;i niệm, mục đ&iacute;ch của học vấn đối với con người đồng thời n&ecirc;u l&ecirc;n một số phương ph&aacute;p học tập đ&uacute;ng đắn v&agrave; hiệu quả. T&aacute;c giả cho rằng gi&aacute; trị của học vấn nằm ở sự lĩnh hội v&agrave; mở mang tri thức của con người chứ kh&ocirc;ng đơn thuần thể hiện tr&ecirc;n bằng cấp. Trong x&atilde; hội ng&agrave;y nay, kh&ocirc;ng &iacute;t người qu&ecirc;n đi &yacute; nghĩa đ&iacute;ch thực của học vấn, biến việc học của m&igrave;nh th&agrave;nh c&ocirc;ng cụ để kiếm tiền nhưng thực ra n&oacute; chỉ l&agrave; phương tiện để đưa con người đến th&agrave;nh c&ocirc;ng m&agrave; th&ocirc;i. Bởi v&igrave; học kh&ocirc;ng phải để lấy bằng m&agrave; học c&ograve;n để &ldquo;biết m&igrave;nh&rdquo; v&agrave; để &ldquo;đối nh&acirc;n xử thế&rdquo;.</p>
<p>Cuốn s&aacute;ch n&agrave;y tuy đ&atilde; được xuất bản từ rất l&acirc;u nhưng gi&aacute; trị của s&aacute;ch vẫn c&ograve;n nguy&ecirc;n vẹn. Những tư tưởng, chủ đề của s&aacute;ch vẫn ph&ugrave; hợp v&agrave; c&oacute; thể &aacute;p dụng trong đời sống hiện nay. Thiết nghĩ, cuốn s&aacute;ch n&agrave;y rất cần cho mọi đối tượng bạn đọc v&igrave; kh&ocirc;ng c&oacute; giới hạn n&agrave;o cho việc truy tầm kiến thức, việc học l&agrave; sự nghiệp l&acirc;u d&agrave;i của mỗi con người. Đặc biệt, cuốn s&aacute;ch l&agrave; một t&agrave;i liệu qu&yacute; để c&aacute;c bạn học sinh &ndash; sinh vi&ecirc;n tham khảo, tổ chức lại việc học của m&igrave;nh một c&aacute;ch hợp l&yacute; v&agrave; khoa học. C&aacute;c bậc phụ huynh cũng cần tham khảo s&aacute;ch n&agrave;y để định hướng v&agrave; tư vấn cho con em m&igrave;nh trong qu&aacute; tr&igrave;nh học tập.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 20000, 22000, 21000, 20, N'shop-cart/assets/img/toituhoc.jpg', N'<p>S&aacute;ch hướng dẫn việc học</p>', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (31, 2, N'Doraemon tập 3', N'<div class="wp-content">
<p>Những c&acirc;u chuyện về ch&uacute; m&egrave;o m&aacute;y th&ocirc;ng minh Doraemon v&agrave; nh&oacute;m bạn Nobita, Shizuka, Suneo, Jaian, Dekisugi sẽ đưa ch&uacute;ng ta bước v&agrave;o thế giới hồn nhi&ecirc;n, trong s&aacute;ng đầy ắp tiếng cười với một kho bảo bối k&igrave; diệu - những bảo bối biến ước mơ của ch&uacute;ng ta th&agrave;nh sự thật. Nhưng tr&ecirc;n tất cả Doraemon l&agrave; hiện th&acirc;n của t&igrave;nh bạn cao đẹp, của niềm kh&aacute;t khao vươn tới những tầm cao.</p>
<p><strong>Những bảo bối xuất hiện lần đầu:</strong>&nbsp;Lịch đổi ng&agrave;y,&nbsp;<u>Hộp gia đ&igrave;nh</u>,&nbsp;<u>Bộ đồ nghề th&aacute;m tử Sherlock Holmes</u>, Đồng hồ kế hoạch,&nbsp;<u>M&aacute;y n&oacute;i dối</u>, &Aacute;o cho&agrave;ng si&ecirc;u nh&acirc;n,&nbsp;<u>Thi&ecirc;n sứ dẫn đường</u>, B&uacute;t ch&igrave; y như đ&uacute;c,&nbsp;<u>M&aacute;y ảnh tạo mốt</u>,&nbsp;<u>Mũi t&ecirc;n t&igrave;nh &aacute;i</u>,&nbsp;<u>M&aacute;y ảnh tạo m&ocirc; h&igrave;nh</u>,&nbsp;<u>Đường hầm Gulliver</u>, Thuốc vi&ecirc;n như &yacute;, Thuốc mọc t&oacute;c, Huy hiệu cổ t&iacute;ch, Thuốc chữa b&aacute;ch bệnh.</p>
</div>', 12000, 11000, 10000, 10, N'shop-cart/assets/img/doraemon3.webp', N'<p>C&acirc;u chuyện giwusax Nobiata v&agrave; Doraemon</p>', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (32, 2, N'Doraemon tập 4', N'<p>Những c&acirc;u chuyện về ch&uacute; m&egrave;o m&aacute;y th&ocirc;ng minh Doraemon v&agrave; nh&oacute;m bạn Nobita, Shizuka, Jaian, Dekisugi sẽ đưa ch&uacute;ng ta bước v&agrave;o thế giới hồn nhi&ecirc;n, trong s&aacute;ng, đầy ắp tiếng cười với một kho bảo bối k&igrave; diệu - những bảo bối biến giấc mơ của ch&uacute;ng ta th&agrave;nh sự thật. Nhưng tr&ecirc;n tất cả, Doraemon ch&iacute;nh l&agrave; hiện th&acirc;n của t&igrave;nh bạn cao đẹp, của niềm kh&aacute;t khao vươn tới những tầm cao.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 10000, 12000, 11000, 50, N'shop-cart/assets/img/doraemon4.jpg', N'<p>C&acirc;u chuyện giữa Nobiata v&agrave; Doraemon</p>', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (33, 5, N'Kinh Tế chính trị', N'', 10000, 12000, 11000, 20, N'shop-cart/assets/img/kinhtechinhtriMac.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (34, 5, N'Tư tưởng Hồ Chí Minh', N'<p>Gi&aacute;o tr&igrave;nh do tập thể t&aacute;c giả l&agrave; những nh&agrave; nghi&ecirc;n cứu, nh&agrave; gi&aacute;o dục c&oacute; nhiều kinh nghiệm trong nghi&ecirc;n cứu, giảng dạy về tư tưởng Hồ Ch&iacute; Minh, PGS.TS. Mạch Quang Thắng l&agrave;m chủ bi&ecirc;n; được bi&ecirc;n soạn theo quan điểm đổi mới căn bản, to&agrave;n diện gi&aacute;o dục v&agrave; đ&agrave;o tạo. Gi&aacute;o tr&igrave;nh thể hiện nhiều kết quả nghi&ecirc;n cứu mới về tư tưởng Hồ Ch&iacute; Minh, gắn với c&aacute;c nội dung học tập v&agrave; l&agrave;m theo tư tưởng, đạo đức, phong c&aacute;ch Hồ Ch&iacute; Minh.</p>
<p>Gi&aacute;o tr&igrave;nh được kết cấu gồm 6 chương, tr&igrave;nh b&agrave;y những vấn đề cơ bản của tư tưởng Hồ Ch&iacute; Minh. Chương 1 đề cập những vấn đề chung nhất của m&ocirc;n học (kh&aacute;i niệm, đối tượng, phương ph&aacute;p nghi&ecirc;n cứu v&agrave; &yacute; nghĩa học tập m&ocirc;n Tư tưởng Hồ Ch&iacute; Minh); Chương 2 tr&igrave;nh b&agrave;y cơ sở, qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển tư tưởng Hồ Ch&iacute; Minh. C&aacute;c chương c&ograve;n lại gồm c&aacute;c nội dung: Tư tưởng Hồ Ch&iacute; Minh về độc lập d&acirc;n tộc v&agrave; chủ nghĩa x&atilde; hội; Tư tưởng Hồ Ch&iacute; Minh về Đảng Cộng sản Việt Nam v&agrave; Nh&agrave; nước của nh&acirc;n d&acirc;n, do nh&acirc;n d&acirc;n, v&igrave; nh&acirc;n d&acirc;n; Tư tưởng Hồ Ch&iacute; Minh về đại đo&agrave;n kết to&agrave;n d&acirc;n tộc v&agrave; đo&agrave;n kết quốc tế; Tư tưởng Hồ Ch&iacute; Minh về văn h&oacute;a, con người.</p>
<p>Gi&aacute;o tr&igrave;nh g&oacute;p phần gi&uacute;p người học hiểu s&acirc;u sắc, to&agrave;n diện v&agrave; đầy đủ hơn về vai tr&ograve;, vị tr&iacute;, &yacute; nghĩa của tư tưởng Hồ Ch&iacute; Minh, c&aacute;c nội dung cơ bản trong tư tưởng Hồ Ch&iacute; Minh, từ đ&oacute; vận dụng, li&ecirc;n hệ với thực tiễn học tập, r&egrave;n luyện, x&acirc;y dựng nh&acirc;n c&aacute;ch để trở th&agrave;nh c&ocirc;ng d&acirc;n tốt, đ&oacute;ng g&oacute;p v&agrave;o c&ocirc;ng cuộc x&acirc;y dựng đất nước.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 20000, 22000, 21000, 9, N'shop-cart/assets/img/tutuongHCM.jpg', N'', 0, 1)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (35, 5, N'Triết học Mac Lê Nin', N'<p>Gi&aacute;o tr&igrave;nh do Ban bi&ecirc;n soạn gồm c&aacute;c t&aacute;c giả l&agrave; nh&agrave; nghi&ecirc;n cứu, nh&agrave; gi&aacute;o dục thuộc Viện Triết học - Học viện Ch&iacute;nh trị quốc gia Hồ Ch&iacute; Minh, c&aacute;c học viện, trường đại học, Viện Triết học - Viện H&agrave;n l&acirc;m Khoa học x&atilde; hội Việt Nam, tổ chức bi&ecirc;n soạn tr&ecirc;n cơ sở kế thừa những kết quả nghi&ecirc;n cứu trước đ&acirc;y, đồng thời bổ sung nhiều nội dung, kiến thức, kết quả nghi&ecirc;n cứu mới, gắn với c&ocirc;ng cuộc đổi mới ở Việt Nam, nhất l&agrave; những th&agrave;nh tựu trong 35 năm đổi mới đất nước.</p>
<p>Gi&aacute;o tr&igrave;nh gồm 03 chương:</p>
<ul>
<li>Chương 1 tr&igrave;nh b&agrave;y những n&eacute;t kh&aacute;i qu&aacute;t nhất về triết học, triết học M&aacute;c - L&ecirc;nin v&agrave; vai tr&ograve; của triết học M&aacute;c - L&ecirc;nin trong đời sống x&atilde; hội.</li>
<li>Chương 2 tr&igrave;nh b&agrave;y những nội dung cơ bản của chủ nghĩa duy vật biện chứng, gồm: vấn đề vật chất v&agrave; &yacute; thức; ph&eacute;p biện chứng duy vật; l&yacute; luận nhận thức của chủ nghĩa duy vật biện chứng.</li>
<li>Chương 3 tr&igrave;nh b&agrave;y những nội dung cơ bản của chủ nghĩa duy vật lịch sử, gồm: vấn đề h&igrave;nh th&aacute;i kinh tế - x&atilde; hội; giai cấp v&agrave; d&acirc;n tộc; nh&agrave; nước v&agrave; c&aacute;ch mạng x&atilde; hội; &yacute; thức x&atilde; hội; triết học về con người.</li>
</ul>
<p>Gi&aacute;o tr&igrave;nh được bi&ecirc;n soạn theo y&ecirc;u cầu đổi mới căn bản, to&agrave;n diện gi&aacute;o dục v&agrave; đ&agrave;o tạo, ph&ugrave; hợp với đối tượng người học, nhằm cung cấp những tri thức hiểu biết c&oacute; t&iacute;nh nền tảng v&agrave; hệ thống về triết học M&aacute;c - L&ecirc;nin; x&acirc;y dựng thế giới quan duy vật v&agrave; phương ph&aacute;p luận biện chứng duy vật l&agrave;m nền tảng l&yacute; luận cho việc nhận thức c&aacute;c vấn đề, nội dung của c&aacute;c m&ocirc;n học kh&aacute;c; nhận thức được thực chất gi&aacute; trị, bản chất khoa học, c&aacute;ch mạng của triết học M&aacute;c - L&ecirc;nin. Đồng thời, gi&uacute;p cho sinh vi&ecirc;n vận dụng tri thức triết học M&aacute;c - L&ecirc;nin, thế giới quan duy vật v&agrave; phương ph&aacute;p luận biện chứng duy vật để r&egrave;n luyện tư duy, gi&uacute;p &iacute;ch trong học tập v&agrave; cuộc sống.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 22000, 24000, 23000, 0, N'shop-cart/assets/img/triethocmaclenin.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (36, 7, N'Ngữ văn 12', N'<p class="N5VAH-">C&ocirc;ng ty ph&aacute;t h&agrave;nh : NXB Gi&aacute;o Dục Việt Nam</p>
<p class="N5VAH-">T&aacute;c giả : Nhiều t&aacute;c giả</p>
<p class="N5VAH-">Số trang : 368</p>
<p class="N5VAH-">Năm xuất bản : 2020</p>
<p class="N5VAH-">Khổ s&aacute;ch : 17 x 24 cm</p>
<p class="N5VAH-">H&igrave;nh thức : B&igrave;a mềm</p>
<p class="N5VAH-">Giới thiệu s&aacute;ch :</p>
<p class="N5VAH-">1. S&aacute;ch gi&aacute;o khoa Ngữ Văn tập 1</p>
<p class="N5VAH-">S&aacute;ch của NXB Gi&aacute;o Dục Việt Nam, gồm 224 trang.</p>
<p class="N5VAH-">2. B&agrave;i tập Ngữ Văn tập 1</p>
<p class="N5VAH-">S&aacute;ch của NXB Gi&aacute;o Dục Việt Nam, gồm 144 trang. C&aacute;c bạn th&ocirc;ng cảm : Do s&aacute;ch gi&aacute;o khoa b&aacute;n kh&ocirc;ng c&oacute; ph&iacute; n&ecirc;n shop c&oacute; thu th&ecirc;m 1k để lấy chi ph&iacute; g&oacute;i h&agrave;ng v&agrave; vận chuyển. Mong qu&yacute; kh&aacute;ch ủng hộ shop. Cảm ơn bạn !</p>', 15000, 17000, 16000, 50, N'shop-cart/assets/img/nguvan12.jpeg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (37, 7, N'Ngữ Văn 11', N'<p>S&aacute;ch gi&aacute;o khoa lớp 11 ngữ văn lớp 11.</p>', 16000, 18000, 17000, 19, N'shop-cart/assets/img/nguvan11.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (38, 6, N'Khoa học 4', N'<p><strong>Khoa học lớp 4</strong>&nbsp;l&agrave; m&ocirc;n học hay trong chương tr&igrave;nh học, ngo&agrave;i m&ocirc;n&nbsp;<a href="https://vndoc.com/toan-lop4">To&aacute;n lớp 4</a>&nbsp;v&agrave;&nbsp;<a href="https://vndoc.com/tieng-viet-lop4">Tiếng Việt lớp 4</a>. Ở m&ocirc;n học n&agrave;y, c&aacute;c em sẽ được l&agrave;m quen với những chủ đề rất th&uacute; vị như Con người v&agrave; sức khỏe, Vật chất v&agrave; năng lượng, Thực vật v&agrave; động vật.</p>', 11000, 13000, 12000, 20, N'shop-cart/assets/img/khoahoc4.jpeg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (39, 6, N'Nguồn gốc các loài', N'', 20000, 22000, 21000, 10, N'shop-cart/assets/img/nguongoccacloai.jpg', N'', 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (40, 3, N'Tâm ý về tiền', N'', 30000, 32000, 31000, 20, N'shop-cart/assets/img/tamlyvetien.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (41, 12, N'Lịch sử đảng đại cương', N'<p>Ngo&agrave;i chương nhập m&ocirc;n, tr&igrave;nh b&agrave;y về đối tượng, chức năng, nhiệm vụ, nội dung v&agrave; phương ph&aacute;p nghi&ecirc;n cứu, học tập lịch sử Đảng Cộng sản Việt Nam, gi&aacute;o tr&igrave;nh c&oacute; kết cấu gồm 03 chương: Chương 1 n&ecirc;u qu&aacute; tr&igrave;nh Đảng Cộng sản Việt Nam ra đời v&agrave; l&atilde;nh đạo đấu tranh gi&agrave;nh ch&iacute;nh quyền (1930 - 1945). Chương 2 n&ecirc;u về qu&aacute; tr&igrave;nh Đảng l&atilde;nh đạo hai cuộc kh&aacute;ng chiến chống ngoại x&acirc;m, ho&agrave;n th&agrave;nh giải ph&oacute;ng d&acirc;n tộc, thống nhất đất nước (1945 - 1975); Chương 3 n&ecirc;u qu&aacute; tr&igrave;nh Đảng l&atilde;nh đạo cả nước qu&aacute; độ l&ecirc;n chủ nghĩa x&atilde; hội v&agrave; tiến h&agrave;nh c&ocirc;ng cuộc đổi mới (từ năm 1975 đến nay).</p>
<p>Gi&aacute;o tr&igrave;nh cung cấp cho sinh vi&ecirc;n những tri thức vừa cơ bản, vừa chuy&ecirc;n s&acirc;u, mang t&iacute;nh hệ thống về qu&aacute; tr&igrave;nh ra đời v&agrave; l&atilde;nh đạo c&aacute;ch mạng của Đảng Cộng sản Việt Nam; cung cấp cơ sở lịch sử, củng cố niềm tin của thế hệ trẻ v&agrave;o con đường c&aacute;ch mạng giải ph&oacute;ng d&acirc;n tộc v&agrave; ph&aacute;t triển đất nước; trang bị phương ph&aacute;p nhận thức biện chứng, kh&aacute;ch quan về qu&aacute; tr&igrave;nh Đảng ra đời v&agrave; l&atilde;nh đạo c&aacute;ch mạng;&hellip; từ đ&oacute; n&acirc;ng cao hiểu biết l&yacute; luận, nắm bắt thực tiễn, vận dụng v&agrave;o xem x&eacute;t, đ&aacute;nh gi&aacute; vai tr&ograve; v&agrave; sự l&atilde;nh đạo của Đảng, g&oacute;p phần thiết thực v&agrave;o c&ocirc;ng t&aacute;c x&acirc;y dựng Đảng ng&agrave;y c&agrave;ng vững mạnh, đ&aacute;p ứng y&ecirc;u cầu nhiệm vụ mới trong qu&aacute; tr&igrave;nh c&ocirc;ng nghiệp h&oacute;a, hiện đại h&oacute;a đất nước, x&acirc;y dựng th&agrave;nh c&ocirc;ng chủ nghĩa x&atilde; hội ở Việt Nam.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 120000, 20000, 150000, 8, N'shop-cart/assets/img/lichsudang.jpg', N'<p>Gi&aacute;o t&igrave;nh về lịch sử Đảng</p>', 0, 2)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (42, 2, N'Doraemon tập 5', N'<p>Doraemon l&agrave; một ch&uacute; m&egrave;o tốt, nhưng anh ta cũng lười biếng v&agrave; c&oacute; thể bị ph&acirc;n t&acirc;m bởi những m&oacute;n dorayaki ngọt ng&agrave;o.&nbsp;V&igrave; vậy, anh ta thường kh&ocirc;ng nghĩ đến hậu quả của việc cho Nobita truy cập v&agrave;o nhiều thiết bị tương lai m&agrave; Doraemon mang trong t&uacute;i.&nbsp;V&agrave; khi anh ta xem x&eacute;t hậu quả, anh ta c&oacute; thể bị mua chuộc hoặc lừa để cho Nobita sử dụng ch&uacute;ng.&nbsp;V&agrave; điều đ&oacute; đặt ra m&ocirc; h&igrave;nh ch&iacute;nh cho c&aacute;c c&acirc;u chuyện loạt.&nbsp;Nobita hoặc một trong những nh&acirc;n vật kh&aacute;c c&oacute; vấn đề, một trong những tiện &iacute;ch của Doraemon xuất hiện để khắc phục, tiện &iacute;ch bị lạm dụng v&agrave; Nobita gặp rắc rối. Bộ truyện tranh gốc bắt đầu từ 1969-1996, tổng cộng 45 tập được tạo bởi Fujiko F. Fujio (b&uacute;t danh của Hiroshi Fujimoto (1933-96), một nửa của combo Fujiko Fujio.) N&oacute; đ&atilde; sinh ra manga spinoff, một số phim truyền h&igrave;nh v&agrave; một loạt phim hoạt h&igrave;nh d&agrave;i tập.&nbsp;Doraemon được coi l&agrave; một trong những biểu tượng văn h&oacute;a của Nhật Bản.</p>', 15000, 18000, 17000, 20, N'shop-cart/assets/img/doraemon5.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (43, 13, N'One Piece tập 2', N'<p>EIICHIRO ODA</p>
<p>&ldquo;Hỡi người chủ nh&agrave; h&agrave;o hiệp, c&aacute;c vị kh&aacute;ch đ&atilde; đến rồi đ&acirc;y. Hướng về phương n&agrave;o, những người ngồi gần cửa ra v&agrave;o l&agrave; người kh&oacute; m&agrave; ở y&ecirc;n một chỗ&rdquo; - B&agrave;i h&aacute;t của hải tặc Bắc &Acirc;u, nghe cũng hay đấy chứ?</p>', 17000, 21000, 19000, 20, N'shop-cart/assets/img/onepiece2.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (44, 5, N'Sách Chính Trị', N'<p><em><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/5/18/L%E1%BB%9CI%20NH%C3%80%20XU%E1%BA%A4T%20B%E1%BA%A2N.doc">- Lời Nh&agrave; xuất bản</a></em></p>
<p><em><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/L%E1%BB%9CI%20N%C3%93I%20%C4%90%E1%BA%A6U.doc">- Lời n&oacute;i đầu</a></em></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/Phan%20I.docx">I.&nbsp;</a><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/Phan%20I.docx">Bối cảnh; Qu&aacute; tr&igrave;nh chuẩn bị Văn kiện; Tầm nh&igrave;n v&agrave; chủ đề của Đại hội</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20II.docx">II. Phương ph&aacute;p tiếp cận</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20III.docx">III. Tổng kết việc thực hiện Nghị quyết Đại hội XII v&agrave; tiến tr&igrave;nh đổi mới</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20IV.docx">IV. Dự b&aacute;o t&igrave;nh h&igrave;nh, quan điểm v&agrave; định hướng ph&aacute;t triển đất nước 10 năm 2021-2030</a></p>
<p>V<a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20V.docx">. Ph&aacute;t triển kinh tế trong giai đoạn&nbsp;5&nbsp;năm&nbsp;2021-2025</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20VI.docx">VI.&nbsp;</a><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20VI.docx">Ph&aacute;t triển gi&aacute;o dục v&agrave; đ&agrave;o tạo, khoa học v&agrave; c&ocirc;ng nghệ trong giai đoạn&nbsp;5 năm 2021-2025</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20VII.docx">VII. Ph&aacute;t triển văn h&oacute;a, x&atilde; hội, con người trong giai đoạn 5 năm 2021-2025</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20VIII.docx">VIII. Quản l&yacute; v&agrave; sử dụng đất đai, t&agrave;i nguy&ecirc;n, bảo vệ m&ocirc;i trường, chủ động th&iacute;ch</a><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20VIII.docx">&nbsp;ứng với biến đổi kh&iacute; hậu giai đoạn 5 năm 2021-2025</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20IX.docx">IX.&nbsp;</a><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20IX.docx">Bảo đảm quốc ph&ograve;ng, an ninh trong&nbsp;giai đoạn 5 năm 2021-2025</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20X.docx">X.&nbsp;</a><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20X.docx">Hoạt động đối ngoại v&agrave; hội nhập quốc tế trong&nbsp;giai đoạn 5 năm 2021-2025</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20XI.docx">XI.&nbsp;</a><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20XI.docx">Ph&aacute;t huy d&acirc;n chủ x&atilde; hội chủ nghĩa v&agrave; đại đo&agrave;n kết to&agrave;n d&acirc;n tộctrong&nbsp;giai đoạn 5 năm 2021-2025</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20XII.docx">XII. X&acirc;y dựng Nh&agrave; nước ph&aacute;p quyền x&atilde; hội chủ nghĩa Việt Namtrong giai đoạn 5 năm 2021-2025</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20XIII.docx">XIII. X&acirc;y dựng Đảng trong giai đoạn 5 năm 2021-2025</a></p>
<p><a href="https://tulieuvankien.dangcongsan.vn/Uploads/2021/6/7/17/phan%20XIV.docx">XIV. Nhiệm vụ trọng t&acirc;m, kh&acirc;u đột ph&aacute; chiến lược</a></p>', 25000, 31000, 30000, 20, N'shop-cart/assets/img/SachChinhTri.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (45, 5, N'Mưu kế chính trị', N'<p>Đời sống x&atilde; hội l&agrave; một chuỗi d&agrave;i những lừa lọc. Thứ nhất l&agrave; đời sống ch&iacute;nh trị. Chẳng hạn như những nh&agrave; ngọai giao của c&aacute;c cường quốc hay đế quốc. Cứ mỗi lần sửa soạn chiến tranh th&igrave; họ n&oacute;i rất nhiều về h&ograve;a b&igrave;nh v&agrave; t&igrave;nh giao hảo th&acirc;n thiện giữa c&aacute;c nước. Ngọai trưởng của những cường quốc hay đế quốc bắt đầu b&ecirc;nh vực hoặc k&ecirc;u gọi một hội nghị h&ograve;a b&igrave;nh c&oacute; nghĩa l&agrave; b&ecirc;n trong đ&atilde; sẵn c&oacute; một kế họach chiến tranh t&agrave;n bạo. Với ch&iacute;nh trị lời n&oacute;i tốt l&agrave; để che việc l&agrave;m t&agrave;n bạo.</p>
<p>Trong sinh họat thường nhật, cũng như trong sinh họat ch&iacute;nh trị, Khổng Tử vẫn n&oacute;i: &ldquo;Sảo nhi hiếu độ tất c&ocirc;ng, dụng nhi hiếu độ tất thắng, tr&iacute; nhi hiếu mưu tất th&agrave;nh&rdquo; (Đ&atilde; kh&eacute;o rồi m&agrave; lại đo ngắm cho cẩn thận th&igrave; việc phải tốt, đ&atilde; d&ugrave;ng m&agrave; biết c&ugrave;ng người cộng t&aacute;c th&igrave; phải thắng, đa tr&iacute; m&agrave; lại nhiều mưu th&igrave; phải th&agrave;nh).</p>', 150000, 199000, 189000, 20, N'shop-cart/assets/img/muukechinhtri.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (46, 6, N'Khoa Học - Khái Lược Những Tư Tưởng Lớn', N'<p>Phải chăng vũ trụ khởi nguy&ecirc;n từ vụ nổ Big Bang? &Aacute;nh s&aacute;ng l&agrave; s&oacute;ng, l&agrave; hạt &ndash; hay cả hai? Liệu c&oacute; phải con người đ&atilde; khiến Tr&aacute;i Đất n&oacute;ng l&ecirc;n? C&oacute; hay kh&ocirc;ng thuyết vạn vật? Khoa học đ&atilde; gi&uacute;p l&yacute; giải vũ trụ v&agrave; thế giới m&agrave; ch&uacute;ng ta đang sống, mang đến những tiến bộ kỹ thuật cũng như mở rộng bi&ecirc;n giới của kiến thức.</p>
<p>Với văn phong dễ hiểu, Khoa học &ndash; Kh&aacute;i lược những tư tưởng lớn l&agrave; tập hợp những kiến giải ngắn gọn, h&agrave;m s&uacute;c, giải th&iacute;ch r&otilde; những điều kh&oacute; hiểu, những sơ đồ gi&uacute;p l&agrave;m s&aacute;ng tỏ những l&yacute; thuyết rối rắm, những tr&iacute;ch dẫn kinh điển gi&uacute;p c&aacute;c kh&aacute;m ph&aacute; khoa học trở n&ecirc;n dễ nhớ hơn, c&ugrave;ng những minh họa d&iacute; dỏm gi&uacute;p ta mở rộng hiểu biết về khoa học.</p>
<p>S&aacute;ch nằm trong bộ Kh&aacute;i lược những tư tưởng lớn, gồm:</p>
<ul>
<li>Kinh doanh - Kh&aacute;i lược những tư tưởng lớn</li>
<li>Kinh tế học - Kh&aacute;i lược những tư tưởng lớn</li>
<li>T&ocirc;n gi&aacute;o - Kh&aacute;i lược những tư tưởng lớn</li>
<li>Triết học - Kh&aacute;i lược những tư tưởng lớn</li>
<li>Ch&iacute;nh trị - Kh&aacute;i lược những tư tưởng lớn</li>
<li>T&acirc;m l&iacute; - Kh&aacute;i lược những tư tưởng lớn</li>
<li>Nghệ thuật - Kh&aacute;i lược những tư tưởng lớn</li>
<li>Khoa học - Kh&aacute;i lược những tư tưởng lớn</li>
</ul>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 300000, 331000, 320000, 20, N'shop-cart/assets/img/khoahockhailuoc.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (47, 6, N'Bách Khoa Thư Khoa Học', N'<p>Từ những nguy&ecirc;n tử nhỏ b&eacute; tới những mảng kiến tạo của bề mặt Tr&aacute;i Đất, từ những nơi xa x&ocirc;i ngo&agrave;i vũ trụ tới đ&aacute;y đại dương s&acirc;u thẳm, B&aacute;ch khoa thư khoa học cung cấp những th&ocirc;ng tin to&agrave;n diện nhất về KHOA HỌC.<br><br>- Những sự thật th&uacute; vị v&agrave; hấp dẫn về động đất, điện năng, c&aacute;c nguy&ecirc;n tố h&oacute;a học v&agrave; nhiều điều bạn muốn biết về khoa học<br>- Mục th&ocirc;ng tin bổ sung về những nh&agrave; khoa học v&agrave; kh&aacute;m ph&aacute; ấn tượng sẽ khiến bạn phải trầm trồ<br>- Mục &ldquo;t&aacute;y m&aacute;y t&ograve; m&ograve;&rdquo; mang đến những thử nghiệm khoa học nho nhỏ m&agrave; bạn c&oacute; thể tự l&agrave;m để nh&igrave;n tận mắt khoa học trong đời sống<br>- Ảnh m&agrave;u sống động về mọi thứ ngo&agrave;i vũ trụ v&agrave; tr&ecirc;n Tr&aacute;i Đất của ch&uacute;ng ta<br>- C&aacute;c chủ đề khoa học tổng hợp, gồm vật chất, lực v&agrave; m&aacute;y m&oacute;c, năng lượng, điện tử, vũ trụ, sự sống tr&ecirc;n Tr&aacute;i Đất, cơ thể người, v&agrave; Tr&aacute;i Đất</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 250000, 305000, 270000, 20, N'shop-cart/assets/img/bachkhoathu.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (48, 6, N'Bách Khoa Tri Thức Nhân Loại', N'<p>Với nhiều chi tiết mới lạ, h&igrave;nh minh họa sắc n&eacute;t, những con số v&agrave; sự kiện kỉ lục, c&aacute;c nguồn đối chiếu khoa học, cuốn s&aacute;ch k&igrave; diệu n&agrave;y chứa đựng kho th&ocirc;ng tin khổng lồ trải rộng tr&ecirc;n mọi lĩnh vực của đời sống x&atilde; hội v&agrave; khoa học kĩ thuật.</p>
<p>Độc giả sẽ t&igrave;m thấy v&ocirc; v&agrave;n điều k&igrave; th&uacute; như c&aacute;c ng&ocirc;i sao h&igrave;nh th&agrave;nh như thế n&agrave;o, tại sao Đế chế La M&atilde; lại sụp đổ, s&oacute;ng thần đến từ đ&acirc;u hay tại sao lo&agrave;i hổ lại đang gặp nguy hiểm?</p>
<p>+ Th&ocirc;ng tin c&ocirc; đọng, chi tiết</p>
<p>+ H&agrave;ng trăm h&igrave;nh minh họa v&agrave; ảnh chụp</p>
<p>+ S&aacute;u chủ điểm lớn</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 150000, 188000, 170000, 20, N'shop-cart/assets/img/bachkhoatrithucnhanloai.webp', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (49, 6, N'NHỮNG CÂU HỎI LỚN - VŨ TRỤ', N'<p><strong>NHỮNG C&Acirc;U HỎI LỚN</strong>&nbsp;đề cập đến những vấn đề cơ bản trong khoa học tự nhi&ecirc;n v&agrave; x&atilde; hội, nhưng vẫn khiến những bộ &oacute;c vĩ đại trong lịch sử đau đầu.</p>
<p>Trong cuốn s&aacute;ch n&agrave;y, Stuart Clark đ&atilde; đưa ra v&agrave; thảo luận 20 c&acirc;u hỏi thế kỷ về thi&ecirc;n văn v&agrave; vũ trụ.</p>
<ul>
<li>&nbsp;
<ul>
<li>vũ trụ l&agrave; g&igrave;?</li>
<li>vũ trụ rộng lớn thế n&agrave;o?</li>
<li>vũ trụ bao nhi&ecirc;u tuổi?</li>
<li>những ng&ocirc;i sao h&igrave;nh th&agrave;nh từ đ&acirc;u?</li>
<li>tr&aacute;i đất h&igrave;nh th&agrave;nh như thế n&agrave;o?</li>
<li>v&igrave; sao c&aacute;c h&agrave;nh tinh lu&ocirc;n bay theo quỹ đạo?</li>
<li>einstein đ&uacute;ng hay sai?</li>
<li>lỗ đen l&agrave; g&igrave;?</li>
<li>vũ trụ h&igrave;nh th&agrave;nh như thế n&agrave;o?</li>
<li>những thi&ecirc;n thể đầu ti&ecirc;n l&agrave; g&igrave;?</li>
<li>năng lượng tối l&agrave; g&igrave;?</li>
<li>c&oacute; phải ch&uacute;ng ta h&igrave;nh th&agrave;nh từ bụi sao?</li>
<li>tr&ecirc;n sao hỏa c&oacute; sự sống hay kh&ocirc;ng?</li>
<li>c&oacute; những tr&iacute; tuệ n&agrave;o đang tồn tại?</li>
<li>ch&uacute;ng ta c&oacute; thể du h&agrave;nh thời gian v&agrave; kh&ocirc;ng gian kh&ocirc;ng?</li>
<li>c&oacute; thể thay đổi c&aacute;c định luật vật l&yacute; kh&ocirc;ng?</li>
<li>c&oacute; vũ trụ thay thế hay kh&ocirc;ng?</li>
<li>số phận của vũ trụ sẽ ra sao?</li>
<li>c&oacute; bằng chứng n&agrave;o cho thấy vũ trụ l&agrave; do ch&uacute;a?</li>
</ul>
</li>
<li>&nbsp;</li>
</ul>
<p><strong>STUART CLARK&nbsp;</strong>l&agrave; nh&agrave; thi&ecirc;n văn học nổi tiếng với những cuốn s&aacute;ch phổ cập tri thức thi&ecirc;n văn cho đại ch&uacute;ng. &Ocirc;ng c&oacute; bằng danh dự hạng nhất v&agrave; bằng Tiến sĩ Vật l&yacute; thi&ecirc;n văn, l&agrave; th&agrave;nh vi&ecirc;n của Hiệp hội thi&ecirc;n văn Ho&agrave;ng gia v&agrave; l&agrave; cựu Ph&oacute; Chủ tịch Hiệp hội Nh&agrave; văn Khoa học Anh. Ng&agrave;y 9 th&aacute;ng 8 năm 2000, tờ nhật b&aacute;o Anh The Indepent đ&atilde; xếp &ocirc;ng c&ugrave;ng Stephen Hawking, nh&agrave; thi&ecirc;n văn ho&agrave;ng gia Sir Martin Rees l&agrave; những ng&ocirc;i sao s&aacute;ng ch&oacute;i trong lĩnh vực giảng dạy vật l&yacute; thi&ecirc;n văn.</p>
<p><strong>SIMON BLACKBURN</strong>&nbsp;l&agrave; Gi&aacute;o sư Triết học tại Đại học Cambridge, Đại học North Carolina v&agrave; l&agrave; một trong những triết gia đương đại nổi tiếng tr&ecirc;n thế giới.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 50000, 127000, 100000, 20, N'shop-cart/assets/img/nhungcauhoilonvutru.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (50, 6, N'Hồ Sơ Mật - Những Bí Ẩn Nổi Tiếng Trên Thế Giới', N'<p>Những b&iacute; ẩn về lo&agrave;i m&atilde;ng x&agrave; dưới đ&aacute;y biển hay hồ nước s&acirc;u k&igrave; dị phải chăng chỉ l&agrave; những ảo ảnh phủ bụi thời gian? Trước những vấn đề bị b&oacute;ng tối của sự ho&agrave;i nghi bao tr&ugrave;m, khoa học n&ecirc;n c&oacute; c&aacute;ch tiếp cận như thế n&agrave;o? Mong muốn của đội ngũ bi&ecirc;n soạn cuốn s&aacute;ch n&agrave;y l&agrave; thắp l&ecirc;n ngọn lửa kh&aacute;m ph&aacute; b&ecirc;n trong mỗi độc giả, để họ theo đuổi đến tận c&ugrave;ng sự thật, ph&acirc;n t&iacute;ch những hiện tượng k&igrave; b&iacute; với th&aacute;i độ cẩn trọng v&agrave; g&oacute;c nh&igrave;n khoa học. Những b&iacute; ẩn chưa ai l&iacute; giải được lu&ocirc;n chứa đựng sức l&ocirc;i cuốn mạnh mẽ, k&iacute;ch th&iacute;ch c&aacute;c gi&aacute;c quan v&agrave; khơi gợi ham muốn tư duy, kh&aacute;m ph&aacute; của mỗi người.</p>
<p>V&igrave; sao hồ nước &ldquo;ăn thịt người&rdquo; lại mang c&aacute;i t&ecirc;n như vậy? Khi n&agrave;o th&igrave; những v&ugrave;ng đất đ&atilde; biến mất một c&aacute;ch b&iacute; ẩn sẽ xuất hiện trở lại trước mắt ch&uacute;ng ta? Khoa học giải th&iacute;ch những hiện tượng dị thường của thi&ecirc;n nhi&ecirc;n ra sao?</p>
<p>Cuốn s&aacute;ch n&agrave;y hội tụ tất cả những b&iacute; ẩn li k&igrave; nhất tr&ecirc;n thế giới, l&agrave; kết quả đạt được sau qu&aacute; tr&igrave;nh t&igrave;m hiểu của c&aacute;c nh&agrave; khoa học v&agrave; được kể lại qua lăng k&iacute;nh kh&aacute;ch quan. C&ugrave;ng với một lượng lớn h&igrave;nh ảnh minh họa đặc sắc, chắc chắn những c&acirc;u chuyện trong cuốn s&aacute;ch n&agrave;y sẽ chạm đến cảm x&uacute;c v&agrave; k&iacute;ch th&iacute;ch hứng th&uacute; đọc s&aacute;ch của độc giả!</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 30000, 46000, 35000, 20, N'shop-cart/assets/img/nhungbiannoitiengtrenthegioi.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (51, 1, N'Harry Potter Và Phòng Chứa Bí Mật ', N'<p>Harry khổ sở mong ng&oacute;ng cho k&igrave; nghỉ h&egrave; kinh khủng với gia đ&igrave;nh Dursley kết th&uacute;c. Nhưng một con gia tinh b&eacute; nhỏ tội nghiệp đ&atilde; cảnh b&aacute;o cho Harry biết về mối nguy hiểm chết người đang chờ cậu ở trường Hogwarts.</p>
<p>Trở lại trường học, Harry nghe một tin đồn đang lan truyền về ph&ograve;ng chứa b&iacute; mật, nơi cất giữ những b&iacute; ẩn đ&aacute;ng sợ d&agrave;nh cho giới ph&ugrave; thủy c&oacute; nguồn gốc Muggle. C&oacute; kẻ n&agrave;o đ&oacute; đang ph&ugrave; ph&eacute;p l&agrave;m t&ecirc; liệt mọi người, khiến họ gần như đ&atilde; chết, v&agrave; một lời cảnh b&aacute;o kinh ho&agrave;ng được t&igrave;m thấy tr&ecirc;n bức tường. Mối nghi ngờ h&agrave;ng đầu &ndash; v&agrave; lu&ocirc;n lu&ocirc;n sai lầm &ndash; l&agrave; Harry. Nhưng một việc c&ograve;n đen tối hơn thế đ&atilde; được h&eacute; mở.</p>
<p>&lsquo;Harrt Potter v&agrave; ph&ograve;ng chứa b&iacute; mật, kh&ocirc;ng như những bộ truyện nhiều tập kh&aacute;c, vẫn tuyệt hay như người anh em trước&hellip; Hogwarts l&agrave; s&aacute;ng tạo của một thi&ecirc;n t&agrave;i.&rsquo;- Times Literary Supplement</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 100000, 136000, 110000, 20, N'shop-cart/assets/img/phongchuabimat.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (52, 1, N'Harry Potter Và Hoàng Tử Lai ', N'<p>Đ&acirc;y l&agrave; năm thứ 6 của Harry Potter tại trường Hogwarts. Trong l&uacute;c những thế lực hắc &aacute;m của Voldemort gieo rắc nỗi kinh ho&agrave;ng v&agrave; sợ h&atilde;i ở khắp nơi, mọi chuyện c&agrave;ng l&uacute;c c&agrave;ng trở n&ecirc;n r&otilde; r&agrave;ng hơn đối với Harry, rằng cậu sẽ sớm phải đối diện với định mệnh của m&igrave;nh. Nhưng liệu Harry đ&atilde; sẵn s&agrave;ng vượt qua những thử th&aacute;ch đang chờ đợi ph&iacute;a trước?</p>
<p>Trong cuộc phi&ecirc;u lưu tăm tối v&agrave; nghẹt thở nhất của m&igrave;nh, J.K.Rowling bắt đầu t&agrave;i t&igrave;nh th&aacute;o gỡ từng mắc lưới phức tạp m&agrave; c&ocirc; đ&atilde; mạng l&ecirc;n, cũng l&agrave; l&uacute;c ch&uacute;ng ta kh&aacute;m ph&aacute; ra sự thật về Harry, cụ Dumblebore, thầy Snape v&agrave;, tất nhi&ecirc;n, Kẻ Chớ Gọi T&ecirc;n Ra&hellip;</p>
<p>&lsquo;Diễn biến nhanh, huyền b&iacute;, hấp dẫn v&agrave; chặt chẽ trong từng chi tiết.&rsquo; - Daily Mail</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 150000, 196000, 170000, 20, N'shop-cart/assets/img/hoangtulai.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (53, 1, N'Harry Potter Và Chiếc Cốc Lửa', N'<p>Khi giải Quidditch Thế giới bị cắt ngang bởi những kẻ ủng hộ Ch&uacute;a tể Voldemort v&agrave; sự trở lại của Dấu hiệu hắc &aacute;m khủng khiếp, Harry &yacute; thức được r&otilde; r&agrave;ng rằng, Ch&uacute;a tể Voldemort đang ng&agrave;y c&agrave;ng mạnh hơn. V&agrave; để trở lại thế giới ph&eacute;p thuật, Ch&uacute;a tể hắc &aacute;m cần phải đ&aacute;nh bại kẻ duy nhất sống s&oacute;t từ lời nguyền chết ch&oacute;c của hắn - Harry Potter. V&igrave; lẽ đ&oacute;, khi Harry bị buộc phải bước v&agrave;o giải đấu Tam Ph&aacute;p thuật uy t&iacute;n nhưng nguy hiểm, cậu nhận ra rằng tr&ecirc;n cả chiến thắng, cậu phải giữ được mạng sống của m&igrave;nh.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 200000, 248000, 220000, 20, N'shop-cart/assets/img/chieccoclua.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (54, 1, N'Harry Potter and The Deathly Hallows', N'<p>As he climbs into the sidecar of Hagrid''s motorbike and takes to the skies, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and the Death Eaters are not far behind. The protective charm that has kept Harry safe until now is now broken, but he cannot keep hiding. The Dark Lord is breathing fear into everything Harry loves, and to stop him Harry will have to find and destroy the remaining Horcruxes. The final battle must begin - Harry must stand and face his enemy.</p>
<p>These new editions of the classic and internationally bestselling, multi-award-winning series feature instantly pick-up-able new jackets by Jonny Duddle, with huge child appeal, to bring Harry Potter to the next generation of readers. It''s time to PASS THE MAGIC ON ...</p>', 90000, 120000, 100000, 20, N'shop-cart/assets/img/baoboituthan.webp', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (55, 3, N'Tâm Lý Học – Khái Lược Những Tư Tưởng Lớn', N'<p><strong>T&acirc;m L&iacute; Học - Kh&aacute;i Lược Những Tư Tưởng Lớn</strong></p>
<p>Ta c&oacute; thực sự l&agrave; những c&aacute; nh&acirc;n tự do với bản sắc ri&ecirc;ng&hellip; hay tất cả ch&uacute;ng ta đều chỉ biết tu&acirc;n phục số đ&ocirc;ng? Thi&ecirc;n t&agrave;i l&agrave; nhờ dưỡng dục hay tự nhi&ecirc;n? V&ocirc; thức điều khiển ch&uacute;ng ta như thế n&agrave;o? Những c&acirc;u hỏi như tr&ecirc;n ch&iacute;nh l&agrave; tiền đề cho c&aacute;c c&ocirc;ng tr&igrave;nh của nhiều tư tưởng gia v&agrave; khoa học gia lớn của thế giới, trong một lĩnh vực gi&agrave;u sức l&ocirc;i cuốn, đ&oacute; l&agrave; t&acirc;m l&iacute; học.</p>
<p>Với văn phong dễ hiểu v&agrave; s&aacute;ng sủa, T&acirc;m l&iacute; học &ndash; Kh&aacute;i lược những tư tưởng lớn l&agrave; tập hợp những b&agrave;i viết ngắn gọn h&agrave;m s&uacute;c giải th&iacute;ch r&otilde; những điều kh&oacute; hiểu, những sơ đồ gi&uacute;p l&agrave;m s&aacute;ng tỏ những l&iacute; thuyết rối rắm, những tr&iacute;ch dẫn dễ nhớ, c&ugrave;ng những minh họa d&iacute; dỏm gi&uacute;p ch&uacute;ng ta chơi đ&ugrave;a với những kiến thức nền tảng về t&acirc;m l&iacute; học.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 300000, 375000, 350000, 20, N'shop-cart/assets/img/tamlyhoctutuonglon.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (56, 3, N'Hồ Sơ Tâm Lý Học Tâm Thần Hay Kẻ Điên', NULL, 80000, 125000, 100000, 20, N'shop-cart/assets/img/tamlyhoctamthan.jpg', NULL, 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (57, 3, N'Tâm Lý Học Tội Phạm', N'<p>Tội phạm, nhất l&agrave; những vụ &aacute;n mạng, lu&ocirc;n l&agrave; một chủ đề thu h&uacute;t sự quan t&acirc;m của c&ocirc;ng ch&uacute;ng, khơi gợi sự hiếu kỳ của bất cứ ai. Một khi đ&atilde; bắt đầu theo d&otilde;i vụ &aacute;n, hẳn bạn kh&ocirc;ng thể kh&ocirc;ng quan t&acirc;m tới kết cục, đặc biệt l&agrave; c&aacute;ch thức v&agrave; động cơ của kẻ s&aacute;t nh&acirc;n, từ những vụ &aacute;n phạm vi hẹp cho đến những vụ &aacute;n l&agrave;m r&uacute;ng động cả thế giới.</p>
<p>Lấy 36 vụ &aacute;n C&Oacute; THẬT kinh điển nhất trong hồ sơ tội phạm của FBI, &ldquo;T&acirc;m l&yacute; học tội phạm - ph&aacute;c họa ch&acirc;n dung kẻ phạm tội&rdquo; mang đến c&aacute;i nh&igrave;n to&agrave;n cảnh của c&aacute;c chuy&ecirc;n gia về ch&acirc;n dung t&acirc;m l&yacute; tội phạm. Trả lời cho c&acirc;u hỏi: L&agrave;m thế n&agrave;o ph&acirc;n t&iacute;ch được t&acirc;m l&yacute; v&agrave; h&agrave;nh vi tội phạm, từ đ&oacute; kh&ocirc;i phục sự thật th&ocirc;ng qua c&aacute;c manh mối, từ hiện trường vụ &aacute;n, thời gian, dấu t&iacute;ch,&hellip; để t&igrave;m ra kẻ s&aacute;t nh&acirc;n thực sự.</p>
<p>Đằng sau m&aacute;u v&agrave; nước mắt l&agrave; c&aacute;c c&acirc;u chuyện rợn t&oacute;c g&aacute;y về tội &aacute;c, g&oacute;c khuất x&atilde; hội v&agrave; những m&agrave;n đấu tr&iacute; đầy gay cấn giữa điều tra vi&ecirc;n v&agrave; kẻ phạm tội. Trong số đ&oacute; c&oacute; những con quỷ ăn thịt người; những c&ocirc; g&aacute;i xinh đẹp nhưng xảo quyệt; v&agrave; cả c&aacute;ch trả th&ugrave; đầy man rợ của c&aacute;c nh&agrave; khoa học,&hellip; Một số đ&atilde; sa v&agrave;o lưới ph&aacute;p luật ngay khi ch&uacute;ng vừa ra tay, nhưng cũng c&oacute; những kẻ cứ vậy ngủ y&ecirc;n hơn hai mươi năm.</p>
<p>Bằng giọng văn sắc b&eacute;n, &ldquo;T&acirc;m l&yacute; học tội phạm - ph&aacute;c họa ch&acirc;n dung kẻ phạm tội&rdquo; hứa hẹn dẫn dắt người đọc đi qua c&aacute;c cung bậc cảm x&uacute;c từ t&ograve; m&ograve;, ngạc nhi&ecirc;n đến sợ h&atilde;i, hoang mang tận c&ugrave;ng. Ch&uacute;ng ta sẽ lần t&igrave;m về qu&aacute; khứ để từng bước gỡ những n&uacute;t thắt chưa được giải, khiến ta "ngạt thở" đọc tới tận trang cuối c&ugrave;ng.</p>
<p>Hy vọng cuốn s&aacute;ch sẽ gi&uacute;p bạn c&oacute; c&aacute;i nh&igrave;n s&acirc;u sắc, r&otilde; r&agrave;ng hơn về bộ m&ocirc;n t&acirc;m l&yacute; học tội phạm v&agrave; c&oacute; thể r&egrave;n luyện th&ecirc;m sự tư duy, nhạy b&eacute;n.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 50000, 104000, 90000, 20, N'shop-cart/assets/img/tamlyhoctoipham.jpeg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (58, 3, N'Tâm Lý Học Ứng Dụng', N'<p>Tr&iacute; th&ocirc;ng minh x&atilde; hội l&agrave; việc h&ograve;a nhập, thu h&uacute;t mọi người v&agrave; khiến sự giao tiếp x&atilde; hội đem lại lợi &iacute;ch cho bạn, thay v&igrave; cản trở bạn đạt được những mục ti&ecirc;u của m&igrave;nh. N&oacute;i c&aacute;ch kh&aacute;c, sở hữu tr&iacute; th&ocirc;ng minh x&atilde; hội sẽ gi&uacute;p bạn được y&ecirc;u mến hơn, tăng cường vị thế của bạn trong cộng đồng v&agrave; tạo điều kiện thuận lợi để bạn vươn tới nhiều th&agrave;nh c&ocirc;ng trong cuộc sống.</p>
<p>Cuốn s&aacute;ch n&agrave;y cung cấp c&aacute;c chiến thuật đ&atilde; được khoa học chứng minh để mỗi c&aacute; nh&acirc;n tăng cường tr&iacute; th&ocirc;ng minh x&atilde; hội của m&igrave;nh. Hầu hết c&aacute;c phương ph&aacute;p c&oacute; trong s&aacute;ch sẽ li&ecirc;n quan &iacute;t nhiều tới những c&aacute;ch thức thời nguy&ecirc;n thủy - những phương ph&aacute;p đầy bản năng m&agrave; con người đ&atilde; tận dụng để thống trị thế giới.</p>
<p>Cuốn s&aacute;ch<em>&rdquo;</em><strong><em>T&acirc;m l&yacute; học ứng dụng&rdquo;</em></strong>&nbsp;gi&uacute;p độc giả:</p>
<p>Trở n&ecirc;n dễ mến một c&aacute;ch ch&acirc;n th&agrave;nh, tạo dựng được ấn tượng tốt v&agrave; kh&ocirc;ng ngại ngần trong c&aacute;c t&igrave;nh huống giao tiếp x&atilde; hội.</p>
<p>X&acirc;y dựng n&ecirc;n những mối quan hệ tốt đẹp, l&agrave;nh mạnh v&agrave; s&acirc;u sắc cho tất cả c&aacute;c b&ecirc;n, bất kể đ&oacute; l&agrave; c&aacute;c gắn kết giữa cộng sự, bạn b&egrave;, người th&acirc;n hay người y&ecirc;u.</p>
<p>Hiểu r&otilde; những cảm x&uacute;c của bản th&acirc;n, nắm bắt được những cảm nhận của mọi người để từ đ&oacute; điều chỉnh hợp l&yacute;, tạo ra những tương t&aacute;c gi&agrave;u &yacute; nghĩa.</p>
<p>Mở ra những cơ hội qu&yacute; gi&aacute; để hiện thực h&oacute;a c&aacute;c mục ti&ecirc;u trong cuộc sống.</p>
<p>C&aacute;c nghi&ecirc;n cứu đ&atilde; chỉ ra rằng, c&oacute; bốn đặc điểm gi&uacute;p mọi người thu h&uacute;t những người xung quanh v&agrave; cho ph&eacute;p một c&aacute; nh&acirc;n tiến đến nấc thang cao hơn trong hệ thống cấp bậc x&atilde; hội, bao gồm: sự thống trị, uy t&iacute;n, sự nồng ấm v&agrave; năng lực. T&igrave;m hiểu r&otilde; bốn yếu tố n&agrave;y v&agrave; c&aacute;ch kết hợp của ch&uacute;ng ở mỗi c&aacute; nh&acirc;n sẽ gi&uacute;p bạn nghĩ ra một số hướng đi để khiến người kh&aacute;c c&oacute; cảm t&igrave;nh với m&igrave;nh hơn.</p>', 50000, 109000, 90000, 20, N'shop-cart/assets/img/tamlyhocundung.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (59, 4, N'Thiên Tài Bên Trái, Kẻ Điên Bên Phải', N'<p><strong><em>NẾU MỘT NG&Agrave;Y ANH THẤY T&Ocirc;I ĐI&Ecirc;N, THỰC RA CH&Iacute;NH L&Agrave; ANH ĐI&Ecirc;N ĐẤY!</em></strong></p>
<p>Hỡi những con người đang oằn m&igrave;nh trong cuộc sống, bạn biết g&igrave; về thế giới của m&igrave;nh? L&agrave; v&ocirc; v&agrave;n thứ l&yacute; thuyết được c&aacute;c bậc vĩ nh&acirc;n kiểm chứng, l&agrave; luật lệ, l&agrave; cả ngh&igrave;n thứ sự thật bọc trong c&aacute;i lốt hiển nhi&ecirc;n, hay những triết l&yacute; cứng nhắc của cuộc đời?</p>
<p>Lại đ&acirc;y, vượt qua thứ nhận thức tẻ nhạt bị đ&oacute;ng k&iacute;n bằng con mắt trần gian, khai mở to&agrave;n bộ suy nghĩ, để d&ograve;ng m&aacute;u trong bạn sục s&ocirc;i trước những điều kỳ vĩ, ph&aacute; vỡ mọi quy tắc. Thế giới sẽ gọi bạn l&agrave; kẻ đi&ecirc;n, nhưng vậy th&igrave; c&oacute; sao? Ranh giới duy nhất giữa kẻ đi&ecirc;n v&agrave; thi&ecirc;n t&agrave;i chẳng qua l&agrave; một sợi chỉ mỏng manh: Thi&ecirc;n t&agrave;i chứng minh được thế giới của m&igrave;nh, c&ograve;n kẻ đi&ecirc;n chưa kịp l&agrave;m điều đ&oacute;. Chọn trở th&agrave;nh một kẻ đi&ecirc;n để vẫy v&ugrave;ng giữa nh&acirc;n gian loạn thế hay kh&oacute;a hết ch&uacute;ng lại, sống m&atilde;i một cuộc đời b&igrave;nh thường khiến bạn cảm thấy hạnh ph&uacute;c hơn?</p>
<p><strong>Thi&ecirc;n t&agrave;i b&ecirc;n tr&aacute;i, kẻ đi&ecirc;n b&ecirc;n phả</strong>i l&agrave; cuốn s&aacute;ch d&agrave;nh cho những người đi&ecirc;n rồ, những kẻ g&acirc;y rối, những người chống đối, những mảnh gh&eacute;p h&igrave;nh tr&ograve;n trong những &ocirc; vu&ocirc;ng kh&ocirc;ng vừa vặn&hellip; những người nh&igrave;n mọi thứ kh&aacute;c biệt, kh&ocirc;ng quan t&acirc;m đến quy tắc. Bạn c&oacute; thể đồng &yacute;, c&oacute; thể phản đối, c&oacute; thể vinh danh hay lăng mạ họ, nhưng điều duy nhất bạn kh&ocirc;ng thể l&agrave;m l&agrave; phủ nhận sự tồn tại của họ. Đ&oacute; l&agrave; những người lu&ocirc;n tạo ra sự thay đổi trong khi hầu hết con người chỉ sống rập khu&ocirc;n như một c&aacute;i m&aacute;y. Đa số đều nghĩ họ thật đi&ecirc;n rồ nhưng nếu nh&igrave;n ở g&oacute;c kh&aacute;c, ta lại thấy họ thi&ecirc;n t&agrave;i. Bởi chỉ những người đủ đi&ecirc;n nghĩ rằng họ c&oacute; thể thay đổi thế giới mới l&agrave; những người l&agrave;m được điều đ&oacute;.</p>
<p>Ch&agrave;o mừng đến với thế giới của những kẻ đi&ecirc;n.</p>
<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>', 20000, 56000, 30000, 20, N'shop-cart/assets/img/thientaibentrai.jpg', N'', 0, 0)
INSERT [dbo].[SanPham] ([MaSP], [MaDM], [TenSP], [MoTa], [GiaGoc], [GiaBanThuong], [GiaKhuyenMai], [SoLuong], [Anh], [MoTaNgan], [isDeleted], [SoLuongDaBan]) VALUES (60, 4, N'Tôi lựa chọn chính mình', NULL, 50000, 90000, 80000, 20, N'shop-cart/assets/img/toichonchinhminh.jpg', NULL, 0, 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TrangThai] ON 

INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (1, N'Chưa xác nhận')
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (2, N'Đã xác nhận')
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (3, N'Đang giao hàng')
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (4, N'Đã nhận hàng')
INSERT [dbo].[TrangThai] ([MaTrangThai], [TenTrangThai]) VALUES (5, N'Hủy đơn hàng')
SET IDENTITY_INSERT [dbo].[TrangThai] OFF
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDon__MaDH__38996AB5] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDon__MaDH__38996AB5]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDon__MaSP__3B75D760] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDon__MaSP__3B75D760]
GO
ALTER TABLE [dbo].[DanhMuc]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__MaGH__4AB81AF0] FOREIGN KEY([MaGH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__MaGH__4AB81AF0]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__MaTrang__3B75D760] FOREIGN KEY([MaTrangThai])
REFERENCES [dbo].[TrangThai] ([MaTrangThai])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__MaTrang__3B75D760]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__MaDM__403A8C7D] FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__MaDM__403A8C7D]
GO
