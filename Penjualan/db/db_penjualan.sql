/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - db_penjualan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_penjualan` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_penjualan`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id` varchar(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `jumlah_terjual` int(11) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `jenis_barang` enum('Konsumsi','Pembersih') DEFAULT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `barang` */

insert  into `barang`(`id`,`kode_barang`,`nama_barang`,`stok`,`jumlah_terjual`,`tgl_transaksi`,`jenis_barang`) values 
('1','100','Kopi',100,10,'2021-05-01','Konsumsi'),
('2','101','Teh',100,19,'2021-05-05','Konsumsi'),
('4','102','Kopi',90,15,'2021-05-10','Konsumsi'),
('5','103','Teh',81,5,'2021-05-12','Konsumsi'),
('6','105','Pasta Gigi',100,20,'2021-05-11','Pembersih'),
('8','150','Shampo',100,25,'2021-05-12','Pembersih'),
('7','204','Sabun Mandi',100,30,'2021-05-11','Pembersih'),
('','242','dsadsad',2022,5,'2022-11-18','Konsumsi');

/*Table structure for table `data_toko` */

DROP TABLE IF EXISTS `data_toko`;

CREATE TABLE `data_toko` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(80) DEFAULT NULL,
  `nama_pemilik` varchar(80) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `data_toko` */

insert  into `data_toko`(`id`,`nama_toko`,`nama_pemilik`,`no_telepon`,`alamat`) values 
(1,'Toko Barokah Sepuh','Asep','085677840239','Bandung');

/*Table structure for table `kasir` */

DROP TABLE IF EXISTS `kasir`;

CREATE TABLE `kasir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kasir` varchar(10) DEFAULT NULL,
  `nama_kasir` varchar(100) DEFAULT NULL,
  `username_kasir` varchar(20) DEFAULT NULL,
  `password_kasir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kasir` */

insert  into `kasir`(`id`,`kode_kasir`,`nama_kasir`,`username_kasir`,`password_kasir`) values 
(2,'KASIR - 58','Fakhrul','KSR58','pwd_fakhrul');

/*Table structure for table `pengguna` */

DROP TABLE IF EXISTS `pengguna`;

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pengguna` varchar(10) DEFAULT NULL,
  `nama_pengguna` varchar(100) DEFAULT NULL,
  `username_pengguna` varchar(20) DEFAULT NULL,
  `password_pengguna` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pengguna` */

insert  into `pengguna`(`id`,`kode_pengguna`,`nama_pengguna`,`username_pengguna`,`password_pengguna`) values 
(1,'PG1','Asep S','asepss','asep_12');

/*Table structure for table `penjualan` */

DROP TABLE IF EXISTS `penjualan`;

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `no_penjualan` varchar(20) DEFAULT NULL,
  `nama_kasir` varchar(100) DEFAULT NULL,
  `tgl_penjualan` varchar(20) DEFAULT NULL,
  `total_penjualan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `penjualan` */

insert  into `penjualan`(`id`,`no_penjualan`,`nama_kasir`,`tgl_penjualan`,`total_penjualan`) values 
(1,'PJ1584356033','Nugrohoo','16/03/2020',12500),
(2,'PJ1584359090','Nugrohoo','16/03/2020',161250),
(3,'PJ1584359556','nugroho','16/03/2020',9750);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
