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


---- Tạo bảng trình Độ Học Vấn ---------
CREATE TABLE TrinhDoHocVan (
    MaTrinhDo INT PRIMARY KEY, -- Mã trình độ học vấn, cần thảo luận thêm với nhóm để xác định kiểu dữ liệu
    TrinhDoGiaoDucPhoThong NVARCHAR(255) NOT NULL, --- Cần thảo luận thêm về cách lưu trình độ giáo dục phổ thông, có thể là ENUM hoặc bảng phụ nếu có nhiều loại
    TrinhDoChuyenMonCaoNhat NVARCHAR(255) NOT NULL, -- Cần thảo luận thêm về cách lưu trình độ chuyên môn cao nhất, có thể là ENUM hoặc bảng phụ nếu có nhiều loại
    LyLuanChinhTri NVARCHAR(255) NOT NULL, -- Cần thảo luận thêm về cách lưu lý luận chính trị, có thể là ENUM hoặc bảng phụ nếu có nhiều loại
    QuanLyNhaNuoc NVARCHAR(255) NOT NULL, -- Cần thảo luận thêm về cách lưu quản lý nhà nước, có thể là ENUM hoặc bảng phụ nếu có nhiều loại
    TrinhDoNghiepVuChuyenNganh NVARCHAR(255) NOT NULL, -- Cần thảo luận thêm về cách lưu trình độ nghiệp vụ chuyên ngành, có thể là ENUM hoặc bảng phụ nếu có nhiều loại
    NgoaiNgu NVARCHAR(255) NOT NULL, -- Cần thảo luận thêm về cách lưu ngoại ngữ, có thể là ENUM hoặc bảng phụ nếu có nhiều loại
    -- TinHoc Enum() Chịu đuối quá rồi, mai hỏi hai đứa kia
);