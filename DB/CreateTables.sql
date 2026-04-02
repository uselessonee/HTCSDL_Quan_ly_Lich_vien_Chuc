CREATE TABLE VienChuc (
    MaVienChuc INT PRIMARY KEY, -- Mã viên chức, cần thảo luận thêm với nhóm để xác định kiểu dữ liệu
    HoTen NVARCHAR(255) NOT NULL,
    TenKhac NVARCHAR(255), -- không hiểu, cần giải thích sau
    NgaySinh DATE NOT NULL,
    GioiTinh NVARCHAR(10) NOT NULL, -- Cần thảo luận nên là boolean hay VARCHAR ('Nam', 'Nu', 'Khac') hay lmao
    -- ------Nơi Sinh -----------
    NoiSinh_XaPhuong NVARCHAR(255) NOT NULL,
    NoiSinh_QuanHuyen NVARCHAR(255) NOT NULL,
    NoiSinh_TinhThanh NVARCHAR(255) NOT NULL,
    ------- Quê quán -----------
    QueQuan_XaPhuong NVARCHAR(255) NOT NULL,
    QueQuan_QuanHuyen NVARCHAR(255) NOT NULL,
    QueQuan_TinhThanh NVARCHAR(255) NOT NULL,
    --------------------------
    DanToc NVARCHAR(255) NOT NULL,
    TonGiao NVARCHAR(255) NOT NULL,
    HokhauThuongTru NVARCHAR(255) NOT NULL,
    NoiOHienTai NVARCHAR(255) NOT NULL,
    ------- Công Việc -----------
    NgheNghiepKhiTuyenDung NVARCHAR(255) NOT NULL,
    NgayTuyenDung DATE NOT NULL,
    CoQuanTuyenDung NVARCHAR(255) NOT NULL,
    ChucDanhHienTai NVARCHAR(255) NOT NULL,
    ChucDanhKiemNhiem NVARCHAR(255) NOT NULL,
    CongViecChinht NVARCHAR(255) NOT NULL,
    ChucDanhNgheNghiep NVARCHAR(255) NOT NULL,
    MaSoChucDanhNgheNghiep NVARCHAR(255) NOT NULL,
    ----------Luong-------
    BacLuong INT NOT NULL,
    HeSoLuong FLOAT NOT NULL,
    NgayHuongLuong DATE NOT NULL,
    PhuCapChucDanh FLOAT NOT NULL,
    PhuCapKhac FLOAT NOT NULL,
    SoHieuVienChuc NVARCHAR(255) NOT NULL,
    AnhDaiDien LONGBLOB, -- Cần thảo luận thêm về kiểu dữ liệu lưu ảnh, có thể là VARBINARY(MAX) nếu chết não
);