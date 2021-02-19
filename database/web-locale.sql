/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.1.37-MariaDB : Database - db_hrd_2021
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_hrd_2021` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_hrd_2021`;

/*Table structure for table `divisi` */

DROP TABLE IF EXISTS `divisi`;

CREATE TABLE `divisi` (
  `divisi_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_divisi` varchar(200) NOT NULL,
  `deskripsi_divisi` text,
  `status_divisi` char(1) NOT NULL DEFAULT '1',
  `hapus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`divisi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `divisi` */

insert  into `divisi`(`divisi_id`,`nama_divisi`,`deskripsi_divisi`,`status_divisi`,`hapus`) values 
(1,'IT','Divisi bidang komputasi dan jaringan','1','0'),
(2,'SALES','Divisi Sales penjualan','1','0'),
(3,'STAFF','Divisi Staff Support','1','0'),
(4,'MARKETING','Divisi Marketing Penjualan','0','0'),
(5,'tfhthfth','fthfgh45646','0','1');

/*Table structure for table `hak_akses` */

DROP TABLE IF EXISTS `hak_akses`;

CREATE TABLE `hak_akses` (
  `akses_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_akses` varchar(200) NOT NULL,
  `deskripsi_akses` text,
  `status_akses` char(1) NOT NULL DEFAULT '1',
  `hapus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `hak_akses` */

insert  into `hak_akses`(`akses_id`,`nama_akses`,`deskripsi_akses`,`status_akses`,`hapus`) values 
(1,'Super Admin','HAK AKSES SUPER ADMIN SEMUA AKSES DIBUKA','1','0'),
(2,'Admin','Admin Staff','1','0'),
(3,'HRD','HRD Staff','1','0'),
(4,'Direktur Staff','Direktur Bagian Staff','0','0'),
(5,'asd','asd','0','1');

/*Table structure for table `hasil_tes_pelamar` */

DROP TABLE IF EXISTS `hasil_tes_pelamar`;

CREATE TABLE `hasil_tes_pelamar` (
  `tes_hasil_id` int(11) NOT NULL AUTO_INCREMENT,
  `pelamar_id` int(11) NOT NULL,
  `tes_id` int(11) NOT NULL,
  `skor_wawancara` int(3) NOT NULL DEFAULT '0',
  `skor_tes` int(3) NOT NULL DEFAULT '0',
  `status_hasil_tes` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tes_hasil_id`),
  KEY `pelamar_id` (`pelamar_id`),
  KEY `tes_id` (`tes_id`),
  CONSTRAINT `hasil_tes_pelamar_ibfk_1` FOREIGN KEY (`pelamar_id`) REFERENCES `pelamar` (`pelamar_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hasil_tes_pelamar_ibfk_2` FOREIGN KEY (`tes_id`) REFERENCES `tes_ujian` (`tes_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `hasil_tes_pelamar` */

/*Table structure for table `iklan_lowongan` */

DROP TABLE IF EXISTS `iklan_lowongan`;

CREATE TABLE `iklan_lowongan` (
  `iklan_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_iklan` varchar(200) DEFAULT NULL,
  `deskripsi_iklan` text,
  `status_iklan` char(1) DEFAULT '1',
  `tanggal_iklan` datetime NOT NULL,
  `batas_waktu` datetime DEFAULT NULL,
  `gambar_iklan` varchar(200) DEFAULT NULL,
  `hapus` char(1) DEFAULT '0',
  PRIMARY KEY (`iklan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `iklan_lowongan` */

insert  into `iklan_lowongan`(`iklan_id`,`judul_iklan`,`deskripsi_iklan`,`status_iklan`,`tanggal_iklan`,`batas_waktu`,`gambar_iklan`,`hapus`) values 
(1,'Lowongan IT STAFF','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus. Pulvinar elementum integer enim neque volutpat ac.\r\nSenectus et netus et malesuada. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Neque convallis a cras semper auctor. Libero id faucibus nisl tincidunt eget. Leo a diam sollicitudin tempor id. A lacus vestibulum sed arcu non odio euismod lacinia. In tellus integer feugiat scelerisque. Feugiat in fermentum posuere urna nec tincidunt praesent. Porttitor rhoncus dolor purus non enim praesent elementum facilisis. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Et malesuada fames ac turpis egestas sed. Sit amet nisl suscipit adipiscing bibendum est ultricies. Arcu ac tortor dignissim convallis aenean et tortor at. Pretium viverra suspendisse potenti nullam ac tortor vitae purus. Eros donec ac odio tempor orci dapibus ultrices. Elementum nibh tellus molestie nunc. Et magnis dis parturient montes nascetur. Est placerat in egestas erat imperdiet. Consequat interdum varius sit amet mattis vulputate enim.\r\nSit amet nulla facilisi morbi tempus. Nulla facilisi cras fermentum odio eu. Etiam erat velit scelerisque in dictum non consectetur a erat. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Ut sem nulla pharetra diam. Fames ac turpis egestas maecenas. Bibendum neque egestas congue quisque egestas diam. Laoreet id donec ultrices tincidunt arcu non sodales neque. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Faucibus interdum posuere lorem ipsum dolor sit.\r\n','2','2021-02-10 12:30:31','2021-02-17 12:30:36',NULL,'1'),
(2,'Lowongan IT STAFF Kloter 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus. Pulvinar elementum integer enim neque volutpat ac. Senectus et netus et malesuada. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Neque convallis a cras semper auctor. Libero id faucibus nisl tincidunt eget. Leo a diam sollicitudin tempor id. A lacus vestibulum sed arcu non odio euismod lacinia. In tellus integer feugiat scelerisque. Feugiat in fermentum posuere urna nec tincidunt praesent. Porttitor rhoncus dolor purus non enim praesent elementum facilisis. Nisi scelerisque eu ultrices vitae auctor eu augue ut lectus. Ipsum faucibus vitae aliquet nec ullamcorper sit amet risus. Et malesuada fames ac turpis egestas sed. Sit amet nisl suscipit adipiscing bibendum est ultricies. Arcu ac tortor dignissim convallis aenean et tortor at. Pretium viverra suspendisse potenti nullam ac tortor vitae purus. Eros donec ac odio tempor orci dapibus ultrices. Elementum nibh tellus molestie nunc. Et magnis dis parturient montes nascetur. Est placerat in egestas erat imperdiet. Consequat interdum varius sit amet mattis vulputate enim. Sit amet nulla facilisi morbi tempus. Nulla facilisi cras fermentum odio eu. Etiam erat velit scelerisque in dictum non consectetur a erat. Enim nulla aliquet porttitor lacus luctus accumsan tortor posuere. Ut sem nulla pharetra diam. Fames ac turpis egestas maecenas. Bibendum neque egestas congue quisque egestas diam. Laoreet id donec ultrices tincidunt arcu non sodales neque. Eget felis eget nunc lobortis mattis aliquam faucibus purus. Faucibus interdum posuere lorem ipsum dolor sit.','1','2021-02-15 05:02:00','2021-02-22 11:02:00','Mermaid_Man_and_Barnacle_Boy_IV_039.jpg','0');

/*Table structure for table `pelamar` */

DROP TABLE IF EXISTS `pelamar`;

CREATE TABLE `pelamar` (
  `pelamar_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `hapus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pelamar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `pelamar` */

insert  into `pelamar`(`pelamar_id`,`nama_pelamar`,`jenis_kelamin`,`tanggal_lahir`,`tempat_lahir`,`status_menikah`,`agama`,`alamat`,`no_hp`,`email`,`gambar_cv`,`gambar_ktp`,`gambar_foto_diri`,`gambar_sertifikat_pelatihan`,`gambar_catatan_kerja`,`hapus`) values 
(1,'Mohamad Iqbal Musyaffa','L','1995-11-23','Bandung','0','1','Jalan Suryani Dalam 2 No.101A/83 Bandung','087838011516','iqbalm1995@gmail.com','','','','','','0'),
(2,'Hari Rizwan','L','1997-02-14','Gua Belanda','1','1','sdfghj','089767763232','surel.muhkanda@gmail.com','467d1b92c4b65734aab2be9c682f68aa.jpeg','d069be0f80072660f3100fd0e57f3222.pdf','6499ec5fe6f0a767fd72fac635d9c0cf.jpeg','','850100ec1436fdbe8162b252dccad4ff.jpeg','0');

/*Table structure for table `pengguna` */

DROP TABLE IF EXISTS `pengguna`;

CREATE TABLE `pengguna` (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `akses_id` int(11) NOT NULL,
  `nama_pengguna` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status_pengguna` char(1) NOT NULL DEFAULT '1',
  `hapus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pengguna_id`),
  UNIQUE KEY `email` (`email`),
  KEY `akses_id` (`akses_id`),
  CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`akses_id`) REFERENCES `hak_akses` (`akses_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pengguna` */

insert  into `pengguna`(`pengguna_id`,`akses_id`,`nama_pengguna`,`username`,`password`,`email`,`status_pengguna`,`hapus`) values 
(1,1,'Adminer','admin123','$2y$10$f1bLmJlJ.YnmBEviNKZAj.sEcl3Y7aQCsHaQHMng69ogVq/Qh5JTa','adminer77@email.com','1','0'),
(2,2,'Ageng S.','ageng123','$2y$10$FXN8fqXg/Ff6gnH4rGQja.d9ZXcA.stf2uHOiiD6FZMQFmHAR3H12','Ageng@mail.com','1','0'),
(3,4,'Agus','agus123','$2y$10$JShhxiDGCSMzGTmFjbahcOmftIrNcwwApOvo81wJBGSZATg4T.r0W','agus123@mail.com','0','1');

/*Table structure for table `perekrutan` */

DROP TABLE IF EXISTS `perekrutan`;

CREATE TABLE `perekrutan` (
  `rekrut_id` int(11) NOT NULL AUTO_INCREMENT,
  `iklan_id` int(11) NOT NULL,
  `pos_id` int(11) NOT NULL,
  `deskripsi_rekrut` text,
  `status_rekrut` char(1) NOT NULL DEFAULT '1',
  `kapasitas` int(4) NOT NULL DEFAULT '1',
  `terisi` int(4) NOT NULL DEFAULT '0',
  `hapus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rekrut_id`),
  KEY `iklan_id` (`iklan_id`),
  KEY `pos_id` (`pos_id`),
  CONSTRAINT `perekrutan_ibfk_1` FOREIGN KEY (`iklan_id`) REFERENCES `iklan_lowongan` (`iklan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `perekrutan_ibfk_2` FOREIGN KEY (`pos_id`) REFERENCES `posisi` (`pos_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `perekrutan` */

insert  into `perekrutan`(`rekrut_id`,`iklan_id`,`pos_id`,`deskripsi_rekrut`,`status_rekrut`,`kapasitas`,`terisi`,`hapus`) values 
(1,2,1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus.','0',10,0,'0'),
(2,2,3,'Pulvinar elementum integer enim neque volutpat ac. Senectus et netus et malesuada. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Neque convallis a cras semper auctor. Libero id faucibus nisl tincidunt eget. Leo a diam sollicitudin tempor id. A lacus vestibulum sed arcu non odio euismod lacinia. In tellus integer feugiat scelerisque. Feugiat in fermentum posuere urna nec tincidunt praesent.','1',2,0,'0'),
(3,2,4,'efsefsefs','2',5,0,'1');

/*Table structure for table `perekrutan_pelamar` */

DROP TABLE IF EXISTS `perekrutan_pelamar`;

CREATE TABLE `perekrutan_pelamar` (
  `pelamar_id` int(11) NOT NULL AUTO_INCREMENT,
  `rekrut_id` int(11) NOT NULL,
  `status_pelamar` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pelamar_id`),
  KEY `rekrut_id` (`rekrut_id`),
  CONSTRAINT `perekrutan_pelamar_ibfk_1` FOREIGN KEY (`pelamar_id`) REFERENCES `pelamar` (`pelamar_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `perekrutan_pelamar_ibfk_2` FOREIGN KEY (`rekrut_id`) REFERENCES `perekrutan` (`rekrut_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `perekrutan_pelamar` */

insert  into `perekrutan_pelamar`(`pelamar_id`,`rekrut_id`,`status_pelamar`) values 
(1,2,'0'),
(2,2,'0');

/*Table structure for table `posisi` */

DROP TABLE IF EXISTS `posisi`;

CREATE TABLE `posisi` (
  `pos_id` int(11) NOT NULL AUTO_INCREMENT,
  `divisi_id` int(11) NOT NULL,
  `nama_posisi` varchar(200) NOT NULL,
  `deskripsi_posisi` text,
  `status_posisi` char(1) NOT NULL DEFAULT '1',
  `hapus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pos_id`),
  KEY `divisi_id` (`divisi_id`),
  CONSTRAINT `posisi_ibfk_1` FOREIGN KEY (`divisi_id`) REFERENCES `divisi` (`divisi_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `posisi` */

insert  into `posisi`(`pos_id`,`divisi_id`,`nama_posisi`,`deskripsi_posisi`,`status_posisi`,`hapus`) values 
(1,1,'IT Support','IT bagian support','1','0'),
(3,1,'IT Supervisor','IT Bagian supervisor','1','0'),
(4,2,'Sales Supervisor','Sales bagian super visor','0','0'),
(6,4,'jkljkl','jkljkl','0','1');

/*Table structure for table `tes_perekrutan` */

DROP TABLE IF EXISTS `tes_perekrutan`;

CREATE TABLE `tes_perekrutan` (
  `rekrut_id` int(11) NOT NULL,
  `tes_id` int(11) NOT NULL,
  KEY `tes_id` (`tes_id`),
  KEY `rekrut_id` (`rekrut_id`),
  CONSTRAINT `tes_perekrutan_ibfk_2` FOREIGN KEY (`tes_id`) REFERENCES `tes_ujian` (`tes_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tes_perekrutan_ibfk_3` FOREIGN KEY (`rekrut_id`) REFERENCES `perekrutan` (`rekrut_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tes_perekrutan` */

insert  into `tes_perekrutan`(`rekrut_id`,`tes_id`) values 
(1,2),
(2,4);

/*Table structure for table `tes_ujian` */

DROP TABLE IF EXISTS `tes_ujian`;

CREATE TABLE `tes_ujian` (
  `tes_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tes` varchar(200) NOT NULL,
  `deskripsi_tes` text,
  `status_tes` char(1) NOT NULL DEFAULT '1',
  `jenis_tes` char(1) DEFAULT NULL,
  `bobot_tes` int(5) DEFAULT NULL,
  `hapus` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tes_ujian` */

insert  into `tes_ujian`(`tes_id`,`nama_tes`,`deskripsi_tes`,`status_tes`,`jenis_tes`,`bobot_tes`,`hapus`) values 
(1,'Ujian Dunia','TES Ujian Dunia','1',NULL,NULL,'0'),
(2,'Ujian Akhirat','TES Ujian Akhirat','1',NULL,NULL,'0'),
(3,'Ujian Chunin','TES Ujian Chunin','0',NULL,NULL,'1'),
(4,'Test Krampelin','Test Krampelin','1','0',3,'0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
