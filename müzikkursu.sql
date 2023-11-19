CREATE TABLE Uyekayit (   
    AdSoyad VARCHAR(255) NOT NULL,
    Cinsiyet ENUM('Erkek', 'Kadin', 'Belirsiz') NOT NULL,
    Dogumyili DATE NOT NULL,
    Telefon VARCHAR(20),
    E-posta VARCHAR(255),   
   
CREATE TABLE Kurslar (
    KursAdi VARCHAR(100) NOT NULL,
    Aciklama TEXT,
    Fiyat DECIMAL(8, 2) NOT NULL
   

CREATE TABLE Eğitmenler (   
    AdSoyad VARCHAR(200) NOT NULL,
    Cinsiyet ENUM('Erkek', 'Kadin', 'Belirsiz') NOT NULL,
    Verdigikurs VARCHAR(100),
    Telefon VARCHAR(15),
    E-posta VARCHAR(255)

CREATE TABLE Enstrumanlar (    
    EnstrumanAdi VARCHAR(255) NOT NULL,       
    Türü VARCHAR(15),

CREATE TABLE Enstrumansatis (
    EnstrumanAdi VARCHAR(100) NOT NULL,
    Aciklama TEXT,
    Fiyat DECIMAL(8, 2) NOT NULL


INSERT INTO `kategori` VALUES (2, 'Gitar');
INSERT INTO `kategori` VALUES (3, 'Piyano');
INSERT INTO `kategori` VALUES (4, 'Keman');
INSERT INTO `kategori` VALUES (5, 'Klarnet');
INSERT INTO `kategori` VALUES (6, 'Ud');
INSERT INTO `kategori` VALUES (7, 'Bağlama');
INSERT INTO `kategori` VALUES (8, 'Çello');


CREATE TABLE Enstrumanfiyat (
  `tür` varchar(50)  NOT NULL,
  `marka` varchar(50) NOT NULL,
  `model` varchar(200) NOT NULL,
  `tel` int(12) NOT NULL,
  `malzeme` varchar(50) NOT NULL,
  `fiyat` int(11) NOT NULL,


END
;;
delimiter ;


