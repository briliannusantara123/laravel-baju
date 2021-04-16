-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Mar 2021 pada 08.38
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajax`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kod_bar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_supplier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_sub_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jenis_pakaian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posisi_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_jual` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `kod_bar`, `nama_barang`, `id_merk`, `id_kategori`, `id_supplier`, `id_sub_kategori`, `id_gender`, `id_jenis_pakaian`, `posisi_barang`, `harga_jual`, `stok_barang`, `image`, `image2`, `image3`, `created_at`, `updated_at`) VALUES
(74, '0001-1001', '1', 'Vector', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '50000', '7', 'public/upload/barang/1613557247windi1.jpg', '', '', '2021-02-17 03:20:47', '2021-02-17 21:59:41'),
(75, '0001-1002', '2', 'Vector 2', 'Merk Test 2', 'test kategori 2', 'test supplier 2', 'subkategori test 2', 'test gender 2', 'Jenis Pakaian Test 2', 'jakarta', '45000', '10', 'storage/1613618204rich copy.jpg', '', '', '2021-02-17 20:16:44', '2021-02-17 20:16:44'),
(76, '0001-1003', '3', 'Vector 3', 'Merk Test 3', 'test kategori 2', 'test supplier', 'subkategori test 2', 'test gender', 'Jenis Pakaian Test', 'jakarta', '10000', '50', 'storage/1613638491anisa vektor.jpg', '', '', '2021-02-18 01:54:51', '2021-02-18 01:54:51'),
(77, '0001-1004', '4', 'Vector 4', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '45000', '10', 'storage/1613638546gilang vektor.jpg', '', '', '2021-02-18 01:55:46', '2021-02-18 01:55:46'),
(78, '0001-1005', '5', 'Vector 5', 'Merk Test 2', 'test kategori 2', 'test supplier 2', 'subkategori test 2', 'test gender 2', 'Jenis Pakaian Test 2', 'jakarta', '200', '1', 'storage/1613638613Untitled-1.jpg', '', '', '2021-02-18 01:56:53', '2021-02-18 01:56:53'),
(85, '0001-1006', '6', 'Vector', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '10000', '100', 'storage/1613813848rich copy.jpg', '', '', '2021-02-20 02:37:28', '2021-02-20 02:37:28'),
(91, '0001-1007', '7', 'Vector 7', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '45000', '1', 'storage/1613986049windi.jpg', '', '', '2021-02-22 02:27:29', '2021-02-22 02:27:29'),
(92, '0001-1008', '8', 'Vector 8', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '45000', '50', 'storage/1613990330anisa vektor.jpg', 'storage/1613990330anisa vektor.jpg', 'storage/1613990330anisa vektor.jpg', '2021-02-22 03:38:50', '2021-02-22 03:38:50'),
(93, '0001-1009', '9', 'Vector 9', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '10000', '10', 'storage/1614003416bprima-1.jpg', 'storage/1614003416bprima-1.jpg', 'storage/1614003416bprima-1.jpg', '2021-02-22 07:16:56', '2021-02-22 07:16:56'),
(94, '0001-1010', '10', 'Vector 10', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '45000', '10', 'storage/1614046618ber1.jpg', 'storage/1614046618anisa.jpg', 'storage/1614046618Shinta.jpeg', '2021-02-22 19:16:58', '2021-02-22 19:16:58'),
(95, '0001-1011', '11', 'Vector 11', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '45000', '1', 'storage/1614065459bprima-1.jpg', 'storage/1614065459rich copy.jpg', 'storage/1614065459ber1.jpg', '2021-02-23 00:30:59', '2021-02-23 00:30:59'),
(96, '0001-1012', '12', 'Vector 12', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '45000', '10', 'storage/1614235563Untitled-1.jpg', 'storage/1614235563rich copy.jpg', 'storage/1614235563ber1.jpg', '2021-02-24 23:46:03', '2021-02-24 23:46:03'),
(97, '0001-1013', '4', 'Vector', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '45000', '200', 'storage/1614235665windi.jpg', 'storage/1614235665windi.jpg', 'storage/1614235665windi.jpg', '2021-02-24 23:47:45', '2021-02-24 23:47:45'),
(98, '0001-1014', '14', 'Vector 14', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '10000', '1', 'storage/1614235839windi.jpg', 'storage/1614235839windi.jpg', 'storage/1614235839windi.jpg', '2021-02-24 23:50:39', '2021-02-24 23:50:39'),
(99, '0001-1015', '15', 'Vector 15', 'Merk Test', 'test kategori', 'test supplier', 'subkategori test', 'test gender', 'Jenis Pakaian Test', 'jakarta', '100', '10', 'storage/1614235990gilang.jpg', 'storage/1614235990background bery.JPG', 'storage/1614235990icaaa.jpeg', '2021-02-24 23:53:10', '2021-02-24 23:53:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_merk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `harga_jual` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_beli` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(20) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_penerima` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typeaddress` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `nama_barang`, `id_merk`, `id_kategori`, `harga_jual`, `jumlah_beli`, `total`, `name`, `nama_penerima`, `phone`, `address`, `typeaddress`, `status`, `created_at`, `updated_at`) VALUES
(16, 'Vector 14', 'Merk Test', 'test kategori', '10000', '10', 100000, 'pembeli', 'bery', '000888121312', 'cicurug', 'Home', NULL, '2021-03-02 19:16:55', '2021-03-02 19:16:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datauser`
--

CREATE TABLE `datauser` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeaddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `datauser`
--

INSERT INTO `datauser` (`id`, `name`, `phone`, `address`, `typeaddress`, `created_at`, `updated_at`) VALUES
(6, 'brilian', '081295229466', 'test', 'Home', '2021-02-26 22:02:53', '2021-02-26 22:02:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gender`
--

CREATE TABLE `gender` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gender`
--

INSERT INTO `gender` (`id`, `nama_gender`, `created_at`, `updated_at`) VALUES
(1, 'test gender', '2021-02-02 19:03:32', '2021-02-02 19:03:32'),
(2, 'test gender 2', '2021-02-02 22:08:34', '2021-02-02 22:08:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `histori`
--

CREATE TABLE `histori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_beli` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `histori`
--

INSERT INTO `histori` (`id`, `nama_barang`, `jumlah_beli`, `total`, `created_at`, `updated_at`) VALUES
(1, '1-Mie Goreng Kriuk', '1', '10000', '2021-02-04 23:14:23', '2021-02-04 23:14:23'),
(2, '1-Mie Goreng Kriuk', '5', '50000', '2021-02-05 01:30:59', '2021-02-05 01:30:59'),
(3, '1-Mie Goreng Kriuk', '50', '500000', '2021-02-05 19:55:36', '2021-02-05 19:55:36'),
(4, '1-Test Barang', '10', '2000', '2021-02-05 19:59:33', '2021-02-05 19:59:33'),
(5, '2-barang test 2', '50', '5000', '2021-02-05 20:00:00', '2021-02-05 20:00:00'),
(6, '2-barang test 2', '7511', '337995000', '2021-02-05 21:37:58', '2021-02-05 21:37:58'),
(7, '1-Test Barang', '20', '4000', '2021-02-07 20:40:04', '2021-02-07 20:40:04'),
(8, '1-Vector', '3', '150000', '2021-02-17 22:00:42', '2021-02-17 22:00:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `historimutasi`
--

CREATE TABLE `historimutasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `historimutasi`
--

INSERT INTO `historimutasi` (`id`, `nama_barang`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, '6-Test Barang', 30, '2021-02-08 22:55:02', '2021-02-08 22:55:02'),
(2, '61-Smudge Windi', 10, '2021-02-16 01:10:55', '2021-02-16 01:10:55'),
(3, '74-Vector', 3, '2021-02-17 22:00:16', '2021-02-17 22:00:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_pakaian`
--

CREATE TABLE `jenis_pakaian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jenis_pakaian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jenis_pakaian`
--

INSERT INTO `jenis_pakaian` (`id`, `nama_jenis_pakaian`, `created_at`, `updated_at`) VALUES
(1, 'Jenis Pakaian Test', '2021-02-02 19:03:39', '2021-02-02 19:03:39'),
(2, 'Jenis Pakaian Test 2', '2021-02-02 22:11:25', '2021-02-02 22:11:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'test kategori', '2021-02-02 19:02:06', '2021-02-02 19:02:06'),
(2, 'test kategori 2', '2021-02-02 21:39:44', '2021-02-02 21:50:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk`
--

CREATE TABLE `merk` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `merk`
--

INSERT INTO `merk` (`id`, `nama_merk`, `created_at`, `updated_at`) VALUES
(1, 'Merk Test', '2021-02-02 19:03:24', '2021-02-02 21:49:54'),
(2, 'Merk Test 2', '2021-02-02 21:51:25', '2021-02-02 21:51:25'),
(3, 'Merk Test 3', '2021-02-03 23:12:11', '2021-02-03 23:12:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_02_04_074823_create_histori_table', 1),
(2, '2021_02_08_034720_create_mutasi_table', 2),
(3, '2021_02_08_062349_create_historimutasi_table', 3),
(4, '2021_02_15_090325_create_detail_table', 4),
(5, '2021_02_16_042156_create_post_table', 5),
(6, '2021_02_25_080525_create_cart_table', 6),
(7, '2021_02_27_042504_create_datauser_table', 7),
(8, '2021_03_01_064647_create_payment_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi`
--

CREATE TABLE `mutasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Trigger `mutasi`
--
DELIMITER $$
CREATE TRIGGER `batal_mutasi` BEFORE DELETE ON `mutasi` FOR EACH ROW UPDATE barang set stok_barang = stok_barang + old.jumlah WHERE id = old.nama_barang
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mutasi_barang` AFTER INSERT ON `mutasi` FOR EACH ROW BEGIN
	UPDATE barang SET stok_barang=stok_barang-NEW.jumlah
    WHERE id=NEW.nama_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payment`
--

INSERT INTO `payment` (`id`, `image`, `created_at`, `updated_at`) VALUES
(3, 'storage/1614587209wk3.jpeg', '2021-03-01 01:26:49', '2021-03-01 01:26:49'),
(4, 'storage/1614587223wk1.jpeg', '2021-03-01 01:27:03', '2021-03-01 01:27:03'),
(5, 'storage/1614587821wk3.jpeg', '2021-03-01 01:37:01', '2021-03-01 01:37:01'),
(6, 'storage/1614587895wk1.jpeg', '2021-03-01 01:38:15', '2021-03-01 01:38:15'),
(7, 'storage/1614738069wk3.jpeg', '2021-03-02 19:21:09', '2021-03-02 19:21:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`id`, `nama_barang`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Mie Goreng Kriuk', 'public/upload/post/1613450654gg.JPG', '2021-02-15 21:44:14', '2021-02-15 21:44:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kategori`
--

CREATE TABLE `sub_kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sub_kategori` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sub_kategori`
--

INSERT INTO `sub_kategori` (`id`, `nama_sub_kategori`, `created_at`, `updated_at`) VALUES
(2, 'subkategori test', '2021-02-02 22:16:43', '2021-02-02 22:16:43'),
(3, 'subkategori test 2', '2021-02-02 22:16:57', '2021-02-02 22:16:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_supplier` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `created_at`, `updated_at`) VALUES
(1, 'test supplier', '2021-02-02 19:02:17', '2021-02-02 19:02:17'),
(2, 'test supplier 2', '2021-02-02 22:21:16', '2021-02-02 22:21:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kod_bar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `total` int(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Trigger `transaksi`
--
DELIMITER $$
CREATE TRIGGER `transaksi_barang` AFTER INSERT ON `transaksi` FOR EACH ROW BEGIN
	UPDATE barang SET stok_barang=stok_barang-NEW.jumlah_beli
    WHERE harga_jual=NEW.nama_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Master Admin', 'masteradmin', 'masteradmin@gmail.com', NULL, '$2y$10$a7.o1ei5Cf.ikvfHyvNuWeEPGNu62gfoQGRkyJnP42E17gPqtXz1a', 'Du5poZ3YVBRHGEOmRqcy5p1GXx7dKova4nmnUc0dP4uOOnsljePbUytQWlku', '2021-02-03 21:43:36', '2021-02-03 21:43:36'),
(2, 'pembeli', 'pembeli', 'pembeli@gmail.com', NULL, '$2y$10$QA6nLEfGBWW2/eX2rIQOXesPpHjVMz0lDscCqTZ0NDkBRMmIIh5t6', 'RyMbQZ9YSmXsmTLL9SenjDoUvNnbQW7hv96zbj6s7Kkk2aD75CB1nWwkoyiu', '2021-02-25 00:11:47', '2021-02-25 00:11:47'),
(11, 'brilian', 'pembeli', 'brilian@gmail.com', NULL, '$2y$10$/AqYuEtMWZrNbtO8YcOYpeCDouozMgkTH6KJGn0/1bXZ8vE0Y3CQO', 'c1IWy0VFaSaFZ0RX4f4ROoMvKniuPeduVAGifIL9g7ULAC8MJ5IRRgZkHkJd', '2021-02-26 03:17:28', '2021-02-26 03:17:28'),
(12, 'brilian', NULL, 'brilian@gmail.com', NULL, '123', NULL, '2021-02-26 03:17:28', '2021-02-26 03:17:28');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `datauser`
--
ALTER TABLE `datauser`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `histori`
--
ALTER TABLE `histori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `historimutasi`
--
ALTER TABLE `historimutasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_pakaian`
--
ALTER TABLE `jenis_pakaian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_kategori`
--
ALTER TABLE `sub_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `datauser`
--
ALTER TABLE `datauser`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gender`
--
ALTER TABLE `gender`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `histori`
--
ALTER TABLE `histori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `historimutasi`
--
ALTER TABLE `historimutasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jenis_pakaian`
--
ALTER TABLE `jenis_pakaian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `merk`
--
ALTER TABLE `merk`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sub_kategori`
--
ALTER TABLE `sub_kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
