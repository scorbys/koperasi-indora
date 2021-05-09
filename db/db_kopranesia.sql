/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : db_kopranesia

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 16/09/2020 12:04:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_admin
-- ----------------------------
DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `level` int(1) NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tgl_update` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_admin
-- ----------------------------
INSERT INTO `tbl_admin` VALUES (1, 'admin', 'VFZSSmVnPT0=', 'support@kud-aris.com', 'admin-1594320764.png', 1, 'admin Ganteng', '2020-08-01 13:58:49');
INSERT INTO `tbl_admin` VALUES (2, 'kasir', 'VFZSSmVnPT0=', 'kasir@mgail.com', '', 2, 'Kasir Sarah', '2020-08-01 13:58:49');
INSERT INTO `tbl_admin` VALUES (5, 'eka', 'VFZSSmVrNUVWVEpPZW1jOQ==', 'kasir@kud-aris.id', '', 2, 'Kasir Eka', '2020-08-24 10:12:28');
INSERT INTO `tbl_admin` VALUES (6, 'erfina', 'VFZSSmVrNUVWVEpPZW1jOQ==', 'kasir@kud-aris.id', '', 2, 'Kasir Erfina', '2020-08-24 10:11:06');
INSERT INTO `tbl_admin` VALUES (7, 'susi', 'VFZSSmVrNUVWVEpPZW1jOQ==', 'kasir@kud-aris.id', '', 2, 'Kasir Susi', '2020-08-24 10:11:22');
INSERT INTO `tbl_admin` VALUES (8, 'nuriyah', 'VFZSSmVrNUVWVEpPZW1jOQ==', 'kasir@kud-aris.id', '', 2, 'Kasir Nuriyah', '2020-08-24 10:12:01');
INSERT INTO `tbl_admin` VALUES (9, 'yoga', 'VFZSSmVrNUVWVEpPZW1jOQ==', 'kasir@kud-aris.id', '', 2, 'Yoga SPV', '2020-08-24 13:08:28');
INSERT INTO `tbl_admin` VALUES (10, 'yuka', 'VFZSSmVrNUVWVEpPZW1jOQ==', 'kasir@kud-aris.id', '', 2, 'Yuka SPV', '2020-08-24 13:08:52');
INSERT INTO `tbl_admin` VALUES (11, 'agung', 'VFZSSmVrNUVWVEpPZW1jOQ==', 'kasir@kud-aris.id', '', 2, 'Agung SPV', '2020-08-24 13:09:27');
INSERT INTO `tbl_admin` VALUES (12, 'HS', 'VFZSSmVrNUVWVEpPZW1jOQ==', '', '', 3, 'HERI SUPRIJADI', '2020-08-26 09:20:20');
INSERT INTO `tbl_admin` VALUES (13, 'sukarela', 'VFZSSmVnPT0=', '', '', 3, 'Admin Keanggotaan KUD ARIS', '2020-08-30 12:34:54');

-- ----------------------------
-- Table structure for tbl_detail_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_detail_transaksi`;
CREATE TABLE `tbl_detail_transaksi`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(11) NULL DEFAULT NULL,
  `id_produk` int(11) NULL DEFAULT NULL,
  `jumlah` int(11) NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_transaksi`(`id_transaksi`) USING BTREE,
  INDEX `id_produk`(`id_produk`) USING BTREE,
  CONSTRAINT `tbl_detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `tbl_transaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_detail_transaksi_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tbl_produk` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_kabupaten
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kabupaten`;
CREATE TABLE `tbl_kabupaten`  (
  `id_kabupaten` int(11) NOT NULL AUTO_INCREMENT,
  `id_provinsi` int(11) NOT NULL,
  `kabupaten` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kabupaten`) USING BTREE,
  INDEX `id_provinsi`(`id_provinsi`) USING BTREE,
  CONSTRAINT `tbl_kabupaten_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `tbl_provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_kabupaten
-- ----------------------------
INSERT INTO `tbl_kabupaten` VALUES (1, 1, 'Pilih Kabupaten');
INSERT INTO `tbl_kabupaten` VALUES (2, 2, 'Banyumas');

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kecamatan`;
CREATE TABLE `tbl_kecamatan`  (
  `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT,
  `id_kabupaten` int(11) NOT NULL,
  `kecamatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_kecamatan`) USING BTREE,
  INDEX `id_kabupaten`(`id_kabupaten`) USING BTREE,
  CONSTRAINT `tbl_kecamatan_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `tbl_kabupaten` (`id_kabupaten`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_kecamatan
-- ----------------------------
INSERT INTO `tbl_kecamatan` VALUES (1, 1, 'Pilih Kecamatan');
INSERT INTO `tbl_kecamatan` VALUES (2, 2, 'Ajibarang');
INSERT INTO `tbl_kecamatan` VALUES (6, 2, 'Banyumas');
INSERT INTO `tbl_kecamatan` VALUES (7, 2, 'Baturraden');
INSERT INTO `tbl_kecamatan` VALUES (8, 2, 'Cilongok');
INSERT INTO `tbl_kecamatan` VALUES (9, 2, 'Gumelar');
INSERT INTO `tbl_kecamatan` VALUES (10, 2, 'Jatilawang');
INSERT INTO `tbl_kecamatan` VALUES (11, 2, 'Kalibagor');
INSERT INTO `tbl_kecamatan` VALUES (12, 2, 'Karanglewas');
INSERT INTO `tbl_kecamatan` VALUES (13, 2, 'Kebasen');
INSERT INTO `tbl_kecamatan` VALUES (14, 2, 'Kedungbanteng');
INSERT INTO `tbl_kecamatan` VALUES (15, 2, 'Kembaran');
INSERT INTO `tbl_kecamatan` VALUES (16, 2, 'Kemranjen');
INSERT INTO `tbl_kecamatan` VALUES (17, 2, 'Lumbir');
INSERT INTO `tbl_kecamatan` VALUES (18, 2, 'Patikraja');
INSERT INTO `tbl_kecamatan` VALUES (19, 2, 'Pekuncen');
INSERT INTO `tbl_kecamatan` VALUES (20, 2, 'Purwojati');
INSERT INTO `tbl_kecamatan` VALUES (21, 2, 'Purwokerto Barat');
INSERT INTO `tbl_kecamatan` VALUES (22, 2, 'Purwokerto Selatan');
INSERT INTO `tbl_kecamatan` VALUES (23, 2, 'Purwokerto Timur');
INSERT INTO `tbl_kecamatan` VALUES (24, 2, 'Purwokerto Utara');
INSERT INTO `tbl_kecamatan` VALUES (25, 2, 'Rawalo');
INSERT INTO `tbl_kecamatan` VALUES (26, 2, 'Sokaraja');
INSERT INTO `tbl_kecamatan` VALUES (27, 2, 'Somagede');
INSERT INTO `tbl_kecamatan` VALUES (28, 2, 'Sumbang');
INSERT INTO `tbl_kecamatan` VALUES (29, 2, 'Sumpiuh');
INSERT INTO `tbl_kecamatan` VALUES (30, 2, 'Tambak');
INSERT INTO `tbl_kecamatan` VALUES (31, 2, 'Wangon');

-- ----------------------------
-- Table structure for tbl_kelurahan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kelurahan`;
CREATE TABLE `tbl_kelurahan`  (
  `id_kelurahan` int(11) NOT NULL AUTO_INCREMENT,
  `id_kecamatan` int(11) NULL DEFAULT NULL,
  `kelurahan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_kelurahan`) USING BTREE,
  INDEX `id_kecamatan`(`id_kecamatan`) USING BTREE,
  CONSTRAINT `tbl_kelurahan_ibfk_1` FOREIGN KEY (`id_kecamatan`) REFERENCES `tbl_kecamatan` (`id_kecamatan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 371 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_kelurahan
-- ----------------------------
INSERT INTO `tbl_kelurahan` VALUES (1, 1, 'Pilih Kelurahan', '13');
INSERT INTO `tbl_kelurahan` VALUES (4, 2, 'Ajibarang Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (5, 2, 'Ajibarang Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (6, 2, 'Banjarsari Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (7, 2, 'Ciberung', '13');
INSERT INTO `tbl_kelurahan` VALUES (8, 2, 'Darmakradenan', '13');
INSERT INTO `tbl_kelurahan` VALUES (9, 2, 'Jingkang', '13');
INSERT INTO `tbl_kelurahan` VALUES (10, 2, 'Kalibenda', '13');
INSERT INTO `tbl_kelurahan` VALUES (11, 2, 'Karangbawang', '13');
INSERT INTO `tbl_kelurahan` VALUES (12, 2, 'Kracak', '13');
INSERT INTO `tbl_kelurahan` VALUES (13, 2, 'Lesmana', '13');
INSERT INTO `tbl_kelurahan` VALUES (14, 2, 'Pancasan', '13');
INSERT INTO `tbl_kelurahan` VALUES (15, 2, 'Pancurendang', '13');
INSERT INTO `tbl_kelurahan` VALUES (16, 2, 'Pandansari', '13');
INSERT INTO `tbl_kelurahan` VALUES (17, 2, 'Sawangan', '13');
INSERT INTO `tbl_kelurahan` VALUES (18, 2, 'Tipar Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (20, 6, 'Banjarejo', '13');
INSERT INTO `tbl_kelurahan` VALUES (21, 6, 'Banyu Urip', '13');
INSERT INTO `tbl_kelurahan` VALUES (22, 6, 'Banyumas', '13');
INSERT INTO `tbl_kelurahan` VALUES (23, 6, 'Banyuwangi', '13');
INSERT INTO `tbl_kelurahan` VALUES (24, 6, 'Binangun', '11');
INSERT INTO `tbl_kelurahan` VALUES (25, 6, 'Danaraja', '03');
INSERT INTO `tbl_kelurahan` VALUES (26, 6, 'Dawuhan', '09');
INSERT INTO `tbl_kelurahan` VALUES (27, 6, 'Kalisube', '08');
INSERT INTO `tbl_kelurahan` VALUES (28, 6, 'Karangrau', '05');
INSERT INTO `tbl_kelurahan` VALUES (29, 6, 'Kedunggede', '06');
INSERT INTO `tbl_kelurahan` VALUES (30, 6, 'Kedunguter', '02');
INSERT INTO `tbl_kelurahan` VALUES (31, 6, 'Kejawar', '04');
INSERT INTO `tbl_kelurahan` VALUES (32, 6, 'Mulyo Rejo', '13');
INSERT INTO `tbl_kelurahan` VALUES (33, 6, 'Nusa Wungu', '13');
INSERT INTO `tbl_kelurahan` VALUES (34, 6, 'Papringan', '12');
INSERT INTO `tbl_kelurahan` VALUES (35, 6, 'Pasinggangan', '10');
INSERT INTO `tbl_kelurahan` VALUES (36, 6, 'Pekunden', '07');
INSERT INTO `tbl_kelurahan` VALUES (37, 6, 'Sinar Mulia', '13');
INSERT INTO `tbl_kelurahan` VALUES (38, 6, 'Sri Rahayu', '13');
INSERT INTO `tbl_kelurahan` VALUES (39, 6, 'Sriwungu', '13');
INSERT INTO `tbl_kelurahan` VALUES (40, 6, 'Sudagaran', '01');
INSERT INTO `tbl_kelurahan` VALUES (41, 6, 'Sukamulya', '13');
INSERT INTO `tbl_kelurahan` VALUES (42, 6, 'Waya Krui', '13');
INSERT INTO `tbl_kelurahan` VALUES (43, 7, 'Karangmangu', '13');
INSERT INTO `tbl_kelurahan` VALUES (44, 7, 'Karangsalam Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (45, 7, 'Karangtengah', '13');
INSERT INTO `tbl_kelurahan` VALUES (46, 7, 'Kebumen', '13');
INSERT INTO `tbl_kelurahan` VALUES (47, 7, 'Kemutug Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (48, 7, 'Kemutug Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (49, 7, 'Ketenger', '13');
INSERT INTO `tbl_kelurahan` VALUES (50, 7, 'Kutasari', '13');
INSERT INTO `tbl_kelurahan` VALUES (51, 7, 'Pamijen', '13');
INSERT INTO `tbl_kelurahan` VALUES (52, 7, 'Pandak', '13');
INSERT INTO `tbl_kelurahan` VALUES (53, 7, 'Purwosari', '13');
INSERT INTO `tbl_kelurahan` VALUES (54, 7, 'Rempoah', '13');
INSERT INTO `tbl_kelurahan` VALUES (55, 8, 'Batuanten', '13');
INSERT INTO `tbl_kelurahan` VALUES (56, 8, 'Cikidang', '13');
INSERT INTO `tbl_kelurahan` VALUES (57, 8, 'Cilongok', '13');
INSERT INTO `tbl_kelurahan` VALUES (58, 8, 'Cipete', '13');
INSERT INTO `tbl_kelurahan` VALUES (59, 8, 'Gununglurah', '13');
INSERT INTO `tbl_kelurahan` VALUES (60, 8, 'Jatisaba', '13');
INSERT INTO `tbl_kelurahan` VALUES (61, 8, 'Kalisari', '13');
INSERT INTO `tbl_kelurahan` VALUES (62, 8, 'Karanglo', '13');
INSERT INTO `tbl_kelurahan` VALUES (63, 8, 'Karangtengah', '13');
INSERT INTO `tbl_kelurahan` VALUES (64, 8, 'Kasegeran', '13');
INSERT INTO `tbl_kelurahan` VALUES (65, 8, 'Langgongsari', '13');
INSERT INTO `tbl_kelurahan` VALUES (66, 8, 'Pageraji', '13');
INSERT INTO `tbl_kelurahan` VALUES (67, 8, 'Panembangan', '13');
INSERT INTO `tbl_kelurahan` VALUES (68, 8, 'Panusupan', '13');
INSERT INTO `tbl_kelurahan` VALUES (69, 8, 'Pejogol', '13');
INSERT INTO `tbl_kelurahan` VALUES (70, 8, 'Pernasidi', '13');
INSERT INTO `tbl_kelurahan` VALUES (71, 8, 'Rancamaya', '13');
INSERT INTO `tbl_kelurahan` VALUES (72, 8, 'Sambirata', '13');
INSERT INTO `tbl_kelurahan` VALUES (73, 8, 'Sokawera', '13');
INSERT INTO `tbl_kelurahan` VALUES (74, 8, 'Sudimara', '13');
INSERT INTO `tbl_kelurahan` VALUES (75, 9, 'Cihonje', '13');
INSERT INTO `tbl_kelurahan` VALUES (76, 9, 'Cilangkap', '13');
INSERT INTO `tbl_kelurahan` VALUES (77, 9, 'Gancang', '13');
INSERT INTO `tbl_kelurahan` VALUES (78, 9, 'Gumelar', '13');
INSERT INTO `tbl_kelurahan` VALUES (79, 9, 'Karangkemojing', '13');
INSERT INTO `tbl_kelurahan` VALUES (80, 9, 'Kedungurang', '13');
INSERT INTO `tbl_kelurahan` VALUES (81, 9, 'Paningkaban', '13');
INSERT INTO `tbl_kelurahan` VALUES (82, 9, 'Samudra', '13');
INSERT INTO `tbl_kelurahan` VALUES (83, 9, 'Samudra Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (84, 9, 'Tlaga', '13');
INSERT INTO `tbl_kelurahan` VALUES (85, 10, 'Adisara', '13');
INSERT INTO `tbl_kelurahan` VALUES (86, 10, 'Bantar', '13');
INSERT INTO `tbl_kelurahan` VALUES (87, 10, 'Gentawangi', '13');
INSERT INTO `tbl_kelurahan` VALUES (88, 10, 'Gunung Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (89, 10, 'Karanganyar', '13');
INSERT INTO `tbl_kelurahan` VALUES (90, 10, 'Karanglewas', '13');
INSERT INTO `tbl_kelurahan` VALUES (91, 10, 'Kedungwringin', '13');
INSERT INTO `tbl_kelurahan` VALUES (92, 10, 'Margasana', '13');
INSERT INTO `tbl_kelurahan` VALUES (93, 10, 'Pekuncen', '13');
INSERT INTO `tbl_kelurahan` VALUES (94, 10, 'Tinggarjaya', '13');
INSERT INTO `tbl_kelurahan` VALUES (95, 10, 'Tunjung', '13');
INSERT INTO `tbl_kelurahan` VALUES (96, 11, 'Kalibagor', '13');
INSERT INTO `tbl_kelurahan` VALUES (97, 11, 'Kalicupak Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (98, 11, 'Kalicupak Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (99, 11, 'Kaliori', '13');
INSERT INTO `tbl_kelurahan` VALUES (100, 11, 'Kalisogra Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (101, 11, 'Karangdadap', '13');
INSERT INTO `tbl_kelurahan` VALUES (102, 11, 'Pajerukan', '13');
INSERT INTO `tbl_kelurahan` VALUES (103, 11, 'Pekaja', '13');
INSERT INTO `tbl_kelurahan` VALUES (104, 11, 'Petir', '13');
INSERT INTO `tbl_kelurahan` VALUES (105, 11, 'Srowot', '13');
INSERT INTO `tbl_kelurahan` VALUES (106, 11, 'Suro', '13');
INSERT INTO `tbl_kelurahan` VALUES (107, 11, 'Wlahar Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (109, 12, 'Babakan', '13');
INSERT INTO `tbl_kelurahan` VALUES (110, 12, 'Jipang', '13');
INSERT INTO `tbl_kelurahan` VALUES (111, 12, 'Karanggude', '13');
INSERT INTO `tbl_kelurahan` VALUES (112, 12, 'Karangkemiri', '13');
INSERT INTO `tbl_kelurahan` VALUES (113, 12, 'Karanglewas Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (114, 12, 'Kediri', '13');
INSERT INTO `tbl_kelurahan` VALUES (115, 12, 'Pangebatan', '13');
INSERT INTO `tbl_kelurahan` VALUES (116, 12, 'Pasir Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (117, 12, 'Pasir Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (118, 12, 'Pasir Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (119, 12, 'Singasari', '13');
INSERT INTO `tbl_kelurahan` VALUES (120, 12, 'Sunyalangu', '13');
INSERT INTO `tbl_kelurahan` VALUES (121, 12, 'Tamansari', '13');
INSERT INTO `tbl_kelurahan` VALUES (122, 13, 'Adisana', '13');
INSERT INTO `tbl_kelurahan` VALUES (123, 13, 'Bangsa', '13');
INSERT INTO `tbl_kelurahan` VALUES (124, 13, 'Cindaga', '13');
INSERT INTO `tbl_kelurahan` VALUES (125, 13, 'Gambarsari', '13');
INSERT INTO `tbl_kelurahan` VALUES (126, 13, 'Kalisalak', '13');
INSERT INTO `tbl_kelurahan` VALUES (127, 13, 'Kaliwedi', '13');
INSERT INTO `tbl_kelurahan` VALUES (128, 13, 'Karangsari', '13');
INSERT INTO `tbl_kelurahan` VALUES (129, 13, 'Kebasen', '13');
INSERT INTO `tbl_kelurahan` VALUES (130, 13, 'Mandirancan', '13');
INSERT INTO `tbl_kelurahan` VALUES (131, 13, 'Randegan', '13');
INSERT INTO `tbl_kelurahan` VALUES (132, 13, 'Sawangan', '13');
INSERT INTO `tbl_kelurahan` VALUES (133, 13, 'Tumiyang', '13');
INSERT INTO `tbl_kelurahan` VALUES (134, 14, 'Baseh', '13');
INSERT INTO `tbl_kelurahan` VALUES (135, 14, 'Beji', '13');
INSERT INTO `tbl_kelurahan` VALUES (136, 14, 'Dawuhan Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (137, 14, 'Dawuhan Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (138, 14, 'Dukuhjati Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (139, 14, 'Kalikesur', '13');
INSERT INTO `tbl_kelurahan` VALUES (140, 14, 'Kalisalak', '13');
INSERT INTO `tbl_kelurahan` VALUES (141, 14, 'Karanganyar', '13');
INSERT INTO `tbl_kelurahan` VALUES (142, 14, 'Karangmalang', '13');
INSERT INTO `tbl_kelurahan` VALUES (143, 14, 'Karangnangka', '13');
INSERT INTO `tbl_kelurahan` VALUES (144, 14, 'Karangsalam Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (145, 14, 'Kebandingan', '13');
INSERT INTO `tbl_kelurahan` VALUES (146, 14, 'Kebocoran', '13');
INSERT INTO `tbl_kelurahan` VALUES (147, 14, 'Kedungbanteng', '13');
INSERT INTO `tbl_kelurahan` VALUES (148, 14, 'Kedungbanteng', '13');
INSERT INTO `tbl_kelurahan` VALUES (149, 14, 'Keniten', '13');
INSERT INTO `tbl_kelurahan` VALUES (150, 14, 'Kutaliman', '13');
INSERT INTO `tbl_kelurahan` VALUES (151, 14, 'Margamulya', '13');
INSERT INTO `tbl_kelurahan` VALUES (152, 14, 'Melung', '13');
INSERT INTO `tbl_kelurahan` VALUES (153, 14, 'Penujah', '13');
INSERT INTO `tbl_kelurahan` VALUES (154, 14, 'Semedo', '13');
INSERT INTO `tbl_kelurahan` VALUES (155, 14, 'Sumingkir', '13');
INSERT INTO `tbl_kelurahan` VALUES (156, 14, 'Tonggara', '13');
INSERT INTO `tbl_kelurahan` VALUES (157, 14, 'Windujaya', '13');
INSERT INTO `tbl_kelurahan` VALUES (158, 15, 'Bantarwuni', '13');
INSERT INTO `tbl_kelurahan` VALUES (159, 15, 'Bojongsari', '13');
INSERT INTO `tbl_kelurahan` VALUES (160, 15, 'Dukuhwaluh', '13');
INSERT INTO `tbl_kelurahan` VALUES (161, 15, 'Karangsari', '13');
INSERT INTO `tbl_kelurahan` VALUES (162, 15, 'Karangsoka', '13');
INSERT INTO `tbl_kelurahan` VALUES (163, 15, 'Karangtengah', '13');
INSERT INTO `tbl_kelurahan` VALUES (164, 15, 'Kembaran', '13');
INSERT INTO `tbl_kelurahan` VALUES (165, 15, 'Kramat', '13');
INSERT INTO `tbl_kelurahan` VALUES (166, 15, 'Ledug', '13');
INSERT INTO `tbl_kelurahan` VALUES (167, 15, 'Linggasari', '13');
INSERT INTO `tbl_kelurahan` VALUES (168, 15, 'Pliken', '13');
INSERT INTO `tbl_kelurahan` VALUES (169, 15, 'Purbadana', '13');
INSERT INTO `tbl_kelurahan` VALUES (170, 15, 'Purwodadi', '13');
INSERT INTO `tbl_kelurahan` VALUES (171, 15, 'Sambeng Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (172, 15, 'Sambeng Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (173, 15, 'Tambaksari Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (174, 16, 'Alasmalang', '13');
INSERT INTO `tbl_kelurahan` VALUES (175, 16, 'Grujugan', '13');
INSERT INTO `tbl_kelurahan` VALUES (176, 16, 'Karanggintung', '13');
INSERT INTO `tbl_kelurahan` VALUES (177, 16, 'Karangjati', '13');
INSERT INTO `tbl_kelurahan` VALUES (178, 16, 'Karangsalam', '13');
INSERT INTO `tbl_kelurahan` VALUES (179, 16, 'Kebarongan', '13');
INSERT INTO `tbl_kelurahan` VALUES (180, 16, 'Kecila', '13');
INSERT INTO `tbl_kelurahan` VALUES (181, 16, 'Kedungpring', '13');
INSERT INTO `tbl_kelurahan` VALUES (182, 16, 'Nusamangir', '13');
INSERT INTO `tbl_kelurahan` VALUES (183, 16, 'Pageralang', '13');
INSERT INTO `tbl_kelurahan` VALUES (184, 16, 'Petarangan', '13');
INSERT INTO `tbl_kelurahan` VALUES (185, 16, 'Sibalung', '13');
INSERT INTO `tbl_kelurahan` VALUES (186, 16, 'Sibrama', '13');
INSERT INTO `tbl_kelurahan` VALUES (187, 16, 'Sidamulya', '13');
INSERT INTO `tbl_kelurahan` VALUES (188, 16, 'Sirau', '13');
INSERT INTO `tbl_kelurahan` VALUES (189, 17, 'Besuki', '13');
INSERT INTO `tbl_kelurahan` VALUES (190, 17, 'Canduk', '13');
INSERT INTO `tbl_kelurahan` VALUES (191, 17, 'Cidora', '13');
INSERT INTO `tbl_kelurahan` VALUES (192, 17, 'Cingebul', '13');
INSERT INTO `tbl_kelurahan` VALUES (193, 17, 'Cirahab', '13');
INSERT INTO `tbl_kelurahan` VALUES (194, 17, 'Dermaji', '13');
INSERT INTO `tbl_kelurahan` VALUES (195, 17, 'Karanggayam', '13');
INSERT INTO `tbl_kelurahan` VALUES (196, 17, 'Kedunggede', '13');
INSERT INTO `tbl_kelurahan` VALUES (197, 17, 'Lumbir', '13');
INSERT INTO `tbl_kelurahan` VALUES (198, 17, 'Parungkamal', '13');
INSERT INTO `tbl_kelurahan` VALUES (199, 18, 'Karanganyar', '13');
INSERT INTO `tbl_kelurahan` VALUES (200, 18, 'Karangendep', '13');
INSERT INTO `tbl_kelurahan` VALUES (201, 18, 'Kedungrandu', '13');
INSERT INTO `tbl_kelurahan` VALUES (202, 18, 'Kedungwringin', '13');
INSERT INTO `tbl_kelurahan` VALUES (203, 18, 'Kedungwuluh Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (204, 18, 'Kedungwuluh Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (205, 18, 'Notog', '13');
INSERT INTO `tbl_kelurahan` VALUES (206, 18, 'Patikraja', '13');
INSERT INTO `tbl_kelurahan` VALUES (207, 18, 'Pegalongan', '13');
INSERT INTO `tbl_kelurahan` VALUES (208, 18, 'Sawangan Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (209, 18, 'Sidabowa', '13');
INSERT INTO `tbl_kelurahan` VALUES (210, 18, 'Sokawera', '13');
INSERT INTO `tbl_kelurahan` VALUES (211, 18, 'Wlahar Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (212, 19, 'Banjaranyar', '13');
INSERT INTO `tbl_kelurahan` VALUES (213, 19, 'Candinegara', '13');
INSERT INTO `tbl_kelurahan` VALUES (214, 19, 'Cibangkong', '13');
INSERT INTO `tbl_kelurahan` VALUES (215, 19, 'Cikawung', '13');
INSERT INTO `tbl_kelurahan` VALUES (216, 19, 'Cikembulan', '13');
INSERT INTO `tbl_kelurahan` VALUES (217, 19, 'Glempang', '13');
INSERT INTO `tbl_kelurahan` VALUES (218, 19, 'Karangkemiri', '13');
INSERT INTO `tbl_kelurahan` VALUES (219, 19, 'Karangklesem', '13');
INSERT INTO `tbl_kelurahan` VALUES (220, 19, 'Krajan', '13');
INSERT INTO `tbl_kelurahan` VALUES (221, 19, 'Kranggan', '13');
INSERT INTO `tbl_kelurahan` VALUES (222, 19, 'Pasiraman Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (223, 19, 'Pasiraman Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (224, 19, 'Pekuncen', '13');
INSERT INTO `tbl_kelurahan` VALUES (225, 19, 'Petahunan', '13');
INSERT INTO `tbl_kelurahan` VALUES (226, 19, 'Semedo', '13');
INSERT INTO `tbl_kelurahan` VALUES (227, 19, 'Tumiyang', '13');
INSERT INTO `tbl_kelurahan` VALUES (228, 20, 'Gerduren', '13');
INSERT INTO `tbl_kelurahan` VALUES (229, 20, 'Kaliputih', '13');
INSERT INTO `tbl_kelurahan` VALUES (230, 20, 'Kalitapen', '13');
INSERT INTO `tbl_kelurahan` VALUES (231, 20, 'Kaliurip', '13');
INSERT INTO `tbl_kelurahan` VALUES (232, 20, 'Kaliwangi', '13');
INSERT INTO `tbl_kelurahan` VALUES (233, 20, 'Karangmangu', '13');
INSERT INTO `tbl_kelurahan` VALUES (234, 20, 'Karangtalun Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (235, 20, 'Karangtalun Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (236, 20, 'Klapasawit', '13');
INSERT INTO `tbl_kelurahan` VALUES (237, 20, 'Purwojati', '13');
INSERT INTO `tbl_kelurahan` VALUES (238, 21, 'Bantarsoka', '13');
INSERT INTO `tbl_kelurahan` VALUES (239, 21, 'Karanglewas Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (240, 21, 'Kedungwuluh', '13');
INSERT INTO `tbl_kelurahan` VALUES (241, 21, 'Kober', '13');
INSERT INTO `tbl_kelurahan` VALUES (242, 21, 'Pasir Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (243, 21, 'Pasirmuncang', '13');
INSERT INTO `tbl_kelurahan` VALUES (244, 21, 'Rejasari', '13');
INSERT INTO `tbl_kelurahan` VALUES (245, 22, 'Berkoh', '13');
INSERT INTO `tbl_kelurahan` VALUES (246, 22, 'Karangklesem', '13');
INSERT INTO `tbl_kelurahan` VALUES (247, 22, 'Karangpucung', '13');
INSERT INTO `tbl_kelurahan` VALUES (248, 22, 'Purwekerto Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (249, 22, 'Purwokerto Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (250, 22, 'Tanjung', '13');
INSERT INTO `tbl_kelurahan` VALUES (251, 22, 'Teluk', '13');
INSERT INTO `tbl_kelurahan` VALUES (252, 23, 'Arcawinangun', '13');
INSERT INTO `tbl_kelurahan` VALUES (253, 23, 'Kranji', '13');
INSERT INTO `tbl_kelurahan` VALUES (254, 23, 'Mersi', '13');
INSERT INTO `tbl_kelurahan` VALUES (255, 23, 'Purwokerto Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (256, 23, 'Purwokerto Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (257, 23, 'Sokanegara', '13');
INSERT INTO `tbl_kelurahan` VALUES (258, 24, 'Bancarkembar', '13');
INSERT INTO `tbl_kelurahan` VALUES (259, 24, 'Bobosan', '13');
INSERT INTO `tbl_kelurahan` VALUES (260, 24, 'Grendeng', '13');
INSERT INTO `tbl_kelurahan` VALUES (261, 24, 'Karangwangkal', '13');
INSERT INTO `tbl_kelurahan` VALUES (262, 24, 'Pabuaran', '13');
INSERT INTO `tbl_kelurahan` VALUES (263, 24, 'Purwanegara', '13');
INSERT INTO `tbl_kelurahan` VALUES (264, 24, 'Sumampir', '13');
INSERT INTO `tbl_kelurahan` VALUES (265, 25, 'Banjarparakan', '13');
INSERT INTO `tbl_kelurahan` VALUES (266, 25, 'Losari', '13');
INSERT INTO `tbl_kelurahan` VALUES (267, 25, 'Menganti', '13');
INSERT INTO `tbl_kelurahan` VALUES (268, 25, 'Pesawahan', '13');
INSERT INTO `tbl_kelurahan` VALUES (269, 25, 'Rawalo', '13');
INSERT INTO `tbl_kelurahan` VALUES (270, 25, 'Sanggreman', '13');
INSERT INTO `tbl_kelurahan` VALUES (271, 25, 'Sidamulih', '13');
INSERT INTO `tbl_kelurahan` VALUES (272, 25, 'Tambaknegara', '13');
INSERT INTO `tbl_kelurahan` VALUES (273, 25, 'Tipar', '13');
INSERT INTO `tbl_kelurahan` VALUES (274, 26, 'Banjaranyar', '13');
INSERT INTO `tbl_kelurahan` VALUES (275, 26, 'Banjarsari Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (276, 26, 'Jompo Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (277, 26, 'Kalikidang', '13');
INSERT INTO `tbl_kelurahan` VALUES (278, 26, 'Karangduren', '13');
INSERT INTO `tbl_kelurahan` VALUES (279, 26, 'Karangkedawung', '13');
INSERT INTO `tbl_kelurahan` VALUES (280, 26, 'Karangnanas', '13');
INSERT INTO `tbl_kelurahan` VALUES (281, 26, 'Karangrau', '13');
INSERT INTO `tbl_kelurahan` VALUES (282, 26, 'Kedondong', '13');
INSERT INTO `tbl_kelurahan` VALUES (283, 26, 'Klahang', '13');
INSERT INTO `tbl_kelurahan` VALUES (284, 26, 'Lemberang', '13');
INSERT INTO `tbl_kelurahan` VALUES (285, 26, 'Pamijen', '13');
INSERT INTO `tbl_kelurahan` VALUES (286, 26, 'Sokaraja Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (287, 26, 'Sokaraja Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (288, 26, 'Sokaraja Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (289, 26, 'Sokaraja Tengah', '13');
INSERT INTO `tbl_kelurahan` VALUES (290, 26, 'Sokaraja Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (291, 26, 'Wiradadi', '13');
INSERT INTO `tbl_kelurahan` VALUES (292, 27, 'Kanding', '13');
INSERT INTO `tbl_kelurahan` VALUES (293, 27, 'Kemawi', '13');
INSERT INTO `tbl_kelurahan` VALUES (294, 27, 'Klinting', '13');
INSERT INTO `tbl_kelurahan` VALUES (295, 27, 'Piasa Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (296, 27, 'Plana', '13');
INSERT INTO `tbl_kelurahan` VALUES (297, 27, 'Sokawera', '13');
INSERT INTO `tbl_kelurahan` VALUES (298, 27, 'Somagede', '13');
INSERT INTO `tbl_kelurahan` VALUES (299, 27, 'Somakaton', '13');
INSERT INTO `tbl_kelurahan` VALUES (300, 27, 'Tanggeran', '13');
INSERT INTO `tbl_kelurahan` VALUES (301, 28, 'Banjarsari Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (302, 28, 'Banjarsari Wetan', '13');
INSERT INTO `tbl_kelurahan` VALUES (303, 28, 'Banteran', '13');
INSERT INTO `tbl_kelurahan` VALUES (304, 28, 'Ciberem', '13');
INSERT INTO `tbl_kelurahan` VALUES (305, 28, 'Datar', '13');
INSERT INTO `tbl_kelurahan` VALUES (306, 28, 'Gandatapa', '13');
INSERT INTO `tbl_kelurahan` VALUES (307, 28, 'Karangcegak', '13');
INSERT INTO `tbl_kelurahan` VALUES (308, 28, 'Karanggintung', '13');
INSERT INTO `tbl_kelurahan` VALUES (309, 28, 'Karangturi', '13');
INSERT INTO `tbl_kelurahan` VALUES (310, 28, 'Kawungcarang', '13');
INSERT INTO `tbl_kelurahan` VALUES (311, 28, 'Kebanggan', '13');
INSERT INTO `tbl_kelurahan` VALUES (312, 28, 'Kedungmalang', '13');
INSERT INTO `tbl_kelurahan` VALUES (313, 28, 'Kotayasa', '13');
INSERT INTO `tbl_kelurahan` VALUES (314, 28, 'Limpakuwus', '13');
INSERT INTO `tbl_kelurahan` VALUES (315, 28, 'Sikapat', '13');
INSERT INTO `tbl_kelurahan` VALUES (316, 28, 'Silado', '13');
INSERT INTO `tbl_kelurahan` VALUES (317, 28, 'Sumbang', '13');
INSERT INTO `tbl_kelurahan` VALUES (318, 28, 'Susukan', '13');
INSERT INTO `tbl_kelurahan` VALUES (319, 28, 'Tambaksogra', '13');
INSERT INTO `tbl_kelurahan` VALUES (320, 29, 'Banjarpanepen', '13');
INSERT INTO `tbl_kelurahan` VALUES (321, 29, 'Bogangin', '13');
INSERT INTO `tbl_kelurahan` VALUES (322, 29, 'Karanggedang', '13');
INSERT INTO `tbl_kelurahan` VALUES (323, 29, 'Kebokura', '13');
INSERT INTO `tbl_kelurahan` VALUES (324, 29, 'Kemiri', '13');
INSERT INTO `tbl_kelurahan` VALUES (325, 29, 'Ketanda', '13');
INSERT INTO `tbl_kelurahan` VALUES (326, 29, 'Kradenan', '13');
INSERT INTO `tbl_kelurahan` VALUES (327, 29, 'Kuntili', '13');
INSERT INTO `tbl_kelurahan` VALUES (328, 29, 'Lebeng', '13');
INSERT INTO `tbl_kelurahan` VALUES (329, 29, 'Nusadadi', '13');
INSERT INTO `tbl_kelurahan` VALUES (330, 29, 'Pandak', '13');
INSERT INTO `tbl_kelurahan` VALUES (331, 29, 'Selandaka', '13');
INSERT INTO `tbl_kelurahan` VALUES (332, 29, 'Selanegara', '13');
INSERT INTO `tbl_kelurahan` VALUES (333, 29, 'Sumpiuh', '13');
INSERT INTO `tbl_kelurahan` VALUES (334, 30, 'Buniayu', '13');
INSERT INTO `tbl_kelurahan` VALUES (335, 30, 'Diponggo', '13');
INSERT INTO `tbl_kelurahan` VALUES (336, 30, 'Gebangsari', '13');
INSERT INTO `tbl_kelurahan` VALUES (337, 30, 'Gelam', '13');
INSERT INTO `tbl_kelurahan` VALUES (338, 30, 'Grejeg', '13');
INSERT INTO `tbl_kelurahan` VALUES (339, 30, 'Gumelar Kidul', '13');
INSERT INTO `tbl_kelurahan` VALUES (340, 30, 'Gumelar Lor', '13');
INSERT INTO `tbl_kelurahan` VALUES (341, 30, 'Kamulyan', '13');
INSERT INTO `tbl_kelurahan` VALUES (342, 30, 'Karangpetir', '13');
INSERT INTO `tbl_kelurahan` VALUES (343, 30, 'Karangpucung', '13');
INSERT INTO `tbl_kelurahan` VALUES (344, 30, 'Kepuh Legundi', '13');
INSERT INTO `tbl_kelurahan` VALUES (345, 30, 'Kepuh Teluk', '13');
INSERT INTO `tbl_kelurahan` VALUES (346, 30, 'Klumpang Gubug', '13');
INSERT INTO `tbl_kelurahan` VALUES (347, 30, 'Pekalongan', '13');
INSERT INTO `tbl_kelurahan` VALUES (348, 30, 'Peromaan', '13');
INSERT INTO `tbl_kelurahan` VALUES (349, 30, 'Pesantren', '13');
INSERT INTO `tbl_kelurahan` VALUES (350, 30, 'Plangkapan', '13');
INSERT INTO `tbl_kelurahan` VALUES (351, 30, 'Prembun', '13');
INSERT INTO `tbl_kelurahan` VALUES (352, 30, 'Purwodadi', '13');
INSERT INTO `tbl_kelurahan` VALUES (353, 30, 'Sukalela', '13');
INSERT INTO `tbl_kelurahan` VALUES (354, 30, 'Sukaoneng', '13');
INSERT INTO `tbl_kelurahan` VALUES (355, 30, 'Tambak', '13');
INSERT INTO `tbl_kelurahan` VALUES (356, 30, 'Tanjungori', '13');
INSERT INTO `tbl_kelurahan` VALUES (357, 30, 'Teluk Jati Dawang', '13');
INSERT INTO `tbl_kelurahan` VALUES (358, 30, 'Watuagung', '13');
INSERT INTO `tbl_kelurahan` VALUES (359, 31, 'Banteran', '13');
INSERT INTO `tbl_kelurahan` VALUES (360, 31, 'Cikakak', '13');
INSERT INTO `tbl_kelurahan` VALUES (361, 31, 'Jambu', '13');
INSERT INTO `tbl_kelurahan` VALUES (362, 31, 'Jurangbahas', '13');
INSERT INTO `tbl_kelurahan` VALUES (363, 31, 'Klapagading', '13');
INSERT INTO `tbl_kelurahan` VALUES (364, 31, 'Klapagading Kulon', '13');
INSERT INTO `tbl_kelurahan` VALUES (365, 31, 'Pengadegan', '13');
INSERT INTO `tbl_kelurahan` VALUES (366, 31, 'Randegan', '13');
INSERT INTO `tbl_kelurahan` VALUES (367, 31, 'Rawaheng', '13');
INSERT INTO `tbl_kelurahan` VALUES (368, 31, 'Wangon', '13');
INSERT INTO `tbl_kelurahan` VALUES (369, 31, 'Windunegara', '13');
INSERT INTO `tbl_kelurahan` VALUES (370, 31, 'Wlahar', '13');

-- ----------------------------
-- Table structure for tbl_notif
-- ----------------------------
DROP TABLE IF EXISTS `tbl_notif`;
CREATE TABLE `tbl_notif`  (
  `id_notif` int(255) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_notif`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tbl_notif_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_notif
-- ----------------------------
INSERT INTO `tbl_notif` VALUES (1, 1, 'Pembayaran', 'Simpanan Wajib Rp. 100000', 'Y', NULL);
INSERT INTO `tbl_notif` VALUES (2, 1, 'Pembayaran', 'Update Simpanan Wajib Rp. 120000', 'Y', NULL);
INSERT INTO `tbl_notif` VALUES (3, 1, 'Pembayaran', 'Update Simpanan Wajib Rp. 120000', 'Y', NULL);
INSERT INTO `tbl_notif` VALUES (4, 1, 'Pembayaran', 'Update Simpanan Wajib Rp. 120000', 'Y', NULL);
INSERT INTO `tbl_notif` VALUES (5, 1, 'Pembayaran', 'Update Simpanan Wajib Rp. 120000', 'Y', NULL);
INSERT INTO `tbl_notif` VALUES (6, 1, 'Pembayaran', 'Simpanan Wajib Rp. 10000', 'Y', NULL);
INSERT INTO `tbl_notif` VALUES (7, 1, 'Pembayaran', 'Simpanan Sukarela Rp. 100000', 'Y', NULL);
INSERT INTO `tbl_notif` VALUES (8, 1, 'Pembayaran', 'Simpanan Sukarela Rp. 100000', 'Y', NULL);
INSERT INTO `tbl_notif` VALUES (9, 1, 'Pembayaran', 'Update Simpanan Sukarela Rp. 1200000', 'Y', NULL);

-- ----------------------------
-- Table structure for tbl_notif_broadcast
-- ----------------------------
DROP TABLE IF EXISTS `tbl_notif_broadcast`;
CREATE TABLE `tbl_notif_broadcast`  (
  `id_notif` int(255) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_notif`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tbl_notif_broadcast_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pembayaran`;
CREATE TABLE `tbl_pembayaran`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_pengambilan_sukarela
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pengambilan_sukarela`;
CREATE TABLE `tbl_pengambilan_sukarela`  (
  `id_pengambilan` int(100) NOT NULL AUTO_INCREMENT,
  `id_admin` int(11) NULL DEFAULT NULL,
  `id_user` int(100) NULL DEFAULT NULL,
  `nominal` int(100) NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengambilan`) USING BTREE,
  INDEX `id_admin`(`id_admin`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  CONSTRAINT `tbl_pengambilan_sukarela_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pengambilan_sukarela_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_produk
-- ----------------------------
DROP TABLE IF EXISTS `tbl_produk`;
CREATE TABLE `tbl_produk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_kategori` int(11) NULL DEFAULT NULL,
  `jenis` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `harga` int(11) NULL DEFAULT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `stok` int(11) NULL DEFAULT NULL,
  `diskon` int(11) NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `poin` int(11) NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_kategori`(`id_kategori`) USING BTREE,
  INDEX `id_admin`(`id_admin`) USING BTREE,
  CONSTRAINT `tbl_produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_produk_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_provinsi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_provinsi`;
CREATE TABLE `tbl_provinsi`  (
  `id_provinsi` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_provinsi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_provinsi
-- ----------------------------
INSERT INTO `tbl_provinsi` VALUES (1, 'Pilih Provinsi');
INSERT INTO `tbl_provinsi` VALUES (2, 'Jawa Tengah');

-- ----------------------------
-- Table structure for tbl_riwayat
-- ----------------------------
DROP TABLE IF EXISTS `tbl_riwayat`;
CREATE TABLE `tbl_riwayat`  (
  `id_riwayat` int(255) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `judul` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `nominal` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_riwayat`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  INDEX `id_admin`(`id_admin`) USING BTREE,
  CONSTRAINT `tbl_riwayat_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_riwayat_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_riwayat
-- ----------------------------
INSERT INTO `tbl_riwayat` VALUES (1, 1, 1, 'Pembayaran', 'Simpanan Wajib Rp. 100000', '100000', '2020-09-13 00:00:00', 'tunai');
INSERT INTO `tbl_riwayat` VALUES (2, 1, 1, 'Pembayaran', 'Update Simpanan Wajib Rp. 120000', '120000', '2020-09-13 00:00:00', 'tunai');
INSERT INTO `tbl_riwayat` VALUES (3, 1, 1, 'Pembayaran', 'Update Simpanan Wajib Rp. 120000', '120000', '2020-09-13 00:00:00', 'tunai');
INSERT INTO `tbl_riwayat` VALUES (4, 1, 1, 'Pembayaran', 'Update Simpanan Wajib Rp. 120000', '120000', '2020-09-13 00:00:00', 'tunai');
INSERT INTO `tbl_riwayat` VALUES (5, 1, 1, 'Pembayaran', 'Update Simpanan Wajib Rp. 120000', '120000', '2020-09-13 00:00:00', 'tunai');
INSERT INTO `tbl_riwayat` VALUES (6, 1, 1, 'Pembayaran', 'Update Simpanan Wajib Rp. 120000', '120000', '2020-09-13 00:00:00', 'tunai');
INSERT INTO `tbl_riwayat` VALUES (7, 1, 1, 'Pembayaran', 'Simpanan Wajib Rp. 10000', '10000', '2020-09-14 00:00:00', 'tunai');
INSERT INTO `tbl_riwayat` VALUES (8, 1, 1, 'Pembayaran', 'Simpanan Sukarela Rp. 100000', '100000', '2020-09-14 00:00:00', 'tunai');
INSERT INTO `tbl_riwayat` VALUES (9, 1, 1, 'Pembayaran', 'Simpanan Sukarela Rp. 100000', '100000', '2020-09-14 00:00:00', 'tunai');
INSERT INTO `tbl_riwayat` VALUES (10, 1, 1, 'Pembayaran', 'Update Simpanan Sukarela Rp. 1200000', '1200000', '2020-09-14 00:00:00', 'tunai');

-- ----------------------------
-- Table structure for tbl_sim_pokok
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sim_pokok`;
CREATE TABLE `tbl_sim_pokok`  (
  `id_simpanan` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `nominal` int(100) NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id_simpanan`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  INDEX `id_admin`(`id_admin`) USING BTREE,
  CONSTRAINT `tbl_sim_pokok_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_sim_pokok_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_sim_pokok
-- ----------------------------
INSERT INTO `tbl_sim_pokok` VALUES (1, 1, 1, 150000, '2020-09-13 10:29:34');

-- ----------------------------
-- Table structure for tbl_sim_sukarela
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sim_sukarela`;
CREATE TABLE `tbl_sim_sukarela`  (
  `id_simpanan` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `nominal` int(100) NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  `metode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `periode` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_simpanan`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  INDEX `id_admin`(`id_admin`) USING BTREE,
  CONSTRAINT `tbl_sim_sukarela_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_sim_sukarela_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_sim_sukarela
-- ----------------------------
INSERT INTO `tbl_sim_sukarela` VALUES (1, 1, 1, 1200000, '2020-09-14 00:00:00', NULL, NULL);

-- ----------------------------
-- Table structure for tbl_sim_wajib
-- ----------------------------
DROP TABLE IF EXISTS `tbl_sim_wajib`;
CREATE TABLE `tbl_sim_wajib`  (
  `id_simpanan` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NULL DEFAULT NULL,
  `id_admin` int(11) NULL DEFAULT NULL,
  `nominal` int(100) NULL DEFAULT NULL,
  `tanggal` datetime(0) NULL DEFAULT NULL,
  `metode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `periode` date NULL DEFAULT NULL,
  PRIMARY KEY (`id_simpanan`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  INDEX `id_admin`(`id_admin`) USING BTREE,
  CONSTRAINT `tbl_sim_wajib_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_sim_wajib_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_sim_wajib
-- ----------------------------
INSERT INTO `tbl_sim_wajib` VALUES (2, 1, 1, 10000, '2020-09-14 00:00:00', NULL, '2020-09-14');

-- ----------------------------
-- Table structure for tbl_transaksi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_transaksi`;
CREATE TABLE `tbl_transaksi`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `id_admin` int(11) NULL DEFAULT NULL,
  `id_user` int(100) NULL DEFAULT NULL,
  `harga_total` float(11, 2) NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ongkir` int(11) NULL DEFAULT NULL,
  `poin_total` int(11) NULL DEFAULT NULL,
  `alamat_kiri` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_hp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uang_kembali` int(11) NULL DEFAULT NULL,
  `uang_masuk` int(11) NULL DEFAULT NULL,
  `tgl_transaksi` datetime(0) NULL DEFAULT NULL,
  `id_pembayaran` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_admin`(`id_admin`) USING BTREE,
  INDEX `id_user`(`id_user`) USING BTREE,
  INDEX `tbl_transaksi_ibfk_3`(`id_pembayaran`) USING BTREE,
  CONSTRAINT `tbl_transaksi_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `tbl_admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_transaksi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_transaksi_ibfk_3` FOREIGN KEY (`id_pembayaran`) REFERENCES `tbl_pembayaran` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `id_user` int(100) NOT NULL AUTO_INCREMENT,
  `no_anggota` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` int(1) NULL DEFAULT NULL,
  `jenis_kelamin` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ktp` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `versi` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `no_hp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pekerjaan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_kelurahan` int(100) NULL DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_registrasi` datetime(0) NULL DEFAULT NULL,
  `poin` int(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE,
  INDEX `id_kelurahan`(`id_kelurahan`) USING BTREE,
  CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`id_kelurahan`) REFERENCES `tbl_kelurahan` (`id_kelurahan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, '01.2020.0913.0001', 'Tri Stiyo F', NULL, 'Perempuan', '3302071202940001', 'VFZSSmVrNUVWVEpPZW1jOQ==', NULL, NULL, '082213253325', 'Karyawan Swasta', 327, 'Kuntili RT 006 RW 001 Kec. Sumpiuh, 53195', 'N', '2020-09-13 14:31:18', 0);

-- ----------------------------
-- View structure for v_pokok
-- ----------------------------
DROP VIEW IF EXISTS `v_pokok`;
CREATE VIEW `v_pokok` AS SELECT
tbl_sim_pokok.id_simpanan,
tbl_sim_pokok.id_user,
tbl_user.no_anggota,
tbl_user.nama AS nama_anggota,
tbl_sim_pokok.id_admin,
tbl_admin.nama AS nama_admin,
tbl_sim_pokok.nominal,
tbl_sim_pokok.tanggal,
date(tbl_sim_pokok.tanggal) AS tgl
FROM
tbl_sim_pokok
LEFT JOIN tbl_user ON tbl_sim_pokok.id_user = tbl_user.id_user
LEFT JOIN tbl_admin ON tbl_sim_pokok.id_admin = tbl_admin.id ;

-- ----------------------------
-- View structure for v_sukarela
-- ----------------------------
DROP VIEW IF EXISTS `v_sukarela`;
CREATE VIEW `v_sukarela` AS SELECT
tbl_sim_sukarela.id_simpanan,
tbl_sim_sukarela.id_user,
tbl_user.no_anggota,
tbl_user.nama AS nama_anggota,
tbl_sim_sukarela.id_admin,
tbl_admin.nama AS nama_admin,
tbl_sim_sukarela.nominal,
tbl_sim_sukarela.tanggal,
date(tbl_sim_sukarela.tanggal) AS tgl,
tbl_sim_sukarela.metode,
tbl_sim_sukarela.periode
FROM
tbl_sim_sukarela
LEFT JOIN tbl_user ON tbl_sim_sukarela.id_user = tbl_user.id_user
LEFT JOIN tbl_admin ON tbl_sim_sukarela.id_admin = tbl_admin.id ;

-- ----------------------------
-- View structure for v_user
-- ----------------------------
DROP VIEW IF EXISTS `v_user`;
CREATE VIEW `v_user` AS SELECT
tbl_user.id_user,
tbl_user.no_anggota,
tbl_user.nama,
tbl_user.`level`,
tbl_user.jenis_kelamin,
tbl_user.ktp,
tbl_user.`password`,
tbl_user.foto,
tbl_user.versi,
tbl_user.no_hp,
tbl_user.pekerjaan,
tbl_user.alamat,
tbl_user.id_kelurahan,
tbl_kelurahan.kelurahan,
tbl_kelurahan.id_kecamatan,
tbl_kecamatan.kecamatan,
tbl_kecamatan.id_kabupaten,
tbl_kabupaten.kabupaten,
tbl_kabupaten.id_provinsi,
tbl_provinsi.provinsi,
tbl_user.`status`,
tbl_user.tgl_registrasi,
tbl_user.poin
FROM
tbl_user
LEFT JOIN tbl_kelurahan ON tbl_user.id_kelurahan = tbl_kelurahan.id_kelurahan
LEFT JOIN tbl_kecamatan ON tbl_kelurahan.id_kecamatan = tbl_kecamatan.id_kecamatan
LEFT JOIN tbl_kabupaten ON tbl_kecamatan.id_kabupaten = tbl_kabupaten.id_kabupaten
LEFT JOIN tbl_provinsi ON tbl_kabupaten.id_provinsi = tbl_provinsi.id_provinsi ;

-- ----------------------------
-- View structure for v_wajib
-- ----------------------------
DROP VIEW IF EXISTS `v_wajib`;
CREATE VIEW `v_wajib` AS SELECT
tbl_sim_wajib.id_simpanan,
tbl_sim_wajib.id_user,
tbl_user.no_anggota,
tbl_user.nama AS nama_anggota,
tbl_sim_wajib.id_admin,
tbl_admin.nama AS nama_admin,
tbl_sim_wajib.nominal,
tbl_sim_wajib.tanggal,
date(tbl_sim_wajib.tanggal) AS tgl,
tbl_sim_wajib.metode,
year(tbl_sim_wajib.periode) AS periode
FROM
tbl_sim_wajib
LEFT JOIN tbl_user ON tbl_sim_wajib.id_user = tbl_user.id_user
LEFT JOIN tbl_admin ON tbl_sim_wajib.id_admin = tbl_admin.id ;

SET FOREIGN_KEY_CHECKS = 1;
