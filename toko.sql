-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 10:12 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id`, `nama`) VALUES
(2, 'Fashion'),
(1, 'Elektronik');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_pemesan` varchar(45) NOT NULL,
  `alamat_pemesan` varchar(45) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `jumlah_pesanan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `tanggal`, `nama_pemesan`, `alamat_pemesan`, `no_hp`, `email`, `jumlah_pesanan`, `deskripsi`, `produk_id`) VALUES
(1, '2023-04-08', 'Abdurrahman Ziyad', 'Depok', '082094374577', 'ziyad@gmail.com', 2, 'Pesanan Meja Belajar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode` varchar(45) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `harga_jual` double NOT NULL,
  `harga_beli` double NOT NULL,
  `stok` int(11) NOT NULL,
  `min_stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori_produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode`, `nama`, `harga_jual`, `harga_beli`, `stok`, `min_stok`, `deskripsi`, `kategori_produk_id`) VALUES
(1, 'AC01', 'AC', 4000000, 3500000, 10, 5, 'AC atau air conditioner merupakan perangkat elektronik yang berfungsi sebagai pendingin ruangan ini menjadi solusi jitu mengatasi udara yang panas.', 1),
(2, 'HP01', 'HANDPHONE', 2000000, 1500000, 6, 2, 'Handphone adalah perangkat elektronik kecil yang digunakan untuk komunikasi nirkabel.', 1),
(3, 'LP01', 'LAPTOP', 5000000, 4500000, 5, 2, 'Laptop adalah sebuah komputer portabel yang dapat dibawa-bawa dan digunakan di mana saja.', 1),
(4, 'RC01', 'RICECOOKER', 500000, 450000, 10, 5, 'Rice cooker adalah perangkat listrik yang dirancang khusus untuk memasak nasi dengan cara mengukusnya.', 1),
(5, 'KA01', 'KIPAS ANGIN', 450000, 300000, 12, 6, 'Kipas angin adalah perangkat elektronik yang digunakan untuk menghasilkan aliran udara dengan cara memutar baling-baling yang terpasang pada poros yang dihubungkan ke motor listrik.', 1),
(6, 'ST01', 'SETRIKA', 400000, 350000, 7, 3, 'Setrika adalah perangkat listrik yang digunakan untuk meluruskan kain dan menghilangkan kerutan dengan cara memanaskan plat setrika dan menyetrikannya di atas kain.', 1),
(7, 'BL01', 'BLENDER', 250000, 200000, 10, 5, 'Blender adalah alat dapur yang digunakan untuk mencampur, menghaluskan, atau menghancurkan bahan makanan atau bahan lainnya.', 1),
(8, 'KR01', 'KAMERA', 8000000, 7000000, 4, 2, 'Kamera adalah perangkat elektronik yang digunakan untuk menangkap gambar atau video dengan cara merekam cahaya yang melewati lensa dan memprosesnya menjadi gambar atau video yang dapat disimpan dalam berbagai format digital.', 1),
(9, 'WM01', 'MICROWAVE', 1000000, 950000, 10, 4, 'Microwave atau oven microwave adalah perangkat elektronik yang digunakan untuk memasak makanan dengan memanfaatkan gelombang mikro yang meresap ke dalam bahan makanan dan memanaskan atau memasaknya secara cepat.', 1),
(10, 'KL01', 'KULKAS', 9000000, 7000000, 12, 7, 'Kulkas atau lemari es adalah perangkat elektronik yang digunakan untuk mendinginkan dan menyimpan makanan dan minuman dalam suhu yang rendah.', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`tanggal`),
  ADD KEY `fk_pesanan_produk1_idx` (`produk_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_UNIQUE` (`kode`),
  ADD KEY `fk_produk_kategori_produk_idx` (`kategori_produk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_produk1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_kategori_produk` FOREIGN KEY (`kategori_produk_id`) REFERENCES `kategori_produk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
