-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2021 at 03:51 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `iklan_lowongan`
--

INSERT INTO `iklan_lowongan` (`iklan_id`, `judul_iklan`, `deskripsi_iklan`, `status_iklan`, `tanggal_iklan`, `batas_waktu`, `gambar_iklan`, `hapus`) VALUES
(1, 'Lowongan IT STAFF', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus. Pulvinar elementum integer enim neque volutpat ac.\r\nSenectus et netus et malesuada. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Neque convallis a cras semper auctor. Libero id faucibus nisl tincidunt eget. Leo a diam sollicitudin tempor id. A lacus vestibulum sed arcu non odio euismod lacinia. In tellus integer feugiat scelerisque. Feugiat in fermentum posuere urna nec tincidunt praesent. Porttitor rhoncus dolor purus non enim praesent elementum facilisis. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Et malesuada fames ac turpis egestas sed. Sit amet nisl suscipit adipiscing bibendum est ultricies. Arcu ac tortor dignissim convallis aenean et tortor at. Pretium viverra suspendisse potenti nullam ac tortor vitae purus. Eros donec ac odio tempor orci dapibus ultrices. Elementum nibh tellus molestie nunc. Et magnis dis parturient montes nascetur. Est placerat in egestas erat imperdiet. Consequat interdum varius sit amet mattis vulputate enim.\r\nSit amet nulla facilisi morbi tempus. Nulla facilisi cras fermentum odio eu. Etiam erat velit scelerisque in dictum non consectetur a erat. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Ut sem nulla pharetra diam. Fames ac turpis egestas maecenas. Bibendum neque egestas congue quisque egestas diam. Laoreet id donec ultrices tincidunt arcu non sodales neque. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Faucibus interdum posuere lorem ipsum dolor sit.\r\n', '2', '2021-02-10 12:30:31', '2021-02-17 12:30:36', NULL, '1'),
(2, 'Lowongan IT STAFF Kloter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus. Pulvinar elementum integer enim neque volutpat ac. Senectus et netus et malesuada. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Neque convallis a cras semper auctor. Libero id faucibus nisl tincidunt eget. Leo a diam sollicitudin tempor id. A lacus vestibulum sed arcu non odio euismod lacinia. In tellus integer feugiat scelerisque. Feugiat in fermentum posuere urna nec tincidunt praesent. Porttitor rhoncus dolor purus non enim praesent elementum facilisis. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Et malesuada fames ac turpis egestas sed. Sit amet nisl suscipit adipiscing bibendum est ultricies. Arcu ac tortor dignissim convallis aenean et tortor at. Pretium viverra suspendisse potenti nullam ac tortor vitae purus. Eros donec ac odio tempor orci dapibus ultrices. Elementum nibh tellus molestie nunc. Et magnis dis parturient montes nascetur. Est placerat in egestas erat imperdiet. Consequat interdum varius sit amet mattis vulputate enim. Sit amet nulla facilisi morbi tempus. Nulla facilisi cras fermentum odio eu. Etiam erat velit scelerisque in dictum non consectetur a erat. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Ut sem nulla pharetra diam. Fames ac turpis egestas maecenas. Bibendum neque egestas congue quisque egestas diam. Laoreet id donec ultrices tincidunt arcu non sodales neque. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Faucibus interdum posuere lorem ipsum dolor sit.', '1', '2021-02-15 05:02:00', '2021-02-22 11:02:00', 'Mermaid_Man_and_Barnacle_Boy_IV_039.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `karyawan_id` int(11) NOT NULL,
  `pos_id` int(11) DEFAULT NULL,
  `nama_karyawan` varchar(200) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `status_menikah` char(1) NOT NULL,
  `agama` char(1) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status_karyawan` char(1) NOT NULL,
  `hapus` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`karyawan_id`, `pos_id`, `nama_karyawan`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `status_menikah`, `agama`, `alamat`, `no_hp`, `email`, `status_karyawan`, `hapus`) VALUES
(1, 0, 'Miranda Tedjasaputra', 'P', '0000-00-00', 'Soreang', '1', '1', ' -', '08895301XXXX', 'Miranda Tedjasaputra@gmail.com', '1', '0'),
(2, 0, 'Johannes Oentoro', 'L', '0000-00-00', 'Cibinong', '1', '1', ' -', '08783231XXXX', 'Johannes Oentoro@gmail.com', '1', '0'),
(3, 0, 'Haryono Winarta', 'L', '0000-00-00', 'Jakarta Utara', '0', '2', ' -', '08578998XXXX', 'Haryono Winarta@gmail.com', '1', '0'),
(4, 0, 'Gerry Aubry', 'L', '0000-00-00', 'Purwakarta', '1', '3', ' -', '08163816XXXX', 'Gerry Aubry@gmail.com', '1', '0'),
(5, 0, 'I Nyoman Djintji', 'P', '0000-00-00', 'Subang', '0', '3', ' -', '08123376XXXX', 'I Nyoman Djintji@gmail.com', '1', '0'),
(6, 0, 'Hari Widodo', 'L', '0000-00-00', 'Purwakarta', '1', '3', ' -', '08989859XXXX', 'Hari Widodo@gmail.com', '1', '0'),
(7, 0, 'Albert Kongoasa', 'L', '0000-00-00', 'Sumedang', '1', '3', ' -', '08148031XXXX', 'Albert Kongoasa@gmail.com', '1', '0'),
(8, 0, 'Herumanlo Zaini', 'L', '0000-00-00', 'Sumber', '0', '3', ' -', '08594736XXXX', 'Herumanlo Zaini@gmail.com', '1', '0'),
(9, 0, 'Dick Leitch', 'L', '0000-00-00', 'Ciamis', '0', '2', ' -', '08157866XXXX', 'Dick Leitch@gmail.com', '1', '0'),
(10, 0, 'Hasan Aula', 'L', '0000-00-00', 'Cirebon', '1', '1', ' -', '08788878XXXX', 'Hasan Aula@gmail.com', '1', '0'),
(11, 0, 'ELVIN TJANDRA', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08285018XXXX', 'ELVIN TJANDRA@gmail.com', '0', '0'),
(12, 0, 'John Hugh Lester', 'L', '0000-00-00', 'Cimahi', '1', '1', ' -', '08151142XXXX', 'John Hugh Lester@gmail.com', '1', '0'),
(13, 0, 'Abdul Hadi Ismail', 'L', '0000-00-00', 'Purwakarta', '1', '1', ' -', '08894982XXXX', 'Abdul Hadi Ismail@gmail.com', '1', '0'),
(14, 0, 'Arya Widjaya', 'L', '0000-00-00', 'Cirebon', '1', '1', ' -', '08533263XXXX', 'Arya Widjaya@gmail.com', '1', '0'),
(15, 0, 'Irene Maya Hambali Ishak', 'P', '0000-00-00', 'Sumedang', '0', '1', ' -', '08215994XXXX', 'Irene Maya Hambali Ishak@gmail.com', '1', '0'),
(16, 0, 'Murdaya Widyawimarta', 'L', '0000-00-00', 'Parigi', '0', '1', ' -', '08776729XXXX', 'Murdaya Widyawimarta@gmail.com', '1', '0'),
(17, 0, 'Dharmadi Budiman', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08283169XXXX', 'Dharmadi Budiman@gmail.com', '1', '0'),
(18, 0, 'Ahadiat Wargana', 'L', '0000-00-00', 'Sumedang', '0', '2', ' -', '08151442XXXX', 'Ahadiat Wargana@gmail.com', '1', '0'),
(19, 0, 'JOHANNES HALIM', 'L', '0000-00-00', 'Cimahi', '0', '3', ' -', '08539059XXXX', 'JOHANNES HALIM@gmail.com', '1', '0'),
(20, 0, 'Marluce Tio Indriati Santoso', 'L', '0000-00-00', 'Bogor', '1', '3', ' -', '08578176XXXX', 'Marluce Tio Indriati Santoso@gmail.com', '1', '0'),
(21, 0, 'HARMIONO JUDIANTO', 'L', '0000-00-00', 'Ciamis', '0', '3', ' -', '08315384XXXX', 'HARMIONO JUDIANTO@gmail.com', '1', '0'),
(22, 0, 'Fauzi Ezeddin', 'L', '0000-00-00', 'Cianjur', '0', '1', ' -', '08382859XXXX', 'Fauzi Ezeddin@gmail.com', '1', '0'),
(23, 0, 'Hendrik', 'L', '0000-00-00', 'Sumber', '1', '1', ' -', '08534708XXXX', 'Hendrik@gmail.com', '1', '0'),
(24, 0, 'Ahmad faried ', 'L', '0000-00-00', 'Bandung', '1', '1', ' -', '08526029XXXX', 'Ahmad faried@gmail.com', '1', '0'),
(25, 0, 'Candra Winoto Salim', 'L', '0000-00-00', 'Cisaat', '0', '1', ' -', '08181287XXXX', 'Candra Winoto Salim@gmail.com', '1', '0'),
(26, 0, 'Calvin Lukmantara', 'L', '0000-00-00', ' Jakarta Selatan', '1', '2', ' -', '08892316XXXX', 'Calvin Lukmantara@gmail.com', '1', '0'),
(27, 0, 'Fauzi Jahja', 'L', '0000-00-00', 'Garut', '1', '1', ' -', '08597949XXXX', 'Fauzi Jahja@gmail.com', '1', '0'),
(28, 0, 'Kiki Kiftiah', 'P', '0000-00-00', 'Cirebon', '0', '1', ' -', '08188828XXXX', 'Kiki Kiftiah@gmail.com', '1', '0'),
(29, 0, 'Hendra Tjoa', 'L', '0000-00-00', 'Singaparna', '1', '1', ' -', '08537039XXXX', 'Hendra Tjoa@gmail.com', '1', '0'),
(30, 0, 'Bambang Rahardja Burhan', 'L', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08568957XXXX', 'Bambang Rahardja Burhan@gmail.com', '1', '0'),
(31, 0, 'Jeniawati', 'P', '0000-00-00', 'Tasikmalaya', '1', '2', ' -', '08565804XXXX', 'Jeniawati@gmail.com', '1', '0'),
(32, 0, 'Lestariono', 'L', '0000-00-00', 'Cibinong', '0', '1', ' -', '08151305XXXX', 'Lestariono@gmail.com', '1', '0'),
(33, 0, 'Irsanto Ongko', 'P', '0000-00-00', 'Soreang', '0', '1', ' -', '08191938XXXX', 'Irsanto Ongko@gmail.com', '1', '0'),
(34, 0, 'Effendy Husin', 'L', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08539087XXXX', 'Effendy Husin@gmail.com', '1', '0'),
(35, 0, 'Fitri Wiriasari', 'L', '0000-00-00', 'Ciamis', '1', '1', ' -', '08163514XXXX', 'Fitri Wiriasari@gmail.com', '1', '0'),
(36, 0, 'Eddy Purwanto Lim', 'P', '0000-00-00', 'Cimahi', '1', '2', ' -', '08212553XXXX', 'Eddy Purwanto Lim@gmail.com', '1', '0'),
(37, 0, 'EMILY STEPHANA DJAUHARI', 'L', '0000-00-00', 'Sumber', '1', '3', ' -', '08129295XXXX', 'EMILY STEPHANA DJAUHARI@gmail.com', '1', '0'),
(38, 0, 'Aristotle', 'P', '0000-00-00', 'Cimahi', '0', '1', ' -', '08176369XXXX', 'Aristotle@gmail.com', '1', '0'),
(39, 0, 'EDGARDO ELOY DIAZ FALCONET', 'P', '0000-00-00', 'Jakarta Barat', '1', '3', ' -', '08113532XXXX', 'EDGARDO ELOY DIAZ FALCONET@gmail.com', '1', '0'),
(40, 0, 'Gunawan Sucahijono Tjoa', 'P', '0000-00-00', 'Purwakarta', '1', '1', ' -', '08786648XXXX', 'Gunawan Sucahijono Tjoa@gmail.com', '1', '0'),
(41, 0, 'Ibu Rahmawaty', 'P', '0000-00-00', 'Garut', '0', '1', ' -', '08774217XXXX', 'Ibu Rahmawaty@gmail.com', '1', '0'),
(42, 0, 'Gita Wirjawan', 'L', '0000-00-00', 'Jakarta Pusat', '0', '1', ' -', '08176814XXXX', 'Gita Wirjawan@gmail.com', '1', '0'),
(43, 0, 'HENRY WIDJAYA', 'P', '0000-00-00', 'Jakarta Pusat', '0', '1', ' -', '08596726XXXX', 'HENRY WIDJAYA@gmail.com', '1', '0'),
(44, 0, 'MUNKLEY Christopher James', 'P', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08961487XXXX', 'MUNKLEY Christopher James@gmail.com', '1', '0'),
(45, 0, 'Cavalier International Group Corporation', 'P', '0000-00-00', 'Indramayu', '0', '3', ' -', '08214259XXXX', 'Cavalier International Group Corporation@gmail.com', '1', '0'),
(46, 0, 'Gesang Budiarso', 'P', '0000-00-00', 'Bekasi', '0', '3', ' -', '08895011XXXX', 'Gesang Budiarso@gmail.com', '1', '0'),
(47, 0, 'JUANDY WIJAYA', 'P', '0000-00-00', 'Sumedang', '1', '3', ' -', '08174461XXXX', 'JUANDY WIJAYA@gmail.com', '1', '0'),
(48, 0, 'Bayu Prawitasari', 'P', '0000-00-00', 'Bogor', '0', '2', ' -', '08811912XXXX', 'Bayu Prawitasari@gmail.com', '1', '0'),
(49, 0, 'James Preston TRUESDELL', 'L', '0000-00-00', 'Garut', '0', '1', ' -', '08147958XXXX', 'James Preston TRUESDELL@gmail.com', '1', '0'),
(50, 0, 'ARDAS DIPA', 'P', '0000-00-00', 'Jakarta Pusat', '0', '1', ' -', '08969551XXXX', 'ARDAS DIPA@gmail.com', '1', '0'),
(51, 0, 'Dharma Tjitra Widjaja', 'L', '0000-00-00', 'Cianjur', '0', '1', ' -', '08126351XXXX', 'Dharma Tjitra Widjaja@gmail.com', '1', '0'),
(52, 0, 'Anton Santoso', 'P', '0000-00-00', 'Bogor', '1', '1', ' -', '08785831XXXX', 'Anton Santoso@gmail.com', '1', '0'),
(53, 0, 'Djohan Tjiunardi', 'L', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08135307XXXX', 'Djohan Tjiunardi@gmail.com', '1', '0'),
(54, 0, 'Fifi Indra', 'P', '0000-00-00', 'Cimahi', '0', '3', ' -', '08566912XXXX', 'Fifi Indra@gmail.com', '1', '0'),
(55, 0, 'Dixon Koesdjojo', 'P', '0000-00-00', 'Majalengka', '1', '1', ' -', '08893028XXXX', 'Dixon Koesdjojo@gmail.com', '1', '0'),
(56, 0, 'Darmansjah Darsono', 'P', '0000-00-00', 'Cirebon', '0', '2', ' -', '08147555XXXX', 'Darmansjah Darsono@gmail.com', '1', '0'),
(57, 0, 'Boediyanio Gondotirto', 'L', '0000-00-00', 'Karawang', '0', '1', ' -', '08987342XXXX', 'Boediyanio Gondotirto@gmail.com', '1', '0'),
(58, 0, 'Mohamad Abdullah Jasin and Dewi Kam', 'P', '0000-00-00', 'Ciamis', '0', '1', ' -', '08591409XXXX', 'Mohamad Abdullah Jasin and Dewi Kam@gmail.com', '1', '0'),
(59, 0, 'Matthew S. Deayton', 'P', '0000-00-00', 'Bekasi', '0', '2', ' -', '08592831XXXX', 'Matthew S. Deayton@gmail.com', '1', '0'),
(60, 0, 'David Kristian', 'P', '0000-00-00', 'Bekasi', '0', '2', ' -', '08384338XXXX', 'David Kristian@gmail.com', '1', '0'),
(61, 0, 'Lim Budi Susetyo', 'L', '0000-00-00', 'Kuningan', '0', '3', ' -', '08557039XXXX', 'Lim Budi Susetyo@gmail.com', '1', '0'),
(62, 0, 'Bambang Subianto', 'L', '0000-00-00', 'Tasikmalaya', '1', '3', ' -', '08572585XXXX', 'Bambang Subianto@gmail.com', '1', '0'),
(63, 0, 'JENTY', 'L', '0000-00-00', 'Sumber', '1', '3', ' -', '08554711XXXX', 'JENTY@gmail.com', '1', '0'),
(64, 0, 'LISA MARDIANI GUNAWAN', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08792687XXXX', 'LISA MARDIANI GUNAWAN@gmail.com', '1', '0'),
(65, 0, 'Baldeo Singh', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08174684XXXX', 'Baldeo Singh@gmail.com', '1', '0'),
(66, 0, 'Haris', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08817981XXXX', 'Haris@gmail.com', '1', '0'),
(67, 0, 'IMAM MUHADI ROWI', 'L', '0000-00-00', 'Subang', '0', '3', ' -', '08886483XXXX', 'IMAM MUHADI ROWI@gmail.com', '1', '0'),
(68, 0, 'Kokos Leo Lim', 'P', '0000-00-00', 'Jakarta Timur', '0', '1', ' -', '08314139XXXX', 'Kokos Leo Lim@gmail.com', '1', '0'),
(69, 0, 'Donny Imam Priambodo', 'L', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08966595XXXX', 'Donny Imam Priambodo@gmail.com', '1', '0'),
(70, 0, 'Handoko Susilo', 'L', '0000-00-00', 'Bandung', '0', '1', ' -', '08149333XXXX', 'Handoko Susilo@gmail.com', '1', '0'),
(71, 0, 'Adryansyah', 'P', '0000-00-00', 'Indramayu', '1', '1', ' -', '08125693XXXX', 'Adryansyah@gmail.com', '1', '0'),
(72, 0, 'Eddy William Katuari', 'L', '0000-00-00', 'Majalengka', '0', '2', ' -', '08986860XXXX', 'Eddy William Katuari@gmail.com', '1', '0'),
(73, 0, 'Budi Christranto', 'L', '0000-00-00', 'Ngamprah', '1', '3', ' -', '08537596XXXX', 'Budi Christranto@gmail.com', '1', '0'),
(74, 0, 'Indawan Saputra Hatta', 'P', '0000-00-00', 'Cibinong', '1', '2', ' -', '08174866XXXX', 'Indawan Saputra Hatta@gmail.com', '1', '0'),
(75, 0, 'Indra Muliadi Sugiharto', 'P', '0000-00-00', 'Jakarta Utara', '1', '2', ' -', '08198325XXXX', 'Indra Muliadi Sugiharto@gmail.com', '1', '0'),
(76, 0, 'Erni Gunawan', 'P', '0000-00-00', 'Jakarta Timur', '0', '2', ' -', '08187602XXXX', 'Erni Gunawan@gmail.com', '1', '0'),
(77, 0, 'HINDARTO SUHARDJO', 'P', '0000-00-00', 'Bogor', '1', '2', ' -', '08134298XXXX', 'HINDARTO SUHARDJO@gmail.com', '1', '0'),
(78, 0, 'Kalim', 'L', '0000-00-00', 'Garut', '0', '2', ' -', '08386973XXXX', 'Kalim@gmail.com', '1', '0'),
(79, 0, 'Henry Kurli and Lin Konggui', 'L', '0000-00-00', 'Purwakarta', '1', '1', ' -', '08977640XXXX', 'Henry Kurli and Lin Konggui@gmail.com', '1', '0'),
(80, 0, 'ANWAR SAEBE', 'P', '0000-00-00', 'Bekasi', '1', '3', ' -', '08183744XXXX', 'ANWAR SAEBE@gmail.com', '1', '0'),
(81, 0, 'ALIEN WIBOWO', 'L', '0000-00-00', 'Jakarta Pusat', '1', '2', ' -', '08779981XXXX', 'ALIEN WIBOWO@gmail.com', '1', '0'),
(82, 0, 'Linda Tjahja', 'L', '0000-00-00', 'Ciamis', '0', '2', ' -', '08575902XXXX', 'Linda Tjahja@gmail.com', '1', '0'),
(83, 0, 'Lisa Sundoro Hosea', 'L', '0000-00-00', 'Majalengka', '1', '3', ' -', '08115668XXXX', 'Lisa Sundoro Hosea@gmail.com', '1', '0'),
(84, 0, 'Iriawan Suharyanto', 'P', '0000-00-00', 'Majalengka', '1', '2', ' -', '08123508XXXX', 'Iriawan Suharyanto@gmail.com', '1', '0'),
(85, 0, 'James Steven Kallman', 'P', '0000-00-00', 'Cianjur', '0', '1', ' -', '08174481XXXX', 'James Steven Kallman@gmail.com', '1', '0'),
(86, 0, 'Ivan Budiono', 'L', '0000-00-00', 'Jakarta Barat', '1', '1', ' -', '08288486XXXX', 'Ivan Budiono@gmail.com', '1', '0'),
(87, 0, 'Jeffery Freshen Sihombing', 'P', '0000-00-00', 'Cirebon', '1', '1', ' -', '08829578XXXX', 'Jeffery Freshen Sihombing@gmail.com', '1', '0'),
(88, 0, 'Iwan Samsuddin', 'L', '0000-00-00', 'Jakarta Timur', '0', '1', ' -', '08188998XXXX', 'Iwan Samsuddin@gmail.com', '1', '0'),
(89, 0, 'LINDA RACHMAT', 'L', '0000-00-00', 'Majalengka', '1', '1', ' -', '08888713XXXX', 'LINDA RACHMAT@gmail.com', '1', '0'),
(90, 0, 'Iwan Dewono Budi Juwono', 'L', '0000-00-00', 'Bekasi', '0', '3', ' -', '08571302XXXX', 'Iwan Dewono Budi Juwono@gmail.com', '1', '0'),
(91, 0, 'Loa Sui Hong', 'P', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08821186XXXX', 'Loa Sui Hong@gmail.com', '1', '0'),
(92, 0, 'Meity Subianto', 'P', '0000-00-00', 'Depok', '1', '1', ' -', '08124072XXXX', 'Meity Subianto@gmail.com', '1', '0'),
(93, 0, 'Aling Hermawan Oey', 'P', '0000-00-00', 'Bandung', '1', '1', ' -', '08966589XXXX', 'Aling Hermawan Oey@gmail.com', '1', '0'),
(94, 0, 'HOSEA HADELI', 'P', '0000-00-00', 'Cianjur', '1', '2', ' -', '08161845XXXX', 'HOSEA HADELI@gmail.com', '1', '0'),
(95, 0, 'Jacqueline Tjahjadi', 'P', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08561472XXXX', 'Jacqueline Tjahjadi@gmail.com', '1', '0'),
(96, 0, 'Farouk Rais', 'P', '0000-00-00', 'Bogor', '0', '1', ' -', '08148741XXXX', 'Farouk Rais@gmail.com', '1', '0'),
(97, 0, 'Johan Tandean', 'P', '0000-00-00', 'Cimahi', '1', '1', ' -', '08132465XXXX', 'Johan Tandean@gmail.com', '1', '0'),
(98, 0, 'Kristanto Wibowo Siswanto', 'L', '0000-00-00', 'Jakarta Barat', '1', '1', ' -', '08144055XXXX', 'Kristanto Wibowo Siswanto@gmail.com', '1', '0'),
(99, 0, 'Azir Azwien Jenie', 'L', '0000-00-00', 'Parigi', '1', '1', ' -', '08552620XXXX', 'Azir Azwien Jenie@gmail.com', '1', '0'),
(100, 0, 'Mochtar Riady', 'P', '0000-00-00', 'Cimahi', '0', '1', ' -', '08144437XXXX', 'Mochtar Riady@gmail.com', '1', '0'),
(101, 0, 'Helen Wijaya Ong', 'P', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08385923XXXX', 'Helen Wijaya Ong@gmail.com', '1', '0'),
(102, 0, 'HAZRIYANDI', 'L', '0000-00-00', 'Jakarta Pusat', '0', '3', ' -', '08168242XXXX', 'HAZRIYANDI@gmail.com', '1', '0'),
(103, 0, 'Jozef Darmawan Angkasa', 'L', '0000-00-00', 'Ngamprah', '0', '2', ' -', '08136917XXXX', 'Jozef Darmawan Angkasa@gmail.com', '1', '0'),
(104, 0, 'Boy Gemino Kalauserang', 'P', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08149454XXXX', 'Boy Gemino Kalauserang@gmail.com', '1', '0'),
(105, 0, 'Meigawaty Soejatno', 'P', '0000-00-00', 'Jakarta Utara', '1', '1', ' -', '08984483XXXX', 'Meigawaty Soejatno@gmail.com', '1', '0'),
(106, 0, 'DANI ISMULYATIE', 'L', '0000-00-00', 'Garut', '1', '1', ' -', '08577522XXXX', 'DANI ISMULYATIE@gmail.com', '1', '0'),
(107, 0, 'Lisa Ambarwati Dharmawan', 'P', '0000-00-00', 'Subang', '1', '3', ' -', '08152500XXXX', 'Lisa Ambarwati Dharmawan@gmail.com', '1', '0'),
(108, 0, 'Kurniawan Nurdin Karim', 'P', '0000-00-00', 'Parigi', '0', '3', ' -', '08185322XXXX', 'Kurniawan Nurdin Karim@gmail.com', '1', '0'),
(109, 0, 'Andry Pribady', 'L', '0000-00-00', 'Cianjur', '1', '1', ' -', '08978481XXXX', 'Andry Pribady@gmail.com', '1', '0'),
(110, 0, 'Gunawan suteja', 'P', '0000-00-00', 'Parigi', '1', '1', ' -', '08573234XXXX', 'Gunawan suteja@gmail.com', '1', '0'),
(111, 0, 'Hermanto Tangkau Adrian', 'P', '0000-00-00', 'Cisaat', '1', '1', ' -', '08794859XXXX', 'Hermanto Tangkau Adrian@gmail.com', '1', '0'),
(112, 0, 'Christian Nainggolan', 'L', '0000-00-00', 'Singaparna', '1', '3', ' -', '08217220XXXX', 'Christian Nainggolan@gmail.com', '1', '0'),
(113, 0, 'Hadi Suginawan', 'P', '0000-00-00', 'Karawang', '0', '2', ' -', '08564789XXXX', 'Hadi Suginawan@gmail.com', '1', '0'),
(114, 0, 'Djajadi Djaja', 'L', '0000-00-00', 'Ngamprah', '0', '3', ' -', '08995921XXXX', 'Djajadi Djaja@gmail.com', '1', '0'),
(115, 0, 'ARY SURYA', 'P', '0000-00-00', 'Kuningan', '1', '1', ' -', '08974314XXXX', 'ARY SURYA@gmail.com', '1', '0'),
(116, 0, 'Kusumo Purwanti Dewi', 'L', '0000-00-00', 'Bandung', '1', '1', ' -', '08162359XXXX', 'Kusumo Purwanti Dewi@gmail.com', '1', '0'),
(117, 0, 'Lim Tjung Luong', 'P', '0000-00-00', 'Sumedang', '1', '1', ' -', '08141910XXXX', 'Lim Tjung Luong@gmail.com', '1', '0'),
(118, 0, 'LiLi Ashari', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08214038XXXX', 'LiLi Ashari@gmail.com', '1', '0'),
(119, 0, 'Edy Suwarno', 'P', '0000-00-00', 'Bandung', '0', '1', ' -', '08893343XXXX', 'Edy Suwarno@gmail.com', '1', '0'),
(120, 0, 'Miana Dwilasmini Sudwikatmono', 'L', '0000-00-00', 'Karawang', '0', '1', ' -', '08127124XXXX', 'Miana Dwilasmini Sudwikatmono@gmail.com', '1', '0'),
(121, 0, 'Glenn Timothy Sugita', 'P', '0000-00-00', 'Cibinong', '0', '3', ' -', '08825061XXXX', 'Glenn Timothy Sugita@gmail.com', '1', '0'),
(122, 0, 'Michael Tjahjadi', 'P', '0000-00-00', 'Indramayu', '0', '1', ' -', '08981136XXXX', 'Michael Tjahjadi@gmail.com', '1', '0'),
(123, 0, 'Agam Nugraha Subagdja', 'P', '0000-00-00', 'Karawang', '0', '3', ' -', '08813684XXXX', 'Agam Nugraha Subagdja@gmail.com', '1', '0'),
(124, 0, 'Dharsono Hartono', 'L', '0000-00-00', 'Jakarta Barat', '0', '3', ' -', '08381231XXXX', 'Dharsono Hartono@gmail.com', '1', '0'),
(125, 0, 'Mirah Amiria Adhyaksa', 'L', '0000-00-00', 'Singaparna', '0', '3', ' -', '08566832XXXX', 'Mirah Amiria Adhyaksa@gmail.com', '1', '0'),
(126, 0, 'Erly Tandjung', 'P', '0000-00-00', 'Parigi', '0', '3', ' -', '08972823XXXX', 'Erly Tandjung@gmail.com', '1', '0'),
(127, 0, 'Ahmad Rahman Pasaman', 'L', '0000-00-00', 'Karawang', '0', '2', ' -', '08119407XXXX', 'Ahmad Rahman Pasaman@gmail.com', '1', '0'),
(128, 0, 'Michael Twomey', 'L', '0000-00-00', 'Subang', '1', '3', ' -', '08137523XXXX', 'Michael Twomey@gmail.com', '1', '0'),
(129, 0, 'Gunawan Endi', 'L', '0000-00-00', 'Cirebon', '0', '3', ' -', '08175777XXXX', 'Gunawan Endi@gmail.com', '1', '0'),
(130, 0, 'ADI BISONO', 'P', '0000-00-00', 'Subang', '1', '2', ' -', '08523783XXXX', 'ADI BISONO@gmail.com', '1', '0'),
(131, 0, 'CATHERINE YOSHAWIRJA', 'P', '0000-00-00', 'Bekasi', '1', '1', ' -', '08778243XXXX', 'CATHERINE YOSHAWIRJA@gmail.com', '1', '0'),
(132, 0, 'Hoediono Kweefanus', 'P', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08198219XXXX', 'Hoediono Kweefanus@gmail.com', '1', '0'),
(133, 0, 'Blue Ribbon Holding Ltd', 'P', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08975192XXXX', 'Blue Ribbon Holding Ltd@gmail.com', '1', '0'),
(134, 0, 'Houston Jusuf', 'P', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08164236XXXX', 'Houston Jusuf@gmail.com', '1', '0'),
(135, 0, 'Arif and Yvette Suryatenggara', 'P', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08598041XXXX', 'Arif and Yvette Suryatenggara@gmail.com', '1', '0'),
(136, 0, 'Hengky Tenacious', 'L', '0000-00-00', 'Garut', '0', '1', ' -', '08188691XXXX', 'Hengky Tenacious@gmail.com', '1', '0'),
(137, 0, 'ARI SULISTIO', 'L', '0000-00-00', 'Jakarta Timur', '1', '2', ' -', '08287764XXXX', 'ARI SULISTIO@gmail.com', '1', '0'),
(138, 0, 'Eddy Winata', 'P', '0000-00-00', 'Soreang', '0', '3', ' -', '08142719XXXX', 'Eddy Winata@gmail.com', '1', '0'),
(139, 0, 'Hilary Richard Bolton', 'L', '0000-00-00', 'Subang', '1', '1', ' -', '08169220XXXX', 'Hilary Richard Bolton@gmail.com', '1', '0'),
(140, 0, 'Mohamad Iqbal Musyaffa', 'P', '0000-00-00', ' Jakarta Selatan', '1', '2', ' -', '08194737XXXX', 'Mohamad Iqbal Musyaffa@gmail.com', '1', '0'),
(141, 0, 'ANDRE JOHANNES MAMUAYA', 'P', '0000-00-00', 'Majalengka', '0', '2', ' -', '08534902XXXX', 'ANDRE JOHANNES MAMUAYA@gmail.com', '1', '0'),
(142, 0, 'Lum Weng Loy', 'L', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08819840XXXX', 'Lum Weng Loy@gmail.com', '1', '0'),
(143, 0, 'HENKY SUWIGNJO', 'P', '0000-00-00', 'Tasikmalaya', '1', '2', ' -', '08789607XXXX', 'HENKY SUWIGNJO@gmail.com', '1', '0'),
(144, 0, 'Eugene Trismitro', 'L', '0000-00-00', 'Cibinong', '0', '2', ' -', '08195682XXXX', 'Eugene Trismitro@gmail.com', '1', '0'),
(145, 0, 'Grant Moon-Tae Kim', 'L', '0000-00-00', 'Singaparna', '1', '3', ' -', '08979052XXXX', 'Grant Moon-Tae Kim@gmail.com', '1', '0'),
(146, 0, 'Angus Nelson Karoll', 'P', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08165139XXXX', 'Angus Nelson Karoll@gmail.com', '1', '0'),
(147, 0, 'Josep Susanto Kiswandono', 'P', '0000-00-00', 'Bogor', '1', '1', ' -', '08146861XXXX', 'Josep Susanto Kiswandono@gmail.com', '1', '0'),
(148, 0, 'Bambang Hartono', 'P', '0000-00-00', 'Bekasi', '0', '1', ' -', '08537500XXXX', 'Bambang Hartono@gmail.com', '1', '0'),
(149, 0, 'Eva Berliana Rosway', 'L', '0000-00-00', 'Cianjur', '0', '1', ' -', '08814209XXXX', 'Eva Berliana Rosway@gmail.com', '1', '0'),
(150, 0, 'Honey Angkosubroto', 'L', '0000-00-00', 'Kuningan', '1', '3', ' -', '08887369XXXX', 'Honey Angkosubroto@gmail.com', '1', '0'),
(151, 0, 'Evi Hamdani', 'P', '0000-00-00', 'Jakarta Pusat', '1', '3', ' -', '08578476XXXX', 'Evi Hamdani@gmail.com', '1', '0'),
(152, 0, 'Gahet Loengara Ascobat', 'P', '0000-00-00', 'Kuningan', '0', '1', ' -', '08156860XXXX', 'Gahet Loengara Ascobat@gmail.com', '1', '0'),
(153, 0, 'Kartini Fahmi Idris', 'P', '0000-00-00', 'Jakarta Utara', '1', '3', ' -', '08967332XXXX', 'Kartini Fahmi Idris@gmail.com', '1', '0'),
(154, 0, 'Frans Limas', 'L', '0000-00-00', 'Jakarta Barat', '1', '2', ' -', '08981907XXXX', 'Frans Limas@gmail.com', '1', '0'),
(155, 0, 'David Kuchenbecker', 'L', '0000-00-00', 'Soreang', '0', '3', ' -', '08966105XXXX', 'David Kuchenbecker@gmail.com', '1', '0'),
(156, 0, 'Anthony Wijaya', 'P', '0000-00-00', 'Cirebon', '1', '2', ' -', '08779801XXXX', 'Anthony Wijaya@gmail.com', '1', '0'),
(157, 0, 'Irawan Widjaja', 'P', '0000-00-00', 'Singaparna', '0', '1', ' -', '08894583XXXX', 'Irawan Widjaja@gmail.com', '1', '0'),
(158, 0, 'John Williem Vanderwal', 'L', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08584299XXXX', 'John Williem Vanderwal@gmail.com', '1', '0'),
(159, 0, 'IVAN HENRY', 'L', '0000-00-00', 'Jakarta Utara', '0', '1', ' -', '08527427XXXX', 'IVAN HENRY@gmail.com', '1', '0'),
(160, 0, 'Darmadi Karjanto Putro', 'P', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08318570XXXX', 'Darmadi Karjanto Putro@gmail.com', '1', '0'),
(161, 0, 'Jim Truesdell', 'P', '0000-00-00', 'Depok', '0', '1', ' -', '08159478XXXX', 'Jim Truesdell@gmail.com', '1', '0'),
(162, 0, 'Dominique Gallamnn', 'L', '0000-00-00', 'Indramayu', '0', '3', ' -', '08597961XXXX', 'Dominique Gallamnn@gmail.com', '1', '0'),
(163, 0, 'Evie Raviana', 'L', '0000-00-00', 'Bogor', '1', '3', ' -', '08569318XXXX', 'Evie Raviana@gmail.com', '1', '0'),
(164, 0, 'Jose R. Hanna', 'P', '0000-00-00', 'Garut', '1', '2', ' -', '08983836XXXX', 'Jose R. Hanna@gmail.com', '1', '0'),
(165, 0, 'Meizar Suyardi', 'P', '0000-00-00', 'Ngamprah', '0', '3', ' -', '08962859XXXX', 'Meizar Suyardi@gmail.com', '1', '0'),
(166, 0, 'Husodo Angkosubroto', 'P', '0000-00-00', 'Parigi', '0', '3', ' -', '08529769XXXX', 'Husodo Angkosubroto@gmail.com', '1', '0'),
(167, 0, 'Andrew Thomas Eriksson', 'L', '0000-00-00', 'Cibinong', '1', '2', ' -', '08774980XXXX', 'Andrew Thomas Eriksson@gmail.com', '1', '0'),
(168, 0, 'Istini Tatiek Siddharta', 'L', '0000-00-00', 'Kuningan', '1', '3', ' -', '08113278XXXX', 'Istini Tatiek Siddharta@gmail.com', '1', '0'),
(169, 0, 'Martinus Arief Limandoko', 'L', '0000-00-00', 'Cimahi', '1', '2', ' -', '08194924XXXX', 'Martinus Arief Limandoko@gmail.com', '1', '0'),
(170, 0, 'Barlianto Ronald', 'P', '0000-00-00', 'Cirebon', '1', '1', ' -', '08962914XXXX', 'Barlianto Ronald@gmail.com', '1', '0'),
(171, 0, 'Atira Aksa', 'L', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08828435XXXX', 'Atira Aksa@gmail.com', '1', '0'),
(172, 0, 'Harun Ibrahim Tajuddin Nur', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08774721XXXX', 'Harun Ibrahim Tajuddin Nur@gmail.com', '1', '0'),
(173, 0, 'Ateng Sulestio', 'P', '0000-00-00', 'Bekasi', '0', '1', ' -', '08121324XXXX', 'Ateng Sulestio@gmail.com', '1', '0'),
(174, 0, 'HERIK ANTONI JIE', 'P', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08771666XXXX', 'HERIK ANTONI JIE@gmail.com', '1', '0'),
(175, 0, 'Agus Tjandra', 'L', '0000-00-00', 'Subang', '1', '1', ' -', '08586076XXXX', 'Agus Tjandra@gmail.com', '1', '0'),
(176, 0, 'Michael Wijaya Goutama', 'P', '0000-00-00', 'Jakarta Pusat', '1', '3', ' -', '08315695XXXX', 'Michael Wijaya Goutama@gmail.com', '1', '0'),
(177, 0, 'Lily Lawandra', 'L', '0000-00-00', 'Sumber', '0', '2', ' -', '08788912XXXX', 'Lily Lawandra@gmail.com', '1', '0'),
(178, 0, 'Budi Setiadharma SH', 'L', '0000-00-00', 'Sumedang', '1', '1', ' -', '08565738XXXX', 'Budi Setiadharma SH@gmail.com', '1', '0'),
(179, 0, 'ERIKA DEBORA DJAUHARI', 'L', '0000-00-00', 'Cimahi', '0', '2', ' -', '08587634XXXX', 'ERIKA DEBORA DJAUHARI@gmail.com', '1', '0'),
(180, 0, 'Ery Yunasri', 'P', '0000-00-00', 'Depok', '0', '3', ' -', '08133537XXXX', 'Ery Yunasri@gmail.com', '1', '0'),
(181, 0, 'IING YOSHAWIRJA', 'P', '0000-00-00', 'Tasikmalaya', '0', '3', ' -', '08963676XXXX', 'IING YOSHAWIRJA@gmail.com', '1', '0'),
(182, 0, 'HENRY PASCAL TAMPUBOLON', 'L', '0000-00-00', 'Kuningan', '0', '3', ' -', '08897535XXXX', 'HENRY PASCAL TAMPUBOLON@gmail.com', '1', '0'),
(183, 0, 'JIO TIEN CAROLYNA', 'P', '0000-00-00', 'Parigi', '1', '1', ' -', '08588566XXXX', 'JIO TIEN CAROLYNA@gmail.com', '1', '0'),
(184, 0, 'Katini Dewi', 'P', '0000-00-00', 'Bandung', '1', '1', ' -', '08388484XXXX', 'Katini Dewi@gmail.com', '1', '0'),
(185, 0, 'Faisal Panggabean Law Firm', 'L', '0000-00-00', 'Singaparna', '0', '1', ' -', '08569665XXXX', 'Faisal Panggabean Law Firm@gmail.com', '1', '0'),
(186, 0, 'Aarti Lohia', 'P', '0000-00-00', 'Sumber', '1', '3', ' -', '08132485XXXX', 'Aarti Lohia@gmail.com', '1', '0'),
(187, 0, 'Lakshmi Harris Lasmana', 'L', '0000-00-00', 'Singaparna', '0', '1', ' -', '08961888XXXX', 'Lakshmi Harris Lasmana@gmail.com', '1', '0'),
(188, 0, 'Didit Abdurachman Rustandi', 'L', '0000-00-00', 'Singaparna', '1', '1', ' -', '08154515XXXX', 'Didit Abdurachman Rustandi@gmail.com', '1', '0'),
(189, 0, 'ANDHIKA ANINDYAGUNA HERMANTO', 'P', '0000-00-00', 'Kuningan', '1', '3', ' -', '08897112XXXX', 'ANDHIKA ANINDYAGUNA HERMANTO@gmail.com', '1', '0'),
(190, 0, 'JACOB ANTUNG KANG', 'L', '0000-00-00', 'Subang', '1', '3', ' -', '08192825XXXX', 'JACOB ANTUNG KANG@gmail.com', '1', '0'),
(191, 0, 'Bambang Sujagad Susanto', 'L', '0000-00-00', 'Cisaat', '0', '2', ' -', '08144731XXXX', 'Bambang Sujagad Susanto@gmail.com', '1', '0'),
(192, 0, 'Hendrik Tanojo', 'P', '0000-00-00', 'Parigi', '0', '2', ' -', '08895986XXXX', 'Hendrik Tanojo@gmail.com', '1', '0'),
(193, 0, 'Evert Jimmy LENGKONG', 'L', '0000-00-00', 'Sumedang', '1', '2', ' -', '08882406XXXX', 'Evert Jimmy LENGKONG@gmail.com', '1', '0'),
(194, 0, 'Andry Setiawan', 'L', '0000-00-00', 'Purwakarta', '0', '1', ' -', '08565560XXXX', 'Andry Setiawan@gmail.com', '1', '0'),
(195, 0, 'HASNURYANI SULAIMAN', 'L', '0000-00-00', 'Depok', '0', '1', ' -', '08313434XXXX', 'HASNURYANI SULAIMAN@gmail.com', '1', '0'),
(196, 0, 'Freddy SUTJIPTO', 'P', '0000-00-00', 'Pelabuhan Ratu', '1', '1', ' -', '08987324XXXX', 'Freddy SUTJIPTO@gmail.com', '1', '0'),
(197, 0, 'Lidwina Lindawati Kartiko', 'P', '0000-00-00', 'Majalengka', '1', '1', ' -', '08127106XXXX', 'Lidwina Lindawati Kartiko@gmail.com', '1', '0'),
(198, 0, 'Mohammad Mas Pendi Soleh', 'P', '0000-00-00', 'Depok', '0', '1', ' -', '08898580XXXX', 'Mohammad Mas Pendi Soleh@gmail.com', '1', '0'),
(199, 0, 'Harry Susanto', 'L', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08532437XXXX', 'Harry Susanto@gmail.com', '1', '0'),
(200, 0, 'Dewi Nilka Sari', 'L', '0000-00-00', 'Bandung', '0', '1', ' -', '08138768XXXX', 'Dewi Nilka Sari@gmail.com', '1', '0'),
(201, 0, 'Imelda Dharma', 'P', '0000-00-00', 'Purwakarta', '1', '1', ' -', '08792410XXXX', 'Imelda Dharma@gmail.com', '1', '0'),
(202, 0, 'Endang Sugiarti', 'L', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08563852XXXX', 'Endang Sugiarti@gmail.com', '1', '0'),
(203, 0, 'EDDY HERMAN', 'L', '0000-00-00', 'Subang', '1', '1', ' -', '08135745XXXX', 'EDDY HERMAN@gmail.com', '1', '0'),
(204, 0, 'DEBBY FEBRIANY GUNAWAN', 'L', '0000-00-00', 'Sumedang', '1', '1', ' -', '08193560XXXX', 'DEBBY FEBRIANY GUNAWAN@gmail.com', '1', '0'),
(205, 0, 'Ari Hardono Suroso', 'L', '0000-00-00', 'Depok', '0', '1', ' -', '08176233XXXX', 'Ari Hardono Suroso@gmail.com', '1', '0'),
(206, 0, 'BUDIJUWONO HANDJAJA', 'P', '0000-00-00', 'Jakarta Barat', '0', '2', ' -', '08823970XXXX', 'BUDIJUWONO HANDJAJA@gmail.com', '1', '0'),
(207, 0, 'JOHANES TANG WIDJAJA', 'L', '0000-00-00', 'Jakarta Barat', '0', '3', ' -', '08193101XXXX', 'JOHANES TANG WIDJAJA@gmail.com', '1', '0'),
(208, 0, 'Helmut Paasch', 'L', '0000-00-00', 'Jakarta Barat', '0', '2', ' -', '08884683XXXX', 'Helmut Paasch@gmail.com', '1', '0'),
(209, 0, 'EWIK HENDRI', 'L', '0000-00-00', 'Kuningan', '0', '1', ' -', '08883118XXXX', 'EWIK HENDRI@gmail.com', '1', '0'),
(210, 0, 'Fiona Adeline Sutanto', 'P', '0000-00-00', 'Cirebon', '0', '3', ' -', '08213420XXXX', 'Fiona Adeline Sutanto@gmail.com', '1', '0'),
(211, 0, 'Brett Hay', 'P', '0000-00-00', 'Soreang', '0', '2', ' -', '08988120XXXX', 'Brett Hay@gmail.com', '1', '0'),
(212, 0, 'Leman Hadi Soetemo', 'L', '0000-00-00', 'Cimahi', '1', '1', ' -', '08167838XXXX', 'Leman Hadi Soetemo@gmail.com', '1', '0'),
(213, 0, 'Amy Delia', 'P', '0000-00-00', 'Bekasi', '0', '1', ' -', '08284824XXXX', 'Amy Delia@gmail.com', '1', '0'),
(214, 0, 'Danamon Group Legal', 'P', '0000-00-00', 'Cianjur', '0', '1', ' -', '08385657XXXX', 'Danamon Group Legal@gmail.com', '1', '0'),
(215, 0, 'Denny Wijaya', 'L', '0000-00-00', 'Jakarta Utara', '0', '1', ' -', '08585094XXXX', 'Denny Wijaya@gmail.com', '1', '0'),
(216, 0, 'Belinda Natalia Tanoko', 'L', '0000-00-00', 'Subang', '1', '2', ' -', '08564626XXXX', 'Belinda Natalia Tanoko@gmail.com', '1', '0'),
(217, 0, 'LIZA WIDAYATI PRADJONGGO', 'L', '0000-00-00', 'Tasikmalaya', '0', '3', ' -', '08143467XXXX', 'LIZA WIDAYATI PRADJONGGO@gmail.com', '1', '0'),
(218, 0, 'Agus Soenong ', 'P', '0000-00-00', 'Bekasi', '1', '1', ' -', '08213077XXXX', 'Agus Soenong@gmail.com', '1', '0'),
(219, 0, 'Jendrawasih Jenni', 'L', '0000-00-00', 'Indramayu', '0', '1', ' -', '08192023XXXX', 'Jendrawasih Jenni@gmail.com', '1', '0'),
(220, 0, 'DHARMAWANDI SUTANTO', 'L', '0000-00-00', 'Jakarta Timur', '0', '1', ' -', '08571287XXXX', 'DHARMAWANDI SUTANTO@gmail.com', '1', '0'),
(221, 0, 'EMIL ABENG', 'L', '0000-00-00', 'Bekasi', '0', '1', ' -', '08173209XXXX', 'EMIL ABENG@gmail.com', '1', '0'),
(222, 0, 'ENTARIO WIDJAJA SUSANTO', 'L', '0000-00-00', 'Bekasi', '0', '3', ' -', '08596281XXXX', 'ENTARIO WIDJAJA SUSANTO@gmail.com', '1', '0'),
(223, 0, 'I MADE DJENDRA', 'L', '0000-00-00', 'Cianjur', '1', '2', ' -', '08111524XXXX', 'I MADE DJENDRA@gmail.com', '1', '0'),
(224, 0, 'Marcellyna Junita Widjaja', 'P', '0000-00-00', 'Karawang', '0', '2', ' -', '08289308XXXX', 'Marcellyna Junita Widjaja@gmail.com', '1', '0'),
(225, 0, 'Ismail Hirawan', 'L', '0000-00-00', 'Cimahi', '1', '1', ' -', '08799328XXXX', 'Ismail Hirawan@gmail.com', '1', '0'),
(226, 0, 'Harry Suwignjo', 'L', '0000-00-00', 'Bogor', '1', '1', ' -', '08184873XXXX', 'Harry Suwignjo@gmail.com', '1', '0'),
(227, 0, 'JUSUF', 'P', '0000-00-00', 'Cimahi', '1', '1', ' -', '08133911XXXX', 'JUSUF@gmail.com', '1', '0'),
(228, 0, 'Jos Parengkuan', 'L', '0000-00-00', 'Majalengka', '1', '3', ' -', '08533476XXXX', 'Jos Parengkuan@gmail.com', '1', '0'),
(229, 0, 'Ang Rosabella Martina', 'P', '0000-00-00', 'Bekasi', '1', '1', ' -', '08317283XXXX', 'Ang Rosabella Martina@gmail.com', '1', '0'),
(230, 0, 'Darjoto Setyawan and Tjan Felisa', 'P', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08162794XXXX', 'Darjoto Setyawan and Tjan Felisa@gmail.com', '1', '0'),
(231, 0, 'JOHNSON WILLIANG SUTJIPTO', 'L', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08117415XXXX', 'JOHNSON WILLIANG SUTJIPTO@gmail.com', '1', '0'),
(232, 0, 'Linda Hakim', 'L', '0000-00-00', 'Karawang', '1', '1', ' -', '08584102XXXX', 'Linda Hakim@gmail.com', '1', '0'),
(233, 0, 'Ananda Soewono', 'P', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08598855XXXX', 'Ananda Soewono@gmail.com', '1', '0'),
(234, 0, 'Maryati Benniardi Imanto', 'P', '0000-00-00', 'Jakarta Pusat', '1', '2', ' -', '08574196XXXX', 'Maryati Benniardi Imanto@gmail.com', '1', '0'),
(235, 0, 'Achmad Kalla', 'L', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08554676XXXX', 'Achmad Kalla@gmail.com', '1', '0'),
(236, 0, 'Budi Ferdinandus JAPADERMAWAN', 'L', '0000-00-00', 'Tasikmalaya', '0', '3', ' -', '08522529XXXX', 'Budi Ferdinandus JAPADERMAWAN@gmail.com', '1', '0'),
(237, 0, 'IMA ENDANG PRAYANTI GARIBALDI', 'P', '0000-00-00', 'Sumber', '0', '3', ' -', '08829295XXXX', 'IMA ENDANG PRAYANTI GARIBALDI@gmail.com', '1', '0'),
(238, 0, 'Andrew K. Labbiaka', 'P', '0000-00-00', 'Singaparna', '0', '3', ' -', '08992123XXXX', 'Andrew K. Labbiaka@gmail.com', '1', '0'),
(239, 0, 'Ida Budisusetyo', 'L', '0000-00-00', 'Sumber', '0', '1', ' -', '08111897XXXX', 'Ida Budisusetyo@gmail.com', '1', '0'),
(240, 0, 'Iwan Margana', 'L', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08135121XXXX', 'Iwan Margana@gmail.com', '1', '0'),
(241, 0, 'JOHANAS HERKIAMTO', 'L', '0000-00-00', 'Jakarta Utara', '0', '1', ' -', '08389614XXXX', 'JOHANAS HERKIAMTO@gmail.com', '1', '0'),
(242, 0, 'Gunawan Santoso Gwie', 'P', '0000-00-00', 'Depok', '1', '1', ' -', '08219965XXXX', 'Gunawan Santoso Gwie@gmail.com', '1', '0'),
(243, 0, 'JANSEN WIRAATMAJA', 'P', '0000-00-00', 'Kuningan', '1', '1', ' -', '08218179XXXX', 'JANSEN WIRAATMAJA@gmail.com', '1', '0'),
(244, 0, 'Miranti Handajani Serad', 'P', '0000-00-00', 'Karawang', '0', '1', ' -', '08119896XXXX', 'Miranti Handajani Serad@gmail.com', '1', '0'),
(245, 0, 'Diana Husein', 'L', '0000-00-00', 'Bekasi', '0', '3', ' -', '08193989XXXX', 'Diana Husein@gmail.com', '1', '0'),
(246, 0, 'Kenneth R. Wynn', 'L', '0000-00-00', 'Subang', '1', '2', ' -', '08589964XXXX', 'Kenneth R. Wynn@gmail.com', '1', '0'),
(247, 0, 'Arif Rachmat', 'P', '0000-00-00', 'Depok', '1', '2', ' -', '08572966XXXX', 'Arif Rachmat@gmail.com', '1', '0'),
(248, 0, 'Melina Jonas', 'P', '0000-00-00', 'Bekasi', '1', '3', ' -', '08895301XXXX', 'Melina Jonas@gmail.com', '1', '0'),
(249, 0, 'Bintoro Wong', 'L', '0000-00-00', 'Kuningan', '1', '3', ' -', '08113447XXXX', 'Bintoro Wong@gmail.com', '1', '0'),
(250, 0, 'JIALIPTO JIARAVANON', 'L', '0000-00-00', 'Bogor', '1', '2', ' -', '08218966XXXX', 'JIALIPTO JIARAVANON@gmail.com', '1', '0'),
(251, 0, 'Eunice Meriati Satyono', 'L', '0000-00-00', 'Cimahi', '1', '2', ' -', '08964125XXXX', 'Eunice Meriati Satyono@gmail.com', '1', '0'),
(252, 0, 'Michael Rusli', 'L', '0000-00-00', 'Jakarta Pusat', '0', '2', ' -', '08126978XXXX', 'Michael Rusli@gmail.com', '1', '0'),
(253, 0, 'Anak Agung Alit Wiradarma', 'P', '0000-00-00', 'Soreang', '0', '1', ' -', '08979249XXXX', 'Anak Agung Alit Wiradarma@gmail.com', '1', '0'),
(254, 0, 'Lily Yuliani Halim', 'P', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08132653XXXX', 'Lily Yuliani Halim@gmail.com', '1', '0'),
(255, 0, 'Edward Magnus Lang', 'L', '0000-00-00', 'Garut', '1', '1', ' -', '08973539XXXX', 'Edward Magnus Lang@gmail.com', '1', '0'),
(256, 0, 'BamBang Sumantri', 'L', '0000-00-00', 'Majalengka', '1', '1', ' -', '08986891XXXX', 'BamBang Sumantri@gmail.com', '1', '0'),
(257, 0, 'Kusnadi Budiman', 'L', '0000-00-00', 'Garut', '0', '3', ' -', '08796171XXXX', 'Kusnadi Budiman@gmail.com', '1', '0'),
(258, 0, 'James Tjahaja Riady', 'L', '0000-00-00', 'Parigi', '0', '1', ' -', '08217482XXXX', 'James Tjahaja Riady@gmail.com', '1', '0'),
(259, 0, 'ASIA INVESTMENT CAPITAL I LIMITED', 'P', '0000-00-00', 'Pelabuhan Ratu', '1', '2', ' -', '08965134XXXX', 'ASIA INVESTMENT CAPITAL I LIMITED@gmail.com', '1', '0'),
(260, 0, 'Lukas Masehi', 'L', '0000-00-00', 'Jakarta Barat', '0', '2', ' -', '08552779XXXX', 'Lukas Masehi@gmail.com', '1', '0'),
(261, 0, 'ALVIN GOZALI', 'P', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08968539XXXX', 'ALVIN GOZALI@gmail.com', '1', '0'),
(262, 0, 'Graham Daniel Fogarty', 'L', '0000-00-00', 'Parigi', '1', '3', ' -', '08777098XXXX', 'Graham Daniel Fogarty@gmail.com', '1', '0'),
(263, 0, 'JULIE MULYA JIAUW', 'L', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08883299XXXX', 'JULIE MULYA JIAUW@gmail.com', '1', '0'),
(264, 0, 'Erik Setiawan', 'P', '0000-00-00', 'Sumber', '0', '3', ' -', '08522455XXXX', 'Erik Setiawan@gmail.com', '1', '0'),
(265, 0, 'Eddie Sudijono', 'P', '0000-00-00', 'Cisaat', '1', '1', ' -', '08824283XXXX', 'Eddie Sudijono@gmail.com', '1', '0'),
(266, 0, 'Gurker Limited', 'L', '0000-00-00', 'Sumedang', '1', '3', ' -', '08177456XXXX', 'Gurker Limited@gmail.com', '1', '0'),
(267, 0, 'Guat Tjing Thio', 'L', '0000-00-00', 'Subang', '0', '2', ' -', '08599342XXXX', 'Guat Tjing Thio@gmail.com', '1', '0'),
(268, 0, 'Martina M. Sukwikaimono', 'P', '0000-00-00', 'Bandung', '0', '1', ' -', '08565505XXXX', 'Martina M. Sukwikaimono@gmail.com', '1', '0'),
(269, 0, 'Jacobus Busono', 'L', '0000-00-00', 'Jakarta Pusat', '0', '1', ' -', '08555274XXXX', 'Jacobus Busono@gmail.com', '1', '0'),
(270, 0, 'Budiman Effendi', 'L', '0000-00-00', 'Garut', '1', '1', ' -', '08528686XXXX', 'Budiman Effendi@gmail.com', '1', '0'),
(271, 0, 'Mulyadi Anggono', 'L', '0000-00-00', 'Singaparna', '1', '1', ' -', '08219400XXXX', 'Mulyadi Anggono@gmail.com', '1', '0'),
(272, 0, 'David William Magson', 'P', '0000-00-00', 'Singaparna', '0', '1', ' -', '08821477XXXX', 'David William Magson@gmail.com', '1', '0'),
(273, 0, 'M. A. Ismail Ning', 'L', '0000-00-00', 'Bekasi', '1', '1', ' -', '08156828XXXX', 'M. A. Ismail Ning@gmail.com', '1', '0'),
(274, 0, 'Ko Rudy Oetomo', 'L', '0000-00-00', 'Sumedang', '1', '1', ' -', '08188138XXXX', 'Ko Rudy Oetomo@gmail.com', '1', '0'),
(275, 0, 'Henry Susilowidjojo Njoo', 'P', '0000-00-00', 'Bogor', '0', '1', ' -', '08591025XXXX', 'Henry Susilowidjojo Njoo@gmail.com', '1', '0'),
(276, 0, 'JAYANTI SARI', 'L', '0000-00-00', 'Garut', '0', '2', ' -', '08816068XXXX', 'JAYANTI SARI@gmail.com', '1', '0'),
(277, 0, 'Freddy H. Suryadiharja', 'P', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08386204XXXX', 'Freddy H. Suryadiharja@gmail.com', '1', '0'),
(278, 0, 'MOHAMMAD LENDI BASARAH', 'L', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08289462XXXX', 'MOHAMMAD LENDI BASARAH@gmail.com', '1', '0'),
(279, 0, 'Arta Satria Soebandi', 'L', '0000-00-00', 'Depok', '0', '2', ' -', '08823096XXXX', 'Arta Satria Soebandi@gmail.com', '1', '0'),
(280, 0, 'Jamin Tjandra', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '2', ' -', '08974197XXXX', 'Jamin Tjandra@gmail.com', '1', '0'),
(281, 0, 'Harry Haslett', 'P', '0000-00-00', 'Garut', '0', '3', ' -', '08991109XXXX', 'Harry Haslett@gmail.com', '1', '0'),
(282, 0, 'Indahwaty Hartono', 'P', '0000-00-00', 'Cimahi', '0', '2', ' -', '08591911XXXX', 'Indahwaty Hartono@gmail.com', '1', '0'),
(283, 0, 'DIANA WIDJAJA', 'P', '0000-00-00', 'Cirebon', '0', '3', ' -', '08313804XXXX', 'DIANA WIDJAJA@gmail.com', '1', '0'),
(284, 0, 'EDWARD STEPHANUS DJAUHARI', 'L', '0000-00-00', 'Singaparna', '1', '2', ' -', '08155425XXXX', 'EDWARD STEPHANUS DJAUHARI@gmail.com', '1', '0'),
(285, 0, 'AGUSTON MAKMUR', 'P', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08899160XXXX', 'AGUSTON MAKMUR@gmail.com', '1', '0'),
(287, 0, 'Marilyn Caracas', 'P', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08779607XXXX', 'Marilyn Caracas@gmail.com', '1', '0'),
(288, 0, 'Faiz Shahab', 'P', '0000-00-00', 'Karawang', '0', '1', ' -', '08888314XXXX', 'Faiz Shahab@gmail.com', '1', '0'),
(289, 0, 'Crescento Hermawan', 'L', '0000-00-00', 'Subang', '0', '2', ' -', '08213302XXXX', 'Crescento Hermawan@gmail.com', '1', '0'),
(290, 0, 'Erwin Tunggul Setiawan', 'P', '0000-00-00', 'Sumedang', '0', '3', ' -', '08199185XXXX', 'Erwin Tunggul Setiawan@gmail.com', '1', '0'),
(291, 0, 'Denny Rahardja', 'P', '0000-00-00', 'Karawang', '0', '1', ' -', '08123541XXXX', 'Denny Rahardja@gmail.com', '1', '0'),
(292, 0, 'Bong Tjen Khun and Tjong Njuk Fon', 'P', '0000-00-00', 'Jakarta Pusat', '0', '3', ' -', '08531508XXXX', 'Bong Tjen Khun and Tjong Njuk Fon@gmail.com', '1', '0'),
(293, 0, 'Hendra Wirajang', 'L', '0000-00-00', 'Jakarta Pusat', '1', '3', ' -', '08382346XXXX', 'Hendra Wirajang@gmail.com', '1', '0'),
(294, 0, 'Gunawan Jusuf', 'L', '0000-00-00', 'Kuningan', '1', '1', ' -', '08193051XXXX', 'Gunawan Jusuf@gmail.com', '1', '0'),
(295, 0, 'Djohan Is Hardjo', 'L', '0000-00-00', 'Bekasi', '1', '3', ' -', '08319780XXXX', 'Djohan Is Hardjo@gmail.com', '1', '0'),
(296, 0, 'Aviariananto Sukotjo', 'L', '0000-00-00', 'Ciamis', '0', '3', ' -', '08816891XXXX', 'Aviariananto Sukotjo@gmail.com', '1', '0'),
(297, 0, 'EDDY SETIAWAN', 'P', '0000-00-00', 'Majalengka', '0', '3', ' -', '08991733XXXX', 'EDDY SETIAWAN@gmail.com', '1', '0'),
(298, 0, 'Dominique Gallmann', 'P', '0000-00-00', 'Garut', '0', '3', ' -', '08132272XXXX', 'Dominique Gallmann@gmail.com', '1', '0'),
(299, 0, 'Margaretha Natalia Widjaja', 'L', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08797426XXXX', 'Margaretha Natalia Widjaja@gmail.com', '1', '0'),
(300, 0, 'DEDY ROCHIMAT', 'P', '0000-00-00', 'Purwakarta', '1', '1', ' -', '08143362XXXX', 'DEDY ROCHIMAT@gmail.com', '1', '0'),
(301, 0, 'Dody Lukito Hendrokusumo', 'L', '0000-00-00', 'Ciamis', '0', '2', ' -', '08589010XXXX', 'Dody Lukito Hendrokusumo@gmail.com', '1', '0'),
(302, 0, 'Doddy Agustiawan Tjahjadi', 'L', '0000-00-00', 'Depok', '1', '1', ' -', '08531746XXXX', 'Doddy Agustiawan Tjahjadi@gmail.com', '1', '0'),
(303, 0, 'Ganesh Chander Grover', 'P', '0000-00-00', 'Indramayu', '1', '1', ' -', '08532575XXXX', 'Ganesh Chander Grover@gmail.com', '1', '0'),
(304, 0, 'Andreas Tjahjadi', 'L', '0000-00-00', 'Purwakarta', '0', '1', ' -', '08216654XXXX', 'Andreas Tjahjadi@gmail.com', '1', '0'),
(305, 0, 'Ferry Tenacious', 'P', '0000-00-00', 'Bekasi', '1', '1', ' -', '08386775XXXX', 'Ferry Tenacious@gmail.com', '1', '0'),
(306, 0, 'DINO KOESHANDERY', 'P', '0000-00-00', 'Kuningan', '1', '1', ' -', '08529863XXXX', 'DINO KOESHANDERY@gmail.com', '1', '0'),
(307, 0, 'Mark Patrick Hanusz', 'P', '0000-00-00', 'Tasikmalaya', '0', '3', ' -', '08126172XXXX', 'Mark Patrick Hanusz@gmail.com', '1', '0'),
(308, 0, 'Esther Riawaty Hari', 'P', '0000-00-00', 'Karawang', '0', '2', ' -', '08574932XXXX', 'Esther Riawaty Hari@gmail.com', '1', '0'),
(309, 0, 'Agung Tobing', 'L', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08795357XXXX', 'Agung Tobing@gmail.com', '1', '0'),
(310, 0, 'Christiana Niowni', 'P', '0000-00-00', 'Tasikmalaya', '1', '2', ' -', '08554379XXXX', 'Christiana Niowni@gmail.com', '1', '0'),
(311, 0, 'Hermani Soeprapto', 'L', '0000-00-00', 'Soreang', '0', '1', ' -', '08127438XXXX', 'Hermani Soeprapto@gmail.com', '1', '0'),
(312, 0, 'Djoko N. Labbaika', 'P', '0000-00-00', 'Ciamis', '0', '2', ' -', '08554754XXXX', 'Djoko N. Labbaika@gmail.com', '1', '0'),
(313, 0, 'FIFI LETY INDRA & PARTNERS', 'P', '0000-00-00', 'Jakarta Timur', '1', '3', ' -', '08283727XXXX', 'FIFI LETY INDRA & PARTNERS@gmail.com', '1', '0'),
(314, 0, 'Agus Leman Gunawan', 'P', '0000-00-00', 'Jakarta Timur', '0', '1', ' -', '08577801XXXX', 'Agus Leman Gunawan@gmail.com', '1', '0'),
(315, 0, 'Budiono', 'P', '0000-00-00', 'Singaparna', '1', '1', ' -', '08178071XXXX', 'Budiono@gmail.com', '1', '0'),
(316, 0, 'Halim Podiono', 'P', '0000-00-00', 'Cibinong', '0', '3', ' -', '08163081XXXX', 'Halim Podiono@gmail.com', '1', '0'),
(317, 0, 'James C. Haebig', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08589652XXXX', 'James C. Haebig@gmail.com', '1', '0'),
(318, 0, 'Benny Setiawan', 'P', '0000-00-00', 'Indramayu', '0', '1', ' -', '08822528XXXX', 'Benny Setiawan@gmail.com', '1', '0'),
(319, 0, 'Dectra (Samoa) Limited', 'L', '0000-00-00', 'Cibinong', '0', '1', ' -', '08533440XXXX', 'Dectra (Samoa) Limited@gmail.com', '1', '0'),
(320, 0, 'Jopie Widjaja', 'P', '0000-00-00', 'Cibinong', '0', '1', ' -', '08387833XXXX', 'Jopie Widjaja@gmail.com', '1', '0'),
(321, 0, 'JOYNER OVERSEAS INC.', 'P', '0000-00-00', ' Jakarta Selatan', '1', '2', ' -', '08814346XXXX', 'JOYNER OVERSEAS INC.@gmail.com', '1', '0'),
(322, 0, 'KEN LEKSONO SEDIANTO', 'L', '0000-00-00', 'Karawang', '0', '3', ' -', '08284677XXXX', 'KEN LEKSONO SEDIANTO@gmail.com', '1', '0'),
(323, 0, 'LEONARD PANDY PHUA', 'P', '0000-00-00', 'Cimahi', '0', '3', ' -', '08777686XXXX', 'LEONARD PANDY PHUA@gmail.com', '1', '0'),
(324, 0, 'Fauzi Jurnalis', 'L', '0000-00-00', 'Purwakarta', '0', '2', ' -', '08539854XXXX', 'Fauzi Jurnalis@gmail.com', '1', '0'),
(325, 0, 'Kang Rita Sadeli', 'P', '0000-00-00', 'Singaparna', '0', '3', ' -', '08196221XXXX', 'Kang Rita Sadeli@gmail.com', '1', '0'),
(326, 0, 'Judi Gunawan', 'P', '0000-00-00', 'Depok', '1', '1', ' -', '08284165XXXX', 'Judi Gunawan@gmail.com', '1', '0'),
(327, 0, 'JENNY WIDJAJA', 'L', '0000-00-00', 'Soreang', '1', '3', ' -', '08385249XXXX', 'JENNY WIDJAJA@gmail.com', '1', '0'),
(328, 0, 'Muhammad Ikbal', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '2', ' -', '08792163XXXX', 'Muhammad Ikbal@gmail.com', '1', '0'),
(329, 0, 'Jeannie Widjaja', 'P', '0000-00-00', 'Jakarta Utara', '1', '2', ' -', '08288539XXXX', 'Jeannie Widjaja@gmail.com', '1', '0'),
(330, 0, 'Horas Chu Naga', 'L', '0000-00-00', 'Subang', '1', '3', ' -', '08284898XXXX', 'Horas Chu Naga@gmail.com', '1', '0'),
(331, 0, 'Joseph Dharmabrata', 'L', '0000-00-00', 'Soreang', '1', '3', ' -', '08175018XXXX', 'Joseph Dharmabrata@gmail.com', '1', '0'),
(332, 0, 'Daniel Kurniawan Lukman', 'L', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08531488XXXX', 'Daniel Kurniawan Lukman@gmail.com', '1', '0'),
(333, 0, 'Hudi Janti', 'L', '0000-00-00', 'Sumedang', '0', '1', ' -', '08779250XXXX', 'Hudi Janti@gmail.com', '1', '0'),
(334, 0, 'Johannes Goenawan', 'L', '0000-00-00', 'Depok', '0', '1', ' -', '08882804XXXX', 'Johannes Goenawan@gmail.com', '1', '0'),
(335, 0, 'Hendra Basoeki', 'P', '0000-00-00', 'Singaparna', '1', '1', ' -', '08186121XXXX', 'Hendra Basoeki@gmail.com', '1', '0'),
(336, 0, 'Arief Prijatna', 'L', '0000-00-00', 'Karawang', '0', '1', ' -', '08811768XXXX', 'Arief Prijatna@gmail.com', '1', '0'),
(337, 0, 'Linda Tanuwiradjaja', 'P', '0000-00-00', 'Cimahi', '0', '2', ' -', '08188782XXXX', 'Linda Tanuwiradjaja@gmail.com', '1', '0'),
(338, 0, 'Iskandar Tanuwidjaja', 'P', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08192267XXXX', 'Iskandar Tanuwidjaja@gmail.com', '1', '0'),
(339, 0, 'HOESEN GUNAWAN', 'P', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08985415XXXX', 'HOESEN GUNAWAN@gmail.com', '1', '0'),
(340, 0, 'AGUS WIDAGDO', 'L', '0000-00-00', 'Depok', '1', '1', ' -', '08986546XXXX', 'AGUS WIDAGDO@gmail.com', '1', '0'),
(341, 0, 'Basuiki Puspoputro', 'L', '0000-00-00', 'Ciamis', '0', '3', ' -', '08129862XXXX', 'Basuiki Puspoputro@gmail.com', '1', '0'),
(342, 0, 'Jan Adam Tangkilisan', 'L', '0000-00-00', 'Jakarta Utara', '0', '1', ' -', '08597632XXXX', 'Jan Adam Tangkilisan@gmail.com', '1', '0'),
(343, 0, 'Diniwati', 'P', '0000-00-00', 'Majalengka', '1', '3', ' -', '08964861XXXX', 'Diniwati@gmail.com', '1', '0'),
(344, 0, 'Herman Nagaria', 'P', '0000-00-00', 'Parigi', '0', '1', ' -', '08183288XXXX', 'Herman Nagaria@gmail.com', '1', '0'),
(345, 0, 'Arwan Ahimsa', 'L', '0000-00-00', 'Parigi', '0', '1', ' -', '08983777XXXX', 'Arwan Ahimsa@gmail.com', '1', '0'),
(346, 0, 'Andrie Setiawan Yapsir', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08129841XXXX', 'Andrie Setiawan Yapsir@gmail.com', '1', '0'),
(347, 0, 'AMIN HALIM', 'P', '0000-00-00', 'Indramayu', '1', '1', ' -', '08822735XXXX', 'AMIN HALIM@gmail.com', '1', '0'),
(348, 0, 'Elke Camillia Kurniawan', 'P', '0000-00-00', 'Garut', '1', '1', ' -', '08582321XXXX', 'Elke Camillia Kurniawan@gmail.com', '1', '0'),
(349, 0, 'Endah Sulistyorini Himawan', 'L', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08575781XXXX', 'Endah Sulistyorini Himawan@gmail.com', '1', '0'),
(350, 0, 'Muhammad Agus', 'P', '0000-00-00', 'Jakarta Utara', '1', '1', ' -', '08593450XXXX', 'Muhammad Agus@gmail.com', '1', '0'),
(351, 0, 'Emi Sukiati Lasimon', 'L', '0000-00-00', 'Ciamis', '1', '2', ' -', '08971158XXXX', 'Emi Sukiati Lasimon@gmail.com', '1', '0'),
(352, 0, 'HERU HIDAYAT', 'L', '0000-00-00', 'Ciamis', '1', '2', ' -', '08115553XXXX', 'HERU HIDAYAT@gmail.com', '1', '0'),
(353, 0, 'Ratna Kurniati Bahana', 'L', '0000-00-00', 'Jakarta Utara', '0', '3', ' -', '08522231XXXX', 'Ratna Kurniati Bahana@gmail.com', '1', '0'),
(354, 0, 'Elly Soepono', 'P', '0000-00-00', 'Sumber', '0', '3', ' -', '08563637XXXX', 'Elly Soepono@gmail.com', '1', '0'),
(355, 0, 'Gan Chooi Yang', 'P', '0000-00-00', 'Bekasi', '0', '2', ' -', '08133611XXXX', 'Gan Chooi Yang@gmail.com', '1', '0'),
(356, 0, 'Erric B. Wibowo', 'L', '0000-00-00', 'Ciamis', '1', '3', ' -', '08596104XXXX', 'Erric B. Wibowo@gmail.com', '1', '0'),
(357, 0, 'Harianto Solichin', 'L', '0000-00-00', 'Indramayu', '1', '1', ' -', '08978515XXXX', 'Harianto Solichin@gmail.com', '1', '0'),
(358, 0, 'Kardaya Warnika', 'L', '0000-00-00', 'Bandung', '0', '1', ' -', '08384200XXXX', 'Kardaya Warnika@gmail.com', '1', '0'),
(359, 0, 'HENNY VICTORIA', 'L', '0000-00-00', 'Kuningan', '0', '1', ' -', '08181283XXXX', 'HENNY VICTORIA@gmail.com', '1', '0'),
(360, 0, 'Adnan Kelana Haryanto ', 'L', '0000-00-00', 'Majalengka', '0', '1', ' -', '08824500XXXX', 'Adnan Kelana Haryanto@gmail.com', '1', '0'),
(361, 0, 'Christopher Carson', 'P', '0000-00-00', 'Indramayu', '1', '1', ' -', '08789793XXXX', 'Christopher Carson@gmail.com', '1', '0'),
(362, 0, 'Bambang Irawan Massie', 'P', '0000-00-00', 'Soreang', '0', '1', ' -', '08536837XXXX', 'Bambang Irawan Massie@gmail.com', '1', '0'),
(363, 0, 'FIEFIE TJAHJADI', 'P', '0000-00-00', 'Jakarta Utara', '0', '1', ' -', '08533986XXXX', 'FIEFIE TJAHJADI@gmail.com', '1', '0'),
(364, 0, 'Eko Purnomo', 'L', '0000-00-00', 'Jakarta Timur', '1', '3', ' -', '08996119XXXX', 'Eko Purnomo@gmail.com', '1', '0'),
(365, 0, 'Dicky Tjokrosaputro', 'P', '0000-00-00', 'Subang', '1', '2', ' -', '08211036XXXX', 'Dicky Tjokrosaputro@gmail.com', '1', '0'),
(366, 0, 'Budi Enijati Maria Soedjana', 'L', '0000-00-00', 'Garut', '1', '3', ' -', '08816201XXXX', 'Budi Enijati Maria Soedjana@gmail.com', '1', '0'),
(367, 0, 'DANIEL MARATHON', 'L', '0000-00-00', 'Cimahi', '0', '3', ' -', '08285785XXXX', 'DANIEL MARATHON@gmail.com', '1', '0'),
(368, 0, 'BUDI DHARMO NOTOWIDJOJO', 'L', '0000-00-00', 'Cibinong', '1', '2', ' -', '08589208XXXX', 'BUDI DHARMO NOTOWIDJOJO@gmail.com', '1', '0'),
(369, 0, 'Feilie Sulestijani', 'L', '0000-00-00', 'Soreang', '1', '2', ' -', '08593640XXXX', 'Feilie Sulestijani@gmail.com', '1', '0'),
(370, 0, 'Anak Agung Gde Agung', 'L', '0000-00-00', 'Ciamis', '1', '2', ' -', '08529082XXXX', 'Anak Agung Gde Agung@gmail.com', '1', '0'),
(371, 0, 'Grant McArthur', 'L', '0000-00-00', 'Bandung', '1', '1', ' -', '08142234XXXX', 'Grant McArthur@gmail.com', '1', '0'),
(372, 0, 'Josep Lay', 'P', '0000-00-00', 'Jakarta Timur', '0', '1', ' -', '08217345XXXX', 'Josep Lay@gmail.com', '1', '0'),
(373, 0, 'Arianto Prasetio', 'L', '0000-00-00', 'Bekasi', '1', '1', ' -', '08883043XXXX', 'Arianto Prasetio@gmail.com', '1', '0'),
(374, 0, 'Masayu Pangestu', 'P', '0000-00-00', 'Sumedang', '0', '1', ' -', '08827524XXXX', 'Masayu Pangestu@gmail.com', '1', '0'),
(375, 0, 'Lay Sioe Ho', 'L', '0000-00-00', 'Jakarta Pusat', '0', '1', ' -', '08586865XXXX', 'Lay Sioe Ho@gmail.com', '1', '0');
INSERT INTO `karyawan` (`karyawan_id`, `pos_id`, `nama_karyawan`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `status_menikah`, `agama`, `alamat`, `no_hp`, `email`, `status_karyawan`, `hapus`) VALUES
(376, 0, 'Ichsan Rizal', 'L', '0000-00-00', 'Bogor', '1', '3', ' -', '08156906XXXX', 'Ichsan Rizal@gmail.com', '1', '0'),
(377, 0, 'Djie Tjian An', 'L', '0000-00-00', 'Sumber', '1', '2', ' -', '08384192XXXX', 'Djie Tjian An@gmail.com', '1', '0'),
(378, 0, 'Farah Liza', 'P', '0000-00-00', 'Ngamprah', '0', '2', ' -', '08827870XXXX', 'Farah Liza@gmail.com', '1', '0'),
(379, 0, 'Jajat Priatna Purwita', 'P', '0000-00-00', 'Pelabuhan Ratu', '1', '1', ' -', '08142648XXXX', 'Jajat Priatna Purwita@gmail.com', '1', '0'),
(380, 0, 'Lilys Tjiawi', 'L', '0000-00-00', 'Depok', '1', '3', ' -', '08793012XXXX', 'Lilys Tjiawi@gmail.com', '1', '0'),
(381, 0, 'Lukman Herry Latip', 'P', '0000-00-00', 'Bekasi', '0', '3', ' -', '08173643XXXX', 'Lukman Herry Latip@gmail.com', '1', '0'),
(382, 0, 'Dedie Suherlan', 'P', '0000-00-00', 'Cisaat', '0', '2', ' -', '08153698XXXX', 'Dedie Suherlan@gmail.com', '1', '0'),
(383, 0, 'Betty Ang', 'L', '0000-00-00', 'Bekasi', '0', '3', ' -', '08816469XXXX', 'Betty Ang@gmail.com', '1', '0'),
(384, 0, 'Justin Breheny', 'P', '0000-00-00', 'Purwakarta', '1', '2', ' -', '08123977XXXX', 'Justin Breheny@gmail.com', '1', '0'),
(385, 0, 'Maria Karmila', 'P', '0000-00-00', 'Ciamis', '1', '1', ' -', '08126945XXXX', 'Maria Karmila@gmail.com', '1', '0'),
(386, 0, 'Daniel Wewengkang Korompis', 'L', '0000-00-00', 'Indramayu', '0', '1', ' -', '08796124XXXX', 'Daniel Wewengkang Korompis@gmail.com', '1', '0'),
(387, 0, 'Erwin Indra Hamid', 'L', '0000-00-00', 'Parigi', '0', '1', ' -', '08554126XXXX', 'Erwin Indra Hamid@gmail.com', '1', '0'),
(388, 0, 'Hunarti Gosal', 'P', '0000-00-00', 'Bekasi', '1', '1', ' -', '08811004XXXX', 'Hunarti Gosal@gmail.com', '1', '0'),
(389, 0, 'Jovanka Mardova', 'P', '0000-00-00', 'Parigi', '0', '2', ' -', '08826228XXXX', 'Jovanka Mardova@gmail.com', '1', '0'),
(390, 0, 'Djatmiko Tedjo', 'P', '0000-00-00', 'Ciamis', '1', '3', ' -', '08989292XXXX', 'Djatmiko Tedjo@gmail.com', '1', '0'),
(391, 0, 'Mochammad Anwar', 'P', '0000-00-00', 'Subang', '0', '1', ' -', '08883782XXXX', 'Mochammad Anwar@gmail.com', '1', '0'),
(392, 0, 'EVAN SAMUEL DJAUHARI', 'P', '0000-00-00', 'Cianjur', '1', '2', ' -', '08145363XXXX', 'EVAN SAMUEL DJAUHARI@gmail.com', '1', '0'),
(393, 0, 'HENDRA NOVA SYAMSU', 'L', '0000-00-00', 'Parigi', '1', '3', ' -', '08558115XXXX', 'HENDRA NOVA SYAMSU@gmail.com', '1', '0'),
(394, 0, 'Jeffrey Hartono', 'L', '0000-00-00', 'Depok', '0', '3', ' -', '08177734XXXX', 'Jeffrey Hartono@gmail.com', '1', '0'),
(395, 0, 'Johny Surjana', 'P', '0000-00-00', 'Sumedang', '1', '2', ' -', '08526624XXXX', 'Johny Surjana@gmail.com', '1', '0'),
(396, 0, 'Agus Suherman Wirjan', 'P', '0000-00-00', 'Bogor', '0', '2', ' -', '08212920XXXX', 'Agus Suherman Wirjan@gmail.com', '1', '0'),
(397, 0, 'Law Office CCN & Associates', 'L', '0000-00-00', 'Bekasi', '0', '3', ' -', '08558336XXXX', 'Law Office CCN & Associates@gmail.com', '1', '0'),
(398, 0, 'Kusnan Kirana', 'P', '0000-00-00', 'Majalengka', '1', '3', ' -', '08991601XXXX', 'Kusnan Kirana@gmail.com', '1', '0'),
(399, 0, 'Capital Reserves Ltd', 'L', '0000-00-00', 'Ciamis', '1', '2', ' -', '08384148XXXX', 'Capital Reserves Ltd@gmail.com', '1', '0'),
(400, 0, 'Hendra Liem', 'P', '0000-00-00', 'Bogor', '1', '1', ' -', '08218384XXXX', 'Hendra Liem@gmail.com', '1', '0'),
(401, 0, 'Linda Marlina Isatyawan', 'P', '0000-00-00', 'Cibinong', '1', '1', ' -', '08177562XXXX', 'Linda Marlina Isatyawan@gmail.com', '1', '0'),
(402, 0, 'Arman Sutedja', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08885492XXXX', 'Arman Sutedja@gmail.com', '1', '0'),
(403, 0, 'Junita Ciputra', 'L', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08778300XXXX', 'Junita Ciputra@gmail.com', '1', '0'),
(404, 0, 'Dicky Herman', 'P', '0000-00-00', 'Pelabuhan Ratu', '1', '3', ' -', '08972763XXXX', 'Dicky Herman@gmail.com', '1', '0'),
(405, 0, 'Firman Matondang Silalahi', 'L', '0000-00-00', 'Singaparna', '0', '3', ' -', '08539931XXXX', 'Firman Matondang Silalahi@gmail.com', '1', '0'),
(406, 0, 'Lily Marjani Pribadi', 'P', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08894353XXXX', 'Lily Marjani Pribadi@gmail.com', '1', '0'),
(407, 0, 'Djoko Soesanto Gusti', 'P', '0000-00-00', 'Sumber', '0', '3', ' -', '08174312XXXX', 'Djoko Soesanto Gusti@gmail.com', '1', '0'),
(408, 0, 'AHMADES MIQAILLA', 'P', '0000-00-00', 'Garut', '0', '2', ' -', '08168225XXXX', 'AHMADES MIQAILLA@gmail.com', '1', '0'),
(409, 0, 'Limanto', 'L', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08537159XXXX', 'Limanto@gmail.com', '1', '0'),
(410, 0, 'Henny Purnamawati', 'P', '0000-00-00', 'Ngamprah', '1', '3', ' -', '08894103XXXX', 'Henny Purnamawati@gmail.com', '1', '0'),
(411, 0, 'David Myles Falkner', 'P', '0000-00-00', 'Cibinong', '0', '1', ' -', '08285299XXXX', 'David Myles Falkner@gmail.com', '1', '0'),
(412, 0, 'Banbang Panutomo', 'L', '0000-00-00', 'Sumber', '1', '1', ' -', '08132326XXXX', 'Banbang Panutomo@gmail.com', '1', '0'),
(413, 0, 'ADHI UTOMO JUSMAN', 'L', '0000-00-00', 'Sumedang', '0', '1', ' -', '08388684XXXX', 'ADHI UTOMO JUSMAN@gmail.com', '1', '0'),
(414, 0, 'Citrawinda Priapantja', 'P', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08283145XXXX', 'Citrawinda Priapantja@gmail.com', '1', '0'),
(415, 0, 'Fahyudi Djaniatmadja', 'P', '0000-00-00', 'Sumedang', '0', '3', ' -', '08586279XXXX', 'Fahyudi Djaniatmadja@gmail.com', '1', '0'),
(416, 0, 'Foronkid Gunawan', 'P', '0000-00-00', 'Parigi', '1', '2', ' -', '08524990XXXX', 'Foronkid Gunawan@gmail.com', '1', '0'),
(417, 0, 'AURELIA SUPARDI', 'L', '0000-00-00', 'Parigi', '1', '2', ' -', '08137564XXXX', 'AURELIA SUPARDI@gmail.com', '1', '0'),
(418, 0, 'Gaitini Tjokrosaputro', 'L', '0000-00-00', 'Jakarta Pusat', '0', '3', ' -', '08821422XXXX', 'Gaitini Tjokrosaputro@gmail.com', '1', '0'),
(419, 0, 'LYDIA ANGKAWIDJAJA', 'P', '0000-00-00', 'Majalengka', '0', '1', ' -', '08188732XXXX', 'LYDIA ANGKAWIDJAJA@gmail.com', '1', '0'),
(421, 0, 'Eddy Sindoro', 'L', '0000-00-00', 'Indramayu', '0', '1', ' -', '08788047XXXX', 'Eddy Sindoro@gmail.com', '1', '0'),
(422, 0, 'Indrawati Sampoerna', 'L', '0000-00-00', 'Garut', '1', '1', ' -', '08138169XXXX', 'Indrawati Sampoerna@gmail.com', '1', '0'),
(423, 0, 'Herman Karmana', 'L', '0000-00-00', 'Cimahi', '0', '1', ' -', '08815543XXXX', 'Herman Karmana@gmail.com', '1', '0'),
(424, 0, 'Bernadette Ruth Irawati', 'L', '0000-00-00', 'Majalengka', '1', '2', ' -', '08577836XXXX', 'Bernadette Ruth Irawati@gmail.com', '1', '0'),
(425, 0, 'Jimmy Ziepo Setiawan', 'L', '0000-00-00', 'Bekasi', '1', '1', ' -', '08154276XXXX', 'Jimmy Ziepo Setiawan@gmail.com', '1', '0'),
(426, 0, 'Apex Oil & Gas Ltd.', 'P', '0000-00-00', 'Sumedang', '1', '3', ' -', '08596734XXXX', 'Apex Oil & Gas Ltd.@gmail.com', '1', '0'),
(427, 0, 'Dolly Periagutan Pulungan', 'L', '0000-00-00', 'Cibinong', '1', '3', ' -', '08532532XXXX', 'Dolly Periagutan Pulungan@gmail.com', '1', '0'),
(428, 0, 'AMAN', 'P', '0000-00-00', 'Depok', '0', '3', ' -', '08529601XXXX', 'AMAN@gmail.com', '1', '0'),
(429, 0, 'Fransiscus Antonius S.A', 'P', '0000-00-00', 'Bekasi', '1', '3', ' -', '08793582XXXX', 'Fransiscus Antonius S.A@gmail.com', '1', '0'),
(430, 0, 'Budiono Tanbun Boen', 'P', '0000-00-00', 'Ngamprah', '1', '2', ' -', '08883551XXXX', 'Budiono Tanbun Boen@gmail.com', '1', '0'),
(431, 0, 'Kusuma Hadi Soetemo', 'P', '0000-00-00', 'Cisaat', '0', '3', ' -', '08122498XXXX', 'Kusuma Hadi Soetemo@gmail.com', '1', '0'),
(432, 0, 'Kaizer Management Ltd', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08583446XXXX', 'Kaizer Management Ltd@gmail.com', '1', '0'),
(433, 0, 'LYNDA TJANDRA BRASALI', 'L', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08536767XXXX', 'LYNDA TJANDRA BRASALI@gmail.com', '1', '0'),
(434, 0, 'EDDI SUGIARDI', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08826095XXXX', 'EDDI SUGIARDI@gmail.com', '1', '0'),
(435, 0, 'Antonius Mulya Saputri', 'L', '0000-00-00', 'Cisaat', '1', '1', ' -', '08976893XXXX', 'Antonius Mulya Saputri@gmail.com', '1', '0'),
(436, 0, 'I Gusti Ngurah Adi Suputra', 'L', '0000-00-00', 'Depok', '0', '3', ' -', '08181679XXXX', 'I Gusti Ngurah Adi Suputra@gmail.com', '1', '0'),
(437, 0, 'Hetty Indrakasih Soetikno', 'P', '0000-00-00', 'Bandung', '1', '2', ' -', '08154507XXXX', 'Hetty Indrakasih Soetikno@gmail.com', '1', '0'),
(438, 0, 'Lim Arie Sasmita', 'P', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08992910XXXX', 'Lim Arie Sasmita@gmail.com', '1', '0'),
(439, 0, 'Handi Gunawan', 'P', '0000-00-00', 'Sumber', '1', '2', ' -', '08142879XXXX', 'Handi Gunawan@gmail.com', '1', '0'),
(440, 0, 'Diono Nurjadin', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08796554XXXX', 'Diono Nurjadin@gmail.com', '1', '0'),
(441, 0, 'Beng Phiau', 'L', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08219901XXXX', 'Beng Phiau@gmail.com', '1', '0'),
(442, 0, 'Katleen Yangrikho Gui', 'P', '0000-00-00', ' Jakarta Selatan', '1', '2', ' -', '08989311XXXX', 'Katleen Yangrikho Gui@gmail.com', '1', '0'),
(443, 0, 'Hasan Dali', 'P', '0000-00-00', 'Ngamprah', '1', '2', ' -', '08771402XXXX', 'Hasan Dali@gmail.com', '1', '0'),
(444, 0, 'Iwan Ruwiyadi', 'P', '0000-00-00', 'Sumber', '0', '1', ' -', '08991450XXXX', 'Iwan Ruwiyadi@gmail.com', '1', '0'),
(445, 0, 'Arief Wiyoso Aswismarmo', 'P', '0000-00-00', 'Jakarta Utara', '1', '1', ' -', '08584258XXXX', 'Arief Wiyoso Aswismarmo@gmail.com', '1', '0'),
(446, 0, 'Chris Fong', 'P', '0000-00-00', 'Subang', '0', '1', ' -', '08216286XXXX', 'Chris Fong@gmail.com', '1', '0'),
(447, 0, 'Arniaty Achmad', 'L', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08895022XXXX', 'Arniaty Achmad@gmail.com', '1', '0'),
(448, 0, 'Aditya Koeswojo', 'L', '0000-00-00', 'Garut', '0', '2', ' -', '08165362XXXX', 'Aditya Koeswojo@gmail.com', '1', '0'),
(449, 0, 'Hesye Silya Mamesah', 'L', '0000-00-00', 'Karawang', '1', '1', ' -', '08138474XXXX', 'Hesye Silya Mamesah@gmail.com', '1', '0'),
(450, 0, 'Abdul Rifai Natanegara', 'P', '0000-00-00', 'Cianjur', '0', '2', ' -', '08153738XXXX', 'Abdul Rifai Natanegara@gmail.com', '1', '0'),
(451, 0, 'Appointcorp Limited', 'L', '0000-00-00', 'Sumedang', '1', '3', ' -', '08131789XXXX', 'Appointcorp Limited@gmail.com', '1', '0'),
(452, 0, 'Michael Gan', 'L', '0000-00-00', ' Jakarta Selatan', '1', '2', ' -', '08529228XXXX', 'Michael Gan@gmail.com', '1', '0'),
(453, 0, 'Agus Purnomo Edhi', 'P', '0000-00-00', 'Cibinong', '1', '2', ' -', '08999322XXXX', 'Agus Purnomo Edhi@gmail.com', '1', '0'),
(454, 0, 'Chin Chin Chandera', 'L', '0000-00-00', 'Karawang', '0', '3', ' -', '08526157XXXX', 'Chin Chin Chandera@gmail.com', '1', '0'),
(455, 0, 'Leonardus Eko Daru Lumadyo', 'L', '0000-00-00', ' Jakarta Selatan', '1', '3', ' -', '08313398XXXX', 'Leonardus Eko Daru Lumadyo@gmail.com', '1', '0'),
(456, 0, 'Aris Yuwono Ang', 'P', '0000-00-00', 'Majalengka', '1', '1', ' -', '08556125XXXX', 'Aris Yuwono Ang@gmail.com', '1', '0'),
(457, 0, 'Linda Sidharta', 'L', '0000-00-00', 'Karawang', '0', '2', ' -', '08527136XXXX', 'Linda Sidharta@gmail.com', '1', '0'),
(458, 0, 'Jap Johanes', 'L', '0000-00-00', 'Cirebon', '0', '1', ' -', '08889377XXXX', 'Jap Johanes@gmail.com', '1', '0'),
(459, 0, 'Isenta Hioe', 'P', '0000-00-00', 'Indramayu', '1', '1', ' -', '08526832XXXX', 'Isenta Hioe@gmail.com', '1', '0'),
(460, 0, 'Hadi Lukman', 'P', '0000-00-00', 'Jakarta Barat', '1', '1', ' -', '08122062XXXX', 'Hadi Lukman@gmail.com', '1', '0'),
(461, 0, 'Dadi Sukarso Yuwono', 'P', '0000-00-00', 'Ciamis', '1', '1', ' -', '08588880XXXX', 'Dadi Sukarso Yuwono@gmail.com', '1', '0'),
(462, 0, 'Khairul Saleh', 'P', '0000-00-00', 'Parigi', '0', '3', ' -', '08896083XXXX', 'Khairul Saleh@gmail.com', '1', '0'),
(463, 0, 'John Franklin', 'L', '0000-00-00', 'Indramayu', '1', '1', ' -', '08168942XXXX', 'John Franklin@gmail.com', '1', '0'),
(464, 0, 'James Thomas Henry Arthur', 'P', '0000-00-00', 'Cianjur', '0', '2', ' -', '08798128XXXX', 'James Thomas Henry Arthur@gmail.com', '1', '0'),
(465, 0, 'El Beatrice', 'P', '0000-00-00', 'Ngamprah', '0', '2', ' -', '08597829XXXX', 'El Beatrice@gmail.com', '1', '0'),
(466, 0, 'Dewi Natalia Lim', 'P', '0000-00-00', 'Depok', '0', '3', ' -', '08785351XXXX', 'Dewi Natalia Lim@gmail.com', '1', '0'),
(467, 0, 'Aryo Bimo Notowidigdo', 'L', '0000-00-00', 'Bogor', '1', '3', ' -', '08282596XXXX', 'Aryo Bimo Notowidigdo@gmail.com', '1', '0'),
(468, 0, 'Kama Putra Kusdianto', 'L', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08967026XXXX', 'Kama Putra Kusdianto@gmail.com', '1', '0'),
(469, 0, 'Marten Liu', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '3', ' -', '08219991XXXX', 'Marten Liu@gmail.com', '1', '0'),
(470, 0, 'Indra Makmur', 'P', '0000-00-00', 'Ciamis', '0', '1', ' -', '08138491XXXX', 'Indra Makmur@gmail.com', '1', '0'),
(471, 0, 'Herman Afif Kusumo', 'L', '0000-00-00', 'Pelabuhan Ratu', '1', '1', ' -', '08788096XXXX', 'Herman Afif Kusumo@gmail.com', '1', '0'),
(472, 0, 'Arlehne Purnomo', 'L', '0000-00-00', 'Jakarta Utara', '0', '1', ' -', '08538833XXXX', 'Arlehne Purnomo@gmail.com', '1', '0'),
(473, 0, 'HANDANA HALIM WANAWIJAYA', 'P', '0000-00-00', 'Majalengka', '1', '1', ' -', '08143590XXXX', 'HANDANA HALIM WANAWIJAYA@gmail.com', '1', '0'),
(474, 0, 'Dicky Yordan', 'P', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08792644XXXX', 'Dicky Yordan@gmail.com', '1', '0'),
(475, 0, 'Lee Yick Cheung', 'P', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08893848XXXX', 'Lee Yick Cheung@gmail.com', '1', '0'),
(476, 0, 'Michelle Tjokrosaputro', 'L', '0000-00-00', 'Jakarta Barat', '0', '3', ' -', '08997115XXXX', 'Michelle Tjokrosaputro@gmail.com', '1', '0'),
(477, 0, 'Marcella Magdalena', 'L', '0000-00-00', 'Cisaat', '1', '3', ' -', '08592681XXXX', 'Marcella Magdalena@gmail.com', '1', '0'),
(478, 0, 'Andi Zainal A. Dulung', 'L', '0000-00-00', 'Karawang', '1', '1', ' -', '08994288XXXX', 'Andi Zainal A. Dulung@gmail.com', '1', '0'),
(479, 0, 'Djoko Kartono', 'L', '0000-00-00', ' Jakarta Selatan', '1', '2', ' -', '08134259XXXX', 'Djoko Kartono@gmail.com', '1', '0'),
(480, 0, 'Mario Satya Pratomo', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08534362XXXX', 'Mario Satya Pratomo@gmail.com', '1', '0'),
(481, 0, 'Hadidarma Kosasih Kho', 'P', '0000-00-00', 'Cianjur', '0', '1', ' -', '08536915XXXX', 'Hadidarma Kosasih Kho@gmail.com', '1', '0'),
(482, 0, 'Irmayani Pujiastuti', 'L', '0000-00-00', 'Bekasi', '0', '2', ' -', '08165274XXXX', 'Irmayani Pujiastuti@gmail.com', '1', '0'),
(483, 0, 'LINA KURNIAWAN', 'P', '0000-00-00', 'Depok', '1', '1', ' -', '08795107XXXX', 'LINA KURNIAWAN@gmail.com', '1', '0'),
(484, 0, 'Harry Soeria', 'L', '0000-00-00', 'Karawang', '1', '1', ' -', '08568353XXXX', 'Harry Soeria@gmail.com', '1', '0'),
(485, 0, 'Johny Lisangan', 'P', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08577355XXXX', 'Johny Lisangan@gmail.com', '1', '0'),
(486, 0, 'ARDIANI KARTIKA SARI SUBIANTO', 'L', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08567172XXXX', 'ARDIANI KARTIKA SARI SUBIANTO@gmail.com', '1', '0'),
(487, 0, 'Albert Sugianto', 'P', '0000-00-00', 'Cisaat', '0', '1', ' -', '08135009XXXX', 'Albert Sugianto@gmail.com', '1', '0'),
(488, 0, 'JIMMY HARTONO LIE', 'L', '0000-00-00', 'Garut', '0', '2', ' -', '08217248XXXX', 'JIMMY HARTONO LIE@gmail.com', '1', '0'),
(489, 0, 'Lusi Windayati', 'P', '0000-00-00', 'Subang', '1', '1', ' -', '08962296XXXX', 'Lusi Windayati@gmail.com', '1', '0'),
(490, 0, 'Indrajaty Hadiwardojo', 'P', '0000-00-00', 'Garut', '0', '3', ' -', '08524069XXXX', 'Indrajaty Hadiwardojo@gmail.com', '1', '0'),
(491, 0, 'Armeilia Widayanti Subianto', 'L', '0000-00-00', 'Cirebon', '1', '2', ' -', '08824146XXXX', 'Armeilia Widayanti Subianto@gmail.com', '1', '0'),
(492, 0, 'LINDA LIANI JANTI SENJAYA', 'L', '0000-00-00', 'Cirebon', '0', '3', ' -', '08829368XXXX', 'LINDA LIANI JANTI SENJAYA@gmail.com', '1', '0'),
(493, 0, 'Enny Trang', 'P', '0000-00-00', 'Depok', '1', '3', ' -', '08985322XXXX', 'Enny Trang@gmail.com', '1', '0'),
(494, 0, 'Edward Ang', 'L', '0000-00-00', 'Sumedang', '1', '2', ' -', '08963299XXXX', 'Edward Ang@gmail.com', '1', '0'),
(495, 0, 'Felianah Soetemo', 'P', '0000-00-00', 'Cibinong', '1', '1', ' -', '08793641XXXX', 'Felianah Soetemo@gmail.com', '1', '0'),
(496, 0, 'Arief Santoso', 'P', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08112914XXXX', 'Arief Santoso@gmail.com', '1', '0'),
(497, 0, 'JAMES BUDIONO', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08792721XXXX', 'JAMES BUDIONO@gmail.com', '1', '0'),
(498, 0, 'Andreas Andikha Bunanta', 'P', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08559741XXXX', 'Andreas Andikha Bunanta@gmail.com', '1', '0'),
(499, 0, 'Heru Sucahyo', 'L', '0000-00-00', 'Bogor', '0', '2', ' -', '08281784XXXX', 'Heru Sucahyo@gmail.com', '1', '0'),
(500, 0, 'Edianto Prasetyo', 'P', '0000-00-00', 'Kuningan', '1', '1', ' -', '08968972XXXX', 'Edianto Prasetyo@gmail.com', '1', '0'),
(501, 0, 'MICHAEL ATMAN', 'L', '0000-00-00', 'Cisaat', '0', '2', ' -', '08584810XXXX', 'MICHAEL ATMAN@gmail.com', '1', '0'),
(502, 0, 'ERNAWATI', 'P', '0000-00-00', 'Singaparna', '1', '2', ' -', '08176621XXXX', 'ERNAWATI@gmail.com', '1', '0'),
(503, 0, 'Kris Widjojo', 'L', '0000-00-00', 'Singaparna', '0', '1', ' -', '08197109XXXX', 'Kris Widjojo@gmail.com', '1', '0'),
(504, 0, 'Anton Tjahjono', 'L', '0000-00-00', 'Subang', '1', '3', ' -', '08585281XXXX', 'Anton Tjahjono@gmail.com', '1', '0'),
(505, 0, 'Maly Widoyo', 'P', '0000-00-00', 'Bekasi', '0', '2', ' -', '08385619XXXX', 'Maly Widoyo@gmail.com', '1', '0'),
(506, 0, 'Fahmi Idris', 'P', '0000-00-00', 'Cirebon', '1', '1', ' -', '08319111XXXX', 'Fahmi Idris@gmail.com', '1', '0'),
(507, 0, 'Devie Hendrastiti Darmawan', 'P', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08119848XXXX', 'Devie Hendrastiti Darmawan@gmail.com', '1', '0'),
(508, 0, 'Ali Alimsyah', 'L', '0000-00-00', 'Cisaat', '0', '1', ' -', '08991133XXXX', 'Ali Alimsyah@gmail.com', '1', '0'),
(509, 0, 'Gahral Sjah', 'P', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08789734XXXX', 'Gahral Sjah@gmail.com', '1', '0'),
(510, 0, 'Leda Magdangal Tamin', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08558454XXXX', 'Leda Magdangal Tamin@gmail.com', '1', '0'),
(511, 0, 'Achmad Sandi', 'P', '0000-00-00', 'Cirebon', '1', '1', ' -', '08985539XXXX', 'Achmad Sandi@gmail.com', '1', '0'),
(512, 0, 'Darjoto Setyawan', 'P', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08588623XXXX', 'Darjoto Setyawan@gmail.com', '1', '0'),
(513, 0, 'Ari Indra Gautama', 'L', '0000-00-00', 'Kuningan', '1', '1', ' -', '08891761XXXX', 'Ari Indra Gautama@gmail.com', '1', '0'),
(514, 0, 'Hioe Isenta', 'P', '0000-00-00', 'Parigi', '0', '1', ' -', '08387719XXXX', 'Hioe Isenta@gmail.com', '1', '0'),
(515, 0, 'ISMAN AYUB', 'P', '0000-00-00', 'Jakarta Pusat', '0', '3', ' -', '08972436XXXX', 'ISMAN AYUB@gmail.com', '1', '0'),
(516, 0, 'Eiffel Tedja', 'P', '0000-00-00', 'Ciamis', '0', '1', ' -', '08572946XXXX', 'Eiffel Tedja@gmail.com', '1', '0'),
(517, 0, 'Johnny Wiriawan', 'L', '0000-00-00', 'Bekasi', '0', '1', ' -', '08963125XXXX', 'Johnny Wiriawan@gmail.com', '1', '0'),
(518, 0, 'Andi Gunawan Wibowo', 'P', '0000-00-00', 'Sumber', '0', '2', ' -', '08781653XXXX', 'Andi Gunawan Wibowo@gmail.com', '1', '0'),
(519, 0, 'Elizabeth Jayne', 'P', '0000-00-00', 'Singaparna', '1', '1', ' -', '08128966XXXX', 'Elizabeth Jayne@gmail.com', '1', '0'),
(520, 0, 'Charles Louis De Queljoe', 'L', '0000-00-00', 'Kuningan', '0', '1', ' -', '08814011XXXX', 'Charles Louis De Queljoe@gmail.com', '1', '0'),
(521, 0, 'Judca Herlina Hansoehardi', 'P', '0000-00-00', 'Bekasi', '0', '1', ' -', '08114261XXXX', 'Judca Herlina Hansoehardi@gmail.com', '1', '0'),
(522, 0, 'Ida Bagus Made Putra Jandhana', 'L', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08575302XXXX', 'Ida Bagus Made Putra Jandhana@gmail.com', '1', '0'),
(523, 0, 'Bernie Prajoga', 'L', '0000-00-00', 'Soreang', '1', '1', ' -', '08979893XXXX', 'Bernie Prajoga@gmail.com', '1', '0'),
(524, 0, 'Lanny Tanzil', 'L', '0000-00-00', 'Ciamis', '1', '3', ' -', '08285437XXXX', 'Lanny Tanzil@gmail.com', '1', '0'),
(525, 0, 'Letty Johan', 'L', '0000-00-00', 'Jakarta Timur', '0', '2', ' -', '08999930XXXX', 'Letty Johan@gmail.com', '1', '0'),
(526, 0, 'Listyani Setijawati Sidik', 'P', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08286529XXXX', 'Listyani Setijawati Sidik@gmail.com', '1', '0'),
(527, 0, 'Budiarto Karim', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08164027XXXX', 'Budiarto Karim@gmail.com', '1', '0'),
(528, 0, 'Edward Magnus Lang ', 'L', '0000-00-00', 'Ciamis', '1', '2', ' -', '08217005XXXX', 'Edward Magnus Lang@gmail.com', '1', '0'),
(530, 0, 'Iroshita Arsyafira', 'L', '0000-00-00', 'Indramayu', '0', '1', ' -', '08194970XXXX', 'Iroshita Arsyafira@gmail.com', '1', '0'),
(531, 0, 'Lies Kusumawati', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08281372XXXX', 'Lies Kusumawati@gmail.com', '1', '0'),
(532, 0, 'Inda Aryanti Imanto', 'P', '0000-00-00', 'Subang', '0', '1', ' -', '08573839XXXX', 'Inda Aryanti Imanto@gmail.com', '1', '0'),
(533, 0, 'Geeta M. Mirpuri', 'P', '0000-00-00', 'Jakarta Utara', '1', '1', ' -', '08887827XXXX', 'Geeta M. Mirpuri@gmail.com', '1', '0'),
(534, 0, 'LEDRES BALMACEDA MARIO', 'L', '0000-00-00', 'Sumber', '1', '1', ' -', '08119382XXXX', 'LEDRES BALMACEDA MARIO@gmail.com', '1', '0'),
(535, 0, 'Dan Brown', 'L', '0000-00-00', 'Subang', '1', '1', ' -', '08587333XXXX', 'Dan Brown@gmail.com', '1', '0'),
(536, 0, 'Iwa Sewaka', 'P', '0000-00-00', 'Depok', '1', '2', ' -', '08816716XXXX', 'Iwa Sewaka@gmail.com', '1', '0'),
(537, 0, 'Gan Boot Lian', 'P', '0000-00-00', 'Sumber', '0', '1', ' -', '08988540XXXX', 'Gan Boot Lian@gmail.com', '1', '0'),
(538, 0, 'James Eric Zaini', 'P', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08285455XXXX', 'James Eric Zaini@gmail.com', '1', '0'),
(539, 0, 'Julianna Yohan', 'L', '0000-00-00', 'Jakarta Barat', '1', '1', ' -', '08884974XXXX', 'Julianna Yohan@gmail.com', '1', '0'),
(540, 0, 'Faizan Abdul Rahan', 'P', '0000-00-00', 'Indramayu', '1', '1', ' -', '08966332XXXX', 'Faizan Abdul Rahan@gmail.com', '1', '0'),
(541, 0, 'Ateng Suhendra', 'P', '0000-00-00', 'Cianjur', '1', '2', ' -', '08191148XXXX', 'Ateng Suhendra@gmail.com', '1', '0'),
(542, 0, 'Darminto Hartono', 'P', '0000-00-00', 'Sumedang', '0', '1', ' -', '08113009XXXX', 'Darminto Hartono@gmail.com', '1', '0'),
(543, 0, 'Lee Chuck Soo', 'P', '0000-00-00', 'Depok', '0', '2', ' -', '08538982XXXX', 'Lee Chuck Soo@gmail.com', '1', '0'),
(544, 0, 'JOGI HENDRA ATMADJA', 'L', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08147007XXXX', 'JOGI HENDRA ATMADJA@gmail.com', '1', '0'),
(545, 0, 'Edi Firmansyah', 'L', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08557201XXXX', 'Edi Firmansyah@gmail.com', '1', '0'),
(546, 0, 'Hioe Isenta and Ivy Lianawati', 'P', '0000-00-00', 'Majalengka', '0', '1', ' -', '08795946XXXX', 'Hioe Isenta and Ivy Lianawati@gmail.com', '1', '0'),
(547, 0, 'Christiana Halim', 'P', '0000-00-00', 'Cimahi', '0', '1', ' -', '08521699XXXX', 'Christiana Halim@gmail.com', '1', '0'),
(548, 0, 'Fida Unidjaja', 'P', '0000-00-00', 'Kuningan', '1', '1', ' -', '08158132XXXX', 'Fida Unidjaja@gmail.com', '1', '0'),
(549, 0, 'IRAWAN HADIKUSUMO', 'P', '0000-00-00', 'Singaparna', '0', '1', ' -', '08883180XXXX', 'IRAWAN HADIKUSUMO@gmail.com', '1', '0'),
(550, 0, 'Djoko Nirmala Labbaika', 'L', '0000-00-00', 'Karawang', '0', '1', ' -', '08213849XXXX', 'Djoko Nirmala Labbaika@gmail.com', '1', '0'),
(551, 0, 'Bobby Andhika', 'P', '0000-00-00', 'Sumber', '0', '1', ' -', '08966265XXXX', 'Bobby Andhika@gmail.com', '1', '0'),
(552, 0, 'Iwan Rosadi Widyapranolo', 'P', '0000-00-00', 'Bandung', '0', '1', ' -', '08557459XXXX', 'Iwan Rosadi Widyapranolo@gmail.com', '1', '0'),
(553, 0, 'Lukman Hakin', 'P', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08212501XXXX', 'Lukman Hakin@gmail.com', '1', '0'),
(554, 0, 'Kitty Joantina Wulanda', 'L', '0000-00-00', 'Cirebon', '0', '2', ' -', '08594041XXXX', 'Kitty Joantina Wulanda@gmail.com', '1', '0'),
(555, 0, 'Aizid Syafriel Adjam', 'P', '0000-00-00', 'Ngamprah', '0', '3', ' -', '08116662XXXX', 'Aizid Syafriel Adjam@gmail.com', '1', '0'),
(556, 0, 'Ginawan Chondro', 'L', '0000-00-00', 'Purwakarta', '1', '3', ' -', '08146981XXXX', 'Ginawan Chondro@gmail.com', '1', '0'),
(557, 0, 'Ani Sim', 'P', '0000-00-00', 'Bogor', '0', '1', ' -', '08199982XXXX', 'Ani Sim@gmail.com', '1', '0'),
(559, 0, 'Indah Djuita Tjatursari', 'P', '0000-00-00', 'Cibinong', '0', '3', ' -', '08119158XXXX', 'Indah Djuita Tjatursari@gmail.com', '1', '0'),
(560, 0, 'ERLINA ONGSOREDJO', 'P', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08991149XXXX', 'ERLINA ONGSOREDJO@gmail.com', '1', '0'),
(561, 0, 'Irene Susanto Adikoesoemo', 'P', '0000-00-00', 'Kuningan', '0', '1', ' -', '08889547XXXX', 'Irene Susanto Adikoesoemo@gmail.com', '1', '0'),
(562, 0, 'Melissa Ong', 'P', '0000-00-00', 'Karawang', '1', '1', ' -', '08318630XXXX', 'Melissa Ong@gmail.com', '1', '0'),
(563, 0, 'Eddy Hussy', 'L', '0000-00-00', 'Garut', '1', '1', ' -', '08998149XXXX', 'Eddy Hussy@gmail.com', '1', '0'),
(564, 0, 'Christopher Basil Newton', 'P', '0000-00-00', 'Bekasi', '1', '1', ' -', '08816511XXXX', 'Christopher Basil Newton@gmail.com', '1', '0'),
(565, 0, 'Himawan Surya', 'L', '0000-00-00', 'Bogor', '1', '1', ' -', '08987797XXXX', 'Himawan Surya@gmail.com', '1', '0'),
(566, 0, 'Charterhouse Limited', 'L', '0000-00-00', 'Bandung', '0', '3', ' -', '08382989XXXX', 'Charterhouse Limited@gmail.com', '1', '0'),
(567, 0, 'Agus Nursalim', 'P', '0000-00-00', 'Bekasi', '1', '1', ' -', '08526041XXXX', 'Agus Nursalim@gmail.com', '1', '0'),
(568, 0, 'Liliana Budi Santoso', 'P', '0000-00-00', ' Jakarta Selatan', '0', '2', ' -', '08117003XXXX', 'Liliana Budi Santoso@gmail.com', '1', '0'),
(569, 0, 'Lim Lys Erty', 'L', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08312669XXXX', 'Lim Lys Erty@gmail.com', '1', '0'),
(570, 0, 'Andre Abdi', 'P', '0000-00-00', 'Cimahi', '1', '3', ' -', '08281616XXXX', 'Andre Abdi@gmail.com', '1', '0'),
(571, 0, 'Joseph Donald Charles Buddy', 'L', '0000-00-00', 'Parigi', '1', '3', ' -', '08562472XXXX', 'Joseph Donald Charles Buddy@gmail.com', '1', '0'),
(572, 0, 'Era Helvani', 'P', '0000-00-00', 'Sumber', '1', '3', ' -', '08983909XXXX', 'Era Helvani@gmail.com', '1', '0'),
(573, 0, 'Bagus Panuntun', 'P', '0000-00-00', 'Cimahi', '1', '1', ' -', '08113895XXXX', 'Bagus Panuntun@gmail.com', '1', '0'),
(574, 0, 'Hendrik Tee', 'L', '0000-00-00', 'Bekasi', '0', '1', ' -', '08118442XXXX', 'Hendrik Tee@gmail.com', '1', '0'),
(575, 0, 'IVY LIANAWATI', 'L', '0000-00-00', 'Cisaat', '1', '1', ' -', '08384591XXXX', 'IVY LIANAWATI@gmail.com', '1', '0'),
(576, 0, 'Ardy Wiria', 'L', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08539189XXXX', 'Ardy Wiria@gmail.com', '1', '0'),
(577, 0, 'Andang Bachtiar', 'P', '0000-00-00', 'Cimahi', '1', '1', ' -', '08287177XXXX', 'Andang Bachtiar@gmail.com', '1', '0'),
(578, 0, 'Edwin Sugiarto', 'L', '0000-00-00', 'Parigi', '1', '1', ' -', '08382184XXXX', 'Edwin Sugiarto@gmail.com', '1', '0'),
(579, 0, 'Alfari Narindra', 'P', '0000-00-00', 'Cianjur', '1', '3', ' -', '08977479XXXX', 'Alfari Narindra@gmail.com', '1', '0'),
(580, 0, 'BUDHI SOEJONO', 'L', '0000-00-00', 'Soreang', '1', '3', ' -', '08533425XXXX', 'BUDHI SOEJONO@gmail.com', '1', '0'),
(581, 0, 'Eliani Johan', 'P', '0000-00-00', 'Cirebon', '0', '2', ' -', '08381899XXXX', 'Eliani Johan@gmail.com', '1', '0'),
(582, 0, 'Jamin Soetoyo', 'P', '0000-00-00', 'Sumber', '0', '3', ' -', '08119158XXXX', 'Jamin Soetoyo@gmail.com', '1', '0'),
(583, 0, 'Katharina Wihardja', 'P', '0000-00-00', 'Jakarta Barat', '1', '1', ' -', '08978662XXXX', 'Katharina Wihardja@gmail.com', '1', '0'),
(584, 0, 'Emily Waty Setiawan', 'L', '0000-00-00', 'Depok', '0', '1', ' -', '08532212XXXX', 'Emily Waty Setiawan@gmail.com', '1', '0'),
(585, 0, 'Juanda Lesmana Lauw', 'P', '0000-00-00', 'Garut', '0', '1', ' -', '08526248XXXX', 'Juanda Lesmana Lauw@gmail.com', '1', '0'),
(586, 0, 'Kamlesh Ishwardas', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08389723XXXX', 'Kamlesh Ishwardas@gmail.com', '1', '0'),
(587, 0, 'Achirsyah Moes', 'P', '0000-00-00', 'Bandung', '1', '1', ' -', '08588343XXXX', 'Achirsyah Moes@gmail.com', '1', '0'),
(588, 0, 'AHMAD MARDA', 'P', '0000-00-00', 'Jakarta Barat', '1', '3', ' -', '08281488XXXX', 'AHMAD MARDA@gmail.com', '1', '0'),
(589, 0, 'Linda Lauw', 'L', '0000-00-00', 'Purwakarta', '0', '1', ' -', '08287998XXXX', 'Linda Lauw@gmail.com', '1', '0'),
(590, 0, 'Mira Savira', 'L', '0000-00-00', 'Kuningan', '1', '1', ' -', '08963639XXXX', 'Mira Savira@gmail.com', '1', '0'),
(591, 0, 'LAKSMI PRATIWI DALLAMORE', 'L', '0000-00-00', 'Kuningan', '0', '1', ' -', '08976678XXXX', 'LAKSMI PRATIWI DALLAMORE@gmail.com', '1', '0'),
(592, 0, 'BEATRICE EL', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08778195XXXX', 'BEATRICE EL@gmail.com', '1', '0'),
(593, 0, 'Gregory Campbell HINCHLIFE', 'L', '0000-00-00', 'Jakarta Pusat', '0', '2', ' -', '08791241XXXX', 'Gregory Campbell HINCHLIFE@gmail.com', '1', '0'),
(594, 0, 'ARINI SARASWATY SUBIANTO', 'P', '0000-00-00', 'Ciamis', '0', '1', ' -', '08978878XXXX', 'ARINI SARASWATY SUBIANTO@gmail.com', '1', '0'),
(595, 0, 'Amalia', 'L', '0000-00-00', 'Indramayu', '1', '3', ' -', '08119488XXXX', 'Amalia@gmail.com', '1', '0'),
(596, 0, 'Handojo Santosa', 'P', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08287277XXXX', 'Handojo Santosa@gmail.com', '1', '0'),
(597, 0, 'Dermawan', 'L', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08567523XXXX', 'Dermawan@gmail.com', '1', '0'),
(598, 0, 'Dina Eldelina Pow', 'L', '0000-00-00', 'Garut', '1', '2', ' -', '08588530XXXX', 'Dina Eldelina Pow@gmail.com', '1', '0'),
(599, 0, 'Ivonny Budiono', 'L', '0000-00-00', 'Cimahi', '1', '1', ' -', '08167866XXXX', 'Ivonny Budiono@gmail.com', '1', '0'),
(600, 0, 'Jacky Soerya Santoso', 'L', '0000-00-00', 'Cisaat', '0', '1', ' -', '08597069XXXX', 'Jacky Soerya Santoso@gmail.com', '1', '0'),
(601, 0, 'Danny Nugroho', 'L', '0000-00-00', 'Jakarta Timur', '0', '1', ' -', '08165540XXXX', 'Danny Nugroho@gmail.com', '1', '0'),
(602, 0, 'Justian Suhandinata', 'P', '0000-00-00', 'Cimahi', '1', '1', ' -', '08817196XXXX', 'Justian Suhandinata@gmail.com', '1', '0'),
(603, 0, 'Christopher Tanuwidjaja', 'L', '0000-00-00', 'Parigi', '0', '3', ' -', '08283008XXXX', 'Christopher Tanuwidjaja@gmail.com', '1', '0'),
(604, 0, 'DANNY JUWONO', 'P', '0000-00-00', 'Majalengka', '1', '3', ' -', '08211368XXXX', 'DANNY JUWONO@gmail.com', '1', '0'),
(605, 0, 'Alisyahrazad Hanafiah', 'P', '0000-00-00', 'Jakarta Timur', '0', '2', ' -', '08555314XXXX', 'Alisyahrazad Hanafiah@gmail.com', '1', '0'),
(606, 0, 'Dicky Kurniawan', 'P', '0000-00-00', 'Indramayu', '0', '3', ' -', '08824234XXXX', 'Dicky Kurniawan@gmail.com', '1', '0'),
(607, 0, 'Chew Say Loo', 'L', '0000-00-00', 'Jakarta Timur', '0', '3', ' -', '08777120XXXX', 'Chew Say Loo@gmail.com', '1', '0'),
(608, 0, 'Darmo Suwito Barwin', 'P', '0000-00-00', 'Subang', '0', '2', ' -', '08525700XXXX', 'Darmo Suwito Barwin@gmail.com', '1', '0'),
(609, 0, 'Hasan W. W. Krisno', 'L', '0000-00-00', 'Jakarta Timur', '0', '1', ' -', '08161884XXXX', 'Hasan W. W. Krisno@gmail.com', '1', '0'),
(610, 0, 'Christian Dieter Scholz', 'P', '0000-00-00', 'Singaparna', '0', '2', ' -', '08132428XXXX', 'Christian Dieter Scholz@gmail.com', '1', '0'),
(611, 0, 'Heru Soesanto Gusti', 'P', '0000-00-00', 'Singaparna', '0', '1', ' -', '08988391XXXX', 'Heru Soesanto Gusti@gmail.com', '1', '0'),
(612, 0, 'MELIAWATI SURJASARI', 'P', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08816086XXXX', 'MELIAWATI SURJASARI@gmail.com', '1', '0'),
(613, 0, 'Edwin Soeryadjaya', 'P', '0000-00-00', 'Sumber', '1', '1', ' -', '08192977XXXX', 'Edwin Soeryadjaya@gmail.com', '1', '0'),
(614, 0, 'Benny Tjokrosapoetro', 'L', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08784614XXXX', 'Benny Tjokrosapoetro@gmail.com', '1', '0'),
(615, 0, 'Elisabet Lay', 'L', '0000-00-00', 'Jakarta Pusat', '0', '3', ' -', '08887995XXXX', 'Elisabet Lay@gmail.com', '1', '0'),
(616, 0, 'MICHAEL PATRICK DONNELLY', 'L', '0000-00-00', 'Cirebon', '0', '1', ' -', '08781706XXXX', 'MICHAEL PATRICK DONNELLY@gmail.com', '1', '0'),
(617, 0, 'INGRID WILIANTO', 'P', '0000-00-00', 'Jakarta Timur', '0', '3', ' -', '08882053XXXX', 'INGRID WILIANTO@gmail.com', '1', '0'),
(618, 0, 'Edy Susanto', 'L', '0000-00-00', 'Kuningan', '1', '2', ' -', '08561728XXXX', 'Edy Susanto@gmail.com', '1', '0'),
(619, 0, 'Michael Mary Mackay Seward', 'L', '0000-00-00', 'Sumedang', '1', '1', ' -', '08796675XXXX', 'Michael Mary Mackay Seward@gmail.com', '1', '0'),
(620, 0, 'Antony Gunawan', 'P', '0000-00-00', 'Kuningan', '1', '3', ' -', '08795502XXXX', 'Antony Gunawan@gmail.com', '1', '0'),
(621, 0, 'Mintardjo Halim', 'P', '0000-00-00', ' Jakarta Selatan', '1', '2', ' -', '08964320XXXX', 'Mintardjo Halim@gmail.com', '1', '0'),
(622, 0, 'Muhammad Aksa Mahmud', 'P', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08826362XXXX', 'Muhammad Aksa Mahmud@gmail.com', '1', '0'),
(623, 0, 'Jennie Widjaya', 'P', '0000-00-00', 'Jakarta Utara', '1', '3', ' -', '08824949XXXX', 'Jennie Widjaya@gmail.com', '1', '0'),
(624, 0, 'Edy Kusnadi', 'L', '0000-00-00', 'Cirebon', '0', '1', ' -', '08133500XXXX', 'Edy Kusnadi@gmail.com', '1', '0'),
(625, 0, 'Ie Kian Tjoan', 'L', '0000-00-00', 'Jakarta Utara', '1', '1', ' -', '08111043XXXX', 'Ie Kian Tjoan@gmail.com', '1', '0'),
(626, 0, 'Erwin Sasunto', 'L', '0000-00-00', 'Bekasi', '0', '1', ' -', '08382256XXXX', 'Erwin Sasunto@gmail.com', '1', '0'),
(627, 0, 'Darwin Soegiatto', 'L', '0000-00-00', 'Singaparna', '1', '1', ' -', '08566121XXXX', 'Darwin Soegiatto@gmail.com', '1', '0'),
(628, 0, 'Jusuf Handri Rachmantio', 'P', '0000-00-00', 'Parigi', '1', '1', ' -', '08822396XXXX', 'Jusuf Handri Rachmantio@gmail.com', '1', '0'),
(629, 0, 'BENNY IRSJAD', 'P', '0000-00-00', 'Indramayu', '0', '2', ' -', '08772593XXXX', 'BENNY IRSJAD@gmail.com', '1', '0'),
(630, 0, 'Irawan Kurniadi Tjandra', 'L', '0000-00-00', 'Soreang', '1', '2', ' -', '08157863XXXX', 'Irawan Kurniadi Tjandra@gmail.com', '1', '0'),
(631, 0, 'Budiono Darsono', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '3', ' -', '08882267XXXX', 'Budiono Darsono@gmail.com', '1', '0'),
(632, 0, 'Lukman Ahmad Mahfoed', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '3', ' -', '08215248XXXX', 'Lukman Ahmad Mahfoed@gmail.com', '1', '0'),
(633, 0, 'Darmoseputro', 'P', '0000-00-00', 'Sumedang', '0', '2', ' -', '08282138XXXX', 'Darmoseputro@gmail.com', '1', '0'),
(634, 0, 'Marcellus Charles Colondam', 'L', '0000-00-00', 'Cimahi', '1', '3', ' -', '08778287XXXX', 'Marcellus Charles Colondam@gmail.com', '1', '0'),
(635, 0, 'HERMANSJAH TAMIN', 'P', '0000-00-00', 'Sumber', '1', '3', ' -', '08189186XXXX', 'HERMANSJAH TAMIN@gmail.com', '1', '0'),
(636, 0, 'Fransisous Iwo', 'P', '0000-00-00', 'Bogor', '0', '3', ' -', '08139764XXXX', 'Fransisous Iwo@gmail.com', '1', '0'),
(637, 0, 'Finney Henry Katuari', 'P', '0000-00-00', 'Sumber', '0', '2', ' -', '08385389XXXX', 'Finney Henry Katuari@gmail.com', '1', '0'),
(638, 0, 'Lily Solaiman Sutantyo', 'L', '0000-00-00', 'Cibinong', '0', '1', ' -', '08771456XXXX', 'Lily Solaiman Sutantyo@gmail.com', '1', '0'),
(639, 0, 'David William DONALDSON', 'L', '0000-00-00', 'Cisaat', '1', '1', ' -', '08995314XXXX', 'David William DONALDSON@gmail.com', '1', '0'),
(640, 0, 'Budi Basuki', 'P', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08967157XXXX', 'Budi Basuki@gmail.com', '1', '0'),
(641, 0, 'Hawanto Hartono', 'P', '0000-00-00', 'Depok', '1', '1', ' -', '08534917XXXX', 'Hawanto Hartono@gmail.com', '1', '0'),
(642, 0, 'Budi Sintoro Then', 'L', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08581027XXXX', 'Budi Sintoro Then@gmail.com', '1', '0'),
(643, 0, 'Jahjaa Soetoyo', 'P', '0000-00-00', 'Cisaat', '1', '3', ' -', '08779390XXXX', 'Jahjaa Soetoyo@gmail.com', '1', '0'),
(644, 0, 'Amrullah Hasyim', 'L', '0000-00-00', 'Majalengka', '0', '3', ' -', '08791494XXXX', 'Amrullah Hasyim@gmail.com', '1', '0'),
(645, 0, 'Justin Barney GOFF', 'P', '0000-00-00', 'Bogor', '0', '1', ' -', '08124672XXXX', 'Justin Barney GOFF@gmail.com', '1', '0'),
(646, 0, 'Hindarta Sanjaya', 'P', '0000-00-00', 'Cisaat', '1', '2', ' -', '08178171XXXX', 'Hindarta Sanjaya@gmail.com', '1', '0'),
(647, 0, 'Hendra Soegiarto', 'P', '0000-00-00', 'Sumedang', '1', '1', ' -', '08584198XXXX', 'Hendra Soegiarto@gmail.com', '1', '0'),
(648, 0, 'AHSANIL GUSNAWATI', 'P', '0000-00-00', 'Purwakarta', '0', '2', ' -', '08974871XXXX', 'AHSANIL GUSNAWATI@gmail.com', '1', '0'),
(649, 0, 'Karuna Murdaya', 'P', '0000-00-00', 'Depok', '0', '1', ' -', '08993586XXXX', 'Karuna Murdaya@gmail.com', '1', '0'),
(650, 0, 'Lucia Sungkoro', 'P', '0000-00-00', 'Ngamprah', '1', '3', ' -', '08284618XXXX', 'Lucia Sungkoro@gmail.com', '1', '0'),
(651, 0, 'Agung Salim', 'P', '0000-00-00', 'Kuningan', '1', '1', ' -', '08154883XXXX', 'Agung Salim@gmail.com', '1', '0'),
(652, 0, 'Mieke Santosa', 'L', '0000-00-00', 'Cisaat', '1', '1', ' -', '08985456XXXX', 'Mieke Santosa@gmail.com', '1', '0'),
(653, 0, 'Evelyn Luciana Soeyapto', 'P', '0000-00-00', 'Cianjur', '1', '1', ' -', '08981165XXXX', 'Evelyn Luciana Soeyapto@gmail.com', '1', '0'),
(654, 0, 'Hendro Santoso Gondokusumo', 'P', '0000-00-00', 'Singaparna', '0', '1', ' -', '08594645XXXX', 'Hendro Santoso Gondokusumo@gmail.com', '1', '0'),
(655, 0, 'Evi Yulisma Harahap', 'L', '0000-00-00', 'Jakarta Barat', '0', '3', ' -', '08186615XXXX', 'Evi Yulisma Harahap@gmail.com', '1', '0'),
(656, 0, 'Hasan Aula and Nina Koswandi', 'L', '0000-00-00', 'Sumedang', '0', '3', ' -', '08889442XXXX', 'Hasan Aula and Nina Koswandi@gmail.com', '1', '0'),
(657, 0, 'Hariadien Ratmawati Soeprapto', 'P', '0000-00-00', 'Parigi', '1', '3', ' -', '08566314XXXX', 'Hariadien Ratmawati Soeprapto@gmail.com', '1', '0'),
(658, 0, 'Doreen Sim', 'P', '0000-00-00', 'Purwakarta', '0', '2', ' -', '08155792XXXX', 'Doreen Sim@gmail.com', '1', '0'),
(659, 0, 'Hendro Guwanda Sutandi', 'L', '0000-00-00', 'Subang', '0', '2', ' -', '08162695XXXX', 'Hendro Guwanda Sutandi@gmail.com', '1', '0'),
(660, 0, 'Elizabeth Sindoro', 'P', '0000-00-00', 'Cimahi', '1', '2', ' -', '08585955XXXX', 'Elizabeth Sindoro@gmail.com', '1', '0'),
(661, 0, 'Dorys Setiawati Herlambang', 'L', '0000-00-00', 'Cirebon', '1', '3', ' -', '08597991XXXX', 'Dorys Setiawati Herlambang@gmail.com', '1', '0'),
(662, 0, 'Emy Harjono', 'L', '0000-00-00', 'Soreang', '1', '1', ' -', '08782464XXXX', 'Emy Harjono@gmail.com', '1', '0'),
(663, 0, 'Adi Sasono', 'P', '0000-00-00', 'Soreang', '0', '3', ' -', '08525450XXXX', 'Adi Sasono@gmail.com', '1', '0'),
(664, 0, 'Elvira Pudjiwati', 'P', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08124633XXXX', 'Elvira Pudjiwati@gmail.com', '1', '0'),
(665, 0, 'Eddy Daud', 'L', '0000-00-00', 'Subang', '0', '1', ' -', '08976363XXXX', 'Eddy Daud@gmail.com', '1', '0'),
(666, 0, 'Hary Djaja and Ratna Endang Hartatiek', 'L', '0000-00-00', 'Sumedang', '0', '1', ' -', '08149957XXXX', 'Hary Djaja and Ratna Endang Hartatiek@gmail.com', '1', '0'),
(667, 0, 'Bimo Pramudyo Soekarno', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08985475XXXX', 'Bimo Pramudyo Soekarno@gmail.com', '1', '0'),
(668, 0, 'AIRIN OKTAVIANY GUNAWAN', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08989853XXXX', 'AIRIN OKTAVIANY GUNAWAN@gmail.com', '1', '0'),
(669, 0, 'Djuffan Achmad', 'L', '0000-00-00', 'Parigi', '0', '3', ' -', '08788590XXXX', 'Djuffan Achmad@gmail.com', '1', '0'),
(670, 0, 'Firdaus Siddik', 'L', '0000-00-00', 'Subang', '0', '3', ' -', '08825312XXXX', 'Firdaus Siddik@gmail.com', '1', '0'),
(671, 0, 'KITTY TJIOE', 'P', '0000-00-00', 'Garut', '1', '1', ' -', '08128466XXXX', 'KITTY TJIOE@gmail.com', '1', '0'),
(672, 0, 'Lim Soon Huat', 'L', '0000-00-00', 'Purwakarta', '1', '1', ' -', '08827496XXXX', 'Lim Soon Huat@gmail.com', '1', '0'),
(673, 0, 'Meiliana Widjaja', 'L', '0000-00-00', 'Ciamis', '1', '1', ' -', '08521598XXXX', 'Meiliana Widjaja@gmail.com', '1', '0'),
(674, 0, 'Jeffrey Iuwena', 'P', '0000-00-00', 'Pelabuhan Ratu', '1', '1', ' -', '08893199XXXX', 'Jeffrey Iuwena@gmail.com', '1', '0'),
(675, 0, 'AGUS MAKMUR', 'P', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08142354XXXX', 'AGUS MAKMUR@gmail.com', '1', '0'),
(676, 0, 'Jusup Susanto Djunaidi', 'L', '0000-00-00', 'Jakarta Barat', '1', '1', ' -', '08792320XXXX', 'Jusup Susanto Djunaidi@gmail.com', '1', '0'),
(677, 0, 'Lanny Lanawaty', 'P', '0000-00-00', 'Garut', '1', '1', ' -', '08148711XXXX', 'Lanny Lanawaty@gmail.com', '1', '0'),
(678, 0, 'Chairul Iskandar Zulkarnaen', 'P', '0000-00-00', 'Bekasi', '0', '1', ' -', '08131006XXXX', 'Chairul Iskandar Zulkarnaen@gmail.com', '1', '0'),
(679, 0, 'Darwin Silalahi', 'L', '0000-00-00', 'Karawang', '1', '2', ' -', '08566566XXXX', 'Darwin Silalahi@gmail.com', '1', '0'),
(680, 0, 'Artha Mitra Interdata', 'L', '0000-00-00', 'Jakarta Barat', '1', '2', ' -', '08157902XXXX', 'Artha Mitra Interdata@gmail.com', '1', '0'),
(681, 0, 'Gerry Prawira Saputra Tjong', 'L', '0000-00-00', 'Cirebon', '1', '1', ' -', '08196134XXXX', 'Gerry Prawira Saputra Tjong@gmail.com', '1', '0'),
(682, 0, 'Kam Lie Giok', 'L', '0000-00-00', ' Jakarta Selatan', '1', '3', ' -', '08314438XXXX', 'Kam Lie Giok@gmail.com', '1', '0'),
(683, 0, 'Alan Robertson Clark', 'P', '0000-00-00', 'Sumedang', '0', '2', ' -', '08581649XXXX', 'Alan Robertson Clark@gmail.com', '1', '0'),
(684, 0, 'Jusup Budihartono Prajogo', 'P', '0000-00-00', 'Kuningan', '1', '1', ' -', '08162356XXXX', 'Jusup Budihartono Prajogo@gmail.com', '1', '0'),
(685, 0, 'Milany Terianto Luwena', 'L', '0000-00-00', 'Singaparna', '1', '1', ' -', '08778479XXXX', 'Milany Terianto Luwena@gmail.com', '1', '0'),
(686, 0, 'Lovri Ricarda', 'L', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08597042XXXX', 'Lovri Ricarda@gmail.com', '1', '0'),
(687, 0, 'Edy Kosasih', 'P', '0000-00-00', 'Soreang', '0', '1', ' -', '08137347XXXX', 'Edy Kosasih@gmail.com', '1', '0'),
(688, 0, 'Dewi Kencanawati Natawidjaja', 'P', '0000-00-00', 'Cimahi', '0', '1', ' -', '08119765XXXX', 'Dewi Kencanawati Natawidjaja@gmail.com', '1', '0'),
(689, 0, 'Madampath Sathibal Menon', 'P', '0000-00-00', 'Jakarta Pusat', '0', '1', ' -', '08146702XXXX', 'Madampath Sathibal Menon@gmail.com', '1', '0'),
(690, 0, 'ALBERT CAHYADI SUKANDADINATA', 'L', '0000-00-00', 'Jakarta Utara', '0', '1', ' -', '08811126XXXX', 'ALBERT CAHYADI SUKANDADINATA@gmail.com', '1', '0'),
(691, 0, 'Hari Raharta', 'L', '0000-00-00', 'Subang', '0', '1', ' -', '08578570XXXX', 'Hari Raharta@gmail.com', '1', '0'),
(692, 0, 'Bimo Surono', 'L', '0000-00-00', 'Soreang', '1', '1', ' -', '08969855XXXX', 'Bimo Surono@gmail.com', '1', '0'),
(693, 0, 'Hilmi Panigoro', 'P', '0000-00-00', 'Cianjur', '1', '1', ' -', '08197959XXXX', 'Hilmi Panigoro@gmail.com', '1', '0'),
(694, 0, 'Aluinanto Sandjojo', 'P', '0000-00-00', 'Bekasi', '0', '3', ' -', '08381190XXXX', 'Aluinanto Sandjojo@gmail.com', '1', '0'),
(695, 0, 'Denny Lim', 'P', '0000-00-00', 'Jakarta Pusat', '0', '2', ' -', '08824373XXXX', 'Denny Lim@gmail.com', '1', '0'),
(696, 0, 'Jyoti Lekhraj Budhrani', 'P', '0000-00-00', 'Karawang', '1', '1', ' -', '08775476XXXX', 'Jyoti Lekhraj Budhrani@gmail.com', '1', '0'),
(697, 0, 'Achmad Fadjar', 'P', '0000-00-00', 'Subang', '0', '1', ' -', '08188511XXXX', 'Achmad Fadjar@gmail.com', '1', '0'),
(698, 0, 'Harris Lasmana', 'L', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08824100XXXX', 'Harris Lasmana@gmail.com', '1', '0'),
(699, 0, 'Jocelin Yohan Yau', 'P', '0000-00-00', 'Ciamis', '1', '1', ' -', '08828459XXXX', 'Jocelin Yohan Yau@gmail.com', '1', '0'),
(700, 0, 'Herline Goenawan', 'L', '0000-00-00', 'Bogor', '1', '1', ' -', '08897023XXXX', 'Herline Goenawan@gmail.com', '1', '0'),
(701, 0, 'Angelique Stampfer', 'L', '0000-00-00', 'Karawang', '0', '1', ' -', '08977222XXXX', 'Angelique Stampfer@gmail.com', '1', '0'),
(702, 0, 'JOHAN SOEDIBJO', 'L', '0000-00-00', 'Subang', '1', '3', ' -', '08318444XXXX', 'JOHAN SOEDIBJO@gmail.com', '1', '0'),
(703, 0, 'Erwin Gunawan', 'L', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08113699XXXX', 'Erwin Gunawan@gmail.com', '1', '0'),
(704, 0, 'Irwan Hermanto', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08529478XXXX', 'Irwan Hermanto@gmail.com', '1', '0'),
(705, 0, 'Andreas Kastono', 'P', '0000-00-00', 'Garut', '1', '3', ' -', '08827051XXXX', 'Andreas Kastono@gmail.com', '1', '0'),
(706, 0, 'Helen Turtan Setiawan', 'L', '0000-00-00', 'Soreang', '0', '1', ' -', '08319855XXXX', 'Helen Turtan Setiawan@gmail.com', '1', '0'),
(707, 0, 'CHRISTIAN SUGIARTO', 'L', '0000-00-00', 'Jakarta Timur', '0', '2', ' -', '08973779XXXX', 'CHRISTIAN SUGIARTO@gmail.com', '1', '0'),
(708, 0, 'Maxymilian Adelberd', 'P', '0000-00-00', ' Jakarta Selatan', '0', '2', ' -', '08211497XXXX', 'Maxymilian Adelberd@gmail.com', '1', '0'),
(709, 0, 'ANDI PRAVIDIA SALIMAN', 'L', '0000-00-00', 'Cimahi', '0', '3', ' -', '08217898XXXX', 'ANDI PRAVIDIA SALIMAN@gmail.com', '1', '0'),
(710, 0, 'Bong Tjen Khun', 'L', '0000-00-00', 'Indramayu', '0', '1', ' -', '08159132XXXX', 'Bong Tjen Khun@gmail.com', '1', '0'),
(711, 0, 'LIKE RANI IMANTO RACHMAT', 'L', '0000-00-00', 'Singaparna', '0', '1', ' -', '08899991XXXX', 'LIKE RANI IMANTO RACHMAT@gmail.com', '1', '0'),
(712, 0, 'Didit Budijarto', 'P', '0000-00-00', 'Kuningan', '0', '1', ' -', '08126626XXXX', 'Didit Budijarto@gmail.com', '1', '0'),
(713, 0, 'MANGGI TARUNA HABIR', 'L', '0000-00-00', 'Bekasi', '1', '1', ' -', '08985131XXXX', 'MANGGI TARUNA HABIR@gmail.com', '1', '0'),
(714, 0, 'Ignanto Sandjojo', 'L', '0000-00-00', 'Cibinong', '1', '1', ' -', '08985085XXXX', 'Ignanto Sandjojo@gmail.com', '1', '0'),
(715, 0, 'Devin Wirawan', 'L', '0000-00-00', 'Sumber', '1', '1', ' -', '08197454XXXX', 'Devin Wirawan@gmail.com', '1', '0'),
(716, 0, 'Maggie', 'P', '0000-00-00', 'Jakarta Timur', '0', '3', ' -', '08584897XXXX', 'Maggie@gmail.com', '1', '0'),
(717, 0, 'Linawidjaja Kusprajudi', 'L', '0000-00-00', 'Singaparna', '1', '2', ' -', '08586547XXXX', 'Linawidjaja Kusprajudi@gmail.com', '1', '0'),
(718, 0, 'Juliati Widjaja', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '2', ' -', '08881328XXXX', 'Juliati Widjaja@gmail.com', '1', '0'),
(719, 0, 'Melly Kristanti', 'P', '0000-00-00', 'Parigi', '1', '3', ' -', '08384502XXXX', 'Melly Kristanti@gmail.com', '1', '0'),
(720, 0, 'Freddy Sumartono Santoso', 'L', '0000-00-00', 'Karawang', '1', '3', ' -', '08135328XXXX', 'Freddy Sumartono Santoso@gmail.com', '1', '0'),
(721, 0, 'Joe Su Fun', 'L', '0000-00-00', 'Cibinong', '0', '1', ' -', '08158607XXXX', 'Joe Su Fun@gmail.com', '1', '0'),
(722, 0, 'Bob Yanuar', 'P', '0000-00-00', 'Ciamis', '1', '1', ' -', '08576222XXXX', 'Bob Yanuar@gmail.com', '1', '0'),
(723, 0, 'Badurmana Dorpi Parlindungan', 'L', '0000-00-00', 'Bogor', '1', '1', ' -', '08561177XXXX', 'Badurmana Dorpi Parlindungan@gmail.com', '1', '0'),
(724, 0, 'HARJOSENO', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08316992XXXX', 'HARJOSENO@gmail.com', '1', '0'),
(725, 0, 'Dewi Suryati Liauw', 'L', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08149476XXXX', 'Dewi Suryati Liauw@gmail.com', '1', '0'),
(726, 0, 'Michael Goenawan', 'L', '0000-00-00', 'Sumedang', '1', '3', ' -', '08577558XXXX', 'Michael Goenawan@gmail.com', '1', '0'),
(727, 0, 'Mohan N. Mirpuri', 'L', '0000-00-00', 'Singaparna', '0', '3', ' -', '08178655XXXX', 'Mohan N. Mirpuri@gmail.com', '1', '0'),
(728, 0, 'Ishak Sumarno', 'P', '0000-00-00', 'Karawang', '0', '3', ' -', '08966414XXXX', 'Ishak Sumarno@gmail.com', '1', '0'),
(729, 0, 'Hilda Noveda Kaliman', 'P', '0000-00-00', 'Cirebon', '1', '2', ' -', '08784134XXXX', 'Hilda Noveda Kaliman@gmail.com', '1', '0'),
(730, 0, 'Hartono Gunawan', 'P', '0000-00-00', 'Cimahi', '1', '1', ' -', '08969387XXXX', 'Hartono Gunawan@gmail.com', '1', '0'),
(732, 0, 'Jonas Jahja', 'L', '0000-00-00', 'Cibinong', '1', '3', ' -', '08115151XXXX', 'Jonas Jahja@gmail.com', '1', '0'),
(733, 0, 'BASIR B. NASIKUN', 'L', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08774726XXXX', 'BASIR B. NASIKUN@gmail.com', '1', '0'),
(734, 0, 'Freddyanto Tirtadjaja', 'L', '0000-00-00', 'Bekasi', '0', '1', ' -', '08565071XXXX', 'Freddyanto Tirtadjaja@gmail.com', '1', '0'),
(735, 0, 'Jimmy Tjahjanto', 'L', '0000-00-00', 'Sumber', '1', '1', ' -', '08974695XXXX', 'Jimmy Tjahjanto@gmail.com', '1', '0'),
(736, 0, 'Husin Suliawan', 'P', '0000-00-00', 'Karawang', '1', '2', ' -', '08891410XXXX', 'Husin Suliawan@gmail.com', '1', '0'),
(737, 0, 'Aris Agung Budiman', 'L', '0000-00-00', 'Cirebon', '0', '2', ' -', '08385606XXXX', 'Aris Agung Budiman@gmail.com', '1', '0'),
(738, 0, 'EKO SUKAMTO', 'P', '0000-00-00', 'Jakarta Barat', '0', '3', ' -', '08313313XXXX', 'EKO SUKAMTO@gmail.com', '1', '0'),
(739, 0, 'KAZAN GUNAWAN', 'P', '0000-00-00', 'Sumber', '0', '1', ' -', '08783202XXXX', 'KAZAN GUNAWAN@gmail.com', '1', '0'),
(740, 0, 'Bayu Irianto', 'P', '0000-00-00', 'Garut', '1', '3', ' -', '08968061XXXX', 'Bayu Irianto@gmail.com', '1', '0'),
(741, 0, 'Jimmy Namara', 'L', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08384083XXXX', 'Jimmy Namara@gmail.com', '1', '0'),
(742, 0, 'ASWADI', 'L', '0000-00-00', 'Tasikmalaya', '1', '3', ' -', '08182566XXXX', 'ASWADI@gmail.com', '1', '0'),
(743, 0, 'Margareth Maria Regina Budhiparama', 'L', '0000-00-00', 'Bandung', '0', '1', ' -', '08529272XXXX', 'Margareth Maria Regina Budhiparama@gmail.com', '1', '0'),
(744, 0, 'Edo Djunaydi', 'L', '0000-00-00', 'Jakarta Barat', '0', '2', ' -', '08964390XXXX', 'Edo Djunaydi@gmail.com', '1', '0'),
(745, 0, 'Hanson Ramli', 'L', '0000-00-00', 'Garut', '1', '1', ' -', '08188552XXXX', 'Hanson Ramli@gmail.com', '1', '0'),
(746, 0, 'Anwar Lim', 'L', '0000-00-00', 'Sumedang', '1', '3', ' -', '08773087XXXX', 'Anwar Lim@gmail.com', '1', '0'),
(747, 0, 'Hendro Setiawan', 'P', '0000-00-00', 'Subang', '0', '3', ' -', '08579866XXXX', 'Hendro Setiawan@gmail.com', '1', '0'),
(748, 0, 'Fong/Aiwy', 'P', '0000-00-00', 'Tasikmalaya', '0', '2', ' -', '08572578XXXX', 'Fong/Aiwy@gmail.com', '1', '0'),
(749, 0, 'Douglas Vincent Tingey', 'L', '0000-00-00', 'Singaparna', '0', '1', ' -', '08591521XXXX', 'Douglas Vincent Tingey@gmail.com', '1', '0'),
(750, 0, 'Henrianto Kuswendi', 'L', '0000-00-00', 'Parigi', '1', '3', ' -', '08994033XXXX', 'Henrianto Kuswendi@gmail.com', '1', '0'),
(751, 0, 'EKA SINTO KASIH TJIA', 'L', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08288998XXXX', 'EKA SINTO KASIH TJIA@gmail.com', '1', '0'),
(752, 0, 'Dewi Novianawati', 'P', '0000-00-00', 'Jakarta Timur', '0', '1', ' -', '08821314XXXX', 'Dewi Novianawati@gmail.com', '1', '0'),
(753, 0, 'Elvina Jonas Jahja', 'L', '0000-00-00', 'Singaparna', '0', '1', ' -', '08817870XXXX', 'Elvina Jonas Jahja@gmail.com', '1', '0'),
(754, 0, 'Muhammad Alatas', 'P', '0000-00-00', 'Parigi', '1', '1', ' -', '08598253XXXX', 'Muhammad Alatas@gmail.com', '1', '0');
INSERT INTO `karyawan` (`karyawan_id`, `pos_id`, `nama_karyawan`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `status_menikah`, `agama`, `alamat`, `no_hp`, `email`, `status_karyawan`, `hapus`) VALUES
(755, 0, 'FIFI WIRIADINATA', 'L', '0000-00-00', 'Cibinong', '0', '1', ' -', '08979219XXXX', 'FIFI WIRIADINATA@gmail.com', '1', '0'),
(756, 0, 'Fabian Gelael', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08898545XXXX', 'Fabian Gelael@gmail.com', '1', '0'),
(757, 0, 'Alan Clark', 'P', '0000-00-00', 'Bekasi', '1', '2', ' -', '08152285XXXX', 'Alan Clark@gmail.com', '1', '0'),
(758, 0, 'Doni Irawan', 'L', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08111113XXXX', 'Doni Irawan@gmail.com', '1', '0'),
(759, 0, 'Leny I. Wangsawidjaja', 'L', '0000-00-00', 'Jakarta Pusat', '0', '3', ' -', '08118165XXXX', 'Leny I. Wangsawidjaja@gmail.com', '1', '0'),
(760, 0, 'Chandra Widjaja', 'P', '0000-00-00', 'Soreang', '0', '2', ' -', '08984599XXXX', 'Chandra Widjaja@gmail.com', '1', '0'),
(761, 0, 'Febrina Sari Bak', 'L', '0000-00-00', 'Jakarta Timur', '1', '2', ' -', '08583244XXXX', 'Febrina Sari Bak@gmail.com', '1', '0'),
(762, 0, 'Cameron Robert Knox', 'P', '0000-00-00', 'Subang', '1', '1', ' -', '08586486XXXX', 'Cameron Robert Knox@gmail.com', '1', '0'),
(763, 0, 'Darwin Sutanto', 'P', '0000-00-00', 'Ciamis', '0', '1', ' -', '08199896XXXX', 'Darwin Sutanto@gmail.com', '1', '0'),
(764, 0, 'Irwan Atmadja Dinata', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '3', ' -', '08111582XXXX', 'Irwan Atmadja Dinata@gmail.com', '1', '0'),
(765, 0, 'Celin Tanardi', 'P', '0000-00-00', 'Sumedang', '1', '3', ' -', '08983465XXXX', 'Celin Tanardi@gmail.com', '1', '0'),
(766, 0, 'Choo Khee', 'L', '0000-00-00', 'Subang', '1', '2', ' -', '08964443XXXX', 'Choo Khee@gmail.com', '1', '0'),
(767, 0, 'CHRISTIE RUSSELL CARTER', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '3', ' -', '08964967XXXX', 'CHRISTIE RUSSELL CARTER@gmail.com', '1', '0'),
(768, 0, 'Endang Soertikanty', 'L', '0000-00-00', 'Sumedang', '0', '3', ' -', '08384440XXXX', 'Endang Soertikanty@gmail.com', '1', '0'),
(769, 0, 'Herlinah Soetemo', 'L', '0000-00-00', 'Cibinong', '1', '1', ' -', '08588836XXXX', 'Herlinah Soetemo@gmail.com', '1', '0'),
(770, 0, 'Mochamad Adnan', 'P', '0000-00-00', 'Purwakarta', '1', '3', ' -', '08126149XXXX', 'Mochamad Adnan@gmail.com', '1', '0'),
(771, 0, 'Liliawati Rahardjo', 'L', '0000-00-00', 'Cibinong', '1', '3', ' -', '08196387XXXX', 'Liliawati Rahardjo@gmail.com', '1', '0'),
(772, 0, 'Hendra Alamsjah', 'L', '0000-00-00', ' Jakarta Selatan', '0', '1', ' -', '08974733XXXX', 'Hendra Alamsjah@gmail.com', '1', '0'),
(773, 0, 'Hen gky Kunta Adjie', 'L', '0000-00-00', 'Parigi', '1', '3', ' -', '08148651XXXX', 'Hen gky Kunta Adjie@gmail.com', '1', '0'),
(774, 0, 'ANDREW MELLON PRIASMORO', 'L', '0000-00-00', 'Bogor', '0', '2', ' -', '08384558XXXX', 'ANDREW MELLON PRIASMORO@gmail.com', '1', '0'),
(775, 0, 'David Nico Sutanto', 'P', '0000-00-00', 'Jakarta Utara', '0', '2', ' -', '08168285XXXX', 'David Nico Sutanto@gmail.com', '1', '0'),
(776, 0, 'Jimmy Welianto Siauw', 'L', '0000-00-00', 'Pelabuhan Ratu', '1', '1', ' -', '08774278XXXX', 'Jimmy Welianto Siauw@gmail.com', '1', '0'),
(777, 0, 'Budi Mulio Utomo', 'L', '0000-00-00', 'Ciamis', '0', '1', ' -', '08963184XXXX', 'Budi Mulio Utomo@gmail.com', '1', '0'),
(778, 0, 'Alanberg Pte. Ltd.', 'L', '0000-00-00', 'Cisaat', '0', '2', ' -', '08144087XXXX', 'Alanberg Pte. Ltd.@gmail.com', '1', '0'),
(779, 0, 'Markun', 'P', '0000-00-00', 'Garut', '0', '3', ' -', '08153842XXXX', 'Markun@gmail.com', '1', '0'),
(780, 0, 'Linda Ng', 'P', '0000-00-00', 'Jakarta Utara', '0', '1', ' -', '08567113XXXX', 'Linda Ng@gmail.com', '1', '0'),
(781, 0, 'Johana Poedjokerto', 'P', '0000-00-00', 'Jakarta Utara', '0', '3', ' -', '08899513XXXX', 'Johana Poedjokerto@gmail.com', '1', '0'),
(782, 0, 'Evi Wikarsa', 'P', '0000-00-00', 'Jakarta Pusat', '0', '2', ' -', '08972571XXXX', 'Evi Wikarsa@gmail.com', '1', '0'),
(783, 0, 'ANITA RATNASARI', 'L', '0000-00-00', 'Parigi', '1', '3', ' -', '08172236XXXX', 'ANITA RATNASARI@gmail.com', '1', '0'),
(784, 0, 'Elly Lestari Adiutama', 'L', '0000-00-00', 'Bekasi', '0', '3', ' -', '08138638XXXX', 'Elly Lestari Adiutama@gmail.com', '1', '0'),
(785, 0, 'Lina Harjanti Latif', 'P', '0000-00-00', 'Depok', '1', '3', ' -', '08117353XXXX', 'Lina Harjanti Latif@gmail.com', '1', '0'),
(786, 0, 'Haruhiko', 'L', '0000-00-00', 'Subang', '0', '1', ' -', '08183399XXXX', 'Haruhiko@gmail.com', '1', '0'),
(787, 0, 'I Nengah Bagiada', 'P', '0000-00-00', 'Sumber', '0', '2', ' -', '08137067XXXX', 'I Nengah Bagiada@gmail.com', '1', '0'),
(788, 0, 'CHAN HIONG POH', 'L', '0000-00-00', 'Bekasi', '0', '1', ' -', '08978702XXXX', 'CHAN HIONG POH@gmail.com', '1', '0'),
(789, 0, 'Kokarjadi Chandra', 'P', '0000-00-00', 'Ciamis', '1', '1', ' -', '08111637XXXX', 'Kokarjadi Chandra@gmail.com', '1', '0'),
(790, 0, 'Mermeden Ltd', 'P', '0000-00-00', 'Ciamis', '0', '1', ' -', '08968202XXXX', 'Mermeden Ltd@gmail.com', '1', '0'),
(791, 0, 'I Wayan Arya', 'L', '0000-00-00', 'Tasikmalaya', '1', '1', ' -', '08813752XXXX', 'I Wayan Arya@gmail.com', '1', '0'),
(792, 0, 'KAKAN SUKANDA DINATA', 'L', '0000-00-00', 'Bekasi', '1', '1', ' -', '08586530XXXX', 'KAKAN SUKANDA DINATA@gmail.com', '1', '0'),
(793, 0, 'Marco Baldini', 'P', '0000-00-00', 'Majalengka', '0', '2', ' -', '08564769XXXX', 'Marco Baldini@gmail.com', '1', '0'),
(794, 0, 'Christina Sumarlin Pribadi', 'P', '0000-00-00', 'Jakarta Timur', '1', '2', ' -', '08578092XXXX', 'Christina Sumarlin Pribadi@gmail.com', '1', '0'),
(795, 0, 'Bambang Sugianto', 'L', '0000-00-00', 'Jakarta Utara', '1', '3', ' -', '08988777XXXX', 'Bambang Sugianto@gmail.com', '1', '0'),
(796, 0, 'Masterclass Ltd', 'P', '0000-00-00', 'Karawang', '0', '1', ' -', '08192838XXXX', 'Masterclass Ltd@gmail.com', '1', '0'),
(797, 0, 'Asia Consulting and Investment Limited', 'P', '0000-00-00', 'Kuningan', '1', '1', ' -', '08582086XXXX', 'Asia Consulting and Investment Limited@gmail.com', '1', '0'),
(798, 0, 'Djauhara Faizal', 'L', '0000-00-00', 'Bekasi', '0', '1', ' -', '08182264XXXX', 'Djauhara Faizal@gmail.com', '1', '0'),
(799, 0, 'Ilham Akbar Habibie', 'L', '0000-00-00', 'Cibinong', '0', '2', ' -', '08286554XXXX', 'Ilham Akbar Habibie@gmail.com', '1', '0'),
(800, 0, 'MAYA HARTONO', 'P', '0000-00-00', 'Cirebon', '1', '1', ' -', '08191641XXXX', 'MAYA HARTONO@gmail.com', '1', '0'),
(801, 0, 'Gareth Joh LEWIS', 'P', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08282085XXXX', 'Gareth Joh LEWIS@gmail.com', '1', '0'),
(802, 0, 'Mulianto Tanaga', 'P', '0000-00-00', 'Cibinong', '0', '3', ' -', '08883861XXXX', 'Mulianto Tanaga@gmail.com', '1', '0'),
(803, 0, 'Mahesa Alit Pramesty', 'P', '0000-00-00', 'Bandung', '0', '1', ' -', '08285076XXXX', 'Mahesa Alit Pramesty@gmail.com', '1', '0'),
(804, 0, 'Dian Muljani Soedarjo', 'L', '0000-00-00', 'Jakarta Pusat', '0', '2', ' -', '08992143XXXX', 'Dian Muljani Soedarjo@gmail.com', '1', '0'),
(805, 0, 'Meranti Handajani Serad', 'P', '0000-00-00', 'Cisaat', '0', '2', ' -', '08981604XXXX', 'Meranti Handajani Serad@gmail.com', '1', '0'),
(806, 0, 'Alice Haryono', 'L', '0000-00-00', 'Cianjur', '0', '3', ' -', '08966008XXXX', 'Alice Haryono@gmail.com', '1', '0'),
(807, 0, 'Diah Soemedi', 'L', '0000-00-00', 'Karawang', '0', '2', ' -', '08553136XXXX', 'Diah Soemedi@gmail.com', '1', '0'),
(808, 0, 'HADI GUNAWAN', 'L', '0000-00-00', 'Cisaat', '0', '3', ' -', '08162698XXXX', 'HADI GUNAWAN@gmail.com', '1', '0'),
(809, 0, 'Kiki Barki', 'P', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08829518XXXX', 'Kiki Barki@gmail.com', '1', '0'),
(810, 0, 'Anthony Salim', 'L', '0000-00-00', 'Karawang', '0', '2', ' -', '08286764XXXX', 'Anthony Salim@gmail.com', '1', '0'),
(811, 0, 'DARMAWANSJAH SETIAWAN', 'L', '0000-00-00', 'Parigi', '0', '1', ' -', '08142783XXXX', 'DARMAWANSJAH SETIAWAN@gmail.com', '1', '0'),
(812, 0, 'Hartono Sundoro Hosea', 'L', '0000-00-00', 'Jakarta Timur', '1', '3', ' -', '08218513XXXX', 'Hartono Sundoro Hosea@gmail.com', '1', '0'),
(813, 0, 'Irwan Siregar', 'P', '0000-00-00', 'Cibinong', '1', '1', ' -', '08197810XXXX', 'Irwan Siregar@gmail.com', '1', '0'),
(814, 0, 'LIEM SIN HUANG', 'P', '0000-00-00', 'Parigi', '1', '1', ' -', '08111738XXXX', 'LIEM SIN HUANG@gmail.com', '1', '0'),
(815, 0, 'LIM LIMMAN NUGROHO', 'L', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08567414XXXX', 'LIM LIMMAN NUGROHO@gmail.com', '1', '0'),
(816, 0, 'Bonny Budi Setiawan', 'P', '0000-00-00', 'Jakarta Pusat', '1', '3', ' -', '08285420XXXX', 'Bonny Budi Setiawan@gmail.com', '1', '0'),
(817, 0, 'John Gordon McFadzien', 'L', '0000-00-00', 'Sumedang', '0', '1', ' -', '08115469XXXX', 'John Gordon McFadzien@gmail.com', '1', '0'),
(818, 0, 'Joso Ramli', 'P', '0000-00-00', 'Cimahi', '1', '3', ' -', '08592564XXXX', 'Joso Ramli@gmail.com', '1', '0'),
(819, 0, 'MARY GANASUTRISNA', 'L', '0000-00-00', ' Jakarta Selatan', '0', '2', ' -', '08118305XXXX', 'MARY GANASUTRISNA@gmail.com', '1', '0'),
(820, 0, 'KARTA WIGUNA', 'P', '0000-00-00', 'Bogor', '1', '1', ' -', '08194394XXXX', 'KARTA WIGUNA@gmail.com', '1', '0'),
(821, 0, 'JOHAN T. GILBERT', 'L', '0000-00-00', 'Garut', '0', '2', ' -', '08782313XXXX', 'JOHAN T. GILBERT@gmail.com', '1', '0'),
(822, 0, 'Herlina', 'P', '0000-00-00', 'Garut', '0', '3', ' -', '08972360XXXX', 'Herlina@gmail.com', '1', '0'),
(823, 0, 'Mohammad Hidayat Hasan', 'L', '0000-00-00', 'Garut', '0', '3', ' -', '08569727XXXX', 'Mohammad Hidayat Hasan@gmail.com', '1', '0'),
(824, 0, 'Christopher Fong', 'L', '0000-00-00', 'Bekasi', '0', '3', ' -', '08171198XXXX', 'Christopher Fong@gmail.com', '1', '0'),
(825, 0, 'MEDINA LATIEF', 'P', '0000-00-00', 'Indramayu', '0', '1', ' -', '08529236XXXX', 'MEDINA LATIEF@gmail.com', '1', '0'),
(826, 0, 'Ivantara Dviyudha', 'L', '0000-00-00', 'Purwakarta', '0', '2', ' -', '08964199XXXX', 'Ivantara Dviyudha@gmail.com', '1', '0'),
(827, 0, 'Gunawan Subagio', 'L', '0000-00-00', 'Bandung', '1', '2', ' -', '08186810XXXX', 'Gunawan Subagio@gmail.com', '1', '0'),
(828, 0, 'Andrew I Sriro', 'L', '0000-00-00', 'Jakarta Utara', '0', '3', ' -', '08198951XXXX', 'Andrew I Sriro@gmail.com', '1', '0'),
(829, 0, 'LE PURNA HARJANI', 'P', '0000-00-00', 'Cianjur', '1', '2', ' -', '08577182XXXX', 'LE PURNA HARJANI@gmail.com', '1', '0'),
(830, 0, 'Efendi Boedhiman', 'P', '0000-00-00', 'Ciamis', '0', '3', ' -', '08537812XXXX', 'Efendi Boedhiman@gmail.com', '1', '0'),
(831, 0, 'Andy Nugroho Purwohardono', 'L', '0000-00-00', 'Jakarta Barat', '1', '3', ' -', '08982181XXXX', 'Andy Nugroho Purwohardono@gmail.com', '1', '0'),
(832, 0, 'Budi Yanto Lusli', 'L', '0000-00-00', 'Cianjur', '1', '3', ' -', '08893296XXXX', 'Budi Yanto Lusli@gmail.com', '1', '0'),
(833, 0, 'Darminto', 'L', '0000-00-00', 'Parigi', '1', '2', ' -', '08523685XXXX', 'Darminto@gmail.com', '1', '0'),
(834, 0, 'HERRY KARYANING CIPTO', 'P', '0000-00-00', 'Bogor', '1', '2', ' -', '08526142XXXX', 'HERRY KARYANING CIPTO@gmail.com', '1', '0'),
(835, 0, 'Andi Achmad Dara', 'L', '0000-00-00', 'Bogor', '0', '2', ' -', '08317817XXXX', 'Andi Achmad Dara@gmail.com', '1', '0'),
(836, 0, 'JOHNNY', 'L', '0000-00-00', 'Tasikmalaya', '1', '3', ' -', '08111130XXXX', 'JOHNNY@gmail.com', '1', '0'),
(837, 0, 'Eddy Sutandinata', 'L', '0000-00-00', 'Sumedang', '0', '3', ' -', '08571836XXXX', 'Eddy Sutandinata@gmail.com', '1', '0'),
(838, 0, 'Aam Dewi Hamidah', 'L', '0000-00-00', 'Majalengka', '0', '2', ' -', '08123226XXXX', 'Aam Dewi Hamidah@gmail.com', '1', '0'),
(839, 0, 'Kiki Sutantyo', 'P', '0000-00-00', 'Cimahi', '1', '3', ' -', '08966107XXXX', 'Kiki Sutantyo@gmail.com', '1', '0'),
(840, 0, 'Fensa Sofyan', 'L', '0000-00-00', 'Jakarta Barat', '0', '2', ' -', '08533746XXXX', 'Fensa Sofyan@gmail.com', '1', '0'),
(841, 0, 'Junanda Syarfuan', 'P', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08773946XXXX', 'Junanda Syarfuan@gmail.com', '1', '0'),
(842, 0, 'Danan Kadarachman', 'L', '0000-00-00', 'Sumber', '0', '2', ' -', '08152541XXXX', 'Danan Kadarachman@gmail.com', '1', '0'),
(843, 0, 'ADAM SAUTIN', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '2', ' -', '08978154XXXX', 'ADAM SAUTIN@gmail.com', '1', '0'),
(844, 0, 'Jiohan Sebastian', 'L', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08783493XXXX', 'Jiohan Sebastian@gmail.com', '1', '0'),
(845, 0, 'Henny Harmani Wirjosoekarto', 'P', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08113033XXXX', 'Henny Harmani Wirjosoekarto@gmail.com', '1', '0'),
(846, 0, 'Herry Mirza Putera', 'L', '0000-00-00', 'Majalengka', '0', '3', ' -', '08167353XXXX', 'Herry Mirza Putera@gmail.com', '1', '0'),
(847, 0, 'Daniel Podiman', 'P', '0000-00-00', 'Bekasi', '1', '1', ' -', '08551199XXXX', 'Daniel Podiman@gmail.com', '1', '0'),
(848, 0, 'FERDINAND JOSEF WONGKAREN', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08213356XXXX', 'FERDINAND JOSEF WONGKAREN@gmail.com', '1', '0'),
(849, 0, 'Catherine Gina Hambali', 'L', '0000-00-00', 'Pelabuhan Ratu', '1', '1', ' -', '08553378XXXX', 'Catherine Gina Hambali@gmail.com', '1', '0'),
(850, 0, 'Djoni Muchsin', 'P', '0000-00-00', 'Cirebon', '0', '2', ' -', '08139230XXXX', 'Djoni Muchsin@gmail.com', '1', '0'),
(851, 0, 'Johnnie Hermanto', 'L', '0000-00-00', 'Soreang', '0', '3', ' -', '08571599XXXX', 'Johnnie Hermanto@gmail.com', '1', '0'),
(852, 0, 'Budi Widyadi', 'P', '0000-00-00', 'Singaparna', '0', '1', ' -', '08798557XXXX', 'Budi Widyadi@gmail.com', '1', '0'),
(853, 0, 'Hotman Naiborhu', 'P', '0000-00-00', 'Jakarta Timur', '1', '2', ' -', '08821673XXXX', 'Hotman Naiborhu@gmail.com', '1', '0'),
(854, 0, 'Amelia Mulyono', 'L', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08388442XXXX', 'Amelia Mulyono@gmail.com', '1', '0'),
(855, 0, 'Erna Widyastuti', 'L', '0000-00-00', 'Singaparna', '0', '3', ' -', '08158214XXXX', 'Erna Widyastuti@gmail.com', '1', '0'),
(856, 0, 'HENDARTA ATMADJA', 'L', '0000-00-00', 'Cianjur', '1', '3', ' -', '08163217XXXX', 'HENDARTA ATMADJA@gmail.com', '1', '0'),
(857, 0, 'JURNALIS & PONTO LAW FIRM', 'P', '0000-00-00', 'Bogor', '0', '1', ' -', '08119099XXXX', 'JURNALIS & PONTO LAW FIRM@gmail.com', '1', '0'),
(858, 0, 'Handrie Wirawan', 'P', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08284900XXXX', 'Handrie Wirawan@gmail.com', '1', '0'),
(859, 0, 'Execorp Limited', 'L', '0000-00-00', 'Purwakarta', '0', '3', ' -', '08194265XXXX', 'Execorp Limited@gmail.com', '1', '0'),
(860, 0, 'AMIN SUPRIYADI LIU', 'P', '0000-00-00', 'Jakarta Utara', '1', '1', ' -', '08599484XXXX', 'AMIN SUPRIYADI LIU@gmail.com', '1', '0'),
(861, 0, 'Awiek Lestari Rahayu', 'P', '0000-00-00', 'Jakarta Pusat', '1', '2', ' -', '08287965XXXX', 'Awiek Lestari Rahayu@gmail.com', '1', '0'),
(862, 0, 'Micheal Tjahjadi', 'P', '0000-00-00', 'Karawang', '1', '3', ' -', '08384003XXXX', 'Micheal Tjahjadi@gmail.com', '1', '0'),
(863, 0, 'Johnlee Mailoa', 'L', '0000-00-00', 'Bekasi', '1', '1', ' -', '08559009XXXX', 'Johnlee Mailoa@gmail.com', '1', '0'),
(864, 0, 'AJI BAYU WIRROTAMA', 'P', '0000-00-00', 'Sumedang', '0', '1', ' -', '08289409XXXX', 'AJI BAYU WIRROTAMA@gmail.com', '1', '0'),
(865, 0, 'Monalita Kardono Soegiarto', 'L', '0000-00-00', 'Cirebon', '0', '3', ' -', '08281058XXXX', 'Monalita Kardono Soegiarto@gmail.com', '1', '0'),
(866, 0, 'DJERISIN KUESAR', 'P', '0000-00-00', 'Bekasi', '1', '3', ' -', '08979120XXXX', 'DJERISIN KUESAR@gmail.com', '1', '0'),
(867, 0, 'Elmursil Moenzir', 'P', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08895361XXXX', 'Elmursil Moenzir@gmail.com', '1', '0'),
(868, 0, 'ANTON KUSUMA', 'P', '0000-00-00', 'Depok', '0', '3', ' -', '08145804XXXX', 'ANTON KUSUMA@gmail.com', '1', '0'),
(869, 0, 'Harto Djojo Nagaria', 'L', '0000-00-00', 'Bekasi', '0', '3', ' -', '08782541XXXX', 'Harto Djojo Nagaria@gmail.com', '1', '0'),
(870, 0, 'Mulianto Api Tanaga', 'L', '0000-00-00', 'Tasikmalaya', '0', '3', ' -', '08974658XXXX', 'Mulianto Api Tanaga@gmail.com', '1', '0'),
(871, 0, 'Eddy Handoko', 'L', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08181645XXXX', 'Eddy Handoko@gmail.com', '1', '0'),
(872, 0, 'Hiramsyah Sambudhy Thaib', 'P', '0000-00-00', 'Sumber', '0', '3', ' -', '08817803XXXX', 'Hiramsyah Sambudhy Thaib@gmail.com', '1', '0'),
(873, 0, 'Ernitha Halim', 'L', '0000-00-00', 'Cianjur', '0', '1', ' -', '08992477XXXX', 'Ernitha Halim@gmail.com', '1', '0'),
(874, 0, 'MOHIT RAMCHAND VASWANI', 'L', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08167570XXXX', 'MOHIT RAMCHAND VASWANI@gmail.com', '1', '0'),
(875, 0, 'Kiyomi Sato', 'L', '0000-00-00', 'Singaparna', '0', '1', ' -', '08891712XXXX', 'Kiyomi Sato@gmail.com', '1', '0'),
(876, 0, 'LINAWATI SOEJANTO', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '3', ' -', '08145176XXXX', 'LINAWATI SOEJANTO@gmail.com', '1', '0'),
(877, 0, 'Christianto', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '2', ' -', '08979675XXXX', 'Christianto@gmail.com', '1', '0'),
(878, 0, 'Anita Kalim', 'L', '0000-00-00', 'Bandung', '1', '3', ' -', '08122718XXXX', 'Anita Kalim@gmail.com', '1', '0'),
(879, 0, 'AGUS HARTONO LIE', 'P', '0000-00-00', 'Jakarta Pusat', '0', '3', ' -', '08134841XXXX', 'AGUS HARTONO LIE@gmail.com', '1', '0'),
(880, 0, 'Lucia Mogi', 'P', '0000-00-00', 'Cisaat', '1', '2', ' -', '08896779XXXX', 'Lucia Mogi@gmail.com', '1', '0'),
(881, 0, 'Alwi Alatas', 'P', '0000-00-00', 'Ciamis', '0', '1', ' -', '08381668XXXX', 'Alwi Alatas@gmail.com', '1', '0'),
(882, 0, 'ANDREW TANOTO', 'L', '0000-00-00', 'Karawang', '0', '3', ' -', '08797974XXXX', 'ANDREW TANOTO@gmail.com', '1', '0'),
(883, 0, 'Fonny Tedjajadi', 'P', '0000-00-00', 'Bogor', '0', '1', ' -', '08773734XXXX', 'Fonny Tedjajadi@gmail.com', '1', '0'),
(884, 0, 'Junus Siswadi', 'L', '0000-00-00', 'Jakarta Barat', '1', '2', ' -', '08176524XXXX', 'Junus Siswadi@gmail.com', '1', '0'),
(885, 0, 'Hiswara Natawindjaja', 'P', '0000-00-00', 'Cimahi', '0', '1', ' -', '08164615XXXX', 'Hiswara Natawindjaja@gmail.com', '1', '0'),
(886, 0, 'Angie Christina', 'P', '0000-00-00', 'Bandung', '0', '3', ' -', '08778255XXXX', 'Angie Christina@gmail.com', '1', '0'),
(887, 0, 'Bachrumsyah Hamzah', 'P', '0000-00-00', 'Cirebon', '1', '3', ' -', '08585148XXXX', 'Bachrumsyah Hamzah@gmail.com', '1', '0'),
(888, 0, 'Enny Lukitaning Diah', 'L', '0000-00-00', 'Cisaat', '0', '3', ' -', '08182548XXXX', 'Enny Lukitaning Diah@gmail.com', '1', '0'),
(889, 0, 'Herman Gozali', 'P', '0000-00-00', 'Majalengka', '1', '3', ' -', '08166078XXXX', 'Herman Gozali@gmail.com', '1', '0'),
(890, 0, 'Anthony Siswanto', 'L', '0000-00-00', 'Karawang', '0', '1', ' -', '08792623XXXX', 'Anthony Siswanto@gmail.com', '1', '0'),
(891, 0, 'JIMMY BUDIARTO', 'P', '0000-00-00', 'Singaparna', '1', '2', ' -', '08313317XXXX', 'JIMMY BUDIARTO@gmail.com', '1', '0'),
(892, 0, 'Dwiarti Widiyani', 'L', '0000-00-00', 'Bandung', '0', '1', ' -', '08539151XXXX', 'Dwiarti Widiyani@gmail.com', '1', '0'),
(893, 0, 'Fahmi Babra', 'P', '0000-00-00', 'Majalengka', '0', '1', ' -', '08892787XXXX', 'Fahmi Babra@gmail.com', '1', '0'),
(894, 0, 'Lukman Tirtaguna', 'L', '0000-00-00', 'Bandung', '1', '1', ' -', '08976321XXXX', 'Lukman Tirtaguna@gmail.com', '1', '0'),
(895, 0, 'Albert Suherman', 'L', '0000-00-00', 'Purwakarta', '1', '3', ' -', '08538096XXXX', 'Albert Suherman@gmail.com', '1', '0'),
(896, 0, 'Djuana Sulestio', 'L', '0000-00-00', 'Bogor', '1', '3', ' -', '08991505XXXX', 'Djuana Sulestio@gmail.com', '1', '0'),
(897, 0, 'Jacub Johannes The', 'P', '0000-00-00', 'Cisaat', '0', '1', ' -', '08962076XXXX', 'Jacub Johannes The@gmail.com', '1', '0'),
(898, 0, 'Indro Wibowo', 'P', '0000-00-00', 'Karawang', '0', '3', ' -', '08824998XXXX', 'Indro Wibowo@gmail.com', '1', '0'),
(899, 0, 'Indra Gunawan Wonowidjojo', 'L', '0000-00-00', 'Bogor', '0', '2', ' -', '08144920XXXX', 'Indra Gunawan Wonowidjojo@gmail.com', '1', '0'),
(900, 0, 'Juliana Kusnandar', 'L', '0000-00-00', 'Jakarta Timur', '1', '3', ' -', '08167064XXXX', 'Juliana Kusnandar@gmail.com', '1', '0'),
(901, 0, 'Franky Widjoyo', 'L', '0000-00-00', 'Cibinong', '1', '1', ' -', '08213246XXXX', 'Franky Widjoyo@gmail.com', '1', '0'),
(902, 0, 'Hendro Tjokrosetio', 'P', '0000-00-00', 'Jakarta Utara', '0', '2', ' -', '08151898XXXX', 'Hendro Tjokrosetio@gmail.com', '1', '0'),
(903, 0, 'Hajato Darsono', 'L', '0000-00-00', 'Pelabuhan Ratu', '1', '3', ' -', '08777434XXXX', 'Hajato Darsono@gmail.com', '1', '0'),
(904, 0, 'Gregorius Petrus Aji Wijaya', 'L', '0000-00-00', 'Ciamis', '1', '3', ' -', '08968085XXXX', 'Gregorius Petrus Aji Wijaya@gmail.com', '1', '0'),
(905, 0, 'Dodi Suhartono Abdul Kadir', 'L', '0000-00-00', 'Indramayu', '0', '2', ' -', '08996956XXXX', 'Dodi Suhartono Abdul Kadir@gmail.com', '1', '0'),
(906, 0, 'MUSTIKO SALEH', 'L', '0000-00-00', 'Subang', '0', '2', ' -', '08977936XXXX', 'MUSTIKO SALEH@gmail.com', '1', '0'),
(907, 0, 'Deborah Kent Janawati', 'L', '0000-00-00', 'Jakarta Timur', '0', '2', ' -', '08537262XXXX', 'Deborah Kent Janawati@gmail.com', '1', '0'),
(908, 0, 'Mugijanto Sugijono', 'P', '0000-00-00', 'Subang', '1', '2', ' -', '08566901XXXX', 'Mugijanto Sugijono@gmail.com', '1', '0'),
(909, 0, 'Lim Fie Tjong', 'P', '0000-00-00', 'Ciamis', '1', '3', ' -', '08527037XXXX', 'Lim Fie Tjong@gmail.com', '1', '0'),
(910, 0, 'Marvin C S Yong', 'P', '0000-00-00', 'Depok', '0', '2', ' -', '08777177XXXX', 'Marvin C S Yong@gmail.com', '1', '0'),
(911, 0, 'Lawrence Barki', 'P', '0000-00-00', 'Karawang', '0', '1', ' -', '08287467XXXX', 'Lawrence Barki@gmail.com', '1', '0'),
(912, 0, 'Koko Poernomo Santoso', 'L', '0000-00-00', 'Purwakarta', '0', '1', ' -', '08134365XXXX', 'Koko Poernomo Santoso@gmail.com', '1', '0'),
(913, 0, 'Kanisha Sunil Mirpuri', 'L', '0000-00-00', 'Kuningan', '1', '2', ' -', '08118369XXXX', 'Kanisha Sunil Mirpuri@gmail.com', '1', '0'),
(914, 0, 'ERICS YOSHAWIRJA', 'L', '0000-00-00', 'Sumedang', '0', '2', ' -', '08212033XXXX', 'ERICS YOSHAWIRJA@gmail.com', '1', '0'),
(915, 0, 'Andiko Ardi Purnomo', 'L', '0000-00-00', 'Garut', '1', '3', ' -', '08893734XXXX', 'Andiko Ardi Purnomo@gmail.com', '1', '0'),
(916, 0, 'Lunardi Basuki', 'P', '0000-00-00', 'Depok', '0', '1', ' -', '08284945XXXX', 'Lunardi Basuki@gmail.com', '1', '0'),
(917, 0, 'Melisa Patricia Tanoko', 'L', '0000-00-00', 'Depok', '1', '3', ' -', '08961173XXXX', 'Melisa Patricia Tanoko@gmail.com', '1', '0'),
(918, 0, 'Cecilia TEJOWARNO', 'L', '0000-00-00', 'Cianjur', '0', '2', ' -', '08135159XXXX', 'Cecilia TEJOWARNO@gmail.com', '1', '0'),
(919, 0, 'Anna Sri Dewi Sianto', 'L', '0000-00-00', 'Depok', '1', '2', ' -', '08215848XXXX', 'Anna Sri Dewi Sianto@gmail.com', '1', '0'),
(920, 0, 'Arifin Yohan', 'P', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08898405XXXX', 'Arifin Yohan@gmail.com', '1', '0'),
(921, 0, 'Don MacDonald', 'L', '0000-00-00', 'Parigi', '0', '3', ' -', '08974883XXXX', 'Don MacDonald@gmail.com', '1', '0'),
(922, 0, 'Hindarto Budiono', 'P', '0000-00-00', 'Bandung', '0', '2', ' -', '08561269XXXX', 'Hindarto Budiono@gmail.com', '1', '0'),
(923, 0, 'BELLYANAWATY BUDIMAN', 'P', '0000-00-00', 'Depok', '0', '1', ' -', '08198248XXXX', 'BELLYANAWATY BUDIMAN@gmail.com', '1', '0'),
(924, 0, 'Hastuti Sulistio', 'L', '0000-00-00', 'Cisaat', '0', '1', ' -', '08969606XXXX', 'Hastuti Sulistio@gmail.com', '1', '0'),
(925, 0, 'Beny Haryanto', 'L', '0000-00-00', 'Ciamis', '1', '3', ' -', '08132079XXXX', 'Beny Haryanto@gmail.com', '1', '0'),
(926, 0, 'Erwin Ciputra', 'L', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08125559XXXX', 'Erwin Ciputra@gmail.com', '1', '0'),
(927, 0, 'Gunawan Gusti', 'L', '0000-00-00', 'Soreang', '1', '1', ' -', '08152277XXXX', 'Gunawan Gusti@gmail.com', '1', '0'),
(928, 0, 'Gatot Kariyoso Wiroyudo', 'L', '0000-00-00', 'Jakarta Barat', '0', '2', ' -', '08824089XXXX', 'Gatot Kariyoso Wiroyudo@gmail.com', '1', '0'),
(929, 0, 'Abdullah Alatas', 'L', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08586042XXXX', 'Abdullah Alatas@gmail.com', '1', '0'),
(930, 0, 'Eko Suharto', 'L', '0000-00-00', 'Depok', '0', '1', ' -', '08788312XXXX', 'Eko Suharto@gmail.com', '1', '0'),
(931, 0, 'Aziar Zain', 'L', '0000-00-00', 'Jakarta Barat', '0', '3', ' -', '08124596XXXX', 'Aziar Zain@gmail.com', '1', '0'),
(932, 0, 'Adhi Utomo', 'P', '0000-00-00', 'Ciamis', '1', '2', ' -', '08579658XXXX', 'Adhi Utomo@gmail.com', '1', '0'),
(933, 0, 'FIFI NOVITA BASARAH KISYANTO', 'P', '0000-00-00', 'Bekasi', '0', '2', ' -', '08282999XXXX', 'FIFI NOVITA BASARAH KISYANTO@gmail.com', '1', '0'),
(934, 0, 'Faisol Soleh Masjkoer', 'L', '0000-00-00', 'Jakarta Utara', '0', '3', ' -', '08157973XXXX', 'Faisol Soleh Masjkoer@gmail.com', '1', '0'),
(935, 0, 'Janni', 'P', '0000-00-00', 'Cianjur', '0', '2', ' -', '08568944XXXX', 'Janni@gmail.com', '1', '0'),
(936, 0, 'Indriani Harsono', 'L', '0000-00-00', 'Garut', '0', '1', ' -', '08897210XXXX', 'Indriani Harsono@gmail.com', '1', '0'),
(937, 0, 'Chandler Capital Inc.', 'L', '0000-00-00', 'Bekasi', '0', '3', ' -', '08153713XXXX', 'Chandler Capital Inc.@gmail.com', '1', '0'),
(938, 0, 'Herdin Syafari', 'P', '0000-00-00', 'Cirebon', '0', '1', ' -', '08586819XXXX', 'Herdin Syafari@gmail.com', '1', '0'),
(939, 0, 'Djonny Koesoemahardjono', 'P', '0000-00-00', 'Bandung', '1', '2', ' -', '08219849XXXX', 'Djonny Koesoemahardjono@gmail.com', '1', '0'),
(940, 0, 'Ben Morice', 'L', '0000-00-00', 'Bekasi', '0', '2', ' -', '08287120XXXX', 'Ben Morice@gmail.com', '1', '0'),
(941, 0, 'Mustofa', 'L', '0000-00-00', 'Jakarta Barat', '0', '3', ' -', '08967121XXXX', 'Mustofa@gmail.com', '1', '0'),
(942, 0, 'IGNATIUS JOE BUDIMAN', 'L', '0000-00-00', 'Jakarta Utara', '1', '2', ' -', '08993580XXXX', 'IGNATIUS JOE BUDIMAN@gmail.com', '1', '0'),
(943, 0, 'Muljadi Budiman', 'L', '0000-00-00', ' Jakarta Selatan', '0', '2', ' -', '08989749XXXX', 'Muljadi Budiman@gmail.com', '1', '0'),
(944, 0, 'Jahja Santoso', 'L', '0000-00-00', 'Sumber', '0', '2', ' -', '08152738XXXX', 'Jahja Santoso@gmail.com', '1', '0'),
(945, 0, 'Hashim Djojohadikusumo', 'P', '0000-00-00', 'Majalengka', '1', '1', ' -', '08218925XXXX', 'Hashim Djojohadikusumo@gmail.com', '1', '0'),
(946, 0, 'Bambang Niaga Tjiputra', 'L', '0000-00-00', 'Jakarta Timur', '0', '2', ' -', '08527768XXXX', 'Bambang Niaga Tjiputra@gmail.com', '1', '0'),
(947, 0, 'HARYADI KUMALA', 'P', '0000-00-00', 'Purwakarta', '1', '1', ' -', '08571277XXXX', 'HARYADI KUMALA@gmail.com', '1', '0'),
(948, 0, 'I. Goesti Ben Kel Bagoes Oka', 'L', '0000-00-00', 'Bekasi', '0', '2', ' -', '08533309XXXX', 'I. Goesti Ben Kel Bagoes Oka@gmail.com', '1', '0'),
(949, 0, 'EDDY HALIM', 'P', '0000-00-00', 'Bandung', '1', '3', ' -', '08184045XXXX', 'EDDY HALIM@gmail.com', '1', '0'),
(950, 0, 'Husni Muchtar', 'P', '0000-00-00', 'Jakarta Timur', '0', '1', ' -', '08152931XXXX', 'Husni Muchtar@gmail.com', '1', '0'),
(951, 0, 'Kwee Suo Chie', 'P', '0000-00-00', 'Kuningan', '1', '2', ' -', '08782848XXXX', 'Kwee Suo Chie@gmail.com', '1', '0'),
(952, 0, 'Lina Soegiharto Leo', 'L', '0000-00-00', 'Cimahi', '1', '2', ' -', '08386231XXXX', 'Lina Soegiharto Leo@gmail.com', '1', '0'),
(953, 0, 'ANTHONY BRENT ELAM', 'L', '0000-00-00', 'Jakarta Pusat', '1', '2', ' -', '08159074XXXX', 'ANTHONY BRENT ELAM@gmail.com', '1', '0'),
(954, 0, 'GW Franklin Hall', 'P', '0000-00-00', 'Jakarta Pusat', '0', '2', ' -', '08178687XXXX', 'GW Franklin Hall@gmail.com', '1', '0'),
(955, 0, 'Juwita Lianty Suandi', 'L', '0000-00-00', 'Kuningan', '1', '2', ' -', '08152352XXXX', 'Juwita Lianty Suandi@gmail.com', '1', '0'),
(956, 0, 'Ina Irena Jonas Jahja', 'L', '0000-00-00', 'Karawang', '1', '2', ' -', '08816676XXXX', 'Ina Irena Jonas Jahja@gmail.com', '1', '0'),
(957, 0, 'Agoeng Noegroho', 'P', '0000-00-00', 'Majalengka', '0', '1', ' -', '08797236XXXX', 'Agoeng Noegroho@gmail.com', '1', '0'),
(958, 0, 'Morgan Tjoe', 'L', '0000-00-00', 'Garut', '1', '3', ' -', '08534846XXXX', 'Morgan Tjoe@gmail.com', '1', '0'),
(959, 0, 'Andry Irwan Djugo', 'L', '0000-00-00', 'Tasikmalaya', '1', '2', ' -', '08771409XXXX', 'Andry Irwan Djugo@gmail.com', '1', '0'),
(960, 0, 'Johanes Susilo', 'P', '0000-00-00', 'Cibinong', '0', '3', ' -', '08995283XXXX', 'Johanes Susilo@gmail.com', '1', '0'),
(961, 0, 'Akbar Yoso Trisedia', 'P', '0000-00-00', 'Jakarta Pusat', '0', '2', ' -', '08782565XXXX', 'Akbar Yoso Trisedia@gmail.com', '1', '0'),
(962, 0, 'Mohamad Noer', 'L', '0000-00-00', 'Ngamprah', '0', '3', ' -', '08977673XXXX', 'Mohamad Noer@gmail.com', '1', '0'),
(963, 0, 'LILY TAMIN', 'L', '0000-00-00', 'Cirebon', '0', '2', ' -', '08162936XXXX', 'LILY TAMIN@gmail.com', '1', '0'),
(964, 0, 'Hendra Harjadi', 'L', '0000-00-00', 'Jakarta Barat', '1', '3', ' -', '08775228XXXX', 'Hendra Harjadi@gmail.com', '1', '0'),
(965, 0, 'LIMIWATY LIE', 'L', '0000-00-00', 'Tasikmalaya', '0', '2', ' -', '08178478XXXX', 'LIMIWATY LIE@gmail.com', '1', '0'),
(966, 0, 'Meiriani Soetoyo', 'P', '0000-00-00', 'Bogor', '1', '3', ' -', '08787190XXXX', 'Meiriani Soetoyo@gmail.com', '1', '0'),
(967, 0, 'DEVI TRI ASMARASARI', 'L', '0000-00-00', 'Jakarta Pusat', '0', '3', ' -', '08988051XXXX', 'DEVI TRI ASMARASARI@gmail.com', '1', '0'),
(968, 0, 'Aubrey Bobb', 'P', '0000-00-00', 'Jakarta Barat', '1', '1', ' -', '08529323XXXX', 'Aubrey Bobb@gmail.com', '1', '0'),
(969, 0, 'Joesril Hainim', 'P', '0000-00-00', 'Jakarta Pusat', '0', '3', ' -', '08899408XXXX', 'Joesril Hainim@gmail.com', '1', '0'),
(970, 0, 'Jusuf Heryanto', 'L', '0000-00-00', 'Cibinong', '1', '1', ' -', '08218139XXXX', 'Jusuf Heryanto@gmail.com', '1', '0'),
(971, 0, 'Ago Harlim', 'P', '0000-00-00', 'Jakarta Utara', '1', '2', ' -', '08572462XXXX', 'Ago Harlim@gmail.com', '1', '0'),
(972, 0, 'Indra Gunawan', 'P', '0000-00-00', 'Ciamis', '0', '3', ' -', '08974257XXXX', 'Indra Gunawan@gmail.com', '1', '0'),
(973, 0, 'Bong Kiu Nio', 'P', '0000-00-00', 'Cimahi', '0', '2', ' -', '08137594XXXX', 'Bong Kiu Nio@gmail.com', '1', '0'),
(974, 0, 'ALDO PUTRA BRASALI', 'P', '0000-00-00', 'Majalengka', '0', '3', ' -', '08773925XXXX', 'ALDO PUTRA BRASALI@gmail.com', '1', '0'),
(975, 0, 'Gita Irawan Wirjawan', 'L', '0000-00-00', 'Depok', '0', '3', ' -', '08381874XXXX', 'Gita Irawan Wirjawan@gmail.com', '1', '0'),
(976, 0, 'Irene Tedja', 'P', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08551393XXXX', 'Irene Tedja@gmail.com', '1', '0'),
(977, 0, 'Daswi Rayawang', 'L', '0000-00-00', 'Indramayu', '0', '3', ' -', '08563528XXXX', 'Daswi Rayawang@gmail.com', '1', '0'),
(978, 0, 'ML&B Indonesia', 'L', '0000-00-00', 'Tasikmalaya', '0', '3', ' -', '08965303XXXX', 'ML&B Indonesia@gmail.com', '1', '0'),
(979, 0, 'ELSA DJAUHARI', 'P', '0000-00-00', 'Cibinong', '0', '3', ' -', '08187635XXXX', 'ELSA DJAUHARI@gmail.com', '1', '0'),
(980, 0, 'EDWIN MOHTAR', 'P', '0000-00-00', 'Jakarta Timur', '0', '2', ' -', '08111373XXXX', 'EDWIN MOHTAR@gmail.com', '1', '0'),
(981, 0, 'Jeffery Koes Wonsoo', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08211607XXXX', 'Jeffery Koes Wonsoo@gmail.com', '1', '0'),
(982, 0, 'Dian Sumeler', 'P', '0000-00-00', 'Jakarta Utara', '0', '2', ' -', '08185308XXXX', 'Dian Sumeler@gmail.com', '1', '0'),
(983, 0, 'AGUS SUSANTO', 'P', '0000-00-00', 'Ciamis', '1', '3', ' -', '08188117XXXX', 'AGUS SUSANTO@gmail.com', '1', '0'),
(984, 0, 'Kusumawati', 'L', '0000-00-00', 'Subang', '0', '1', ' -', '08131759XXXX', 'Kusumawati@gmail.com', '1', '0'),
(985, 0, 'Ang Lian Ping', 'L', '0000-00-00', 'Bekasi', '0', '1', ' -', '08889654XXXX', 'Ang Lian Ping@gmail.com', '1', '0'),
(986, 0, 'Agus Pranoto Setiadi', 'P', '0000-00-00', 'Soreang', '1', '2', ' -', '08115009XXXX', 'Agus Pranoto Setiadi@gmail.com', '1', '0'),
(987, 0, 'Henry Pribadi', 'L', '0000-00-00', 'Karawang', '1', '3', ' -', '08525035XXXX', 'Henry Pribadi@gmail.com', '1', '0'),
(988, 0, 'BUSTAMI', 'P', '0000-00-00', 'Indramayu', '0', '1', ' -', '08894191XXXX', 'BUSTAMI@gmail.com', '1', '0'),
(989, 0, 'HARDI KOESNADI', 'P', '0000-00-00', 'Cianjur', '1', '2', ' -', '08987231XXXX', 'HARDI KOESNADI@gmail.com', '1', '0'),
(990, 0, 'Adriana Maya Politon', 'L', '0000-00-00', 'Majalengka', '1', '2', ' -', '08115575XXXX', 'Adriana Maya Politon@gmail.com', '1', '0'),
(991, 0, 'Lilyani Tanoko', 'P', '0000-00-00', 'Karawang', '1', '3', ' -', '08157464XXXX', 'Lilyani Tanoko@gmail.com', '1', '0'),
(992, 0, 'Ade Tjakralaksana', 'L', '0000-00-00', 'Ciamis', '1', '2', ' -', '08972836XXXX', 'Ade Tjakralaksana@gmail.com', '1', '0'),
(993, 0, 'HONGKIE WIDJAYA KANG', 'P', '0000-00-00', 'Kuningan', '0', '2', ' -', '08285496XXXX', 'HONGKIE WIDJAYA KANG@gmail.com', '1', '0'),
(994, 0, 'Likin Handoko', 'L', '0000-00-00', 'Jakarta Timur', '0', '2', ' -', '08795205XXXX', 'Likin Handoko@gmail.com', '1', '0'),
(995, 0, 'Chu Jackson', 'L', '0000-00-00', 'Indramayu', '1', '2', ' -', '08789140XXXX', 'Chu Jackson@gmail.com', '1', '0'),
(997, 0, 'Liauw Sumiati', 'P', '0000-00-00', 'Purwakarta', '1', '2', ' -', '08776707XXXX', 'Liauw Sumiati@gmail.com', '1', '0'),
(998, 0, 'Jusuf Salman', 'L', '0000-00-00', 'Cirebon', '0', '1', ' -', '08596640XXXX', 'Jusuf Salman@gmail.com', '1', '0'),
(999, 0, 'ASHWANI CHOWDHRY', 'P', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08824086XXXX', 'ASHWANI CHOWDHRY@gmail.com', '1', '0'),
(1000, 0, 'Henry Suwignjo', 'P', '0000-00-00', 'Purwakarta', '0', '3', ' -', '08529117XXXX', 'Henry Suwignjo@gmail.com', '1', '0'),
(1001, 0, 'Jimmy Budhi', 'P', '0000-00-00', 'Sumber', '0', '3', ' -', '08976193XXXX', 'Jimmy Budhi@gmail.com', '1', '0'),
(1002, 0, 'Jeremy David Kemp', 'L', '0000-00-00', 'Cimahi', '0', '1', ' -', '08158492XXXX', 'Jeremy David Kemp@gmail.com', '1', '0'),
(1003, 0, 'Gemilang Investama', 'L', '0000-00-00', 'Bandung', '1', '3', ' -', '08776714XXXX', 'Gemilang Investama@gmail.com', '1', '0'),
(1004, 0, 'Efrem Wardhana', 'L', '0000-00-00', 'Jakarta Pusat', '1', '3', ' -', '08317070XXXX', 'Efrem Wardhana@gmail.com', '1', '0'),
(1005, 0, 'Ade Ryan Syarief', 'L', '0000-00-00', 'Depok', '1', '2', ' -', '08583158XXXX', 'Ade Ryan Syarief@gmail.com', '1', '0'),
(1006, 0, 'Budi Santoso Taruno Sembodo', 'P', '0000-00-00', 'Subang', '1', '3', ' -', '08131985XXXX', 'Budi Santoso Taruno Sembodo@gmail.com', '1', '0'),
(1007, 0, 'Herman Iskandar', 'L', '0000-00-00', 'Parigi', '0', '3', ' -', '08787947XXXX', 'Herman Iskandar@gmail.com', '1', '0'),
(1008, 0, 'Irma Mirzanti', 'L', '0000-00-00', 'Garut', '1', '3', ' -', '08825053XXXX', 'Irma Mirzanti@gmail.com', '1', '0'),
(1009, 0, 'Kusdianto Soewarno', 'P', '0000-00-00', 'Cisaat', '1', '2', ' -', '08777732XXXX', 'Kusdianto Soewarno@gmail.com', '1', '0'),
(1010, 0, 'Josef Indra Njoman', 'L', '0000-00-00', 'Bandung', '0', '2', ' -', '08964279XXXX', 'Josef Indra Njoman@gmail.com', '1', '0'),
(1011, 0, 'DEDDY HARIJANTO SUDARIJANTO', 'L', '0000-00-00', 'Majalengka', '0', '2', ' -', '08123229XXXX', 'DEDDY HARIJANTO SUDARIJANTO@gmail.com', '1', '0'),
(1012, 0, 'Laksamana Sukardi', 'L', '0000-00-00', 'Jakarta Pusat', '0', '3', ' -', '08962576XXXX', 'Laksamana Sukardi@gmail.com', '1', '0'),
(1013, 0, 'Andrew McKay', 'P', '0000-00-00', 'Singaparna', '0', '3', ' -', '08564820XXXX', 'Andrew McKay@gmail.com', '1', '0'),
(1014, 0, 'JULIATI WIDJOJO', 'P', '0000-00-00', 'Majalengka', '0', '2', ' -', '08171292XXXX', 'JULIATI WIDJOJO@gmail.com', '1', '0'),
(1015, 0, 'Kindarto Kohar', 'P', '0000-00-00', 'Depok', '0', '1', ' -', '08538701XXXX', 'Kindarto Kohar@gmail.com', '1', '0'),
(1016, 0, 'Ibrahim', 'P', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08537371XXXX', 'Ibrahim@gmail.com', '1', '0'),
(1017, 0, 'Dewi Livia Sari ', 'P', '0000-00-00', 'Cirebon', '0', '3', ' -', '08899197XXXX', 'Dewi Livia Sari@gmail.com', '1', '0'),
(1018, 0, 'FERNANDO ANTONIO GIL', 'P', '0000-00-00', 'Depok', '0', '1', ' -', '08588026XXXX', 'FERNANDO ANTONIO GIL@gmail.com', '1', '0'),
(1019, 0, 'Anil Kumar Lachman Panjabi', 'L', '0000-00-00', 'Cisaat', '0', '3', ' -', '08893219XXXX', 'Anil Kumar Lachman Panjabi@gmail.com', '1', '0'),
(1020, 0, 'David Widjaja', 'P', '0000-00-00', 'Parigi', '0', '1', ' -', '08142594XXXX', 'David Widjaja@gmail.com', '1', '0'),
(1021, 0, 'Lim Eng Khim', 'L', '0000-00-00', 'Cirebon', '0', '2', ' -', '08551656XXXX', 'Lim Eng Khim@gmail.com', '1', '0'),
(1022, 0, 'Endang Susila Budi', 'P', '0000-00-00', 'Depok', '1', '1', ' -', '08778685XXXX', 'Endang Susila Budi@gmail.com', '1', '0'),
(1023, 0, 'Josephyne Widjaja', 'L', '0000-00-00', 'Cianjur', '0', '3', ' -', '08287601XXXX', 'Josephyne Widjaja@gmail.com', '1', '0'),
(1024, 0, 'James Kallman', 'L', '0000-00-00', 'Cimahi', '0', '1', ' -', '08891472XXXX', 'James Kallman@gmail.com', '1', '0'),
(1025, 0, 'Hendrik Suhardiman', 'L', '0000-00-00', 'Cirebon', '1', '1', ' -', '08574281XXXX', 'Hendrik Suhardiman@gmail.com', '1', '0'),
(1026, 0, 'Allan Tjahja Tjao', 'P', '0000-00-00', 'Bandung', '1', '1', ' -', '08826801XXXX', 'Allan Tjahja Tjao@gmail.com', '1', '0'),
(1027, 0, 'Johanes Kennedy Aritonang', 'L', '0000-00-00', 'Indramayu', '1', '3', ' -', '08774302XXXX', 'Johanes Kennedy Aritonang@gmail.com', '1', '0'),
(1028, 0, 'Jos Winata Wihardja', 'P', '0000-00-00', 'Cimahi', '1', '1', ' -', '08168183XXXX', 'Jos Winata Wihardja@gmail.com', '1', '0'),
(1029, 0, 'Ignatius Toni Gunawan', 'L', '0000-00-00', 'Sumedang', '0', '2', ' -', '08572204XXXX', 'Ignatius Toni Gunawan@gmail.com', '1', '0'),
(1030, 0, 'Henry Halomoan Sitanggang', 'L', '0000-00-00', 'Cibinong', '0', '3', ' -', '08165738XXXX', 'Henry Halomoan Sitanggang@gmail.com', '1', '0'),
(1031, 0, 'HENG Ijat Hong', 'P', '0000-00-00', 'Jakarta Timur', '0', '3', ' -', '08311747XXXX', 'HENG Ijat Hong@gmail.com', '1', '0'),
(1032, 0, 'Juliawati Budiman', 'L', '0000-00-00', 'Sumber', '1', '2', ' -', '08138541XXXX', 'Juliawati Budiman@gmail.com', '1', '0'),
(1033, 0, 'Muhammad Andre Pasha Djuanda', 'P', '0000-00-00', 'Cimahi', '0', '3', ' -', '08165038XXXX', 'Muhammad Andre Pasha Djuanda@gmail.com', '1', '0'),
(1034, 0, 'Burhansjah', 'L', '0000-00-00', 'Majalengka', '0', '1', ' -', '08556337XXXX', 'Burhansjah@gmail.com', '1', '0'),
(1035, 0, 'Bengt Carl Gustav Thornberg', 'L', '0000-00-00', 'Jakarta Utara', '1', '1', ' -', '08797117XXXX', 'Bengt Carl Gustav Thornberg@gmail.com', '1', '0'),
(1036, 0, 'Irwandy Ma Rajabasa', 'P', '0000-00-00', 'Cianjur', '1', '1', ' -', '08598875XXXX', 'Irwandy Ma Rajabasa@gmail.com', '1', '0'),
(1037, 0, 'David Alexander Yuwono', 'L', '0000-00-00', 'Cirebon', '0', '3', ' -', '08285441XXXX', 'David Alexander Yuwono@gmail.com', '1', '0'),
(1038, 0, 'Clarence Leonard Stratton', 'P', '0000-00-00', 'Cianjur', '0', '2', ' -', '08537838XXXX', 'Clarence Leonard Stratton@gmail.com', '1', '0'),
(1039, 0, 'Arjen Tridarma Darmawan', 'P', '0000-00-00', 'Sumber', '1', '1', ' -', '08785500XXXX', 'Arjen Tridarma Darmawan@gmail.com', '1', '0'),
(1040, 0, 'Eljay Limited', 'L', '0000-00-00', 'Soreang', '1', '2', ' -', '08586542XXXX', 'Eljay Limited@gmail.com', '1', '0'),
(1041, 0, 'Edgardo Abelarde Tinsay', 'P', '0000-00-00', 'Kuningan', '0', '2', ' -', '08898224XXXX', 'Edgardo Abelarde Tinsay@gmail.com', '1', '0'),
(1042, 0, 'Budi Surjana', 'L', '0000-00-00', 'Cimahi', '0', '2', ' -', '08386106XXXX', 'Budi Surjana@gmail.com', '1', '0'),
(1043, 0, 'Hadysugani Hoshi', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08893599XXXX', 'Hadysugani Hoshi@gmail.com', '1', '0'),
(1044, 0, 'AMINOTO SUTANDY', 'L', '0000-00-00', 'Singaparna', '0', '2', ' -', '08179483XXXX', 'AMINOTO SUTANDY@gmail.com', '1', '0'),
(1045, 0, 'Agustinus Wishnu Handoyono', 'P', '0000-00-00', 'Purwakarta', '0', '2', ' -', '08576336XXXX', 'Agustinus Wishnu Handoyono@gmail.com', '1', '0'),
(1046, 0, 'Eko Prasetyo Ang', 'P', '0000-00-00', 'Garut', '0', '2', ' -', '08117208XXXX', 'Eko Prasetyo Ang@gmail.com', '1', '0'),
(1047, 0, 'Chairul Tanjung', 'P', '0000-00-00', 'Sumedang', '0', '3', ' -', '08888777XXXX', 'Chairul Tanjung@gmail.com', '1', '0'),
(1048, 0, 'JANTI JAHJA', 'P', '0000-00-00', 'Jakarta Barat', '0', '2', ' -', '08989233XXXX', 'JANTI JAHJA@gmail.com', '1', '0'),
(1049, 0, 'AMINOTO SUTANDI', 'L', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08162976XXXX', 'AMINOTO SUTANDI@gmail.com', '1', '0'),
(1050, 0, 'Michael Jackson Purwanto Widjaja', 'L', '0000-00-00', 'Cimahi', '0', '3', ' -', '08596094XXXX', 'Michael Jackson Purwanto Widjaja@gmail.com', '1', '0'),
(1051, 0, 'Dendy Kurniawan', 'L', '0000-00-00', 'Sumber', '0', '1', ' -', '08991351XXXX', 'Dendy Kurniawan@gmail.com', '1', '0'),
(1052, 0, 'Jenny Elisabeth RG', 'L', '0000-00-00', 'Garut', '0', '2', ' -', '08289037XXXX', 'Jenny Elisabeth RG@gmail.com', '1', '0'),
(1053, 0, 'Joeliardi Sunendar', 'P', '0000-00-00', 'Sumedang', '1', '3', ' -', '08966865XXXX', 'Joeliardi Sunendar@gmail.com', '1', '0'),
(1054, 0, 'Iman Tamin', 'L', '0000-00-00', 'Parigi', '1', '1', ' -', '08892598XXXX', 'Iman Tamin@gmail.com', '1', '0'),
(1055, 0, 'Halim Setiabudi Wijono', 'L', '0000-00-00', 'Bogor', '1', '2', ' -', '08981525XXXX', 'Halim Setiabudi Wijono@gmail.com', '1', '0'),
(1056, 0, 'Lily Ciarensia Tjia', 'L', '0000-00-00', 'Ciamis', '0', '1', ' -', '08136935XXXX', 'Lily Ciarensia Tjia@gmail.com', '1', '0'),
(1057, 0, 'Giovani Maria Ekaputra Suhari', 'P', '0000-00-00', 'Jakarta Barat', '0', '2', ' -', '08169182XXXX', 'Giovani Maria Ekaputra Suhari@gmail.com', '1', '0'),
(1058, 0, 'Hartadi Angkosubroto', 'L', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08176153XXXX', 'Hartadi Angkosubroto@gmail.com', '1', '0'),
(1059, 0, 'Henry Liem', 'L', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08775383XXXX', 'Henry Liem@gmail.com', '1', '0'),
(1060, 0, 'Hubertus Setiyadi', 'L', '0000-00-00', 'Cisaat', '0', '2', ' -', '08823199XXXX', 'Hubertus Setiyadi@gmail.com', '1', '0'),
(1061, 0, 'Amalia Aristiningsih', 'L', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08142187XXXX', 'Amalia Aristiningsih@gmail.com', '1', '0'),
(1062, 0, 'Liliana Wibisono', 'P', '0000-00-00', 'Cimahi', '1', '3', ' -', '08562886XXXX', 'Liliana Wibisono@gmail.com', '1', '0'),
(1063, 0, 'Helyuzar', 'L', '0000-00-00', 'Ngamprah', '1', '2', ' -', '08134349XXXX', 'Helyuzar@gmail.com', '1', '0'),
(1064, 0, 'Jusak Hadi Wardojo', 'L', '0000-00-00', 'Cirebon', '0', '1', ' -', '08891479XXXX', 'Jusak Hadi Wardojo@gmail.com', '1', '0'),
(1065, 0, 'Junus Jen Suherman', 'L', '0000-00-00', 'Jakarta Barat', '1', '2', ' -', '08158932XXXX', 'Junus Jen Suherman@gmail.com', '1', '0'),
(1066, 0, 'KAMAN HALIM', 'P', '0000-00-00', 'Subang', '1', '3', ' -', '08215947XXXX', 'KAMAN HALIM@gmail.com', '1', '0'),
(1067, 0, 'Johan Alexander Supit', 'P', '0000-00-00', 'Sumedang', '0', '2', ' -', '08213979XXXX', 'Johan Alexander Supit@gmail.com', '1', '0'),
(1068, 0, 'FARINA TADJOEDIN', 'P', '0000-00-00', 'Parigi', '1', '2', ' -', '08815815XXXX', 'FARINA TADJOEDIN@gmail.com', '1', '0'),
(1069, 0, 'ADELINA PRASETIO', 'L', '0000-00-00', 'Jakarta Timur', '1', '3', ' -', '08579872XXXX', 'ADELINA PRASETIO@gmail.com', '1', '0'),
(1070, 0, 'HARDI WARDHANA', 'L', '0000-00-00', 'Subang', '0', '1', ' -', '08789800XXXX', 'HARDI WARDHANA@gmail.com', '1', '0'),
(1071, 0, 'Agung Podomoro ', 'L', '0000-00-00', 'Depok', '1', '3', ' -', '08599531XXXX', 'Agung Podomoro@gmail.com', '1', '0'),
(1072, 0, 'Harjanto Kusuma Halim', 'L', '0000-00-00', 'Bekasi', '1', '1', ' -', '08779901XXXX', 'Harjanto Kusuma Halim@gmail.com', '1', '0'),
(1073, 0, 'Erwin Budisantosa', 'L', '0000-00-00', 'Ngamprah', '0', '3', ' -', '08828217XXXX', 'Erwin Budisantosa@gmail.com', '1', '0'),
(1074, 0, 'Meridian Pacific Trading Ltd', 'P', '0000-00-00', 'Kuningan', '1', '3', ' -', '08282774XXXX', 'Meridian Pacific Trading Ltd@gmail.com', '1', '0'),
(1075, 0, 'ALI CHENDRA', 'P', '0000-00-00', 'Kuningan', '1', '2', ' -', '08114081XXXX', 'ALI CHENDRA@gmail.com', '1', '0'),
(1076, 0, 'Jeffrey Sugianto', 'P', '0000-00-00', 'Bekasi', '1', '3', ' -', '08824584XXXX', 'Jeffrey Sugianto@gmail.com', '1', '0'),
(1077, 0, 'Lindawaty Hartono', 'L', '0000-00-00', 'Cirebon', '1', '3', ' -', '08539114XXXX', 'Lindawaty Hartono@gmail.com', '1', '0'),
(1078, 0, 'Freddy Ignatius Katuari', 'L', '0000-00-00', 'Purwakarta', '0', '3', ' -', '08565410XXXX', 'Freddy Ignatius Katuari@gmail.com', '1', '0'),
(1079, 0, 'Lauw Samuel Lawrence', 'P', '0000-00-00', 'Indramayu', '0', '2', ' -', '08899574XXXX', 'Lauw Samuel Lawrence@gmail.com', '1', '0'),
(1080, 0, 'Husin Sariman and Dewi Ngadiman', 'L', '0000-00-00', 'Purwakarta', '1', '2', ' -', '08118115XXXX', 'Husin Sariman and Dewi Ngadiman@gmail.com', '1', '0'),
(1081, 0, 'Christian Leuchtenberg', 'P', '0000-00-00', 'Purwakarta', '0', '2', ' -', '08588209XXXX', 'Christian Leuchtenberg@gmail.com', '1', '0'),
(1082, 0, 'Armedta Budi Asmara', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '2', ' -', '08884905XXXX', 'Armedta Budi Asmara@gmail.com', '1', '0'),
(1083, 0, 'Abu Djaja Bunjamin', 'L', '0000-00-00', 'Pelabuhan Ratu', '1', '1', ' -', '08585616XXXX', 'Abu Djaja Bunjamin@gmail.com', '1', '0'),
(1084, 0, 'Achmad Latief Alwy', 'P', '0000-00-00', 'Bandung', '0', '2', ' -', '08191859XXXX', 'Achmad Latief Alwy@gmail.com', '1', '0'),
(1085, 0, 'Agus Lasmono Sudwikatmono', 'P', '0000-00-00', 'Bekasi', '0', '1', ' -', '08776178XXXX', 'Agus Lasmono Sudwikatmono@gmail.com', '1', '0'),
(1086, 0, 'Batavia Prosperindo Sekuritas', 'L', '0000-00-00', 'Singaparna', '0', '1', ' -', '08187384XXXX', 'Batavia Prosperindo Sekuritas@gmail.com', '1', '0'),
(1087, 0, 'Erlina Ongoredjo', 'P', '0000-00-00', 'Bogor', '1', '1', ' -', '08985397XXXX', 'Erlina Ongoredjo@gmail.com', '1', '0'),
(1088, 0, 'Frank Taira Supit', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '2', ' -', '08892929XXXX', 'Frank Taira Supit@gmail.com', '1', '0'),
(1089, 0, 'Chander Vinod Laroya', 'P', '0000-00-00', 'Indramayu', '0', '2', ' -', '08171811XXXX', 'Chander Vinod Laroya@gmail.com', '1', '0'),
(1090, 0, 'Eko Budianto', 'L', '0000-00-00', 'Tasikmalaya', '1', '2', ' -', '08388497XXXX', 'Eko Budianto@gmail.com', '1', '0'),
(1091, 0, 'FOE SIAT KHIUN', 'L', '0000-00-00', ' Jakarta Selatan', '0', '2', ' -', '08787655XXXX', 'FOE SIAT KHIUN@gmail.com', '1', '0'),
(1092, 0, 'Haston Limardo', 'L', '0000-00-00', 'Ngamprah', '0', '3', ' -', '08896879XXXX', 'Haston Limardo@gmail.com', '1', '0'),
(1093, 0, 'JOYCE HANDAJANI', 'P', '0000-00-00', 'Cimahi', '1', '2', ' -', '08825833XXXX', 'JOYCE HANDAJANI@gmail.com', '1', '0'),
(1094, 0, 'MANIWANEN', 'L', '0000-00-00', 'Parigi', '1', '2', ' -', '08141796XXXX', 'MANIWANEN@gmail.com', '1', '0'),
(1095, 0, 'Denny Suryadinata', 'P', '0000-00-00', 'Kuningan', '0', '2', ' -', '08966850XXXX', 'Denny Suryadinata@gmail.com', '1', '0'),
(1096, 0, 'Didi Ferdinand Korompis', 'P', '0000-00-00', 'Soreang', '0', '3', ' -', '08184277XXXX', 'Didi Ferdinand Korompis@gmail.com', '1', '0'),
(1097, 0, 'K MELBOURNE BREAU', 'P', '0000-00-00', 'Cirebon', '1', '2', ' -', '08157240XXXX', 'K MELBOURNE BREAU@gmail.com', '1', '0'),
(1098, 0, 'Ari Rophian Perdana Ariwibowo', 'P', '0000-00-00', 'Jakarta Barat', '1', '2', ' -', '08152389XXXX', 'Ari Rophian Perdana Ariwibowo@gmail.com', '1', '0'),
(1099, 0, 'Mende Sulinadi', 'P', '0000-00-00', 'Ciamis', '1', '2', ' -', '08577598XXXX', 'Mende Sulinadi@gmail.com', '1', '0'),
(1100, 0, 'Jusuf Tanuwidjaja', 'P', '0000-00-00', 'Singaparna', '0', '2', ' -', '08826979XXXX', 'Jusuf Tanuwidjaja@gmail.com', '1', '0'),
(1101, 0, 'Kirk David Evans', 'L', '0000-00-00', 'Parigi', '0', '1', ' -', '08785864XXXX', 'Kirk David Evans@gmail.com', '1', '0'),
(1102, 0, 'HARYETTI', 'L', '0000-00-00', 'Subang', '0', '3', ' -', '08121927XXXX', 'HARYETTI@gmail.com', '1', '0'),
(1103, 0, 'Mahhesa Alit Pramesty', 'P', '0000-00-00', 'Garut', '0', '1', ' -', '08196669XXXX', 'Mahhesa Alit Pramesty@gmail.com', '1', '0'),
(1104, 0, 'Djamaluddin Tanoto and Limiwaty Lie', 'P', '0000-00-00', 'Depok', '0', '3', ' -', '08785781XXXX', 'Djamaluddin Tanoto and Limiwaty Lie@gmail.com', '1', '0'),
(1105, 0, 'Budyanto Totong', 'L', '0000-00-00', 'Sumedang', '0', '3', ' -', '08784259XXXX', 'Budyanto Totong@gmail.com', '1', '0'),
(1106, 0, 'DANIEL', 'P', '0000-00-00', 'Jakarta Barat', '0', '2', ' -', '08184526XXXX', 'DANIEL@gmail.com', '1', '0'),
(1107, 0, 'Justo Padilla Nestro', 'L', '0000-00-00', 'Cibinong', '0', '3', ' -', '08151803XXXX', 'Justo Padilla Nestro@gmail.com', '1', '0'),
(1108, 0, 'Gunardi Frans Fong', 'L', '0000-00-00', 'Kuningan', '0', '1', ' -', '08781362XXXX', 'Gunardi Frans Fong@gmail.com', '1', '0'),
(1109, 0, 'Handaja Susanto', 'P', '0000-00-00', 'Bandung', '1', '3', ' -', '08121267XXXX', 'Handaja Susanto@gmail.com', '1', '0'),
(1110, 0, 'Ervin Wijaya', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08966443XXXX', 'Ervin Wijaya@gmail.com', '1', '0'),
(1111, 0, 'Andre Sukendra Atmadja', 'L', '0000-00-00', 'Bekasi', '1', '1', ' -', '08577419XXXX', 'Andre Sukendra Atmadja@gmail.com', '1', '0'),
(1112, 0, 'Ang Rianti', 'P', '0000-00-00', 'Cibinong', '1', '2', ' -', '08962178XXXX', 'Ang Rianti@gmail.com', '1', '0'),
(1113, 0, 'Istini Siddharta', 'L', '0000-00-00', 'Ngamprah', '0', '2', ' -', '08315748XXXX', 'Istini Siddharta@gmail.com', '1', '0'),
(1114, 0, 'Martin Wijaya Ng', 'L', '0000-00-00', 'Pelabuhan Ratu', '1', '1', ' -', '08584290XXXX', 'Martin Wijaya Ng@gmail.com', '1', '0'),
(1115, 0, 'Jeffrey K. Wonsono', 'P', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08123892XXXX', 'Jeffrey K. Wonsono@gmail.com', '1', '0'),
(1116, 0, 'Anton Wiratama', 'P', '0000-00-00', 'Cianjur', '0', '3', ' -', '08151802XXXX', 'Anton Wiratama@gmail.com', '1', '0'),
(1117, 0, 'Kasiviswanathan Prakash', 'P', '0000-00-00', 'Ciamis', '1', '3', ' -', '08164585XXXX', 'Kasiviswanathan Prakash@gmail.com', '1', '0'),
(1118, 0, 'Jackson Chu', 'P', '0000-00-00', 'Sumedang', '1', '3', ' -', '08582295XXXX', 'Jackson Chu@gmail.com', '1', '0'),
(1119, 0, 'Endro S. Wahono', 'L', '0000-00-00', 'Pelabuhan Ratu', '1', '2', ' -', '08316211XXXX', 'Endro S. Wahono@gmail.com', '1', '0'),
(1120, 0, 'CHANDRA EKAJAYA', 'L', '0000-00-00', 'Cirebon', '1', '1', ' -', '08535055XXXX', 'CHANDRA EKAJAYA@gmail.com', '1', '0'),
(1121, 0, 'Dunn Fa Chong', 'P', '0000-00-00', 'Soreang', '1', '2', ' -', '08126419XXXX', 'Dunn Fa Chong@gmail.com', '1', '0'),
(1122, 0, 'Harijanto Koesdjojo', 'P', '0000-00-00', 'Majalengka', '1', '3', ' -', '08996885XXXX', 'Harijanto Koesdjojo@gmail.com', '1', '0'),
(1123, 0, 'Amaluddin Djambak', 'P', '0000-00-00', 'Sumber', '1', '1', ' -', '08888664XXXX', 'Amaluddin Djambak@gmail.com', '1', '0'),
(1124, 0, 'Benjamin Subrata', 'P', '0000-00-00', 'Bekasi', '0', '1', ' -', '08139649XXXX', 'Benjamin Subrata@gmail.com', '1', '0'),
(1125, 0, 'Mohamad Iskandar', 'L', '0000-00-00', 'Ngamprah', '1', '2', ' -', '08387465XXXX', 'Mohamad Iskandar@gmail.com', '1', '0'),
(1126, 0, 'ANTHONY KURNIADI', 'P', '0000-00-00', 'Cimahi', '1', '1', ' -', '08158602XXXX', 'ANTHONY KURNIADI@gmail.com', '1', '0'),
(1127, 0, 'Anton Henning Linderum', 'L', '0000-00-00', 'Subang', '1', '2', ' -', '08218067XXXX', 'Anton Henning Linderum@gmail.com', '1', '0'),
(1128, 0, 'Erwin Aksa', 'P', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08785097XXXX', 'Erwin Aksa@gmail.com', '1', '0'),
(1129, 0, 'Andy Soewatdy', 'P', '0000-00-00', 'Depok', '0', '2', ' -', '08786291XXXX', 'Andy Soewatdy@gmail.com', '1', '0'),
(1130, 0, 'Mathilda Stephanie', 'L', '0000-00-00', 'Cirebon', '1', '1', ' -', '08977821XXXX', 'Mathilda Stephanie@gmail.com', '1', '0');
INSERT INTO `karyawan` (`karyawan_id`, `pos_id`, `nama_karyawan`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `status_menikah`, `agama`, `alamat`, `no_hp`, `email`, `status_karyawan`, `hapus`) VALUES
(1131, 0, 'Chui Hing Keung', 'L', '0000-00-00', 'Jakarta Barat', '0', '2', ' -', '08586267XXXX', 'Chui Hing Keung@gmail.com', '1', '0'),
(1132, 0, 'CL Law Firm', 'P', '0000-00-00', 'Karawang', '1', '1', ' -', '08596078XXXX', 'CL Law Firm@gmail.com', '1', '0'),
(1133, 0, 'Abdul Slam Tahir', 'P', '0000-00-00', 'Karawang', '0', '3', ' -', '08897065XXXX', 'Abdul Slam Tahir@gmail.com', '1', '0'),
(1134, 0, 'Afandi Hermawan ', 'P', '0000-00-00', 'Majalengka', '1', '1', ' -', '08579811XXXX', 'Afandi Hermawan@gmail.com', '1', '0'),
(1135, 0, 'Adimitra Baratama Nusantara', 'P', '0000-00-00', 'Bandung', '0', '2', ' -', '08191524XXXX', 'Adimitra Baratama Nusantara@gmail.com', '1', '0'),
(1136, 0, 'Kimberly Ananto', 'P', '0000-00-00', ' Jakarta Selatan', '1', '2', ' -', '08975063XXXX', 'Kimberly Ananto@gmail.com', '1', '0'),
(1137, 0, 'Mimin Aminah', 'P', '0000-00-00', 'Cisaat', '0', '3', ' -', '08798332XXXX', 'Mimin Aminah@gmail.com', '1', '0'),
(1138, 0, 'EMMANUEL LESTARTO WANANDI', 'L', '0000-00-00', 'Parigi', '1', '1', ' -', '08985243XXXX', 'EMMANUEL LESTARTO WANANDI@gmail.com', '1', '0'),
(1139, 0, 'Herry Wibowo', 'L', '0000-00-00', 'Bogor', '0', '3', ' -', '08596579XXXX', 'Herry Wibowo@gmail.com', '1', '0'),
(1140, 0, 'Jimmy Suryanto Budhi', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '3', ' -', '08593040XXXX', 'Jimmy Suryanto Budhi@gmail.com', '1', '0'),
(1141, 0, 'MOCHAMAD RAIS', 'L', '0000-00-00', 'Cirebon', '1', '3', ' -', '08788947XXXX', 'MOCHAMAD RAIS@gmail.com', '1', '0'),
(1142, 0, 'Michael Steven', 'P', '0000-00-00', 'Cianjur', '1', '3', ' -', '08772529XXXX', 'Michael Steven@gmail.com', '1', '0'),
(1143, 0, 'Budiawan Jusmin', 'L', '0000-00-00', 'Purwakarta', '0', '2', ' -', '08825742XXXX', 'Budiawan Jusmin@gmail.com', '1', '0'),
(1144, 0, 'IRVAN YUSRIZAL GADING', 'L', '0000-00-00', 'Ngamprah', '0', '1', ' -', '08882721XXXX', 'IRVAN YUSRIZAL GADING@gmail.com', '1', '0'),
(1145, 0, 'Franciscus Xaverius Hardianto Tjondro', 'P', '0000-00-00', 'Garut', '1', '1', ' -', '08814123XXXX', 'Franciscus Xaverius Hardianto Tjondro@gmail.com', '1', '0'),
(1146, 0, 'Djoni Sukohardjo', 'P', '0000-00-00', 'Singaparna', '1', '1', ' -', '08813400XXXX', 'Djoni Sukohardjo@gmail.com', '1', '0'),
(1147, 0, 'Dewi Garlina Sari', 'L', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08825373XXXX', 'Dewi Garlina Sari@gmail.com', '1', '0'),
(1148, 0, 'Elizabeth Januarti W', 'L', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08141566XXXX', 'Elizabeth Januarti W@gmail.com', '1', '0'),
(1149, 0, 'Boedi Sampoerna', 'L', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08211518XXXX', 'Boedi Sampoerna@gmail.com', '1', '0'),
(1150, 0, 'Erick Djuwadi', 'P', '0000-00-00', 'Cisaat', '0', '3', ' -', '08783186XXXX', 'Erick Djuwadi@gmail.com', '1', '0'),
(1151, 0, 'BHAYANG SURYADIMADJA', 'P', '0000-00-00', 'Bandung', '0', '3', ' -', '08132207XXXX', 'BHAYANG SURYADIMADJA@gmail.com', '1', '0'),
(1152, 0, 'B. Dorpi Parlindungan', 'L', '0000-00-00', 'Jakarta Pusat', '1', '3', ' -', '08189977XXXX', 'B. Dorpi Parlindungan@gmail.com', '1', '0'),
(1153, 0, 'Emmy Damayanti', 'P', '0000-00-00', 'Karawang', '1', '1', ' -', '08186449XXXX', 'Emmy Damayanti@gmail.com', '1', '0'),
(1154, 0, 'Lusi Murniati Gunawan', 'L', '0000-00-00', 'Singaparna', '1', '3', ' -', '08991883XXXX', 'Lusi Murniati Gunawan@gmail.com', '1', '0'),
(1155, 0, 'J. C. Gosa', 'P', '0000-00-00', 'Bogor', '0', '1', ' -', '08129828XXXX', 'J. C. Gosa@gmail.com', '1', '0'),
(1156, 0, 'Hetty Heryati Sumantri', 'P', '0000-00-00', 'Soreang', '1', '1', ' -', '08597695XXXX', 'Hetty Heryati Sumantri@gmail.com', '1', '0'),
(1157, 0, 'Levi Octavia Soewarna', 'P', '0000-00-00', 'Cibinong', '1', '1', ' -', '08125919XXXX', 'Levi Octavia Soewarna@gmail.com', '1', '0'),
(1158, 0, 'Joppy Robert Saerang', 'P', '0000-00-00', 'Cianjur', '0', '3', ' -', '08781129XXXX', 'Joppy Robert Saerang@gmail.com', '1', '0'),
(1159, 0, 'Amelia Kurniawan', 'L', '0000-00-00', 'Karawang', '1', '2', ' -', '08148465XXXX', 'Amelia Kurniawan@gmail.com', '1', '0'),
(1160, 0, 'HENRY SUPANNI', 'L', '0000-00-00', 'Sumedang', '0', '1', ' -', '08152649XXXX', 'HENRY SUPANNI@gmail.com', '1', '0'),
(1161, 0, 'Asian Venture Finance Ltd.', 'P', '0000-00-00', 'Bekasi', '0', '2', ' -', '08127651XXXX', 'Asian Venture Finance Ltd.@gmail.com', '1', '0'),
(1162, 0, 'Itjendri Suitono Thio', 'P', '0000-00-00', 'Bandung', '1', '2', ' -', '08192218XXXX', 'Itjendri Suitono Thio@gmail.com', '1', '0'),
(1163, 0, 'Kartini Herawati Lang', 'P', '0000-00-00', 'Ciamis', '0', '2', ' -', '08198958XXXX', 'Kartini Herawati Lang@gmail.com', '1', '0'),
(1164, 0, 'Harry Nugroho Prasetyo', 'P', '0000-00-00', 'Cianjur', '0', '1', ' -', '08779172XXXX', 'Harry Nugroho Prasetyo@gmail.com', '1', '0'),
(1165, 0, 'HALIFAH SUNJATA', 'L', '0000-00-00', 'Purwakarta', '0', '1', ' -', '08318849XXXX', 'HALIFAH SUNJATA@gmail.com', '1', '0'),
(1166, 0, 'Alexander Thaslim', 'L', '0000-00-00', 'Jakarta Barat', '1', '3', ' -', '08147096XXXX', 'Alexander Thaslim@gmail.com', '1', '0'),
(1167, 0, 'Mohammad Noah Haji', 'P', '0000-00-00', 'Ciamis', '0', '2', ' -', '08566831XXXX', 'Mohammad Noah Haji@gmail.com', '1', '0'),
(1168, 0, 'Gary Neal Christenson', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08384273XXXX', 'Gary Neal Christenson@gmail.com', '1', '0'),
(1169, 0, 'Henoch Pradhana', 'P', '0000-00-00', 'Sumber', '1', '3', ' -', '08584985XXXX', 'Henoch Pradhana@gmail.com', '1', '0'),
(1170, 0, 'Jessy Vishamkar Adnani', 'L', '0000-00-00', 'Majalengka', '1', '2', ' -', '08122800XXXX', 'Jessy Vishamkar Adnani@gmail.com', '1', '0'),
(1171, 0, 'Djumharbey Anwar', 'P', '0000-00-00', 'Cimahi', '0', '3', ' -', '08152560XXXX', 'Djumharbey Anwar@gmail.com', '1', '0'),
(1172, 0, 'Abu Hermanto Budiono', 'P', '0000-00-00', 'Purwakarta', '1', '2', ' -', '08212285XXXX', 'Abu Hermanto Budiono@gmail.com', '1', '0'),
(1173, 0, 'Budy Hartono Santosa', 'L', '0000-00-00', 'Parigi', '0', '1', ' -', '08587910XXXX', 'Budy Hartono Santosa@gmail.com', '1', '0'),
(1174, 0, 'Henry Wargana', 'L', '0000-00-00', 'Bekasi', '1', '3', ' -', '08596473XXXX', 'Henry Wargana@gmail.com', '1', '0'),
(1175, 0, 'Benny Tenges', 'P', '0000-00-00', 'Cisaat', '0', '2', ' -', '08181724XXXX', 'Benny Tenges@gmail.com', '1', '0'),
(1176, 0, 'LUKMAN TACHJADI', 'P', '0000-00-00', 'Parigi', '0', '2', ' -', '08961962XXXX', 'LUKMAN TACHJADI@gmail.com', '1', '0'),
(1177, 0, 'Motinggo Soputan', 'L', '0000-00-00', 'Bandung', '1', '3', ' -', '08791900XXXX', 'Motinggo Soputan@gmail.com', '1', '0'),
(1178, 0, 'Arie Kondang Kresnadi', 'P', '0000-00-00', 'Jakarta Utara', '1', '1', ' -', '08584023XXXX', 'Arie Kondang Kresnadi@gmail.com', '1', '0'),
(1179, 0, 'Michel Vicky Tumiwang', 'L', '0000-00-00', 'Singaparna', '0', '3', ' -', '08587074XXXX', 'Michel Vicky Tumiwang@gmail.com', '1', '0'),
(1180, 0, 'Hariyanto Wijaya Sarwono Lim', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08211543XXXX', 'Hariyanto Wijaya Sarwono Lim@gmail.com', '1', '0'),
(1181, 0, 'Hendra Nagaria', 'P', '0000-00-00', 'Jakarta Barat', '1', '2', ' -', '08817051XXXX', 'Hendra Nagaria@gmail.com', '1', '0'),
(1182, 0, 'Achmad Nugraha Djuanda', 'P', '0000-00-00', 'Garut', '1', '3', ' -', '08558126XXXX', 'Achmad Nugraha Djuanda@gmail.com', '1', '0'),
(1183, 0, 'Eliezer Nugroho Tjandrakusuma', 'L', '0000-00-00', 'Bandung', '1', '1', ' -', '08195580XXXX', 'Eliezer Nugroho Tjandrakusuma@gmail.com', '1', '0'),
(1184, 0, 'Arianto Wisnu Triyatno', 'L', '0000-00-00', 'Kuningan', '0', '3', ' -', '08774600XXXX', 'Arianto Wisnu Triyatno@gmail.com', '1', '0'),
(1185, 0, 'Jacob Soetoyo', 'P', '0000-00-00', 'Sumber', '1', '1', ' -', '08183021XXXX', 'Jacob Soetoyo@gmail.com', '1', '0'),
(1186, 0, 'Endang Triningsih', 'P', '0000-00-00', 'Cibinong', '0', '2', ' -', '08822926XXXX', 'Endang Triningsih@gmail.com', '1', '0'),
(1187, 0, 'Jacky Afandi', 'L', '0000-00-00', 'Ciamis', '0', '3', ' -', '08318718XXXX', 'Jacky Afandi@gmail.com', '1', '0'),
(1188, 0, 'Irwan Santoso Chandra', 'P', '0000-00-00', 'Garut', '1', '1', ' -', '08589908XXXX', 'Irwan Santoso Chandra@gmail.com', '1', '0'),
(1189, 0, 'Anindya N. Bakrie', 'P', '0000-00-00', 'Cirebon', '0', '2', ' -', '08775293XXXX', 'Anindya N. Bakrie@gmail.com', '1', '0'),
(1190, 0, 'Adji Muljo Teguh', 'L', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08594065XXXX', 'Adji Muljo Teguh@gmail.com', '1', '0'),
(1191, 0, 'Michael Seabrook', 'L', '0000-00-00', 'Ngamprah', '1', '3', ' -', '08572744XXXX', 'Michael Seabrook@gmail.com', '1', '0'),
(1192, 0, 'Dewi Indrajani Alimwidjaja', 'L', '0000-00-00', 'Soreang', '0', '2', ' -', '08119642XXXX', 'Dewi Indrajani Alimwidjaja@gmail.com', '1', '0'),
(1193, 0, 'Aida Ishak', 'P', '0000-00-00', 'Cianjur', '1', '3', ' -', '08166493XXXX', 'Aida Ishak@gmail.com', '1', '0'),
(1194, 0, 'Christanto Santoso', 'P', '0000-00-00', 'Kuningan', '1', '3', ' -', '08284177XXXX', 'Christanto Santoso@gmail.com', '1', '0'),
(1195, 0, 'Djoni Rion Gui', 'L', '0000-00-00', 'Bogor', '0', '2', ' -', '08773646XXXX', 'Djoni Rion Gui@gmail.com', '1', '0'),
(1196, 0, 'JIMMY HENRICUS KURNIAWAN LAIHAD', 'P', '0000-00-00', ' Jakarta Selatan', '1', '3', ' -', '08176003XXXX', 'JIMMY HENRICUS KURNIAWAN LAIHAD@gmail.com', '1', '0'),
(1197, 0, 'Lista Adriani', 'L', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08529672XXXX', 'Lista Adriani@gmail.com', '1', '0'),
(1198, 0, 'Christian Parlaungan Mulyanto', 'L', '0000-00-00', 'Cirebon', '1', '3', ' -', '08817247XXXX', 'Christian Parlaungan Mulyanto@gmail.com', '1', '0'),
(1199, 0, 'Lambertus Somar', 'L', '0000-00-00', 'Jakarta Utara', '1', '3', ' -', '08288006XXXX', 'Lambertus Somar@gmail.com', '1', '0'),
(1200, 0, 'Angus Maclachlan', 'P', '0000-00-00', 'Parigi', '1', '3', ' -', '08145228XXXX', 'Angus Maclachlan@gmail.com', '1', '0'),
(1201, 0, 'Agustinus Prasetio', 'P', '0000-00-00', 'Indramayu', '1', '3', ' -', '08568774XXXX', 'Agustinus Prasetio@gmail.com', '1', '0'),
(1202, 0, 'Boelio Muliadi', 'P', '0000-00-00', 'Majalengka', '1', '3', ' -', '08176027XXXX', 'Boelio Muliadi@gmail.com', '1', '0'),
(1203, 0, 'Myrna Putri Pribadi', 'P', '0000-00-00', ' Jakarta Selatan', '1', '2', ' -', '08892602XXXX', 'Myrna Putri Pribadi@gmail.com', '1', '0'),
(1204, 0, 'CARLOS TARAZONA RAMIREZ', 'L', '0000-00-00', 'Cimahi', '0', '2', ' -', '08987822XXXX', 'CARLOS TARAZONA RAMIREZ@gmail.com', '1', '0'),
(1205, 0, 'Angela Lestari Widjaja', 'P', '0000-00-00', 'Purwakarta', '0', '2', ' -', '08791521XXXX', 'Angela Lestari Widjaja@gmail.com', '1', '0'),
(1206, 0, 'Ivan Setiawan Tan', 'P', '0000-00-00', 'Purwakarta', '1', '2', ' -', '08563916XXXX', 'Ivan Setiawan Tan@gmail.com', '1', '0'),
(1207, 0, 'Alwijaya Aw', 'P', '0000-00-00', 'Subang', '1', '3', ' -', '08196660XXXX', 'Alwijaya Aw@gmail.com', '1', '0'),
(1208, 0, 'Fendi Santoso', 'P', '0000-00-00', 'Jakarta Pusat', '0', '1', ' -', '08186992XXXX', 'Fendi Santoso@gmail.com', '1', '0'),
(1209, 0, 'Anthony Dominic Byron', 'P', '0000-00-00', 'Cibinong', '1', '3', ' -', '08776314XXXX', 'Anthony Dominic Byron@gmail.com', '1', '0'),
(1210, 0, 'Hengki Sovian', 'L', '0000-00-00', 'Bogor', '0', '2', ' -', '08288220XXXX', 'Hengki Sovian@gmail.com', '1', '0'),
(1211, 0, 'Charlie Kasim', 'P', '0000-00-00', 'Indramayu', '0', '1', ' -', '08963358XXXX', 'Charlie Kasim@gmail.com', '1', '0'),
(1212, 0, 'HIANTO DHARMAPUTRA SUNARDY', 'L', '0000-00-00', 'Jakarta Barat', '1', '1', ' -', '08163997XXXX', 'HIANTO DHARMAPUTRA SUNARDY@gmail.com', '1', '0'),
(1213, 0, 'Kezia Putri Aprilya Kusdianto', 'L', '0000-00-00', 'Kuningan', '0', '2', ' -', '08123823XXXX', 'Kezia Putri Aprilya Kusdianto@gmail.com', '1', '0'),
(1214, 0, 'Lisawati Soegiharto', 'L', '0000-00-00', 'Depok', '1', '3', ' -', '08123315XXXX', 'Lisawati Soegiharto@gmail.com', '1', '0'),
(1215, 0, 'Hesti Femi Nugraheny', 'P', '0000-00-00', 'Cianjur', '1', '1', ' -', '08529148XXXX', 'Hesti Femi Nugraheny@gmail.com', '1', '0'),
(1216, 0, 'Iwan Hardja', 'P', '0000-00-00', 'Cirebon', '0', '3', ' -', '08815972XXXX', 'Iwan Hardja@gmail.com', '1', '0'),
(1217, 0, 'Irvinia Megawati Saddak', 'L', '0000-00-00', 'Depok', '0', '3', ' -', '08141469XXXX', 'Irvinia Megawati Saddak@gmail.com', '1', '0'),
(1218, 0, 'Christopher James Garrard', 'P', '0000-00-00', 'Garut', '0', '2', ' -', '08211984XXXX', 'Christopher James Garrard@gmail.com', '1', '0'),
(1219, 0, 'CHEAM SOON TEE', 'P', '0000-00-00', 'Cimahi', '1', '3', ' -', '08196501XXXX', 'CHEAM SOON TEE@gmail.com', '1', '0'),
(1220, 0, 'Chenry Micron Mor', 'P', '0000-00-00', 'Purwakarta', '0', '3', ' -', '08522150XXXX', 'Chenry Micron Mor@gmail.com', '1', '0'),
(1221, 0, 'Bayu Virgan Triyatno', 'P', '0000-00-00', 'Subang', '1', '3', ' -', '08312311XXXX', 'Bayu Virgan Triyatno@gmail.com', '1', '0'),
(1222, 0, 'KANG ARIES FUKSAR', 'L', '0000-00-00', 'Ciamis', '1', '2', ' -', '08888453XXXX', 'KANG ARIES FUKSAR@gmail.com', '1', '0'),
(1223, 0, 'Annie Halim', 'L', '0000-00-00', 'Jakarta Pusat', '0', '2', ' -', '08564862XXXX', 'Annie Halim@gmail.com', '1', '0'),
(1224, 0, 'Djajadinata Hardjono', 'L', '0000-00-00', 'Bekasi', '0', '2', ' -', '08212565XXXX', 'Djajadinata Hardjono@gmail.com', '1', '0'),
(1225, 0, 'Minny Riady', 'L', '0000-00-00', 'Parigi', '0', '2', ' -', '08156587XXXX', 'Minny Riady@gmail.com', '1', '0'),
(1226, 0, 'Inayat Ali Badruddin', 'P', '0000-00-00', 'Sumedang', '1', '3', ' -', '08166038XXXX', 'Inayat Ali Badruddin@gmail.com', '1', '0'),
(1227, 0, 'Muljadi Irawan', 'L', '0000-00-00', 'Tasikmalaya', '1', '2', ' -', '08824099XXXX', 'Muljadi Irawan@gmail.com', '1', '0'),
(1228, 0, 'Henny Kusumawati Tanuhardja', 'L', '0000-00-00', 'Cirebon', '0', '1', ' -', '08825097XXXX', 'Henny Kusumawati Tanuhardja@gmail.com', '1', '0'),
(1229, 0, 'Lijatini Setiono', 'P', '0000-00-00', 'Bogor', '1', '2', ' -', '08596071XXXX', 'Lijatini Setiono@gmail.com', '1', '0'),
(1230, 0, ' Hans Jurgen Kaschull', 'P', '0000-00-00', 'Cibinong', '1', '2', ' -', '08827349XXXX', 'Hans Jurgen Kaschull@gmail.com', '1', '0'),
(1231, 0, 'Hendry Lesmana', 'L', '0000-00-00', 'Karawang', '1', '3', ' -', '08826782XXXX', 'Hendry Lesmana@gmail.com', '1', '0'),
(1232, 0, 'Maiko Kawano', 'P', '0000-00-00', 'Garut', '0', '3', ' -', '08572646XXXX', 'Maiko Kawano@gmail.com', '1', '0'),
(1233, 0, 'Hanny Sutanto', 'P', '0000-00-00', 'Cibinong', '0', '1', ' -', '08184305XXXX', 'Hanny Sutanto@gmail.com', '1', '0'),
(1234, 0, 'Lanasari Halim', 'L', '0000-00-00', 'Soreang', '0', '2', ' -', '08127630XXXX', 'Lanasari Halim@gmail.com', '1', '0'),
(1235, 0, 'Heindrix Liauw', 'P', '0000-00-00', 'Jakarta Utara', '1', '3', ' -', '08582077XXXX', 'Heindrix Liauw@gmail.com', '1', '0'),
(1236, 0, 'Hansen Suryadi', 'P', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08982591XXXX', 'Hansen Suryadi@gmail.com', '1', '0'),
(1237, 0, 'Krisnadi Gautama', 'L', '0000-00-00', 'Bandung', '0', '3', ' -', '08148554XXXX', 'Krisnadi Gautama@gmail.com', '1', '0'),
(1238, 0, 'Henking Wargana', 'L', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08214405XXXX', 'Henking Wargana@gmail.com', '1', '0'),
(1240, 0, 'Eddy Purwanto', 'P', '0000-00-00', 'Tasikmalaya', '1', '2', ' -', '08159262XXXX', 'Eddy Purwanto@gmail.com', '1', '0'),
(1241, 0, 'Kwok Moi Moy', 'L', '0000-00-00', 'Ciamis', '1', '3', ' -', '08146149XXXX', 'Kwok Moi Moy@gmail.com', '1', '0'),
(1242, 0, 'Jahja Santoso and Johana Poedjokerto', 'P', '0000-00-00', 'Jakarta Pusat', '1', '2', ' -', '08156614XXXX', 'Jahja Santoso and Johana Poedjokerto@gmail.com', '1', '0'),
(1243, 0, 'Djan Faridz', 'P', '0000-00-00', 'Parigi', '0', '1', ' -', '08584384XXXX', 'Djan Faridz@gmail.com', '1', '0'),
(1244, 0, 'Lanny Widjajanti', 'P', '0000-00-00', 'Jakarta Utara', '1', '2', ' -', '08192058XXXX', 'Lanny Widjajanti@gmail.com', '1', '0'),
(1245, 0, 'Kendra Soegandha', 'L', '0000-00-00', 'Cirebon', '0', '2', ' -', '08535141XXXX', 'Kendra Soegandha@gmail.com', '1', '0'),
(1246, 0, 'Kristina Minto', 'P', '0000-00-00', 'Depok', '0', '1', ' -', '08213102XXXX', 'Kristina Minto@gmail.com', '1', '0'),
(1247, 0, 'Daniel Indra Djajadi', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08886425XXXX', 'Daniel Indra Djajadi@gmail.com', '1', '0'),
(1249, 0, 'Jimmy Samantha', 'L', '0000-00-00', 'Garut', '1', '2', ' -', '08124009XXXX', 'Jimmy Samantha@gmail.com', '1', '0'),
(1250, 0, 'Djuniar Tunggal', 'P', '0000-00-00', 'Tasikmalaya', '0', '1', ' -', '08981096XXXX', 'Djuniar Tunggal@gmail.com', '1', '0'),
(1251, 0, 'Johannes Setijono and Indriyati', 'L', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08576827XXXX', 'Johannes Setijono and Indriyati@gmail.com', '1', '0'),
(1252, 0, 'Ahmaddin Ahmad', 'L', '0000-00-00', 'Cianjur', '0', '1', ' -', '08526893XXXX', 'Ahmaddin Ahmad@gmail.com', '1', '0'),
(1253, 0, 'Elisabeth Magdalena', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08827413XXXX', 'Elisabeth Magdalena@gmail.com', '1', '0'),
(1254, 0, 'EVELYN DJAUHARI', 'L', '0000-00-00', 'Parigi', '1', '3', ' -', '08137988XXXX', 'EVELYN DJAUHARI@gmail.com', '1', '0'),
(1255, 0, 'Inder Singh', 'P', '0000-00-00', 'Ciamis', '1', '1', ' -', '08977872XXXX', 'Inder Singh@gmail.com', '1', '0'),
(1256, 0, 'Henry Jahja', 'P', '0000-00-00', 'Depok', '0', '2', ' -', '08791035XXXX', 'Henry Jahja@gmail.com', '1', '0'),
(1257, 0, 'EDDY SUSANTO', 'L', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08192819XXXX', 'EDDY SUSANTO@gmail.com', '1', '0'),
(1258, 0, 'ADRI ACHMAD DRAJAT', 'L', '0000-00-00', 'Jakarta Utara', '1', '3', ' -', '08885426XXXX', 'ADRI ACHMAD DRAJAT@gmail.com', '1', '0'),
(1259, 0, 'Henny Santoso', 'P', '0000-00-00', 'Bandung', '0', '2', ' -', '08154684XXXX', 'Henny Santoso@gmail.com', '1', '0'),
(1260, 0, 'HUSIN CHANDRA', 'P', '0000-00-00', 'Cirebon', '0', '2', ' -', '08177514XXXX', 'HUSIN CHANDRA@gmail.com', '1', '0'),
(1261, 0, 'Catherine Hambali', 'P', '0000-00-00', 'Jakarta Barat', '1', '3', ' -', '08889833XXXX', 'Catherine Hambali@gmail.com', '1', '0'),
(1262, 0, 'Allan Dijaya Keller', 'P', '0000-00-00', 'Jakarta Barat', '1', '1', ' -', '08973927XXXX', 'Allan Dijaya Keller@gmail.com', '1', '0'),
(1263, 0, 'Bobby Iman Satrio', 'P', '0000-00-00', 'Subang', '1', '2', ' -', '08566274XXXX', 'Bobby Iman Satrio@gmail.com', '1', '0'),
(1264, 0, 'IAN DONALD MACAULAY', 'L', '0000-00-00', 'Bekasi', '1', '1', ' -', '08965796XXXX', 'IAN DONALD MACAULAY@gmail.com', '1', '0'),
(1265, 0, 'Edwin Muchtar', 'P', '0000-00-00', 'Cimahi', '0', '3', ' -', '08159022XXXX', 'Edwin Muchtar@gmail.com', '1', '0'),
(1266, 0, 'Enny Soegiarto', 'P', '0000-00-00', 'Cianjur', '0', '3', ' -', '08794030XXXX', 'Enny Soegiarto@gmail.com', '1', '0'),
(1267, 0, 'Danny Tjiu', 'L', '0000-00-00', 'Sumedang', '1', '2', ' -', '08595770XXXX', 'Danny Tjiu@gmail.com', '1', '0'),
(1268, 0, 'Djamaluddin Tanoto', 'P', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08967564XXXX', 'Djamaluddin Tanoto@gmail.com', '1', '0'),
(1269, 0, 'Agus Djohari', 'L', '0000-00-00', 'Indramayu', '0', '2', ' -', '08564922XXXX', 'Agus Djohari@gmail.com', '1', '0'),
(1270, 0, 'Anton Santoso and Anita Marta', 'L', '0000-00-00', 'Ciamis', '1', '1', ' -', '08584772XXXX', 'Anton Santoso and Anita Marta@gmail.com', '1', '0'),
(1271, 0, 'Bambang Tijoso Tedjokusumo', 'P', '0000-00-00', 'Indramayu', '0', '1', ' -', '08825095XXXX', 'Bambang Tijoso Tedjokusumo@gmail.com', '1', '0'),
(1272, 0, 'DARWIN LEO', 'P', '0000-00-00', 'Jakarta Timur', '0', '1', ' -', '08887126XXXX', 'DARWIN LEO@gmail.com', '1', '0'),
(1273, 0, 'Hardy Woosnam', 'P', '0000-00-00', 'Sumber', '1', '2', ' -', '08142122XXXX', 'Hardy Woosnam@gmail.com', '1', '0'),
(1274, 0, 'MUCHSIN CIPUTRA TJOE', 'P', '0000-00-00', 'Bekasi', '1', '1', ' -', '08993503XXXX', 'MUCHSIN CIPUTRA TJOE@gmail.com', '1', '0'),
(1275, 0, 'Damsiruddin Siregar', 'L', '0000-00-00', 'Tasikmalaya', '0', '3', ' -', '08135465XXXX', 'Damsiruddin Siregar@gmail.com', '1', '0'),
(1276, 0, 'Johannes Tanuwijaya', 'L', '0000-00-00', 'Karawang', '0', '1', ' -', '08793195XXXX', 'Johannes Tanuwijaya@gmail.com', '1', '0'),
(1277, 0, 'David Salim', 'L', '0000-00-00', 'Depok', '0', '1', ' -', '08124476XXXX', 'David Salim@gmail.com', '1', '0'),
(1278, 0, 'Jap Carmen', 'P', '0000-00-00', 'Bogor', '1', '2', ' -', '08783694XXXX', 'Jap Carmen@gmail.com', '1', '0'),
(1279, 0, 'Benjamin Wong Siong Yuit', 'L', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08592491XXXX', 'Benjamin Wong Siong Yuit@gmail.com', '1', '0'),
(1280, 0, 'Erick Thohir', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08898488XXXX', 'Erick Thohir@gmail.com', '1', '0'),
(1281, 0, 'Caroline', 'P', '0000-00-00', 'Cianjur', '0', '3', ' -', '08539407XXXX', 'Caroline@gmail.com', '1', '0'),
(1282, 0, 'Kompleks Perkantoran', 'P', '0000-00-00', 'Jakarta Barat', '0', '3', ' -', '08795236XXXX', 'Kompleks Perkantoran@gmail.com', '1', '0'),
(1283, 0, 'Hari Rizwan', 'L', '0000-00-00', 'Soreang', '0', '3', ' -', '08282947XXXX', 'Hari Rizwan@gmail.com', '1', '0'),
(1284, 0, 'Monica Yoanita Octavia', 'P', '0000-00-00', 'Singaparna', '0', '1', ' -', '08823056XXXX', 'Monica Yoanita Octavia@gmail.com', '1', '0'),
(1285, 0, 'Dany Subrata', 'L', '0000-00-00', 'Cirebon', '1', '1', ' -', '08383398XXXX', 'Dany Subrata@gmail.com', '1', '0'),
(1286, 0, 'James Rachman Adjimin', 'L', '0000-00-00', 'Ngamprah', '0', '3', ' -', '08114675XXXX', 'James Rachman Adjimin@gmail.com', '1', '0'),
(1287, 0, 'Elly Koeswandia Tjokronegoro', 'P', '0000-00-00', 'Singaparna', '1', '3', ' -', '08219773XXXX', 'Elly Koeswandia Tjokronegoro@gmail.com', '1', '0'),
(1288, 0, 'Flores Samudro', 'L', '0000-00-00', 'Garut', '0', '2', ' -', '08184164XXXX', 'Flores Samudro@gmail.com', '1', '0'),
(1289, 0, 'John Joseph Franklin', 'L', '0000-00-00', 'Cianjur', '1', '3', ' -', '08597315XXXX', 'John Joseph Franklin@gmail.com', '1', '0'),
(1290, 0, 'Denise Tjokrosaputro', 'P', '0000-00-00', 'Ciamis', '0', '3', ' -', '08791440XXXX', 'Denise Tjokrosaputro@gmail.com', '1', '0'),
(1291, 0, 'Edhie Hardjanto', 'L', '0000-00-00', 'Bandung', '0', '1', ' -', '08122629XXXX', 'Edhie Hardjanto@gmail.com', '1', '0'),
(1292, 0, 'Endy Suryokusumo', 'P', '0000-00-00', 'Bekasi', '0', '1', ' -', '08536651XXXX', 'Endy Suryokusumo@gmail.com', '1', '0'),
(1293, 0, 'Ameesh Anand', 'L', '0000-00-00', 'Depok', '0', '3', ' -', '08567379XXXX', 'Ameesh Anand@gmail.com', '1', '0'),
(1294, 0, 'Muddai Madang', 'P', '0000-00-00', 'Bekasi', '0', '1', ' -', '08166483XXXX', 'Muddai Madang@gmail.com', '1', '0'),
(1295, 0, 'ICHSANUDDIN NOORSY', 'L', '0000-00-00', 'Parigi', '1', '2', ' -', '08162510XXXX', 'ICHSANUDDIN NOORSY@gmail.com', '1', '0'),
(1296, 0, 'Mario Christy', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08565296XXXX', 'Mario Christy@gmail.com', '1', '0'),
(1297, 0, 'Kardja Rahardjo', 'L', '0000-00-00', 'Majalengka', '1', '3', ' -', '08145132XXXX', 'Kardja Rahardjo@gmail.com', '1', '0'),
(1298, 0, 'Hendy Rusli', 'P', '0000-00-00', 'Sumber', '0', '3', ' -', '08194839XXXX', 'Hendy Rusli@gmail.com', '1', '0'),
(1299, 0, 'Eddy Iskandar', 'L', '0000-00-00', 'Depok', '1', '2', ' -', '08176365XXXX', 'Eddy Iskandar@gmail.com', '1', '0'),
(1300, 0, 'JAN TRIANA JOHANES', 'L', '0000-00-00', 'Parigi', '1', '3', ' -', '08384750XXXX', 'JAN TRIANA JOHANES@gmail.com', '1', '0'),
(1301, 0, 'Leny Anwar', 'L', '0000-00-00', 'Depok', '0', '3', ' -', '08985032XXXX', 'Leny Anwar@gmail.com', '1', '0'),
(1302, 0, 'Fransiskus Budhinata', 'L', '0000-00-00', 'Garut', '0', '1', ' -', '08142696XXXX', 'Fransiskus Budhinata@gmail.com', '1', '0'),
(1303, 0, 'Ima Tjahjadi Tjhang', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '1', ' -', '08986852XXXX', 'Ima Tjahjadi Tjhang@gmail.com', '1', '0'),
(1304, 0, 'David Pierre Michael Bakker', 'L', '0000-00-00', 'Sumedang', '1', '1', ' -', '08556369XXXX', 'David Pierre Michael Bakker@gmail.com', '1', '0'),
(1305, 0, 'Kumalasari Tjiong', 'P', '0000-00-00', 'Soreang', '1', '1', ' -', '08168365XXXX', 'Kumalasari Tjiong@gmail.com', '1', '0'),
(1306, 0, 'Eddyanto Hadisurjo', 'L', '0000-00-00', 'Jakarta Timur', '0', '3', ' -', '08385258XXXX', 'Eddyanto Hadisurjo@gmail.com', '1', '0'),
(1307, 0, 'Chris Newton', 'L', '0000-00-00', 'Jakarta Pusat', '1', '2', ' -', '08522919XXXX', 'Chris Newton@gmail.com', '1', '0'),
(1308, 0, 'Andreas Kongoasa', 'L', '0000-00-00', 'Karawang', '0', '1', ' -', '08163828XXXX', 'Andreas Kongoasa@gmail.com', '1', '0'),
(1309, 0, 'Elline Yohan Yau', 'L', '0000-00-00', 'Bogor', '0', '1', ' -', '08972068XXXX', 'Elline Yohan Yau@gmail.com', '1', '0'),
(1310, 0, 'Joni Yoesoef', 'L', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08961378XXXX', 'Joni Yoesoef@gmail.com', '1', '0'),
(1311, 0, 'Indra Widjaja', 'P', '0000-00-00', ' Jakarta Selatan', '0', '3', ' -', '08984609XXXX', 'Indra Widjaja@gmail.com', '1', '0'),
(1312, 0, 'Deny Juliarto', 'L', '0000-00-00', 'Karawang', '0', '2', ' -', '08115963XXXX', 'Deny Juliarto@gmail.com', '1', '0'),
(1313, 0, 'Bruce Williams Carpenter', 'L', '0000-00-00', 'Purwakarta', '1', '3', ' -', '08774007XXXX', 'Bruce Williams Carpenter@gmail.com', '1', '0'),
(1314, 0, 'Financecorp Limited', 'L', '0000-00-00', 'Indramayu', '0', '2', ' -', '08116208XXXX', 'Financecorp Limited@gmail.com', '1', '0'),
(1315, 0, 'FERRY SUDJONO', 'L', '0000-00-00', 'Cianjur', '1', '3', ' -', '08143648XXXX', 'FERRY SUDJONO@gmail.com', '1', '0'),
(1316, 0, 'JUNIUS WIJAYA', 'P', '0000-00-00', 'Majalengka', '0', '1', ' -', '08976894XXXX', 'JUNIUS WIJAYA@gmail.com', '1', '0'),
(1317, 0, 'Lina Gunawan', 'P', '0000-00-00', 'Jakarta Barat', '0', '3', ' -', '08581772XXXX', 'Lina Gunawan@gmail.com', '1', '0'),
(1318, 0, 'Andre S Prijono', 'L', '0000-00-00', 'Soreang', '1', '2', ' -', '08898233XXXX', 'Andre S Prijono@gmail.com', '1', '0'),
(1319, 0, 'Krishan Kulmar Ralhan', 'P', '0000-00-00', 'Jakarta Pusat', '0', '1', ' -', '08776347XXXX', 'Krishan Kulmar Ralhan@gmail.com', '1', '0'),
(1320, 0, 'Michael Dharmawan Euslim', 'P', '0000-00-00', 'Pelabuhan Ratu', '1', '1', ' -', '08591978XXXX', 'Michael Dharmawan Euslim@gmail.com', '1', '0'),
(1321, 0, 'Lianawati Setyo', 'P', '0000-00-00', 'Cisaat', '0', '2', ' -', '08385950XXXX', 'Lianawati Setyo@gmail.com', '1', '0'),
(1322, 0, 'Loa Djin Sui', 'P', '0000-00-00', 'Bandung', '1', '1', ' -', '08569240XXXX', 'Loa Djin Sui@gmail.com', '1', '0'),
(1323, 0, 'Moernoto Reksonegoro', 'P', '0000-00-00', 'Jakarta Barat', '1', '3', ' -', '08971375XXXX', 'Moernoto Reksonegoro@gmail.com', '1', '0'),
(1324, 0, 'FAS Consulting Asia Pacific Pte Ltd', 'P', '0000-00-00', 'Garut', '1', '3', ' -', '08982209XXXX', 'FAS Consulting Asia Pacific Pte Ltd@gmail.com', '1', '0'),
(1325, 0, 'AHMAD DIPODITIRO', 'L', '0000-00-00', 'Tasikmalaya', '0', '2', ' -', '08576106XXXX', 'AHMAD DIPODITIRO@gmail.com', '1', '0'),
(1326, 0, 'ANCE ANGGRAENY', 'P', '0000-00-00', 'Kuningan', '1', '2', ' -', '08579483XXXX', 'ANCE ANGGRAENY@gmail.com', '1', '0'),
(1327, 0, 'Liem Kong Shiung', 'P', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08535954XXXX', 'Liem Kong Shiung@gmail.com', '1', '0'),
(1328, 0, 'BRIAN KENNETH JOHN DALLAMORE', 'L', '0000-00-00', 'Cimahi', '1', '2', ' -', '08168665XXXX', 'BRIAN KENNETH JOHN DALLAMORE@gmail.com', '1', '0'),
(1329, 0, 'Abdul Rahman', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08283016XXXX', 'Abdul Rahman@gmail.com', '1', '0'),
(1330, 0, 'Budi Arsil', 'L', '0000-00-00', 'Cirebon', '1', '1', ' -', '08164056XXXX', 'Budi Arsil@gmail.com', '1', '0'),
(1331, 0, 'Cindy Tanuwidjaja', 'L', '0000-00-00', ' Jakarta Selatan', '1', '1', ' -', '08815748XXXX', 'Cindy Tanuwidjaja@gmail.com', '1', '0'),
(1332, 0, 'Liem Johan Halim', 'L', '0000-00-00', 'Jakarta Utara', '0', '3', ' -', '08311055XXXX', 'Liem Johan Halim@gmail.com', '1', '0'),
(1333, 0, 'Fadjar Endranto', 'P', '0000-00-00', 'Majalengka', '0', '1', ' -', '08125316XXXX', 'Fadjar Endranto@gmail.com', '1', '0'),
(1334, 0, 'Fuad Segayir Alkatiri', 'L', '0000-00-00', 'Subang', '0', '1', ' -', '08193593XXXX', 'Fuad Segayir Alkatiri@gmail.com', '1', '0'),
(1335, 0, 'JOHN TODD BONNER', 'P', '0000-00-00', 'Cibinong', '0', '1', ' -', '08559059XXXX', 'JOHN TODD BONNER@gmail.com', '1', '0'),
(1336, 0, 'ERIC HARDONO TIRTAJASA', 'L', '0000-00-00', 'Purwakarta', '1', '2', ' -', '08984435XXXX', 'ERIC HARDONO TIRTAJASA@gmail.com', '1', '0'),
(1337, 0, 'JOHANES GUNAWAN', 'L', '0000-00-00', 'Cibinong', '0', '1', ' -', '08317247XXXX', 'JOHANES GUNAWAN@gmail.com', '1', '0'),
(1338, 0, 'LIANNY HARYONO', 'P', '0000-00-00', 'Sumedang', '1', '1', ' -', '08178605XXXX', 'LIANNY HARYONO@gmail.com', '1', '0'),
(1339, 0, 'Made Oka Masagung', 'L', '0000-00-00', 'Parigi', '1', '2', ' -', '08535996XXXX', 'Made Oka Masagung@gmail.com', '1', '0'),
(1340, 0, 'Hadinata Widjaja', 'L', '0000-00-00', 'Subang', '0', '3', ' -', '08977390XXXX', 'Hadinata Widjaja@gmail.com', '1', '0'),
(1341, 0, 'Devy Prasetyo Yuwono Ang', 'P', '0000-00-00', 'Karawang', '0', '1', ' -', '08212911XXXX', 'Devy Prasetyo Yuwono Ang@gmail.com', '1', '0'),
(1342, 0, 'Megawati Setiadi', 'L', '0000-00-00', 'Kuningan', '0', '1', ' -', '08383256XXXX', 'Megawati Setiadi@gmail.com', '1', '0'),
(1343, 0, 'Elly Nurlaila Hutabarat', 'P', '0000-00-00', 'Pelabuhan Ratu', '0', '3', ' -', '08137683XXXX', 'Elly Nurlaila Hutabarat@gmail.com', '1', '0'),
(1344, 0, 'Fong Felix', 'L', '0000-00-00', 'Bekasi', '1', '2', ' -', '08182634XXXX', 'Fong Felix@gmail.com', '1', '0'),
(1345, 0, 'Florence Wanamurti', 'P', '0000-00-00', 'Ngamprah', '1', '1', ' -', '08289286XXXX', 'Florence Wanamurti@gmail.com', '1', '0'),
(1346, 0, 'GANDHI BEND', 'P', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08787271XXXX', 'GANDHI BEND@gmail.com', '1', '0'),
(1347, 0, 'Gino Junior Korompis', 'P', '0000-00-00', 'Bekasi', '0', '1', ' -', '08125330XXXX', 'Gino Junior Korompis@gmail.com', '1', '0'),
(1348, 0, 'Lucky Tjahaja Diputra Prawiro', 'L', '0000-00-00', 'Bekasi', '0', '1', ' -', '08177950XXXX', 'Lucky Tjahaja Diputra Prawiro@gmail.com', '1', '0'),
(1349, 0, 'Diana Sastrajaya', 'P', '0000-00-00', 'Cirebon', '1', '1', ' -', '08215295XXXX', 'Diana Sastrajaya@gmail.com', '1', '0'),
(1350, 0, 'CHANG MEI YU', 'P', '0000-00-00', 'Kuningan', '1', '1', ' -', '08141465XXXX', 'CHANG MEI YU@gmail.com', '1', '0'),
(1351, 0, 'JOHAN ARIFKAJA ADI LESMANA', 'P', '0000-00-00', 'Bandung', '0', '2', ' -', '08126262XXXX', 'JOHAN ARIFKAJA ADI LESMANA@gmail.com', '1', '0'),
(1352, 0, 'Lys Erna Ontjeng', 'L', '0000-00-00', 'Majalengka', '0', '1', ' -', '08197364XXXX', 'Lys Erna Ontjeng@gmail.com', '1', '0'),
(1353, 0, 'Jacobus Busono Prawiroredjo', 'P', '0000-00-00', 'Soreang', '1', '3', ' -', '08311137XXXX', 'Jacobus Busono Prawiroredjo@gmail.com', '1', '0'),
(1354, 0, 'HENDRA KOESNADI', 'P', '0000-00-00', 'Kuningan', '1', '2', ' -', '08962270XXXX', 'HENDRA KOESNADI@gmail.com', '1', '0'),
(1355, 0, 'HERMIJANTO TOTO', 'P', '0000-00-00', 'Sumedang', '1', '1', ' -', '08794790XXXX', 'HERMIJANTO TOTO@gmail.com', '1', '0'),
(1356, 0, 'JUANITA DESIREE TAMPUBOLON', 'L', '0000-00-00', 'Majalengka', '0', '3', ' -', '08773971XXXX', 'JUANITA DESIREE TAMPUBOLON@gmail.com', '1', '0'),
(1357, 0, 'Gladys Kiong', 'P', '0000-00-00', 'Jakarta Barat', '1', '1', ' -', '08526006XXXX', 'Gladys Kiong@gmail.com', '1', '0'),
(1358, 0, 'Donny Yoesgiantoro', 'L', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08173155XXXX', 'Donny Yoesgiantoro@gmail.com', '1', '0'),
(1359, 0, 'Bismarka Kurniawan', 'L', '0000-00-00', 'Indramayu', '0', '1', ' -', '08899726XXXX', 'Bismarka Kurniawan@gmail.com', '1', '0'),
(1360, 0, 'Harry Herjanto', 'P', '0000-00-00', 'Cianjur', '0', '1', ' -', '08174693XXXX', 'Harry Herjanto@gmail.com', '1', '0'),
(1361, 0, 'Bing Gondosubroto', 'L', '0000-00-00', 'Sumber', '1', '3', ' -', '08155334XXXX', 'Bing Gondosubroto@gmail.com', '1', '0'),
(1362, 0, 'Anna Solana Hamami Kadarachman', 'L', '0000-00-00', 'Purwakarta', '0', '1', ' -', '08583224XXXX', 'Anna Solana Hamami Kadarachman@gmail.com', '1', '0'),
(1363, 0, 'Juliana Ong Pei I', 'P', '0000-00-00', 'Ciamis', '1', '1', ' -', '08132519XXXX', 'Juliana Ong Pei I@gmail.com', '1', '0'),
(1364, 0, 'Henry Rudy Zaini', 'L', '0000-00-00', 'Jakarta Barat', '0', '1', ' -', '08287826XXXX', 'Henry Rudy Zaini@gmail.com', '1', '0'),
(1365, 0, 'Markus Parmadi', 'L', '0000-00-00', 'Jakarta Pusat', '1', '1', ' -', '08148015XXXX', 'Markus Parmadi@gmail.com', '1', '0'),
(1366, 0, 'LIM EDDY PURNOMO', 'P', '0000-00-00', ' Jakarta Selatan', '1', '3', ' -', '08154624XXXX', 'LIM EDDY PURNOMO@gmail.com', '1', '0'),
(1367, 0, 'Jason James Raymond', 'P', '0000-00-00', 'Soreang', '0', '3', ' -', '08122832XXXX', 'Jason James Raymond@gmail.com', '1', '0'),
(1368, 0, 'HENDRIKO WIJAYA', 'P', '0000-00-00', ' Jakarta Selatan', '1', '3', ' -', '08289562XXXX', 'HENDRIKO WIJAYA@gmail.com', '1', '0'),
(1369, 0, 'Juni Setiawati Wonowidjojo', 'P', '0000-00-00', 'Bekasi', '0', '2', ' -', '08128940XXXX', 'Juni Setiawati Wonowidjojo@gmail.com', '1', '0'),
(1370, 0, 'Jeffrey Koes Wonsono', 'P', '0000-00-00', 'Karawang', '1', '1', ' -', '08818320XXXX', 'Jeffrey Koes Wonsono@gmail.com', '1', '0'),
(1371, 0, 'Anuj Ralhan', 'L', '0000-00-00', 'Sumber', '0', '1', ' -', '08319846XXXX', 'Anuj Ralhan@gmail.com', '1', '0'),
(1372, 0, 'LYDIA TJIPTO', 'L', '0000-00-00', 'Jakarta Timur', '1', '1', ' -', '08148022XXXX', 'LYDIA TJIPTO@gmail.com', '1', '0'),
(1373, 0, 'Jodi Haryanto', 'L', '0000-00-00', 'Ciamis', '1', '1', ' -', '08524710XXXX', 'Jodi Haryanto@gmail.com', '1', '0'),
(1374, 0, 'Francisca Citrasari', 'L', '0000-00-00', 'Cianjur', '0', '1', ' -', '08893043XXXX', 'Francisca Citrasari@gmail.com', '1', '0'),
(1375, 0, 'LISA WIDJAJA', 'P', '0000-00-00', 'Majalengka', '1', '1', ' -', '08594977XXXX', 'LISA WIDJAJA@gmail.com', '1', '0'),
(1376, 0, 'Andy Wiryanto Ong', 'P', '0000-00-00', 'Garut', '0', '1', ' -', '08215721XXXX', 'Andy Wiryanto Ong@gmail.com', '1', '0'),
(1377, 0, 'Lenny Wijaya', 'P', '0000-00-00', 'Subang', '1', '1', ' -', '08889308XXXX', 'Lenny Wijaya@gmail.com', '1', '0'),
(1378, 0, 'KIMIN TANOTO', 'L', '0000-00-00', 'Ngamprah', '0', '3', ' -', '08583976XXXX', 'KIMIN TANOTO@gmail.com', '1', '0'),
(2048, 3, '123841924', 'P', '2020-10-01', 'Bikini Bottom', '0', '3', 'asdsad', '0865135132321', 'agus123@mail.com', '1', '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pelamar`
--

INSERT INTO `pelamar` (`pelamar_id`, `nama_pelamar`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `status_menikah`, `agama`, `alamat`, `no_hp`, `email`, `gambar_cv`, `gambar_ktp`, `gambar_foto_diri`, `gambar_sertifikat_pelatihan`, `gambar_catatan_kerja`, `hapus`) VALUES
(1, 'Mohamad Iqbal Musyaffa', 'L', '1995-11-23', 'Bandung', '0', '1', 'Jalan Suryani Dalam 2 No.101A/83 Bandung', '087838011516', 'iqbalm1995@gmail.com', '', '', '', '', '', '0'),
(2, 'Hari Rizwan', 'L', '1997-02-14', 'Gua Belanda', '1', '1', 'sdfghj', '089767763232', 'surel.muhkanda@gmail.com', '467d1b92c4b65734aab2be9c682f68aa.jpeg', 'd069be0f80072660f3100fd0e57f3222.pdf', '6499ec5fe6f0a767fd72fac635d9c0cf.jpeg', '', '850100ec1436fdbe8162b252dccad4ff.jpeg', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `status_pelamar` char(1) NOT NULL DEFAULT '0',
  `vector_s` bigint(20) DEFAULT NULL,
  `vector_v` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perekrutan_pelamar`
--

INSERT INTO `perekrutan_pelamar` (`pelamar_id`, `rekrut_id`, `status_pelamar`, `vector_s`, `vector_v`) VALUES
(1, 2, '0', NULL, NULL),
(2, 2, '0', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tes_perekrutan`
--

INSERT INTO `tes_perekrutan` (`rekrut_id`, `tes_id`) VALUES
(1, 2),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tes_ujian`
--

CREATE TABLE `tes_ujian` (
  `tes_id` int(11) NOT NULL,
  `nama_tes` varchar(200) NOT NULL,
  `deskripsi_tes` text DEFAULT NULL,
  `status_tes` char(1) NOT NULL DEFAULT '1',
  `jenis_tes` char(1) DEFAULT NULL,
  `bobot_tes` int(5) DEFAULT NULL,
  `hapus` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tes_ujian`
--

INSERT INTO `tes_ujian` (`tes_id`, `nama_tes`, `deskripsi_tes`, `status_tes`, `jenis_tes`, `bobot_tes`, `hapus`) VALUES
(1, 'Ujian Dunia', 'TES Ujian Dunia', '1', NULL, NULL, '0'),
(2, 'Ujian Akhirat', 'TES Ujian Akhirat', '1', NULL, NULL, '0'),
(3, 'Ujian Chunin', 'TES Ujian Chunin', '0', NULL, NULL, '1'),
(4, 'Test Krampelin', 'Test Krampelin', '1', '0', 3, '0');

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
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`karyawan_id`);

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
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `karyawan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2049;

--
-- AUTO_INCREMENT for table `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `pelamar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `pelamar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posisi`
--
ALTER TABLE `posisi`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tes_ujian`
--
ALTER TABLE `tes_ujian`
  MODIFY `tes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
