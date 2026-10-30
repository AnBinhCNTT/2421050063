creare database netflix;
CREATE TABLE if not EXISTS nguoi_dung (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap varchar(30) NOT NULL,
    mat_khau varchar(255) NOT NULL,
    email varchar(30) NOT NULL,
    ho_ten varchar(30) NOT NULL,
    ngay_sinh date NOT NULL,
    so_dien_thoai varchar(15) NOT NULL,
    gioi_tinh boolean NOT NULL
);
CREATE TABLE if not EXISTS the_Loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_the_loai varchar(255)
);
CREATE TABLE IF NOT EXISTS dien_Vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(100),
    ngay_sinh DATE,
    dao_dien_id VARCHAR(50)
);
CREATE TABLE if not EXISTS phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_phim varchar(255),
    quoc_gia varchar(100),
    nam datetime,
    do_tuoi int,
    mo_ta varchar(255)
);
CREATE TABLE if not EXISTS phim_the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id int,
    the_loai_id int
);

CREATE TABLE IF NOT EXISTS phim_dien_vien(
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id int,
    dien_vien_id int
);
