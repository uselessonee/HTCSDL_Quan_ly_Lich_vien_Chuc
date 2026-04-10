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
    AnhDaiDien VARCHAR(max),

