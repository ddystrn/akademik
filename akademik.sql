-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 02:46 AM
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
  `nim_mhs` varchar(8) DEFAULT NULL,
  `kode_mk` int(7) NOT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `nilai_angka` double DEFAULT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `sks_nilai_angka` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `khslulus`
--

CREATE TABLE `khslulus` (
  `kode_mk` int(7) NOT NULL,
  `nilai_angka` double DEFAULT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `kode_mk_alias` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `khstidaklulus`
--

CREATE TABLE `khstidaklulus` (
  `kode_mk` int(7) NOT NULL,
  `nilai_angka` double DEFAULT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `kode_mk_alias` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konversi`
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

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim_mhs` varchar(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ipk` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `sks_alias` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemasaranmk1`
--

CREATE TABLE `pemasaranmk1` (
  `no` int(4) NOT NULL,
  `kode_mk` int(7) DEFAULT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `kode_mk_alias` int(7) DEFAULT NULL,
  `nama_mk_alias` varchar(100) DEFAULT NULL,
  `sks_alias` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemasaranmk2`
--

CREATE TABLE `pemasaranmk2` (
  `no` int(4) NOT NULL,
  `kode_mk` int(7) DEFAULT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `kode_mk_alias` int(7) DEFAULT NULL,
  `nama_mk_alias` varchar(100) DEFAULT NULL,
  `sks_alias` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemasarannew`
--

CREATE TABLE `pemasarannew` (
  `no` int(4) NOT NULL,
  `kode_mk` int(7) DEFAULT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `kode_mk_alias` int(7) DEFAULT NULL,
  `nama_mk_alias` varchar(100) DEFAULT NULL,
  `sks_alias` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `skipmkpilihan`
--

CREATE TABLE `skipmkpilihan` (
  `kode_mk` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `khslulus`
--
ALTER TABLE `khslulus`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `khstidaklulus`
--
ALTER TABLE `khstidaklulus`
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
-- Indexes for table `pemasaran`
--
ALTER TABLE `pemasaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `pemasaranmk1`
--
ALTER TABLE `pemasaranmk1`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `pemasaranmk2`
--
ALTER TABLE `pemasaranmk2`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `pemasarannew`
--
ALTER TABLE `pemasarannew`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `skipmkpilihan`
--
ALTER TABLE `skipmkpilihan`
  ADD PRIMARY KEY (`kode_mk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
