-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2023 at 06:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simkbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_control`
--

CREATE TABLE `tabel_control` (
  `id` int(11) NOT NULL,
  `nama_desa` varchar(255) NOT NULL,
  `logo_desa` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `maps` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_control`
--

INSERT INTO `tabel_control` (`id`, `nama_desa`, `logo_desa`, `alamat`, `maps`, `email`) VALUES
(1, 'Desa Kasri', 'Kabupaten-Malang.png', 'Kasri Krajan Kec. Bululawang Kab. Malang Prov. Jawa Timur65171', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15799.580439690479!2d112.6513685292978!3d-8.112161801109997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd621054820d0f3%3A0xba323c5b686494c2!2sKasri%2C%20Bululawang%2C%20Malang%20Regency%2C%20East%20Java!5e0!3m2!1sen!2sid!4v1688616546311!5m2!1sen!2sid', 'desakasri@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_dusun`
--

CREATE TABLE `tabel_dusun` (
  `id` int(11) NOT NULL,
  `dusun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_dusun`
--

INSERT INTO `tabel_dusun` (`id`, `dusun`) VALUES
(1, 'Krajan'),
(2, 'Baran'),
(3, 'Kedok'),
(4, 'Renteng');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kependudukan`
--

CREATE TABLE `tabel_kependudukan` (
  `NO_KK` char(16) NOT NULL,
  `NIK` varchar(16) NOT NULL,
  `NAMA_LGKP` varchar(50) NOT NULL,
  `HBKEL` varchar(2) NOT NULL,
  `JK` tinyint(1) NOT NULL,
  `TMPT_LHR` varchar(30) NOT NULL,
  `TGL_LHR` date NOT NULL,
  `TAHUN` varchar(3) NOT NULL,
  `BULAN` varchar(2) NOT NULL,
  `HARI` varchar(2) NOT NULL,
  `NAMA_LGKP_AYAH` varchar(100) NOT NULL,
  `NAMA_LGKP_IBU` varchar(100) NOT NULL,
  `KECAMATAN` varchar(30) NOT NULL,
  `KELURAHAN` varchar(30) NOT NULL,
  `DSN` int(11) NOT NULL,
  `AGAMA` varchar(10) NOT NULL,
  `bantuan` varchar(2) NOT NULL,
  `jenis_bantuan` varchar(100) NOT NULL,
  `ibu_hamil` varchar(2) NOT NULL,
  `disabilitas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_kependudukan`
--

INSERT INTO `tabel_kependudukan` (`NO_KK`, `NIK`, `NAMA_LGKP`, `HBKEL`, `JK`, `TMPT_LHR`, `TGL_LHR`, `TAHUN`, `BULAN`, `HARI`, `NAMA_LGKP_AYAH`, `NAMA_LGKP_IBU`, `KECAMATAN`, `KELURAHAN`, `DSN`, `AGAMA`, `bantuan`, `jenis_bantuan`, `ibu_hamil`, `disabilitas`) VALUES
('0987654321098765', '1647398762537463', 'Imam Syafii', '1', 1, 'Malang', '1988-03-21', '35', '3', '23', 'Wajib', 'Ngatini', 'BULULAWANG', 'KASRI', 3, 'islam', '1', 'PKH', '', '0'),
('1111111111111111', '2222222222222222', 'Ardiansyah', '1', 1, 'Malang', '1978-12-12', '44', '7', '1', 'Yuliono', 'Yulianti', 'BULULAWANG', 'KASRI', 4, 'hindu', '1', 'BST', '', '0'),
('3648504759375746', '3446578685064956', 'Margaretta Firnanda', '9', 2, 'Malang', '2004-01-11', '19', '5', '25', 'Aris', 'Cariyati', 'BULULAWANG', 'KASRI', 1, 'kristen', '', '', '', '0'),
('2435264524533733', '3453456754564674', 'Jeon Jungkook', '1', 1, 'Malang', '1998-12-05', '24', '7', '8', 'Aris', 'Cariyati', 'BULULAWANG', 'KASRI', 4, 'kristen', '0', '', '', '0'),
('3445667489856374', '3455676950970778', 'Suparman', '1', 1, 'Malang', '1978-08-25', '44', '10', '11', 'Limin', 'Wagiyem', 'BULULAWANG', 'KASRI', 2, 'islam', '1', 'BLT', '', '0'),
('1232323232321233', '3456676543245567', 'Suparman', '1', 1, 'Malang', '1977-11-12', '45', '8', '1', 'Limin', 'Lela', 'BULULAWANG', 'KASRI', 2, 'katolik', '1', 'BLT', '', '0'),
('3501709928392839', '3546372837297765', 'Riswanda Amara', '9', 2, 'Malang', '2002-06-16', '21', '0', '19', 'Sujiono', 'Uswatun', 'BULULAWANG', 'KASRI', 1, 'islam', '', '', '', '0'),
('3333333333333333', '4444444444444444', 'Rafi Ahmad', '1', 1, 'Malang', '1997-12-06', '25', '7', '7', 'Ahmad', 'Ammi', 'BULULAWANG', 'KASRI', 3, 'kristen', '0', '', '', '0'),
('1234321234567890', '6453647586923456', 'Intan Dwi', '1', 2, 'Malang', '2000-12-31', '22', '6', '14', 'Hartono', 'Hartini', 'TILONGKABILA', 'BUTU', 3, 'budha', '0', '', '', '0'),
('3546576857497876', '6767889987654345', 'Suparjo', '1', 1, 'Malang', '1965-06-13', '58', '0', '23', 'Takim', 'Lela', 'BULULAWANG', 'KASRI', 4, 'khonghucu', '1', 'BLT', '', '1'),
('6677558898465789', '7768584869847698', 'Hafidz Ulum', '1', 1, 'Malang', '1988-03-04', '35', '4', '10', 'Udin', 'Eli', 'TILONGKABILA', 'BUTU', 1, 'islam', '1', 'BPNT', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_konsumsi`
--

CREATE TABLE `tabel_konsumsi` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `BAHAN_MAKANAN` varchar(10) NOT NULL,
  `FREKUENSI_PER_MINGGU` varchar(2) NOT NULL,
  `PAKAIAN_PER_TAHUN` varchar(2) NOT NULL,
  `MAKAN_PER_HARI` varchar(2) NOT NULL,
  `BIAYA_PENGOBATAN` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_konsumsi`
--

INSERT INTO `tabel_konsumsi` (`NIK`, `NAMA`, `BAHAN_MAKANAN`, `FREKUENSI_PER_MINGGU`, `PAKAIAN_PER_TAHUN`, `MAKAN_PER_HARI`, `BIAYA_PENGOBATAN`) VALUES
('1647398762537463', 'Imam Syafii', '3', '1', '1', '3', '0'),
('2222222222222222', 'Ardiansyah', '3', '1', '1', '2', '0'),
('3446578685064956', 'Margaretta Firnanda', '', '', '', '', ''),
('3453456754564674', 'Jeon Jungkook', '3', '3', '3', '3', '1'),
('3455676950970778', 'Suparman', '3', '1', '1', '2', '0'),
('3456676543245567', 'Suparman', '3', '1', '1', '3', '0'),
('3546372837297765', 'Riswanda Amara', '', '', '', '', ''),
('4444444444444444', 'Rafi Ahmad', '1', '3', '3', '3', '1'),
('6453647586923456', 'Intan Dwi', '1', '2', '2', '3', '2'),
('6767889987654345', 'Suparjo', '3', '1', '1', '1', '0'),
('7768584869847698', 'Hafidz Ulum', '3', '1', '0', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pekerjaan`
--

CREATE TABLE `tabel_pekerjaan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PEKERJAAN` varchar(30) NOT NULL,
  `PENGHASILAN_PER_BULAN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pekerjaan`
--

INSERT INTO `tabel_pekerjaan` (`NIK`, `NAMA`, `PEKERJAAN`, `PENGHASILAN_PER_BULAN`) VALUES
('1647398762537463', 'Imam Syafii', 'Lainnya', 2000000),
('2222222222222222', 'Ardiansyah', 'Guru', 300000),
('3446578685064956', 'Margaretta Firnanda', 'PNS', 3300000),
('3453456754564674', 'Jeon Jungkook', 'Pedagang Besar', 5000000),
('3455676950970778', 'Suparman', 'Buruh Tani', 900000),
('3456676543245567', 'Suparman', 'Buruh Tani', 900000),
('3546372837297765', 'Riswanda Amara', 'Pedagang Kecil', 2000000),
('4444444444444444', 'Rafi Ahmad', 'Lainnya', 15000000),
('6453647586923456', 'Intan Dwi', 'TKI', 10000000),
('6767889987654345', 'Suparjo', 'Buruh Tani', 800000),
('7768584869847698', 'Hafidz Ulum', 'Tidak Bekerja', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendidikan`
--

CREATE TABLE `tabel_pendidikan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PENDIDIKAN_TERAKHIR` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pendidikan`
--

INSERT INTO `tabel_pendidikan` (`NIK`, `NAMA`, `PENDIDIKAN_TERAKHIR`) VALUES
('1647398762537463', 'Imam Syafii', 'SMP dan Sederajat'),
('2222222222222222', 'Ardiansyah', 'SMA dan Sederajat'),
('3446578685064956', 'Margaretta Firnanda', 'SMA dan Sederajat'),
('3453456754564674', 'Jeon Jungkook', 'Diploma 1-3'),
('3455676950970778', 'Suparman', 'Tidak Tamat SD'),
('3456676543245567', 'Suparman', 'Tidak Sekolah'),
('3546372837297765', 'Riswanda Amara', 'SMA dan Sederajat'),
('4444444444444444', 'Rafi Ahmad', 'SMA dan Sederajat'),
('6453647586923456', 'Intan Dwi', 'S2 dan Sederajat'),
('6767889987654345', 'Suparjo', 'Tidak Tamat SD'),
('7768584869847698', 'Hafidz Ulum', 'SD dan Sederajat');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_rumah`
--

CREATE TABLE `tabel_rumah` (
  `NIK` varchar(16) NOT NULL,
  `LUAS_LANTAI` int(2) NOT NULL,
  `JENIS_LANTAI` varchar(20) NOT NULL,
  `JENIS_DINDING` varchar(30) NOT NULL,
  `FASILITAS_BAB` tinyint(1) NOT NULL,
  `SUMBER_PENERANGAN` tinyint(1) NOT NULL,
  `SUMBER_AIR_MINUM` varchar(30) NOT NULL,
  `BAHAN_BAKAR_MEMASAK` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_rumah`
--

INSERT INTO `tabel_rumah` (`NIK`, `LUAS_LANTAI`, `JENIS_LANTAI`, `JENIS_DINDING`, `FASILITAS_BAB`, `SUMBER_PENERANGAN`, `SUMBER_AIR_MINUM`, `BAHAN_BAKAR_MEMASAK`) VALUES
('', 0, '--Pilih Jenis Lantai', '--Pilih Jenis Dinding--', 1, 1, '--Pilih Sumber Air Minum--', '--Pilih Bahan Bakar '),
('1647398762537463', 2, 'Keramik', 'Lainnya', 1, 1, 'Mata Air tidak Terlindung', 'Gas'),
('2222222222222222', 1, 'Keramik', 'Tembok Tanpa Di Plester', 1, 1, 'Mata Air tidak Terlindung', 'Gas'),
('3453456754564674', 2, 'Keramik', 'Lainnya', 1, 1, 'Mata Air tidak Terlindung', 'Gas'),
('3455676950970778', 1, 'Semen', 'Bambu', 1, 1, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('3456676543245567', 1, 'Kayu/Papan', 'Bambu', 1, 1, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('4444444444444444', 2, 'Marmer', 'Lainnya', 1, 1, 'Mata Air tidak Terlindung', 'Gas'),
('6767889987654345', 1, 'Semen', 'Tembok Tanpa Di Plester', 0, 1, 'Mata Air tidak Terlindung', 'Gas');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tabungan`
--

CREATE TABLE `tabel_tabungan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `KEPEMILIKAN_TABUNGAN` varchar(1) NOT NULL,
  `JENIS_TABUNGAN` varchar(4) NOT NULL,
  `HARGA` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_tabungan`
--

INSERT INTO `tabel_tabungan` (`NIK`, `NAMA`, `KEPEMILIKAN_TABUNGAN`, `JENIS_TABUNGAN`, `HARGA`) VALUES
('1647398762537463', 'Imam Syafii', '0', '', ''),
('2222222222222222', 'Ardiansyah', '0', '', ''),
('3446578685064956', 'Margaretta Firnanda', '', '', ''),
('3453456754564674', 'Jeon Jungkook', '1', '2', '10000000'),
('3455676950970778', 'Suparman', '0', '', ''),
('3456676543245567', 'Suparman', '0', '', ''),
('3546372837297765', 'Riswanda Amara', '', '', ''),
('4444444444444444', 'Rafi Ahmad', '1', '5', '13000000'),
('6453647586923456', 'Intan Dwi', '1', '2', '12000000'),
('6767889987654345', 'Suparjo', '0', '', ''),
('7768584869847698', 'Hafidz Ulum', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `pass`) VALUES
(2, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_control`
--
ALTER TABLE `tabel_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_kependudukan`
--
ALTER TABLE `tabel_kependudukan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_konsumsi`
--
ALTER TABLE `tabel_konsumsi`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pekerjaan`
--
ALTER TABLE `tabel_pekerjaan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pendidikan`
--
ALTER TABLE `tabel_pendidikan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_rumah`
--
ALTER TABLE `tabel_rumah`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_tabungan`
--
ALTER TABLE `tabel_tabungan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_control`
--
ALTER TABLE `tabel_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
