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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `hasil_tes_pelamar` */

insert  into `hasil_tes_pelamar`(`tes_hasil_id`,`pelamar_id`,`tes_id`,`skor_wawancara`,`skor_tes`,`status_hasil_tes`) values 
(1,2,4,0,80,'0'),
(2,2,1,0,85,'0'),
(3,1,1,0,100,'0'),
(4,1,4,0,100,'0'),
(5,2,3,0,75,'0'),
(6,2,2,0,85,'0'),
(7,1,3,0,100,'0'),
(8,1,2,0,100,'0'),
(9,3,1,0,85,'0'),
(10,3,3,0,70,'0'),
(11,3,2,0,80,'0'),
(12,3,4,0,75,'0');

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

/*Table structure for table `karyawan` */

DROP TABLE IF EXISTS `karyawan`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `karyawan` */

insert  into `karyawan`(`karyawan_id`,`pos_id`,`nama_karyawan`,`jenis_kelamin`,`tanggal_lahir`,`tempat_lahir`,`status_menikah`,`agama`,`alamat`,`no_hp`,`email`,`status_karyawan`,`hapus`) values 
(1,0,'Miranda Tedjasaputra','P','0000-00-00','Soreang','1','1',' -','08895301XXXX','Miranda Tedjasaputra@gmail.com','1','0'),
(2,0,'Johannes Oentoro','L','0000-00-00','Cibinong','1','1',' -','08783231XXXX','Johannes Oentoro@gmail.com','1','0'),
(3,0,'Haryono Winarta','L','0000-00-00','Jakarta Utara','0','2',' -','08578998XXXX','Haryono Winarta@gmail.com','1','0'),
(4,0,'Gerry Aubry','L','0000-00-00','Purwakarta','1','3',' -','08163816XXXX','Gerry Aubry@gmail.com','1','0'),
(5,0,'I Nyoman Djintji','P','0000-00-00','Subang','0','3',' -','08123376XXXX','I Nyoman Djintji@gmail.com','1','0'),
(6,0,'Hari Widodo','L','0000-00-00','Purwakarta','1','3',' -','08989859XXXX','Hari Widodo@gmail.com','1','0'),
(7,0,'Albert Kongoasa','L','0000-00-00','Sumedang','1','3',' -','08148031XXXX','Albert Kongoasa@gmail.com','1','0'),
(8,0,'Herumanlo Zaini','L','0000-00-00','Sumber','0','3',' -','08594736XXXX','Herumanlo Zaini@gmail.com','1','0'),
(9,0,'Dick Leitch','L','0000-00-00','Ciamis','0','2',' -','08157866XXXX','Dick Leitch@gmail.com','1','0'),
(10,0,'Hasan Aula','L','0000-00-00','Cirebon','1','1',' -','08788878XXXX','Hasan Aula@gmail.com','1','0'),
(11,0,'ELVIN TJANDRA','L','0000-00-00','Bogor','0','1',' -','08285018XXXX','ELVIN TJANDRA@gmail.com','0','0'),
(12,0,'John Hugh Lester','L','0000-00-00','Cimahi','1','1',' -','08151142XXXX','John Hugh Lester@gmail.com','1','0'),
(13,0,'Abdul Hadi Ismail','L','0000-00-00','Purwakarta','1','1',' -','08894982XXXX','Abdul Hadi Ismail@gmail.com','1','0'),
(14,0,'Arya Widjaya','L','0000-00-00','Cirebon','1','1',' -','08533263XXXX','Arya Widjaya@gmail.com','1','0'),
(15,0,'Irene Maya Hambali Ishak','P','0000-00-00','Sumedang','0','1',' -','08215994XXXX','Irene Maya Hambali Ishak@gmail.com','1','0'),
(16,0,'Murdaya Widyawimarta','L','0000-00-00','Parigi','0','1',' -','08776729XXXX','Murdaya Widyawimarta@gmail.com','1','0'),
(17,0,'Dharmadi Budiman','L','0000-00-00','Bekasi','1','2',' -','08283169XXXX','Dharmadi Budiman@gmail.com','1','0'),
(18,0,'Ahadiat Wargana','L','0000-00-00','Sumedang','0','2',' -','08151442XXXX','Ahadiat Wargana@gmail.com','1','0'),
(19,0,'JOHANNES HALIM','L','0000-00-00','Cimahi','0','3',' -','08539059XXXX','JOHANNES HALIM@gmail.com','1','0'),
(20,0,'Marluce Tio Indriati Santoso','L','0000-00-00','Bogor','1','3',' -','08578176XXXX','Marluce Tio Indriati Santoso@gmail.com','1','0'),
(21,0,'HARMIONO JUDIANTO','L','0000-00-00','Ciamis','0','3',' -','08315384XXXX','HARMIONO JUDIANTO@gmail.com','1','0'),
(22,0,'Fauzi Ezeddin','L','0000-00-00','Cianjur','0','1',' -','08382859XXXX','Fauzi Ezeddin@gmail.com','1','0'),
(23,0,'Hendrik','L','0000-00-00','Sumber','1','1',' -','08534708XXXX','Hendrik@gmail.com','1','0'),
(24,0,'Ahmad faried ','L','0000-00-00','Bandung','1','1',' -','08526029XXXX','Ahmad faried@gmail.com','1','0'),
(25,0,'Candra Winoto Salim','L','0000-00-00','Cisaat','0','1',' -','08181287XXXX','Candra Winoto Salim@gmail.com','1','0'),
(26,0,'Calvin Lukmantara','L','0000-00-00',' Jakarta Selatan','1','2',' -','08892316XXXX','Calvin Lukmantara@gmail.com','1','0'),
(27,0,'Fauzi Jahja','L','0000-00-00','Garut','1','1',' -','08597949XXXX','Fauzi Jahja@gmail.com','1','0'),
(28,0,'Kiki Kiftiah','P','0000-00-00','Cirebon','0','1',' -','08188828XXXX','Kiki Kiftiah@gmail.com','1','0'),
(29,0,'Hendra Tjoa','L','0000-00-00','Singaparna','1','1',' -','08537039XXXX','Hendra Tjoa@gmail.com','1','0'),
(30,0,'Bambang Rahardja Burhan','L','0000-00-00','Tasikmalaya','0','1',' -','08568957XXXX','Bambang Rahardja Burhan@gmail.com','1','0'),
(31,0,'Jeniawati','P','0000-00-00','Tasikmalaya','1','2',' -','08565804XXXX','Jeniawati@gmail.com','1','0'),
(32,0,'Lestariono','L','0000-00-00','Cibinong','0','1',' -','08151305XXXX','Lestariono@gmail.com','1','0'),
(33,0,'Irsanto Ongko','P','0000-00-00','Soreang','0','1',' -','08191938XXXX','Irsanto Ongko@gmail.com','1','0'),
(34,0,'Effendy Husin','L','0000-00-00','Tasikmalaya','0','1',' -','08539087XXXX','Effendy Husin@gmail.com','1','0'),
(35,0,'Fitri Wiriasari','L','0000-00-00','Ciamis','1','1',' -','08163514XXXX','Fitri Wiriasari@gmail.com','1','0'),
(36,0,'Eddy Purwanto Lim','P','0000-00-00','Cimahi','1','2',' -','08212553XXXX','Eddy Purwanto Lim@gmail.com','1','0'),
(37,0,'EMILY STEPHANA DJAUHARI','L','0000-00-00','Sumber','1','3',' -','08129295XXXX','EMILY STEPHANA DJAUHARI@gmail.com','1','0'),
(38,0,'Aristotle','P','0000-00-00','Cimahi','0','1',' -','08176369XXXX','Aristotle@gmail.com','1','0'),
(39,0,'EDGARDO ELOY DIAZ FALCONET','P','0000-00-00','Jakarta Barat','1','3',' -','08113532XXXX','EDGARDO ELOY DIAZ FALCONET@gmail.com','1','0'),
(40,0,'Gunawan Sucahijono Tjoa','P','0000-00-00','Purwakarta','1','1',' -','08786648XXXX','Gunawan Sucahijono Tjoa@gmail.com','1','0'),
(41,0,'Ibu Rahmawaty','P','0000-00-00','Garut','0','1',' -','08774217XXXX','Ibu Rahmawaty@gmail.com','1','0'),
(42,0,'Gita Wirjawan','L','0000-00-00','Jakarta Pusat','0','1',' -','08176814XXXX','Gita Wirjawan@gmail.com','1','0'),
(43,0,'HENRY WIDJAYA','P','0000-00-00','Jakarta Pusat','0','1',' -','08596726XXXX','HENRY WIDJAYA@gmail.com','1','0'),
(44,0,'MUNKLEY Christopher James','P','0000-00-00','Tasikmalaya','1','1',' -','08961487XXXX','MUNKLEY Christopher James@gmail.com','1','0'),
(45,0,'Cavalier International Group Corporation','P','0000-00-00','Indramayu','0','3',' -','08214259XXXX','Cavalier International Group Corporation@gmail.com','1','0'),
(46,0,'Gesang Budiarso','P','0000-00-00','Bekasi','0','3',' -','08895011XXXX','Gesang Budiarso@gmail.com','1','0'),
(47,0,'JUANDY WIJAYA','P','0000-00-00','Sumedang','1','3',' -','08174461XXXX','JUANDY WIJAYA@gmail.com','1','0'),
(48,0,'Bayu Prawitasari','P','0000-00-00','Bogor','0','2',' -','08811912XXXX','Bayu Prawitasari@gmail.com','1','0'),
(49,0,'James Preston TRUESDELL','L','0000-00-00','Garut','0','1',' -','08147958XXXX','James Preston TRUESDELL@gmail.com','1','0'),
(50,0,'ARDAS DIPA','P','0000-00-00','Jakarta Pusat','0','1',' -','08969551XXXX','ARDAS DIPA@gmail.com','1','0'),
(51,0,'Dharma Tjitra Widjaja','L','0000-00-00','Cianjur','0','1',' -','08126351XXXX','Dharma Tjitra Widjaja@gmail.com','1','0'),
(52,0,'Anton Santoso','P','0000-00-00','Bogor','1','1',' -','08785831XXXX','Anton Santoso@gmail.com','1','0'),
(53,0,'Djohan Tjiunardi','L','0000-00-00','Jakarta Timur','1','1',' -','08135307XXXX','Djohan Tjiunardi@gmail.com','1','0'),
(54,0,'Fifi Indra','P','0000-00-00','Cimahi','0','3',' -','08566912XXXX','Fifi Indra@gmail.com','1','0'),
(55,0,'Dixon Koesdjojo','P','0000-00-00','Majalengka','1','1',' -','08893028XXXX','Dixon Koesdjojo@gmail.com','1','0'),
(56,0,'Darmansjah Darsono','P','0000-00-00','Cirebon','0','2',' -','08147555XXXX','Darmansjah Darsono@gmail.com','1','0'),
(57,0,'Boediyanio Gondotirto','L','0000-00-00','Karawang','0','1',' -','08987342XXXX','Boediyanio Gondotirto@gmail.com','1','0'),
(58,0,'Mohamad Abdullah Jasin and Dewi Kam','P','0000-00-00','Ciamis','0','1',' -','08591409XXXX','Mohamad Abdullah Jasin and Dewi Kam@gmail.com','1','0'),
(59,0,'Matthew S. Deayton','P','0000-00-00','Bekasi','0','2',' -','08592831XXXX','Matthew S. Deayton@gmail.com','1','0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `pelamar` */

insert  into `pelamar`(`pelamar_id`,`nama_pelamar`,`jenis_kelamin`,`tanggal_lahir`,`tempat_lahir`,`status_menikah`,`agama`,`alamat`,`no_hp`,`email`,`gambar_cv`,`gambar_ktp`,`gambar_foto_diri`,`gambar_sertifikat_pelatihan`,`gambar_catatan_kerja`,`hapus`) values 
(1,'Alex Bardy','L','1995-11-23','Edinburgh','0','1','Jalan Suryani Dalam 2 No.101A/83 Bandung','087838011516','alex@net.id','','','','','','0'),
(2,'Garrett Bale','L','1997-02-14','Tokyo','1','1','sdfghj','085767763232','bale@net.id','467d1b92c4b65734aab2be9c682f68aa.jpeg','d069be0f80072660f3100fd0e57f3222.pdf','6499ec5fe6f0a767fd72fac635d9c0cf.jpeg','','850100ec1436fdbe8162b252dccad4ff.jpeg','0'),
(3,'Ashton Martin','L','1997-02-14','San Francisco','0','2','','089738471257','martin@net.id','','','','','','0');

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
  `vektor_s` float DEFAULT NULL,
  `vektor_v` float DEFAULT NULL,
  PRIMARY KEY (`pelamar_id`),
  KEY `rekrut_id` (`rekrut_id`),
  CONSTRAINT `perekrutan_pelamar_ibfk_1` FOREIGN KEY (`pelamar_id`) REFERENCES `pelamar` (`pelamar_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `perekrutan_pelamar_ibfk_2` FOREIGN KEY (`rekrut_id`) REFERENCES `perekrutan` (`rekrut_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `perekrutan_pelamar` */

insert  into `perekrutan_pelamar`(`pelamar_id`,`rekrut_id`,`status_pelamar`,`vektor_s`,`vektor_v`) values 
(1,2,'0',4.64173,0.339045),
(2,2,'0',4.52904,0.330814),
(3,2,'0',4.51983,0.330141);

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
(2,4),
(2,1),
(2,2),
(2,3);

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
(1,'Disiplin Waktu','Disiplin Waktu','1','0',4,'0'),
(2,'Test Gambar','Test Gambar','1','0',3,'0'),
(3,'Permintaan Gaji','Permintaan Gaji','1','1',5,'0'),
(4,'Test Krampelin','Test Krampelin','1','0',3,'0');

/*Table structure for table `view_data` */

DROP TABLE IF EXISTS `view_data`;

/*!50001 DROP VIEW IF EXISTS `view_data` */;
/*!50001 DROP TABLE IF EXISTS `view_data` */;

/*!50001 CREATE TABLE  `view_data`(
 `tes_id` int(11) ,
 `nama_tes` varchar(200) ,
 `bobot_tes` int(5) ,
 `jenis_tes` char(1) ,
 `skor_tes` int(3) ,
 `pelamar_id` int(11) ,
 `nama_pelamar` varchar(200) ,
 `rekrut_id` int(11) 
)*/;

/*View structure for view view_data */

/*!50001 DROP TABLE IF EXISTS `view_data` */;
/*!50001 DROP VIEW IF EXISTS `view_data` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_data` AS (select `tu`.`tes_id` AS `tes_id`,`tu`.`nama_tes` AS `nama_tes`,`tu`.`bobot_tes` AS `bobot_tes`,`tu`.`jenis_tes` AS `jenis_tes`,`ht`.`skor_tes` AS `skor_tes`,`ht`.`pelamar_id` AS `pelamar_id`,`p`.`nama_pelamar` AS `nama_pelamar`,`pp`.`rekrut_id` AS `rekrut_id` from (((`hasil_tes_pelamar` `ht` left join `tes_ujian` `tu` on((`ht`.`tes_id` = `tu`.`tes_id`))) left join `pelamar` `p` on((`ht`.`pelamar_id` = `p`.`pelamar_id`))) left join `perekrutan_pelamar` `pp` on((`p`.`pelamar_id` = `pp`.`pelamar_id`))) where ((`p`.`hapus` = 0) and (`tu`.`hapus` = 0)) order by `tu`.`tes_id`,`p`.`nama_pelamar`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
