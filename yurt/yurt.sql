-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for yurt
CREATE DATABASE IF NOT EXISTS `yurt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `yurt`;

-- Dumping structure for table yurt.bina
CREATE TABLE IF NOT EXISTS `bina` (
  `bina_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oda_sayisi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adres` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bina_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table yurt.bina: ~7 rows (approximately)
/*!40000 ALTER TABLE `bina` DISABLE KEYS */;
INSERT INTO `bina` (`bina_id`, `oda_sayisi`, `adres`) VALUES
	(1, '15', 'malatya'),
	(2, '15', 'elazig'),
	(3, '15', 'mardin'),
	(4, '15', 'sanliurfa'),
	(5, '50', 'istanbul'),
	(6, '20', 'ankara'),
	(7, '10', 'izmir');
/*!40000 ALTER TABLE `bina` ENABLE KEYS */;

-- Dumping structure for table yurt.category
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.category: ~12 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`category_id`, `name`, `last_update`) VALUES
	(1, 'piskoloji', '2019-04-20 02:25:09'),
	(2, 'macera', '2019-04-20 02:23:57'),
	(3, 'bilim kurgu', '2019-04-20 02:25:06'),
	(6, 'sinema tarihi', '2019-04-20 02:25:27'),
	(7, 'mektup', '2019-04-20 02:25:42'),
	(8, 'sanat tasarim', '2019-04-20 02:26:00'),
	(9, 'tarih', '2019-04-20 02:26:13'),
	(10, 'gezi', '2019-04-20 02:26:24'),
	(11, 'felsefe', '2019-04-20 02:26:36'),
	(12, 'egitim', '2019-04-20 02:26:50'),
	(13, 'mizah', '2019-04-20 02:27:01'),
	(14, 'saglık', '2019-04-20 02:27:11');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table yurt.document
CREATE TABLE IF NOT EXISTS `document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.document: ~8 rows (approximately)
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` (`id`, `name`, `path`, `type`) VALUES
	(1, '1w2.jpg', 'C:\\Users\\Muhammed ARSLAN\\Documents\\NetBeansProjects\\projeYOS\\upload', 'image/jpeg'),
	(2, '16.05.2019.06.07.14.png', 'C:\\Users\\Muhammed ARSLAN\\Documents\\NetBeansProjects\\projeYOS\\upload', 'image/png'),
	(3, '16.05.2019.06.16.06.jpg', 'C:\\Users\\Muhammed ARSLAN\\Documents\\NetBeansProjects\\projeYOS\\upload', 'image/jpeg'),
	(4, '16.05.2019.06.16.14.png', 'C:\\Users\\Muhammed ARSLAN\\Documents\\NetBeansProjects\\projeYOS\\upload', 'image/png'),
	(5, '26.05.2019.04.20.37.jpg', 'C:\\Users\\Muhammed ARSLAN\\Documents\\NetBeansProjects\\projeYOS\\upload', 'image/jpeg'),
	(6, '26.05.2019.06.33.15.jpg', 'C:\\Users\\Muhammed ARSLAN\\Documents\\NetBeansProjects\\projeYOS\\upload', 'image/jpeg'),
	(7, '27.05.2019.03.41.12.jpg', 'C:\\Users\\Muhammed ARSLAN\\Documents\\NetBeansProjects\\projeYOS\\upload', 'image/jpeg'),
	(8, '29.05.2019.03.23.27.jpg', 'C:\\Users\\Muhammed ARSLAN\\Documents\\NetBeansProjects\\projeYOS\\upload', 'image/jpeg');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;

-- Dumping structure for table yurt.duyurlar_turu
CREATE TABLE IF NOT EXISTS `duyurlar_turu` (
  `tur_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `isim` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.duyurlar_turu: ~4 rows (approximately)
/*!40000 ALTER TABLE `duyurlar_turu` DISABLE KEYS */;
INSERT INTO `duyurlar_turu` (`tur_id`, `isim`) VALUES
	(1, 'haber'),
	(2, 'yurt idare'),
	(3, 'yemekhane'),
	(4, 'temizlik'),
	(5, 'kurllar');
/*!40000 ALTER TABLE `duyurlar_turu` ENABLE KEYS */;

-- Dumping structure for table yurt.duyurular
CREATE TABLE IF NOT EXISTS `duyurular` (
  `duyuru_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bilgi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `duyurlar_turu` int(10) unsigned NOT NULL,
  PRIMARY KEY (`duyuru_id`),
  KEY `duyuru_turu` (`duyurlar_turu`),
  CONSTRAINT `fk_duyur_tur` FOREIGN KEY (`duyurlar_turu`) REFERENCES `duyurlar_turu` (`tur_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.duyurular: ~2 rows (approximately)
/*!40000 ALTER TABLE `duyurular` DISABLE KEYS */;
INSERT INTO `duyurular` (`duyuru_id`, `bilgi`, `duyurlar_turu`) VALUES
	(1, 'aksam saat 8 de toplanti olacaktir', 2),
	(2, 'aksam yemek satti 18.30 da basliyor', 1),
	(3, 'yurt kapanis saati 00:00', 5);
/*!40000 ALTER TABLE `duyurular` ENABLE KEYS */;

-- Dumping structure for table yurt.grup
CREATE TABLE IF NOT EXISTS `grup` (
  `grup_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grup_adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`grup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.grup: ~2 rows (approximately)
/*!40000 ALTER TABLE `grup` DISABLE KEYS */;
INSERT INTO `grup` (`grup_id`, `grup_adi`) VALUES
	(1, 'Admin'),
	(2, 'User');
/*!40000 ALTER TABLE `grup` ENABLE KEYS */;

-- Dumping structure for table yurt.kantin
CREATE TABLE IF NOT EXISTS `kantin` (
  `malzeme_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `isim` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tur_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`malzeme_id`),
  KEY `id_tur` (`tur_id`),
  CONSTRAINT `FK_kantin_k_melzeme_turu` FOREIGN KEY (`tur_id`) REFERENCES `kantin_tur` (`tur_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.kantin: ~14 rows (approximately)
/*!40000 ALTER TABLE `kantin` DISABLE KEYS */;
INSERT INTO `kantin` (`malzeme_id`, `isim`, `tur_id`) VALUES
	(1, 'kola', 1),
	(2, 'fanta', 1),
	(3, 'capy', 1),
	(4, 'didi', 1),
	(5, 'canga', 3),
	(6, 'benimo', 2),
	(7, 'tutku', 2),
	(8, 'al beni', 2),
	(9, 'hosbes', 3),
	(10, 'cokonat', 3),
	(11, 'puf', 4),
	(12, 'tadım', 4),
	(13, 'citos', 5),
	(14, 'patos', 5);
/*!40000 ALTER TABLE `kantin` ENABLE KEYS */;

-- Dumping structure for table yurt.kantin_tur
CREATE TABLE IF NOT EXISTS `kantin_tur` (
  `tur_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tur_isim` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.kantin_tur: ~4 rows (approximately)
/*!40000 ALTER TABLE `kantin_tur` DISABLE KEYS */;
INSERT INTO `kantin_tur` (`tur_id`, `tur_isim`) VALUES
	(1, 'icecek'),
	(2, 'buskuvit'),
	(3, 'gofret'),
	(4, 'cikolata'),
	(5, 'cips');
/*!40000 ALTER TABLE `kantin_tur` ENABLE KEYS */;

-- Dumping structure for table yurt.kurslar
CREATE TABLE IF NOT EXISTS `kurslar` (
  `kurs_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kurs_adi` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`kurs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.kurslar: ~6 rows (approximately)
/*!40000 ALTER TABLE `kurslar` DISABLE KEYS */;
INSERT INTO `kurslar` (`kurs_id`, `kurs_adi`) VALUES
	(1, 'ingilizce'),
	(2, 'saz'),
	(3, 'santranc'),
	(4, 'gitar'),
	(5, 'matematik'),
	(6, 'fizik'),
	(7, 'edebiyat');
/*!40000 ALTER TABLE `kurslar` ENABLE KEYS */;

-- Dumping structure for table yurt.kutuphane
CREATE TABLE IF NOT EXISTS `kutuphane` (
  `kitab_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kitab_adi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` year(4) NOT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`kitab_id`),
  KEY `FK_kutuphane_language` (`language_id`),
  CONSTRAINT `FK_kutuphane_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.kutuphane: ~13 rows (approximately)
/*!40000 ALTER TABLE `kutuphane` DISABLE KEYS */;
INSERT INTO `kutuphane` (`kitab_id`, `kitab_adi`, `description`, `year`, `language_id`) VALUES
	(1, 'kurt mantolu madonna', 'sabahattin alinin cok guzel bir kitabi', '2019', 1),
	(2, 'anne baba ', 'duygusal bir kitap', '2013', 1),
	(3, 'ask i memnu', 'ask ve romantik ', '2014', 1),
	(4, 'akın', 'destan uc perde', '2019', 2),
	(5, ' Charlotte’s Web', 'ask', '2015', 3),
	(6, 'asigin sarkisi', '2008 nobel odulu', '2008', 3),
	(7, ' Mieko and the Fifth Treasure', 'tavsiye edilen kitaplar listesinde.', '2012', 2),
	(8, ' The Outsiders', 'Ponyboy’un arkadaşları rakip çeteyi kovalarlar ve Ponyboy’u kurtarırlar.', '2011', 2),
	(9, 'El-iktisad Fi ', 'dini ele alan harika bir kitap', '2017', 3),
	(10, 'merahm', ' sarf ve nahiv konularından', '2014', 3),
	(11, 'nahiv', 'Arapça dilbilgisinin ikinci kademesi', '2013', 3),
	(12, 'Anna Karenina', 'bilgi yok', '2017', 5),
	(13, 'acligin sarkisi', 'sefil bir aileden soz ediliyor', '2019', 4);
/*!40000 ALTER TABLE `kutuphane` ENABLE KEYS */;

-- Dumping structure for table yurt.kutup_category
CREATE TABLE IF NOT EXISTS `kutup_category` (
  `kitab_id` int(3) unsigned NOT NULL,
  `category_id` int(3) unsigned NOT NULL,
  PRIMARY KEY (`kitab_id`,`category_id`),
  KEY `FK_many_categories` (`category_id`),
  CONSTRAINT `FK_many_categories` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_many_kutuphane` FOREIGN KEY (`kitab_id`) REFERENCES `kutuphane` (`kitab_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.kutup_category: ~19 rows (approximately)
/*!40000 ALTER TABLE `kutup_category` DISABLE KEYS */;
INSERT INTO `kutup_category` (`kitab_id`, `category_id`) VALUES
	(1, 1),
	(1, 3),
	(2, 2),
	(3, 3),
	(3, 11),
	(4, 12),
	(5, 2),
	(5, 11),
	(6, 13),
	(7, 6),
	(8, 8),
	(9, 9),
	(10, 1),
	(10, 2),
	(10, 8),
	(11, 12),
	(12, 7),
	(13, 9),
	(13, 11);
/*!40000 ALTER TABLE `kutup_category` ENABLE KEYS */;

-- Dumping structure for table yurt.language
CREATE TABLE IF NOT EXISTS `language` (
  `language_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.language: ~4 rows (approximately)
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`language_id`, `name`) VALUES
	(1, 'turkce'),
	(2, 'ingilizce'),
	(3, 'arapca'),
	(4, 'almanca'),
	(5, 'rusca');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;

-- Dumping structure for table yurt.odalar
CREATE TABLE IF NOT EXISTS `odalar` (
  `oda_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oda_no` int(10) unsigned NOT NULL,
  `bina_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`oda_id`),
  KEY `FK_odalar_bina` (`bina_id`),
  CONSTRAINT `FK_odalar_bina` FOREIGN KEY (`bina_id`) REFERENCES `bina` (`bina_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.odalar: ~9 rows (approximately)
/*!40000 ALTER TABLE `odalar` DISABLE KEYS */;
INSERT INTO `odalar` (`oda_id`, `oda_no`, `bina_id`) VALUES
	(1, 101, 1),
	(2, 102, 1),
	(3, 103, 1),
	(4, 10, 2),
	(5, 11, 2),
	(6, 12, 2),
	(7, 13, 2),
	(8, 104, 3),
	(9, 105, 4),
	(10, 58, 1),
	(11, 32, 2),
	(12, 444, 6);
/*!40000 ALTER TABLE `odalar` ENABLE KEYS */;

-- Dumping structure for table yurt.odemeler
CREATE TABLE IF NOT EXISTS `odemeler` (
  `odeme_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ogrenciAdi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ucret` int(11) NOT NULL,
  PRIMARY KEY (`odeme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.odemeler: ~4 rows (approximately)
/*!40000 ALTER TABLE `odemeler` DISABLE KEYS */;
INSERT INTO `odemeler` (`odeme_id`, `ogrenciAdi`, `ucret`) VALUES
	(1, 'muhammet gunes', 350),
	(2, 'mustafa solmaz', 350),
	(3, ' ahmet ay', 350),
	(4, 'yagiz', 350),
	(5, 'kadir solmaz', 300);
/*!40000 ALTER TABLE `odemeler` ENABLE KEYS */;

-- Dumping structure for table yurt.ogrenci
CREATE TABLE IF NOT EXISTS `ogrenci` (
  `ogr_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `adi` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soyadi` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oda_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ogr_id`),
  KEY `oda` (`oda_id`),
  CONSTRAINT `FK_ogr_oda` FOREIGN KEY (`oda_id`) REFERENCES `odalar` (`oda_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.ogrenci: ~8 rows (approximately)
/*!40000 ALTER TABLE `ogrenci` DISABLE KEYS */;
INSERT INTO `ogrenci` (`ogr_id`, `adi`, `soyadi`, `oda_id`) VALUES
	(1, 'mahmut', 'celik', 1),
	(2, 'ahmet', 'ay', 1),
	(3, 'yusuf', 'aslan', 1),
	(4, 'ali', 'gunes', 1),
	(5, 'vedat', 'yakar', 2),
	(6, 'muhammet', 'gunes', 2),
	(7, 'kadir', 'solmaz', 3),
	(8, 'adem', 'yilmaz', 3),
	(9, 'yagiz', 'yasar', 8);
/*!40000 ALTER TABLE `ogrenci` ENABLE KEYS */;

-- Dumping structure for table yurt.personel
CREATE TABLE IF NOT EXISTS `personel` (
  `personel_id` int(11) NOT NULL AUTO_INCREMENT,
  `isim` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soyad` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tc` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tur_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`personel_id`),
  KEY `tur` (`tur_id`),
  CONSTRAINT `FK_personel_personel_tur` FOREIGN KEY (`tur_id`) REFERENCES `personel_tur` (`tur_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.personel: ~6 rows (approximately)
/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` (`personel_id`, `isim`, `soyad`, `tc`, `tur_id`) VALUES
	(1, 'erdem', 'sevinc', '54678951', 1),
	(2, 'muhammet', 'bozkurt', '54684555', 2),
	(3, 'taha', 'gunes', '78458451', 3),
	(4, 'nurettin', 'tatar', '45120512', 4),
	(5, 'mehmet', 'aslan', '84613255', 5),
	(6, 'muh', 'assss', '99634785', 6);
/*!40000 ALTER TABLE `personel` ENABLE KEYS */;

-- Dumping structure for table yurt.personel_tur
CREATE TABLE IF NOT EXISTS `personel_tur` (
  `tur_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tur_ismi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.personel_tur: ~6 rows (approximately)
/*!40000 ALTER TABLE `personel_tur` DISABLE KEYS */;
INSERT INTO `personel_tur` (`tur_id`, `tur_ismi`) VALUES
	(1, 'mudur'),
	(2, 'mudur yardimci'),
	(3, 'beletmen'),
	(4, 'asci'),
	(5, 'temizlikci'),
	(6, 'bekci');
/*!40000 ALTER TABLE `personel_tur` ENABLE KEYS */;

-- Dumping structure for table yurt.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uname` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userTuru` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c` tinyint(3) unsigned NOT NULL,
  `r` tinyint(3) unsigned NOT NULL,
  `u` tinyint(3) unsigned NOT NULL,
  `d` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.user: ~20 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `uname`, `password`, `userTuru`, `c`, `r`, `u`, `d`) VALUES
	(1, 'admin', 'admin', 'Admin', 1, 1, 1, 1),
	(2, 'user', 'user', 'User', 0, 1, 1, 1),
	(3, 'muhammed', 'arslan', 'Admin', 0, 0, 0, 0),
	(4, 'yusuf', 'yus', 'Admin', 0, 0, 0, 1),
	(5, 'mazlum', 'maz', 'Admin', 1, 0, 1, 1),
	(6, 'yagmur', 'yagmur', 'Admin', 0, 0, 1, 1),
	(7, 'sabiha', 'sabiha', 'Admin', 0, 1, 0, 0),
	(8, 'umut', 'umut', 'Admin', 0, 1, 0, 1),
	(9, 'funda', 'funda', 'Admin', 0, 1, 1, 0),
	(10, 'halil', 'halil', 'User', 0, 1, 1, 1),
	(12, 'malik', 'malik', 'User', 1, 0, 0, 0),
	(13, 'ahmet', 'arslan', 'User', 1, 0, 0, 1),
	(14, 'abda', '1234567', 'Admin', 1, 0, 1, 0),
	(15, 'abd', '12345', 'Admin', 1, 0, 1, 1),
	(16, 'abusaid', 'abusaid', 'Admin', 1, 1, 0, 0),
	(17, 'Muhammed', 'hoca', 'Admin', 1, 1, 0, 1),
	(18, 'brk', 'brk', 'Admin', 1, 1, 1, 0),
	(19, 'yeni', 'yeni', 'Admin', 1, 1, 1, 1),
	(20, 'ööö', 'theLord', 'Admin', 0, 0, 0, 0),
	(22, 'esma', '123', 'Admin', 0, 0, 0, 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table yurt.yemek
CREATE TABLE IF NOT EXISTS `yemek` (
  `ek_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ek_isim` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ek_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.yemek: ~4 rows (approximately)
/*!40000 ALTER TABLE `yemek` DISABLE KEYS */;
INSERT INTO `yemek` (`ek_id`, `ek_isim`) VALUES
	(1, 'haslama'),
	(2, 'tavuk donerü'),
	(3, 'etli pilav'),
	(4, 'izmir kofte'),
	(5, 'adana kebap');
/*!40000 ALTER TABLE `yemek` ENABLE KEYS */;

-- Dumping structure for table yurt.yetki
CREATE TABLE IF NOT EXISTS `yetki` (
  `yetki_id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grup_id` int(11) unsigned NOT NULL,
  `c` tinyint(4) NOT NULL,
  `r` tinyint(4) NOT NULL,
  `u` tinyint(4) NOT NULL,
  `d` tinyint(4) NOT NULL,
  PRIMARY KEY (`yetki_id`),
  KEY `Grup_id` (`Grup_id`),
  CONSTRAINT `FK_yetki_grup` FOREIGN KEY (`Grup_id`) REFERENCES `grup` (`grup_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table yurt.yetki: ~14 rows (approximately)
/*!40000 ALTER TABLE `yetki` DISABLE KEYS */;
INSERT INTO `yetki` (`yetki_id`, `module`, `Grup_id`, `c`, `r`, `u`, `d`) VALUES
	(1, 'personel', 1, 1, 1, 1, 1),
	(2, 'kutuphane', 1, 1, 1, 1, 1),
	(3, 'kantin', 1, 1, 1, 1, 1),
	(4, 'ogrenci', 1, 1, 1, 1, 1),
	(5, 'yemekhane', 1, 1, 1, 1, 1),
	(6, 'duyurular', 1, 1, 1, 1, 1),
	(7, 'kurslar', 1, 1, 1, 1, 1),
	(8, 'personel', 2, 0, 0, 0, 0),
	(9, 'kutuphane', 2, 0, 1, 1, 1),
	(10, 'kantin', 2, 0, 1, 1, 0),
	(11, 'ogrenci', 2, 0, 1, 1, 0),
	(12, 'yemekhane', 2, 0, 1, 1, 1),
	(13, 'duyurular', 2, 0, 1, 1, 1),
	(14, 'kurslar', 2, 0, 1, 1, 1);
/*!40000 ALTER TABLE `yetki` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
