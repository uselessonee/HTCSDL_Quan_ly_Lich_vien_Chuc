
------------- Tỉnh thành, xã phường -------------
CREATE TABLE TinhThanh (
    MaTinhThanh CHAR(5) PRIMARY KEY,
    TenTinhThanh NVARCHAR(30) NOT NULL)

CREATE TABLE XaPhuong (
    MaXaPhuong CHAR(5) PRIMARY KEY,
    TenXaPhuong NVARCHAR(30) NOT NULL,
    MaTinhThanh CHAR(5) NOT NULL
    FOREIGN KEY (MaTinhThanh) REFERENCES TinhThanh(MaTinhThanh));

---------- DÂN TỘC, TÔN GIÁO -------------
CREATE TABLE DanToc (
    MaDanToc CHAR(5) PRIMARY KEY,
    TenDanToc NVARCHAR(30) NOT NULL);

CREATE TABLE TonGiao (
    MaTonGiao CHAR(5) PRIMARY KEY,
    TenTonGiao NVARCHAR(30) NOT NULL);

-------------- Nghề nghiệp, cơ quan, chức danh nghề nghiệp -------------
CREATE TABLE NgheNghiep (
    MaNgheNghiep CHAR(5) PRIMARY KEY,
    TenNgheNghiep NVARCHAR(30) NOT NULL);

CREATE TABLE CoQuan (
    MaCoQuan CHAR(5) PRIMARY KEY,
    TenCoQuan NVARCHAR(30) NOT NULL);

CREATE TABLE ChucDanhNgheNghiep (
    MaChucDanhNgheNghiep CHAR(5) PRIMARY KEY,
    ChucDanhNgheNghiep NVARCHAR(30) NOT NULL,
    BacLuong TINYINT NOT NULL,
    HeSoLuong DECIMAL(5,3) NOT NULL,
    NgayHuongLuong DATE NOT NULL,
    PhuCapChucDanh DECIMAL(5,3) NOT NULL,
    PhuCapKhac DECIMAL(5,3));

----------------Khen Thưởng--------------

CREATE TABLE HinhThucKhenThuong_KyLuat (
    MaHinhThuc CHAR(5) PRIMARY KEY,
    TenHinhThuc NVARCHAR(30) NOT NULL);

CREATE TABLE KhenThuong_KyLuat (
    MaKTKL CHAR(5) PRIMARY KEY,
    HinhThucKhenThuong CHAR(5),
    NamKhenThuong DATE,
    HinhThucKyLuat CHAR(5),
    NamKyLuat DATE,
    MaVienChuc CHAR(10) NOT NULL,
    FOREIGN KEY (HinhThucKhenThuong) REFERENCES HinhThucKhenThuong_KyLuat(MaHinhThuc),
    FOREIGN KEY (HinhThucKyLuat) REFERENCES HinhThucKhenThuong_KyLuat(MaHinhThuc),
    FOREIGN KEY (MaVienChuc) REFERENCES VienChuc(MaVienChuc));


----- Sức Khỏe -------------
CREATE TABLE HangThuongBinh (
    MaHangThuongBinh CHAR(5) PRIMARY KEY,
    TenHangThuongBinh NVARCHAR(30) NOT NULL);

CREATE TABLE TinhTrangSucKhoe (
    MaSucKhoe CHAR(5) PRIMARY KEY,
    ChieuCao INT NOT NULL,
    CanNang DECIMAL(4,2) NOT NULL,
    NhomMau CHAR(5),
    MaHangThuongBinh CHAR(5),
    LaConGiaDinhChinhSach BOOLEAN NOT NULL,
    MaVienChuc CHAR(10) NOT NULL,
    FOREIGN KEY (MaHangThuongBinh) REFERENCES HangThuongBinh(MaHangThuongBinh),
    FOREIGN KEY (MaVienChuc) REFERENCES VienChuc(MaVienChuc));

------ TRình độ học vấn, trình độ chuyên môn, trình độ ngoại ngữ, tin học -------------
CREATE TABLE CapLyLuanChinhTri (
    MaCap CHAR(5) PRIMARY KEY,
    TenCap NVARCHAR(30) NOT NULL);

CREATE TABLE ChuyenMon(
    MaChuyenMon CHAR(5) PRIMARY KEY,
    TenChuyenMon NVARCHAR(30) NOT NULL);

CREATE TABLE NgoaiNgu (
    MaNgoaiNgu CHAR(5) PRIMARY KEY,
    TenNgoaiNgu NVARCHAR(30) NOT NULL);

CREATE TABLE ChungChiTinHoc (
    MaChungChi CHAR(5) PRIMARY KEY,
    TenChungChi NVARCHAR(30) NOT NULL);

CREATE TABLE TrinhDoHocVan (
    MaTrinhDo CHAR(5) PRIMARY KEY,
    TrinhDoGiaoDucQuocPhong CHAR(5),
    TrinhDoChuyenMonCaoNhat CHAR(5),
    LyLuanChinhTri CHAR(5),
    QuanLyNhaNuoc CHAR(5),
    TrinhDoNghiepVuChuyenNganh NVARCHAR(100),
    NgoaiNgu CHAR(5),
    TinHoc CHAR(5),
    MaVienChuc CHAR(10) NOT NULL,
    FOREIGN KEY (TrinhDoGiaoDucQuocPhong) REFERENCES CapLyLuanChinhTri(MaCap),
    FOREIGN KEY (TrinhDoChuyenMonCaoNhat) REFERENCES ChuyenMon(MaChuyenMon),
    FOREIGN KEY (LyLuanChinhTri) REFERENCES CapLyLuanChinhTri(MaCap),
    FOREIGN KEY (QuanLyNhaNuoc) REFERENCES CapLyLuanChinhTri(MaCap), -----kho hieeur
    FOREIGN KEY (NgoaiNgu) REFERENCES NgoaiNgu(MaNgoaiNgu),
    FOREIGN KEY (TinHoc) REFERENCES ChungChiTinHoc(MaChungChi),
    FOREIGN KEY (MaVienChuc) REFERENCES VienChuc(MaVienChuc));


----------Danh Hiệu Học hàm -------------
CREATE TABLE HocHam (
    MaHocHam CHAR(5) PRIMARY KEY,
    TenHocHam NVARCHAR(30) NOT NULL);
CREATE TABLE DanhHieu(
    MaDanhHieu CHAR(5) PRIMARY KEY,
    TenDanhHieu NVARCHAR(30) NOT NULL
);

CREATE TABLE DanhHieu_HocHam (
    MaDanhHieu CHAR(5) PRIMARY KEY,
    DanhHieuDuocPhongCaoNhat CHAR(5),
    HocHamDuocPhong
    NamDuocPhong CHAR(5),
    MaVienChuc CHAR(10) NOT NULL,
    FOREIGN KEY (DanhHieuDuocPhongCaoNhat) REFERENCES DanhHieu(MaDanhHieu),
    FOREIGN KEY (HocHamDuocPhong) REFERENCES HocHam(MaHocHam),
    FOREIGN KEY (MaVienChuc) REFERENCES VienChuc(MaVienChuc));

------ Thong tin Dang Quan doi--------------
CREATE TABLE QuanHam(
    MaQuanHam CHAR(5) PRIMARY KEY,
    TenQuanHam NVARCHAR(30) NOT NULL);

CREATE TABLE ThongTinDangQuanDoi (
    MaTTDQD CHAR(5) PRIMARY KEY,
    NgayVaoDang DATE,
    NgayChinhThuc DATE,
    NgayThamGiaToChucChinhTriXaHoi DATE,
    NgayNhapNgu DATE,
    NgayXuatNgu DATE,
    QuanHamCaoNhat CHAR(5),
    MaVienChuc CHAR(10) NOT NULL,
    FOREIGN KEY (QuanHamCaoNhat) REFERENCES QuanHam(MaQuanHam),
    FOREIGN KEY (MaVienChuc) REFERENCES VienChuc(MaVienChuc));

CREATE TABLE VienChuc (
    MaVienChuc CHAR(10) PRIMARY KEY,
    Ho NVARCHAR(20) NOT NULL,
    TenLot NVARCHAR(40),
    Ten NVARCHAR(20) NOT NULL,
    TenKhac NVARCHAR(100), 
    NgaySinh DATE NOT NULL,
    GioiTinh NVARCHAR(3) NOT NULL, 
    NoiSinh_XaPhuong CHAR(5) NOT NULL,
    NoiSinh_TinhThanh CHAR(5) NOT NULL,
    ------- Quê quán -----------
    QueQuan_XaPhuong CHAR(5) NOT NULL,
    QueQuan_TinhThanh CHAR(5) NOT NULL,
    --------------------------
    DanToc CHAR(5) NOT NULL,
    TonGiao CHAR(5) NOT NULL,
    HokhauThuongTru NVARCHAR(300) NOT NULL,
    NoiOHienTai NVARCHAR(300) NOT NULL,
    ------- Công Việc -----------
    NgheNghiepKhiTuyenDung CHAR(5),
    NgayTuyenDung DATE NOT NULL,
    CoQuanTuyenDung CHAR(5) NOT NULL,
    ChucDanhHienTai CHAR(5) NOT NULL,
    ChucDanhKiemNhiem CHAR(5) NOT NULL,
    CongViecChinh NVARCHAR(100) NOT NULL,
    SoHieuVienChuc CHAR(10) NOT NULL,
    AnhDaiDien TEXT);
