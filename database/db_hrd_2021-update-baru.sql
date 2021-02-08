-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2021 at 08:14 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hrd_2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `divisi_id` int(11) NOT NULL,
  `nama_divisi` varchar(200) NOT NULL,
  `deskripsi_divisi` text DEFAULT NULL,
  `status_divisi` char(1) NOT NULL DEFAULT '1',
  `hapus` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`divisi_id`, `nama_divisi`, `deskripsi_divisi`, `status_divisi`, `hapus`) VALUES
(1, 'IT', 'Divisi bidang komputasi dan jaringan', '1', '0'),
(2, 'SALES', 'Divisi Sales penjualan', '1', '0'),
(3, 'STAFF', 'Divisi Staff Support', '1', '0'),
(4, 'MARKETING', 'Divisi Marketing Penjualan', '0', '0'),
(5, 'tfhthfth', 'fthfgh45646', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `akses_id` int(11) NOT NULL,
  `nama_akses` varchar(200) NOT NULL,
  `deskripsi_akses` text DEFAULT NULL,
  `status_akses` char(1) NOT NULL DEFAULT '1',
  `hapus` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`akses_id`, `nama_akses`, `deskripsi_akses`, `status_akses`, `hapus`) VALUES
(1, 'Super Admin', 'HAK AKSES SUPER ADMIN SEMUA AKSES DIBUKA', '1', '0'),
(2, 'Admin', 'Admin Staff', '1', '0'),
(3, 'HRD', 'HRD Staff', '1', '0'),
(4, 'Direktur Staff', 'Direktur Bagian Staff', '0', '0'),
(5, 'asd', 'asd', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_tes_pelamar`
--

CREATE TABLE `hasil_tes_pelamar` (
  `tes_hasil_id` int(11) NOT NULL,
  `pelamar_id` int(11) NOT NULL,
  `tes_id` int(11) NOT NULL,
  `skor_wawancara` int(3) NOT NULL DEFAULT 0,
  `skor_tes` int(3) NOT NULL DEFAULT 0,
  `status_hasil_tes` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `iklan_lowongan`
--

CREATE TABLE `iklan_lowongan` (
  `iklan_id` int(11) NOT NULL,
  `judul_iklan` varchar(200) DEFAULT NULL,
  `deskripsi_iklan` text DEFAULT NULL,
  `status_iklan` char(1) DEFAULT '1',
  `tanggal_iklan` datetime NOT NULL,
  `batas_waktu` datetime DEFAULT NULL,
  `gambar_iklan` varchar(200) DEFAULT NULL,
  `hapus` char(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iklan_lowongan`
--

INSERT INTO `iklan_lowongan` (`iklan_id`, `judul_iklan`, `deskripsi_iklan`, `status_iklan`, `tanggal_iklan`, `batas_waktu`, `gambar_iklan`, `hapus`) VALUES
(1, 'Lowongan IT STAFF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus. Pulvinar elementum integer enim neque volutpat ac.\r\nSenectus et netus et malesuada. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Neque convallis a cras semper auctor. Libero id faucibus nisl tincidunt eget. Leo a diam sollicitudin tempor id. A lacus vestibulum sed arcu non odio euismod lacinia. In tellus integer feugiat scelerisque. Feugiat in fermentum posuere urna nec tincidunt praesent. Porttitor rhoncus dolor purus non enim praesent elementum facilisis. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Et malesuada fames ac turpis egestas sed. Sit amet nisl suscipit adipiscing bibendum est ultricies. Arcu ac tortor dignissim convallis aenean et tortor at. Pretium viverra suspendisse potenti nullam ac tortor vitae purus. Eros donec ac odio tempor orci dapibus ultrices. Elementum nibh tellus molestie nunc. Et magnis dis parturient montes nascetur. Est placerat in egestas erat imperdiet. Consequat interdum varius sit amet mattis vulputate enim.\r\nSit amet nulla facilisi morbi tempus. Nulla facilisi cras fermentum odio eu. Etiam erat velit scelerisque in dictum non consectetur a erat. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Ut sem nulla pharetra diam. Fames ac turpis egestas maecenas. Bibendum neque egestas congue quisque egestas diam. Laoreet id donec ultrices tincidunt arcu non sodales neque. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Faucibus interdum posuere lorem ipsum dolor sit.\r\n', '2', '2021-02-10 12:30:31', '2021-02-17 12:30:36', NULL, '1'),
(2, 'Lowongan IT STAFF Kloter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus. Pulvinar elementum integer enim neque volutpat ac. Senectus et netus et malesuada. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Neque convallis a cras semper auctor. Libero id faucibus nisl tincidunt eget. Leo a diam sollicitudin tempor id. A lacus vestibulum sed arcu non odio euismod lacinia. In tellus integer feugiat scelerisque. Feugiat in fermentum posuere urna nec tincidunt praesent. Porttitor rhoncus dolor purus non enim praesent elementum facilisis. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Et malesuada fames ac turpis egestas sed. Sit amet nisl suscipit adipiscing bibendum est ultricies. Arcu ac tortor dignissim convallis aenean et tortor at. Pretium viverra suspendisse potenti nullam ac tortor vitae purus. Eros donec ac odio tempor orci dapibus ultrices. Elementum nibh tellus molestie nunc. Et magnis dis parturient montes nascetur. Est placerat in egestas erat imperdiet. Consequat interdum varius sit amet mattis vulputate enim. Sit amet nulla facilisi morbi tempus. Nulla facilisi cras fermentum odio eu. Etiam erat velit scelerisque in dictum non consectetur a erat. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Ut sem nulla pharetra diam. Fames ac turpis egestas maecenas. Bibendum neque egestas congue quisque egestas diam. Laoreet id donec ultrices tincidunt arcu non sodales neque. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Faucibus interdum posuere lorem ipsum dolor sit.', '1', '2021-02-15 05:02:00', '2021-02-22 11:02:00', 'Mermaid_Man_and_Barnacle_Boy_IV_039.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pelamar`
--

CREATE TABLE `pelamar` (
  `pelamar_id` int(11) NOT NULL,
  `nama_pelamar` varchar(200) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(200) NOT NULL,
  `status_menikah` char(1) NOT NULL,
  `agama` char(1) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `email` varchar(200) NOT NULL,
  `gambar_cv` varchar(200) NOT NULL,
  `gambar_ktp` varchar(200) NOT NULL,
  `gambar_foto_diri` varchar(200) NOT NULL,
  `gambar_sertifikat_pelatihan` varchar(200) NOT NULL,
  `gambar_catatan_kerja` varchar(200) NOT NULL,
  `hapus` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelamar`
--

INSERT INTO `pelamar` (`pelamar_id`, `nama_pelamar`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `status_menikah`, `agama`, `alamat`, `no_hp`, `email`, `gambar_cv`, `gambar_ktp`, `gambar_foto_diri`, `gambar_sertifikat_pelatihan`, `gambar_catatan_kerja`, `hapus`) VALUES
(1, 'Mohamad Iqbal Musyaffa', 'L', '1995-11-23', 'Bandung', '0', 'I', 'Jalan Suryani Dalam 2 No.101A/83 Bandung', '087838011516', 'iqbalm1995@gmail.com', '', '', '', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `akses_id` int(11) NOT NULL,
  `nama_pengguna` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status_pengguna` char(1) NOT NULL DEFAULT '1',
  `hapus` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`pengguna_id`, `akses_id`, `nama_pengguna`, `username`, `password`, `email`, `status_pengguna`, `hapus`) VALUES
(1, 1, 'Adminer', 'admin123', '$2y$10$f1bLmJlJ.YnmBEviNKZAj.sEcl3Y7aQCsHaQHMng69ogVq/Qh5JTa', 'adminer77@email.com', '1', '0'),
(2, 2, 'Ageng S.', 'ageng123', '$2y$10$FXN8fqXg/Ff6gnH4rGQja.d9ZXcA.stf2uHOiiD6FZMQFmHAR3H12', 'Ageng@mail.com', '1', '0'),
(3, 4, 'Agus', 'agus123', '$2y$10$JShhxiDGCSMzGTmFjbahcOmftIrNcwwApOvo81wJBGSZATg4T.r0W', 'agus123@mail.com', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `perekrutan`
--

CREATE TABLE `perekrutan` (
  `rekrut_id` int(11) NOT NULL,
  `iklan_id` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `deskripsi_rekrut` text DEFAULT NULL,
  `status_rekrut` char(1) NOT NULL DEFAULT '1',
  `kapasitas` int(4) NOT NULL DEFAULT 1,
  `terisi` int(4) NOT NULL DEFAULT 0,
  `hapus` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perekrutan`
--

INSERT INTO `perekrutan` (`rekrut_id`, `iklan_id`, `pos_id`, `deskripsi_rekrut`, `status_rekrut`, `kapasitas`, `terisi`, `hapus`) VALUES
(1, 2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus.', '0', 10, 0, '0'),
(2, 2, 3, 'Pulvinar elementum integer enim neque volutpat ac. Senectus et netus et malesuada. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Neque convallis a cras semper auctor. Libero id faucibus nisl tincidunt eget. Leo a diam sollicitudin tempor id. A lacus vestibulum sed arcu non odio euismod lacinia. In tellus integer feugiat scelerisque. Feugiat in fermentum posuere urna nec tincidunt praesent.', '1', 2, 0, '0'),
(3, 2, 4, 'efsefsefs', '2', 5, 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `perekrutan_pelamar`
--

CREATE TABLE `perekrutan_pelamar` (
  `pelamar_id` int(11) NOT NULL,
  `rekrut_id` int(11) NOT NULL,
  `status_pelamar` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perekrutan_pelamar`
--

INSERT INTO `perekrutan_pelamar` (`pelamar_id`, `rekrut_id`, `status_pelamar`) VALUES
(1, 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `posisi`
--

CREATE TABLE `posisi` (
  `pos_id` int(11) NOT NULL,
  `divisi_id` int(11) NOT NULL,
  `nama_posisi` varchar(200) NOT NULL,
  `deskripsi_posisi` text DEFAULT NULL,
  `status_posisi` char(1) NOT NULL DEFAULT '1',
  `hapus` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posisi`
--

INSERT INTO `posisi` (`pos_id`, `divisi_id`, `nama_posisi`, `deskripsi_posisi`, `status_posisi`, `hapus`) VALUES
(1, 1, 'IT Support', 'IT bagian support', '1', '0'),
(3, 1, 'IT Supervisor', 'IT Bagian supervisor', '1', '0'),
(4, 2, 'Sales Supervisor', 'Sales bagian super visor', '0', '0'),
(6, 4, 'jkljkl', 'jkljkl', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tes_perekrutan`
--

CREATE TABLE `tes_perekrutan` (
  `rekrut_id` int(11) NOT NULL,
  `tes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tes_perekrutan`
--

INSERT INTO `tes_perekrutan` (`rekrut_id`, `tes_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tes_ujian`
--

CREATE TABLE `tes_ujian` (
  `tes_id` int(11) NOT NULL,
  `nama_tes` varchar(200) NOT NULL,
  `deskripsi_tes` text DEFAULT NULL,
  `status_tes` char(1) NOT NULL DEFAULT '1',
  `hapus` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tes_ujian`
--

INSERT INTO `tes_ujian` (`tes_id`, `nama_tes`, `deskripsi_tes`, `status_tes`, `hapus`) VALUES
(1, 'Ujian Dunia', 'TES Ujian Dunia', '1', '0'),
(2, 'Ujian Akhirat', 'TES Ujian Akhirat', '1', '0'),
(3, 'Ujian Chunin', 'TES Ujian Chunin', '0', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`divisi_id`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`akses_id`);

--
-- Indexes for table `hasil_tes_pelamar`
--
ALTER TABLE `hasil_tes_pelamar`
  ADD PRIMARY KEY (`tes_hasil_id`),
  ADD KEY `pelamar_id` (`pelamar_id`),
  ADD KEY `tes_id` (`tes_id`);

--
-- Indexes for table `iklan_lowongan`
--
ALTER TABLE `iklan_lowongan`
  ADD PRIMARY KEY (`iklan_id`);

--
-- Indexes for table `pelamar`
--
ALTER TABLE `pelamar`
  ADD PRIMARY KEY (`pelamar_id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`pengguna_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `akses_id` (`akses_id`);

--
-- Indexes for table `perekrutan`
--
ALTER TABLE `perekrutan`
  ADD PRIMARY KEY (`rekrut_id`),
  ADD KEY `iklan_id` (`iklan_id`),
  ADD KEY `pos_id` (`pos_id`);

--
-- Indexes for table `perekrutan_pelamar`
--
ALTER TABLE `perekrutan_pelamar`
  ADD PRIMARY KEY (`pelamar_id`),
  ADD KEY `rekrut_id` (`rekrut_id`);

--
-- Indexes for table `posisi`
--
ALTER TABLE `posisi`
  ADD PRIMARY KEY (`pos_id`),
  ADD KEY `divisi_id` (`divisi_id`);

--
-- Indexes for table `tes_perekrutan`
--
ALTER TABLE `tes_perekrutan`
  ADD KEY `tes_id` (`tes_id`),
  ADD KEY `rekrut_id` (`rekrut_id`);

--
-- Indexes for table `tes_ujian`
--
ALTER TABLE `tes_ujian`
  ADD PRIMARY KEY (`tes_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `divisi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `akses_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hasil_tes_pelamar`
--
ALTER TABLE `hasil_tes_pelamar`
  MODIFY `tes_hasil_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iklan_lowongan`
--
ALTER TABLE `iklan_lowongan`
  MODIFY `iklan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `pelamar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `perekrutan`
--
ALTER TABLE `perekrutan`
  MODIFY `rekrut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `perekrutan_pelamar`
--
ALTER TABLE `perekrutan_pelamar`
  MODIFY `pelamar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posisi`
--
ALTER TABLE `posisi`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tes_ujian`
--
ALTER TABLE `tes_ujian`
  MODIFY `tes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil_tes_pelamar`
--
ALTER TABLE `hasil_tes_pelamar`
  ADD CONSTRAINT `hasil_tes_pelamar_ibfk_1` FOREIGN KEY (`pelamar_id`) REFERENCES `pelamar` (`pelamar_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_tes_pelamar_ibfk_2` FOREIGN KEY (`tes_id`) REFERENCES `tes_ujian` (`tes_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`akses_id`) REFERENCES `hak_akses` (`akses_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `perekrutan`
--
ALTER TABLE `perekrutan`
  ADD CONSTRAINT `perekrutan_ibfk_1` FOREIGN KEY (`iklan_id`) REFERENCES `iklan_lowongan` (`iklan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `perekrutan_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `posisi` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `perekrutan_pelamar`
--
ALTER TABLE `perekrutan_pelamar`
  ADD CONSTRAINT `perekrutan_pelamar_ibfk_1` FOREIGN KEY (`pelamar_id`) REFERENCES `pelamar` (`pelamar_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `perekrutan_pelamar_ibfk_2` FOREIGN KEY (`rekrut_id`) REFERENCES `perekrutan` (`rekrut_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posisi`
--
ALTER TABLE `posisi`
  ADD CONSTRAINT `posisi_ibfk_1` FOREIGN KEY (`divisi_id`) REFERENCES `divisi` (`divisi_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tes_perekrutan`
--
ALTER TABLE `tes_perekrutan`
  ADD CONSTRAINT `tes_perekrutan_ibfk_2` FOREIGN KEY (`tes_id`) REFERENCES `tes_ujian` (`tes_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tes_perekrutan_ibfk_3` FOREIGN KEY (`rekrut_id`) REFERENCES `perekrutan` (`rekrut_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
