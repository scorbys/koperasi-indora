/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : db_kud

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 28/08/2020 20:11:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for riwayat
-- ----------------------------
DROP TABLE IF EXISTS `riwayat`;
CREATE TABLE `riwayat`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nominal` int(20) NULL DEFAULT NULL,
  `tanggal` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_user` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of riwayat
-- ----------------------------
INSERT INTO `riwayat` VALUES (1, 'Pembayaran', 'Simpanan Sukarela Rp. 10000', 10000, '06-07-2020 20:4', '13.1933.0234');
INSERT INTO `riwayat` VALUES (2, 'Pembelian Produk', 'TRX-00000', 26250, '2020-08-10', '13.1933.0234');
INSERT INTO `riwayat` VALUES (3, 'Pembelian Produk', 'TRX-00000', 26250, '2020-08-10', '13.1933.0234');
INSERT INTO `riwayat` VALUES (4, 'Pembelian Produk', 'TRX-00000', 26250, '2020-08-10', '13.1933.0234');
INSERT INTO `riwayat` VALUES (5, 'Pembelian Produk', 'TRX-00000', 26250, '2020-08-10', '13.1933.0234');
INSERT INTO `riwayat` VALUES (6, 'Pembelian Produk', 'TRX-00000', 26250, '2020-08-10', '13.1933.0234');
INSERT INTO `riwayat` VALUES (7, 'Pembelian Produk', 'TRX-00000', 26250, '2020-08-10', '13.1933.0234');
INSERT INTO `riwayat` VALUES (8, 'Pembelian Produk', 'TRX-00000', 26250, '2020-08-10', '13.1933.0234');
INSERT INTO `riwayat` VALUES (9, 'Pembelian Produk', 'TRX-00000', 26250, '2020-08-10', '13.1933.0234');

-- ----------------------------
-- Table structure for tb_blj
-- ----------------------------
DROP TABLE IF EXISTS `tb_blj`;
CREATE TABLE `tb_blj`  (
  `id_trx` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hrg_total` int(100) NULL DEFAULT NULL,
  `kirim` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lokasi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status_trx` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sukarela` int(100) NULL DEFAULT NULL,
  `point` int(100) NULL DEFAULT NULL,
  `alamat` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `telp` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `aktif` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jam` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_kasir` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kembali` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `masuk` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_verif` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_outlet` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ongkir` int(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id_trx`, `lokasi`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_blj
-- ----------------------------
INSERT INTO `tb_blj` VALUES ('TRX-00000', '13.1933.0234', 26250, '', '2020-08-10 22:28:01', '', '', NULL, 200, ' ', '66666666', 'Mas Baymax', 'Y', '00:00:00', '2', NULL, NULL, NULL, NULL, 'simpanan', NULL);

-- ----------------------------
-- Table structure for tb_blj_tmp
-- ----------------------------
DROP TABLE IF EXISTS `tb_blj_tmp`;
CREATE TABLE `tb_blj_tmp`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_barang` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jumlah` int(100) NULL DEFAULT NULL,
  `tgl` datetime(0) NULL DEFAULT NULL,
  `id_trx` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_blj_tmp
-- ----------------------------
INSERT INTO `tb_blj_tmp` VALUES (1, '123', '1', 1, '2020-08-10 22:27:27', 'TRX-00000', 1);
INSERT INTO `tb_blj_tmp` VALUES (2, '123', '3', 1, '2020-08-10 22:27:37', 'TRX-00000', 1);

-- ----------------------------
-- Table structure for tb_dansos
-- ----------------------------
DROP TABLE IF EXISTS `tb_dansos`;
CREATE TABLE `tb_dansos`  (
  `id_dansos` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `nominal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_tf` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_dansos`) USING BTREE,
  INDEX `2`(`id_admin`) USING BTREE,
  INDEX `id_tf`(`id_tf`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tb_dansos_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_dansos_ibfk_3` FOREIGN KEY (`id_tf`) REFERENCES `tb_tf` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_dansos_ibfk_4` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_hadiah
-- ----------------------------
DROP TABLE IF EXISTS `tb_hadiah`;
CREATE TABLE `tb_hadiah`  (
  `id_hadiah` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `poin` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_hadiah`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_hadiah
-- ----------------------------
INSERT INTO `tb_hadiah` VALUES (1, 'hadiah-1596471035.jpg', 'Sabun Detol', 10);
INSERT INTO `tb_hadiah` VALUES (2, 'hadiah-1596472029.jpg', 'Sabun Detol 1', 10);

-- ----------------------------
-- Table structure for tb_iklan
-- ----------------------------
DROP TABLE IF EXISTS `tb_iklan`;
CREATE TABLE `tb_iklan`  (
  `banner_id` int(3) NOT NULL AUTO_INCREMENT,
  `banner_image` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mp3_description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`banner_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_iklan
-- ----------------------------
INSERT INTO `tb_iklan` VALUES (12, 'iklan-1596512501.jpeg', '');
INSERT INTO `tb_iklan` VALUES (13, 'iklan-1596512579.jpeg', NULL);

-- ----------------------------
-- Table structure for tb_kabupaten
-- ----------------------------
DROP TABLE IF EXISTS `tb_kabupaten`;
CREATE TABLE `tb_kabupaten`  (
  `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT,
  `id_provinsi` int(11) NOT NULL,
  `kabupaten` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kabupaten`) USING BTREE,
  INDEX `id_provinsi`(`id_provinsi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_kabupaten
-- ----------------------------
INSERT INTO `tb_kabupaten` VALUES (1, 1, 'Pilih Kabupaten');
INSERT INTO `tb_kabupaten` VALUES (2, 2, 'Banyumas');

-- ----------------------------
-- Table structure for tb_kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `tb_kecamatan`;
CREATE TABLE `tb_kecamatan`  (
  `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT,
  `id_kabupaten` int(11) NOT NULL,
  `kecamatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kecamatan`) USING BTREE,
  INDEX `id_kabupaten`(`id_kabupaten`) USING BTREE,
  CONSTRAINT `tb_kecamatan_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `tb_kabupaten` (`id_kabupaten`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_kecamatan
-- ----------------------------
INSERT INTO `tb_kecamatan` VALUES (1, 1, 'Pilih Kecamatan');
INSERT INTO `tb_kecamatan` VALUES (2, 2, 'Ajibarang');
INSERT INTO `tb_kecamatan` VALUES (6, 2, 'Banyumas');
INSERT INTO `tb_kecamatan` VALUES (7, 2, 'Baturraden');
INSERT INTO `tb_kecamatan` VALUES (8, 2, 'Cilongok');
INSERT INTO `tb_kecamatan` VALUES (9, 2, 'Gumelar');
INSERT INTO `tb_kecamatan` VALUES (10, 2, 'Jatilawang');
INSERT INTO `tb_kecamatan` VALUES (11, 2, 'Kalibagor');
INSERT INTO `tb_kecamatan` VALUES (12, 2, 'Karanglewas');
INSERT INTO `tb_kecamatan` VALUES (13, 2, 'Kebasen');
INSERT INTO `tb_kecamatan` VALUES (14, 2, 'Kedungbanteng');
INSERT INTO `tb_kecamatan` VALUES (15, 2, 'Kembaran');
INSERT INTO `tb_kecamatan` VALUES (16, 2, 'Kemranjen');
INSERT INTO `tb_kecamatan` VALUES (17, 2, 'Lumbir');
INSERT INTO `tb_kecamatan` VALUES (18, 2, 'Patikraja');
INSERT INTO `tb_kecamatan` VALUES (19, 2, 'Pekuncen');
INSERT INTO `tb_kecamatan` VALUES (20, 2, 'Purwojati');
INSERT INTO `tb_kecamatan` VALUES (21, 2, 'Purwokerto Barat');
INSERT INTO `tb_kecamatan` VALUES (22, 2, 'Purwokerto Selatan');
INSERT INTO `tb_kecamatan` VALUES (23, 2, 'Purwokerto Timur');
INSERT INTO `tb_kecamatan` VALUES (24, 2, 'Purwokerto Utara');
INSERT INTO `tb_kecamatan` VALUES (25, 2, 'Rawalo');
INSERT INTO `tb_kecamatan` VALUES (26, 2, 'Sokaraja');
INSERT INTO `tb_kecamatan` VALUES (27, 2, 'Somagede');
INSERT INTO `tb_kecamatan` VALUES (28, 2, 'Sumbang');
INSERT INTO `tb_kecamatan` VALUES (29, 2, 'Sumpiuh');
INSERT INTO `tb_kecamatan` VALUES (30, 2, 'Tambak');
INSERT INTO `tb_kecamatan` VALUES (31, 2, 'Wangon');

-- ----------------------------
-- Table structure for tb_kelurahan
-- ----------------------------
DROP TABLE IF EXISTS `tb_kelurahan`;
CREATE TABLE `tb_kelurahan`  (
  `id_kelurahan` int(11) NOT NULL AUTO_INCREMENT,
  `id_kecamatan` int(11) NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelurahan`) USING BTREE,
  INDEX `id_kecamatan`(`id_kecamatan`) USING BTREE,
  CONSTRAINT `tb_kelurahan_ibfk_1` FOREIGN KEY (`id_kecamatan`) REFERENCES `tb_kecamatan` (`id_kecamatan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 371 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_kelurahan
-- ----------------------------
INSERT INTO `tb_kelurahan` VALUES (1, 1, 'Pilih Kelurahan', '13');
INSERT INTO `tb_kelurahan` VALUES (4, 2, 'Ajibarang Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (5, 2, 'Ajibarang Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (6, 2, 'Banjarsari Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (7, 2, 'Ciberung', '13');
INSERT INTO `tb_kelurahan` VALUES (8, 2, 'Darmakradenan', '13');
INSERT INTO `tb_kelurahan` VALUES (9, 2, 'Jingkang', '13');
INSERT INTO `tb_kelurahan` VALUES (10, 2, 'Kalibenda', '13');
INSERT INTO `tb_kelurahan` VALUES (11, 2, 'Karangbawang', '13');
INSERT INTO `tb_kelurahan` VALUES (12, 2, 'Kracak', '13');
INSERT INTO `tb_kelurahan` VALUES (13, 2, 'Lesmana', '13');
INSERT INTO `tb_kelurahan` VALUES (14, 2, 'Pancasan', '13');
INSERT INTO `tb_kelurahan` VALUES (15, 2, 'Pancurendang', '13');
INSERT INTO `tb_kelurahan` VALUES (16, 2, 'Pandansari', '13');
INSERT INTO `tb_kelurahan` VALUES (17, 2, 'Sawangan', '13');
INSERT INTO `tb_kelurahan` VALUES (18, 2, 'Tipar Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (20, 6, 'Banjarejo', '13');
INSERT INTO `tb_kelurahan` VALUES (21, 6, 'Banyu Urip', '13');
INSERT INTO `tb_kelurahan` VALUES (22, 6, 'Banyumas', '13');
INSERT INTO `tb_kelurahan` VALUES (23, 6, 'Banyuwangi', '13');
INSERT INTO `tb_kelurahan` VALUES (24, 6, 'Binangun', '11');
INSERT INTO `tb_kelurahan` VALUES (25, 6, 'Danaraja', '03');
INSERT INTO `tb_kelurahan` VALUES (26, 6, 'Dawuhan', '09');
INSERT INTO `tb_kelurahan` VALUES (27, 6, 'Kalisube', '08');
INSERT INTO `tb_kelurahan` VALUES (28, 6, 'Karangrau', '05');
INSERT INTO `tb_kelurahan` VALUES (29, 6, 'Kedunggede', '06');
INSERT INTO `tb_kelurahan` VALUES (30, 6, 'Kedunguter', '02');
INSERT INTO `tb_kelurahan` VALUES (31, 6, 'Kejawar', '04');
INSERT INTO `tb_kelurahan` VALUES (32, 6, 'Mulyo Rejo', '13');
INSERT INTO `tb_kelurahan` VALUES (33, 6, 'Nusa Wungu', '13');
INSERT INTO `tb_kelurahan` VALUES (34, 6, 'Papringan', '12');
INSERT INTO `tb_kelurahan` VALUES (35, 6, 'Pasinggangan', '10');
INSERT INTO `tb_kelurahan` VALUES (36, 6, 'Pekunden', '07');
INSERT INTO `tb_kelurahan` VALUES (37, 6, 'Sinar Mulia', '13');
INSERT INTO `tb_kelurahan` VALUES (38, 6, 'Sri Rahayu', '13');
INSERT INTO `tb_kelurahan` VALUES (39, 6, 'Sriwungu', '13');
INSERT INTO `tb_kelurahan` VALUES (40, 6, 'Sudagaran', '01');
INSERT INTO `tb_kelurahan` VALUES (41, 6, 'Sukamulya', '13');
INSERT INTO `tb_kelurahan` VALUES (42, 6, 'Waya Krui', '13');
INSERT INTO `tb_kelurahan` VALUES (43, 7, 'Karangmangu', '13');
INSERT INTO `tb_kelurahan` VALUES (44, 7, 'Karangsalam Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (45, 7, 'Karangtengah', '13');
INSERT INTO `tb_kelurahan` VALUES (46, 7, 'Kebumen', '13');
INSERT INTO `tb_kelurahan` VALUES (47, 7, 'Kemutug Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (48, 7, 'Kemutug Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (49, 7, 'Ketenger', '13');
INSERT INTO `tb_kelurahan` VALUES (50, 7, 'Kutasari', '13');
INSERT INTO `tb_kelurahan` VALUES (51, 7, 'Pamijen', '13');
INSERT INTO `tb_kelurahan` VALUES (52, 7, 'Pandak', '13');
INSERT INTO `tb_kelurahan` VALUES (53, 7, 'Purwosari', '13');
INSERT INTO `tb_kelurahan` VALUES (54, 7, 'Rempoah', '13');
INSERT INTO `tb_kelurahan` VALUES (55, 8, 'Batuanten', '13');
INSERT INTO `tb_kelurahan` VALUES (56, 8, 'Cikidang', '13');
INSERT INTO `tb_kelurahan` VALUES (57, 8, 'Cilongok', '13');
INSERT INTO `tb_kelurahan` VALUES (58, 8, 'Cipete', '13');
INSERT INTO `tb_kelurahan` VALUES (59, 8, 'Gununglurah', '13');
INSERT INTO `tb_kelurahan` VALUES (60, 8, 'Jatisaba', '13');
INSERT INTO `tb_kelurahan` VALUES (61, 8, 'Kalisari', '13');
INSERT INTO `tb_kelurahan` VALUES (62, 8, 'Karanglo', '13');
INSERT INTO `tb_kelurahan` VALUES (63, 8, 'Karangtengah', '13');
INSERT INTO `tb_kelurahan` VALUES (64, 8, 'Kasegeran', '13');
INSERT INTO `tb_kelurahan` VALUES (65, 8, 'Langgongsari', '13');
INSERT INTO `tb_kelurahan` VALUES (66, 8, 'Pageraji', '13');
INSERT INTO `tb_kelurahan` VALUES (67, 8, 'Panembangan', '13');
INSERT INTO `tb_kelurahan` VALUES (68, 8, 'Panusupan', '13');
INSERT INTO `tb_kelurahan` VALUES (69, 8, 'Pejogol', '13');
INSERT INTO `tb_kelurahan` VALUES (70, 8, 'Pernasidi', '13');
INSERT INTO `tb_kelurahan` VALUES (71, 8, 'Rancamaya', '13');
INSERT INTO `tb_kelurahan` VALUES (72, 8, 'Sambirata', '13');
INSERT INTO `tb_kelurahan` VALUES (73, 8, 'Sokawera', '13');
INSERT INTO `tb_kelurahan` VALUES (74, 8, 'Sudimara', '13');
INSERT INTO `tb_kelurahan` VALUES (75, 9, 'Cihonje', '13');
INSERT INTO `tb_kelurahan` VALUES (76, 9, 'Cilangkap', '13');
INSERT INTO `tb_kelurahan` VALUES (77, 9, 'Gancang', '13');
INSERT INTO `tb_kelurahan` VALUES (78, 9, 'Gumelar', '13');
INSERT INTO `tb_kelurahan` VALUES (79, 9, 'Karangkemojing', '13');
INSERT INTO `tb_kelurahan` VALUES (80, 9, 'Kedungurang', '13');
INSERT INTO `tb_kelurahan` VALUES (81, 9, 'Paningkaban', '13');
INSERT INTO `tb_kelurahan` VALUES (82, 9, 'Samudra', '13');
INSERT INTO `tb_kelurahan` VALUES (83, 9, 'Samudra Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (84, 9, 'Tlaga', '13');
INSERT INTO `tb_kelurahan` VALUES (85, 10, 'Adisara', '13');
INSERT INTO `tb_kelurahan` VALUES (86, 10, 'Bantar', '13');
INSERT INTO `tb_kelurahan` VALUES (87, 10, 'Gentawangi', '13');
INSERT INTO `tb_kelurahan` VALUES (88, 10, 'Gunung Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (89, 10, 'Karanganyar', '13');
INSERT INTO `tb_kelurahan` VALUES (90, 10, 'Karanglewas', '13');
INSERT INTO `tb_kelurahan` VALUES (91, 10, 'Kedungwringin', '13');
INSERT INTO `tb_kelurahan` VALUES (92, 10, 'Margasana', '13');
INSERT INTO `tb_kelurahan` VALUES (93, 10, 'Pekuncen', '13');
INSERT INTO `tb_kelurahan` VALUES (94, 10, 'Tinggarjaya', '13');
INSERT INTO `tb_kelurahan` VALUES (95, 10, 'Tunjung', '13');
INSERT INTO `tb_kelurahan` VALUES (96, 11, 'Kalibagor', '13');
INSERT INTO `tb_kelurahan` VALUES (97, 11, 'Kalicupak Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (98, 11, 'Kalicupak Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (99, 11, 'Kaliori', '13');
INSERT INTO `tb_kelurahan` VALUES (100, 11, 'Kalisogra Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (101, 11, 'Karangdadap', '13');
INSERT INTO `tb_kelurahan` VALUES (102, 11, 'Pajerukan', '13');
INSERT INTO `tb_kelurahan` VALUES (103, 11, 'Pekaja', '13');
INSERT INTO `tb_kelurahan` VALUES (104, 11, 'Petir', '13');
INSERT INTO `tb_kelurahan` VALUES (105, 11, 'Srowot', '13');
INSERT INTO `tb_kelurahan` VALUES (106, 11, 'Suro', '13');
INSERT INTO `tb_kelurahan` VALUES (107, 11, 'Wlahar Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (109, 12, 'Babakan', '13');
INSERT INTO `tb_kelurahan` VALUES (110, 12, 'Jipang', '13');
INSERT INTO `tb_kelurahan` VALUES (111, 12, 'Karanggude', '13');
INSERT INTO `tb_kelurahan` VALUES (112, 12, 'Karangkemiri', '13');
INSERT INTO `tb_kelurahan` VALUES (113, 12, 'Karanglewas Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (114, 12, 'Kediri', '13');
INSERT INTO `tb_kelurahan` VALUES (115, 12, 'Pangebatan', '13');
INSERT INTO `tb_kelurahan` VALUES (116, 12, 'Pasir Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (117, 12, 'Pasir Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (118, 12, 'Pasir Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (119, 12, 'Singasari', '13');
INSERT INTO `tb_kelurahan` VALUES (120, 12, 'Sunyalangu', '13');
INSERT INTO `tb_kelurahan` VALUES (121, 12, 'Tamansari', '13');
INSERT INTO `tb_kelurahan` VALUES (122, 13, 'Adisana', '13');
INSERT INTO `tb_kelurahan` VALUES (123, 13, 'Bangsa', '13');
INSERT INTO `tb_kelurahan` VALUES (124, 13, 'Cindaga', '13');
INSERT INTO `tb_kelurahan` VALUES (125, 13, 'Gambarsari', '13');
INSERT INTO `tb_kelurahan` VALUES (126, 13, 'Kalisalak', '13');
INSERT INTO `tb_kelurahan` VALUES (127, 13, 'Kaliwedi', '13');
INSERT INTO `tb_kelurahan` VALUES (128, 13, 'Karangsari', '13');
INSERT INTO `tb_kelurahan` VALUES (129, 13, 'Kebasen', '13');
INSERT INTO `tb_kelurahan` VALUES (130, 13, 'Mandirancan', '13');
INSERT INTO `tb_kelurahan` VALUES (131, 13, 'Randegan', '13');
INSERT INTO `tb_kelurahan` VALUES (132, 13, 'Sawangan', '13');
INSERT INTO `tb_kelurahan` VALUES (133, 13, 'Tumiyang', '13');
INSERT INTO `tb_kelurahan` VALUES (134, 14, 'Baseh', '13');
INSERT INTO `tb_kelurahan` VALUES (135, 14, 'Beji', '13');
INSERT INTO `tb_kelurahan` VALUES (136, 14, 'Dawuhan Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (137, 14, 'Dawuhan Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (138, 14, 'Dukuhjati Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (139, 14, 'Kalikesur', '13');
INSERT INTO `tb_kelurahan` VALUES (140, 14, 'Kalisalak', '13');
INSERT INTO `tb_kelurahan` VALUES (141, 14, 'Karanganyar', '13');
INSERT INTO `tb_kelurahan` VALUES (142, 14, 'Karangmalang', '13');
INSERT INTO `tb_kelurahan` VALUES (143, 14, 'Karangnangka', '13');
INSERT INTO `tb_kelurahan` VALUES (144, 14, 'Karangsalam Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (145, 14, 'Kebandingan', '13');
INSERT INTO `tb_kelurahan` VALUES (146, 14, 'Kebocoran', '13');
INSERT INTO `tb_kelurahan` VALUES (147, 14, 'Kedungbanteng', '13');
INSERT INTO `tb_kelurahan` VALUES (148, 14, 'Kedungbanteng', '13');
INSERT INTO `tb_kelurahan` VALUES (149, 14, 'Keniten', '13');
INSERT INTO `tb_kelurahan` VALUES (150, 14, 'Kutaliman', '13');
INSERT INTO `tb_kelurahan` VALUES (151, 14, 'Margamulya', '13');
INSERT INTO `tb_kelurahan` VALUES (152, 14, 'Melung', '13');
INSERT INTO `tb_kelurahan` VALUES (153, 14, 'Penujah', '13');
INSERT INTO `tb_kelurahan` VALUES (154, 14, 'Semedo', '13');
INSERT INTO `tb_kelurahan` VALUES (155, 14, 'Sumingkir', '13');
INSERT INTO `tb_kelurahan` VALUES (156, 14, 'Tonggara', '13');
INSERT INTO `tb_kelurahan` VALUES (157, 14, 'Windujaya', '13');
INSERT INTO `tb_kelurahan` VALUES (158, 15, 'Bantarwuni', '13');
INSERT INTO `tb_kelurahan` VALUES (159, 15, 'Bojongsari', '13');
INSERT INTO `tb_kelurahan` VALUES (160, 15, 'Dukuhwaluh', '13');
INSERT INTO `tb_kelurahan` VALUES (161, 15, 'Karangsari', '13');
INSERT INTO `tb_kelurahan` VALUES (162, 15, 'Karangsoka', '13');
INSERT INTO `tb_kelurahan` VALUES (163, 15, 'Karangtengah', '13');
INSERT INTO `tb_kelurahan` VALUES (164, 15, 'Kembaran', '13');
INSERT INTO `tb_kelurahan` VALUES (165, 15, 'Kramat', '13');
INSERT INTO `tb_kelurahan` VALUES (166, 15, 'Ledug', '13');
INSERT INTO `tb_kelurahan` VALUES (167, 15, 'Linggasari', '13');
INSERT INTO `tb_kelurahan` VALUES (168, 15, 'Pliken', '13');
INSERT INTO `tb_kelurahan` VALUES (169, 15, 'Purbadana', '13');
INSERT INTO `tb_kelurahan` VALUES (170, 15, 'Purwodadi', '13');
INSERT INTO `tb_kelurahan` VALUES (171, 15, 'Sambeng Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (172, 15, 'Sambeng Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (173, 15, 'Tambaksari Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (174, 16, 'Alasmalang', '13');
INSERT INTO `tb_kelurahan` VALUES (175, 16, 'Grujugan', '13');
INSERT INTO `tb_kelurahan` VALUES (176, 16, 'Karanggintung', '13');
INSERT INTO `tb_kelurahan` VALUES (177, 16, 'Karangjati', '13');
INSERT INTO `tb_kelurahan` VALUES (178, 16, 'Karangsalam', '13');
INSERT INTO `tb_kelurahan` VALUES (179, 16, 'Kebarongan', '13');
INSERT INTO `tb_kelurahan` VALUES (180, 16, 'Kecila', '13');
INSERT INTO `tb_kelurahan` VALUES (181, 16, 'Kedungpring', '13');
INSERT INTO `tb_kelurahan` VALUES (182, 16, 'Nusamangir', '13');
INSERT INTO `tb_kelurahan` VALUES (183, 16, 'Pageralang', '13');
INSERT INTO `tb_kelurahan` VALUES (184, 16, 'Petarangan', '13');
INSERT INTO `tb_kelurahan` VALUES (185, 16, 'Sibalung', '13');
INSERT INTO `tb_kelurahan` VALUES (186, 16, 'Sibrama', '13');
INSERT INTO `tb_kelurahan` VALUES (187, 16, 'Sidamulya', '13');
INSERT INTO `tb_kelurahan` VALUES (188, 16, 'Sirau', '13');
INSERT INTO `tb_kelurahan` VALUES (189, 17, 'Besuki', '13');
INSERT INTO `tb_kelurahan` VALUES (190, 17, 'Canduk', '13');
INSERT INTO `tb_kelurahan` VALUES (191, 17, 'Cidora', '13');
INSERT INTO `tb_kelurahan` VALUES (192, 17, 'Cingebul', '13');
INSERT INTO `tb_kelurahan` VALUES (193, 17, 'Cirahab', '13');
INSERT INTO `tb_kelurahan` VALUES (194, 17, 'Dermaji', '13');
INSERT INTO `tb_kelurahan` VALUES (195, 17, 'Karanggayam', '13');
INSERT INTO `tb_kelurahan` VALUES (196, 17, 'Kedunggede', '13');
INSERT INTO `tb_kelurahan` VALUES (197, 17, 'Lumbir', '13');
INSERT INTO `tb_kelurahan` VALUES (198, 17, 'Parungkamal', '13');
INSERT INTO `tb_kelurahan` VALUES (199, 18, 'Karanganyar', '13');
INSERT INTO `tb_kelurahan` VALUES (200, 18, 'Karangendep', '13');
INSERT INTO `tb_kelurahan` VALUES (201, 18, 'Kedungrandu', '13');
INSERT INTO `tb_kelurahan` VALUES (202, 18, 'Kedungwringin', '13');
INSERT INTO `tb_kelurahan` VALUES (203, 18, 'Kedungwuluh Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (204, 18, 'Kedungwuluh Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (205, 18, 'Notog', '13');
INSERT INTO `tb_kelurahan` VALUES (206, 18, 'Patikraja', '13');
INSERT INTO `tb_kelurahan` VALUES (207, 18, 'Pegalongan', '13');
INSERT INTO `tb_kelurahan` VALUES (208, 18, 'Sawangan Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (209, 18, 'Sidabowa', '13');
INSERT INTO `tb_kelurahan` VALUES (210, 18, 'Sokawera', '13');
INSERT INTO `tb_kelurahan` VALUES (211, 18, 'Wlahar Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (212, 19, 'Banjaranyar', '13');
INSERT INTO `tb_kelurahan` VALUES (213, 19, 'Candinegara', '13');
INSERT INTO `tb_kelurahan` VALUES (214, 19, 'Cibangkong', '13');
INSERT INTO `tb_kelurahan` VALUES (215, 19, 'Cikawung', '13');
INSERT INTO `tb_kelurahan` VALUES (216, 19, 'Cikembulan', '13');
INSERT INTO `tb_kelurahan` VALUES (217, 19, 'Glempang', '13');
INSERT INTO `tb_kelurahan` VALUES (218, 19, 'Karangkemiri', '13');
INSERT INTO `tb_kelurahan` VALUES (219, 19, 'Karangklesem', '13');
INSERT INTO `tb_kelurahan` VALUES (220, 19, 'Krajan', '13');
INSERT INTO `tb_kelurahan` VALUES (221, 19, 'Kranggan', '13');
INSERT INTO `tb_kelurahan` VALUES (222, 19, 'Pasiraman Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (223, 19, 'Pasiraman Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (224, 19, 'Pekuncen', '13');
INSERT INTO `tb_kelurahan` VALUES (225, 19, 'Petahunan', '13');
INSERT INTO `tb_kelurahan` VALUES (226, 19, 'Semedo', '13');
INSERT INTO `tb_kelurahan` VALUES (227, 19, 'Tumiyang', '13');
INSERT INTO `tb_kelurahan` VALUES (228, 20, 'Gerduren', '13');
INSERT INTO `tb_kelurahan` VALUES (229, 20, 'Kaliputih', '13');
INSERT INTO `tb_kelurahan` VALUES (230, 20, 'Kalitapen', '13');
INSERT INTO `tb_kelurahan` VALUES (231, 20, 'Kaliurip', '13');
INSERT INTO `tb_kelurahan` VALUES (232, 20, 'Kaliwangi', '13');
INSERT INTO `tb_kelurahan` VALUES (233, 20, 'Karangmangu', '13');
INSERT INTO `tb_kelurahan` VALUES (234, 20, 'Karangtalun Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (235, 20, 'Karangtalun Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (236, 20, 'Klapasawit', '13');
INSERT INTO `tb_kelurahan` VALUES (237, 20, 'Purwojati', '13');
INSERT INTO `tb_kelurahan` VALUES (238, 21, 'Bantarsoka', '13');
INSERT INTO `tb_kelurahan` VALUES (239, 21, 'Karanglewas Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (240, 21, 'Kedungwuluh', '13');
INSERT INTO `tb_kelurahan` VALUES (241, 21, 'Kober', '13');
INSERT INTO `tb_kelurahan` VALUES (242, 21, 'Pasir Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (243, 21, 'Pasirmuncang', '13');
INSERT INTO `tb_kelurahan` VALUES (244, 21, 'Rejasari', '13');
INSERT INTO `tb_kelurahan` VALUES (245, 22, 'Berkoh', '13');
INSERT INTO `tb_kelurahan` VALUES (246, 22, 'Karangklesem', '13');
INSERT INTO `tb_kelurahan` VALUES (247, 22, 'Karangpucung', '13');
INSERT INTO `tb_kelurahan` VALUES (248, 22, 'Purwekerto Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (249, 22, 'Purwokerto Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (250, 22, 'Tanjung', '13');
INSERT INTO `tb_kelurahan` VALUES (251, 22, 'Teluk', '13');
INSERT INTO `tb_kelurahan` VALUES (252, 23, 'Arcawinangun', '13');
INSERT INTO `tb_kelurahan` VALUES (253, 23, 'Kranji', '13');
INSERT INTO `tb_kelurahan` VALUES (254, 23, 'Mersi', '13');
INSERT INTO `tb_kelurahan` VALUES (255, 23, 'Purwokerto Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (256, 23, 'Purwokerto Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (257, 23, 'Sokanegara', '13');
INSERT INTO `tb_kelurahan` VALUES (258, 24, 'Bancarkembar', '13');
INSERT INTO `tb_kelurahan` VALUES (259, 24, 'Bobosan', '13');
INSERT INTO `tb_kelurahan` VALUES (260, 24, 'Grendeng', '13');
INSERT INTO `tb_kelurahan` VALUES (261, 24, 'Karangwangkal', '13');
INSERT INTO `tb_kelurahan` VALUES (262, 24, 'Pabuaran', '13');
INSERT INTO `tb_kelurahan` VALUES (263, 24, 'Purwanegara', '13');
INSERT INTO `tb_kelurahan` VALUES (264, 24, 'Sumampir', '13');
INSERT INTO `tb_kelurahan` VALUES (265, 25, 'Banjarparakan', '13');
INSERT INTO `tb_kelurahan` VALUES (266, 25, 'Losari', '13');
INSERT INTO `tb_kelurahan` VALUES (267, 25, 'Menganti', '13');
INSERT INTO `tb_kelurahan` VALUES (268, 25, 'Pesawahan', '13');
INSERT INTO `tb_kelurahan` VALUES (269, 25, 'Rawalo', '13');
INSERT INTO `tb_kelurahan` VALUES (270, 25, 'Sanggreman', '13');
INSERT INTO `tb_kelurahan` VALUES (271, 25, 'Sidamulih', '13');
INSERT INTO `tb_kelurahan` VALUES (272, 25, 'Tambaknegara', '13');
INSERT INTO `tb_kelurahan` VALUES (273, 25, 'Tipar', '13');
INSERT INTO `tb_kelurahan` VALUES (274, 26, 'Banjaranyar', '13');
INSERT INTO `tb_kelurahan` VALUES (275, 26, 'Banjarsari Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (276, 26, 'Jompo Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (277, 26, 'Kalikidang', '13');
INSERT INTO `tb_kelurahan` VALUES (278, 26, 'Karangduren', '13');
INSERT INTO `tb_kelurahan` VALUES (279, 26, 'Karangkedawung', '13');
INSERT INTO `tb_kelurahan` VALUES (280, 26, 'Karangnanas', '13');
INSERT INTO `tb_kelurahan` VALUES (281, 26, 'Karangrau', '13');
INSERT INTO `tb_kelurahan` VALUES (282, 26, 'Kedondong', '13');
INSERT INTO `tb_kelurahan` VALUES (283, 26, 'Klahang', '13');
INSERT INTO `tb_kelurahan` VALUES (284, 26, 'Lemberang', '13');
INSERT INTO `tb_kelurahan` VALUES (285, 26, 'Pamijen', '13');
INSERT INTO `tb_kelurahan` VALUES (286, 26, 'Sokaraja Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (287, 26, 'Sokaraja Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (288, 26, 'Sokaraja Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (289, 26, 'Sokaraja Tengah', '13');
INSERT INTO `tb_kelurahan` VALUES (290, 26, 'Sokaraja Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (291, 26, 'Wiradadi', '13');
INSERT INTO `tb_kelurahan` VALUES (292, 27, 'Kanding', '13');
INSERT INTO `tb_kelurahan` VALUES (293, 27, 'Kemawi', '13');
INSERT INTO `tb_kelurahan` VALUES (294, 27, 'Klinting', '13');
INSERT INTO `tb_kelurahan` VALUES (295, 27, 'Piasa Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (296, 27, 'Plana', '13');
INSERT INTO `tb_kelurahan` VALUES (297, 27, 'Sokawera', '13');
INSERT INTO `tb_kelurahan` VALUES (298, 27, 'Somagede', '13');
INSERT INTO `tb_kelurahan` VALUES (299, 27, 'Somakaton', '13');
INSERT INTO `tb_kelurahan` VALUES (300, 27, 'Tanggeran', '13');
INSERT INTO `tb_kelurahan` VALUES (301, 28, 'Banjarsari Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (302, 28, 'Banjarsari Wetan', '13');
INSERT INTO `tb_kelurahan` VALUES (303, 28, 'Banteran', '13');
INSERT INTO `tb_kelurahan` VALUES (304, 28, 'Ciberem', '13');
INSERT INTO `tb_kelurahan` VALUES (305, 28, 'Datar', '13');
INSERT INTO `tb_kelurahan` VALUES (306, 28, 'Gandatapa', '13');
INSERT INTO `tb_kelurahan` VALUES (307, 28, 'Karangcegak', '13');
INSERT INTO `tb_kelurahan` VALUES (308, 28, 'Karanggintung', '13');
INSERT INTO `tb_kelurahan` VALUES (309, 28, 'Karangturi', '13');
INSERT INTO `tb_kelurahan` VALUES (310, 28, 'Kawungcarang', '13');
INSERT INTO `tb_kelurahan` VALUES (311, 28, 'Kebanggan', '13');
INSERT INTO `tb_kelurahan` VALUES (312, 28, 'Kedungmalang', '13');
INSERT INTO `tb_kelurahan` VALUES (313, 28, 'Kotayasa', '13');
INSERT INTO `tb_kelurahan` VALUES (314, 28, 'Limpakuwus', '13');
INSERT INTO `tb_kelurahan` VALUES (315, 28, 'Sikapat', '13');
INSERT INTO `tb_kelurahan` VALUES (316, 28, 'Silado', '13');
INSERT INTO `tb_kelurahan` VALUES (317, 28, 'Sumbang', '13');
INSERT INTO `tb_kelurahan` VALUES (318, 28, 'Susukan', '13');
INSERT INTO `tb_kelurahan` VALUES (319, 28, 'Tambaksogra', '13');
INSERT INTO `tb_kelurahan` VALUES (320, 29, 'Banjarpanepen', '13');
INSERT INTO `tb_kelurahan` VALUES (321, 29, 'Bogangin', '13');
INSERT INTO `tb_kelurahan` VALUES (322, 29, 'Karanggedang', '13');
INSERT INTO `tb_kelurahan` VALUES (323, 29, 'Kebokura', '13');
INSERT INTO `tb_kelurahan` VALUES (324, 29, 'Kemiri', '13');
INSERT INTO `tb_kelurahan` VALUES (325, 29, 'Ketanda', '13');
INSERT INTO `tb_kelurahan` VALUES (326, 29, 'Kradenan', '13');
INSERT INTO `tb_kelurahan` VALUES (327, 29, 'Kuntili', '13');
INSERT INTO `tb_kelurahan` VALUES (328, 29, 'Lebeng', '13');
INSERT INTO `tb_kelurahan` VALUES (329, 29, 'Nusadadi', '13');
INSERT INTO `tb_kelurahan` VALUES (330, 29, 'Pandak', '13');
INSERT INTO `tb_kelurahan` VALUES (331, 29, 'Selandaka', '13');
INSERT INTO `tb_kelurahan` VALUES (332, 29, 'Selanegara', '13');
INSERT INTO `tb_kelurahan` VALUES (333, 29, 'Sumpiuh', '13');
INSERT INTO `tb_kelurahan` VALUES (334, 30, 'Buniayu', '13');
INSERT INTO `tb_kelurahan` VALUES (335, 30, 'Diponggo', '13');
INSERT INTO `tb_kelurahan` VALUES (336, 30, 'Gebangsari', '13');
INSERT INTO `tb_kelurahan` VALUES (337, 30, 'Gelam', '13');
INSERT INTO `tb_kelurahan` VALUES (338, 30, 'Grejeg', '13');
INSERT INTO `tb_kelurahan` VALUES (339, 30, 'Gumelar Kidul', '13');
INSERT INTO `tb_kelurahan` VALUES (340, 30, 'Gumelar Lor', '13');
INSERT INTO `tb_kelurahan` VALUES (341, 30, 'Kamulyan', '13');
INSERT INTO `tb_kelurahan` VALUES (342, 30, 'Karangpetir', '13');
INSERT INTO `tb_kelurahan` VALUES (343, 30, 'Karangpucung', '13');
INSERT INTO `tb_kelurahan` VALUES (344, 30, 'Kepuh Legundi', '13');
INSERT INTO `tb_kelurahan` VALUES (345, 30, 'Kepuh Teluk', '13');
INSERT INTO `tb_kelurahan` VALUES (346, 30, 'Klumpang Gubug', '13');
INSERT INTO `tb_kelurahan` VALUES (347, 30, 'Pekalongan', '13');
INSERT INTO `tb_kelurahan` VALUES (348, 30, 'Peromaan', '13');
INSERT INTO `tb_kelurahan` VALUES (349, 30, 'Pesantren', '13');
INSERT INTO `tb_kelurahan` VALUES (350, 30, 'Plangkapan', '13');
INSERT INTO `tb_kelurahan` VALUES (351, 30, 'Prembun', '13');
INSERT INTO `tb_kelurahan` VALUES (352, 30, 'Purwodadi', '13');
INSERT INTO `tb_kelurahan` VALUES (353, 30, 'Sukalela', '13');
INSERT INTO `tb_kelurahan` VALUES (354, 30, 'Sukaoneng', '13');
INSERT INTO `tb_kelurahan` VALUES (355, 30, 'Tambak', '13');
INSERT INTO `tb_kelurahan` VALUES (356, 30, 'Tanjungori', '13');
INSERT INTO `tb_kelurahan` VALUES (357, 30, 'Teluk Jati Dawang', '13');
INSERT INTO `tb_kelurahan` VALUES (358, 30, 'Watuagung', '13');
INSERT INTO `tb_kelurahan` VALUES (359, 31, 'Banteran', '13');
INSERT INTO `tb_kelurahan` VALUES (360, 31, 'Cikakak', '13');
INSERT INTO `tb_kelurahan` VALUES (361, 31, 'Jambu', '13');
INSERT INTO `tb_kelurahan` VALUES (362, 31, 'Jurangbahas', '13');
INSERT INTO `tb_kelurahan` VALUES (363, 31, 'Klapagading', '13');
INSERT INTO `tb_kelurahan` VALUES (364, 31, 'Klapagading Kulon', '13');
INSERT INTO `tb_kelurahan` VALUES (365, 31, 'Pengadegan', '13');
INSERT INTO `tb_kelurahan` VALUES (366, 31, 'Randegan', '13');
INSERT INTO `tb_kelurahan` VALUES (367, 31, 'Rawaheng', '13');
INSERT INTO `tb_kelurahan` VALUES (368, 31, 'Wangon', '13');
INSERT INTO `tb_kelurahan` VALUES (369, 31, 'Windunegara', '13');
INSERT INTO `tb_kelurahan` VALUES (370, 31, 'Wlahar', '13');

-- ----------------------------
-- Table structure for tb_lacak
-- ----------------------------
DROP TABLE IF EXISTS `tb_lacak`;
CREATE TABLE `tb_lacak`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `wkt` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `sukses` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_lacak
-- ----------------------------
INSERT INTO `tb_lacak` VALUES (1, '1', 'admin', 'admin', '::1', '2020-06-13 22:12:05', 'Y');
INSERT INTO `tb_lacak` VALUES (2, '1', 'admin', 'admin', '114.142.170.50', '2020-06-13 23:52:37', 'Y');
INSERT INTO `tb_lacak` VALUES (3, '1', 'admin', 'admin', '114.142.168.8', '2020-06-14 01:12:52', 'Y');
INSERT INTO `tb_lacak` VALUES (4, '1', 'admin', 'admin', '114.142.169.59', '2020-06-14 17:43:20', 'Y');
INSERT INTO `tb_lacak` VALUES (5, '1', 'admin', 'admin', '114.142.170.44', '2020-06-14 20:23:47', 'Y');
INSERT INTO `tb_lacak` VALUES (6, '1', 'admin', 'admin', '114.142.170.44', '2020-06-14 21:09:13', 'Y');
INSERT INTO `tb_lacak` VALUES (7, '-', 'imam', '123', '125.163.127.143', '2020-06-15 07:56:44', 'N');
INSERT INTO `tb_lacak` VALUES (8, '1', 'admin', 'admin', '125.163.127.143', '2020-06-15 08:26:39', 'Y');
INSERT INTO `tb_lacak` VALUES (9, '1', 'admin', 'admin', '125.163.127.143', '2020-06-15 08:26:39', 'Y');
INSERT INTO `tb_lacak` VALUES (10, '-', 'admin', 'admin', '114.142.168.26', '2020-06-18 21:46:35', 'N');
INSERT INTO `tb_lacak` VALUES (11, '-', 'admin', '123qwe', '114.142.168.26', '2020-06-18 21:46:41', 'N');
INSERT INTO `tb_lacak` VALUES (12, '-', 'admin', '123', '114.142.168.26', '2020-06-18 21:46:49', 'N');
INSERT INTO `tb_lacak` VALUES (13, '-', 'admin', '123', '114.142.168.26', '2020-06-18 21:47:07', 'N');
INSERT INTO `tb_lacak` VALUES (14, '-', 'admin', '123qwe', '114.142.168.26', '2020-06-18 21:48:32', 'N');
INSERT INTO `tb_lacak` VALUES (15, '-', 'admin', '123', '114.142.168.26', '2020-06-18 21:48:41', 'N');
INSERT INTO `tb_lacak` VALUES (16, '-', 'admin', '123', '114.142.168.26', '2020-06-18 21:49:19', 'N');
INSERT INTO `tb_lacak` VALUES (17, '1', 'admin', 'VFZSSmVnPT0=', '114.142.168.26', '2020-06-18 21:50:51', 'Y');
INSERT INTO `tb_lacak` VALUES (18, '-', 'admin', 'V1ZkU2RHRlhORDA9', '140.213.56.153', '2020-06-21 10:45:15', 'N');
INSERT INTO `tb_lacak` VALUES (19, '-', 'admin', 'V1ZkU2RHRlhORDA9', '140.213.56.153', '2020-06-21 10:45:25', 'N');
INSERT INTO `tb_lacak` VALUES (20, '-', 'admin', 'V1ZkU2RHRlhORDA9', '140.213.56.153', '2020-06-21 10:55:23', 'N');
INSERT INTO `tb_lacak` VALUES (21, '-', 'Imam', 'VFZSSmVnPT0=', '140.213.56.153', '2020-06-21 10:55:36', 'N');
INSERT INTO `tb_lacak` VALUES (22, '-', 'Imam', 'V1ZkU2RHRlhORDA9', '140.213.56.153', '2020-06-21 10:55:45', 'N');
INSERT INTO `tb_lacak` VALUES (23, '-', 'Imam', 'WVZjeGFHSlJQVDA9', '140.213.56.153', '2020-06-21 10:55:55', 'N');
INSERT INTO `tb_lacak` VALUES (24, '-', 'Admin', 'VVZkU2RHRlhORDA9', '140.213.56.153', '2020-06-21 10:56:14', 'N');
INSERT INTO `tb_lacak` VALUES (25, '1', 'admin', 'VFZSSmVnPT0=', '140.213.56.153', '2020-06-21 10:56:26', 'Y');
INSERT INTO `tb_lacak` VALUES (26, '1', 'admin', 'VFZSSmVnPT0=', '140.213.56.153', '2020-06-21 12:21:44', 'Y');
INSERT INTO `tb_lacak` VALUES (27, '1', 'admin', 'VFZSSmVnPT0=', '125.163.124.93', '2020-06-21 17:56:53', 'Y');
INSERT INTO `tb_lacak` VALUES (28, '1', 'admin', 'VFZSSmVnPT0=', '140.213.57.144', '2020-06-21 21:28:40', 'Y');
INSERT INTO `tb_lacak` VALUES (29, '1', 'admin', 'VFZSSmVnPT0=', '140.213.58.122', '2020-06-28 12:25:25', 'Y');
INSERT INTO `tb_lacak` VALUES (30, '-', 'admin', 'V1ZkU2RHRlhORDA9', '36.72.213.228', '2020-06-28 20:23:01', 'N');
INSERT INTO `tb_lacak` VALUES (31, '-', 'admin', 'V1ZkU2RHRlhOSGhOYWswOQ==', '36.72.213.228', '2020-06-28 20:23:08', 'N');
INSERT INTO `tb_lacak` VALUES (32, '-', 'admin', 'V1ZkU2RHRlhOSGhOYWswOQ==', '36.72.213.228', '2020-06-28 20:23:52', 'N');
INSERT INTO `tb_lacak` VALUES (33, '1', 'admin', 'VFZSSmVnPT0=', '36.72.213.228', '2020-06-28 20:24:59', 'Y');
INSERT INTO `tb_lacak` VALUES (34, '1', 'admin', 'VFZSSmVnPT0=', '112.78.134.194', '2020-06-29 08:19:01', 'Y');
INSERT INTO `tb_lacak` VALUES (35, '1', 'admin', 'VFZSSmVnPT0=', '140.213.170.145', '2020-06-29 10:48:52', 'Y');
INSERT INTO `tb_lacak` VALUES (36, '-', 'admin', 'V1ZkU2RHRlhORDA9', '180.246.114.115', '2020-06-29 11:24:34', 'N');
INSERT INTO `tb_lacak` VALUES (37, '-', 'admin', 'V1ZkU2RHRlhORDA9', '180.246.114.115', '2020-06-29 11:24:45', 'N');
INSERT INTO `tb_lacak` VALUES (38, '1', 'admin', 'VFZSSmVnPT0=', '180.246.114.115', '2020-06-29 11:24:56', 'Y');
INSERT INTO `tb_lacak` VALUES (39, '1', 'admin', 'VFZSSmVnPT0=', '36.72.213.155', '2020-06-29 23:28:19', 'Y');
INSERT INTO `tb_lacak` VALUES (40, '1', 'admin', 'VFZSSmVnPT0=', '180.254.25.237', '2020-06-30 10:34:34', 'Y');
INSERT INTO `tb_lacak` VALUES (41, '1', 'admin', 'VFZSSmVnPT0=', '180.243.28.142', '2020-07-01 09:51:06', 'Y');
INSERT INTO `tb_lacak` VALUES (42, '1', 'admin', 'VFZSSmVnPT0=', '180.243.28.142', '2020-07-02 09:41:40', 'Y');
INSERT INTO `tb_lacak` VALUES (43, '1', 'admin', 'VFZSSmVnPT0=', '36.81.58.166', '2020-07-03 21:55:45', 'Y');
INSERT INTO `tb_lacak` VALUES (44, '1', 'admin', 'VFZSSmVnPT0=', '36.81.58.166', '2020-07-03 23:42:59', 'Y');
INSERT INTO `tb_lacak` VALUES (45, '1', 'admin', 'VFZSSmVnPT0=', '36.72.216.71', '2020-07-04 11:03:02', 'Y');
INSERT INTO `tb_lacak` VALUES (46, '1', 'admin', 'VFZSSmVnPT0=', '180.254.105.23', '2020-07-06 20:45:31', 'Y');
INSERT INTO `tb_lacak` VALUES (47, '1', 'admin', 'VFZSSmVnPT0=', '36.72.219.11', '2020-07-07 13:19:31', 'Y');
INSERT INTO `tb_lacak` VALUES (48, '1', 'admin', 'VFZSSmVnPT0=', '36.80.226.228', '2020-07-07 19:57:09', 'Y');

-- ----------------------------
-- Table structure for tb_notif
-- ----------------------------
DROP TABLE IF EXISTS `tb_notif`;
CREATE TABLE `tb_notif`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_notif
-- ----------------------------
INSERT INTO `tb_notif` VALUES (1, '13.1933.0234', 'Simpanan Sukarela Rp. 10000', 'Pembayaran', 'N');
INSERT INTO `tb_notif` VALUES (2, '13.1933.0234', 'Update Simpanan Pokok Rp. 26250', 'Pembayaran', 'Y');
INSERT INTO `tb_notif` VALUES (3, '13.1933.0234', 'Update Simpanan Pokok Rp. 26250', 'Pembayaran', 'Y');
INSERT INTO `tb_notif` VALUES (4, '13.1933.0234', 'Update Simpanan Pokok Rp. 26250', 'Pembayaran', 'Y');
INSERT INTO `tb_notif` VALUES (5, '13.1933.0234', 'Update Simpanan Pokok Rp. 26250', 'Pembayaran', 'Y');
INSERT INTO `tb_notif` VALUES (6, '13.1933.0234', 'Update Simpanan Pokok Rp. 26250', 'Pembayaran', 'Y');
INSERT INTO `tb_notif` VALUES (7, '13.1933.0234', 'Update Simpanan Pokok Rp. 26250', 'Pembayaran', 'Y');
INSERT INTO `tb_notif` VALUES (8, '13.1933.0234', 'Update Simpanan Pokok Rp. 26250', 'Pembayaran', 'Y');
INSERT INTO `tb_notif` VALUES (9, '13.1933.0234', 'Update Simpanan Pokok Rp. 26250', 'Pembayaran', 'Y');

-- ----------------------------
-- Table structure for tb_outlet
-- ----------------------------
DROP TABLE IF EXISTS `tb_outlet`;
CREATE TABLE `tb_outlet`  (
  `id` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_outlet
-- ----------------------------
INSERT INTO `tb_outlet` VALUES ('outlet01', 'Outlet purwokerto');

-- ----------------------------
-- Table structure for tb_pengambilan_sukarela
-- ----------------------------
DROP TABLE IF EXISTS `tb_pengambilan_sukarela`;
CREATE TABLE `tb_pengambilan_sukarela`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nominal` int(11) NULL DEFAULT NULL,
  `tgl` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_admin`(`id_admin`) USING BTREE,
  CONSTRAINT `tb_pengambilan_sukarela_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_pokok
-- ----------------------------
DROP TABLE IF EXISTS `tb_pokok`;
CREATE TABLE `tb_pokok`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `wajib` int(100) NULL DEFAULT NULL,
  `sosial` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of tb_pokok
-- ----------------------------
INSERT INTO `tb_pokok` VALUES (1, 120000, 150000);

-- ----------------------------
-- Table structure for tb_promo
-- ----------------------------
DROP TABLE IF EXISTS `tb_promo`;
CREATE TABLE `tb_promo`  (
  `cid` int(100) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT NULL,
  `slide` varchar(44) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_promo
-- ----------------------------
INSERT INTO `tb_promo` VALUES (1, 'promo-1594278442.jpeg', ' Promo Murah', 1, '1');
INSERT INTO `tb_promo` VALUES (2, 'promo-1594278452.jpeg', 'promo 1', 1, '2');
INSERT INTO `tb_promo` VALUES (3, 'promo-1594278498.jpeg', ' Promo Murah BGT', 1, '3');

-- ----------------------------
-- Table structure for tb_saldo
-- ----------------------------
DROP TABLE IF EXISTS `tb_saldo`;
CREATE TABLE `tb_saldo`  (
  `id_saldo` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `nominal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_tf` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_saldo`) USING BTREE,
  INDEX `2`(`id_admin`) USING BTREE,
  INDEX `id_tf`(`id_tf`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tb_saldo_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_saldo_ibfk_3` FOREIGN KEY (`id_tf`) REFERENCES `tb_tf` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_saldo_ibfk_4` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_shu
-- ----------------------------
DROP TABLE IF EXISTS `tb_shu`;
CREATE TABLE `tb_shu`  (
  `id_shu` int(11) NOT NULL AUTO_INCREMENT,
  `nominal` int(15) NULL DEFAULT NULL,
  `periode` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_shu`) USING BTREE,
  INDEX `id_admin`(`id_admin`) USING BTREE,
  CONSTRAINT `tb_shu_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_shu
-- ----------------------------
INSERT INTO `tb_shu` VALUES (2, 3000000, '2020', '2020-08-12 20:59:42', 3, 'Y');

-- ----------------------------
-- Table structure for tb_sim_pokok
-- ----------------------------
DROP TABLE IF EXISTS `tb_sim_pokok`;
CREATE TABLE `tb_sim_pokok`  (
  `id_iuran` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `nominal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl` datetime(0) NULL DEFAULT NULL,
  `metode` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_iuran`) USING BTREE,
  INDEX `2`(`id_admin`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tb_sim_pokok_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_sim_pokok_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sim_pokok
-- ----------------------------
INSERT INTO `tb_sim_pokok` VALUES (1, '13.1933.0234', 1, '25000', '2020-08-10 04:51:12', NULL);

-- ----------------------------
-- Table structure for tb_sim_sukarela
-- ----------------------------
DROP TABLE IF EXISTS `tb_sim_sukarela`;
CREATE TABLE `tb_sim_sukarela`  (
  `id_iuran` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `nominal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_iuran`) USING BTREE,
  INDEX `2`(`id_admin`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tb_sim_sukarela_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_sim_sukarela_ibfk_4` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sim_sukarela
-- ----------------------------
INSERT INTO `tb_sim_sukarela` VALUES (1, '13.1933.0234', 1, '27000', '2020-07-02');
INSERT INTO `tb_sim_sukarela` VALUES (2, '13.1933.0234', 1, '25000', '2020-07-06');
INSERT INTO `tb_sim_sukarela` VALUES (3, '13.1933.0234', 1, '20000', '2020-07-03');
INSERT INTO `tb_sim_sukarela` VALUES (4, '13.1933.0234', 1, '25000', '2020-07-01');
INSERT INTO `tb_sim_sukarela` VALUES (5, '13.1933.0234', 2, '25000', '2020-08-03');
INSERT INTO `tb_sim_sukarela` VALUES (6, '13.1933.0234', 1, '25000', '2020-08-10 10:24:17');

-- ----------------------------
-- Table structure for tb_sim_wajib
-- ----------------------------
DROP TABLE IF EXISTS `tb_sim_wajib`;
CREATE TABLE `tb_sim_wajib`  (
  `id_iuran` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `nominal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl` datetime(0) NULL DEFAULT NULL,
  `periode` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_iuran`) USING BTREE,
  INDEX `2`(`id_admin`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tb_sim_wajib_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_sim_wajib_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sim_wajib
-- ----------------------------
INSERT INTO `tb_sim_wajib` VALUES (1, '13.1933.0234', 1, '25000', '2020-08-10 05:01:00', '2020', NULL);
INSERT INTO `tb_sim_wajib` VALUES (2, '13.1933.0234', 1, '25000', '2020-08-10 05:09:41', '2020', NULL);
INSERT INTO `tb_sim_wajib` VALUES (3, '13.1933.0234', 1, '20000', '2020-08-10 05:18:39', '2020', NULL);
INSERT INTO `tb_sim_wajib` VALUES (4, '13.1933.0234', 1, '25000', '2020-08-10 08:50:16', '2020', NULL);
INSERT INTO `tb_sim_wajib` VALUES (5, '13.1933.0234', 1, '25000', '2020-08-10 10:22:15', '2020', NULL);

-- ----------------------------
-- Table structure for tb_sim_wajib_modal
-- ----------------------------
DROP TABLE IF EXISTS `tb_sim_wajib_modal`;
CREATE TABLE `tb_sim_wajib_modal`  (
  `id_iuran` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `nominal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl` datetime(0) NULL DEFAULT NULL,
  `periode` varchar(300) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `metode` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_iuran`) USING BTREE,
  INDEX `2`(`id_admin`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tb_sim_wajib_modal_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_sim_wajib_modal_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_slider
-- ----------------------------
DROP TABLE IF EXISTS `tb_slider`;
CREATE TABLE `tb_slider`  (
  `id_banner` int(3) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_banner`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_tagline
-- ----------------------------
DROP TABLE IF EXISTS `tb_tagline`;
CREATE TABLE `tb_tagline`  (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_tagline
-- ----------------------------
INSERT INTO `tb_tagline` VALUES (4, 'KUD ARIS', 'Halo bro !', 'tagline-1594230561.png');

-- ----------------------------
-- Table structure for tb_tf
-- ----------------------------
DROP TABLE IF EXISTS `tb_tf`;
CREATE TABLE `tb_tf`  (
  `id` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nominal` int(20) NOT NULL,
  `tgl_verif_tf` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_tf` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `itemfor` int(11) NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `input` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `verif` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `file` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `s_verif` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_mpe` int(11) NULL DEFAULT NULL,
  `metode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jam` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_mp3` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  INDEX `id_mpe`(`id_mpe`) USING BTREE,
  INDEX `itemfor`(`itemfor`) USING BTREE,
  CONSTRAINT `tb_tf_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_tf_ibfk_2` FOREIGN KEY (`itemfor`) REFERENCES `tbl_category` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tb_tukar_poin
-- ----------------------------
DROP TABLE IF EXISTS `tb_tukar_poin`;
CREATE TABLE `tb_tukar_poin`  (
  `id_tukar_poin` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `poin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `id_hadiah` int(11) NULL DEFAULT NULL,
  `tgl_tukar` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_tukar_poin`) USING BTREE,
  INDEX `id_diskon`(`id_hadiah`) USING BTREE,
  CONSTRAINT `tb_tukar_poin_ibfk_1` FOREIGN KEY (`id_hadiah`) REFERENCES `tb_hadiah` (`id_hadiah`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_urut
-- ----------------------------
DROP TABLE IF EXISTS `tb_urut`;
CREATE TABLE `tb_urut`  (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `tgl` date NULL DEFAULT NULL,
  `urut` int(5) NULL DEFAULT NULL,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 796 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_urut
-- ----------------------------
INSERT INTO `tb_urut` VALUES (1, '2020-05-19', 1, 'USR-000000006');
INSERT INTO `tb_urut` VALUES (2, '2020-05-19', 2, 'USR-000000026');
INSERT INTO `tb_urut` VALUES (3, '2020-05-19', 3, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (4, '2020-05-19', 4, 'USR-000000011');
INSERT INTO `tb_urut` VALUES (5, '2020-05-19', 5, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (6, '2020-05-19', 6, 'USR-000000095');
INSERT INTO `tb_urut` VALUES (7, '2020-05-20', 1, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (8, '2020-05-20', 2, 'USR-000000026');
INSERT INTO `tb_urut` VALUES (9, '0000-00-00', 1, 'USR-000000026');
INSERT INTO `tb_urut` VALUES (10, '2020-05-20', 3, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (11, '2020-05-20', 4, 'USR-000000006');
INSERT INTO `tb_urut` VALUES (12, '2020-05-20', 5, 'USR-000000131');
INSERT INTO `tb_urut` VALUES (13, '2020-05-20', 6, 'USR-000000066');
INSERT INTO `tb_urut` VALUES (14, '2020-05-20', 7, 'USR-000000015');
INSERT INTO `tb_urut` VALUES (15, '2020-05-20', 8, 'USR-000000048');
INSERT INTO `tb_urut` VALUES (16, '2020-05-20', 9, 'USR-000000132');
INSERT INTO `tb_urut` VALUES (17, '2020-05-20', 10, 'USR-000000092');
INSERT INTO `tb_urut` VALUES (18, '2020-05-20', 11, 'USR-000000034');
INSERT INTO `tb_urut` VALUES (19, '0000-00-00', 2, '123');
INSERT INTO `tb_urut` VALUES (20, '2020-05-21', 1, 'USR-000000133');
INSERT INTO `tb_urut` VALUES (21, '2020-05-21', 2, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (22, '2020-05-21', 3, 'USR-000000134');
INSERT INTO `tb_urut` VALUES (23, '2020-05-21', 4, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (24, '2020-05-21', 5, 'USR-000000059');
INSERT INTO `tb_urut` VALUES (25, '2020-05-21', 6, 'USR-000000006');
INSERT INTO `tb_urut` VALUES (26, '2020-05-21', 7, 'USR-000000026');
INSERT INTO `tb_urut` VALUES (27, '2020-05-21', 8, 'USR-000000044');
INSERT INTO `tb_urut` VALUES (28, '2020-05-21', 9, 'USR-000000108');
INSERT INTO `tb_urut` VALUES (29, '2020-05-22', 1, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (30, '2020-05-22', 2, 'USR-000000138');
INSERT INTO `tb_urut` VALUES (31, '2020-05-22', 3, 'USR-000000006');
INSERT INTO `tb_urut` VALUES (32, '2020-05-22', 4, 'USR-000000089');
INSERT INTO `tb_urut` VALUES (33, '2020-05-22', 5, 'USR-000000012');
INSERT INTO `tb_urut` VALUES (34, '2020-05-23', 1, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (35, '2020-05-23', 2, 'USR-000000139');
INSERT INTO `tb_urut` VALUES (36, '2020-05-23', 3, 'USR-000000140');
INSERT INTO `tb_urut` VALUES (37, '2020-05-23', 4, 'USR-000000108');
INSERT INTO `tb_urut` VALUES (38, '2020-05-23', 5, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (39, '2020-05-23', 6, 'USR-000000116');
INSERT INTO `tb_urut` VALUES (40, '2020-05-24', 1, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (41, '2020-05-25', 1, 'USR-000000141');
INSERT INTO `tb_urut` VALUES (42, '2020-05-25', 2, 'USR-000000076');
INSERT INTO `tb_urut` VALUES (43, '2020-05-25', 3, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (44, '2020-05-25', 4, 'USR-000000017');
INSERT INTO `tb_urut` VALUES (45, '2020-05-26', 1, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (46, '2020-05-26', 2, 'USR-000000078');
INSERT INTO `tb_urut` VALUES (47, '2020-05-26', 3, 'USR-000000033');
INSERT INTO `tb_urut` VALUES (48, '2020-05-26', 4, 'USR-000000026');
INSERT INTO `tb_urut` VALUES (49, '2020-05-26', 5, 'USR-000000076');
INSERT INTO `tb_urut` VALUES (50, '2020-05-26', 6, 'USR-000000057');
INSERT INTO `tb_urut` VALUES (51, '2020-05-26', 7, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (52, '2020-05-26', 8, 'USR-000000068');
INSERT INTO `tb_urut` VALUES (53, '2020-05-27', 1, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (54, '2020-05-27', 2, 'USR-000000143');
INSERT INTO `tb_urut` VALUES (55, '2020-05-27', 3, 'USR-000000080');
INSERT INTO `tb_urut` VALUES (56, '2020-05-27', 4, 'USR-000000142');
INSERT INTO `tb_urut` VALUES (57, '2020-05-28', 1, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (58, '2020-05-28', 2, 'USR-000000068');
INSERT INTO `tb_urut` VALUES (59, '2020-05-28', 3, 'USR-000000123');
INSERT INTO `tb_urut` VALUES (60, '2020-05-28', 4, 'USR-000000023');
INSERT INTO `tb_urut` VALUES (61, '2020-05-28', 5, 'USR-000000144');
INSERT INTO `tb_urut` VALUES (62, '2020-05-28', 6, 'USR-000000146');
INSERT INTO `tb_urut` VALUES (63, '2020-05-28', 7, 'USR-000000152');
INSERT INTO `tb_urut` VALUES (64, '2020-05-28', 8, 'USR-000000147');
INSERT INTO `tb_urut` VALUES (65, '2020-05-28', 9, 'USR-000000145');
INSERT INTO `tb_urut` VALUES (66, '2020-05-29', 1, 'USR-000000140');
INSERT INTO `tb_urut` VALUES (67, '2020-05-29', 2, 'USR-000000149');
INSERT INTO `tb_urut` VALUES (68, '2020-05-29', 3, 'USR-000000155');
INSERT INTO `tb_urut` VALUES (69, '2020-05-29', 4, 'USR-000000154');
INSERT INTO `tb_urut` VALUES (70, '2020-05-29', 5, 'USR-000000141');
INSERT INTO `tb_urut` VALUES (71, '2020-05-29', 6, 'USR-000000157');
INSERT INTO `tb_urut` VALUES (72, '2020-05-29', 7, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (73, '2020-05-29', 8, 'USR-000000085');
INSERT INTO `tb_urut` VALUES (74, '2020-05-29', 9, 'USR-000000158');
INSERT INTO `tb_urut` VALUES (75, '2020-05-29', 10, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (76, '2020-05-29', 11, 'USR-000000159');
INSERT INTO `tb_urut` VALUES (77, '2020-05-30', 1, 'USR-000000155');
INSERT INTO `tb_urut` VALUES (78, '2020-05-30', 2, 'USR-000000160');
INSERT INTO `tb_urut` VALUES (79, '2020-05-30', 3, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (80, '2020-05-30', 4, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (81, '2020-05-30', 5, 'USR-000000159');
INSERT INTO `tb_urut` VALUES (82, '2020-05-30', 6, 'USR-000000166');
INSERT INTO `tb_urut` VALUES (83, '2020-05-30', 7, 'USR-000000164');
INSERT INTO `tb_urut` VALUES (84, '2020-05-30', 8, 'USR-000000068');
INSERT INTO `tb_urut` VALUES (85, '2020-05-30', 9, 'USR-000000169');
INSERT INTO `tb_urut` VALUES (86, '2020-05-30', 10, 'USR-000000171');
INSERT INTO `tb_urut` VALUES (87, '2020-05-30', 11, 'USR-000000165');
INSERT INTO `tb_urut` VALUES (88, '2020-05-30', 12, 'USR-000000174');
INSERT INTO `tb_urut` VALUES (89, '2020-05-30', 13, 'USR-000000175');
INSERT INTO `tb_urut` VALUES (90, '2020-05-30', 14, 'USR-000000057');
INSERT INTO `tb_urut` VALUES (91, '2020-05-30', 15, 'USR-000000062');
INSERT INTO `tb_urut` VALUES (92, '2020-05-30', 16, 'USR-000000176');
INSERT INTO `tb_urut` VALUES (93, '2020-05-30', 17, 'USR-000000108');
INSERT INTO `tb_urut` VALUES (94, '2020-05-30', 18, 'USR-000000085');
INSERT INTO `tb_urut` VALUES (95, '2020-05-30', 19, 'USR-000000178');
INSERT INTO `tb_urut` VALUES (96, '2020-05-30', 20, 'USR-000000025');
INSERT INTO `tb_urut` VALUES (97, '2020-05-30', 21, 'USR-000000183');
INSERT INTO `tb_urut` VALUES (98, '2020-05-30', 22, 'USR-000000182');
INSERT INTO `tb_urut` VALUES (99, '2020-05-30', 23, 'USR-000000011');
INSERT INTO `tb_urut` VALUES (100, '2020-05-30', 24, 'USR-000000184');
INSERT INTO `tb_urut` VALUES (101, '2020-05-30', 25, 'USR-000000078');
INSERT INTO `tb_urut` VALUES (102, '2020-05-30', 26, 'USR-000000185');
INSERT INTO `tb_urut` VALUES (103, '2020-05-30', 27, 'USR-000000086');
INSERT INTO `tb_urut` VALUES (104, '2020-05-30', 28, 'USR-000000058');
INSERT INTO `tb_urut` VALUES (105, '2020-05-30', 29, 'USR-000000192');
INSERT INTO `tb_urut` VALUES (106, '2020-05-30', 30, 'USR-000000195');
INSERT INTO `tb_urut` VALUES (107, '2020-05-30', 31, 'USR-000000018');
INSERT INTO `tb_urut` VALUES (108, '2020-05-30', 32, 'USR-000000200');
INSERT INTO `tb_urut` VALUES (109, '2020-05-30', 33, 'USR-000000201');
INSERT INTO `tb_urut` VALUES (110, '2020-05-30', 34, 'USR-000000203');
INSERT INTO `tb_urut` VALUES (111, '2020-05-30', 35, 'USR-000000209');
INSERT INTO `tb_urut` VALUES (112, '2020-05-30', 36, 'USR-000000093');
INSERT INTO `tb_urut` VALUES (113, '2020-05-30', 37, 'USR-000000210');
INSERT INTO `tb_urut` VALUES (114, '2020-05-30', 38, 'USR-000000212');
INSERT INTO `tb_urut` VALUES (115, '2020-05-30', 39, 'USR-000000213');
INSERT INTO `tb_urut` VALUES (116, '2020-05-30', 40, 'USR-000000118');
INSERT INTO `tb_urut` VALUES (117, '2020-05-30', 41, 'USR-000000217');
INSERT INTO `tb_urut` VALUES (118, '2020-05-30', 42, 'USR-000000218');
INSERT INTO `tb_urut` VALUES (119, '2020-05-30', 43, 'USR-000000216');
INSERT INTO `tb_urut` VALUES (120, '2020-05-30', 44, 'USR-000000221');
INSERT INTO `tb_urut` VALUES (121, '2020-05-30', 45, 'USR-000000170');
INSERT INTO `tb_urut` VALUES (122, '2020-05-30', 46, 'USR-000000220');
INSERT INTO `tb_urut` VALUES (123, '2020-05-30', 47, 'USR-000000224');
INSERT INTO `tb_urut` VALUES (124, '2020-05-30', 48, 'USR-000000225');
INSERT INTO `tb_urut` VALUES (125, '2020-05-30', 49, 'USR-000000076');
INSERT INTO `tb_urut` VALUES (126, '2020-05-30', 50, 'USR-000000228');
INSERT INTO `tb_urut` VALUES (127, '2020-05-30', 51, 'USR-000000145');
INSERT INTO `tb_urut` VALUES (128, '2020-05-30', 52, 'USR-000000146');
INSERT INTO `tb_urut` VALUES (129, '2020-05-30', 53, 'USR-000000147');
INSERT INTO `tb_urut` VALUES (130, '2020-05-30', 54, 'USR-000000144');
INSERT INTO `tb_urut` VALUES (131, '2020-05-30', 55, 'USR-000000229');
INSERT INTO `tb_urut` VALUES (132, '2020-05-30', 56, 'USR-000000230');
INSERT INTO `tb_urut` VALUES (133, '2020-05-30', 57, 'USR-000000053');
INSERT INTO `tb_urut` VALUES (134, '2020-05-30', 58, 'USR-000000234');
INSERT INTO `tb_urut` VALUES (135, '2020-05-30', 59, 'USR-000000236');
INSERT INTO `tb_urut` VALUES (136, '2020-05-30', 60, 'USR-000000232');
INSERT INTO `tb_urut` VALUES (137, '2020-05-30', 61, 'USR-000000021');
INSERT INTO `tb_urut` VALUES (138, '2020-05-30', 62, 'USR-000000226');
INSERT INTO `tb_urut` VALUES (139, '2020-05-30', 63, 'USR-000000238');
INSERT INTO `tb_urut` VALUES (140, '2020-05-30', 64, 'USR-000000187');
INSERT INTO `tb_urut` VALUES (141, '2020-05-30', 65, 'USR-000000031');
INSERT INTO `tb_urut` VALUES (142, '2020-05-30', 66, 'USR-000000239');
INSERT INTO `tb_urut` VALUES (143, '2020-05-30', 67, 'USR-000000240');
INSERT INTO `tb_urut` VALUES (144, '2020-05-30', 68, 'USR-000000243');
INSERT INTO `tb_urut` VALUES (145, '2020-05-30', 69, 'USR-000000242');
INSERT INTO `tb_urut` VALUES (146, '2020-05-30', 70, 'USR-000000244');
INSERT INTO `tb_urut` VALUES (147, '2020-05-30', 71, 'USR-000000189');
INSERT INTO `tb_urut` VALUES (148, '2020-05-30', 72, 'USR-000000245');
INSERT INTO `tb_urut` VALUES (149, '2020-05-30', 73, 'USR-000000248');
INSERT INTO `tb_urut` VALUES (150, '2020-05-30', 74, 'USR-000000249');
INSERT INTO `tb_urut` VALUES (151, '2020-05-30', 75, 'USR-000000219');
INSERT INTO `tb_urut` VALUES (152, '2020-05-30', 76, 'USR-000000247');
INSERT INTO `tb_urut` VALUES (153, '2020-05-30', 77, 'USR-000000250');
INSERT INTO `tb_urut` VALUES (154, '2020-05-30', 78, 'USR-000000251');
INSERT INTO `tb_urut` VALUES (155, '2020-05-30', 79, 'USR-000000256');
INSERT INTO `tb_urut` VALUES (156, '2020-05-30', 80, 'USR-000000254');
INSERT INTO `tb_urut` VALUES (157, '2020-05-30', 81, 'USR-000000253');
INSERT INTO `tb_urut` VALUES (158, '2020-05-30', 82, 'USR-000000258');
INSERT INTO `tb_urut` VALUES (159, '2020-05-30', 83, 'USR-000000259');
INSERT INTO `tb_urut` VALUES (160, '2020-05-30', 84, 'USR-000000260');
INSERT INTO `tb_urut` VALUES (161, '2020-05-30', 85, 'USR-000000255');
INSERT INTO `tb_urut` VALUES (162, '2020-05-30', 86, 'USR-000000261');
INSERT INTO `tb_urut` VALUES (163, '2020-05-30', 87, 'USR-000000262');
INSERT INTO `tb_urut` VALUES (164, '2020-05-30', 88, 'USR-000000036');
INSERT INTO `tb_urut` VALUES (165, '2020-05-30', 89, 'USR-000000265');
INSERT INTO `tb_urut` VALUES (166, '2020-05-30', 90, 'USR-000000266');
INSERT INTO `tb_urut` VALUES (167, '2020-05-30', 91, 'USR-000000190');
INSERT INTO `tb_urut` VALUES (168, '2020-05-30', 92, 'USR-000000227');
INSERT INTO `tb_urut` VALUES (169, '2020-05-30', 93, 'USR-000000103');
INSERT INTO `tb_urut` VALUES (170, '2020-05-30', 94, 'USR-000000268');
INSERT INTO `tb_urut` VALUES (171, '2020-05-30', 95, 'USR-000000114');
INSERT INTO `tb_urut` VALUES (172, '2020-05-30', 96, 'USR-000000271');
INSERT INTO `tb_urut` VALUES (173, '2020-05-30', 97, 'USR-000000272');
INSERT INTO `tb_urut` VALUES (174, '2020-05-30', 98, 'USR-000000273');
INSERT INTO `tb_urut` VALUES (175, '2020-05-30', 99, 'USR-000000275');
INSERT INTO `tb_urut` VALUES (176, '2020-05-31', 1, 'USR-000000256');
INSERT INTO `tb_urut` VALUES (177, '2020-05-31', 2, 'USR-000000279');
INSERT INTO `tb_urut` VALUES (178, '2020-05-31', 3, 'USR-000000191');
INSERT INTO `tb_urut` VALUES (179, '2020-05-31', 4, 'USR-000000280');
INSERT INTO `tb_urut` VALUES (180, '2020-05-31', 5, 'USR-000000240');
INSERT INTO `tb_urut` VALUES (181, '2020-05-31', 6, 'USR-000000078');
INSERT INTO `tb_urut` VALUES (182, '2020-05-31', 7, 'USR-000000148');
INSERT INTO `tb_urut` VALUES (183, '2020-05-31', 8, 'USR-000000270');
INSERT INTO `tb_urut` VALUES (184, '2020-05-31', 9, 'USR-000000284');
INSERT INTO `tb_urut` VALUES (185, '2020-05-31', 10, 'USR-000000283');
INSERT INTO `tb_urut` VALUES (186, '2020-05-31', 11, 'USR-000000165');
INSERT INTO `tb_urut` VALUES (187, '2020-05-31', 12, 'USR-000000286');
INSERT INTO `tb_urut` VALUES (188, '2020-05-31', 13, 'USR-000000287');
INSERT INTO `tb_urut` VALUES (189, '2020-05-31', 14, 'USR-000000255');
INSERT INTO `tb_urut` VALUES (190, '2020-05-31', 15, 'USR-000000275');
INSERT INTO `tb_urut` VALUES (191, '2020-05-31', 16, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (192, '2020-05-31', 17, 'USR-000000288');
INSERT INTO `tb_urut` VALUES (193, '2020-05-31', 18, 'USR-000000282');
INSERT INTO `tb_urut` VALUES (194, '2020-05-31', 19, 'USR-000000289');
INSERT INTO `tb_urut` VALUES (195, '2020-05-31', 20, 'USR-000000290');
INSERT INTO `tb_urut` VALUES (196, '2020-05-31', 21, 'USR-000000020');
INSERT INTO `tb_urut` VALUES (197, '2020-05-31', 22, 'USR-000000244');
INSERT INTO `tb_urut` VALUES (198, '2020-05-31', 23, 'USR-000000085');
INSERT INTO `tb_urut` VALUES (199, '2020-05-31', 24, 'USR-000000251');
INSERT INTO `tb_urut` VALUES (200, '2020-05-31', 25, 'USR-000000292');
INSERT INTO `tb_urut` VALUES (201, '2020-05-31', 26, 'USR-000000294');
INSERT INTO `tb_urut` VALUES (202, '2020-05-31', 27, 'USR-000000295');
INSERT INTO `tb_urut` VALUES (203, '2020-05-31', 28, 'USR-000000293');
INSERT INTO `tb_urut` VALUES (204, '2020-05-31', 29, 'USR-000000296');
INSERT INTO `tb_urut` VALUES (205, '2020-05-31', 30, 'USR-000000169');
INSERT INTO `tb_urut` VALUES (206, '2020-05-31', 31, 'USR-000000272');
INSERT INTO `tb_urut` VALUES (207, '2020-05-31', 32, 'USR-000000298');
INSERT INTO `tb_urut` VALUES (208, '2020-05-31', 33, 'USR-000000150');
INSERT INTO `tb_urut` VALUES (209, '2020-05-31', 34, 'USR-000000152');
INSERT INTO `tb_urut` VALUES (210, '2020-05-31', 35, 'USR-000000299');
INSERT INTO `tb_urut` VALUES (211, '2020-05-31', 36, 'USR-000000302');
INSERT INTO `tb_urut` VALUES (212, '2020-05-31', 37, 'USR-000000305');
INSERT INTO `tb_urut` VALUES (213, '2020-05-31', 38, 'USR-000000155');
INSERT INTO `tb_urut` VALUES (214, '2020-05-31', 39, 'USR-000000306');
INSERT INTO `tb_urut` VALUES (215, '2020-05-31', 40, 'USR-000000201');
INSERT INTO `tb_urut` VALUES (216, '2020-05-31', 41, 'USR-000000307');
INSERT INTO `tb_urut` VALUES (217, '2020-05-31', 42, 'USR-000000112');
INSERT INTO `tb_urut` VALUES (218, '2020-05-31', 43, 'USR-000000162');
INSERT INTO `tb_urut` VALUES (219, '2020-05-31', 44, 'USR-000000083');
INSERT INTO `tb_urut` VALUES (220, '2020-05-31', 45, 'USR-000000309');
INSERT INTO `tb_urut` VALUES (221, '2020-05-31', 46, 'USR-000000311');
INSERT INTO `tb_urut` VALUES (222, '2020-05-31', 47, 'USR-000000301');
INSERT INTO `tb_urut` VALUES (223, '2020-05-31', 48, 'USR-000000147');
INSERT INTO `tb_urut` VALUES (224, '2020-05-31', 49, 'USR-000000312');
INSERT INTO `tb_urut` VALUES (225, '2020-05-31', 50, 'USR-000000142');
INSERT INTO `tb_urut` VALUES (226, '2020-05-31', 51, 'USR-000000192');
INSERT INTO `tb_urut` VALUES (227, '2020-05-31', 52, 'USR-000000006');
INSERT INTO `tb_urut` VALUES (228, '2020-05-31', 53, 'USR-000000314');
INSERT INTO `tb_urut` VALUES (229, '2020-05-31', 54, 'USR-000000209');
INSERT INTO `tb_urut` VALUES (230, '2020-05-31', 55, 'USR-000000254');
INSERT INTO `tb_urut` VALUES (231, '2020-05-31', 56, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (232, '2020-05-31', 57, 'USR-000000243');
INSERT INTO `tb_urut` VALUES (233, '2020-05-31', 58, 'USR-000000154');
INSERT INTO `tb_urut` VALUES (234, '2020-05-31', 59, 'USR-000000224');
INSERT INTO `tb_urut` VALUES (235, '2020-05-31', 60, 'USR-000000185');
INSERT INTO `tb_urut` VALUES (236, '2020-05-31', 61, 'USR-000000316');
INSERT INTO `tb_urut` VALUES (237, '2020-05-31', 62, 'USR-000000034');
INSERT INTO `tb_urut` VALUES (238, '2020-05-31', 63, 'USR-000000216');
INSERT INTO `tb_urut` VALUES (239, '2020-05-31', 64, 'USR-000000317');
INSERT INTO `tb_urut` VALUES (240, '2020-05-31', 65, 'USR-000000196');
INSERT INTO `tb_urut` VALUES (241, '2020-05-31', 66, 'USR-000000320');
INSERT INTO `tb_urut` VALUES (242, '2020-05-31', 67, 'USR-000000321');
INSERT INTO `tb_urut` VALUES (243, '2020-05-31', 68, 'USR-000000322');
INSERT INTO `tb_urut` VALUES (244, '2020-05-31', 69, 'USR-000000065');
INSERT INTO `tb_urut` VALUES (245, '2020-05-31', 70, 'USR-000000324');
INSERT INTO `tb_urut` VALUES (246, '2020-05-31', 71, 'USR-000000163');
INSERT INTO `tb_urut` VALUES (247, '2020-05-31', 72, 'USR-000000325');
INSERT INTO `tb_urut` VALUES (248, '2020-05-31', 73, 'USR-000000245');
INSERT INTO `tb_urut` VALUES (249, '2020-06-01', 1, 'USR-000000068');
INSERT INTO `tb_urut` VALUES (250, '2020-06-01', 2, 'USR-000000164');
INSERT INTO `tb_urut` VALUES (251, '2020-06-01', 3, 'USR-000000245');
INSERT INTO `tb_urut` VALUES (252, '2020-06-01', 4, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (253, '2020-06-01', 5, 'USR-000000085');
INSERT INTO `tb_urut` VALUES (254, '2020-06-01', 6, 'USR-000000293');
INSERT INTO `tb_urut` VALUES (255, '2020-06-01', 7, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (256, '2020-06-01', 8, 'USR-000000304');
INSERT INTO `tb_urut` VALUES (257, '2020-06-01', 9, 'USR-000000240');
INSERT INTO `tb_urut` VALUES (258, '2020-06-01', 10, 'USR-000000150');
INSERT INTO `tb_urut` VALUES (259, '2020-06-01', 11, 'USR-000000192');
INSERT INTO `tb_urut` VALUES (260, '2020-06-01', 12, 'USR-000000057');
INSERT INTO `tb_urut` VALUES (261, '2020-06-01', 13, 'USR-000000268');
INSERT INTO `tb_urut` VALUES (262, '2020-06-01', 14, 'USR-000000188');
INSERT INTO `tb_urut` VALUES (263, '2020-06-01', 15, 'USR-000000326');
INSERT INTO `tb_urut` VALUES (264, '2020-06-01', 16, 'USR-000000178');
INSERT INTO `tb_urut` VALUES (265, '2020-06-01', 17, 'USR-000000329');
INSERT INTO `tb_urut` VALUES (266, '2020-06-01', 18, 'USR-000000145');
INSERT INTO `tb_urut` VALUES (267, '2020-06-01', 19, 'USR-000000331');
INSERT INTO `tb_urut` VALUES (268, '2020-06-01', 20, 'USR-000000058');
INSERT INTO `tb_urut` VALUES (269, '2020-06-01', 21, 'USR-000000149');
INSERT INTO `tb_urut` VALUES (270, '2020-06-01', 22, 'USR-000000254');
INSERT INTO `tb_urut` VALUES (271, '2020-06-01', 23, 'USR-000000333');
INSERT INTO `tb_urut` VALUES (272, '2020-06-01', 24, 'USR-000000086');
INSERT INTO `tb_urut` VALUES (273, '2020-06-01', 25, 'USR-000000334');
INSERT INTO `tb_urut` VALUES (274, '2020-06-01', 26, 'USR-000000226');
INSERT INTO `tb_urut` VALUES (275, '2020-06-01', 27, 'USR-000000232');
INSERT INTO `tb_urut` VALUES (276, '2020-06-01', 28, 'USR-000000034');
INSERT INTO `tb_urut` VALUES (277, '2020-06-01', 29, 'USR-000000214');
INSERT INTO `tb_urut` VALUES (278, '2020-06-01', 30, 'USR-000000213');
INSERT INTO `tb_urut` VALUES (279, '2020-06-01', 31, 'USR-000000020');
INSERT INTO `tb_urut` VALUES (280, '2020-06-01', 32, 'USR-000000010');
INSERT INTO `tb_urut` VALUES (281, '2020-06-01', 33, 'USR-000000227');
INSERT INTO `tb_urut` VALUES (282, '2020-06-01', 34, 'USR-000000283');
INSERT INTO `tb_urut` VALUES (283, '2020-06-01', 35, 'USR-000000184');
INSERT INTO `tb_urut` VALUES (284, '2020-06-01', 36, 'USR-000000311');
INSERT INTO `tb_urut` VALUES (285, '2020-06-01', 37, 'USR-000000147');
INSERT INTO `tb_urut` VALUES (286, '2020-06-01', 38, 'USR-000000221');
INSERT INTO `tb_urut` VALUES (287, '2020-06-01', 39, 'USR-000000027');
INSERT INTO `tb_urut` VALUES (288, '2020-06-01', 40, 'USR-000000011');
INSERT INTO `tb_urut` VALUES (289, '2020-06-01', 41, 'USR-000000039');
INSERT INTO `tb_urut` VALUES (290, '2020-06-01', 42, 'USR-000000112');
INSERT INTO `tb_urut` VALUES (291, '2020-06-01', 43, 'USR-000000256');
INSERT INTO `tb_urut` VALUES (292, '2020-06-01', 44, 'USR-000000116');
INSERT INTO `tb_urut` VALUES (293, '2020-06-01', 45, 'USR-000000338');
INSERT INTO `tb_urut` VALUES (294, '2020-06-01', 46, 'USR-000000200');
INSERT INTO `tb_urut` VALUES (295, '2020-06-01', 47, 'USR-000000125');
INSERT INTO `tb_urut` VALUES (296, '2020-06-01', 48, 'USR-000000339');
INSERT INTO `tb_urut` VALUES (297, '2020-06-01', 49, 'USR-000000340');
INSERT INTO `tb_urut` VALUES (298, '2020-06-01', 50, 'USR-000000242');
INSERT INTO `tb_urut` VALUES (299, '2020-06-01', 51, 'USR-000000169');
INSERT INTO `tb_urut` VALUES (300, '2020-06-01', 52, 'USR-000000224');
INSERT INTO `tb_urut` VALUES (301, '2020-06-01', 53, 'USR-000000054');
INSERT INTO `tb_urut` VALUES (302, '2020-06-01', 54, 'USR-000000173');
INSERT INTO `tb_urut` VALUES (303, '2020-06-01', 55, 'USR-000000165');
INSERT INTO `tb_urut` VALUES (304, '2020-06-01', 56, 'USR-000000341');
INSERT INTO `tb_urut` VALUES (305, '2020-06-01', 57, 'USR-000000154');
INSERT INTO `tb_urut` VALUES (306, '2020-06-01', 58, 'USR-000000316');
INSERT INTO `tb_urut` VALUES (307, '2020-06-01', 59, 'USR-000000342');
INSERT INTO `tb_urut` VALUES (308, '2020-06-01', 60, 'USR-000000092');
INSERT INTO `tb_urut` VALUES (309, '2020-06-01', 61, 'USR-000000130');
INSERT INTO `tb_urut` VALUES (310, '2020-06-01', 62, 'USR-000000343');
INSERT INTO `tb_urut` VALUES (311, '2020-06-01', 63, 'USR-000000114');
INSERT INTO `tb_urut` VALUES (312, '2020-06-01', 64, 'USR-000000344');
INSERT INTO `tb_urut` VALUES (313, '2020-06-01', 65, 'USR-000000300');
INSERT INTO `tb_urut` VALUES (314, '2020-06-01', 66, 'USR-000000303');
INSERT INTO `tb_urut` VALUES (315, '2020-06-01', 67, 'USR-000000036');
INSERT INTO `tb_urut` VALUES (316, '2020-06-01', 68, 'USR-000000347');
INSERT INTO `tb_urut` VALUES (317, '2020-06-01', 69, 'USR-000000244');
INSERT INTO `tb_urut` VALUES (318, '2020-06-01', 70, 'USR-000000267');
INSERT INTO `tb_urut` VALUES (319, '2020-06-01', 71, 'USR-000000048');
INSERT INTO `tb_urut` VALUES (320, '2020-06-01', 72, 'USR-000000348');
INSERT INTO `tb_urut` VALUES (321, '2020-06-01', 73, 'USR-000000349');
INSERT INTO `tb_urut` VALUES (322, '2020-06-01', 74, 'USR-000000350');
INSERT INTO `tb_urut` VALUES (323, '2020-06-01', 75, 'USR-000000352');
INSERT INTO `tb_urut` VALUES (324, '2020-06-01', 76, 'USR-000000301');
INSERT INTO `tb_urut` VALUES (325, '2020-06-01', 77, 'USR-000000305');
INSERT INTO `tb_urut` VALUES (326, '2020-06-01', 78, 'USR-000000033');
INSERT INTO `tb_urut` VALUES (327, '2020-06-01', 79, 'USR-000000264');
INSERT INTO `tb_urut` VALUES (328, '2020-06-01', 80, 'USR-000000354');
INSERT INTO `tb_urut` VALUES (329, '2020-06-01', 81, 'USR-000000322');
INSERT INTO `tb_urut` VALUES (330, '2020-06-02', 82, 'USR-000000255');
INSERT INTO `tb_urut` VALUES (331, '2020-06-02', 83, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (332, '2020-06-02', 84, 'USR-000000321');
INSERT INTO `tb_urut` VALUES (333, '2020-06-02', 85, 'USR-000000192');
INSERT INTO `tb_urut` VALUES (334, '2020-06-02', 86, 'USR-000000356');
INSERT INTO `tb_urut` VALUES (335, '2020-06-02', 87, 'USR-000000020');
INSERT INTO `tb_urut` VALUES (336, '2020-06-02', 88, 'USR-000000349');
INSERT INTO `tb_urut` VALUES (337, '2020-06-02', 89, 'USR-000000150');
INSERT INTO `tb_urut` VALUES (338, '2020-06-02', 90, 'USR-000000357');
INSERT INTO `tb_urut` VALUES (339, '2020-06-02', 91, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (340, '2020-06-02', 92, 'USR-000000213');
INSERT INTO `tb_urut` VALUES (341, '2020-06-02', 93, 'USR-000000086');
INSERT INTO `tb_urut` VALUES (342, '2020-06-02', 94, 'USR-000000145');
INSERT INTO `tb_urut` VALUES (343, '2020-06-02', 95, 'USR-000000338');
INSERT INTO `tb_urut` VALUES (344, '2020-06-02', 96, 'USR-000000173');
INSERT INTO `tb_urut` VALUES (345, '2020-06-02', 97, 'USR-000000359');
INSERT INTO `tb_urut` VALUES (346, '2020-06-02', 98, 'USR-000000268');
INSERT INTO `tb_urut` VALUES (347, '2020-06-02', 99, 'USR-000000358');
INSERT INTO `tb_urut` VALUES (348, '2020-06-02', 100, 'USR-000000360');
INSERT INTO `tb_urut` VALUES (349, '2020-06-02', 101, 'USR-000000282');
INSERT INTO `tb_urut` VALUES (350, '2020-06-02', 102, 'USR-000000100');
INSERT INTO `tb_urut` VALUES (351, '2020-06-02', 103, 'USR-000000195');
INSERT INTO `tb_urut` VALUES (352, '2020-06-02', 104, 'USR-000000245');
INSERT INTO `tb_urut` VALUES (353, '2020-06-02', 105, 'USR-000000227');
INSERT INTO `tb_urut` VALUES (354, '2020-06-02', 106, 'USR-000000361');
INSERT INTO `tb_urut` VALUES (355, '2020-06-02', 107, 'USR-000000294');
INSERT INTO `tb_urut` VALUES (356, '2020-06-02', 108, 'USR-000000301');
INSERT INTO `tb_urut` VALUES (357, '2020-06-02', 109, 'USR-000000203');
INSERT INTO `tb_urut` VALUES (358, '2020-06-02', 110, 'USR-000000339');
INSERT INTO `tb_urut` VALUES (359, '2020-06-02', 111, 'USR-000000363');
INSERT INTO `tb_urut` VALUES (360, '2020-06-02', 112, 'USR-000000343');
INSERT INTO `tb_urut` VALUES (361, '2020-06-02', 113, 'USR-000000053');
INSERT INTO `tb_urut` VALUES (362, '2020-06-02', 114, 'USR-000000280');
INSERT INTO `tb_urut` VALUES (363, '2020-06-02', 115, 'USR-000000365');
INSERT INTO `tb_urut` VALUES (364, '2020-06-02', 116, 'USR-000000144');
INSERT INTO `tb_urut` VALUES (365, '2020-06-02', 117, 'USR-000000364');
INSERT INTO `tb_urut` VALUES (366, '2020-06-02', 118, 'USR-000000331');
INSERT INTO `tb_urut` VALUES (367, '2020-06-02', 119, 'USR-000000367');
INSERT INTO `tb_urut` VALUES (368, '2020-06-02', 120, 'USR-000000017');
INSERT INTO `tb_urut` VALUES (369, '2020-06-02', 121, 'USR-000000179');
INSERT INTO `tb_urut` VALUES (370, '2020-06-02', 122, 'USR-000000057');
INSERT INTO `tb_urut` VALUES (371, '2020-06-02', 123, 'USR-000000366');
INSERT INTO `tb_urut` VALUES (372, '2020-06-02', 124, 'USR-000000130');
INSERT INTO `tb_urut` VALUES (373, '2020-06-02', 125, 'USR-000000305');
INSERT INTO `tb_urut` VALUES (374, '2020-06-02', 126, 'USR-000000300');
INSERT INTO `tb_urut` VALUES (375, '2020-06-02', 127, 'USR-000000347');
INSERT INTO `tb_urut` VALUES (376, '2020-06-02', 128, 'USR-000000303');
INSERT INTO `tb_urut` VALUES (377, '2020-06-02', 129, 'USR-000000368');
INSERT INTO `tb_urut` VALUES (378, '2020-06-02', 130, 'USR-000000182');
INSERT INTO `tb_urut` VALUES (379, '2020-06-02', 131, 'USR-000000224');
INSERT INTO `tb_urut` VALUES (380, '2020-06-02', 132, 'USR-000000092');
INSERT INTO `tb_urut` VALUES (381, '2020-06-02', 133, 'USR-000000289');
INSERT INTO `tb_urut` VALUES (382, '2020-06-02', 134, 'USR-000000373');
INSERT INTO `tb_urut` VALUES (383, '2020-06-02', 135, 'USR-000000374');
INSERT INTO `tb_urut` VALUES (384, '2020-06-02', 136, 'USR-000000256');
INSERT INTO `tb_urut` VALUES (385, '2020-06-02', 137, 'USR-000000278');
INSERT INTO `tb_urut` VALUES (386, '2020-06-02', 138, 'USR-000000085');
INSERT INTO `tb_urut` VALUES (387, '2020-06-02', 139, 'USR-000000011');
INSERT INTO `tb_urut` VALUES (388, '2020-06-02', 140, 'USR-000000377');
INSERT INTO `tb_urut` VALUES (389, '2020-06-02', 141, 'USR-000000378');
INSERT INTO `tb_urut` VALUES (390, '2020-06-02', 142, 'USR-000000379');
INSERT INTO `tb_urut` VALUES (391, '2020-06-02', 143, 'USR-000000380');
INSERT INTO `tb_urut` VALUES (392, '2020-06-02', 144, 'USR-000000089');
INSERT INTO `tb_urut` VALUES (393, '2020-06-03', 145, 'USR-000000146');
INSERT INTO `tb_urut` VALUES (394, '2020-06-03', 146, 'USR-000000216');
INSERT INTO `tb_urut` VALUES (395, '2020-06-03', 147, 'USR-000000125');
INSERT INTO `tb_urut` VALUES (396, '2020-06-03', 148, 'USR-000000381');
INSERT INTO `tb_urut` VALUES (397, '2020-06-03', 149, 'USR-000000195');
INSERT INTO `tb_urut` VALUES (398, '2020-06-03', 150, 'USR-000000382');
INSERT INTO `tb_urut` VALUES (399, '2020-06-03', 151, 'USR-000000145');
INSERT INTO `tb_urut` VALUES (400, '2020-06-03', 152, 'USR-000000358');
INSERT INTO `tb_urut` VALUES (401, '2020-06-03', 153, 'USR-000000377');
INSERT INTO `tb_urut` VALUES (402, '2020-06-03', 154, 'USR-000000255');
INSERT INTO `tb_urut` VALUES (403, '2020-06-03', 155, 'USR-000000085');
INSERT INTO `tb_urut` VALUES (404, '2020-06-03', 156, 'USR-000000305');
INSERT INTO `tb_urut` VALUES (405, '2020-06-03', 157, 'USR-000000348');
INSERT INTO `tb_urut` VALUES (406, '2020-06-03', 158, 'USR-000000192');
INSERT INTO `tb_urut` VALUES (407, '2020-06-03', 159, 'USR-000000302');
INSERT INTO `tb_urut` VALUES (408, '2020-06-03', 160, 'USR-000000385');
INSERT INTO `tb_urut` VALUES (409, '2020-06-03', 161, 'USR-000000386');
INSERT INTO `tb_urut` VALUES (410, '2020-06-03', 162, 'USR-000000387');
INSERT INTO `tb_urut` VALUES (411, '2020-06-03', 163, 'USR-000000173');
INSERT INTO `tb_urut` VALUES (412, '2020-06-03', 164, 'USR-000000353');
INSERT INTO `tb_urut` VALUES (413, '2020-06-03', 165, 'USR-000000389');
INSERT INTO `tb_urut` VALUES (414, '2020-06-03', 166, 'USR-000000391');
INSERT INTO `tb_urut` VALUES (415, '2020-06-03', 167, 'USR-000000149');
INSERT INTO `tb_urut` VALUES (416, '2020-06-03', 168, 'USR-000000384');
INSERT INTO `tb_urut` VALUES (417, '2020-06-03', 169, 'USR-000000320');
INSERT INTO `tb_urut` VALUES (418, '2020-06-03', 170, 'USR-000000179');
INSERT INTO `tb_urut` VALUES (419, '2020-06-03', 171, 'USR-000000287');
INSERT INTO `tb_urut` VALUES (420, '2020-06-03', 172, 'USR-000000394');
INSERT INTO `tb_urut` VALUES (421, '2020-06-03', 173, 'USR-000000152');
INSERT INTO `tb_urut` VALUES (422, '2020-06-03', 174, 'USR-000000373');
INSERT INTO `tb_urut` VALUES (423, '2020-06-03', 175, 'USR-000000379');
INSERT INTO `tb_urut` VALUES (424, '2020-06-03', 176, 'USR-000000366');
INSERT INTO `tb_urut` VALUES (425, '2020-06-03', 177, 'USR-000000395');
INSERT INTO `tb_urut` VALUES (426, '2020-06-03', 178, 'USR-000000121');
INSERT INTO `tb_urut` VALUES (427, '2020-06-03', 179, 'USR-000000388');
INSERT INTO `tb_urut` VALUES (428, '2020-06-03', 180, 'USR-000000375');
INSERT INTO `tb_urut` VALUES (429, '2020-06-03', 181, 'USR-000000282');
INSERT INTO `tb_urut` VALUES (430, '2020-06-03', 182, 'USR-000000268');
INSERT INTO `tb_urut` VALUES (431, '2020-06-03', 183, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (432, '2020-06-03', 184, 'USR-000000331');
INSERT INTO `tb_urut` VALUES (433, '2020-06-03', 185, 'USR-000000272');
INSERT INTO `tb_urut` VALUES (434, '2020-06-03', 186, 'USR-000000057');
INSERT INTO `tb_urut` VALUES (435, '2020-06-03', 187, 'USR-000000399');
INSERT INTO `tb_urut` VALUES (436, '2020-06-03', 188, 'USR-000000400');
INSERT INTO `tb_urut` VALUES (437, '2020-06-03', 189, 'USR-000000380');
INSERT INTO `tb_urut` VALUES (438, '2020-06-03', 190, 'USR-000000187');
INSERT INTO `tb_urut` VALUES (439, '2020-06-03', 191, 'USR-000000034');
INSERT INTO `tb_urut` VALUES (440, '2020-06-03', 192, 'USR-000000402');
INSERT INTO `tb_urut` VALUES (441, '2020-06-03', 193, 'USR-000000221');
INSERT INTO `tb_urut` VALUES (442, '2020-06-03', 194, 'USR-000000294');
INSERT INTO `tb_urut` VALUES (443, '2020-06-03', 195, 'USR-000000020');
INSERT INTO `tb_urut` VALUES (444, '2020-06-03', 196, 'USR-000000256');
INSERT INTO `tb_urut` VALUES (445, '2020-06-03', 197, 'USR-000000227');
INSERT INTO `tb_urut` VALUES (446, '2020-06-03', 198, 'USR-000000396');
INSERT INTO `tb_urut` VALUES (447, '2020-06-03', 199, 'USR-000000165');
INSERT INTO `tb_urut` VALUES (448, '2020-06-03', 200, 'USR-000000342');
INSERT INTO `tb_urut` VALUES (449, '2020-06-03', 201, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (450, '2020-06-03', 202, 'USR-000000144');
INSERT INTO `tb_urut` VALUES (451, '2020-06-03', 203, 'USR-000000164');
INSERT INTO `tb_urut` VALUES (452, '2020-06-03', 204, 'USR-000000170');
INSERT INTO `tb_urut` VALUES (453, '2020-06-03', 205, 'USR-000000403');
INSERT INTO `tb_urut` VALUES (454, '2020-06-03', 206, 'USR-000000404');
INSERT INTO `tb_urut` VALUES (455, '2020-06-03', 207, 'USR-000000182');
INSERT INTO `tb_urut` VALUES (456, '2020-06-03', 208, 'USR-000000405');
INSERT INTO `tb_urut` VALUES (457, '2020-06-04', 209, 'USR-000000407');
INSERT INTO `tb_urut` VALUES (458, '2020-06-04', 210, 'USR-000000284');
INSERT INTO `tb_urut` VALUES (459, '2020-06-04', 211, 'USR-000000085');
INSERT INTO `tb_urut` VALUES (460, '2020-06-04', 212, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (461, '2020-06-04', 213, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (462, '2020-06-04', 214, 'USR-000000294');
INSERT INTO `tb_urut` VALUES (463, '2020-06-04', 215, 'USR-000000408');
INSERT INTO `tb_urut` VALUES (464, '2020-06-04', 216, 'USR-000000341');
INSERT INTO `tb_urut` VALUES (465, '2020-06-04', 217, 'USR-000000409');
INSERT INTO `tb_urut` VALUES (466, '2020-06-04', 218, 'USR-000000385');
INSERT INTO `tb_urut` VALUES (467, '2020-06-04', 219, 'USR-000000179');
INSERT INTO `tb_urut` VALUES (468, '2020-06-04', 220, 'USR-000000410');
INSERT INTO `tb_urut` VALUES (469, '2020-06-04', 221, 'USR-000000319');
INSERT INTO `tb_urut` VALUES (470, '2020-06-04', 222, 'USR-000000155');
INSERT INTO `tb_urut` VALUES (471, '2020-06-04', 223, 'USR-000000322');
INSERT INTO `tb_urut` VALUES (472, '2020-06-04', 224, 'USR-000000411');
INSERT INTO `tb_urut` VALUES (473, '2020-06-04', 225, 'USR-000000365');
INSERT INTO `tb_urut` VALUES (474, '2020-06-04', 226, 'USR-000000412');
INSERT INTO `tb_urut` VALUES (475, '2020-06-04', 227, 'USR-000000413');
INSERT INTO `tb_urut` VALUES (476, '2020-06-04', 228, 'USR-000000414');
INSERT INTO `tb_urut` VALUES (477, '2020-06-04', 229, 'USR-000000237');
INSERT INTO `tb_urut` VALUES (478, '2020-06-04', 230, 'USR-000000415');
INSERT INTO `tb_urut` VALUES (479, '2020-06-04', 231, 'USR-000000057');
INSERT INTO `tb_urut` VALUES (480, '2020-06-04', 232, 'USR-000000416');
INSERT INTO `tb_urut` VALUES (481, '2020-06-04', 233, 'USR-000000069');
INSERT INTO `tb_urut` VALUES (482, '2020-06-04', 234, 'USR-000000195');
INSERT INTO `tb_urut` VALUES (483, '2020-06-04', 235, 'USR-000000288');
INSERT INTO `tb_urut` VALUES (484, '2020-06-04', 236, 'USR-000000338');
INSERT INTO `tb_urut` VALUES (485, '2020-06-04', 237, 'USR-000000063');
INSERT INTO `tb_urut` VALUES (486, '2020-06-04', 238, 'USR-000000095');
INSERT INTO `tb_urut` VALUES (487, '2020-06-04', 239, 'USR-000000254');
INSERT INTO `tb_urut` VALUES (488, '2020-06-04', 240, 'USR-000000011');
INSERT INTO `tb_urut` VALUES (489, '2020-06-04', 241, 'USR-000000245');
INSERT INTO `tb_urut` VALUES (490, '2020-06-04', 242, 'USR-000000272');
INSERT INTO `tb_urut` VALUES (491, '2020-06-05', 243, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (492, '2020-06-05', 244, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (493, '2020-06-05', 245, 'USR-000000146');
INSERT INTO `tb_urut` VALUES (494, '2020-06-05', 246, 'USR-000000417');
INSERT INTO `tb_urut` VALUES (495, '2020-06-05', 247, 'USR-000000237');
INSERT INTO `tb_urut` VALUES (496, '2020-06-05', 248, 'USR-000000078');
INSERT INTO `tb_urut` VALUES (497, '2020-06-05', 249, 'USR-000000418');
INSERT INTO `tb_urut` VALUES (498, '2020-06-05', 250, 'USR-000000419');
INSERT INTO `tb_urut` VALUES (499, '2020-06-05', 251, 'USR-000000130');
INSERT INTO `tb_urut` VALUES (500, '2020-06-05', 252, 'USR-000000420');
INSERT INTO `tb_urut` VALUES (501, '2020-06-05', 253, 'USR-000000421');
INSERT INTO `tb_urut` VALUES (502, '2020-06-05', 254, 'USR-000000069');
INSERT INTO `tb_urut` VALUES (503, '2020-06-05', 255, 'USR-000000288');
INSERT INTO `tb_urut` VALUES (504, '2020-06-05', 256, 'USR-000000274');
INSERT INTO `tb_urut` VALUES (505, '2020-06-05', 257, 'USR-000000010');
INSERT INTO `tb_urut` VALUES (506, '2020-06-05', 258, 'USR-000000243');
INSERT INTO `tb_urut` VALUES (507, '2020-06-05', 259, 'USR-000000173');
INSERT INTO `tb_urut` VALUES (508, '2020-06-05', 260, 'USR-000000397');
INSERT INTO `tb_urut` VALUES (509, '2020-06-05', 261, 'USR-000000342');
INSERT INTO `tb_urut` VALUES (510, '2020-06-05', 262, 'USR-000000065');
INSERT INTO `tb_urut` VALUES (511, '2020-06-05', 263, 'USR-000000057');
INSERT INTO `tb_urut` VALUES (512, '2020-06-05', 264, 'USR-000000071');
INSERT INTO `tb_urut` VALUES (513, '2020-06-05', 265, 'USR-000000382');
INSERT INTO `tb_urut` VALUES (514, '2020-06-05', 266, 'USR-000000272');
INSERT INTO `tb_urut` VALUES (515, '2020-06-05', 267, 'USR-000000423');
INSERT INTO `tb_urut` VALUES (516, '2020-06-05', 268, 'USR-000000403');
INSERT INTO `tb_urut` VALUES (517, '2020-06-05', 269, 'USR-000000179');
INSERT INTO `tb_urut` VALUES (518, '2020-06-05', 270, 'USR-000000115');
INSERT INTO `tb_urut` VALUES (519, '2020-06-05', 271, 'USR-000000083');
INSERT INTO `tb_urut` VALUES (520, '2020-06-05', 272, 'USR-000000424');
INSERT INTO `tb_urut` VALUES (521, '2020-06-05', 273, 'USR-000000374');
INSERT INTO `tb_urut` VALUES (522, '2020-06-05', 274, 'USR-000000254');
INSERT INTO `tb_urut` VALUES (523, '2020-06-05', 275, 'USR-000000304');
INSERT INTO `tb_urut` VALUES (524, '2020-06-06', 276, 'USR-000000356');
INSERT INTO `tb_urut` VALUES (525, '2020-06-06', 277, 'USR-000000192');
INSERT INTO `tb_urut` VALUES (526, '2020-06-06', 278, 'USR-000000427');
INSERT INTO `tb_urut` VALUES (527, '2020-06-06', 279, 'USR-000000015');
INSERT INTO `tb_urut` VALUES (528, '2020-06-06', 280, 'USR-000000179');
INSERT INTO `tb_urut` VALUES (529, '2020-06-06', 281, 'USR-000000424');
INSERT INTO `tb_urut` VALUES (530, '2020-06-06', 282, 'USR-000000409');
INSERT INTO `tb_urut` VALUES (531, '2020-06-06', 283, 'USR-000000227');
INSERT INTO `tb_urut` VALUES (532, '2020-06-06', 284, 'USR-000000245');
INSERT INTO `tb_urut` VALUES (533, '2020-06-06', 285, 'USR-000000075');
INSERT INTO `tb_urut` VALUES (534, '2020-06-06', 286, 'USR-000000429');
INSERT INTO `tb_urut` VALUES (535, '2020-06-06', 287, 'USR-000000236');
INSERT INTO `tb_urut` VALUES (536, '2020-06-06', 288, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (537, '2020-06-06', 289, 'USR-000000430');
INSERT INTO `tb_urut` VALUES (538, '2020-06-06', 290, 'USR-000000250');
INSERT INTO `tb_urut` VALUES (539, '2020-06-06', 291, 'USR-000000064');
INSERT INTO `tb_urut` VALUES (540, '2020-06-06', 292, 'USR-000000203');
INSERT INTO `tb_urut` VALUES (541, '2020-06-06', 293, 'USR-000000123');
INSERT INTO `tb_urut` VALUES (542, '2020-06-06', 294, 'USR-000000149');
INSERT INTO `tb_urut` VALUES (543, '2020-06-06', 295, 'USR-000000154');
INSERT INTO `tb_urut` VALUES (544, '2020-06-06', 296, 'USR-000000146');
INSERT INTO `tb_urut` VALUES (545, '2020-06-06', 297, 'USR-000000395');
INSERT INTO `tb_urut` VALUES (546, '2020-06-06', 298, 'USR-000000431');
INSERT INTO `tb_urut` VALUES (547, '2020-06-06', 299, 'USR-000000185');
INSERT INTO `tb_urut` VALUES (548, '2020-06-06', 300, 'USR-000000065');
INSERT INTO `tb_urut` VALUES (549, '2020-06-06', 301, 'USR-000000436');
INSERT INTO `tb_urut` VALUES (550, '2020-06-06', 302, 'USR-000000437');
INSERT INTO `tb_urut` VALUES (551, '2020-06-06', 303, 'USR-000000237');
INSERT INTO `tb_urut` VALUES (552, '2020-06-06', 304, 'USR-000000196');
INSERT INTO `tb_urut` VALUES (553, '2020-06-06', 305, 'USR-000000331');
INSERT INTO `tb_urut` VALUES (554, '2020-06-06', 306, 'USR-000000338');
INSERT INTO `tb_urut` VALUES (555, '2020-06-06', 307, 'USR-000000069');
INSERT INTO `tb_urut` VALUES (556, '2020-06-06', 308, 'USR-000000438');
INSERT INTO `tb_urut` VALUES (557, '2020-06-07', 309, 'USR-000000403');
INSERT INTO `tb_urut` VALUES (558, '2020-06-07', 310, 'USR-000000435');
INSERT INTO `tb_urut` VALUES (559, '2020-06-07', 311, 'USR-000000418');
INSERT INTO `tb_urut` VALUES (560, '2020-06-07', 312, 'USR-000000433');
INSERT INTO `tb_urut` VALUES (561, '2020-06-07', 313, 'USR-000000398');
INSERT INTO `tb_urut` VALUES (562, '2020-06-07', 314, 'USR-000000165');
INSERT INTO `tb_urut` VALUES (563, '2020-06-07', 315, 'USR-000000441');
INSERT INTO `tb_urut` VALUES (564, '2020-06-07', 316, 'USR-000000265');
INSERT INTO `tb_urut` VALUES (565, '2020-06-07', 317, 'USR-000000442');
INSERT INTO `tb_urut` VALUES (566, '2020-06-07', 318, 'USR-000000089');
INSERT INTO `tb_urut` VALUES (567, '2020-06-07', 319, 'USR-000000444');
INSERT INTO `tb_urut` VALUES (568, '2020-06-07', 320, 'USR-000000445');
INSERT INTO `tb_urut` VALUES (569, '2020-06-07', 321, 'USR-000000447');
INSERT INTO `tb_urut` VALUES (570, '2020-06-07', 322, 'USR-000000448');
INSERT INTO `tb_urut` VALUES (571, '2020-06-07', 323, 'USR-000000254');
INSERT INTO `tb_urut` VALUES (572, '2020-06-07', 324, 'USR-000000092');
INSERT INTO `tb_urut` VALUES (573, '2020-06-07', 325, 'USR-000000449');
INSERT INTO `tb_urut` VALUES (574, '2020-06-07', 326, 'USR-000000068');
INSERT INTO `tb_urut` VALUES (575, '2020-06-07', 327, 'USR-000000227');
INSERT INTO `tb_urut` VALUES (576, '2020-06-07', 328, 'USR-000000451');
INSERT INTO `tb_urut` VALUES (577, '2020-06-07', 329, 'USR-000000452');
INSERT INTO `tb_urut` VALUES (578, '2020-06-07', 330, 'USR-000000379');
INSERT INTO `tb_urut` VALUES (579, '2020-06-07', 331, 'USR-000000100');
INSERT INTO `tb_urut` VALUES (580, '2020-06-07', 332, 'USR-000000152');
INSERT INTO `tb_urut` VALUES (581, '2020-06-07', 333, 'USR-000000399');
INSERT INTO `tb_urut` VALUES (582, '2020-06-07', 334, 'USR-000000117');
INSERT INTO `tb_urut` VALUES (583, '2020-06-07', 335, 'USR-000000424');
INSERT INTO `tb_urut` VALUES (584, '2020-06-07', 336, 'USR-000000455');
INSERT INTO `tb_urut` VALUES (585, '2020-06-07', 337, 'USR-000000456');
INSERT INTO `tb_urut` VALUES (586, '2020-06-07', 338, 'USR-000000357');
INSERT INTO `tb_urut` VALUES (587, '2020-06-07', 339, 'USR-000000434');
INSERT INTO `tb_urut` VALUES (588, '2020-06-07', 340, 'USR-000000011');
INSERT INTO `tb_urut` VALUES (589, '2020-06-07', 341, 'USR-000000458');
INSERT INTO `tb_urut` VALUES (590, '2020-06-07', 342, 'USR-000000459');
INSERT INTO `tb_urut` VALUES (591, '2020-06-07', 343, 'USR-000000460');
INSERT INTO `tb_urut` VALUES (592, '2020-06-07', 344, 'USR-000000462');
INSERT INTO `tb_urut` VALUES (593, '2020-06-07', 345, 'USR-000000463');
INSERT INTO `tb_urut` VALUES (594, '2020-06-07', 346, 'USR-000000465');
INSERT INTO `tb_urut` VALUES (595, '2020-06-07', 347, 'USR-000000466');
INSERT INTO `tb_urut` VALUES (596, '2020-06-07', 348, 'USR-000000467');
INSERT INTO `tb_urut` VALUES (597, '2020-06-07', 349, 'USR-000000470');
INSERT INTO `tb_urut` VALUES (598, '2020-06-08', 350, 'USR-000000470');
INSERT INTO `tb_urut` VALUES (599, '2020-06-08', 351, 'USR-000000471');
INSERT INTO `tb_urut` VALUES (600, '2020-06-08', 352, 'USR-000000144');
INSERT INTO `tb_urut` VALUES (601, '2020-06-08', 353, 'USR-000000474');
INSERT INTO `tb_urut` VALUES (602, '2020-06-08', 354, 'USR-000000166');
INSERT INTO `tb_urut` VALUES (603, '2020-06-08', 355, 'USR-000000034');
INSERT INTO `tb_urut` VALUES (604, '2020-06-08', 356, 'USR-000000475');
INSERT INTO `tb_urut` VALUES (605, '2020-06-08', 357, 'USR-000000116');
INSERT INTO `tb_urut` VALUES (606, '2020-06-08', 358, 'USR-000000078');
INSERT INTO `tb_urut` VALUES (607, '2020-06-08', 359, 'USR-000000264');
INSERT INTO `tb_urut` VALUES (608, '2020-06-08', 360, 'USR-000000364');
INSERT INTO `tb_urut` VALUES (609, '2020-06-08', 361, 'USR-000000447');
INSERT INTO `tb_urut` VALUES (610, '2020-06-08', 362, 'USR-000000089');
INSERT INTO `tb_urut` VALUES (611, '2020-06-08', 363, 'USR-000000125');
INSERT INTO `tb_urut` VALUES (612, '2020-06-08', 364, 'USR-000000050');
INSERT INTO `tb_urut` VALUES (613, '2020-06-08', 365, 'USR-000000164');
INSERT INTO `tb_urut` VALUES (614, '2020-06-08', 366, 'USR-000000452');
INSERT INTO `tb_urut` VALUES (615, '2020-06-08', 367, 'USR-000000068');
INSERT INTO `tb_urut` VALUES (616, '2020-06-08', 368, 'USR-000000387');
INSERT INTO `tb_urut` VALUES (617, '2020-06-08', 369, 'USR-000000058');
INSERT INTO `tb_urut` VALUES (618, '2020-06-08', 370, 'USR-000000287');
INSERT INTO `tb_urut` VALUES (619, '2020-06-08', 371, 'USR-000000478');
INSERT INTO `tb_urut` VALUES (620, '2020-06-08', 372, 'USR-000000460');
INSERT INTO `tb_urut` VALUES (621, '2020-06-08', 373, 'USR-000000223');
INSERT INTO `tb_urut` VALUES (622, '2020-06-08', 374, 'USR-000000056');
INSERT INTO `tb_urut` VALUES (623, '2020-06-08', 375, 'USR-000000444');
INSERT INTO `tb_urut` VALUES (624, '2020-06-08', 376, 'USR-000000481');
INSERT INTO `tb_urut` VALUES (625, '2020-06-08', 377, 'USR-000000411');
INSERT INTO `tb_urut` VALUES (626, '2020-06-08', 378, 'USR-000000017');
INSERT INTO `tb_urut` VALUES (627, '2020-06-08', 379, 'USR-000000476');
INSERT INTO `tb_urut` VALUES (628, '2020-06-08', 380, 'USR-000000100');
INSERT INTO `tb_urut` VALUES (629, '2020-06-08', 381, 'USR-000000482');
INSERT INTO `tb_urut` VALUES (630, '2020-06-08', 382, 'USR-000000066');
INSERT INTO `tb_urut` VALUES (631, '2020-06-08', 383, 'USR-000000083');
INSERT INTO `tb_urut` VALUES (632, '2020-06-08', 384, 'USR-000000361');
INSERT INTO `tb_urut` VALUES (633, '2020-06-08', 385, 'USR-000000065');
INSERT INTO `tb_urut` VALUES (634, '2020-06-08', 386, 'USR-000000433');
INSERT INTO `tb_urut` VALUES (635, '2020-06-08', 387, 'USR-000000221');
INSERT INTO `tb_urut` VALUES (636, '2020-06-08', 388, 'USR-000000162');
INSERT INTO `tb_urut` VALUES (637, '2020-06-08', 389, 'USR-000000445');
INSERT INTO `tb_urut` VALUES (638, '2020-06-08', 390, 'USR-000000015');
INSERT INTO `tb_urut` VALUES (639, '2020-06-08', 391, 'USR-000000146');
INSERT INTO `tb_urut` VALUES (640, '2020-06-08', 392, 'USR-000000055');
INSERT INTO `tb_urut` VALUES (641, '2020-06-08', 393, 'USR-000000086');
INSERT INTO `tb_urut` VALUES (642, '2020-06-08', 394, 'USR-000000123');
INSERT INTO `tb_urut` VALUES (643, '2020-06-08', 395, 'USR-000000486');
INSERT INTO `tb_urut` VALUES (644, '2020-06-08', 396, 'USR-000000253');
INSERT INTO `tb_urut` VALUES (645, '2020-06-08', 397, 'USR-000000485');
INSERT INTO `tb_urut` VALUES (646, '2020-06-08', 398, 'USR-000000307');
INSERT INTO `tb_urut` VALUES (647, '2020-06-08', 399, 'USR-000000182');
INSERT INTO `tb_urut` VALUES (648, '2020-06-08', 400, 'USR-000000096');
INSERT INTO `tb_urut` VALUES (649, '2020-06-08', 401, 'USR-000000145');
INSERT INTO `tb_urut` VALUES (650, '2020-06-08', 402, 'USR-000000396');
INSERT INTO `tb_urut` VALUES (651, '2020-06-08', 403, 'USR-000000487');
INSERT INTO `tb_urut` VALUES (652, '2020-06-08', 404, 'USR-000000488');
INSERT INTO `tb_urut` VALUES (653, '2020-06-08', 405, 'USR-000000489');
INSERT INTO `tb_urut` VALUES (654, '2020-06-08', 406, 'USR-000000461');
INSERT INTO `tb_urut` VALUES (655, '2020-06-08', 407, 'USR-000000152');
INSERT INTO `tb_urut` VALUES (656, '2020-06-08', 408, 'USR-000000490');
INSERT INTO `tb_urut` VALUES (657, '2020-06-08', 409, 'USR-000000188');
INSERT INTO `tb_urut` VALUES (658, '2020-06-08', 410, 'USR-000000254');
INSERT INTO `tb_urut` VALUES (659, '2020-06-08', 411, 'USR-000000365');
INSERT INTO `tb_urut` VALUES (660, '2020-06-08', 412, 'USR-000000095');
INSERT INTO `tb_urut` VALUES (661, '2020-06-08', 413, 'USR-000000093');
INSERT INTO `tb_urut` VALUES (662, '2020-06-08', 414, 'USR-000000493');
INSERT INTO `tb_urut` VALUES (663, '2020-06-08', 415, 'USR-000000126');
INSERT INTO `tb_urut` VALUES (664, '2020-06-08', 416, 'USR-000000494');
INSERT INTO `tb_urut` VALUES (665, '2020-06-08', 417, 'USR-000000227');
INSERT INTO `tb_urut` VALUES (666, '2020-06-08', 418, 'USR-000000220');
INSERT INTO `tb_urut` VALUES (667, '2020-06-08', 419, 'USR-000000021');
INSERT INTO `tb_urut` VALUES (668, '2020-06-08', 420, 'USR-000000340');
INSERT INTO `tb_urut` VALUES (669, '2020-06-08', 421, 'USR-000000199');
INSERT INTO `tb_urut` VALUES (670, '2020-06-08', 422, 'USR-000000370');
INSERT INTO `tb_urut` VALUES (671, '2020-06-08', 423, 'USR-000000339');
INSERT INTO `tb_urut` VALUES (672, '2020-06-08', 424, 'USR-000000239');
INSERT INTO `tb_urut` VALUES (673, '2020-06-08', 425, 'USR-000000491');
INSERT INTO `tb_urut` VALUES (674, '2020-06-08', 426, 'USR-000000044');
INSERT INTO `tb_urut` VALUES (675, '2020-06-08', 427, 'USR-000000240');
INSERT INTO `tb_urut` VALUES (676, '2020-06-08', 428, 'USR-000000498');
INSERT INTO `tb_urut` VALUES (677, '2020-06-08', 429, 'USR-000000250');
INSERT INTO `tb_urut` VALUES (678, '2020-06-08', 430, 'USR-000000499');
INSERT INTO `tb_urut` VALUES (679, '2020-06-08', 431, 'USR-000000455');
INSERT INTO `tb_urut` VALUES (680, '2020-06-08', 432, 'USR-000000500');
INSERT INTO `tb_urut` VALUES (681, '2020-06-08', 433, 'USR-000000483');
INSERT INTO `tb_urut` VALUES (682, '2020-06-09', 434, 'USR-000000056');
INSERT INTO `tb_urut` VALUES (683, '2020-06-09', 435, 'USR-000000116');
INSERT INTO `tb_urut` VALUES (684, '2020-06-09', 436, 'USR-000000223');
INSERT INTO `tb_urut` VALUES (685, '2020-06-09', 437, 'USR-000000476');
INSERT INTO `tb_urut` VALUES (686, '2020-06-09', 438, 'USR-000000146');
INSERT INTO `tb_urut` VALUES (687, '2020-06-09', 439, 'USR-000000503');
INSERT INTO `tb_urut` VALUES (688, '2020-06-09', 440, 'USR-000000504');
INSERT INTO `tb_urut` VALUES (689, '2020-06-09', 441, 'USR-000000195');
INSERT INTO `tb_urut` VALUES (690, '2020-06-09', 442, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (691, '2020-06-09', 443, 'USR-000000078');
INSERT INTO `tb_urut` VALUES (692, '2020-06-09', 444, 'USR-000000420');
INSERT INTO `tb_urut` VALUES (693, '2020-06-09', 445, 'USR-000000253');
INSERT INTO `tb_urut` VALUES (694, '2020-06-09', 446, 'USR-000000239');
INSERT INTO `tb_urut` VALUES (695, '2020-06-09', 447, 'USR-000000505');
INSERT INTO `tb_urut` VALUES (696, '2020-06-09', 448, 'USR-000000096');
INSERT INTO `tb_urut` VALUES (697, '2020-06-09', 449, 'USR-000000413');
INSERT INTO `tb_urut` VALUES (698, '2020-06-09', 450, 'USR-000000386');
INSERT INTO `tb_urut` VALUES (699, '2020-06-09', 451, 'USR-000000491');
INSERT INTO `tb_urut` VALUES (700, '2020-06-09', 452, 'USR-000000506');
INSERT INTO `tb_urut` VALUES (701, '2020-06-09', 453, 'USR-000000447');
INSERT INTO `tb_urut` VALUES (702, '2020-06-09', 454, 'USR-000000507');
INSERT INTO `tb_urut` VALUES (703, '2020-06-09', 455, 'USR-000000502');
INSERT INTO `tb_urut` VALUES (704, '2020-06-09', 456, 'USR-000000508');
INSERT INTO `tb_urut` VALUES (705, '2020-06-09', 457, 'USR-000000237');
INSERT INTO `tb_urut` VALUES (706, '2020-06-09', 458, 'USR-000000415');
INSERT INTO `tb_urut` VALUES (707, '2020-06-09', 459, 'USR-000000510');
INSERT INTO `tb_urut` VALUES (708, '2020-06-09', 460, 'USR-000000304');
INSERT INTO `tb_urut` VALUES (709, '2020-06-09', 461, 'USR-000000511');
INSERT INTO `tb_urut` VALUES (710, '2020-06-09', 462, 'USR-000000361');
INSERT INTO `tb_urut` VALUES (711, '2020-06-09', 463, 'USR-000000379');
INSERT INTO `tb_urut` VALUES (712, '2020-06-09', 464, 'USR-000000318');
INSERT INTO `tb_urut` VALUES (713, '2020-06-09', 465, 'USR-000000287');
INSERT INTO `tb_urut` VALUES (714, '2020-06-09', 466, 'USR-000000106');
INSERT INTO `tb_urut` VALUES (715, '2020-06-09', 467, 'USR-000000165');
INSERT INTO `tb_urut` VALUES (716, '2020-06-09', 468, 'USR-000000065');
INSERT INTO `tb_urut` VALUES (717, '2020-06-09', 469, 'USR-000000057');
INSERT INTO `tb_urut` VALUES (718, '2020-06-09', 470, 'USR-000000342');
INSERT INTO `tb_urut` VALUES (719, '2020-06-09', 471, 'USR-000000513');
INSERT INTO `tb_urut` VALUES (720, '2020-06-09', 472, 'USR-000000514');
INSERT INTO `tb_urut` VALUES (721, '2020-06-09', 473, 'USR-000000377');
INSERT INTO `tb_urut` VALUES (722, '2020-06-09', 474, 'USR-000000515');
INSERT INTO `tb_urut` VALUES (723, '2020-06-09', 475, 'USR-000000477');
INSERT INTO `tb_urut` VALUES (724, '2020-06-09', 476, 'USR-000000516');
INSERT INTO `tb_urut` VALUES (725, '2020-06-09', 477, 'USR-000000517');
INSERT INTO `tb_urut` VALUES (726, '2020-06-09', 478, 'USR-000000518');
INSERT INTO `tb_urut` VALUES (727, '2020-06-09', 479, 'USR-000000462');
INSERT INTO `tb_urut` VALUES (728, '2020-06-09', 480, 'USR-000000471');
INSERT INTO `tb_urut` VALUES (729, '2020-06-09', 481, 'USR-000000358');
INSERT INTO `tb_urut` VALUES (730, '2020-06-09', 482, 'USR-000000433');
INSERT INTO `tb_urut` VALUES (731, '2020-06-09', 483, 'USR-000000305');
INSERT INTO `tb_urut` VALUES (732, '2020-06-09', 484, 'USR-000000519');
INSERT INTO `tb_urut` VALUES (733, '2020-06-09', 485, 'USR-000000520');
INSERT INTO `tb_urut` VALUES (734, '2020-06-10', 486, 'USR-000000064');
INSERT INTO `tb_urut` VALUES (735, '2020-06-10', 487, 'USR-000000515');
INSERT INTO `tb_urut` VALUES (736, '2020-06-10', 488, 'USR-000000445');
INSERT INTO `tb_urut` VALUES (737, '2020-06-10', 489, 'USR-000000521');
INSERT INTO `tb_urut` VALUES (738, '2020-06-10', 490, 'USR-000000516');
INSERT INTO `tb_urut` VALUES (739, '2020-06-10', 491, 'USR-000000056');
INSERT INTO `tb_urut` VALUES (740, '2020-06-10', 492, 'USR-000000524');
INSERT INTO `tb_urut` VALUES (741, '2020-06-10', 493, 'USR-000000523');
INSERT INTO `tb_urut` VALUES (742, '2020-06-10', 494, 'USR-000000164');
INSERT INTO `tb_urut` VALUES (743, '2020-06-10', 495, 'USR-000000419');
INSERT INTO `tb_urut` VALUES (744, '2020-06-10', 496, 'USR-000000237');
INSERT INTO `tb_urut` VALUES (745, '2020-06-10', 497, 'USR-000000243');
INSERT INTO `tb_urut` VALUES (746, '2020-06-10', 498, 'USR-000000357');
INSERT INTO `tb_urut` VALUES (747, '2020-06-10', 499, 'USR-000000433');
INSERT INTO `tb_urut` VALUES (748, '2020-06-10', 500, 'USR-000000525');
INSERT INTO `tb_urut` VALUES (749, '2020-06-10', 501, 'USR-000000505');
INSERT INTO `tb_urut` VALUES (750, '2020-06-10', 502, 'USR-000000015');
INSERT INTO `tb_urut` VALUES (751, '2020-06-10', 503, 'USR-000000526');
INSERT INTO `tb_urut` VALUES (752, '2020-06-10', 504, 'USR-000000286');
INSERT INTO `tb_urut` VALUES (753, '2020-06-10', 505, 'USR-000000483');
INSERT INTO `tb_urut` VALUES (754, '2020-06-10', 506, 'USR-000000442');
INSERT INTO `tb_urut` VALUES (755, '2020-06-10', 507, 'USR-000000272');
INSERT INTO `tb_urut` VALUES (756, '2020-06-10', 508, 'USR-000000224');
INSERT INTO `tb_urut` VALUES (757, '2020-06-10', 509, 'USR-000000527');
INSERT INTO `tb_urut` VALUES (758, '2020-06-10', 510, 'USR-000000528');
INSERT INTO `tb_urut` VALUES (759, '2020-06-10', 511, 'USR-000000221');
INSERT INTO `tb_urut` VALUES (760, '2020-06-10', 512, 'USR-000000529');
INSERT INTO `tb_urut` VALUES (761, '2020-06-10', 513, 'USR-000000478');
INSERT INTO `tb_urut` VALUES (762, '2020-06-10', 514, 'USR-000000530');
INSERT INTO `tb_urut` VALUES (763, '2020-06-10', 515, 'USR-000000531');
INSERT INTO `tb_urut` VALUES (764, '2020-06-10', 516, 'USR-000000447');
INSERT INTO `tb_urut` VALUES (765, '2020-06-10', 517, 'USR-000000165');
INSERT INTO `tb_urut` VALUES (766, '2020-06-10', 518, 'USR-000000068');
INSERT INTO `tb_urut` VALUES (767, '2020-06-10', 519, 'USR-000000476');
INSERT INTO `tb_urut` VALUES (768, '2020-06-10', 520, 'USR-000000133');
INSERT INTO `tb_urut` VALUES (769, '2020-06-10', 521, 'USR-000000533');
INSERT INTO `tb_urut` VALUES (770, '2020-06-10', 522, 'USR-000000248');
INSERT INTO `tb_urut` VALUES (771, '2020-06-10', 523, 'USR-000000179');
INSERT INTO `tb_urut` VALUES (772, '2020-06-10', 524, 'USR-000000203');
INSERT INTO `tb_urut` VALUES (773, '2020-06-11', 525, 'USR-000000534');
INSERT INTO `tb_urut` VALUES (774, '2020-06-11', 526, 'USR-000000002');
INSERT INTO `tb_urut` VALUES (775, '2020-06-11', 527, 'USR-000000020');
INSERT INTO `tb_urut` VALUES (776, '2020-06-11', 528, 'USR-000000338');
INSERT INTO `tb_urut` VALUES (777, '2020-06-11', 529, 'USR-000000078');
INSERT INTO `tb_urut` VALUES (778, '2020-06-11', 530, 'USR-000000537');
INSERT INTO `tb_urut` VALUES (779, '2020-06-11', 531, 'USR-000000096');
INSERT INTO `tb_urut` VALUES (780, '2020-06-11', 532, 'USR-000000100');
INSERT INTO `tb_urut` VALUES (781, '2020-06-11', 533, 'USR-000000083');
INSERT INTO `tb_urut` VALUES (782, '2020-06-11', 534, 'USR-000000395');
INSERT INTO `tb_urut` VALUES (783, '2020-06-11', 535, 'USR-000000445');
INSERT INTO `tb_urut` VALUES (784, '2020-06-11', 536, 'USR-000000305');
INSERT INTO `tb_urut` VALUES (785, '2020-06-11', 537, 'USR-000000535');
INSERT INTO `tb_urut` VALUES (786, '2020-06-11', 538, 'USR-000000224');
INSERT INTO `tb_urut` VALUES (787, '2020-06-11', 539, 'USR-000000342');
INSERT INTO `tb_urut` VALUES (788, '2020-06-11', 540, 'USR-000000538');
INSERT INTO `tb_urut` VALUES (789, '2020-06-11', 541, 'USR-000000519');
INSERT INTO `tb_urut` VALUES (790, '2020-06-11', 542, 'USR-000000007');
INSERT INTO `tb_urut` VALUES (791, '2020-06-11', 543, 'USR-000000539');
INSERT INTO `tb_urut` VALUES (792, '2020-06-11', 544, 'USR-000000494');
INSERT INTO `tb_urut` VALUES (793, '2020-06-11', 545, 'USR-000000510');
INSERT INTO `tb_urut` VALUES (794, '2020-06-11', 546, 'USR-000000200');
INSERT INTO `tb_urut` VALUES (795, '2020-06-12', 547, 'USR-000000378');

-- ----------------------------
-- Table structure for tb_wajib
-- ----------------------------
DROP TABLE IF EXISTS `tb_wajib`;
CREATE TABLE `tb_wajib`  (
  `id_iuran` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `nominal` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_tf` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_iuran`) USING BTREE,
  INDEX `2`(`id_admin`) USING BTREE,
  INDEX `id_tf`(`id_tf`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tb_wajib_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_wajib_ibfk_2` FOREIGN KEY (`id_tf`) REFERENCES `tb_tf` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_wajib_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_admin
-- ----------------------------
DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(1) NULL DEFAULT NULL,
  `tgl_update` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_admin
-- ----------------------------
INSERT INTO `tbl_admin` VALUES (1, 'Tri Stiyo Famuji', 'admin', 'VFZSSmVnPT0=', 'support@kud-aris.com', 'admin-1594320764.png', 1, '2020-08-11 12:08:20');
INSERT INTO `tbl_admin` VALUES (2, 'Titi Rahayu Nurcahyaningrum', 'kasir', 'VFZSSmVnPT0=', 'kasir@mgail.com', 'user.png', 2, '2020-08-11 12:08:23');
INSERT INTO `tbl_admin` VALUES (3, 'Siti Khodijah', 'keanggotaan', 'VFZSSmVnPT0=', '', 'admin-1594320764.png', 3, '2020-08-12 00:42:52');

-- ----------------------------
-- Table structure for tbl_banner
-- ----------------------------
DROP TABLE IF EXISTS `tbl_banner`;
CREATE TABLE `tbl_banner`  (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `banner_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banner_sort_info` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banner_songs` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_banner
-- ----------------------------
INSERT INTO `tbl_banner` VALUES (1, '1', '', '93751_1.jpg', '', 0);
INSERT INTO `tbl_banner` VALUES (2, '2', '', '54069_7.jpg', '', 0);
INSERT INTO `tbl_banner` VALUES (3, '4', '', '55424_4.jpg', '', 0);
INSERT INTO `tbl_banner` VALUES (4, '3', '', '23778_2.jpg', '', 0);
INSERT INTO `tbl_banner` VALUES (7, '5', '', '3817_6.jpg', '', 0);
INSERT INTO `tbl_banner` VALUES (8, 'new instaliation', '', '53753_IG flayer pinjamkan.png', '', 0);
INSERT INTO `tbl_banner` VALUES (13, '2', '', '78342_kalo sayang keluarga tunda dulu mudiknya.png', '', 0);
INSERT INTO `tbl_banner` VALUES (14, '1', '', '72139_kopra1.jpeg', '', 1);
INSERT INTO `tbl_banner` VALUES (15, '2', '', '97652_kopra2.jpeg', '', 1);
INSERT INTO `tbl_banner` VALUES (16, '3', '', '76127_kopra3.jpeg', '', 1);
INSERT INTO `tbl_banner` VALUES (17, '5', '', '901_APP APLIKASI1.jpg', '', 1);

-- ----------------------------
-- Table structure for tbl_category
-- ----------------------------
DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE `tbl_category`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_category
-- ----------------------------
INSERT INTO `tbl_category` VALUES (10, 'jasmin1', '69281_baymax.jpg', 1);
INSERT INTO `tbl_category` VALUES (15, 'Sabun Mandi', 'kategori-1594229056.jpg', 0);

-- ----------------------------
-- Table structure for tbl_mp3
-- ----------------------------
DROP TABLE IF EXISTS `tbl_mp3`;
CREATE TABLE `tbl_mp3`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `mp3_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mp3_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jenis` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mp3_thumbnail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mp3_duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mp3_artist` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mp3_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `total_rate` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT 1,
  `point` int(5) NULL DEFAULT NULL,
  `stok` int(255) NULL DEFAULT NULL,
  `diskon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_mp3
-- ----------------------------
INSERT INTO `tbl_mp3` VALUES (9, 15, 0, 'server_url', 'beras murah 1kg', 'pokok', 'diskon-1594306842.jpeg', '2020-07-31', '2020-06-14', '<p>beras terbaik yang kami jual berjenis IR64</p>\r\n', '10000', 1, 100, 5, NULL);
INSERT INTO `tbl_mp3` VALUES (10, 15, 0, 'server_url', 'GulaKu Murah 1kg', 'pokok', 'diskon-1594306849.jpeg', '2020-07-31', '2020-06-14', '<p>Gulaku bukan gula kalian,. nikmati promonya hanya ditanggal yang ditentukan</p>\r\n', '10000', 1, 20, 5, NULL);
INSERT INTO `tbl_mp3` VALUES (11, 15, 0, 'server_url', 'Telur segar 1kg', 'pokok', 'diskon-1594306858.jpeg', '2020-07-31', '2020-06-14', '<p>Promo telur segar diambil langsung dari peternak</p>\r\n', '20000', 1, 40, 5, NULL);
INSERT INTO `tbl_mp3` VALUES (12, 15, 0, 'server_url', 'Bear Brand segar 1 dus 10pcs ', 'aksesoris', 'diskon-1594306865.jpeg', '2020-07-31', '2020-06-14', '<p>Promo Brear brand hanya khusus member KUD-ARIS</p>\r\n', '100000', 1, 100, 5, NULL);
INSERT INTO `tbl_mp3` VALUES (13, 15, 0, 'server_url', 'Aji NoMoto 1 kg', 'aksesoris', 'diskon-1594306875.jpeg', '2020-07-31', '2020-06-14', '<p>Promo hanya berlaku sampai dengan tanggal yang ditentukan</p>\r\n', '10000', 1, 100, 5, NULL);
INSERT INTO `tbl_mp3` VALUES (14, 15, 0, 'server_url', 'Teh Sariwangi 1 Dus', 'aksesoris', 'diskon-1594306888.jpeg', '2020-07-31', '2020-06-14', '<p>Promo hanya berlaku sampai dengan tanggal yang ditentukan</p>\r\n', '10000', 1, 100, 5, NULL);
INSERT INTO `tbl_mp3` VALUES (15, 15, 0, 'server_url', 'Mantel', 'lainnya', 'diskon-1594306895.jpeg', '2020-07-31', '2020-06-14', '<p>Promo hanya berlaku sampai dengan tanggal yang ditentukan</p>\r\n', '100000', 1, 100, 5, NULL);
INSERT INTO `tbl_mp3` VALUES (16, 15, 0, 'server_url', 'Roti', 'lainnya', 'diskon-1594306905.jpeg', '2020-07-31', '2020-06-14', '<p>Promo hanya berlaku sampai dengan tanggal yang ditentukan</p>\r\n', '100000', 1, 100, 5, NULL);
INSERT INTO `tbl_mp3` VALUES (17, 15, 0, 'server_url', 'Jasuke', 'lainnya', 'diskon-1594306913.jpeg', '2020-07-31', '2020-06-29', '<p>Barang terbatas</p>\r\n', '100000', 1, 100, 10, NULL);
INSERT INTO `tbl_mp3` VALUES (18, 15, 0, 'server_url', 'paket beras', 'lainnya', '15544_sample1.jpeg', '2020-07-31', '2020-07-03', '<p>berlaku sampai tanggal yang diutentukan</p>\r\n', '100000', 1, 100, 10, NULL);
INSERT INTO `tbl_mp3` VALUES (19, 10, 0, '', 'Nama Diskon', 'lainnya', 'diskon-1594307308.jpeg', '2020-07-09', '2020-07-09', '<p>Halo !!!</p>\r\n', '100000', 1, 100, 100, NULL);

-- ----------------------------
-- Table structure for tbl_settings
-- ----------------------------
DROP TABLE IF EXISTS `tbl_settings`;
CREATE TABLE `tbl_settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tentang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `syarat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_settings
-- ----------------------------
INSERT INTO `tbl_settings` VALUES (1, '', '');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_user` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ktp` varchar(17) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `versi` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_hp` varchar(17) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_register` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pekerjaan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_kelurahan` int(11) NULL DEFAULT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tgl_pokok` datetime(0) NULL DEFAULT NULL,
  `tgl_wajib` datetime(0) NULL DEFAULT NULL,
  `poin` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE,
  INDEX `id_kelurahan`(`id_kelurahan`) USING BTREE,
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_kelurahan`) REFERENCES `tb_kelurahan` (`id_kelurahan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('123.456.789.000', '31241241421412421', 'imam subekti', NULL, 'VFZSSmVrNUVWVDA9', 'stiyot@gmail.com', NULL, NULL, '081234567891', '2020-08-12', 'Y', 'pengusaha', 320, 'Jl. Suwatio No.17B, Karanggayam, Teluk, Kec. Purwokerto Sel., Kabupaten Banyumas, Jawa Tengah 53145', '2019-08-12 00:28:55', NULL, 0);
INSERT INTO `tbl_user` VALUES ('13.1933.0234', '5354', 'imam subekti', 'imam', 'VFZSSmVnPT0=', 'imamjvofficial@gmail.com', NULL, NULL, '089123456789', '2019-05-30', 'Y', 'pengusaha', 20, 'Jl. Suwatio No.17B, Karanggayam, Teluk, Kec. Purwokerto Sel., Kabupaten Banyumas, Jawa Tengah 53145', '2021-05-30 00:00:00', '2020-08-10 10:22:15', 400);
INSERT INTO `tbl_user` VALUES ('USR-000000002', '555555', 'anna', 'anna', 'VFZSSmVnPT0=', 'javachicken99@gmail.com', NULL, NULL, '089123456789', '2020-06-30', 'Y', 'ibu rumah tangga', 20, 'sidabowa', '2019-06-30 00:00:00', NULL, NULL);

-- ----------------------------
-- View structure for v_blj
-- ----------------------------
DROP VIEW IF EXISTS `v_blj`;
CREATE VIEW `v_blj` AS SELECT
tbl_user.nama AS nama,
tbl_mp3.mp3_title AS barang,
tbl_mp3.total_rate AS hrgitem,
tb_blj.point AS point_tot,
tb_blj.hrg_total AS hrg_total,
tb_blj.kirim AS kirim,
tb_blj.telp AS telp,
tb_blj.tgl AS tgl,
tb_blj.jam AS jam,
tb_blj.alamat AS alamat,
tb_blj.id_trx AS id_trx,
tbl_mp3.point AS point,
tb_blj_tmp.jumlah AS jumlah,
tb_blj.status_trx AS status_trx,
tb_blj.id_user AS id_user
FROM
(((tb_blj
LEFT JOIN tb_blj_tmp ON (tb_blj_tmp.id_trx = tb_blj.id_trx))
LEFT JOIN tbl_user ON (tb_blj_tmp.id_user = tbl_user.id_user))
LEFT JOIN tbl_mp3 ON (tb_blj_tmp.id_barang = tbl_mp3.id)) ;

-- ----------------------------
-- View structure for v_blj1
-- ----------------------------
DROP VIEW IF EXISTS `v_blj1`;
CREATE VIEW `v_blj1` AS SELECT
tbl_user.nama AS nama,
tbl_mp3.mp3_title AS barang,
tbl_mp3.total_rate AS hrgitem,
tb_blj.point AS point_tot,
tb_blj.hrg_total AS hrg_total,
tb_blj.kirim AS kirim,
tb_blj.telp AS telp,
tb_blj.tgl AS tgl,
tb_blj.jam AS jam,
tb_blj.alamat AS alamat,
tb_blj.id_trx AS id_trx,
tbl_mp3.point AS point,
tb_blj_tmp.jumlah AS jumlah,
tb_blj.status_trx AS status_trx,
tb_blj.id_user AS id_user,
tbl_mp3.diskon AS diskon
FROM
(((tb_blj
LEFT JOIN tb_blj_tmp ON (tb_blj_tmp.id_trx = tb_blj.id_trx))
LEFT JOIN tbl_user ON (tb_blj_tmp.id_user = tbl_user.id_user))
LEFT JOIN tbl_mp3 ON (tb_blj_tmp.id_barang = tbl_mp3.id)) ;

-- ----------------------------
-- View structure for v_blj_tmp
-- ----------------------------
DROP VIEW IF EXISTS `v_blj_tmp`;
CREATE VIEW `v_blj_tmp` AS SELECT
Sum(tbl_mp3.total_rate) AS harga,
Sum(tbl_mp3.point) AS point,
tbl_mp3.mp3_title,
tb_blj_tmp.id_user AS id_user,
tb_blj_tmp.id_trx AS id_trx,
tb_blj.tgl AS tgl,
tb_blj.aktif AS aktif,
tb_blj.jam AS jam,
tb_blj_tmp.jumlah
FROM
((tb_blj_tmp
JOIN tbl_mp3 ON (tb_blj_tmp.id_barang = tbl_mp3.id))
JOIN tb_blj ON (tb_blj_tmp.id_trx = tb_blj.id_trx))
GROUP BY
tb_blj_tmp.id_trx ;

-- ----------------------------
-- View structure for v_blj_total
-- ----------------------------
DROP VIEW IF EXISTS `v_blj_total`;
CREATE VIEW `v_blj_total` AS SELECT
tb_blj.id_user,
Sum(tb_blj.hrg_total) AS total_belanja
FROM
tb_blj
GROUP BY
tb_blj.id_user ;

-- ----------------------------
-- View structure for v_checkout1
-- ----------------------------
DROP VIEW IF EXISTS `v_checkout1`;
CREATE VIEW `v_checkout1` AS select `tbl_mp3`.`mp3_title` AS `nama`,`tbl_mp3`.`total_rate` AS `harga`,`tbl_mp3`.`point` AS `point`,`tb_blj_tmp`.`jumlah` AS `jumlah`,`tb_blj`.`id_trx` AS `id_trx`,`tb_blj`.`kirim` AS `kirim` from ((`tb_blj` join `tb_blj_tmp` on(`tb_blj`.`id_trx` = `tb_blj_tmp`.`id_trx`)) join `tbl_mp3` on(`tb_blj_tmp`.`id_barang` = `tbl_mp3`.`id`)) ;

-- ----------------------------
-- View structure for v_dansos
-- ----------------------------
DROP VIEW IF EXISTS `v_dansos`;
CREATE VIEW `v_dansos` AS select `tb_tf`.`tgl_verif_tf` AS `tanggal`,`tb_tf`.`nominal` AS `nominal`,`tb_tf`.`keterangan` AS `keterangan`,`tbl_category`.`category_name` AS `kategori`,`tbl_user`.`nama` AS `nama` from (((`tb_dansos` join `tb_tf` on(`tb_dansos`.`id_tf` = `tb_tf`.`id`)) join `tbl_category` on(`tb_tf`.`itemfor` = `tbl_category`.`cid`)) join `tbl_user` on(`tb_dansos`.`id_user` = `tbl_user`.`id_user` and `tb_tf`.`id_user` = `tbl_user`.`id_user`)) ;

-- ----------------------------
-- View structure for v_diskon1
-- ----------------------------
DROP VIEW IF EXISTS `v_diskon1`;
CREATE VIEW `v_diskon1` AS select `tbl_mp3`.`id` AS `id`,`tbl_mp3`.`mp3_duration` AS `mp3_duration`,`tbl_category`.`category_name` AS `category_name`,`tbl_mp3`.`cat_id` AS `cat_id`,`tbl_mp3`.`album_id` AS `album_id`,`tbl_mp3`.`mp3_type` AS `mp3_type`,`tbl_mp3`.`mp3_title` AS `mp3_title`,`tbl_mp3`.`jenis` AS `jenis`,`tbl_mp3`.`mp3_thumbnail` AS `mp3_thumbnail`,`tbl_mp3`.`mp3_artist` AS `mp3_artist`,`tbl_mp3`.`mp3_description` AS `mp3_description`,`tbl_mp3`.`total_rate` AS `total_rate`,`tbl_mp3`.`status` AS `status`,`tbl_mp3`.`point` AS `point`,`tbl_mp3`.`stok` AS `stok`,current_timestamp() AS `tgl_sekarang`,to_days(`tbl_mp3`.`mp3_duration`) - to_days(current_timestamp()) AS `selisih` from (`tbl_mp3` join `tbl_category` on(`tbl_mp3`.`cat_id` = `tbl_category`.`cid`)) where `tbl_mp3`.`mp3_duration` >= current_timestamp() ;

-- ----------------------------
-- View structure for v_jasa_anggota
-- ----------------------------
DROP VIEW IF EXISTS `v_jasa_anggota`;
CREATE VIEW `v_jasa_anggota` AS SELECT
v_modal.id_user,
v_modal.ktp,
v_modal.nama,
ifnull(v_sim_wajib.nominal,0) AS total_wajib,
v_modal.nominal AS total_modal,
v_modal.tgl,
v_modal.periode,
v_modal.metode,
tb_shu.nominal AS shu,
ifnull(tb_shu.nominal*100/v_sim_wajib.nominal+v_modal.nominal,0) AS jumlah_jasa
FROM
v_modal
LEFT JOIN v_sim_wajib ON v_modal.id_user = v_sim_wajib.id_user ,
tb_shu ;

-- ----------------------------
-- View structure for v_keranjang
-- ----------------------------
DROP VIEW IF EXISTS `v_keranjang`;
CREATE VIEW `v_keranjang` AS select `tb_blj_tmp`.`id` AS `id`,`tb_blj_tmp`.`id_trx` AS `id_trx`,`tb_blj_tmp`.`id_user` AS `id_user`,`tb_blj_tmp`.`status` AS `status`,`tb_blj_tmp`.`jumlah` AS `jumlah`,`tb_blj_tmp`.`id_barang` AS `id_barang`,`tbl_mp3`.`mp3_title` AS `mp3_title`,`tbl_mp3`.`total_rate` AS `total_rate`,`tbl_mp3`.`point` AS `point`,`tbl_mp3`.`stok` AS `stok`,`tbl_mp3`.`mp3_duration` AS `mp3_duration`,to_days(`tbl_mp3`.`mp3_duration`) - to_days(current_timestamp()) AS `selisih` from (`tb_blj_tmp` join `tbl_mp3` on(`tb_blj_tmp`.`id_barang` = `tbl_mp3`.`id`)) group by `tb_blj_tmp`.`id` ;

-- ----------------------------
-- View structure for v_modal
-- ----------------------------
DROP VIEW IF EXISTS `v_modal`;
CREATE VIEW `v_modal` AS SELECT
tbl_user.id_user,
tbl_user.ktp,
tbl_user.nama,
ifnull(Sum(tb_sim_wajib_modal.nominal),0) AS nominal,
ifnull(tb_sim_wajib_modal.tgl,date(now())) as tgl,
ifnull(tb_sim_wajib_modal.periode,year(date(now()))) as periode,
ifnull(tb_sim_wajib_modal.metode,'-') as metode
FROM
tbl_user
LEFT JOIN tb_sim_wajib_modal ON tb_sim_wajib_modal.id_user = tbl_user.id_user
GROUP BY
tbl_user.id_user,
tbl_user.ktp,
tbl_user.nama,
tb_sim_wajib_modal.id_admin,
tb_sim_wajib_modal.tgl,
tb_sim_wajib_modal.periode,
tb_sim_wajib_modal.metode ;

-- ----------------------------
-- View structure for v_pengambilan_sukarela
-- ----------------------------
DROP VIEW IF EXISTS `v_pengambilan_sukarela`;
CREATE VIEW `v_pengambilan_sukarela` AS SELECT
tb_pengambilan_sukarela.id,
tbl_user.id_user,
tbl_user.nama,
Sum(tb_pengambilan_sukarela.nominal) AS nominal
FROM
tbl_user
RIGHT JOIN tb_pengambilan_sukarela ON tbl_user.id_user = tb_pengambilan_sukarela.id_user
GROUP BY
tbl_user.id_user ;

-- ----------------------------
-- View structure for v_pokok_sample
-- ----------------------------
DROP VIEW IF EXISTS `v_pokok_sample`;
CREATE VIEW `v_pokok_sample` AS select `tbl_user`.`id_user` AS `id_user`,`tb_sim_pokok`.`nominal` AS `nominal`,substr(`tb_sim_pokok`.`tgl`,1,4) AS `periode`,`tb_sim_pokok`.`tgl` AS `tgl`,`tbl_user`.`tgl_register` AS `tgl_register`,`tbl_user`.`status` AS `status`,year(current_timestamp()) - year(`tbl_user`.`tgl_register`) AS `selisih` from (`tb_sim_pokok` join `tbl_user` on(`tb_sim_pokok`.`id_user` = `tbl_user`.`id_user`)) order by substr(`tb_sim_pokok`.`tgl`,1,4) desc limit 1 ;

-- ----------------------------
-- View structure for v_produk
-- ----------------------------
DROP VIEW IF EXISTS `v_produk`;
CREATE VIEW `v_produk` AS select count(`tbl_mp3`.`id`) AS `total` from `tbl_mp3` where `tbl_mp3`.`mp3_duration` >= current_timestamp() ;

-- ----------------------------
-- View structure for v_simpanan_pokok
-- ----------------------------
DROP VIEW IF EXISTS `v_simpanan_pokok`;
CREATE VIEW `v_simpanan_pokok` AS SELECT
tb_sim_pokok.id_iuran,
tb_sim_pokok.id_user,
tb_sim_pokok.id_admin,
Sum(tb_sim_pokok.nominal) AS nominal,
tb_sim_pokok.tgl,
tb_sim_pokok.metode,
tbl_user.nama
FROM
tb_sim_pokok
LEFT JOIN tbl_user ON tb_sim_pokok.id_user = tbl_user.id_user
GROUP BY
tb_sim_pokok.id_user,
year(tb_sim_pokok.tgl)
ORDER BY
tbl_user.id_user ASC ;

-- ----------------------------
-- View structure for v_simpanan_wajib
-- ----------------------------
DROP VIEW IF EXISTS `v_simpanan_wajib`;
CREATE VIEW `v_simpanan_wajib` AS SELECT
tbl_user.id_user,
tbl_user.ktp,
tbl_user.nama,
ifnull(Sum(tb_sim_wajib.nominal),0) AS nominal,
ifnull(tb_sim_wajib.tgl,date(now())) AS tgl,
ifnull(tb_sim_wajib.periode,year(date(now()))) AS periode,
ifnull(tb_sim_wajib.metode,'-') AS metode
FROM
tbl_user
LEFT JOIN tb_sim_wajib ON tb_sim_wajib.id_user = tbl_user.id_user
GROUP BY
tbl_user.id_user,
tb_sim_wajib.periode
ORDER BY
tbl_user.id_user ASC ;

-- ----------------------------
-- View structure for v_simpanan_wajib_metode
-- ----------------------------
DROP VIEW IF EXISTS `v_simpanan_wajib_metode`;
CREATE VIEW `v_simpanan_wajib_metode` AS SELECT
tb_sim_wajib.id_iuran,
tb_sim_wajib.id_user,
tb_sim_wajib.id_admin,
Sum(tb_sim_wajib.nominal) AS nominal,
tb_sim_wajib.tgl,
tb_sim_wajib.periode,
tb_sim_wajib.metode
FROM
tb_sim_wajib
WHERE
tb_sim_wajib.metode = 'simpanan'
GROUP BY
tb_sim_wajib.id_user ;

-- ----------------------------
-- View structure for v_sim_pokok
-- ----------------------------
DROP VIEW IF EXISTS `v_sim_pokok`;
CREATE VIEW `v_sim_pokok` AS select `tbl_user`.`id_user` AS `id_user`,`tbl_user`.`tgl_pokok` AS `tgl_pokok`,`tbl_user`.`status` AS `status`,year(current_timestamp()) - year(`tbl_user`.`tgl_pokok`) AS `selisih` from `tbl_user` ;

-- ----------------------------
-- View structure for v_sim_wajib
-- ----------------------------
DROP VIEW IF EXISTS `v_sim_wajib`;
CREATE VIEW `v_sim_wajib` AS select `tb_sim_wajib`.`id_user` AS `id_user`,sum(`tb_sim_wajib`.`nominal`) AS `nominal`,`tb_sim_wajib`.`periode` AS `periode` from `tb_sim_wajib` group by `tb_sim_wajib`.`periode`,`tb_sim_wajib`.`id_user` ;

-- ----------------------------
-- View structure for v_sukarela
-- ----------------------------
DROP VIEW IF EXISTS `v_sukarela`;
CREATE VIEW `v_sukarela` AS SELECT
tb_sim_sukarela.id_iuran,
tb_sim_sukarela.id_user,
tbl_user.nama,
tb_sim_sukarela.id_admin,
Sum(tb_sim_sukarela.nominal) AS nominal,
tb_sim_sukarela.tgl
FROM
tb_sim_sukarela
INNER JOIN tbl_user ON tb_sim_sukarela.id_user = tbl_user.id_user
GROUP BY
tb_sim_sukarela.id_user ;

-- ----------------------------
-- View structure for v_tmp_brg
-- ----------------------------
DROP VIEW IF EXISTS `v_tmp_brg`;
CREATE VIEW `v_tmp_brg` AS select `tb_blj_tmp`.`id` AS `id`,`tb_blj_tmp`.`id_user` AS `id_user`,`tb_blj_tmp`.`id_barang` AS `id_barang`,`tb_blj_tmp`.`jumlah` AS `jumlah`,`tb_blj_tmp`.`tgl` AS `tgl`,`tb_blj_tmp`.`id_trx` AS `id_trx`,`tb_blj_tmp`.`status` AS `status`,`tbl_mp3`.`mp3_title` AS `barang`,`tbl_mp3`.`total_rate` AS `harga` from (`tb_blj_tmp` join `tbl_mp3` on(`tb_blj_tmp`.`id_barang` = `tbl_mp3`.`id`)) ;

-- ----------------------------
-- View structure for v_total_modal
-- ----------------------------
DROP VIEW IF EXISTS `v_total_modal`;
CREATE VIEW `v_total_modal` AS SELECT
v_modal.id_user,
v_modal.ktp,
v_modal.nama,
v_modal.periode,
ifnull(Sum(v_modal.nominal),0) AS total_modal,
ifnull(Sum(v_sim_wajib.nominal),0) AS total_wajib,
ifnull(Sum(v_simpanan_pokok.nominal),0) AS total_pokok,
tb_shu.nominal AS shu
FROM
tb_shu ,
v_sim_wajib
RIGHT JOIN v_modal ON v_modal.id_user = v_sim_wajib.id_user
LEFT JOIN v_simpanan_pokok ON v_simpanan_pokok.id_user = v_modal.id_user
GROUP BY
tb_shu.periode,
v_sim_wajib.periode,
v_modal.periode,
tb_shu.periode,
v_modal.id_user ;

-- ----------------------------
-- View structure for v_total_sukarela
-- ----------------------------
DROP VIEW IF EXISTS `v_total_sukarela`;
CREATE VIEW `v_total_sukarela` AS SELECT
tb_sim_sukarela.id_iuran,
tb_sim_sukarela.id_user,
tbl_user.nama,
tb_sim_sukarela.id_admin,
ifnull(Sum(tb_sim_sukarela.nominal)-v_pengambilan_sukarela.nominal-ifnull(Sum(v_blj.hrg_total),0),0)-ifnull(v_simpanan_wajib_metode.nominal,0) AS nominal,
ifnull(v_pengambilan_sukarela.nominal,0) AS nominal_pengambilan,
tb_sim_sukarela.tgl,
Sum(v_blj.hrg_total) AS total_belanja,
ifnull(v_simpanan_wajib_metode.nominal,0) AS nominal_wajib
FROM
tb_sim_sukarela
LEFT JOIN tbl_user ON tb_sim_sukarela.id_user = tbl_user.id_user
LEFT JOIN v_pengambilan_sukarela ON v_pengambilan_sukarela.id_user = tbl_user.id_user
LEFT JOIN v_blj ON tbl_user.id_user = v_blj.id_user
LEFT JOIN v_simpanan_wajib_metode ON v_simpanan_wajib_metode.id_user = tbl_user.id_user
GROUP BY
tb_sim_sukarela.id_user,
year(tb_sim_sukarela.tgl)
ORDER BY
year(tb_sim_sukarela.tgl) ASC,
tbl_user.id_user ASC ;

-- ----------------------------
-- View structure for v_tukar_poin
-- ----------------------------
DROP VIEW IF EXISTS `v_tukar_poin`;
CREATE VIEW `v_tukar_poin` AS SELECT
tb_tukar_poin.id_tukar_poin,
tbl_user.ktp,
tb_tukar_poin.id_user,
tbl_user.nama,
tb_tukar_poin.poin,
date(tb_tukar_poin.tgl_tukar) AS tgl_tukar,
tb_hadiah.id_hadiah,
tb_hadiah.foto,
tb_hadiah.deskripsi
FROM
tb_tukar_poin
LEFT JOIN tbl_user ON tb_tukar_poin.id_user = tbl_user.id_user
LEFT JOIN tb_hadiah ON tb_tukar_poin.id_hadiah = tb_hadiah.id_hadiah ;

-- ----------------------------
-- View structure for v_user
-- ----------------------------
DROP VIEW IF EXISTS `v_user`;
CREATE VIEW `v_user` AS SELECT
tbl_user.id_user,
tbl_user.ktp,
tbl_user.nama,
tbl_user.username,
tbl_user.`password`,
tbl_user.email,
tbl_user.image,
tbl_user.versi,
tbl_user.no_hp,
date(tbl_user.tgl_register) AS tgl_register,
tbl_user.`status`,
tbl_user.pekerjaan,
tbl_user.id_kelurahan,
tb_kelurahan.kelurahan,
tb_kelurahan.id_kecamatan,
tb_kecamatan.kecamatan,
tb_kecamatan.id_kabupaten,
tb_kabupaten.kabupaten,
tbl_user.alamat,
date(tbl_user.tgl_pokok) AS tgl_pokok,
date(tbl_user.tgl_wajib) AS tgl_wajib
FROM
tbl_user
LEFT JOIN tb_kelurahan ON tbl_user.id_kelurahan = tb_kelurahan.id_kelurahan
LEFT JOIN tb_kecamatan ON tb_kelurahan.id_kecamatan = tb_kecamatan.id_kecamatan
LEFT JOIN tb_kabupaten ON tb_kecamatan.id_kabupaten = tb_kabupaten.id_kabupaten
WHERE status = 'Y'
ORDER BY
tbl_user.nama ASC ;

-- ----------------------------
-- Triggers structure for table tb_blj
-- ----------------------------
DROP TRIGGER IF EXISTS `update_poin_tri`;
delimiter ;;
CREATE TRIGGER `update_poin_tri` BEFORE UPDATE ON `tb_blj` FOR EACH ROW BEGIN
 UPDATE tbl_user SET poin=poin+NEW.point
 WHERE id_user=OLD.id_user;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
