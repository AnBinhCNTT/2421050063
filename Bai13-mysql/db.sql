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
CREATE TABLE dao_dien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(255) NOT NULL,
    ngay_sinh DATE NOT NULL
);
CREATE TABLE if not EXISTS the_Loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_the_loai varchar(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS dien_Vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    ngay_sinh DATE NOT NULL,
    dao_dien_id VARCHAR(50) NOT NULL
);
CREATE TABLE if not exists phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_phim VARCHAR(255) NOT NULL,
    quoc_gia VARCHAR(100),
    nam INT,
    do_tuoi INT,
    dao_dien_id INT
);
CREATE TABLE if not EXISTS phim_the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id int NOT NULL,
    the_loai_id int
);

CREATE TABLE IF NOT EXISTS phim_dien_vien(
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id int,
    dien_vien_id int
);
-- dao_dien
INSERT INTO dao_dien ( ho_ten , ngay_sinh ) VALUES ('Nguyễn An Binh','2006-8-12');
INSERT INTO dao_dien ( ho_ten , ngay_sinh ) VALUES ('Đặng Thị Hiên','2000-7-17');
INSERT INTO dao_dien ( ho_ten , ngay_sinh ) VALUES ('Nguyễn Gia Bảo ','2006-12-27');
INSERT INTO dao_dien ( ho_ten , ngay_sinh ) VALUES ('Trần Thị Yến Nhi','2006-6-23');
INSERT INTO dao_dien ( ho_ten , ngay_sinh ) VALUES ('Nguyễn Sơn Tùng','2006-7-19');

-- phim
INSERT INTO phim ( ten_phim , quoc_gia , nam , do_tuoi , dao_dien_id ) VALUES ('Bố Già','Việt Nam','2017','6', 1);
INSERT INTO phim ( ten_phim , quoc_gia , nam , do_tuoi , dao_dien_id ) VALUES ('Nhà Bà Nữ','Việt Nam','2018','8', 2);
INSERT INTO phim ( ten_phim , quoc_gia , nam , do_tuoi , dao_dien_id ) VALUES ('Cô dâu 8 tuổi','Ấn Độ','2011','13', 3);
INSERT INTO phim ( ten_phim , quoc_gia , nam , do_tuoi , dao_dien_id ) VALUES ('Nàng Tiên Cá','Philippin','2014','15', 4);
INSERT INTO phim ( ten_phim , quoc_gia , nam , do_tuoi , dao_dien_id ) VALUES ('Penthouse','Hàn Quốc','2019','6', 5);

-- phim_the_loai
INSERT INTO phim_the_loai ( phim_id , the_loai_id ) VALUES (1,1);
INSERT INTO phim_the_loai ( phim_id , the_loai_id ) VALUES (1,2);
INSERT INTO phim_the_loai ( phim_id , the_loai_id ) VALUES (2,1);
INSERT INTO phim_the_loai ( phim_id , the_loai_id ) VALUES (3,2);
INSERT INTO phim_the_loai ( phim_id , the_loai_id ) VALUES (4,4);
INSERT INTO phim_the_loai ( phim_id , the_loai_id ) VALUES (5,5);

-- phim_dien_vien
INSERT INTO phim_dien_vien ( phim_id , dien_vien_id ) VALUES (1,1);
INSERT INTO phim_dien_vien ( phim_id , dien_vien_id ) VALUES (2,2);
INSERT INTO phim_dien_vien ( phim_id , dien_vien_id ) VALUES (3,3);
INSERT INTO phim_dien_vien ( phim_id , dien_vien_id ) VALUES (4,4);
INSERT INTO phim_dien_vien ( phim_id , dien_vien_id ) VALUES (5,5);

SELECT p.ten_phim, dd.ho_ten as `dao_dien`, tl.ten_the_loai FROM `phim` p
join `dao_dien` dd
on p.dao_dien_id = dd.id
join `phim_the_loai` ptl
on p.id = ptl.phim_id
JOIN the_loai tl
on tl.id = ptl.the_loai_id
where p.id = 1;