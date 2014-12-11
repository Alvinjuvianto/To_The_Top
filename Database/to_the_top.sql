-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Des 2014 pada 15.00
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `to_the_top`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `username`, `hashed_password`) VALUES
(10, 'alvinj', '$2y$10$YmEyNzNlNDcxNzVkZmZlYO9Y0qkBASQNIglVuT/0W4Jf0lU9f/MR.'),
(14, 'joshua', '$2y$10$NGIwMWVmM2NhNDQ0MTlhNeM5Dqs8q80QoPvq6VWuAHmtUnOHE3RZ.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `message`) VALUES
(7, 'fewfew', 'wefwer', 'weewfw', 'rw4r3rq3r1r13r13rr'),
(8, 'ddddddddddddddddd', 'ddddddddddd', 'ddddddddddddddddd', 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
(9, 'njnk', 'mlmlmlm', 'nkjnknm', 'gcgcgcvhgvhvhv\r\nnjbnjnkjnbjbjbjb\r\nlnknknknjbnjbjbhbj\r\n.,,,mm,m,m,m,m,mmn');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE IF NOT EXISTS `logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`id`, `file`) VALUES
(1, 'images/logo.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(2, 1, 'Our History', 1, 1, 'Cikal bakal Universitas Bunda Mulia  adalah dari dua sekolah tinggi yang dikelola oleh Yayasan Pendidikan Bunda Mulia, yaitu Sekolah Tinggi Manajemen Informatika dan Komputer (STMIK) dan Sekolah tinggi Ilmu Ekonomi (STIE) Bunda Mulia.\r\nBermula dari Akademi Manajemen Informatika dan Komputer (AMIK) Bunda Mulia yang didirikan dengan Akta Notaris Mohamad Said Tadjoedin no.108 tanggal 11 Desember 1986. AMIK Bunda Mulia berdiri berdasarkan Surat Keputusan Mendikbud No. 183/O/1987 tanggal 30 Maret 1987 untuk program studi Manajemen dengan jenjang pendidikan Diploma Tiga (D-III).\r\n\r\nPada tahun 1995 berdasarkan SK Dirjen Dikti No.429/Dikti/Kep/1995 tanggal 10 Oktober 1995 AMIK berubah bentuk menjadi Sekolah Tinggi Manajemen dan Komputer Bunda Mulia (STMIK Bunda Mulia). Seiring dengan perkembangan di lingkungan Bunda Mulia, dan juga kepercayaan dari masyarakat dan pemerintah, maka STMIK Bunda Mulia berubah menjadi Universitas Bunda Mulia dengan dikeluarkannya SK Menteri Pendidikan Nasional No. 73/D/O/2003 pada tanggal 10 Juni 2003, yang memuat mengenai pemberian ijin penggabungan Sekolah Tinggi Manajemen Informatika dan Komputer (STMIK) dan Sekolah Tinggi Ilmu Ekonomi (STIE) serta penambahan program-program studi baru menjadi Universitas Bunda Mulia'),
(3, 2, 'sony', 1, 1, 'Sony memperkenalkan sebuah filosofi desain baru pada Galaxy Alpha karena menjadi smartphone pertama Samsung yang dilengkapi bingkai metalik. Akankah perubahan strategi tersebut berhasil? Simak temuan kami saat menggenggam Samsung Galaxy Alpha dalam sesi hands-on. Samsung memperkenalkan sebuah filosofi desain baru pada Galaxy Alpha karena menjadi smartphone pertama Samsung yang dilengkapi bingkai metalik. Akankah perubahan strategi tersebut berhasil? Simak temuan kami saat menggenggam Samsung Galaxy Alpha dalam sesi hands-on. Samsung memperkenalkan sebuah filosofi desain baru pada Galaxy Alpha karena menjadi smartphone pertama Samsung yang dilengkapi bingkai metalik. Akankah perubahan strategi tersebut berhasil? Simak temuan kami saat menggenggam Samsung Galaxy Alpha dalam sesi hands-on. '),
(4, 2, 'Samsung', 2, 1, 'Samsung memperkenalkan sebuah filosofi desain baru pada Galaxy Alpha karena menjadi smartphone pertama Samsung yang dilengkapi bingkai metalik. Akankah perubahan strategi tersebut berhasil? Simak temuan kami saat menggenggam Samsung Galaxy Alpha dalam sesi hands-on. Samsung memperkenalkan sebuah filosofi desain baru pada Galaxy Alpha karena menjadi smartphone pertama Samsung yang dilengkapi bingkai metalik. Akankah perubahan strategi tersebut berhasil? Simak temuan kami saat menggenggam Samsung Galaxy Alpha dalam sesi hands-on. Samsung memperkenalkan sebuah filosofi desain baru pada Galaxy Alpha karena menjadi smartphone pertama Samsung yang dilengkapi bingkai metalik. Akankah perubahan strategi tersebut berhasil? Simak temuan kami saat menggenggam Samsung Galaxy Alpha dalam sesi hands-on. Samsung memperkenalkan sebuah filosofi desain baru pada Galaxy Alpha karena menjadi smartphone pertama Samsung yang dilengkapi bingkai metalik. Akankah perubahan strategi tersebut berhasil? Simak temuan kami saat menggenggam Samsung Galaxy Alpha dalam sesi hands-on. ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `subjects`
--

INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
(1, 'About Jojovin', 1, 1),
(2, 'Products', 2, 1),
(3, 'Services', 3, 1);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
