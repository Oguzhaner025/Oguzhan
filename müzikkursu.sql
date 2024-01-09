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




    CREATE TABLE uye (
    uyeID INT PRIMARY KEY AUTO_INCREMENT,
    kullaniciadi VARCHAR(50) NOT NULL,
    sifre VARCHAR(50) NOT NULL,
    AD VARCHAR(100) NOT NULL


CREATE TABLE Gonderiler (
    GonderiID INT PRIMARY KEY AUTO_INCREMENT,
    uyeID INT,
    icerik TEXT NOT NULL,
    Gonderitarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (uyeID) REFERENCES uyeler(uyeID)



CREATE TABLE takipci (
    takipciID INT PRIMARY KEY AUTO_INCREMENT,
    uyeID1 INT,
    uyeID2 INT,
    Status ENUM('beklemede', 'kabul', 'red') DEFAULT 'beklemede',
    FOREIGN KEY (uyeID1) REFERENCES uyeler(uyeID),
    FOREIGN KEY (uyeID2) REFERENCES uyeler(uyeID)



CREATE TABLE yorumlar (
    yorumID INT PRIMARY KEY AUTO_INCREMENT,
    GonderiID INT,
    uyeID INT,
    icerik TEXT NOT NULL,
    yorumtarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (GonderiID) REFERENCES Gonderiler(GonderiID),
    FOREIGN KEY (uyeID) REFERENCES uyeler(uyeID)




CREATE TABLE begeniler (
    begeniID INT PRIMARY KEY AUTO_INCREMENT,
    GonderiID INT,
    uyeID INT,
    begenitarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (GonderiID) REFERENCES Gonderiler(GonderiID),
    FOREIGN KEY (uyeID) REFERENCES uyeler(uyeID)




CREATE TABLE ozelsohbet (
    sohbetID INT PRIMARY KEY AUTO_INCREMENT,
    gonderenID INT,
    aliciID INT,
    mesaj TEXT NOT NULL,
    gondermetarihi TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (gonderenID) REFERENCES uyeler(uyeID),
    FOREIGN KEY (aliciID) REFERENCES uyeler(uyeID)






