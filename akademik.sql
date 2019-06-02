-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2019 at 11:59 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

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
-- Table structure for table `khs`
--

CREATE TABLE `khs` (
  `nim_mhs` int(8) DEFAULT NULL,
  `kode_mk` int(7) NOT NULL,
  `nama_mk` text,
  `sks` int(1) DEFAULT NULL,
  `nilai_angka` double DEFAULT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `sks_nilai_angka` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`nim_mhs`, `kode_mk`, `nama_mk`, `sks`, `nilai_angka`, `nilai_huruf`, `sks_nilai_angka`) VALUES
(9650082, 765101, 'PENDIDIKAN KEWARGANEGARAAN', 3, 2.5, 'C+', 7.5),
(9650082, 765103, 'BAHASA INGGRIS I', 3, 3.5, 'B+', 10.5),
(9650082, 765104, 'BAHASA INGGRIS II', 3, 3, 'B', 9),
(9650082, 765105, 'ILMU SOSIAL DASAR', 1, 4, 'A', 4),
(9650082, 765106, 'ILMU BUDAYA DASAR', 1, 4, 'A', 4),
(9650082, 765107, 'FILSAFAT ILMU', 2, 4, 'A', 8),
(9650082, 765108, 'STUDI AL-QUR`AN', 2, 3, 'B', 6),
(9650082, 765109, 'STUDI AL-HADITS', 2, 3.5, 'B+', 7),
(9650082, 765110, 'STUDI FIQH', 2, 3, 'B', 6),
(9650082, 765111, 'TASAWUF', 2, 3.5, 'B+', 7),
(9650082, 765112, 'SEJARAH PERADABAN ISLAM', 2, 4, 'A', 8),
(9650082, 765114, 'MAHARAT AL-ISTIMA` I', 1, 4, 'A', 4),
(9650082, 765115, 'MAHARAT AL-KALAM I', 2, 4, 'A', 8),
(9650082, 765116, 'MAHARAT AL-QIRA`AH I', 2, 4, 'A', 8),
(9650082, 765117, 'MAHARAT AL-KITABAH I', 1, 4, 'A', 4),
(9650082, 765118, 'MAHARAT AL-ISTIMA` II', 1, 4, 'A', 4),
(9650082, 765119, 'MAHARAT AL-KALAM II', 1, 3.5, 'B+', 3.5),
(9650082, 765120, 'MAHARAT AL-QIRA`AH II', 2, 4, 'A', 8),
(9650082, 765121, 'MAHARAT AL-KITABAH II', 2, 4, 'A', 8),
(9650082, 765201, 'MATEMATIKA DASAR', 3, 3.5, 'B+', 10.5),
(9650082, 765202, 'MATEMATIKA LANJUT', 3, 3, 'B', 9),
(9650082, 765203, 'ALJABAR LINIER DAN MATRIK', 3, 3.5, 'B+', 10.5),
(9650082, 765204, 'MATEMATIKA DISKRIT', 3, 4, 'A', 12),
(9650082, 765205, 'METODE NUMERIK', 2, 0, 'E', 0),
(9650082, 765206, 'STATISTIKA', 2, 0, 'E', 0),
(9650082, 765207, 'METEDOLOGI PENELITIAN', 2, 3.5, 'B+', 7),
(9650082, 765208, 'PENGANTAR TEKNOLOGI INFORMASI', 2, 4, 'A', 8),
(9650082, 765209, 'LOGIKA DAN ALGORITMA', 2, 3.5, 'B+', 7),
(9650082, 765210, 'STRUKTUR DATA', 3, 3, 'B', 9),
(9650082, 765211, 'DASAR-DASAR PEMROGRAMAN', 3, 3, 'B', 9),
(9650082, 765212, 'PEMROGRAMAN BERORIENTASI OBYEK', 3, 3, 'B', 9),
(9650082, 765213, 'SISTEM INFORMASI', 2, 2.5, 'C+', 5),
(9650082, 765214, 'DESAIN BASIS DATA', 3, 3.5, 'B+', 10.5),
(9650082, 765215, 'SISTEM OPERASI', 2, 2.5, 'C+', 5),
(9650082, 765216, 'RANGKAIAN DIGITAL', 2, 2, 'C', 4),
(9650082, 765217, 'KOMUNIKASI DATA', 3, 3, 'B', 9),
(9650082, 765218, 'JARINGAN KOMPUTER', 3, 3, 'B', 9),
(9650082, 765219, 'ORGANISASI & ARSITEKTUR KOMP.', 3, 2, 'C', 6),
(9650082, 765301, 'KECERDASAN BUATAN', 3, 2, 'C', 6),
(9650082, 765302, 'GRAFIKA KOMPUTER', 2, 3.5, 'B+', 7),
(9650082, 765303, 'PENGOLAHAN CITRA', 3, 3.5, 'B+', 10.5),
(9650082, 765304, 'PENGOLAHAN SUARA', 3, 3.5, 'B+', 10.5),
(9650082, 765305, 'PEMROGRAMAN MULTIMEDIA', 3, 3, 'B', 9),
(9650082, 765306, 'PEMROGRAMAN WEB', 3, 3, 'B', 9),
(9650082, 765307, 'SISTEM TERDISTRIBUSI', 3, 2, 'C', 6),
(9650082, 765308, 'KEAMANAN JARINGAN&SISTEM KOMP.', 3, 3, 'B', 9),
(9650082, 765309, 'REKAYASA PERANGKAT LUNAK', 2, 2, 'C', 4),
(9650082, 765310, 'INTERAKSI MANUSIA & KOMPUTER', 2, 2.5, 'C+', 5),
(9650082, 765311, 'MANAJEMEN BASIS DATA', 2, 3, 'B', 6),
(9650082, 765312, 'ANALISIS & PERANCANGAN SISTEM', 2, 3, 'B', 6),
(9650082, 765313, 'KOMPUTASI BERGERAK', 3, 0, 'E', 0),
(9650082, 765314, 'SISTEM INFORMASI GEOGRAFIS', 2, 3.5, 'B+', 7),
(9650082, 765315, 'SISTEM INFORMASI CERDAS', 3, 0, 'E', 0),
(9650082, 765401, 'KEWIRAUSAHAAN', 2, 3, 'B', 6),
(9650082, 765402, 'ISU PROFESIONAL & PROYEK GROUP', 2, 3, 'B', 6),
(9650082, 765403, 'ETIKA PROFESI', 2, 4, 'A', 8),
(9650082, 765404, 'MANAJ. PROYEK PERANGKAT LUNAK', 2, 3, 'B', 6),
(9650082, 765405, 'PRAKT. DASAR-DASAR PEMROGRAMAN', 1, 2, 'C', 2),
(9650082, 765406, 'PRAKTIKUM DESAIN BASIS DATA', 1, 3.5, 'B+', 3.5),
(9650082, 765407, 'PRATIKUM JARINGAN KOMPUTER', 1, 3.5, 'B+', 3.5),
(9650082, 765408, 'PRAKTIKUM KOMUNIKASI DATA', 1, 3.5, 'B+', 3.5),
(9650082, 765409, 'PRAKTIKUM RANGKAIAN DIGITAL', 1, 3.5, 'B+', 3.5),
(9650082, 765410, 'PRAK.PEMROG. BERORENTASI OBYEK', 1, 3, 'B', 3),
(9650082, 765411, 'PRATIKUM PEMROGRAMAN WEB', 1, 2, 'C', 2),
(9650082, 765412, 'PRATIKUM TERDISTRIBUSI', 1, 2, 'C', 2),
(9650082, 865102, 'BAHASA INDONESIA', 2, 4, 'A', 8),
(9650082, 865122, 'TARBIYAH ULUL ALBAB', 1, 3.5, 'B+', 3.5),
(9650082, 1200113, 'TEOLOGI ISLAM', 2, 3.5, 'B+', 7);

-- --------------------------------------------------------

--
-- Table structure for table `konversi`
--

CREATE TABLE `konversi` (
  `nim_mhs` int(8) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kode_mk` int(7) NOT NULL,
  `nama_mk` text,
  `sks` int(1) DEFAULT NULL,
  `nilai_angka` double DEFAULT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `sks_nilai_angka` double DEFAULT NULL,
  `ipk` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim_mhs` int(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ipk` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim_mhs`, `nama`, `ipk`) VALUES
(9650082, 'ALIFTI RISKIYAH', 2.94);

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `no` int(4) NOT NULL,
  `nim_mhs` int(8) NOT NULL,
  `kode_mk` int(8) NOT NULL,
  `kode_mk_alias` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`no`, `nim_mhs`, `kode_mk`, `kode_mk_alias`) VALUES
(1, 9650082, 765101, 1400101),
(2, 9650082, 865102, 1400102),
(3, 9650082, 765103, 1400103),
(4, 9650082, 765104, 1400104),
(5, 9650082, 765105, 1400105),
(6, 9650082, 765106, 1400105),
(7, 9650082, 765107, 1400107),
(8, 9650082, 765108, 1400108),
(9, 9650082, 765109, 1400108),
(10, 9650082, 765110, 1400109),
(11, 9650082, 765111, 1400110),
(12, 9650082, 765113, 1400110),
(13, 9650082, 765112, 1400111),
(14, 9650082, 765114, 1400112),
(15, 9650082, 765115, 1400114),
(16, 9650082, 765116, 1400115),
(17, 9650082, 765117, 1400113),
(18, 9650082, 765118, 1400116),
(19, 9650082, 765119, 1400118),
(20, 9650082, 765120, 1400119),
(21, 9650082, 765121, 1400117),
(22, 9650082, 865122, 0),
(23, 9650082, 1200101, 1400101),
(24, 9650082, 1200102, 1400102),
(25, 9650082, 1200103, 1400103),
(26, 9650082, 1200104, 1400104),
(27, 9650082, 1200106, 1400105),
(28, 9650082, 1200107, 1400107),
(29, 9650082, 1200108, 1400108),
(30, 9650082, 1200109, 1400108),
(31, 9650082, 1200110, 1400109),
(32, 9650082, 1200111, 1400110),
(33, 9650082, 1200113, 1400110),
(34, 9650082, 1200112, 1400111),
(35, 9650082, 1200114, 1400112),
(36, 9650082, 1200115, 1400114),
(37, 9650082, 1200116, 1400115),
(38, 9650082, 1200117, 1400113),
(39, 9650082, 1200118, 1400116),
(40, 9650082, 1200119, 1400118),
(41, 9650082, 1200120, 1400119),
(42, 9650082, 1200121, 1400117),
(43, 9650082, 1200122, 0),
(44, 9650082, 1400101, 1400101),
(45, 9650082, 1400102, 1400102),
(46, 9650082, 1400103, 1400103),
(47, 9650082, 1400104, 1400104),
(48, 9650082, 1400105, 1400105),
(49, 9650082, 1400107, 1400107),
(50, 9650082, 1400108, 1400108),
(51, 9650082, 1400109, 1400109),
(52, 9650082, 1400110, 1400110),
(53, 9650082, 1400111, 1400111),
(54, 9650082, 1400112, 1400112),
(55, 9650082, 1400114, 1400114),
(56, 9650082, 1400115, 1400115),
(57, 9650082, 1400113, 1400113),
(58, 9650082, 1400116, 1400116),
(59, 9650082, 1400118, 1400118),
(60, 9650082, 1400119, 1400119),
(61, 9650082, 1400117, 1400117),
(62, 9650082, 765208, 1565001),
(63, 9650082, 765201, 1565002),
(64, 9650082, 765209, 1565003),
(65, 9650082, 765204, 1565004),
(66, 9650082, 765203, 1565005),
(67, 9650082, 765210, 1565006),
(68, 9650082, 765211, 1565007),
(69, 9650082, 765216, 1565008),
(70, 9650082, 765206, 1565009),
(71, 9650082, 765212, 1565010),
(72, 9650082, 765214, 1565011),
(73, 9650082, 765311, 1565011),
(74, 9650082, 765219, 1565012),
(75, 9650082, 765217, 1565012),
(76, 9650082, 765205, 1565013),
(77, 9650082, 765306, 1565014),
(78, 9650082, 765309, 1565015),
(79, 9650082, 765312, 1565015),
(80, 9650082, 765302, 1565016),
(81, 9650082, 765218, 1565017),
(82, 9650082, 765301, 1565018),
(83, 9650082, 765303, 1565019),
(84, 9650082, 765313, 1565020),
(85, 9650082, 765213, 1565021),
(86, 9650082, 765305, 1565022),
(87, 9650082, 765307, 1565023),
(88, 9650082, 765207, 1565024),
(89, 9650082, 765314, 1565025),
(90, 9650082, 765202, 1565026),
(91, 9650082, 765310, 1565027),
(92, 9650082, 765215, 1565028),
(93, 9650082, 765401, 1565029),
(94, 9650082, 765404, 1565030),
(95, 9650082, 765405, 1565031),
(96, 9650082, 765405, 1565032),
(97, 9650082, 765409, 1565033),
(98, 9650082, 765410, 1565034),
(99, 9650082, 765410, 1565035),
(100, 9650082, 765406, 1565036),
(101, 9650082, 765408, 1565037),
(102, 9650082, 765411, 1565038),
(103, 9650082, 765415, 1565039),
(104, 9650082, 765415, 1565040),
(105, 9650082, 765414, 1565041),
(106, 9650082, 765407, 1565042),
(107, 9650082, 765413, 1565043),
(108, 9650082, 765412, 1565044),
(109, 9650082, 765416, 1565045),
(110, 9650082, 765501, 1565046),
(111, 9650082, 765502, 1565047),
(112, 9650082, 765503, 1565048),
(113, 9650082, 765315, 1565049),
(114, 9650082, 765402, 1565057),
(115, 9650082, 765403, 1565057),
(116, 9650082, 765304, 1565058),
(117, 9650082, 765308, 1565059),
(118, 9650082, 0, 1565050),
(119, 9650082, 0, 1565051),
(120, 9650082, 0, 1565052),
(121, 9650082, 0, 1565053),
(122, 9650082, 0, 1565054),
(123, 9650082, 0, 1565055),
(124, 9650082, 0, 1565056),
(125, 9650082, 1565001, 1565001),
(126, 9650082, 1565002, 1565002),
(127, 9650082, 1565003, 1565003),
(128, 9650082, 1565004, 1565004),
(129, 9650082, 1565005, 1565005),
(130, 9650082, 1565006, 1565006),
(131, 9650082, 1565007, 1565007),
(132, 9650082, 1565008, 1565008),
(133, 9650082, 1565009, 1565009),
(134, 9650082, 1565010, 1565010),
(135, 9650082, 1565011, 1565011),
(136, 9650082, 1565011, 1565011),
(137, 9650082, 1565012, 1565012),
(138, 9650082, 1565012, 1565012),
(139, 9650082, 1565013, 1565013),
(140, 9650082, 1565014, 1565014),
(141, 9650082, 1565015, 1565015),
(142, 9650082, 1565015, 1565015),
(143, 9650082, 1565016, 1565016),
(144, 9650082, 1565017, 1565017),
(145, 9650082, 1565018, 1565018),
(146, 9650082, 1565019, 1565019),
(147, 9650082, 1565020, 1565020),
(148, 9650082, 1565021, 1565021),
(149, 9650082, 1565022, 1565022),
(150, 9650082, 1565023, 1565023),
(151, 9650082, 1565024, 1565024),
(152, 9650082, 1565025, 1565025),
(153, 9650082, 1565026, 1565026),
(154, 9650082, 1565027, 1565027),
(155, 9650082, 1565028, 1565028),
(156, 9650082, 1565029, 1565029),
(157, 9650082, 1565030, 1565030),
(158, 9650082, 1565031, 1565031),
(159, 9650082, 1565032, 1565032),
(160, 9650082, 1565033, 1565033),
(161, 9650082, 1565034, 1565034),
(162, 9650082, 1565035, 1565035),
(163, 9650082, 1565036, 1565036),
(164, 9650082, 1565037, 1565037),
(165, 9650082, 1565038, 1565038),
(166, 9650082, 1565039, 1565039),
(167, 9650082, 1565040, 1565040),
(168, 9650082, 1565041, 1565041),
(169, 9650082, 1565042, 1565042),
(170, 9650082, 1565043, 1565043),
(171, 9650082, 1565044, 1565044),
(172, 9650082, 1565045, 1565045),
(173, 9650082, 1565046, 1565046),
(174, 9650082, 1565047, 1565047),
(175, 9650082, 1565048, 1565048),
(176, 9650082, 1565049, 1565049),
(177, 9650082, 1565057, 1565057),
(178, 9650082, 1565057, 1565057),
(179, 9650082, 1565058, 1565058),
(180, 9650082, 1565059, 1565059),
(181, 9650082, 1565050, 1565050),
(182, 9650082, 1565051, 1565051),
(183, 9650082, 1565052, 1565052),
(184, 9650082, 1565053, 1565053),
(185, 9650082, 1565054, 1565054),
(186, 9650082, 1565055, 1565055),
(187, 9650082, 1565056, 1565056);

-- --------------------------------------------------------

--
-- Table structure for table `pemasaran`
--

CREATE TABLE `pemasaran` (
  `no` int(4) NOT NULL,
  `kode_mk` int(7) DEFAULT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `kode_mk_alias` int(7) DEFAULT NULL,
  `nama_mk_alias` varchar(100) DEFAULT NULL,
  `sks_alias` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasaran`
--

INSERT INTO `pemasaran` (`no`, `kode_mk`, `nama_mk`, `sks`, `kode_mk_alias`, `nama_mk_alias`, `sks_alias`) VALUES
(1, 765101, 'Filsafat Pancasila', 3, 1400101, 'Pancasila dan Kewarganegaraan', 2),
(2, 865102, 'Bahasa Indonesia', 2, 1400102, 'Bahasa Indonesia', 2),
(3, 765103, 'Bahasa Inggris I', 3, 1400103, 'Bahasa Inggris I', 3),
(4, 765104, 'Bahasa Inggris II', 3, 1400104, 'Bahasa Inggris II', 3),
(5, 765105, 'Ilmu Sosial Dasar', 1, 1400105, 'Ilmu Sosial Budaya Dasar', 2),
(6, 765106, 'Ilmu Budaya Dasar', 1, 1400105, 'Ilmu Sosial Budaya Dasar', 2),
(7, 765107, 'Filsafat Ilmu', 2, 1400107, 'Filsafat Ilmu', 2),
(8, 765108, 'Studi al-Qur`an', 2, 1400108, 'Studi al-Qur`an dan al-Hadits', 2),
(9, 765109, 'Studi al-Hadits', 2, 1400108, 'Studi al-Qur`an dan al-Hadits', 2),
(10, 765110, 'Studi Fiqih', 2, 1400109, 'Studi Fiqh', 2),
(11, 765111, 'Tasawuf', 2, 1400110, 'Teosofi', 2),
(12, 765113, 'Teologi Islam', 2, 1400110, 'Teosofi', 2),
(13, 765112, 'Sejarah Peradaban Islam', 2, 1400111, 'Sejarah Peradaban Islam', 2),
(14, 765114, 'Bahasa Arab ( Maharat al-Istima` I )', 1, 1400112, 'Bahasa Arab ( Maharat al-Istima` I )', 1),
(15, 765115, 'Bahasa Arab ( Maharat al-Kalam` I )', 2, 1400114, 'Bahasa Arab ( Maharat al-Kalam` I )', 2),
(16, 765116, 'Bahasa Arab ( Maharat al-Qira`ah I )', 2, 1400115, 'Bahasa Arab ( Maharat al-Qira`ah I )', 2),
(17, 765117, 'Bahasa Arab ( Maharat al-Kitabah I )', 1, 1400113, 'Bahasa Arab ( Maharat al-Kitabah I )', 1),
(18, 765118, 'Bahasa Arab ( Maharat al-Istima` II )', 1, 1400116, 'Bahasa Arab ( Maharat al-Istima` II )', 1),
(19, 765119, 'Bahasa Arab ( Maharat al-Kalam` II )', 1, 1400118, 'Bahasa Arab ( Maharat al-Kalam` II )', 2),
(20, 765120, 'Bahasa Arab ( Maharat al-Qira`ah II )', 2, 1400119, 'Bahasa Arab ( Maharat al-Qira`ah II )', 2),
(21, 765121, 'Bahasa Arab ( Maharat al-Kitabah II )', 2, 1400117, 'Bahasa Arab ( Maharat al-Kitabah II )', 1),
(22, 865122, 'Tarbiyah Ulul Albab', 1, 0, '0', 0),
(23, 1200101, 'FILSAFAT PANCASILA', 3, 1400101, 'Pancasila dan Kewarganegaraan', 2),
(24, 1200102, 'BAHASA INDONESIA', 2, 1400102, 'Bahasa Indonesia', 2),
(25, 1200103, 'BAHASA INGGRIS I', 3, 1400103, 'Bahasa Inggris I', 3),
(26, 1200104, 'BAHASA INGGRIS II', 3, 1400104, 'Bahasa Inggris II', 3),
(27, 1200106, 'ILMU SOSIAL BUDAYA DASAR', 2, 1400105, 'Ilmu Sosial Budaya Dasar', 2),
(28, 1200107, 'PENGANTAR FILSAFAT ILMU', 2, 1400107, 'Filsafat Ilmu', 2),
(29, 1200108, 'STUDI QURAN', 2, 1400108, 'Studi al-Qur`an dan al-Hadits', 2),
(30, 1200109, 'STUDI HADITS', 2, 1400108, 'Studi al-Qur`an dan al-Hadits', 2),
(31, 1200110, 'STUDI FIQH', 2, 1400109, 'Studi Fiqh', 2),
(32, 1200111, 'TASAWUF', 2, 1400110, 'Teosofi', 2),
(33, 1200113, 'TEOLOGI ISLAM', 2, 1400110, 'Teosofi', 2),
(34, 1200112, 'SEJARAH PERADABAN ISLAM', 2, 1400111, 'Sejarah Peradaban Islam', 2),
(35, 1200114, 'MAHARAT AL-ISTIMA I', 1, 1400112, 'Bahasa Arab ( Maharat al-Istima` I )', 1),
(36, 1200115, 'MAHARAT AL-KALAM I', 2, 1400114, 'Bahasa Arab ( Maharat al-Kalam` I )', 2),
(37, 1200116, 'MAHARAT AL-QIRAAH I', 2, 1400115, 'Bahasa Arab ( Maharat al-Qira`ah I )', 2),
(38, 1200117, 'MAHARAT AL-KITABAH I', 1, 1400113, 'Bahasa Arab ( Maharat al-Kitabah I )', 1),
(39, 1200118, 'MAHARAT AL-ISTIMA II', 1, 1400116, 'Bahasa Arab ( Maharat al-Istima` II )', 1),
(40, 1200119, 'MAHARAT AL-KALAM II', 1, 1400118, 'Bahasa Arab ( Maharat al-Kalam` II )', 2),
(41, 1200120, 'MAHARAT AL-QIRAAH II', 2, 1400119, 'Bahasa Arab ( Maharat al-Qira`ah II )', 2),
(42, 1200121, 'MAHARAT AL-KITABAH II', 2, 1400117, 'Bahasa Arab ( Maharat al-Kitabah II )', 1),
(43, 1200122, 'TARBIYAH ULUL ALBAB', 1, 0, '0', 0),
(44, 1400101, 'Pancasila dan Kewarganegaraan', 2, 1400101, 'Pancasila dan Kewarganegaraan', 2),
(45, 1400102, 'Bahasa Indonesia', 2, 1400102, 'Bahasa Indonesia', 2),
(46, 1400103, 'Bahasa Inggris I', 3, 1400103, 'Bahasa Inggris I', 3),
(47, 1400104, 'Bahasa Inggris II', 3, 1400104, 'Bahasa Inggris II', 3),
(48, 1400105, 'Ilmu Sosial Budaya Dasar', 2, 1400105, 'Ilmu Sosial Budaya Dasar', 2),
(49, 1400107, 'Filsafat Ilmu', 2, 1400107, 'Filsafat Ilmu', 2),
(50, 1400108, 'Studi al-Qur`an dan al-Hadits', 2, 1400108, 'Studi al-Qur`an dan al-Hadits', 2),
(51, 1400109, 'Studi Fiqh', 2, 1400109, 'Studi Fiqh', 2),
(52, 1400110, 'Teosofi', 2, 1400110, 'Teosofi', 2),
(53, 1400111, 'Sejarah Peradaban Islam', 2, 1400111, 'Sejarah Peradaban Islam', 2),
(54, 1400112, 'Bahasa Arab ( Maharat al-Istima` I )', 1, 1400112, 'Bahasa Arab ( Maharat al-Istima` I )', 1),
(55, 1400114, 'Bahasa Arab ( Maharat al-Kalam` I )', 2, 1400114, 'Bahasa Arab ( Maharat al-Kalam` I )', 2),
(56, 1400115, 'Bahasa Arab ( Maharat al-Qira`ah I )', 2, 1400115, 'Bahasa Arab ( Maharat al-Qira`ah I )', 2),
(57, 1400113, 'Bahasa Arab ( Maharat al-Kitabah I )', 1, 1400113, 'Bahasa Arab ( Maharat al-Kitabah I )', 1),
(58, 1400116, 'Bahasa Arab ( Maharat al-Istima` II )', 1, 1400116, 'Bahasa Arab ( Maharat al-Istima` II )', 1),
(59, 1400118, 'Bahasa Arab ( Maharat al-Kalam` II )', 2, 1400118, 'Bahasa Arab ( Maharat al-Kalam` II )', 2),
(60, 1400119, 'Bahasa Arab ( Maharat al-Qira`ah II )', 2, 1400119, 'Bahasa Arab ( Maharat al-Qira`ah II )', 2),
(61, 1400117, 'Bahasa Arab ( Maharat al-Kitabah II )', 1, 1400117, 'Bahasa Arab ( Maharat al-Kitabah II )', 1),
(62, 765208, 'Pengantar Teknologi Informasi', 2, 1565001, 'Foundation of Computing', 2),
(63, 765201, 'Matematika Dasar', 3, 1565002, 'Calculus', 3),
(64, 765209, 'Logika dan Algoritma', 2, 1565003, 'Algorithm & Programming 1', 3),
(65, 765204, 'Matematika Diskrit', 3, 1565004, 'Discrete Mathematics', 3),
(66, 765203, 'Aljabar Linier dan Matriks', 3, 1565005, 'Linear Algebra', 2),
(67, 765210, 'Struktur Data', 3, 1565006, 'Data Structure', 3),
(68, 765211, 'Dasar-dasar Pemrograman', 3, 1565007, 'Algorithm & Programming 2', 2),
(69, 765216, 'Rangkaian Digital', 2, 1565008, 'Digital Electronic', 3),
(70, 765206, 'Statistika', 2, 1565009, 'Statistics', 2),
(71, 765212, 'Pemrograman Berorientasi Obyek', 3, 1565010, 'Object Oriented Programming', 3),
(72, 765214, 'Desain Basisdata', 3, 1565011, 'Database', 3),
(73, 765311, 'Manajemen Basisdata', 2, 1565011, 'Database', 3),
(74, 765219, 'Organisasi & Arsitektur Komputer', 3, 1565012, 'Computer System', 3),
(75, 765217, 'Komunikasi Data', 3, 1565012, 'Computer System', 3),
(76, 765205, 'Metode Numerik', 2, 1565013, 'Numerical Methods', 2),
(77, 765306, 'Pemrograman Web', 3, 1565014, 'Web Programming', 3),
(78, 765309, 'Rekayasa Perangkat Lunak', 2, 1565015, 'Software Engineering', 3),
(79, 765312, 'Analisis dan Perancangan Sistem Informasi', 3, 1565015, 'Software Engineering', 3),
(80, 765302, 'Grafika Komputer', 3, 1565016, 'Computer Graphic', 2),
(81, 765218, 'Jaringan Komputer', 3, 1565017, 'Computer Network', 3),
(82, 765301, 'Kecerdasan Buatan', 3, 1565018, 'Artificial Intelligence', 3),
(83, 765303, 'Pengolahan Citra', 3, 1565019, 'Computer Vision', 3),
(84, 765313, 'Komputasi Bergerak', 3, 1565020, 'Mobile Programming', 2),
(85, 765213, 'Sistem Informasi', 2, 1565021, 'Information System', 3),
(86, 765305, 'Pemrograman Multimedia', 3, 1565022, 'Multimedia & Game Programming', 3),
(87, 765307, 'Sistem Terdistribusi', 3, 1565023, 'Distributed System & Security', 3),
(88, 765207, 'Metodologi Penelitian', 2, 1565024, 'Research Methodology', 2),
(89, 765314, 'Sistem Informasi Geografis', 3, 1565025, 'Geographical Information System', 2),
(90, 765202, 'Matematika Lanjut', 3, 1565026, 'Operation Research', 2),
(91, 765310, 'Interaksi Manusia dan Komputer', 2, 1565027, 'Human Computer Interaction', 3),
(92, 765215, 'Sistem Operasi', 2, 1565028, 'Operating System', 3),
(93, 765401, 'Kewirausahaan', 2, 1565029, 'Technopreneurship', 2),
(94, 765404, 'Manajemen Proyek Perangkat Lunak', 2, 1565030, 'Project Management', 2),
(95, 765405, 'Praktikum Dasar-dasar Pemrograman', 1, 1565031, 'Algorithm & Programming 1 Practicum', 1),
(96, 765405, 'Praktikum Dasar-dasar Pemrograman', 1, 1565032, 'Data Structure Practicum', 1),
(97, 765409, 'Praktikum Rangkaian Digital', 1, 1565033, 'Digital Electronic Practicum', 1),
(98, 765410, 'Praktikum Pemrog. Berorientasi Obyek', 1, 1565034, 'Object Oriented Programming Practicum', 1),
(99, 765410, 'Praktikum Pemrog. Berorientasi Obyek', 1, 1565035, 'Mobile Programming Practicum', 1),
(100, 765406, 'Praktikum Desain Basis Data', 1, 1565036, 'Database Practicum', 1),
(101, 765408, 'Praktikum Komunikasi Data', 1, 1565037, 'Computer System Practicum', 1),
(102, 765411, 'Praktikum Pemrograman Web', 1, 1565038, 'Web Programming Practicum', 1),
(103, 765415, 'Praktikum Analisis & Perancangan Sistem', 1, 1565039, 'Software Engineering Practicum', 1),
(104, 765415, 'Praktikum Analisis & Perancangan Sistem', 1, 1565040, 'Information System Practicum', 1),
(105, 765414, 'Praktikum Grafika Komputer', 1, 1565041, 'Computer Graphic Practicum', 1),
(106, 765407, 'Praktikum Jaringan Komputer', 1, 1565042, 'Computer Network Practicum', 1),
(107, 765413, 'Praktikum Pemrograman Multimedia', 1, 1565043, 'Multimedia & Game Programming Practicum', 1),
(108, 765412, 'Praktikum Sistem Terdistribusi', 1, 1565044, 'Distributed System Practicum', 1),
(109, 765416, 'Praktikum Sistem Informasi Geografis', 1, 1565045, 'Geographical Information System Practicum', 1),
(110, 765501, 'PKLI', 4, 1565046, 'Internship', 4),
(111, 765502, 'Seminar ', 2, 1565047, 'Research Proposal', 2),
(112, 765503, 'Skripsi', 6, 1565048, 'Undergraduate Thesis', 6),
(113, 765315, 'Sistem Informasi Cerdas', 3, 1565049, 'SOFT COMPUTING (OPTIONAL SUBJECT 1)', 3),
(114, 765402, 'Isu Profesional dan Proyek Group', 2, 1565057, 'Social Issues and Professional Practice (OPTIONAL SUBJECT 1)', 3),
(115, 765403, 'Etika Profesi', 2, 1565057, 'Social Issues and Professional Practice (OPTIONAL SUBJECT 1)', 3),
(116, 765304, 'Pengolahan Suara', 3, 1565058, 'Voice Processing (OPTIONAL SUBJECT 2)', 3),
(117, 765308, 'Keamanan Jaringan dan Sistem Komputer', 3, 1565059, 'Network Security (OPTIONAL SUBJECT 2)', 3),
(118, 0, '', 0, 1565050, 'VISUALIZATION & MODELING (OPTIONAL SUBJECT 2)', 3),
(119, 0, '', 0, 1565051, 'SOFTWARE QUALITY (OPTIONAL SUBJECT 1)', 3),
(120, 0, '', 0, 1565052, 'SOFTWARE MANAGEMENT (OPTIONAL SUBJECT 2)', 3),
(121, 0, '', 0, 1565053, 'ENTERPRISE ARCHITECTURE (OPTIONAL SUBJECT 1)', 3),
(122, 0, '', 0, 1565054, 'IT GOVERNANCE (OPTIONAL SUBJECT 2)', 3),
(123, 0, '', 0, 1565055, 'SCENARIO DESIGN (OPTIONAL SUBJECT 1)', 3),
(124, 0, '', 0, 1565056, 'CREATIVE GAME & ANIMATION (OPTIONAL SUBJECT 2)', 3),
(125, 1565001, 'Foundation of Computing', 2, 1565001, 'Foundation of Computing', 2),
(126, 1565002, 'Calculus', 3, 1565002, 'Calculus', 3),
(127, 1565003, 'Algorithm & Programming 1', 3, 1565003, 'Algorithm & Programming 1', 3),
(128, 1565004, 'Discrete Mathematics', 3, 1565004, 'Discrete Mathematics', 3),
(129, 1565005, 'Linear Algebra', 2, 1565005, 'Linear Algebra', 2),
(130, 1565006, 'Data Structure', 3, 1565006, 'Data Structure', 3),
(131, 1565007, 'Algorithm & Programming 2', 2, 1565007, 'Algorithm & Programming 2', 2),
(132, 1565008, 'Digital Electronic', 3, 1565008, 'Digital Electronic', 3),
(133, 1565009, 'Statistics', 2, 1565009, 'Statistics', 2),
(134, 1565010, 'Object Oriented Programming', 3, 1565010, 'Object Oriented Programming', 3),
(135, 1565011, 'Database', 3, 1565011, 'Database', 3),
(136, 1565011, 'Database', 3, 1565011, 'Database', 3),
(137, 1565012, 'Computer System', 3, 1565012, 'Computer System', 3),
(138, 1565012, 'Computer System', 3, 1565012, 'Computer System', 3),
(139, 1565013, 'Numerical Methods', 2, 1565013, 'Numerical Methods', 2),
(140, 1565014, 'Web Programming', 3, 1565014, 'Web Programming', 3),
(141, 1565015, 'Software Engineering', 3, 1565015, 'Software Engineering', 3),
(142, 1565015, 'Software Engineering', 3, 1565015, 'Software Engineering', 3),
(143, 1565016, 'Computer Graphic', 2, 1565016, 'Computer Graphic', 2),
(144, 1565017, 'Computer Network', 3, 1565017, 'Computer Network', 3),
(145, 1565018, 'Artificial Intelligence', 3, 1565018, 'Artificial Intelligence', 3),
(146, 1565019, 'Computer Vision', 3, 1565019, 'Computer Vision', 3),
(147, 1565020, 'Mobile Programming', 2, 1565020, 'Mobile Programming', 2),
(148, 1565021, 'Information System', 3, 1565021, 'Information System', 3),
(149, 1565022, 'Multimedia & Game Programming', 3, 1565022, 'Multimedia & Game Programming', 3),
(150, 1565023, 'Distributed System & Security', 3, 1565023, 'Distributed System & Security', 3),
(151, 1565024, 'Research Methodology', 2, 1565024, 'Research Methodology', 2),
(152, 1565025, 'Geographical Information System', 2, 1565025, 'Geographical Information System', 2),
(153, 1565026, 'Operation Research', 2, 1565026, 'Operation Research', 2),
(154, 1565027, 'Human Computer Interaction', 3, 1565027, 'Human Computer Interaction', 3),
(155, 1565028, 'Operating System', 3, 1565028, 'Operating System', 3),
(156, 1565029, 'Technopreneurship', 2, 1565029, 'Technopreneurship', 2),
(157, 1565030, 'Project Management', 2, 1565030, 'Project Management', 2),
(158, 1565031, 'Algorithm & Programming 1 Practicum', 1, 1565031, 'Algorithm & Programming 1 Practicum', 1),
(159, 1565032, 'Data Structure Practicum', 1, 1565032, 'Data Structure Practicum', 1),
(160, 1565033, 'Digital Electronic Practicum', 1, 1565033, 'Digital Electronic Practicum', 1),
(161, 1565034, 'Object Oriented Programming Practicum', 1, 1565034, 'Object Oriented Programming Practicum', 1),
(162, 1565035, 'Mobile Programming Practicum', 1, 1565035, 'Mobile Programming Practicum', 1),
(163, 1565036, 'Database Practicum', 1, 1565036, 'Database Practicum', 1),
(164, 1565037, 'Computer System Practicum', 1, 1565037, 'Computer System Practicum', 1),
(165, 1565038, 'Web Programming Practicum', 1, 1565038, 'Web Programming Practicum', 1),
(166, 1565039, 'Software Engineering Practicum', 1, 1565039, 'Software Engineering Practicum', 1),
(167, 1565040, 'Information System Practicum', 1, 1565040, 'Information System Practicum', 1),
(168, 1565041, 'Computer Graphic Practicum', 1, 1565041, 'Computer Graphic Practicum', 1),
(169, 1565042, 'Computer Network Practicum', 1, 1565042, 'Computer Network Practicum', 1),
(170, 1565043, 'Multimedia & Game Programming Practicum', 1, 1565043, 'Multimedia & Game Programming Practicum', 1),
(171, 1565044, 'Distributed System Practicum', 1, 1565044, 'Distributed System Practicum', 1),
(172, 1565045, 'Geographical Information System Practicum', 1, 1565045, 'Geographical Information System Practicum', 1),
(173, 1565046, 'Internship', 4, 1565046, 'Internship', 4),
(174, 1565047, 'Research Proposal', 2, 1565047, 'Research Proposal', 2),
(175, 1565048, 'Undergraduate Thesis', 6, 1565048, 'Undergraduate Thesis', 6),
(176, 1565049, 'SOFT COMPUTING (OPTIONAL SUBJECT 1)', 3, 1565049, 'SOFT COMPUTING (OPTIONAL SUBJECT 1)', 3),
(177, 1565057, 'Social Issues and Professional Practice (OPTIONAL SUBJECT 1)', 3, 1565057, 'Social Issues and Professional Practice (OPTIONAL SUBJECT 1)', 3),
(178, 1565057, 'Social Issues and Professional Practice (OPTIONAL SUBJECT 1)', 3, 1565057, 'Social Issues and Professional Practice (OPTIONAL SUBJECT 1)', 3),
(179, 1565058, 'Voice Processing (OPTIONAL SUBJECT 2)', 3, 1565058, 'Voice Processing (OPTIONAL SUBJECT 2)', 3),
(180, 1565059, 'Network Security (OPTIONAL SUBJECT 2)', 3, 1565059, 'Network Security (OPTIONAL SUBJECT 2)', 3),
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
-- Indexes for table `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `konversi`
--
ALTER TABLE `konversi`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim_mhs`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`no`) USING BTREE;

--
-- Indexes for table `pemasaran`
--
ALTER TABLE `pemasaran`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
