-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2019 pada 15.49
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
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int(1) DEFAULT NULL,
  `nilai_angka` double DEFAULT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `sks_nilai_angka` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `khslulus`
--

CREATE TABLE `khslulus` (
  `kode_mk` int(7) NOT NULL,
  `nilai_angka` double DEFAULT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `kode_mk_alias` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `khstidaklulus`
--

CREATE TABLE `khstidaklulus` (
  `kode_mk` int(7) NOT NULL,
  `nilai_angka` double DEFAULT NULL,
  `nilai_huruf` varchar(2) DEFAULT NULL,
  `kode_mk_alias` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim_mhs` varchar(8) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `ipk` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemasaran`
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

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `khslulus`
--
ALTER TABLE `khslulus`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `khstidaklulus`
--
ALTER TABLE `khstidaklulus`
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
