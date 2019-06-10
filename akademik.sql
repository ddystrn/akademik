-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jun 2019 pada 19.25
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `khs`
--

CREATE TABLE `khs` (
  `nim_mhs` varchar(8) DEFAULT NULL,
  `kode_mk` int(7) NOT NULL,
  `nama_mk` text,
  `sks` int(1) DEFAULT NULL,
  `nilai_angka` double DEFAULT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `sks_nilai_angka` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `khs`
--

INSERT INTO `khs` (`nim_mhs`, `kode_mk`, `nama_mk`, `sks`, `nilai_angka`, `nilai_huruf`, `sks_nilai_angka`) VALUES
('09650086', 765101, 'PENDIDIKAN KEWARGANEGARAAN', 3, 3.5, 'B+', 10.5),
('09650086', 765103, 'BAHASA INGGRIS I', 3, 2.5, 'C+', 7.5),
('09650086', 765104, 'BAHASA INGGRIS II', 3, 3.5, 'B+', 10.5),
('09650086', 765105, 'ILMU SOSIAL DASAR', 1, 4, 'A', 4),
('09650086', 765106, 'ILMU BUDAYA DASAR', 1, 3.5, 'B+', 3.5),
('09650086', 765107, 'FILSAFAT ILMU', 2, 2.5, 'C+', 5),
('09650086', 765108, 'STUDI AL-QUR`AN', 2, 2.5, 'C+', 5),
('09650086', 765109, 'STUDI AL-HADITS', 2, 0, 'E', 0),
('09650086', 765110, 'STUDI FIQH', 2, 3, 'B', 6),
('09650086', 765111, 'TASAWUF', 2, 3.5, 'B+', 7),
('09650086', 765112, 'SEJARAH PERADABAN ISLAM', 2, 4, 'A', 8),
('09650086', 765113, 'TEOLOGI ISLAM', 2, 3.5, 'B+', 7),
('09650086', 765114, 'MAHARAT AL-ISTIMA` I', 1, 4, 'A', 4),
('09650086', 765115, 'MAHARAT AL-KALAM I', 2, 3.5, 'B+', 7),
('09650086', 765116, 'MAHARAT AL-QIRA`AH I', 2, 4, 'A', 8),
('09650086', 765117, 'MAHARAT AL-KITABAH I', 1, 4, 'A', 4),
('09650086', 765118, 'MAHARAT AL-ISTIMA` II', 1, 3, 'B', 3),
('09650086', 765119, 'MAHARAT AL-KALAM II', 1, 2, 'C', 2),
('09650086', 765120, 'MAHARAT AL-QIRA`AH II', 2, 2, 'C', 4),
('09650086', 765121, 'MAHARAT AL-KITABAH II', 2, 3, 'B', 6),
('09650086', 765201, 'MATEMATIKA DASAR', 3, 3, 'B', 9),
('09650086', 765202, 'MATEMATIKA LANJUT', 3, 2.5, 'C+', 7.5),
('09650086', 765203, 'ALJABAR LINIER DAN MATRIK', 3, 2.5, 'C+', 7.5),
('09650086', 765204, 'MATEMATIKA DISKRIT', 3, 3, 'B', 9),
('09650086', 765205, 'METODE NUMERIK', 2, 3, 'B', 6),
('09650086', 765206, 'STATISTIKA', 2, 2.5, 'C+', 5),
('09650086', 765207, 'METEDOLOGI PENELITIAN', 2, 3, 'B', 6),
('09650086', 765208, 'PENGANTAR TEKNOLOGI INFORMASI', 2, 4, 'A', 8),
('09650086', 765209, 'LOGIKA DAN ALGORITMA', 2, 3.5, 'B+', 7),
('09650086', 765210, 'STRUKTUR DATA', 3, 2.5, 'C+', 7.5),
('09650086', 765211, 'DASAR-DASAR PEMROGRAMAN', 3, 3, 'B', 9),
('09650086', 765212, 'PEMROGRAMAN BERORIENTASI OBYEK', 3, 3, 'B', 9),
('09650086', 765213, 'SISTEM INFORMASI', 2, 3, 'B', 6),
('09650086', 765214, 'DESAIN BASIS DATA', 3, 3.5, 'B+', 10.5),
('09650086', 765215, 'SISTEM OPERASI', 2, 2.5, 'C+', 5),
('09650086', 765216, 'RANGKAIAN DIGITAL', 2, 2.5, 'C+', 5),
('09650086', 765217, 'KOMUNIKASI DATA', 3, 3.5, 'B+', 10.5),
('09650086', 765218, 'JARINGAN KOMPUTER', 3, 3, 'B', 9),
('09650086', 765219, 'ORGANISASI & ARSITEKTUR KOMP.', 3, 2, 'C', 6),
('09650086', 765301, 'KECERDASAN BUATAN', 3, 3, 'B', 9),
('09650086', 765302, 'GRAFIKA KOMPUTER', 2, 3, 'B', 6),
('09650086', 765303, 'PENGOLAHAN CITRA', 3, 2, 'C', 6),
('09650086', 765304, 'PENGOLAHAN SUARA', 3, 4, 'A', 12),
('09650086', 765305, 'PEMROGRAMAN MULTIMEDIA', 3, 2.5, 'C+', 7.5),
('09650086', 765306, 'PEMROGRAMAN WEB', 3, 2, 'C', 6),
('09650086', 765307, 'SISTEM TERDISTRIBUSI', 3, 1, 'D', 3),
('09650086', 765308, 'KEAMANAN JARINGAN&SISTEM KOMP.', 3, 4, 'A', 12),
('09650086', 765309, 'REKAYASA PERANGKAT LUNAK', 2, 2, 'C', 4),
('09650086', 765310, 'INTERAKSI MANUSIA & KOMPUTER', 2, 4, 'A', 8),
('09650086', 765311, 'MANAJEMEN BASIS DATA', 2, 3, 'B', 6),
('09650086', 765312, 'ANALISIS & PERANCANGAN SISTEM', 2, 0, 'E', 0),
('09650086', 765313, 'KOMPUTASI BERGERAK', 3, 2.5, 'C+', 7.5),
('09650086', 765314, 'SISTEM INFORMASI GEOGRAFIS', 2, 2.5, 'C+', 5),
('09650086', 765315, 'SISTEM INFORMASI CERDAS', 3, 2, 'C', 6),
('09650086', 765401, 'KEWIRAUSAHAAN', 2, 3.5, 'B+', 7),
('09650086', 765402, 'ISU PROFESIONAL & PROYEK GROUP', 2, 3.5, 'B+', 7),
('09650086', 765403, 'ETIKA PROFESI', 2, 4, 'A', 8),
('09650086', 765404, 'MANAJ. PROYEK PERANGKAT LUNAK', 2, 3, 'B', 6),
('09650086', 765405, 'PRAKT. DASAR-DASAR PEMROGRAMAN', 1, 2.5, 'C+', 2.5),
('09650086', 765406, 'PRAKTIKUM DESAIN BASIS DATA', 1, 4, 'A', 4),
('09650086', 765407, 'PRATIKUM JARINGAN KOMPUTER', 1, 3, 'B', 3),
('09650086', 765408, 'PRAKTIKUM KOMUNIKASI DATA', 1, 2.5, 'C+', 2.5),
('09650086', 765409, 'PRAKTIKUM RANGKAIAN DIGITAL', 1, 3, 'B', 3),
('09650086', 765410, 'PRAK.PEMROG. BERORENTASI OBYEK', 1, 2.5, 'C+', 2.5),
('09650086', 765411, 'PRATIKUM PEMROGRAMAN WEB', 1, 3, 'B', 3),
('09650086', 865102, 'BAHASA INDONESIA', 2, 4, 'A', 8),
('09650086', 865122, 'TARBIYAH ULUL ALBAB', 1, 3.5, 'B+', 3.5),
('09650086', 1200109, 'STUDI HADITS', 2, 2, 'C', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `konversi`
--

CREATE TABLE `konversi` (
  `nim_mhs` varchar(8) DEFAULT NULL,
  `kode_mk` int(7) NOT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `nilai_angka` double DEFAULT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `sks_nilai_angka` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konversi`
--

INSERT INTO `konversi` (`nim_mhs`, `kode_mk`, `nama_mk`, `sks`, `nilai_angka`, `nilai_huruf`, `sks_nilai_angka`) VALUES
('09650086', 1400108, 'Studi al-Qur`an dan al-Hadits', 2, 0, 'E', 0),
('09650086', 1565015, 'Software Engineering', 3, 0, 'E', 0),
('09650086', 1565023, 'Distributed System & Security', 3, 1, 'D', 3),
('09650086', 1565039, 'Software Engineering Practicum', 1, NULL, NULL, NULL),
('09650086', 1565040, 'Information System Practicum', 1, NULL, NULL, NULL),
('09650086', 1565041, 'Computer Graphic Practicum', 1, NULL, NULL, NULL),
('09650086', 1565043, 'Multimedia & Game Programming Practicum', 1, NULL, NULL, NULL),
('09650086', 1565044, 'Distributed System Practicum', 1, NULL, NULL, NULL),
('09650086', 1565045, 'Geographical Information System Practicum', 1, NULL, NULL, NULL),
('09650086', 1565046, 'Internship', 4, NULL, NULL, NULL),
('09650086', 1565047, 'Research Proposal', 2, NULL, NULL, NULL),
('09650086', 1565048, 'Undergraduate Thesis', 6, NULL, NULL, NULL),
('09650086', 1565050, 'VISUALIZATION & MODELING (OPTIONAL SUBJECT 2)', 3, NULL, NULL, NULL),
('09650086', 1565051, 'SOFTWARE QUALITY (OPTIONAL SUBJECT 1)', 3, NULL, NULL, NULL),
('09650086', 1565052, 'SOFTWARE MANAGEMENT (OPTIONAL SUBJECT 2)', 3, NULL, NULL, NULL),
('09650086', 1565053, 'ENTERPRISE ARCHITECTURE (OPTIONAL SUBJECT 1)', 3, NULL, NULL, NULL),
('09650086', 1565054, 'IT GOVERNANCE (OPTIONAL SUBJECT 2)', 3, NULL, NULL, NULL),
('09650086', 1565055, 'SCENARIO DESIGN (OPTIONAL SUBJECT 1)', 3, NULL, NULL, NULL),
('09650086', 1565056, 'CREATIVE GAME & ANIMATION (OPTIONAL SUBJECT 2)', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim_mhs` varchar(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ipk` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim_mhs`, `nama`, `ipk`) VALUES
('09650086', 'MOHAMMAD SYAHROFI IRSYAD', 2.89);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasaran`
--

CREATE TABLE `pemasaran` (
  `no` int(4) NOT NULL,
  `kode_mk` int(7) DEFAULT NULL,
  `nama_mk` text,
  `sks` int(1) DEFAULT NULL,
  `kode_mk_alias` int(7) DEFAULT NULL,
  `nama_mk_alias` text,
  `sks_alias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemasaran`
--

INSERT INTO `pemasaran` (`no`, `kode_mk`, `nama_mk`, `sks`, `kode_mk_alias`, `nama_mk_alias`, `sks_alias`) VALUES
(103, 765415, 'Praktikum Analisis & Perancangan Sistem', 1, 1565039, 'Software Engineering Practicum', 1),
(104, 765415, 'Praktikum Analisis & Perancangan Sistem', 1, 1565040, 'Information System Practicum', 1),
(105, 765414, 'Praktikum Grafika Komputer', 1, 1565041, 'Computer Graphic Practicum', 1),
(107, 765413, 'Praktikum Pemrograman Multimedia', 1, 1565043, 'Multimedia & Game Programming Practicum', 1),
(108, 765412, 'Praktikum Sistem Terdistribusi', 1, 1565044, 'Distributed System Practicum', 1),
(109, 765416, 'Praktikum Sistem Informasi Geografis', 1, 1565045, 'Geographical Information System Practicum', 1),
(110, 765501, 'PKLI', 4, 1565046, 'Internship', 4),
(111, 765502, 'Seminar ', 2, 1565047, 'Research Proposal', 2),
(112, 765503, 'Skripsi', 6, 1565048, 'Undergraduate Thesis', 6),
(118, 0, '', 0, 1565050, 'VISUALIZATION & MODELING (OPTIONAL SUBJECT 2)', 3),
(119, 0, '', 0, 1565051, 'SOFTWARE QUALITY (OPTIONAL SUBJECT 1)', 3),
(120, 0, '', 0, 1565052, 'SOFTWARE MANAGEMENT (OPTIONAL SUBJECT 2)', 3),
(121, 0, '', 0, 1565053, 'ENTERPRISE ARCHITECTURE (OPTIONAL SUBJECT 1)', 3),
(122, 0, '', 0, 1565054, 'IT GOVERNANCE (OPTIONAL SUBJECT 2)', 3),
(123, 0, '', 0, 1565055, 'SCENARIO DESIGN (OPTIONAL SUBJECT 1)', 3),
(124, 0, '', 0, 1565056, 'CREATIVE GAME & ANIMATION (OPTIONAL SUBJECT 2)', 3),
(166, 1565039, 'Software Engineering Practicum', 1, 1565039, 'Software Engineering Practicum', 1),
(167, 1565040, 'Information System Practicum', 1, 1565040, 'Information System Practicum', 1),
(168, 1565041, 'Computer Graphic Practicum', 1, 1565041, 'Computer Graphic Practicum', 1),
(170, 1565043, 'Multimedia & Game Programming Practicum', 1, 1565043, 'Multimedia & Game Programming Practicum', 1),
(171, 1565044, 'Distributed System Practicum', 1, 1565044, 'Distributed System Practicum', 1),
(172, 1565045, 'Geographical Information System Practicum', 1, 1565045, 'Geographical Information System Practicum', 1),
(173, 1565046, 'Internship', 4, 1565046, 'Internship', 4),
(174, 1565047, 'Research Proposal', 2, 1565047, 'Research Proposal', 2),
(175, 1565048, 'Undergraduate Thesis', 6, 1565048, 'Undergraduate Thesis', 6),
(181, 1565050, 'VISUALIZATION & MODELING (OPTIONAL SUBJECT 2)', 3, 1565050, 'VISUALIZATION & MODELING (OPTIONAL SUBJECT 2)', 3),
(182, 1565051, 'SOFTWARE QUALITY (OPTIONAL SUBJECT 1)', 3, 1565051, 'SOFTWARE QUALITY (OPTIONAL SUBJECT 1)', 3),
(183, 1565052, 'SOFTWARE MANAGEMENT (OPTIONAL SUBJECT 2)', 3, 1565052, 'SOFTWARE MANAGEMENT (OPTIONAL SUBJECT 2)', 3),
(184, 1565053, 'ENTERPRISE ARCHITECTURE (OPTIONAL SUBJECT 1)', 3, 1565053, 'ENTERPRISE ARCHITECTURE (OPTIONAL SUBJECT 1)', 3),
(185, 1565054, 'IT GOVERNANCE (OPTIONAL SUBJECT 2)', 3, 1565054, 'IT GOVERNANCE (OPTIONAL SUBJECT 2)', 3),
(186, 1565055, 'SCENARIO DESIGN (OPTIONAL SUBJECT 1)', 3, 1565055, 'SCENARIO DESIGN (OPTIONAL SUBJECT 1)', 3),
(187, 1565056, 'CREATIVE GAME & ANIMATION (OPTIONAL SUBJECT 2)', 3, 1565056, 'CREATIVE GAME & ANIMATION (OPTIONAL SUBJECT 2)', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `konversi`
--
ALTER TABLE `konversi`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim_mhs`);

--
-- Indeks untuk tabel `pemasaran`
--
ALTER TABLE `pemasaran`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
